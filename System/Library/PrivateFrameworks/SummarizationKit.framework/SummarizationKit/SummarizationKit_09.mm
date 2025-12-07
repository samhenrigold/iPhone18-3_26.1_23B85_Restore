void sub_2280A9C80(uint64_t a1, unint64_t a2)
{

  sub_22813944C();
  v4 = HIBYTE(a2) & 0xF;
  v26 = a1;
  v27 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28 = 0;
  v29 = v4;

  v5 = sub_2281393DC();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = 0;
    v10 = 0x277D07000uLL;
    v11 = off_2785F1000;
    while (1)
    {
      while ((sub_2281036C8(v7, v8) & 1) == 0)
      {
        MEMORY[0x22AAB1960](v7, v8);

        v7 = sub_2281393DC();
        v8 = v12;
        if (!v12)
        {
          v25 = v9;
          goto LABEL_16;
        }
      }

      if (!v9)
      {
        v9 = [objc_allocWithZone(MEMORY[0x277D072F8]) init];
      }

      v25 = v9;

      v13 = sub_22813927C();

      v14 = [objc_opt_self() emojiTokenWithString:v13 localeData:v25];

      if (!v14)
      {
        break;
      }

      v15 = v11;
      v16 = [v14 v11[454]];
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = v16;
      v18 = v10;
      v19 = [v16 string];
      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = v19;

      v21 = sub_2281392AC();
      v23 = v22;

      MEMORY[0x22AAB1970](v21, v23);

      v7 = sub_2281393DC();
      v8 = v24;
      v10 = v18;
      v11 = v15;
      if (!v24)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    v25 = 0;
LABEL_16:
  }
}

char *sub_2280A9EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22813936C();
  if (!v5)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF18, &qword_228141340);
    sub_2280AB1D8();
    return sub_22813946C();
  }

  v6 = v5;
  v15 = MEMORY[0x277D84F90];
  result = sub_228043D00(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    do
    {
      v8 = sub_22813945C();
      v10 = v9;
      if (sub_2281036C8(v8, v9))
      {

        v8 = a1;
        v10 = a2;
      }

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_228043D00((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      sub_22813937C();
      --v6;
    }

    while (v6);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_2280AA000@<X0>(char a1@<W1>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    sub_228045C90(0, v8);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = sub_2281394AC();
    __swift_destroy_boxed_opaque_existential_1(v8);
    a4[3] = MEMORY[0x277D837D0];
    result = sub_227FDB420();
    a4[4] = result;
    v7 = 32;
    if (v5)
    {
      v7 = 10;
    }
  }

  else
  {
    a4[3] = MEMORY[0x277D837D0];
    result = sub_227FDB420();
    a4[4] = result;
    v7 = 32;
  }

  *a4 = v7;
  a4[1] = 0xE100000000000000;
  return result;
}

unint64_t sub_2280AA0E8(unint64_t *a1)
{
  result = sub_2280AAC4C(*a1, a1[1]);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = (result - 8232) < 2 || result == 133;
    return (result - 14) > 0xFFFFFFFB || v2;
  }

  return result;
}

uint64_t sub_2280AA14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v7 = sub_22813927C();
  [v6 setString_];

  if (a2)
  {
    v8 = [v6 setLanguage_];
  }

  MEMORY[0x28223BE20](v8);
  sub_22813969C();

  return 0;
}

void sub_2280AA278(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a4;
  v11 = HIBYTE(a4) & 1;
  v12 = objc_allocWithZone(MEMORY[0x277CD89E0]);

  v13 = [v12 initWithUnit_];
  v14 = sub_22813927C();
  [v13 setString_];

  if ((a4 & 0x100) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v16 = a1;
    }

    v17 = v16 << 16;
    if ((a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0)
    {
      v15 = v17 | 7;
    }

    else
    {
      v15 = v17 | 0xB;
    }
  }

  else
  {
    v15 = 15;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v10 & 1;
  *(a5 + 25) = v11;
  *(a5 + 32) = v13;
  *(a5 + 40) = v15;
}

uint64_t sub_2280AA384()
{
  v1 = v0;
  v24 = sub_228136CDC();
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v6 = *(v0 + 25);
  v7 = HIBYTE(v5) & 0xF;
  v26 = *v0;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v25 = 4 * v7;
  v8 = (v2 + 8);
  v9 = v0[5];
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  if (v9 >= 0x4000)
  {
    do
    {
      v10 = sub_22813968C();
      v12 = v11;
      v13 = sub_22813948C();
      v14 = MEMORY[0x22AAB18D0](v13);
      v16 = v15;

      v27 = v14;
      v28 = v16;
      sub_228136C8C();
      sub_227FDB420();
      v17 = sub_2281397AC();
      v19 = v18;
      (*v8)(v4, v24);

      if (v6)
      {
        if (v10 >= 0x4000)
        {
          v20 = sub_22813938C();
          goto LABEL_13;
        }

        v12 = v10;
      }

      else if (v25 > v12 >> 14)
      {
        v20 = sub_22813937C();
LABEL_13:
        v12 = v20;
      }

      v1[5] = v12;
      if ((v1[3] & 1) == 0)
      {
        return v17;
      }

      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        return v17;
      }

      v9 = v1[5];
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_6:
      ;
    }

    while (v25 > v9 >> 14);
  }

  return 0;
}

void *sub_2280AA59C()
{
  result = sub_2280AA5F8(&v1, &v2);
  qword_2813C46F0 = v2;
  byte_2813C46F8 = 0;
  return result;
}

uint64_t sub_2280AA5F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = sub_228136C0C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_228136C1C();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2281392DC();
  MEMORY[0x28223BE20](v9 - 8);
  v46 = sub_228136EAC();
  v48 = *(v46 - 8);
  v10 = MEMORY[0x28223BE20](v46);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - v13;
  v15 = sub_22813927C();
  v16 = [objc_opt_self() bundleWithIdentifier_];

  if (!v16)
  {
    goto LABEL_6;
  }

  v42[1] = v5;
  v43 = v6;
  v17 = a1;
  v18 = sub_22813927C();
  v19 = sub_22813927C();
  v20 = [v16 URLForResource:v18 withExtension:v19];

  if (!v20)
  {

    a1 = v17;
    v6 = v43;
LABEL_6:
    sub_228136BDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E738, &unk_22813BB20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22813A4B0;
    *(inited + 32) = sub_2281392AC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v27;
    *(inited + 48) = 0xD000000000000039;
    *(inited + 56) = 0x8000000228147BE0;
    sub_227FE4858(inited);
    swift_setDeallocating();
    sub_2280AB428(inited + 32, &qword_27D81E380, &unk_228142F80);
    sub_2280AB488();
    sub_228136E0C();
    v25 = sub_228136BCC();
    (*(v47 + 8))(v8, v6);
    result = swift_willThrow();
    goto LABEL_8;
  }

  sub_228136E5C();

  v21 = v46;
  (*(v48 + 32))(v14, v12, v46);
  v22 = v45;
  v23 = sub_228136EBC();
  v25 = v22;
  if (v22)
  {
    a1 = v17;

    result = (*(v48 + 8))(v14, v21);
  }

  else
  {
    v28 = v23;
    v45 = v24;
    a1 = v17;
    v30 = sub_227FC87CC(v23, v24);
    v31 = v28;
    v33 = v32;
    sub_227FC9210(v31, v45);
    sub_2281392CC();
    v42[0] = v30;
    v45 = v33;
    v34 = sub_2281392BC();
    if (v35)
    {
      v36 = sub_227FEC74C(v34, v35);

      sub_227FC9210(v42[0], v45);
      result = (*(v48 + 8))(v14, v21);
      *v44 = v36;
      return result;
    }

    sub_228136BFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E738, &unk_22813BB20);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_22813A4B0;
    *(v37 + 32) = sub_2281392AC();
    *(v37 + 40) = v38;
    v39 = sub_228136E7C();
    *(v37 + 72) = MEMORY[0x277D837D0];
    *(v37 + 48) = v39;
    *(v37 + 56) = v40;
    sub_227FE4858(v37);
    swift_setDeallocating();
    sub_2280AB428(v37 + 32, &qword_27D81E380, &unk_228142F80);
    sub_2280AB488();
    v41 = v43;
    sub_228136E0C();
    v25 = sub_228136BCC();
    (*(v47 + 8))(v8, v41);
    swift_willThrow();

    sub_227FC9210(v42[0], v45);
    result = (*(v48 + 8))(v14, v21);
  }

LABEL_8:
  *a1 = v25;
  return result;
}

unint64_t sub_2280AAC4C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2280AAD9C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22813987C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2281398AC() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_2280AAD9C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2280AAE34(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2280AAEA8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2280AAE34(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2280AAFCC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2280AAEA8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2281398AC();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_2280AAFCC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22813940C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAB19A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_2280AB048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = v3 - 1;
  v7 = a2 + 40;
  do
  {
    v8 = v6;
    v9 = objc_allocWithZone(MEMORY[0x277CD89E0]);

    v10 = [v9 initWithUnit_];
    v11 = sub_22813927C();
    [v10 setString_];

    if (a3)
    {
      v12 = [v10 setLanguage_];
    }

    MEMORY[0x28223BE20](v12);
    sub_22813969C();

    result = a1 < 1;
    if (a1 < 1)
    {
      break;
    }

    v6 = v8 - 1;
    v7 += 16;
  }

  while (v8);
  return result;
}

unint64_t sub_2280AB1D8()
{
  result = qword_2813C4688;
  if (!qword_2813C4688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81EF18, &qword_228141340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4688);
  }

  return result;
}

uint64_t sub_2280AB23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1 + 40;
  v8 = a3;
  do
  {
    v9 = objc_allocWithZone(MEMORY[0x277CD89E0]);

    v10 = [v9 initWithUnit_];
    v11 = sub_22813927C();
    [v10 setString_];

    if (a2)
    {
      v12 = [v10 setLanguage_];
    }

    MEMORY[0x28223BE20](v12);
    sub_22813969C();

    v13 = v6;
    if (v6 >= a3)
    {
      v6 = a3;
    }

    if (!--v3)
    {
      break;
    }

    v8 &= ~(v8 >> 63);
    v7 += 16;
  }

  while (v13 < a3);
  return v6;
}

BOOL sub_2280AB3E8()
{
  v1 = *(v0 + 16);
  v2 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 24);
    *v1 = v2;
    return v2 < v3;
  }

  return result;
}

void sub_2280AB410(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double sub_2280AB41C(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_2280AB428(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2280AB488()
{
  result = qword_2813C87A0;
  if (!qword_2813C87A0)
  {
    sub_228136C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C87A0);
  }

  return result;
}

void sub_2280AB4E8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t a1))
{
  v5 = v4;
  v109 = a2;
  v110 = a4;
  v93 = *v4;
  v9 = sub_2281373DC();
  MEMORY[0x28223BE20](v9 - 8);
  v94 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2281377FC();
  v97 = *(v11 - 8);
  v98 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v95 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = v85 - v14;
  v101 = type metadata accessor for ModelBundleIdentifier(0);
  v15 = MEMORY[0x28223BE20](v101);
  v102 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v85 - v17;
  v19 = sub_22813759C();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v85 - v23;
  v108 = sub_22813791C();
  v106 = *(v108 - 8);
  v25 = MEMORY[0x28223BE20](v108);
  v90 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v105 = v85 - v28;
  MEMORY[0x28223BE20](v27);
  v147 = v85 - v29;
  v91 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration;
  sub_2280B7EF0(a1, &v5[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration], type metadata accessor for SummarizationSession.Configuration);
  v92 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sessionInfo;
  sub_2280B8494(a2, &v5[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sessionInfo]);
  v103 = a3;
  sub_2280B842C(a3, &v119, &qword_27D81EF38, &qword_22813F938);
  v100 = v18;
  if (v119)
  {
    v143 = v129;
    v144 = v130;
    v145 = v131;
    v146 = v132;
    v139 = v125;
    v140 = v126;
    v141 = v127;
    v142 = v128;
    v135 = v121;
    v136 = v122;
    v137 = v123;
    v138 = v124;
    v133 = v119;
    v134 = v120;
  }

  else
  {
    v30 = *(a1 + *(type metadata accessor for SummarizationSession.Configuration(0) + 32));
    v118 = 0;
    memset(v117, 0, sizeof(v117));
    v116 = 0;
    memset(v115, 0, sizeof(v115));
    v114 = 0;
    memset(v113, 0, sizeof(v113));
    v112 = 0;
    memset(v111, 0, sizeof(v111));
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    *&v133 = v30;
    BYTE8(v133) = 0;

    sub_2280B83BC(v115, &v139);
    sub_2280B83BC(v113, &v141 + 8);
    sub_2280B83BC(v111, &v144);
    sub_2280B83BC(v117, &v136 + 8);
    sub_227FCB7B8(v111, &qword_27D81E8E0, &unk_22813C4F0);
    sub_227FCB7B8(v113, &qword_27D81E8E0, &unk_22813C4F0);
    sub_227FCB7B8(v115, &qword_27D81E8E0, &unk_22813C4F0);
    sub_227FCB7B8(v117, &qword_27D81E8E0, &unk_22813C4F0);
    if (v119)
    {
      sub_227FCB7B8(&v119, &qword_27D81EF38, &qword_22813F938);
    }
  }

  v31 = &v5[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory];
  v32 = v144;
  *(v31 + 160) = v143;
  *(v31 + 176) = v32;
  *(v31 + 192) = v145;
  *(v31 + 208) = v146;
  v33 = v140;
  *(v31 + 96) = v139;
  *(v31 + 112) = v33;
  v34 = v142;
  *(v31 + 128) = v141;
  *(v31 + 144) = v34;
  v35 = v136;
  *(v31 + 32) = v135;
  *(v31 + 48) = v35;
  v36 = v138;
  *(v31 + 64) = v137;
  *(v31 + 80) = v36;
  v37 = v134;
  *v31 = v133;
  *(v31 + 16) = v37;
  v38 = type metadata accessor for SummarizationSession.Configuration(0);
  sub_2280B842C(a1 + *(v38 + 20), v24, &qword_27D81E6A8, &qword_22813F930);
  sub_22813758C();
  sub_2281378DC();
  v39 = v5;
  v40 = v109;
  v107 = a1;
  v41 = v109[3];
  v42 = v109[4];
  __swift_project_boxed_opaque_existential_1(v109, v41);
  v99 = (*(v42 + 24))(v41, v42);
  v43 = v40[3];
  v44 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v43);
  v45 = v44;
  v46 = v107;
  v47 = sub_22800CC40(v43, v45);
  v48 = v47 & 0x100000000;
  if ((v47 & 0x100000000) != 0)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  v50 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  sub_2280B7EF0(v46, &v39[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier], type metadata accessor for ModelBundleIdentifier);
  sub_2280B842C(v110, &v119, &qword_27D81E348, &qword_22813A7F0);
  if (!*(&v120 + 1))
  {
    v85[1] = v48;
    v85[2] = v49;
    v85[0] = v21;
    v54 = v99;
    sub_227FCB7B8(&v119, &qword_27D81E348, &qword_22813A7F0);
    v99 = sub_22813755C();
    v88 = v50;
    v89 = v39;
    v55 = v100;
    sub_2280B7EF0(&v39[v50], v100, type metadata accessor for ModelBundleIdentifier);
    v86 = *(v106 + 16);
    v87 = v106 + 16;
    v86(v105, v147, v108);
    v56 = v40[3];
    v57 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v56);
    v58 = *(v57 + 8);
    v59 = v57;
    v60 = v55;
    v61 = v58(v56, v59);
    v63 = v62;
    v64 = v102;
    sub_2280B7EF0(v55, v102, type metadata accessor for ModelBundleIdentifier);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v71 = sub_2281378EC();
      v101 = v72;
      v102 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
      sub_2281375BC();
      *(swift_allocObject() + 16) = xmmword_22813A4B0;
      sub_2281380CC();
      sub_2281380BC();
      sub_22813809C();

      sub_22813758C();
      v73 = v96;
      v60 = v55;
      sub_2281377EC();
      v75 = v97;
      v74 = v98;
      (*(v97 + 16))(v95, v73, v98);
      v76 = sub_22813752C();
      (*(v75 + 8))(v73, v74);
    }

    else
    {
      v101 = v54;
      sub_2280B760C(v64, type metadata accessor for ModelBundleIdentifier);
      v65 = v104;
      v66 = v105;
      sub_2280F94B0(v61, v63, v94);
      if (v65)
      {

        sub_227FCB7B8(v110, &qword_27D81E348, &qword_22813A7F0);
        sub_227FCB7B8(v103, &qword_27D81EF38, &qword_22813F938);
        v110 = type metadata accessor for SummarizationSession.Configuration;
        sub_2280B760C(v107, type metadata accessor for SummarizationSession.Configuration);
        v67 = *(v106 + 8);
        v68 = v66;
        v69 = v108;
        v67(v68, v108);
        sub_2280B760C(v55, type metadata accessor for ModelBundleIdentifier);
        v67(v147, v69);
        v70 = v89;
        sub_2280B760C(&v89[v91], v110);
        sub_2280B760C(&v70[v88], type metadata accessor for ModelBundleIdentifier);
        sub_228084D78(v31);
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v70[v92]);
        swift_deallocPartialClassInstance();
        goto LABEL_19;
      }

      v86(v90, v66, v108);
      v76 = sub_22813753C();
    }

    v77 = v89;
    v78 = *(v106 + 8);
    v79 = v108;
    v78(v105, v108);
    sub_2280B760C(v60, type metadata accessor for ModelBundleIdentifier);
    v80 = &v77[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner];
    v81 = type metadata accessor for PromptManager(0);
    v80[3] = v81;
    v80[4] = &off_2818510E0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
    sub_2280B7EF0(&v77[v88], boxed_opaque_existential_1 + *(v81 + 20), type metadata accessor for ModelBundleIdentifier);
    v83 = boxed_opaque_existential_1 + *(v81 + 24);
    v84 = v147;
    v86(v83, v147, v79);
    *boxed_opaque_existential_1 = v76;
    *&v135 = &off_283B5EC90;
    *(&v134 + 1) = v99;
    *&v133 = v76;

    sub_227FCB7B8(v110, &qword_27D81E348, &qword_22813A7F0);
    sub_227FCB7B8(v103, &qword_27D81EF38, &qword_22813F938);
    sub_2280B760C(v107, type metadata accessor for SummarizationSession.Configuration);
    v78(v84, v79);
    sub_227FD20C0(&v133, &v77[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model]);
    goto LABEL_19;
  }

  v51 = v147;
  sub_227FD20C0(&v119, &v133);

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    v52 = v39;
    sub_2280B8494(&v133, &v39[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner]);
    v53 = __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
    *(&v120 + 1) = swift_getAssociatedTypeWitness();
    *&v121 = swift_getAssociatedConformanceWitness();
    *__swift_allocate_boxed_opaque_existential_1(&v119) = *v53;

    sub_227FCB7B8(v110, &qword_27D81E348, &qword_22813A7F0);
    sub_227FCB7B8(v103, &qword_27D81EF38, &qword_22813F938);
    sub_2280B760C(v46, type metadata accessor for SummarizationSession.Configuration);
    (*(v106 + 8))(v51, v108);
    sub_227FD20C0(&v119, &v52[OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model]);
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v133);
LABEL_19:
    __swift_destroy_boxed_opaque_existential_1Tm_10(v109);
    return;
  }

  __break(1u);
}

uint64_t sub_2280AC248()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for ModelBundleIdentifier(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280AC2DC, 0, 0);
}

uint64_t sub_2280AC2DC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration;
  v0[11] = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration;
  v4 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
  sub_2280B7EF0(v2 + v3, v1, type metadata accessor for ModelBundleIdentifier);
  if (swift_getEnumCaseMultiPayload() > 1)
  {

    v7 = v0[1];

    return v7(0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = (v0[8] + v4);
    sub_2280B760C(v0[10], type metadata accessor for ModelBundleIdentifier);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_2280AC43C;

    return MEMORY[0x2821D9808]();
  }
}

uint64_t sub_2280AC43C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280AC58C, 0, 0);
  }
}

uint64_t sub_2280AC58C()
{
  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    v1 = qword_27D81E2A0;
  }

  else
  {
    v1 = qword_2813C76F0;
  }

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];

  v5 = sub_22808EED0(v4 + v3);
  LOBYTE(v4) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF30, &unk_2281426D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  *(inited + 32) = v5;
  *(inited + 40) = v4 & 1;
  v8 = sub_2280FAC9C(v2, inited);
  swift_setDeallocating();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2280AC738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[261] = v3;
  v4[255] = a3;
  v4[249] = a2;
  v4[243] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
  v4[267] = swift_task_alloc();
  v4[268] = type metadata accessor for ModelBundleIdentifier(0);
  v4[269] = swift_task_alloc();
  v4[270] = type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult(0);
  v4[271] = swift_task_alloc();
  v4[272] = swift_task_alloc();
  v4[273] = swift_task_alloc();
  v4[274] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v4[275] = swift_task_alloc();
  v4[276] = swift_task_alloc();
  v4[277] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF20, &unk_22813F8A0);
  v4[278] = swift_task_alloc();
  v4[279] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v4[280] = swift_task_alloc();
  v4[281] = swift_task_alloc();
  v4[282] = swift_task_alloc();
  v4[283] = swift_task_alloc();
  v4[284] = swift_task_alloc();
  v4[285] = swift_task_alloc();
  v4[286] = swift_task_alloc();
  v5 = *(type metadata accessor for SummarizationParameters(0) - 8);
  v4[287] = v5;
  v4[288] = *(v5 + 64);
  v4[289] = swift_task_alloc();
  v4[290] = swift_task_alloc();
  v4[291] = swift_task_alloc();
  v4[292] = swift_task_alloc();
  v4[293] = swift_task_alloc();
  v4[294] = swift_task_alloc();
  v4[295] = swift_task_alloc();
  v4[296] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280ACA10, 0, 0);
}

uint64_t sub_2280ACA10()
{
  sub_2280B8494(*(v0 + 1992) + 40, v0 + 1336);
  if (sub_22806044C((v0 + 1336)))
  {
    if (qword_2813C4948 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 2360);
    v2 = *(v0 + 2296);
    v3 = *(v0 + 1992);
    v4 = type metadata accessor for Signpost(0);
    *(v0 + 2376) = v4;
    *(v0 + 2384) = __swift_project_value_buffer(v4, qword_2813C8930);
    sub_2280B8494(v0 + 1336, v0 + 1416);
    sub_2280B7EF0(v3, v1, type metadata accessor for SummarizationParameters);
    v5 = *(v2 + 80);
    *(v0 + 2536) = v5;
    v6 = (v5 + 56) & ~v5;
    v7 = swift_allocObject();
    *(v0 + 2392) = v7;
    sub_227FD20C0((v0 + 1416), v7 + 16);
    sub_2280B7E88(v1, v7 + v6, type metadata accessor for SummarizationParameters);
    v8 = swift_allocObject();
    *(v0 + 2400) = v8;
    *(v8 + 16) = sub_2280B8640;
    *(v8 + 24) = v7;

    sub_2281324C4();
    v9 = swift_task_alloc();
    *(v0 + 2408) = v9;
    *v9 = v0;
    v9[1] = sub_2280ACE40;
    v10 = *(v0 + 2224);
    v11 = *(v0 + 2088);
    v12 = *(v0 + 1992);

    return sub_2280AFD94(v10, v11, v12);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = 16;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v15 = sub_227FF96D4(0, 0xD000000000000080, 0x8000000228147C70, 98, sub_2280B76C4, v14);
    sub_227FDB3CC();
    swift_allocError();
    *v16 = 16;
    *(v16 + 8) = v15;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 1336));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2280ACE40()
{
  *(*v1 + 2416) = v0;

  if (v0)
  {
    v2 = sub_2280AD73C;
  }

  else
  {
    v2 = sub_2280ACF54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280ACF54()
{
  v1 = *(v0 + 2416);
  v2 = *(v0 + 2368);
  v3 = *(v0 + 2288);
  v4 = *(v0 + 2224);
  v5 = *(v0 + 2216);
  v6 = *(v0 + 2208);
  sub_2281324D4();
  sub_2280B760C(v6, type metadata accessor for SignpostToken);

  v7 = *(v5 + 48);
  sub_2280B7E88(v4, v2, type metadata accessor for SummarizationParameters);
  sub_2280B76DC(v4 + v7, v3);
  sub_2281395DC();
  if (v1)
  {
    v8 = *(v0 + 2368);
    sub_227FCB7B8(*(v0 + 2288), &qword_27D81E598, &qword_22813B300);
    sub_2280B760C(v8, type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 1336));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 2264);
    v12 = *(v0 + 1360);
    v13 = *(v0 + 1368);
    __swift_project_boxed_opaque_existential_1((v0 + 1336), v12);
    v14 = (*(*(v13 + 8) + 16))(v12);
    v16 = v15;
    v17 = *(v0 + 1360);
    v18 = *(v0 + 1368);
    __swift_project_boxed_opaque_existential_1((v0 + 1336), v17);
    v19 = (*(*(v18 + 8) + 8))(v17);
    v21 = v20;
    v22 = sub_2281386FC();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    LOBYTE(v18) = sub_228021CA0(v14, v16, v19, v21);

    sub_227FCB7B8(v11, &qword_27D81E598, &qword_22813B300);
    if (v18)
    {
      v23 = *(v0 + 2536);
      v24 = *(v0 + 2368);
      v47 = v24;
      v25 = *(v0 + 2352);
      v26 = *(v0 + 2344);
      v45 = v26;
      v48 = *(v0 + 2336);
      v49 = *(v0 + 2328);
      v27 = *(v0 + 2304);
      v50 = *(v0 + 2088);
      v46 = *(v0 + 2040);
      v28 = (v23 + 56) & ~v23;
      v29 = *(v0 + 1992);
      sub_2280B8494(v0 + 1336, v0 + 1656);
      sub_2280B7EF0(v29, v25, type metadata accessor for SummarizationParameters);
      sub_2280B7EF0(v24, v26, type metadata accessor for SummarizationParameters);
      v30 = (v27 + 7 + v28) & 0xFFFFFFFFFFFFFFF8;
      v31 = (v23 + v30 + 8) & ~v23;
      v32 = swift_allocObject();
      *(v0 + 2424) = v32;
      sub_227FD20C0((v0 + 1656), v32 + 16);
      sub_2280B7E88(v25, v32 + v28, type metadata accessor for SummarizationParameters);
      *(v32 + v30) = v50;
      sub_2280B7E88(v45, v32 + v31, type metadata accessor for SummarizationParameters);
      *(v32 + ((v31 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;

      swift_asyncLet_begin();
      sub_2280B7EF0(v47, v48, type metadata accessor for SummarizationParameters);
      sub_2280B8494(v0 + 1336, v0 + 1736);
      sub_2280B7EF0(v29, v49, type metadata accessor for SummarizationParameters);
      v33 = (v23 + 24) & ~v23;
      v34 = (v27 + 7 + v33) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      *(v0 + 2432) = v35;
      *(v35 + 16) = v50;
      sub_2280B7E88(v48, v35 + v33, type metadata accessor for SummarizationParameters);
      sub_227FD20C0((v0 + 1736), v35 + v34);
      sub_2280B7E88(v49, v35 + ((v23 + v34 + 40) & ~v23), type metadata accessor for SummarizationParameters);

      swift_asyncLet_begin();
      v36 = *(v0 + 2256);

      return MEMORY[0x282200930](v0 + 16, v36, sub_2280AD9CC, v0 + 1296);
    }

    else
    {
      if (qword_2813C4940 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 2320);
      v38 = *(v0 + 1992);
      v39 = (*(v0 + 2536) + 56) & ~*(v0 + 2536);
      *(v0 + 2448) = __swift_project_value_buffer(*(v0 + 2376), qword_2813C8918);
      sub_2280B8494(v0 + 1336, v0 + 1496);
      sub_2280B7EF0(v38, v37, type metadata accessor for SummarizationParameters);
      v40 = swift_allocObject();
      *(v0 + 2456) = v40;
      sub_227FD20C0((v0 + 1496), v40 + 16);
      sub_2280B7E88(v37, v40 + v39, type metadata accessor for SummarizationParameters);
      v41 = swift_allocObject();
      *(v0 + 2464) = v41;
      *(v41 + 16) = sub_2280B8648;
      *(v41 + 24) = v40;

      sub_2281324C4();
      v42 = swift_task_alloc();
      *(v0 + 2472) = v42;
      *v42 = v0;
      v42[1] = sub_2280ADA10;
      v43 = *(v0 + 2368);
      v44 = *(v0 + 2248);

      return sub_2280B09B8(v44, v43);
    }
  }
}

uint64_t sub_2280AD73C()
{
  v1 = v0[302];
  v2 = v0[300];
  v3 = v0[299];
  v4 = v0[276];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = sub_2280B8640;
  v5[4] = v3;
  swift_beginAccess();
  *(v2 + 16) = sub_2280B76D0;
  *(v2 + 24) = v5;

  v6 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_2280B760C(v4, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2280AD9CC()
{
  *(v1 + 2440) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, *(v1 + 2176), sub_2280AE5E4, v1 + 1376);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_2280AE194, 0, 0);
  }
}

uint64_t sub_2280ADA10()
{
  *(*v1 + 2480) = v0;

  if (v0)
  {
    v2 = sub_2280ADECC;
  }

  else
  {
    v2 = sub_2280ADB24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280ADB24()
{
  v1 = *(v0 + 2480);
  v2 = *(v0 + 2288);
  v3 = *(v0 + 2248);
  v4 = *(v0 + 2200);
  sub_2281324D4();
  sub_2280B760C(v4, type metadata accessor for SignpostToken);

  sub_2280B7844(v2, v3, (v0 + 1336));
  if (v1)
  {
    sub_227FCB7B8(*(v0 + 2248), &qword_27D81E598, &qword_22813B300);
    v5 = *(v0 + 2368);
    sub_227FCB7B8(*(v0 + 2288), &qword_27D81E598, &qword_22813B300);
    sub_2280B760C(v5, type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 1336));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 2312);
    v9 = *(v0 + 1992);
    v10 = (*(v0 + 2536) + 56) & ~*(v0 + 2536);
    sub_2280B8494(v0 + 1336, v0 + 1576);
    sub_2280B7EF0(v9, v8, type metadata accessor for SummarizationParameters);
    v11 = swift_allocObject();
    *(v0 + 2512) = v11;
    sub_227FD20C0((v0 + 1576), v11 + 16);
    sub_2280B7E88(v8, v11 + v10, type metadata accessor for SummarizationParameters);
    v12 = swift_task_alloc();
    *(v0 + 2520) = v12;
    *v12 = v0;
    v12[1] = sub_2280AF388;
    v13 = *(v0 + 2368);
    v14 = *(v0 + 2168);

    return sub_2280B1E28(v14, v13, sub_2280B8644, v11);
  }
}

uint64_t sub_2280ADECC()
{
  v1 = v0[310];
  v2 = v0[308];
  v3 = v0[307];
  v4 = v0[275];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = sub_2280B8648;
  v5[4] = v3;
  swift_beginAccess();
  *(v2 + 16) = sub_2280B865C;
  *(v2 + 24) = v5;

  v6 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_2280B760C(v4, type metadata accessor for SignpostToken);

  v7 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v7, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2280AE194()
{
  v1 = v0[305];
  v2 = v0[286];
  v3 = v0[280];
  sub_2280B842C(v0[282], v3, &qword_27D81E598, &qword_22813B300);
  sub_2280B7844(v2, v3, v0 + 167);
  v0[311] = v1;
  sub_227FCB7B8(v0[280], &qword_27D81E598, &qword_22813B300);
  if (v1)
  {
    v4 = v0[272];

    return MEMORY[0x282200920](v0 + 82, v4, sub_2280AE378, v0 + 192);
  }

  else
  {
    v5 = v0[282];

    return MEMORY[0x282200930](v0 + 2, v5, sub_2280AE2B4, v0 + 212);
  }
}

uint64_t sub_2280AE2B4()
{
  v1[312] = v0;
  if (v0)
  {
    v2 = v1[272];

    return MEMORY[0x282200920](v1 + 82, v2, sub_2280AE914, v1 + 222);
  }

  else
  {
    sub_2280B842C(v1[282], v1[284], &qword_27D81E598, &qword_22813B300);
    v3 = v1[272];

    return MEMORY[0x282200930](v1 + 82, v3, sub_2280AE850, v1 + 238);
  }
}

uint64_t sub_2280AE3D0()
{

  v1 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v1, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2280AE63C()
{

  v1 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v1, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2280AE850()
{
  v1[313] = v0;
  if (v0)
  {
    sub_227FCB7B8(v1[284], &qword_27D81E598, &qword_22813B300);
    v2 = sub_2280AF11C;
    v3 = v1[272];
    v4 = v1 + 82;
    v5 = v1 + 244;
  }

  else
  {
    sub_2280B7EF0(v1[272], v1[273], type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);
    v2 = sub_2280AEB80;
    v3 = v1[272];
    v4 = v1 + 82;
    v5 = v1 + 256;
  }

  return MEMORY[0x282200920](v4, v3, v2, v5);
}

uint64_t sub_2280AE96C()
{

  v1 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v1, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2280AEBD8()
{

  v1 = v0[274];
  v2 = v0[273];
  v3 = v0[261];
  sub_2280B76DC(v0[284], v0[285]);
  sub_2280B7E88(v2, v1, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);
  v4 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  if (qword_2813C7048 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0[268], qword_2813C8B20);
  if (_s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v3 + v4, v5))
  {
    v6 = v0[274];
    v7 = v0[270];
    v8 = v0[267];
    v9 = *v6;
    v10 = v6[1];
    sub_2280B7EF0(v3 + v4, v0[269], type metadata accessor for ModelBundleIdentifier);
    sub_2280B842C(v6 + *(v7 + 20), v8, &qword_27D81E8C0, &unk_22813C3A0);
    v11 = type metadata accessor for GMSModelInfo(0);
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    v13 = v0[267];
    if (v12 == 1)
    {
      sub_227FCB7B8(v0[267], &qword_27D81E8C0, &unk_22813C3A0);
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = GMSModelInfo.safetyRejectionPlaceholder.getter();
      v15 = v16;
      sub_2280B760C(v13, type metadata accessor for GMSModelInfo);
    }

    if (_s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v0[269], v5))
    {
      if (v15)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0x656661736E55;
      }

      if (!v15)
      {
        v15 = 0xE600000000000000;
      }

      if (v9 == v17 && v10 == v15)
      {
        v18 = 1;
      }

      else
      {
        v18 = sub_2281399BC();
      }
    }

    else
    {
      v18 = 0;
    }

    v34 = v18;
    v19 = v0[269];

    sub_2280B760C(v19, type metadata accessor for ModelBundleIdentifier);
  }

  else
  {
    v34 = 0;
  }

  v20 = v0[296];
  v21 = v0[286];
  v22 = v0[285];
  v23 = v0[274];
  v24 = v0[270];
  v25 = v0[243];
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v26 = v23[1];
  v33 = *v23;
  v27 = v24[5];
  v28 = type metadata accessor for SummarizationResult(0);
  sub_2280B842C(v23 + v27, &v25[v28[5]], &qword_27D81E8C0, &unk_22813C3A0);
  sub_2280B76DC(v21, &v25[v28[6]]);
  sub_2280B76DC(v22, &v25[v28[7]]);
  sub_2280B842C(v23 + v24[6], &v25[v28[8]], &qword_27D81E598, &qword_22813B300);
  sub_2280B842C(v23 + v24[7], &v25[v28[9]], &qword_27D81E598, &qword_22813B300);
  LOBYTE(v27) = *(v20 + 33);

  sub_2280B760C(v20, type metadata accessor for SummarizationParameters);
  v29 = v28[12];
  v30 = sub_2281376EC();
  (*(*(v30 - 8) + 56))(&v25[v29], 1, 1, v30);
  *v25 = v33;
  *(v25 + 1) = v26;
  v25[v28[10]] = v27;
  v25[v28[11]] = v34 & 1;
  sub_2280B760C(v23, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);

  v31 = v0[1];

  return v31();
}

uint64_t sub_2280AF174()
{

  v1 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v1, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2280AF388()
{
  *(*v1 + 2528) = v0;

  if (v0)
  {
    v2 = sub_2280AFA04;
  }

  else
  {
    v2 = sub_2280AF4AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280AF4AC()
{
  v1 = v0[273];
  v2 = v0[271];
  sub_2280B76DC(v0[281], v0[284]);
  sub_2280B7E88(v2, v1, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);
  v3 = v0[274];
  v4 = v0[273];
  v5 = v0[261];
  sub_2280B76DC(v0[284], v0[285]);
  sub_2280B7E88(v4, v3, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);
  v6 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  if (qword_2813C7048 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0[268], qword_2813C8B20);
  if (_s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v5 + v6, v7))
  {
    v8 = v0[274];
    v9 = v0[270];
    v10 = v0[267];
    v11 = *v8;
    v12 = v8[1];
    sub_2280B7EF0(v5 + v6, v0[269], type metadata accessor for ModelBundleIdentifier);
    sub_2280B842C(v8 + *(v9 + 20), v10, &qword_27D81E8C0, &unk_22813C3A0);
    v13 = type metadata accessor for GMSModelInfo(0);
    v14 = (*(*(v13 - 8) + 48))(v10, 1, v13);
    v15 = v0[267];
    if (v14 == 1)
    {
      sub_227FCB7B8(v0[267], &qword_27D81E8C0, &unk_22813C3A0);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = GMSModelInfo.safetyRejectionPlaceholder.getter();
      v17 = v18;
      sub_2280B760C(v15, type metadata accessor for GMSModelInfo);
    }

    if (_s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v0[269], v7))
    {
      if (v17)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0x656661736E55;
      }

      if (!v17)
      {
        v17 = 0xE600000000000000;
      }

      if (v11 == v19 && v12 == v17)
      {
        v20 = 1;
      }

      else
      {
        v20 = sub_2281399BC();
      }
    }

    else
    {
      v20 = 0;
    }

    v36 = v20;
    v21 = v0[269];

    sub_2280B760C(v21, type metadata accessor for ModelBundleIdentifier);
  }

  else
  {
    v36 = 0;
  }

  v22 = v0[296];
  v23 = v0[286];
  v24 = v0[285];
  v25 = v0[274];
  v26 = v0[270];
  v27 = v0[243];
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);
  v28 = v25[1];
  v35 = *v25;
  v29 = v26[5];
  v30 = type metadata accessor for SummarizationResult(0);
  sub_2280B842C(v25 + v29, &v27[v30[5]], &qword_27D81E8C0, &unk_22813C3A0);
  sub_2280B76DC(v23, &v27[v30[6]]);
  sub_2280B76DC(v24, &v27[v30[7]]);
  sub_2280B842C(v25 + v26[6], &v27[v30[8]], &qword_27D81E598, &qword_22813B300);
  sub_2280B842C(v25 + v26[7], &v27[v30[9]], &qword_27D81E598, &qword_22813B300);
  LOBYTE(v29) = *(v22 + 33);

  sub_2280B760C(v22, type metadata accessor for SummarizationParameters);
  v31 = v30[12];
  v32 = sub_2281376EC();
  (*(*(v32 - 8) + 56))(&v27[v31], 1, 1, v32);
  *v27 = v35;
  *(v27 + 1) = v28;
  v27[v30[10]] = v29;
  v27[v30[11]] = v36 & 1;
  sub_2280B760C(v25, type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult);

  v33 = v0[1];

  return v33();
}

uint64_t sub_2280AFA04()
{
  sub_227FCB7B8(v0[281], &qword_27D81E598, &qword_22813B300);
  v1 = v0[296];
  sub_227FCB7B8(v0[286], &qword_27D81E598, &qword_22813B300);
  sub_2280B760C(v1, type metadata accessor for SummarizationParameters);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 167);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2280AFC1C(void *a1, uint64_t a2)
{
  BYTE8(v9) = 0;
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x22AAB1970](v6);

  MEMORY[0x22AAB1970](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  v7 = sub_228139B8C();
  MEMORY[0x22AAB1970](v7);

  MEMORY[0x22AAB1970](0x656C797473202C29, 0xEA0000000000203ALL);
  *&v9 = *(a2 + 32);
  sub_2281398EC();
  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return *(&v9 + 1);
}

uint64_t sub_2280AFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  *(v3 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  *(v3 + 80) = swift_task_alloc();
  type metadata accessor for SummarizationParameters(0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 128) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF20, &unk_22813F8A0) + 48);

  return MEMORY[0x2822009F8](sub_2280AFE7C, 0, 0);
}

uint64_t sub_2280AFE7C()
{
  v1 = *(v0 + 72);
  if (*(v1 + 33) == 1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 56);
    sub_2280B7EF0(v1, v3, type metadata accessor for SummarizationParameters);
    v4 = sub_2281386FC();
    (*(*(v4 - 8) + 56))(v3 + v2, 1, 1, v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v6 = *(v0 + 64) + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory;
    v7 = (v1 + 40);
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    sub_228020974(v7, v6 + 136, sub_2280B83B4, v8, (v0 + 16));
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);

    v12 = *v11;
    v13 = v11[1];
    sub_2280B7EF0(v11, v10, type metadata accessor for SummarizationParameters);
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
    v18 = (*(v15 + 32) + **(v15 + 32));
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = sub_2280B0128;
    v17 = *(v0 + 80);

    return v18(v17, v12, v13, v14, v15);
  }
}

uint64_t sub_2280B0128(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_2280B0338;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_2280B025C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280B025C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);
  sub_2280B76DC(*(v0 + 80), v4 + *(v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 16));

  *v3 = v1;
  v3[1] = v2;
  sub_2280B7EF0(v3, v4, type metadata accessor for SummarizationParameters);
  sub_2280B760C(v3, type metadata accessor for SummarizationParameters);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2280B0338()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 2);
  sub_2280B760C(v1, type metadata accessor for SummarizationParameters);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2280B03CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  type metadata accessor for SignpostToken(0);
  v6[16] = swift_task_alloc();
  v7 = *(type metadata accessor for SummarizationParameters(0) - 8);
  v6[17] = v7;
  v6[18] = *(v7 + 64);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B04C4, 0, 0);
}

uint64_t sub_2280B04C4()
{
  if (qword_2813C4940 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = type metadata accessor for Signpost(0);
  *(v0 + 160) = __swift_project_value_buffer(v5, qword_2813C8918);
  sub_2280B8494(v4, v0 + 16);
  sub_2280B7EF0(v3, v1, type metadata accessor for SummarizationParameters);
  v6 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v0 + 168) = v7;
  sub_227FD20C0((v0 + 16), v7 + 16);
  sub_2280B7E88(v1, v7 + v6, type metadata accessor for SummarizationParameters);
  v8 = swift_allocObject();
  *(v0 + 176) = v8;
  *(v8 + 16) = sub_2280B82B0;
  *(v8 + 24) = v7;

  sub_2281324C4();
  v9 = swift_task_alloc();
  *(v0 + 184) = v9;
  *v9 = v0;
  v9[1] = sub_2280B069C;
  v10 = *(v0 + 112);
  v11 = *(v0 + 80);

  return sub_2280B09B8(v11, v10);
}

uint64_t sub_2280B069C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2280B0868;
  }

  else
  {
    v2 = sub_2280B07B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280B07B0()
{
  v1 = *(v0 + 128);
  sub_2281324D4();
  sub_2280B760C(v1, type metadata accessor for SignpostToken);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2280B0868()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[16];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = sub_2280B82B0;
  v5[4] = v2;
  swift_beginAccess();
  *(v3 + 16) = sub_2280B8660;
  *(v3 + 24) = v5;

  v6 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_2280B760C(v4, type metadata accessor for SignpostToken);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2280B09B8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B0ABC, 0, 0);
}

uint64_t sub_2280B0ABC()
{
  if (*(*(v0 + 168) + 33))
  {
    v1 = *(v0 + 160);
    v2 = sub_2281386FC();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

    v3 = *(v0 + 8);

    return v3();
  }

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (qword_2813C76F0 != -1)
  {
LABEL_19:
    swift_once();
  }

LABEL_11:
  v5 = qword_2813C7038;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
  v9 = type metadata accessor for ModelBundleIdentifier(0);
  v10 = __swift_project_value_buffer(v9, qword_2813C8B08);
  v11 = sub_22808EED0(v10);
  v13 = v12;

  if (v13)
  {
    v14 = 2048;
  }

  else
  {
    v14 = v11;
  }

  v15 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration;
  v16 = type metadata accessor for TokenCounter(0);
  *(v0 + 48) = v16;
  *(v0 + 56) = &off_283B5BC30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 24));
  sub_2280B7EF0(v6 + v15, boxed_opaque_existential_1, type metadata accessor for SummarizationSession.Configuration);
  v18 = (boxed_opaque_existential_1 + *(v16 + 20));
  v18[3] = v7;
  v18[4] = &off_283B5E840;
  *v18 = v6;
  sub_2280B8494((v8 + 5), v0 + 64);
  *(v0 + 112) = 0;
  *(v0 + 16) = v14;
  v19 = *v8;
  v20 = v8[1];

  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_2280B0E0C;

  return sub_2280C1424(v19, v20);
}

uint64_t sub_2280B0E0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_2280B18F0;
  }

  else
  {
    v4 = sub_2280B0F20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280B0F20()
{
  v1 = v0[32];
  v2 = (v0[21] + 40);
  v3 = v0[22] + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_228020974(v2, v3 + 176, sub_2280B83AC, v4, v0 + 15);
  v5 = v0[31];
  if (v1)
  {
    sub_228085A2C((v0 + 2));

    v6 = v0[1];
LABEL_9:

    return v6();
  }

  v7 = v0[29];

  v8 = sub_2281386FC();
  v0[33] = v8;
  v9 = *(v8 - 8);
  v0[34] = v9;
  v10 = *(v9 + 56);
  v0[35] = v10;
  v0[36] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  result = v10(v7, 1, 1, v8);
  v12 = *(v5 + 16);
  v0[37] = v12;
  if (!v12)
  {
LABEL_8:
    v23 = v0[29];
    v24 = v0[20];

    sub_228085A2C((v0 + 2));
    sub_2280B76DC(v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 15);

    v6 = v0[1];
    goto LABEL_9;
  }

  v13 = 0;
  while (1)
  {
    v0[38] = v13;
    v14 = v0[31];
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = v0[33];
    v16 = v0[34];
    v18 = v0[28];
    v17 = v0[29];
    v19 = v14 + 16 * v13;
    v20 = *(v19 + 32);
    v21 = *(v19 + 40);
    v0[39] = v21;
    sub_2280B842C(v17, v18, &qword_27D81E598, &qword_22813B300);
    v22 = *(v16 + 48);
    v0[40] = v22;
    v0[41] = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v22(v18, 1, v15) == 1)
    {
      break;
    }

    result = sub_227FCB7B8(v0[28], &qword_27D81E598, &qword_22813B300);
    v13 = v0[38] + 1;
    if (v13 == v0[37])
    {
      goto LABEL_8;
    }
  }

  v25 = v0[28];

  sub_227FCB7B8(v25, &qword_27D81E598, &qword_22813B300);
  sub_2281395DC();
  v26 = v0[18];
  v27 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v26);
  v30 = (*(v27 + 32) + **(v27 + 32));
  v28 = swift_task_alloc();
  v0[42] = v28;
  *v28 = v0;
  v28[1] = sub_2280B1354;
  v29 = v0[26];

  return v30(v29, v20, v21, v26, v27);
}

uint64_t sub_2280B1354(uint64_t a1, uint64_t a2)
{
  *(*v3 + 344) = v2;

  if (v2)
  {
    v4 = sub_2280B199C;
  }

  else
  {
    v4 = sub_2280B14B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280B14B0()
{
  v1 = v0[40];
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[24];
  sub_2280B76DC(v0[26], v0[27]);
  sub_2280B76DC(v3, v4);
  if (v1(v4, 1, v2) == 1)
  {
    v5 = v0[40];
    v6 = v0[33];
    v7 = v0[24];
    sub_2280B76DC(v0[27], v0[25]);
    if (v5(v7, 1, v6) != 1)
    {
      sub_227FCB7B8(v0[24], &qword_27D81E598, &qword_22813B300);
    }
  }

  else
  {
    v8 = v0[35];
    v9 = v0[33];
    v10 = v0[34];
    v12 = v0[24];
    v11 = v0[25];
    sub_227FCB7B8(v0[27], &qword_27D81E598, &qword_22813B300);
    (*(v10 + 32))(v11, v12, v9);
    v8(v11, 0, 1, v9);
  }

  result = sub_2280B76DC(v0[25], v0[29]);
  v14 = v0[38] + 1;
  if (v14 == v0[37])
  {
LABEL_10:
    v25 = v0[29];
    v26 = v0[20];

    sub_228085A2C((v0 + 2));
    sub_2280B76DC(v25, v26);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 15);

    v27 = v0[1];
LABEL_11:

    return v27();
  }

  else
  {
    v15 = v0[43];
    while (1)
    {
      v0[38] = v14;
      v16 = v0[31];
      if (v14 >= *(v16 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = v0[33];
      v18 = v0[34];
      v20 = v0[28];
      v19 = v0[29];
      v21 = v16 + 16 * v14;
      v22 = *(v21 + 32);
      v23 = *(v21 + 40);
      v0[39] = v23;
      sub_2280B842C(v19, v20, &qword_27D81E598, &qword_22813B300);
      v24 = *(v18 + 48);
      v0[40] = v24;
      v0[41] = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v24(v20, 1, v17) == 1)
      {
        break;
      }

      result = sub_227FCB7B8(v0[28], &qword_27D81E598, &qword_22813B300);
      v14 = v0[38] + 1;
      if (v14 == v0[37])
      {
        goto LABEL_10;
      }
    }

    v28 = v0[28];

    sub_227FCB7B8(v28, &qword_27D81E598, &qword_22813B300);
    sub_2281395DC();
    if (v15)
    {
      v29 = v0[29];

      sub_227FCB7B8(v29, &qword_27D81E598, &qword_22813B300);
      sub_228085A2C((v0 + 2));
      __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 15);

      v27 = v0[1];
      goto LABEL_11;
    }

    v30 = v0[18];
    v31 = v0[19];
    __swift_project_boxed_opaque_existential_1(v0 + 15, v30);
    v34 = (*(v31 + 32) + **(v31 + 32));
    v32 = swift_task_alloc();
    v0[42] = v32;
    *v32 = v0;
    v32[1] = sub_2280B1354;
    v33 = v0[26];

    return v34(v33, v22, v23, v30, v31);
  }
}

uint64_t sub_2280B18F0()
{
  sub_228085A2C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280B199C()
{
  sub_227FCB7B8(v0[29], &qword_27D81E598, &qword_22813B300);
  sub_228085A2C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 15);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2280B1A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(type metadata accessor for SummarizationParameters(0) - 8);
  v5[12] = v6;
  v5[13] = *(v6 + 64);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B1B34, 0, 0);
}

uint64_t sub_2280B1B34()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  sub_2280B8494(*(v0 + 80), v0 + 16);
  sub_2280B7EF0(v2, v1, type metadata accessor for SummarizationParameters);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v0 + 120) = v5;
  sub_227FD20C0((v0 + 16), v5 + 16);
  sub_2280B7E88(v1, v5 + v4, type metadata accessor for SummarizationParameters);
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_2280B1C74;
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  return sub_2280B1E28(v8, v7, sub_2280B864C, v5);
}

uint64_t sub_2280B1C74()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2280B1DBC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2280B1DBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280B1E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[32] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v5[36] = swift_task_alloc();
  v7 = type metadata accessor for GMSModelInfo(0);
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF28, &unk_22813F8F0);
  v5[45] = swift_task_alloc();
  v8 = sub_2281376EC();
  v5[46] = v8;
  v5[47] = *(v8 - 8);
  v5[48] = swift_task_alloc();
  v9 = sub_228137A9C();
  v5[49] = v9;
  v5[50] = *(v9 - 8);
  v5[51] = swift_task_alloc();
  v5[52] = type metadata accessor for SummarizationParameters(0);
  v5[53] = swift_task_alloc();
  sub_228137AEC();
  v5[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  v5[55] = swift_task_alloc();
  v10 = sub_228137A3C();
  v5[56] = v10;
  v5[57] = *(v10 - 8);
  v5[58] = swift_task_alloc();
  v11 = sub_2281377CC();
  v5[59] = v11;
  v5[60] = *(v11 - 8);
  v5[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B224C, 0, 0);
}

uint64_t sub_2280B224C()
{
  v1 = v0[61];
  v2 = v0[31];
  v3 = v0[28];
  sub_2280B8494(v3 + 40, (v0 + 2));
  v4 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  v0[62] = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  v5 = v2 + v4;
  sub_228094574(v2 + v4, (v3 + 40), v1);
  if (*(v3 + 33) == 1)
  {
    v6 = v0[57];
    v7 = v0[58];
    v8 = v0[55];
    v9 = v0[56];
    v0[15] = v0[49];
    v0[16] = &off_2813C8678;
    __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    v10 = sub_228137A7C();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    (*(v6 + 104))(v7, *MEMORY[0x277D0E578], v9);
    sub_228137AAC();
    sub_228137A0C();
    v11 = sub_228137A1C();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    sub_228137A8C();
  }

  else
  {
    sub_228021FA8((v3 + 40), v0 + 12);
  }

  v12 = v0[52];
  v13 = v0[53];
  v15 = v0[50];
  v14 = v0[51];
  v16 = v0[49];
  v17 = v0[28];
  sub_227FD20C0(v0 + 6, (v0 + 7));
  sub_2280B7EF0(v17, v13, type metadata accessor for SummarizationParameters);
  v18 = v0[10];
  v19 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v18);
  (*(v19 + 40))(v18, v19);
  (*(v15 + 40))(v13 + *(v12 + 36), v14, v16);
  sub_2281395DC();
  if (qword_2813C73E8 != -1)
  {
    swift_once();
  }

  v20 = off_2813C73F0;
  v0[63] = off_2813C73F0;
  v21 = v20[2];
  v22 = swift_task_alloc();
  v22[2] = v5;
  v22[3] = v0 + 2;
  v22[4] = v20;
  os_unfair_lock_lock((v21 + 24));
  sub_2280B8318((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));

  if (qword_2813C4980 != -1)
  {
    swift_once();
  }

  v24 = v0[29];
  v23 = v0[30];
  v25 = type metadata accessor for Signpost(0);
  v0[64] = v25;
  v0[65] = __swift_project_value_buffer(v25, qword_2813C89D8);
  v26 = swift_allocObject();
  v0[66] = v26;
  *(v26 + 16) = v24;
  *(v26 + 24) = v23;
  v27 = swift_allocObject();
  v0[67] = v27;
  *(v27 + 16) = sub_2280B8650;
  *(v27 + 24) = v26;

  sub_2281324C4();
  v28 = swift_task_alloc();
  v0[68] = v28;
  *v28 = v0;
  v28[1] = sub_2280B27C0;
  v29 = v0[53];
  v30 = v0[45];
  v31 = v0[31];

  return sub_2280B3998(v30, v29, v31);
}

uint64_t sub_2280B27C0()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_2280B3040;
  }

  else
  {
    v2 = sub_2280B28D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280B28D4()
{
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v6 = v0[44];
  v7 = v0[36];
  v13 = v0[31];
  v14 = v0[62];
  sub_2281324D4();
  sub_2280B760C(v5, type metadata accessor for SignpostToken);

  v8 = (v4 + *(v6 + 48));
  v0[70] = *v8;
  v0[71] = v8[1];
  (*(v2 + 32))(v1, v4, v3);
  (*(v2 + 16))(v7, v1, v3);
  (*(v2 + 56))(v7, 0, 1, v3);
  v9 = swift_task_alloc();
  v0[72] = v9;
  *v9 = v0;
  v9[1] = sub_2280B2A74;
  v10 = v0[40];
  v11 = v0[36];

  return sub_228011668(v10, v13 + v14, (v0 + 2), v11);
}

uint64_t sub_2280B2A74()
{
  v1 = *(*v0 + 288);

  sub_227FCB7B8(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_2280B2B9C, 0, 0);
}

uint64_t sub_2280B2B9C()
{
  if (qword_2813C4978 != -1)
  {
    swift_once();
  }

  v31 = v0[69];
  v33 = v0[71];
  v1 = v0[61];
  v27 = v0[48];
  v29 = v0[70];
  v2 = v0[40];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  __swift_project_value_buffer(v0[64], qword_2813C89C0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2280B8344;
  *(v7 + 24) = v6;

  sub_2281324C8();
  sub_2280B3FF4(v4, v1, v2, (v0 + 2), v27, v29, v33);
  if (v31)
  {
    v8 = swift_allocObject();
    v8[2] = v31;
    v8[3] = sub_2280B8344;
    v8[4] = v6;
    v9 = v0[42];
    swift_beginAccess();
    *(v7 + 16) = sub_2280B8668;
    *(v7 + 24) = v8;

    v10 = v31;

    swift_willThrow();
    sub_2281324D8();
    sub_2280B760C(v9, type metadata accessor for SignpostToken);
  }

  else
  {
    v28 = v0[70];
    v30 = v0[71];
    v12 = v0[47];
    v32 = v0[46];
    v34 = v0[48];
    v13 = v0[42];
    v14 = v0[40];
    v15 = v0[38];
    v26 = v0[37];
    v16 = v0[33];
    v17 = v0[34];
    v18 = v0[27];
    sub_2281324D8();
    sub_2280B760C(v13, type metadata accessor for SignpostToken);

    v19 = type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult(0);
    v20 = v19[5];
    sub_2280B7EF0(v14, &v18[v20], type metadata accessor for GMSModelInfo);
    (*(v15 + 56))(&v18[v20], 0, 1, v26);
    v21 = *(v17 + 56);
    v21(&v18[v19[6]], 1, 1, v16);
    v21(&v18[v19[7]], 1, 1, v16);
    *v18 = v28;
    *(v18 + 1) = v30;
    sub_2280B760C(v14, type metadata accessor for GMSModelInfo);
    (*(v12 + 8))(v34, v32);
    v23 = v0[60];
    v22 = v0[61];
    v24 = v0[59];
    sub_2280B760C(v0[53], type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 7);
    (*(v23 + 8))(v22, v24);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 2);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2280B3040()
{
  v1 = v0[69];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[47];
  v13 = v0[46];
  v5 = v0[43];
  v6 = v0[36];
  v14 = v0[31];
  v15 = v0[62];
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = sub_2280B8650;
  v7[4] = v3;
  swift_beginAccess();
  *(v2 + 16) = sub_2280B8664;
  *(v2 + 24) = v7;

  v8 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_2280B760C(v5, type metadata accessor for SignpostToken);

  (*(v4 + 56))(v6, 1, 1, v13);
  v9 = swift_task_alloc();
  v0[73] = v9;
  *v9 = v0;
  v9[1] = sub_2280B3208;
  v10 = v0[39];
  v11 = v0[36];

  return sub_228011668(v10, v14 + v15, (v0 + 2), v11);
}

uint64_t sub_2280B3208()
{
  v1 = *(*v0 + 288);

  sub_227FCB7B8(v1, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_2280B3330, 0, 0);
}

uint64_t sub_2280B3330()
{
  if (qword_2813C4978 != -1)
  {
    swift_once();
  }

  v1 = v0[61];
  v2 = v0[39];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  __swift_project_value_buffer(v0[64], qword_2813C89C0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2280B8654;
  *(v7 + 24) = v6;

  sub_2281324C8();
  sub_2280B61A8(v3, v1, v2, (v0 + 2));
  v8 = v0[69];
  v9 = v0[41];
  v10 = v0[34];
  sub_2281324D8();
  sub_2280B760C(v9, type metadata accessor for SignpostToken);

  v0[26] = v8;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v12 = swift_dynamicCast();
  v13 = *(v10 + 56);
  v15 = v0[32];
  v14 = v0[33];
  if (v12)
  {
    v16 = v0[39];
    v18 = v0[34];
    v17 = v0[35];
    v19 = v0[27];
    v13(v0[32], 0, 1, v0[33]);
    (*(v18 + 32))(v17, v15, v14);
    sub_2280B718C(v17, v16, v19);
    v20 = v0[69];
    v24 = v0[39];
    (*(v0[34] + 8))(v0[35], v0[33]);

    sub_2280B760C(v24, type metadata accessor for GMSModelInfo);
    v26 = v0[60];
    v25 = v0[61];
    v27 = v0[59];
    sub_2280B760C(v0[53], type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 7);
    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v21 = v0[53];
    v22 = v0[39];
    v13(v0[32], 1, 1, v0[33]);
    sub_227FCB7B8(v15, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
    sub_2280B760C(v22, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v21, type metadata accessor for SummarizationParameters);
    __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 7);
    (*(v0[60] + 8))(v0[61], v0[59]);
  }

  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 2);

  v28 = v0[1];

  return v28();
}

uint64_t sub_2280B3998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_2281376EC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  type metadata accessor for SummarizationParameters(0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_2281377CC();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280B3AF0, 0, 0);
}

uint64_t sub_2280B3AF0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[8];
  v5 = v0[9];
  sub_2280B7EF0(v4, v2, type metadata accessor for SummarizationParameters);
  v6 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier;
  sub_2280B8494(v4 + 40, (v0 + 2));
  sub_228094574(v5 + v6, v0 + 2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm_10(v0 + 2);
  sub_2280B760C(v2, type metadata accessor for SummarizationParameters);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner), *(v5 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner + 24));
  sub_2280B7EF0(v4, v3, type metadata accessor for SummarizationParameters);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_2280B3C44;
  v8 = v0[17];
  v9 = v0[12];
  v10 = v0[13];

  return sub_227FFF010(v9, v10, v8);
}

uint64_t sub_2280B3C44()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  sub_2280B760C(*(v2 + 104), type metadata accessor for SummarizationParameters);
  if (v0)
  {
    v3 = sub_2280B3F48;
  }

  else
  {
    v3 = sub_2280B3D8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280B3D8C()
{
  v1 = v0[19];
  (*(v0[11] + 16))(v0[7], v0[12], v0[10]);
  v2 = sub_227FC54CC();
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (v1)
  {
    v7 = *(v0[11] + 8);
    v7(v0[12], v0[10]);
    (*(v5 + 8))(v4, v6);
    v7(v0[7], v0[10]);
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v11 = v0[11];
    v12 = v0[12];
    v13 = v0[10];
    v14 = v0[7];
    v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF28, &unk_22813F8F0) + 48));
    (*(v11 + 8))(v12, v13);
    (*(v5 + 8))(v4, v6);
    *v15 = v9;
    v15[1] = v10;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_2280B3F48()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2280B3FF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v305 = a7;
  v296 = a6;
  v285 = a5;
  v319 = a4;
  v300 = a2;
  v299 = sub_228136CDC();
  v298 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v297 = &v274 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E308, &unk_22813F910);
  MEMORY[0x28223BE20](v9 - 8);
  v284 = &v274 - v10;
  v287 = sub_2281378AC();
  v289 = *(v287 - 8);
  v11 = MEMORY[0x28223BE20](v287);
  v279 = &v274 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v286 = &v274 - v14;
  MEMORY[0x28223BE20](v13);
  v280 = &v274 - v15;
  v16 = sub_22813771C();
  v294 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v281 = &v274 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v282 = &v274 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v293 = &v274 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v303 = &v274 - v23;
  v292 = sub_22813716C();
  v291 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v290 = &v274 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2281377CC();
  v315 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v309 = &v274 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v274 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v274 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v316 = &v274 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v318 = &v274 - v37;
  MEMORY[0x28223BE20](v36);
  v314 = &v274 - v38;
  v301 = type metadata accessor for GMSModelInfo(0);
  v39 = MEMORY[0x28223BE20](v301);
  v313 = &v274 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v312 = &v274 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v311 = &v274 - v44;
  MEMORY[0x28223BE20](v43);
  v320 = (&v274 - v45);
  v46 = sub_22813882C();
  v47 = *(v46 - 8);
  v48 = MEMORY[0x28223BE20](v46);
  v310 = &v274 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v304 = &v274 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v288 = &v274 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v283 = &v274 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v274 - v57;
  if (qword_2813C49E0 != -1)
  {
    v273 = v56;
    swift_once();
    v56 = v273;
  }

  v59 = v56;
  v60 = __swift_project_value_buffer(v56, qword_2813C8A20);
  v308 = v60;
  if (qword_2813C49C8 != -1)
  {
    swift_once();
    v60 = v308;
  }

  v61 = v60;
  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v59, qword_2813C4990);
  }

  v295 = v16;
  v62 = *(v47 + 16);
  v321 = v59;
  v307 = v47 + 16;
  v306 = v62;
  v62(v58, v61, v59);
  sub_2280B8494(v319, &v331);
  sub_2280B7EF0(a3, v320, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v311, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v312, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v313, type metadata accessor for GMSModelInfo);
  v63 = v315;
  v64 = *(v315 + 16);
  v65 = v300;
  v64(v314, v300, v25);
  v64(v318, v65, v25);
  v64(v316, v65, v25);
  v64(v33, v65, v25);
  v64(v30, v65, v25);
  v302 = v33;
  v66 = v30;
  v67 = v58;
  v68 = v309;
  v69 = v65;
  v70 = v47;
  v64(v309, v69, v25);
  v71 = v321;
  v72 = sub_22813880C();
  v73 = sub_2281396BC();
  v74 = os_log_type_enabled(v72, v73);
  v317 = v70;
  if (v74)
  {
    v276 = v73;
    v277 = v72;
    v278 = v25;
    v300 = v67;
    v75 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v327 = v275;
    *v75 = 136318210;
    v76 = v332;
    v77 = v333;
    __swift_project_boxed_opaque_existential_1(&v331, v332);
    v78 = (*(v77 + 16))(v76, v77);
    v80 = v79;
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v331);
    v81 = sub_227FCC340(v78, v80, &v327);

    *(v75 + 4) = v81;
    *(v75 + 12) = 2082;
    v82 = (v320 + v301[5]);
    v83 = *v82;
    v84 = v82[1];
    v85 = v320 + v301[9];
    v86 = *v85;
    v87 = *(v85 + 1);
    v323 = v83;
    v324 = v84;
    v274 = v66;
    if (v87)
    {
      v329 = 30240;
      v330 = 0xE200000000000000;

      MEMORY[0x22AAB1970](v86, v87);
      MEMORY[0x22AAB1970](v329, v330);

      v83 = v323;
      v84 = v324;
    }

    else
    {
    }

    v89 = v318;
    v90 = v291;
    v91 = v311;
    sub_2280B760C(v320, type metadata accessor for GMSModelInfo);
    v92 = sub_227FCC340(v83, v84, &v327);

    *(v75 + 14) = v92;
    *(v75 + 22) = 2082;
    v93 = v301;
    v94 = sub_2280B7360(*(v91 + v301[6]), *(v91 + v301[6] + 8), *(v91 + v301[10]), *(v91 + v301[10] + 8));
    v96 = v95;
    sub_2280B760C(v91, type metadata accessor for GMSModelInfo);
    v97 = sub_227FCC340(v94, v96, &v327);

    *(v75 + 24) = v97;
    *(v75 + 32) = 2082;
    v98 = v312;
    v99 = sub_2280B7360(*(v312 + v93[7]), *(v312 + v93[7] + 8), *(v312 + v93[11]), *(v312 + v93[11] + 8));
    v101 = v100;
    sub_2280B760C(v98, type metadata accessor for GMSModelInfo);
    v102 = sub_227FCC340(v99, v101, &v327);

    *(v75 + 34) = v102;
    *(v75 + 42) = 2082;
    v103 = v313;
    v104 = sub_2280B7360(*(v313 + v93[8]), *(v313 + v93[8] + 8), *(v313 + v93[12]), *(v313 + v93[12] + 8));
    v106 = v105;
    sub_2280B760C(v103, type metadata accessor for GMSModelInfo);
    v107 = sub_227FCC340(v104, v106, &v327);

    *(v75 + 44) = v107;
    *(v75 + 52) = 2082;
    v108 = v290;
    sub_2281370CC();
    v109 = sub_228136FEC();
    v111 = v110;
    v112 = *(v90 + 8);
    v113 = v292;
    v112(v108, v292);
    v114 = sub_227FCC340(v109, v111, &v327);

    *(v75 + 54) = v114;
    *(v75 + 62) = 2082;
    v115 = v302;
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    sub_228139B6C();
    v116 = sub_228136FEC();
    v117 = v108;
    v119 = v118;
    v112(v117, v113);
    v120 = sub_227FCC340(v116, v119, &v327);

    *(v75 + 64) = v120;
    *(v75 + 72) = 2082;
    v121 = v314;
    v122 = sub_22813776C();
    v123 = v278;
    if (v124)
    {
      v125 = *(v315 + 8);
      v125(v121, v278);
      v126 = 0xE300000000000000;
      v127 = 7104878;
    }

    else
    {
      v323 = v122;
      v128 = sub_2281392EC();
      v126 = v129;
      v125 = *(v315 + 8);
      v125(v121, v123);
      v127 = v128;
    }

    v130 = v295;
    v131 = v274;
    v132 = sub_227FCC340(v127, v126, &v327);

    *(v75 + 74) = v132;
    *(v75 + 82) = 2082;
    v133 = v303;
    sub_2281377BC();
    v134 = v133;
    v135 = v293;
    sub_2280B842C(v134, v293, &qword_27D81E310, &qword_22813A7C0);
    v136 = v294;
    if ((*(v294 + 48))(v135, 1, v130) == 1)
    {
      sub_227FCB7B8(v135, &qword_27D81E310, &qword_22813A7C0);
      v137 = 0xE300000000000000;
      v138 = 7104878;
    }

    else
    {
      v139 = v282;
      (*(v136 + 32))(v282, v135, v130);
      (*(v136 + 16))(v281, v139, v130);
      v138 = sub_2281392EC();
      v140 = v136;
      v137 = v141;
      v142 = v139;
      v89 = v318;
      (*(v140 + 8))(v142, v130);
    }

    sub_227FCB7B8(v303, &qword_27D81E310, &qword_22813A7C0);
    v125(v89, v123);
    v143 = sub_227FCC340(v138, v137, &v327);

    *(v75 + 84) = v143;
    *(v75 + 92) = 2082;
    v144 = v316;
    v145 = sub_22813774C();
    if (v146)
    {
      v125(v144, v123);
      v147 = 0xE300000000000000;
      v148 = 7104878;
    }

    else
    {
      v323 = v145;
      v149 = sub_2281392EC();
      v150 = v144;
      v151 = v149;
      v147 = v152;
      v125(v150, v123);
      v148 = v151;
    }

    v153 = sub_227FCC340(v148, v147, &v327);

    *(v75 + 94) = v153;
    *(v75 + 102) = 2082;
    v154 = sub_22813773C();
    if (v155)
    {
      v125(v115, v123);
      v156 = 0xE300000000000000;
      v157 = 7104878;
    }

    else
    {
      v323 = v154;
      v158 = sub_2281392EC();
      v156 = v159;
      v125(v115, v123);
      v157 = v158;
    }

    v160 = sub_227FCC340(v157, v156, &v327);

    *(v75 + 104) = v160;
    *(v75 + 112) = 2082;
    v161 = sub_22813779C();
    v162 = 7104878;
    if (v163)
    {
      v125(v131, v123);
      v164 = 0xE300000000000000;
      v165 = 7104878;
    }

    else
    {
      v323 = v161;
      v166 = sub_2281392EC();
      v164 = v167;
      v125(v131, v123);
      v165 = v166;
    }

    v168 = sub_227FCC340(v165, v164, &v327);

    *(v75 + 114) = v168;
    *(v75 + 122) = 2082;
    v169 = v309;
    v170 = sub_22813777C();
    if (v171)
    {
      v125(v169, v123);
      v172 = 0xE300000000000000;
    }

    else
    {
      v323 = v170;
      v162 = sub_2281392EC();
      v172 = v173;
      v125(v169, v123);
    }

    v174 = sub_227FCC340(v162, v172, &v327);

    *(v75 + 124) = v174;
    v175 = v277;
    _os_log_impl(&dword_227FC3000, v277, v276, "\n--------------------------------------------------------------------------------\n# Inference details for request %s\n--------------------------------------------------------------------------------\nAdapter: %{public}s\nTokenizer: %{public}s\nBase Model: %{public}s\nDraft Model: %{public}s\nDevice Locale: %{public}s\nInference Locale: %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\n--------------------------------------------------------------------------------", v75, 0x84u);
    v176 = v275;
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v176, -1, -1);
    MEMORY[0x22AAB28A0](v75, -1, -1);

    v318 = *(v317 + 8);
    (v318)(v300, v321);
  }

  else
  {

    v88 = *(v63 + 8);
    v88(v68, v25);
    v88(v66, v25);
    v88(v302, v25);
    v88(v316, v25);
    v88(v318, v25);
    v88(v314, v25);
    v318 = *(v70 + 8);
    (v318)(v67, v71);
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v331);
    sub_2280B760C(v320, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v311, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v312, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v313, type metadata accessor for GMSModelInfo);
  }

  v177 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v178 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v178 = &qword_2813C76F8;
  }

  v179 = *v178;
  v180 = *(*v178 + 32);
  v181 = *(*v178 + 40);
  v182 = *(*v178 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v183 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v181(&v331, v182);

    if ((v331 & 1) == 0)
    {
LABEL_48:

      v184 = v305;
      v185 = v321;
      v186 = v317;
LABEL_49:
      v187 = v310;
      v188 = v319;
      goto LABEL_54;
    }
  }

  else
  {

    if (!v180)
    {
      goto LABEL_48;
    }
  }

  v189 = *(v179 + 72);
  v190 = *(v179 + 80);
  v191 = *(v179 + 2208);

  if (!v183)
  {

    v184 = v305;
    v185 = v321;
    v188 = v319;
    if ((v189 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_71:
    v217 = v284;
    sub_22813763C();
    v218 = v289;
    v219 = v287;
    v220 = (*(v289 + 48))(v217, 1, v287);
    v186 = v317;
    if (v220 == 1)
    {
      sub_227FCB7B8(v217, &qword_27D81E308, &unk_22813F910);
      sub_2280B8494(v188, &v331);
      v221 = sub_22813880C();
      v222 = sub_2281396DC();
      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v323 = v224;
        *v223 = 136315138;
        v225 = v332;
        v226 = v333;
        __swift_project_boxed_opaque_existential_1(&v331, v332);
        v227 = (*(v226 + 16))(v225, v226);
        v229 = v228;
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v331);
        v230 = sub_227FCC340(v227, v229, &v323);

        *(v223 + 4) = v230;
        _os_log_impl(&dword_227FC3000, v221, v222, "Rendered prompt after prompt completion is nil for request %s.", v223, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_10(v224);
        MEMORY[0x22AAB28A0](v224, -1, -1);
        v231 = v223;
        v186 = v317;
        MEMORY[0x22AAB28A0](v231, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm_10(&v331);
      }

      v185 = v321;
    }

    else
    {
      v232 = v217;
      v233 = v280;
      (*(v218 + 32))(v280, v232, v219);
      if (qword_2813C49B8 != -1)
      {
        swift_once();
      }

      v234 = v308;
      v235 = v288;
      if ((byte_2813C49C1 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v234 = __swift_project_value_buffer(v185, qword_2813C4990);
      }

      v306(v283, v234, v185);
      if (qword_2813C49B0 != -1)
      {
        swift_once();
      }

      if (byte_27D81EEF2 == 1)
      {
        (*(v186 + 32))(v235, v283, v185);
      }

      else
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v236 = __swift_project_value_buffer(v185, qword_2813C4990);
        v306(v235, v236, v185);
        (v318)(v283, v185);
      }

      sub_2280B8494(v188, &v331);
      v237 = v188;
      v238 = *(v218 + 16);
      v238(v286, v233, v219);
      sub_2280B8494(v237, &v323);
      v239 = v279;
      v238(v279, v233, v219);
      v240 = sub_22813880C();
      v241 = sub_2281396CC();
      v320 = v240;
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v318 = swift_slowAlloc();
        v334 = v318;
        *v242 = 136446979;
        v243 = v218;
        v244 = v332;
        v245 = v333;
        __swift_project_boxed_opaque_existential_1(&v331, v332);
        v246 = *(v245 + 16);
        LODWORD(v316) = v241;
        v247 = v246(v244, v245);
        v249 = v248;
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v331);
        v250 = sub_227FCC340(v247, v249, &v334);

        *(v242 + 4) = v250;
        *(v242 + 12) = 2081;
        v251 = v286;
        sub_22813789C();
        v252 = MEMORY[0x22AAB1AD0]();
        v254 = v253;

        v255 = *(v243 + 8);
        v255(v251, v219);
        v289 = v243 + 8;
        v256 = sub_227FCC340(v252, v254, &v334);

        *(v242 + 14) = v256;
        *(v242 + 22) = 2082;
        v257 = v325;
        v258 = v326;
        __swift_project_boxed_opaque_existential_1(&v323, v325);
        v259 = (*(v258 + 16))(v257, v258);
        v261 = v260;
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v323);
        v262 = sub_227FCC340(v259, v261, &v334);

        *(v242 + 24) = v262;
        *(v242 + 32) = 2081;
        v329 = sub_22813788C();
        v330 = v263;
        v327 = 10;
        v328 = 0xE100000000000000;
        v322[0] = 4091452;
        v322[1] = 0xE300000000000000;
        sub_227FDB420();
        v264 = sub_2281397BC();
        v266 = v265;
        v267 = v239;
        v268 = v320;
        v255(v267, v219);

        v269 = sub_227FCC340(v264, v266, &v334);

        *(v242 + 34) = v269;
        _os_log_impl(&dword_227FC3000, v268, v316, "\n--------------------------------------------------------------------------------\n# Rendered Prompt Token IDs for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Rendered Prompt (informational only) for request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v242, 0x2Au);
        v270 = v318;
        swift_arrayDestroy();
        v184 = v305;
        MEMORY[0x22AAB28A0](v270, -1, -1);
        v271 = v242;
        v186 = v317;
        MEMORY[0x22AAB28A0](v271, -1, -1);

        v185 = v321;
        v318 = *(v186 + 8);
        (v318)(v288, v321);
        v255(v280, v219);
      }

      else
      {

        v272 = *(v218 + 8);
        v272(v239, v219);
        v272(v286, v219);
        v185 = v321;
        (v318)(v288, v321);
        v272(v233, v219);
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v323);
        __swift_destroy_boxed_opaque_existential_1Tm_10(&v331);
      }
    }

    goto LABEL_49;
  }

  v190(&v331, v191);

  v184 = v305;
  v185 = v321;
  v188 = v319;
  if (v331)
  {
    goto LABEL_71;
  }

LABEL_53:

  v186 = v317;
  v187 = v310;
LABEL_54:
  v192 = v304;
  v193 = v306;
  v194 = v308;
  if (qword_2813C49B8 != -1)
  {
    swift_once();
    v194 = v308;
  }

  if ((byte_2813C49C1 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v194 = __swift_project_value_buffer(v185, qword_2813C4990);
  }

  v193(v192, v194, v185);
  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  if (byte_27D81EEF2 == 1)
  {
    (*(v186 + 32))(v187, v192, v185);
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v195 = __swift_project_value_buffer(v185, qword_2813C4990);
    v193(v187, v195, v185);
    (v318)(v192, v185);
  }

  sub_2280B8494(v188, &v331);

  v196 = sub_22813880C();
  v197 = sub_2281396CC();

  if (os_log_type_enabled(v196, v197))
  {
    v198 = swift_slowAlloc();
    v199 = swift_slowAlloc();
    v322[0] = v199;
    *v198 = 136446723;
    v200 = v332;
    v201 = v333;
    __swift_project_boxed_opaque_existential_1(&v331, v332);
    v202 = (*(v201 + 16))(v200, v201);
    v204 = v203;
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v331);
    v205 = sub_227FCC340(v202, v204, v322);

    *(v198 + 4) = v205;
    *(v198 + 12) = 2080;
    v206 = v296;
    *(v198 + 14) = sub_227FCC340(v296, v184, v322);
    *(v198 + 22) = 2081;
    v323 = v206;
    v324 = v184;
    v329 = 32;
    v330 = 0xE100000000000000;
    v327 = 39371;
    v328 = 0xA200000000000000;
    sub_227FDB420();
    v323 = sub_2281397BC();
    v324 = v207;
    v329 = 4091452;
    v330 = 0xE300000000000000;
    v327 = 171863612;
    v328 = 0xE400000000000000;
    v208 = sub_2281397BC();
    v210 = v209;

    v323 = v208;
    v324 = v210;
    v211 = v297;
    sub_228136C8C();
    v212 = sub_2281397AC();
    v214 = v213;
    (*(v298 + 8))(v211, v299);

    v215 = sub_227FCC340(v212, v214, v322);

    *(v198 + 24) = v215;
    _os_log_impl(&dword_227FC3000, v196, v197, "\n--------------------------------------------------------------------------------\n# Response for request %{public}s\n--------------------------------------------------------------------------------\n%s\n--------------------------------------------------------------------------------\n# Rendered Response\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v198, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v199, -1, -1);
    MEMORY[0x22AAB28A0](v198, -1, -1);

    return (*(v317 + 8))(v310, v321);
  }

  else
  {

    (v318)(v187, v185);
    return __swift_destroy_boxed_opaque_existential_1Tm_10(&v331);
  }
}

uint64_t sub_2280B61A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v169 = a4;
  v6 = sub_22813771C();
  v163 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v157 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v158 = &v153 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v162 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v166 = &v153 - v13;
  v161 = sub_22813716C();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2281377CC();
  v177 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v172 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v171 = &v153 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v153 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v170 = &v153 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v178 = &v153 - v26;
  MEMORY[0x28223BE20](v25);
  v176 = &v153 - v27;
  v165 = type metadata accessor for GMSModelInfo(0);
  v28 = MEMORY[0x28223BE20](v165);
  v175 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v174 = &v153 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v173 = &v153 - v33;
  MEMORY[0x28223BE20](v32);
  v179 = &v153 - v34;
  v35 = sub_22813882C();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v35, qword_2813C8A20);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v35, qword_2813C4990);
  }

  v164 = v6;
  (*(v36 + 16))(v38, v39, v35);
  sub_2280B8494(v169, &v184);
  v168 = v36;
  v169 = v35;
  sub_2280B7EF0(a3, v179, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v173, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v174, type metadata accessor for GMSModelInfo);
  sub_2280B7EF0(a3, v175, type metadata accessor for GMSModelInfo);
  v40 = v177;
  v41 = *(v177 + 16);
  v41(v176, a2, v15);
  v41(v178, a2, v15);
  v42 = v170;
  v41(v170, a2, v15);
  v41(v22, a2, v15);
  v167 = v22;
  v43 = v171;
  v41(v171, a2, v15);
  v44 = v172;
  v41(v172, a2, v15);
  v45 = sub_22813880C();
  v46 = sub_2281396BC();
  if (os_log_type_enabled(v45, v46))
  {
    v155 = v46;
    v47 = v38;
    v48 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v187 = v154;
    *v48 = 136318210;
    v49 = v185;
    v50 = v186;
    __swift_project_boxed_opaque_existential_1(&v184, v185);
    v51 = (*(v50 + 16))(v49, v50);
    v53 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v184);
    v54 = sub_227FCC340(v51, v53, &v187);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2082;
    v55 = (v179 + v165[5]);
    v57 = *v55;
    v56 = v55[1];
    v58 = (v179 + v165[9]);
    v59 = *v58;
    v60 = v58[1];
    v182 = v57;
    v183 = v56;
    v156 = v45;
    v153 = v47;
    if (v60)
    {
      v180 = 30240;
      v181 = 0xE200000000000000;

      MEMORY[0x22AAB1970](v59, v60);
      MEMORY[0x22AAB1970](v180, v181);

      v57 = v182;
      v56 = v183;
    }

    else
    {
    }

    v63 = v175;
    sub_2280B760C(v179, type metadata accessor for GMSModelInfo);
    v64 = sub_227FCC340(v57, v56, &v187);

    *(v48 + 14) = v64;
    *(v48 + 22) = 2082;
    v65 = v165;
    v66 = v173;
    v67 = sub_2280B7360(*(v173 + v165[6]), *(v173 + v165[6] + 8), *(v173 + v165[10]), *(v173 + v165[10] + 8));
    v69 = v68;
    sub_2280B760C(v66, type metadata accessor for GMSModelInfo);
    v70 = sub_227FCC340(v67, v69, &v187);

    *(v48 + 24) = v70;
    *(v48 + 32) = 2082;
    v71 = v174;
    v72 = sub_2280B7360(*(v174 + v65[7]), *(v174 + v65[7] + 8), *(v174 + v65[11]), *(v174 + v65[11] + 8));
    v74 = v73;
    sub_2280B760C(v71, type metadata accessor for GMSModelInfo);
    v75 = sub_227FCC340(v72, v74, &v187);

    *(v48 + 34) = v75;
    *(v48 + 42) = 2082;
    v76 = sub_2280B7360(*(v63 + v65[8]), *(v63 + v65[8] + 8), *(v63 + v65[12]), *(v63 + v65[12] + 8));
    v78 = v77;
    sub_2280B760C(v63, type metadata accessor for GMSModelInfo);
    v79 = sub_227FCC340(v76, v78, &v187);

    *(v48 + 44) = v79;
    *(v48 + 52) = 2082;
    v80 = v159;
    sub_2281370CC();
    v81 = sub_228136FEC();
    v83 = v82;
    v84 = *(v160 + 8);
    v85 = v161;
    v84(v80, v161);
    v86 = sub_227FCC340(v81, v83, &v187);

    *(v48 + 54) = v86;
    *(v48 + 62) = 2082;
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    v87 = 7104878;
    sub_228139B6C();
    v88 = sub_228136FEC();
    v89 = v80;
    v91 = v90;
    v84(v89, v85);
    v92 = sub_227FCC340(v88, v91, &v187);

    *(v48 + 64) = v92;
    *(v48 + 72) = 2082;
    v93 = v176;
    v94 = sub_22813776C();
    v95 = v168;
    if (v96)
    {
      v97 = *(v177 + 8);
      v97(v93, v15);
      v98 = 0xE300000000000000;
      v99 = 7104878;
    }

    else
    {
      v182 = v94;
      v100 = sub_2281392EC();
      v98 = v101;
      v97 = *(v177 + 8);
      v97(v93, v15);
      v99 = v100;
    }

    v102 = v164;
    v103 = v178;
    v104 = sub_227FCC340(v99, v98, &v187);

    *(v48 + 74) = v104;
    *(v48 + 82) = 2082;
    v105 = v166;
    sub_2281377BC();
    v106 = v105;
    v107 = v162;
    sub_2280B842C(v106, v162, &qword_27D81E310, &qword_22813A7C0);
    v108 = v163;
    if ((*(v163 + 48))(v107, 1, v102) == 1)
    {
      sub_227FCB7B8(v107, &qword_27D81E310, &qword_22813A7C0);
      v109 = 0xE300000000000000;
      v110 = 7104878;
    }

    else
    {
      v111 = v158;
      (*(v108 + 32))(v158, v107, v102);
      (*(v108 + 16))(v157, v111, v102);
      v110 = sub_2281392EC();
      v112 = v108;
      v109 = v113;
      v114 = v111;
      v103 = v178;
      (*(v112 + 8))(v114, v102);
    }

    sub_227FCB7B8(v166, &qword_27D81E310, &qword_22813A7C0);
    v97(v103, v15);
    v115 = sub_227FCC340(v110, v109, &v187);

    *(v48 + 84) = v115;
    *(v48 + 92) = 2082;
    v116 = v170;
    v117 = sub_22813774C();
    if (v118)
    {
      v97(v116, v15);
      v119 = 0xE300000000000000;
      v120 = 7104878;
    }

    else
    {
      v182 = v117;
      v121 = sub_2281392EC();
      v122 = v116;
      v123 = v121;
      v119 = v124;
      v97(v122, v15);
      v120 = v123;
    }

    v125 = sub_227FCC340(v120, v119, &v187);

    *(v48 + 94) = v125;
    *(v48 + 102) = 2082;
    v126 = v167;
    v127 = sub_22813773C();
    if (v128)
    {
      v97(v126, v15);
      v129 = 0xE300000000000000;
      v130 = 7104878;
    }

    else
    {
      v182 = v127;
      v131 = sub_2281392EC();
      v129 = v132;
      v97(v126, v15);
      v130 = v131;
    }

    v133 = sub_227FCC340(v130, v129, &v187);

    *(v48 + 104) = v133;
    *(v48 + 112) = 2082;
    v134 = v171;
    v135 = sub_22813779C();
    if (v136)
    {
      v97(v134, v15);
      v137 = 0xE300000000000000;
      v138 = 7104878;
    }

    else
    {
      v182 = v135;
      v139 = sub_2281392EC();
      v140 = v134;
      v141 = v139;
      v137 = v142;
      v97(v140, v15);
      v138 = v141;
    }

    v143 = sub_227FCC340(v138, v137, &v187);

    *(v48 + 114) = v143;
    *(v48 + 122) = 2082;
    v144 = v172;
    v145 = sub_22813777C();
    if (v146)
    {
      v97(v144, v15);
      v147 = 0xE300000000000000;
    }

    else
    {
      v182 = v145;
      v87 = sub_2281392EC();
      v147 = v148;
      v97(v144, v15);
    }

    v149 = v169;
    v150 = sub_227FCC340(v87, v147, &v187);

    *(v48 + 124) = v150;
    v151 = v156;
    _os_log_impl(&dword_227FC3000, v156, v155, "\n--------------------------------------------------------------------------------\n# Inference details for request %s\n--------------------------------------------------------------------------------\nAdapter: %{public}s\nTokenizer: %{public}s\nBase Model: %{public}s\nDraft Model: %{public}s\nDevice Locale: %{public}s\nInference Locale: %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\n--------------------------------------------------------------------------------", v48, 0x84u);
    v152 = v154;
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v152, -1, -1);
    MEMORY[0x22AAB28A0](v48, -1, -1);

    return (*(v95 + 8))(v153, v149);
  }

  else
  {

    v61 = *(v40 + 8);
    v61(v44, v15);
    v61(v43, v15);
    v61(v167, v15);
    v61(v42, v15);
    v61(v178, v15);
    v61(v176, v15);
    (*(v168 + 8))(v38, v169);
    __swift_destroy_boxed_opaque_existential_1Tm_10(&v184);
    sub_2280B760C(v179, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v173, type metadata accessor for GMSModelInfo);
    sub_2280B760C(v174, type metadata accessor for GMSModelInfo);
    return sub_2280B760C(v175, type metadata accessor for GMSModelInfo);
  }
}

uint64_t sub_2280B718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v26 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v26 - v17;
  result = sub_228096454(v13, v10, a1);
  if (!v3)
  {
    v21 = result;
    v22 = v20;
    sub_2280B76DC(v13, v18);
    sub_2280B76DC(v10, v16);
    v23 = type metadata accessor for GMSSummarizationModelEngine.InternalSummarizationResult(0);
    v24 = v23[5];
    sub_2280B7EF0(a2, &a3[v24], type metadata accessor for GMSModelInfo);
    v25 = type metadata accessor for GMSModelInfo(0);
    (*(*(v25 - 8) + 56))(&a3[v24], 0, 1, v25);
    sub_2280B76DC(v18, &a3[v23[6]]);
    result = sub_2280B76DC(v16, &a3[v23[7]]);
    *a3 = v21;
    *(a3 + 1) = v22;
  }

  return result;
}

uint64_t sub_2280B7360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a4)
  {

    MEMORY[0x22AAB1970](a3, a4);
    MEMORY[0x22AAB1970](30240, 0xE200000000000000);

    return a1;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_2280B7418()
{
  sub_2280B760C(v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_configuration, type metadata accessor for SummarizationSession.Configuration);
  sub_2280B760C(v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_modelBundleIdentifier, type metadata accessor for ModelBundleIdentifier);
  sub_228084D78(v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory);
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sessionInfo));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner));
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model));

  return swift_deallocClassInstance();
}

uint64_t sub_2280B751C(uint64_t a1)
{
  result = type metadata accessor for SummarizationSession.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModelBundleIdentifier(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2280B760C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2280B768C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280B76DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  v1 = (type metadata accessor for SummarizationParameters(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v3 + 40));
  v5 = v1[11];
  v6 = sub_228137A9C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2280B7844(void (**a1)(char *, uint64_t), void (**a2)(char *, uint64_t), void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v61 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v60 = (&v55 - v11);
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - v12;
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2281386FC();
  v58 = *(v16 - 8);
  v17 = *(v58 + 48);
  if (v17(a1, 1, v16) == 1 && v17(a2, 1, v16) == 1)
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v18 = sub_22813882C();
    __swift_project_value_buffer(v18, qword_2813C8A20);
    v19 = sub_22813880C();
    v20 = sub_2281396CC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_13;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Input deny list and sanitizer passed; continuing summarization.";
LABEL_12:
    _os_log_impl(&dword_227FC3000, v19, v20, v22, v21, 2u);
    MEMORY[0x22AAB28A0](v21, -1, -1);
LABEL_13:

    return;
  }

  v56 = a1;
  v62 = v3;
  v23 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_sanitizerFactory;
  v25 = a3[3];
  v24 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v25);
  v26 = (*(*(v24 + 8) + 16))(v25);
  v28 = v27;
  v29 = a2;
  v31 = a3[3];
  v30 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v31);
  v32 = (*(*(v30 + 8) + 8))(v31);
  v55 = v23;
  v57 = v29;
  LOBYTE(v30) = sub_228021CA0(v26, v28, v32, v33);

  if (v30)
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v34 = sub_22813882C();
    __swift_project_value_buffer(v34, qword_2813C8A20);
    v19 = sub_22813880C();
    v20 = sub_2281396BC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_13;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Input failed deny list or safety check, but use case is configured to always run summarization.";
    goto LABEL_12;
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v35 = sub_22813882C();
  __swift_project_value_buffer(v35, qword_2813C8A20);
  v36 = sub_22813880C();
  v37 = sub_2281396BC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_227FC3000, v36, v37, "Input failed deny list or safety check; skipping summarization.", v38, 2u);
    MEMORY[0x22AAB28A0](v38, -1, -1);
  }

  v40 = a3[3];
  v39 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v40);
  v41 = (*(*(v39 + 8) + 16))(v40);
  v43 = v42;
  v45 = a3[3];
  v44 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v45);
  v46 = (*(*(v44 + 8) + 8))(v45);
  v47 = v62;
  sub_22805DD40(v41, v43, v46, v48, v15);

  if (v47)
  {

    v49 = 1;
  }

  else
  {
    v49 = sub_2280244DC(v15);
    sub_2280B760C(v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
  }

  v50 = v57;
  v51 = *(v58 + 56);
  v52 = v59;
  v51(v59, 1, 1, v16);
  sub_228099260(v50, v52, v49 & 1, a3);
  sub_227FCB7B8(v52, &qword_27D81E598, &qword_22813B300);
  v53 = v60;
  v51(v60, 1, 1, v16);
  v54 = v61;
  v51(v61, 1, 1, v16);
  sub_228099F40(0, v56, v50, v53, v54, a3);
  sub_227FCB7B8(v54, &qword_27D81E598, &qword_22813B300);
  sub_227FCB7B8(v53, &qword_27D81E598, &qword_22813B300);
}

uint64_t sub_2280B7E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280B7EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280B7F58(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SummarizationParameters(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v7 + v8) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v1 + v9);
  v12 = *(v1 + ((v10 + v8) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2280B8094;

  return sub_2280B03CC(a1, v1 + 16, v1 + v7, v11, v1 + v10, v12);
}

uint64_t sub_2280B8094()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2280B8188(uint64_t a1)
{
  v4 = *(type metadata accessor for SummarizationParameters(0) - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v5 + v7 + 40) & ~v5;
  v9 = *(v1 + 16);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2280B8658;

  return sub_2280B1A68(a1, v9, v1 + v6, v1 + v7, v1 + v8);
}

uint64_t sub_2280B82B4()
{
  v1 = *(type metadata accessor for SummarizationParameters(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_2280AFC1C((v0 + 16), v2);
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280B83BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8E0, &unk_22813C4F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280B842C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280B8494(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2280B8520(uint64_t a1)
{
  sub_2280B85EC(319, qword_2813C7DF0, type metadata accessor for GMSModelInfo);
  if (v1 <= 0x3F)
  {
    sub_2280B85EC(319, &qword_2813C4810, MEMORY[0x277D0DBB0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280B85EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22813977C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2280B866C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

uint64_t SKMailMessageThread.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[26] = a1;
  v3 = sub_22813716C();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = sub_228138E6C();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v5 = sub_22813899C();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v1;
  v2[39] = v6;
  v2[40] = v7;

  return MEMORY[0x2822009F8](sub_2280B88F8, 0, 0);
}

uint64_t sub_2280B88F8()
{
  v181 = v1;
  v149 = *(v1 + 320);
  v144 = *(v149 + 16);
  if (!v144)
  {
    v109 = swift_allocObject();
    *(v109 + 16) = 10;
    *(v109 + 24) = 0;
    *(v109 + 32) = 0;
    v110 = sub_227FF96D4(0, 0xD000000000000085, 0x8000000228147D30, 16, sub_2280BB254, v109);
    sub_227FDB3CC();
    swift_allocError();
    *v111 = 10;
    *(v111 + 8) = v110;
    swift_willThrow();
    goto LABEL_141;
  }

  v159 = 0;
  v2 = 0;
  v157 = 0;
  v158 = 0;
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v177 = (*(v1 + 264) + 8);
  v6 = MEMORY[0x277D4B3A8];
  v7 = MEMORY[0x277D4B3A0];
  v8 = MEMORY[0x277D4B3B0];
  v151 = *(v1 + 264);
  v143 = (*(v1 + 224) + 8);
  v175 = *(v1 + 240);
  v147 = *(v1 + 304);
  v145 = (v147 + 8);
  v146 = *(v1 + 208);
  *(v1 + 176) = MEMORY[0x277D84F90];
  v176 = *v6;
  v168 = *v7;
  v150 = *v8;
  v167 = v5;
  while (2)
  {
    if (v2 < *(v149 + 16))
    {
      v9 = *(v1 + 288);
      v10 = *(v1 + 256);
      (*(v147 + 16))(*(v1 + 312), *(v1 + 320) + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v2, *(v1 + 296));
      sub_22813894C();
      v165 = sub_228045C20();
      v12 = v11;
      v13 = *v177;
      (*v177)(v9, v10);
      v14 = *(v1 + 312);
      v166 = v12;
      if (v12)
      {
        v155 = v3;
        v156 = v4;
        v15 = sub_2281388AC();
        v16 = *(v15 + 16);
        v173 = v2;
        if (v16)
        {
          v17 = v15 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v18 = *(v151 + 72);
          v19 = *(v151 + 16);
          v20 = MEMORY[0x277D84F90];
          v19(*(v1 + 280), v17, *(v1 + 256));
          while (1)
          {
            v21 = sub_228138E5C();
            if (v22)
            {
              v23 = v21;
              v24 = v22;
              v25 = HIBYTE(v22) & 0xF;
              if ((v22 & 0x2000000000000000) == 0)
              {
                v25 = v21 & 0xFFFFFFFFFFFFLL;
              }

              if (v25)
              {
                v13(*(v1 + 280), *(v1 + 256));
                goto LABEL_25;
              }
            }

            v26 = v20;
            v27 = *(v1 + 248);
            sub_228138E2C();
            v28 = sub_228138E3C();
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(v27, 1, v28) == 1)
            {
              goto LABEL_17;
            }

            v30 = *(v1 + 240);
            sub_228045760(*(v1 + 248), v30);
            v31 = (*(v29 + 88))(v30, v28);
            if (v31 != v176 && v31 != v168 && v31 != v150)
            {
              break;
            }

            v32 = *(v1 + 240);
            v13(*(v1 + 280), *(v1 + 256));
            (*(v29 + 96))(v32, v28);
            v23 = *v32;
            v24 = *(v175 + 8);
LABEL_22:
            sub_2280BB0A0(*(v1 + 248));
            v33 = HIBYTE(v24) & 0xF;
            if ((v24 & 0x2000000000000000) == 0)
            {
              v33 = v23 & 0xFFFFFFFFFFFFLL;
            }

            v20 = v26;
            if (!v33)
            {

              goto LABEL_8;
            }

LABEL_25:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_2281338C0(0, *(v20 + 2) + 1, 1, v20);
            }

            v35 = *(v20 + 2);
            v34 = *(v20 + 3);
            v36 = v20;
            if (v35 >= v34 >> 1)
            {
              v36 = sub_2281338C0((v34 > 1), v35 + 1, 1, v20);
            }

            *(v36 + 2) = v35 + 1;
            v20 = v36;
            v37 = &v36[16 * v35];
            *(v37 + 4) = v23;
            *(v37 + 5) = v24;
LABEL_8:
            v17 += v18;
            if (!--v16)
            {

              goto LABEL_33;
            }

            v19(*(v1 + 280), v17, *(v1 + 256));
          }

          (*(v29 + 8))(*(v1 + 240), v28);
LABEL_17:
          v13(*(v1 + 280), *(v1 + 256));
          v23 = 0;
          v24 = 0xE000000000000000;
          goto LABEL_22;
        }

        v20 = MEMORY[0x277D84F90];
LABEL_33:
        v38 = *(v20 + 2);
        if (v38 >= 5)
        {
          v38 = 5;
        }

        *(v1 + 144) = v20;
        *(v1 + 152) = v20 + 32;
        *(v1 + 160) = 0;
        *(v1 + 168) = (2 * v38) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB00, &qword_22813F970);
        sub_2280BB108(&qword_2813C45D0, &qword_27D81EB00, &qword_22813F970, MEMORY[0x277D83FA0]);
        v164 = sub_22813925C();
        v40 = v39;
        v41 = sub_2281388AC();
        sub_22813894C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_228133B70(0, v41[2] + 1, 1, v41);
        }

        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_228133B70((v42 > 1), v43 + 1, 1, v41);
        }

        v44 = *(v1 + 272);
        v45 = *(v1 + 256);
        v41[2] = v43 + 1;
        (*(v151 + 32))(v41 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v43, v44, v45);

        v46 = sub_22813895C();
        v14 = *(v1 + 312);
        if (v47)
        {
          v162 = v46;
          v163 = v47;
          v48 = sub_22813893C();
          if (v49)
          {
            v50 = v49;
          }

          else
          {
            v48 = 0;
            v50 = 0xE000000000000000;
          }

          v171 = sub_2280A7954(v48, v50, v146 + 160, *(v146 + 208));
          v172 = v51;
          v52 = *(v1 + 208);

          v53 = sub_2281388BC();

          v169 = sub_22804275C(v53, v165, v166);
          v170 = v54;

          v161 = v40;
          if (sub_2280454D4(v52))
          {
            v55 = objc_opt_self();

            if (qword_2813C4620 != -1)
            {
              swift_once();
            }

            if (byte_2813C4629 == 1)
            {
              v56 = &off_27D81EDB0;
              if (qword_27D81E2A0 != -1)
              {
                swift_once();
                v56 = &off_27D81EDB0;
              }
            }

            else
            {
              v56 = &qword_2813C76F8;
              if (qword_2813C76F0 != -1)
              {
                swift_once();
                v56 = &qword_2813C76F8;
              }
            }

            v59 = *(*v56 + 440);
            v60 = *(*v56 + 448);
            v61 = *(*v56 + 2208);

            if (qword_2813C4630 != -1)
            {
              swift_once();
            }

            if (byte_2813C4638 == 1)
            {
              v60(v179, v61);

              v59 = LOBYTE(v179[0]);
            }

            else
            {
            }

            v40 = v161;
            v160 = 2;
            if (v59)
            {
              v58 = 4;
            }

            else
            {
              v58 = 2;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22813B030;
            *(inited + 32) = v171;
            *(inited + 40) = v172;
            *(inited + 48) = v169;
            *(inited + 56) = v170;

            sub_227FED308(inited);
          }

          else
          {
            if (sub_22813896C())
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
              v57 = swift_initStackObject();
              *(v57 + 16) = xmmword_22813B030;
              *(v57 + 32) = v171;
              *(v57 + 40) = v172;
              *(v57 + 48) = v169;
              *(v57 + 56) = v170;

              sub_227FED308(v57);
            }

            v160 = sub_22813896C() & 1;
            v58 = 1;
          }

          v63 = HIBYTE(v166) & 0xF;
          if ((v166 & 0x2000000000000000) == 0)
          {
            v63 = v165 & 0xFFFFFFFFFFFFLL;
          }

          if (v63)
          {
            strcpy(v179, "Sender: ");
            BYTE1(v179[1]) = 0;
            WORD1(v179[1]) = 0;
            HIDWORD(v179[1]) = -402653184;
            MEMORY[0x22AAB1970](v165, v166);
            v64 = v179[1];
            v152 = v179[0];
          }

          else
          {
            v152 = 0;
            v64 = 0xE000000000000000;
          }

          v65 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v65 = v164 & 0xFFFFFFFFFFFFLL;
          }

          if (v65)
          {
            strcpy(v179, "Recipients: ");
            BYTE5(v179[1]) = 0;
            HIWORD(v179[1]) = -5120;
            MEMORY[0x22AAB1970]();
            v66 = v179[1];
            v148 = v179[0];
          }

          else
          {
            v148 = 0;
            v66 = 0xE000000000000000;
          }

          v67 = HIBYTE(v163) & 0xF;
          if ((v163 & 0x2000000000000000) == 0)
          {
            v67 = v162 & 0xFFFFFFFFFFFFLL;
          }

          if (v67)
          {
            strcpy(v179, "Subject: ");
            WORD1(v179[1]) = 0;
            HIDWORD(v179[1]) = -385875968;
            MEMORY[0x22AAB1970]();
            v3 = v179[0];
            v68 = v179[1];
          }

          else
          {
            v3 = 0;
            v68 = 0xE000000000000000;
          }

          v179[0] = 0x203A79646F42;
          v179[1] = 0xE600000000000000;
          MEMORY[0x22AAB1970](v171, v172);
          v70 = v179[0];
          v69 = v179[1];
          if (v58 > 2)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
            v72 = swift_allocObject();
            *(v72 + 16) = xmmword_22813A4B0;
            *(v72 + 32) = v171;
            *(v72 + 40) = v172;
          }

          else
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
            v71 = swift_allocObject();
            v72 = v71;
            *(v71 + 16) = xmmword_22813B480;
            *(v71 + 32) = v152;
            *(v71 + 40) = v64;
            if (v58 == 1)
            {
              *(v71 + 48) = v148;
              *(v71 + 56) = v66;
            }

            else
            {
              *(v71 + 48) = v3;
              *(v71 + 56) = v68;
            }

            *(v71 + 64) = v70;
            *(v71 + 72) = v69;
          }

          if (v160 != 2)
          {
            v73 = objc_opt_self();

            if (qword_2813C4620 != -1)
            {
              swift_once();
            }

            if (byte_2813C4629 == 1)
            {
              v74 = &off_27D81EDB0;
              if (qword_27D81E2A0 != -1)
              {
                swift_once();
                v74 = &off_27D81EDB0;
              }
            }

            else
            {
              v74 = &qword_2813C76F8;
              if (qword_2813C76F0 != -1)
              {
                swift_once();
                v74 = &qword_2813C76F8;
              }
            }

            v75 = *(*v74 + 640);
            v153 = *(*v74 + 648);
            v3 = *(*v74 + 2208);

            if (qword_2813C4630 != -1)
            {
              swift_once();
            }

            if (byte_2813C4638 == 1)
            {
              v153(v179, v3);

              v75 = v179[0];
              if (!v179[0])
              {
                goto LABEL_109;
              }
            }

            else
            {

              if (!v75)
              {
                goto LABEL_109;
              }
            }

            if (qword_2813C8758 != -1)
            {
              swift_once();
            }

            v76 = *(v1 + 232);
            v77 = *(v1 + 216);
            sub_228139B6C();
            v78 = swift_task_alloc();
            *(v78 + 16) = v76;
            v79 = sub_2280B866C(sub_2280BB150, v78, v75);

            (*v143)(v76, v77);
            if (v79)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
              v80 = swift_allocObject();
              *(v80 + 16) = xmmword_22813A4B0;
              strcpy(v179, "IsUnread: ");
              BYTE3(v179[1]) = 0;
              HIDWORD(v179[1]) = -369098752;
              if (v160)
              {
                v81 = 1702195828;
              }

              else
              {
                v81 = 0x65736C6166;
              }

              if (v160)
              {
                v82 = 0xE400000000000000;
              }

              else
              {
                v82 = 0xE500000000000000;
              }

              MEMORY[0x22AAB1970](v81, v82);

              v83 = v179[1];
              *(v80 + 32) = v179[0];
              *(v80 + 40) = v83;
              v179[0] = v80;
              sub_227FED308(v72);
              v72 = v179[0];
            }
          }

LABEL_109:
          v84 = HIBYTE(v170) & 0xF;
          if ((v170 & 0x2000000000000000) == 0)
          {
            v84 = v169 & 0xFFFFFFFFFFFFLL;
          }

          if (v84)
          {
            v179[0] = 10;
            v179[1] = 0xE100000000000000;
            MEMORY[0x22AAB1970]();
            v85 = v179[0];
            v4 = v179[1];
          }

          else
          {
            v85 = 0;
            v4 = 0xE000000000000000;
          }

          v86 = 0;
          v174 = v173 + 1;
          v87 = *(v72 + 16);
          v88 = v72 + 40;
          v89 = MEMORY[0x277D84F90];
LABEL_115:
          v90 = (v88 + 16 * v86);
          while (v87 != v86)
          {
            if (v86 >= *(v72 + 16))
            {
              __break(1u);
LABEL_145:
              v121 = *(v88 + 208);
              if (v121)
              {
                KeyPath = swift_getKeyPath(byte_22813F978);
                os_unfair_lock_lock((v121 + 16));
                v123 = MEMORY[0x277D84A28];
                v180 = MEMORY[0x277D84A28];
                v179[0] = v159;

                sub_2280449E4(v179, KeyPath, (v121 + 24));
                os_unfair_lock_unlock((v121 + 16));

                v124 = swift_getKeyPath(byte_22813F9A0);
                os_unfair_lock_lock((v121 + 16));
                v180 = v123;
                v179[0] = v158;

                sub_2280449E4(v179, v124, (v121 + 24));
                os_unfair_lock_unlock((v121 + 16));

                v125 = swift_getKeyPath(byte_22813F9C8);
                os_unfair_lock_lock((v121 + 16));
                v180 = v123;
                v179[0] = v157;

                sub_2280449E4(v179, v125, (v121 + 24));
                os_unfair_lock_unlock((v121 + 16));

                v126 = swift_getKeyPath(byte_22813F9F0);
                os_unfair_lock_lock((v121 + 16));
                v180 = v123;
                v179[0] = v3;

                sub_2280449E4(v179, v126, (v121 + 24));
                os_unfair_lock_unlock((v121 + 16));

                v127 = swift_getKeyPath(byte_22813FA18);
                os_unfair_lock_lock((v121 + 16));
                v180 = v123;
                v179[0] = v4;

                sub_2280449E4(v179, v127, (v121 + 24));
                os_unfair_lock_unlock((v121 + 16));
              }

              if ((sub_2280454D4(*(v1 + 208)) & 1) == 0)
              {

                goto LABEL_154;
              }

              v0 = objc_opt_self();

              if (qword_2813C4620 != -1)
              {
                goto LABEL_175;
              }

              goto LABEL_149;
            }

            v91 = *(v90 - 1);
            v3 = *v90;
            v90 += 2;
            ++v86;
            v92 = HIBYTE(v3) & 0xF;
            if ((v3 & 0x2000000000000000) == 0)
            {
              v92 = v91 & 0xFFFFFFFFFFFFLL;
            }

            if (v92)
            {
              v154 = v4;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v179[0] = v89;
              v94 = v85;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_228043AD4(0, *(v89 + 16) + 1, 1);
                v89 = v179[0];
              }

              v96 = *(v89 + 16);
              v95 = *(v89 + 24);
              v97 = v96 + 1;
              if (v96 >= v95 >> 1)
              {
                sub_228043AD4((v95 > 1), v96 + 1, 1);
                v97 = v96 + 1;
                v89 = v179[0];
              }

              *(v89 + 16) = v97;
              v98 = v89 + 16 * v96;
              *(v98 + 32) = v91;
              *(v98 + 40) = v3;
              v85 = v94;
              v4 = v154;
              goto LABEL_115;
            }
          }

          *(v1 + 184) = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
          sub_2280BB108(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
          v99 = sub_22813925C();
          v101 = v100;

          v179[0] = v99;
          v179[1] = v101;

          MEMORY[0x22AAB1970](v85, v4);

          v102 = v179[0];
          v103 = v179[1];
          v0 = sub_22813936C();

          if (__OFADD__(v159, v0))
          {
            goto LABEL_170;
          }

          v159 += v0;
          v0 = sub_22813936C();

          if (__OFADD__(v158, v0))
          {
            goto LABEL_171;
          }

          v158 += v0;
          v0 = sub_22813936C();

          if (__OFADD__(v157, v0))
          {
            goto LABEL_172;
          }

          v157 += v0;
          v0 = sub_22813936C();

          v3 = v155 + v0;
          if (!__OFADD__(v155, v0))
          {
            v0 = sub_22813936C();

            v4 = v156 + v0;
            if (__OFADD__(v156, v0))
            {
              goto LABEL_174;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v167 = sub_2281338C0(0, *(v167 + 2) + 1, 1, v167);
            }

            v105 = *(v167 + 2);
            v104 = *(v167 + 3);
            v0 = v105 + 1;
            if (v105 >= v104 >> 1)
            {
              v167 = sub_2281338C0((v104 > 1), v105 + 1, 1, v167);
            }

            *(v1 + 328) = v167;
            v106 = *(v1 + 312);
            v107 = *(v1 + 296);

            (*v145)(v106, v107);
            *(v167 + 2) = v0;
            v108 = &v167[16 * v105];
            *(v108 + 4) = v102;
            *(v108 + 5) = v103;
            v2 = v174;
            if (v174 != v144)
            {
              continue;
            }

            v88 = v146;
            sub_2280A8554(*(v1 + 176), (v146 + 160));
            goto LABEL_145;
          }

          goto LABEL_173;
        }

        v112 = *(v1 + 296);

        v116 = swift_allocObject();
        *(v116 + 16) = 13;
        *(v116 + 24) = 0;
        *(v116 + 32) = 0;
        v117 = sub_227FF96D4(0, 0xD000000000000085, 0x8000000228147D30, 46, sub_2280BB250, v116);
        sub_227FDB3CC();
        swift_allocError();
        *v118 = 13;
        *(v118 + 8) = v117;
        swift_willThrow();
      }

      else
      {
        v112 = *(v1 + 296);

        v113 = swift_allocObject();
        *(v113 + 16) = 12;
        *(v113 + 24) = 0;
        *(v113 + 32) = 0;
        v114 = sub_227FF96D4(0, 0xD000000000000085, 0x8000000228147D30, 32, sub_2280BAB0C, v113);
        sub_227FDB3CC();
        swift_allocError();
        *v115 = 12;
        *(v115 + 8) = v114;
        swift_willThrow();
      }

      (*v145)(v14, v112);
LABEL_141:

      v119 = *(v1 + 8);

      return v119();
    }

    break;
  }

  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  swift_once();
LABEL_149:
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v128 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v128 = &qword_2813C76F8;
  }

  v137 = *(*v128 + 440);
  v138 = *(*v128 + 448);
  v139 = *(*v128 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v138(v179, v139);

    if (v179[0])
    {
      goto LABEL_166;
    }
  }

  else
  {

    if (v137)
    {
LABEL_166:
      *(v1 + 392) = 1;
      v140 = *(v1 + 208);
      v141 = swift_task_alloc();
      *(v1 + 368) = v141;
      *v141 = v1;
      v141[1] = sub_2280BA694;
      v142 = *(v1 + 328);

      return sub_2280D8D74(v142, v140 + 160, 0);
    }
  }

LABEL_154:
  v129 = *(v1 + 208);
  strcpy(v179, "Email #");
  v179[1] = 0xE700000000000000;
  *(v1 + 192) = *(v167 + 2) + 1;
  v130 = sub_22813998C();
  MEMORY[0x22AAB1970](v130);

  MEMORY[0x22AAB1970](2618, 0xE200000000000000);
  v131 = v179[0];
  v132 = v179[1];
  *(v1 + 336) = v179[1];
  v133 = v129[3];
  v134 = v129[4];
  __swift_project_boxed_opaque_existential_1(v129, v133);
  v135 = *(v134 + 8);
  v178 = (*(v135 + 16) + **(v135 + 16));
  v136 = swift_task_alloc();
  *(v1 + 344) = v136;
  *v136 = v1;
  v136[1] = sub_2280BA3C8;

  return v178(v131, v132, v133, v135);
}

uint64_t sub_2280BA3C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = sub_2280BA5C8;
  }

  else
  {
    *(v4 + 360) = a1;
    v5 = sub_2280BA4F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280BA4F0()
{

  v2 = *(v0 + 360);
  *(v0 + 392) = 0;
  v3 = *(*(v0 + 328) + 16);
  v4 = v2 * v3;
  if ((v2 * v3) >> 64 == (v2 * v3) >> 63)
  {
    v5 = *(v0 + 208);
    v6 = swift_task_alloc();
    *(v0 + 368) = v6;
    *v6 = v0;
    v6[1] = sub_2280BA694;
    v7 = *(v0 + 328);

    return sub_2280D8D74(v7, v5 + 160, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2280BA5C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280BA694(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_2280BAA48;
  }

  else
  {

    v4 = sub_2280BA7B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2280BA7B0()
{
  result = *(v0 + 376);
  v17 = *(result + 16);
  if (v17)
  {
    v2 = 0;
    v3 = (result + 40);
    while (v2 < *(result + 16))
    {
      v8 = result;
      v10 = *(v3 - 1);
      v9 = *v3;
      v11 = v2 + 1;
      v12 = *(v0 + 320);
      if (*(v0 + 392) == 1)
      {
        v13 = *(v12 + 16) - 1;
        if (v2 >= v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = 10;
        }

        if (v2 >= v13)
        {
          v15 = 0xE000000000000000;
        }

        else
        {
          v15 = 0xE100000000000000;
        }

        v18 = *(v3 - 1);
        v19 = *v3;
        swift_bridgeObjectRetain_n();
        MEMORY[0x22AAB1970](v14, v15);
      }

      else
      {
        v18 = 0x23206C69616D45;
        v19 = 0xE700000000000000;
        *(v0 + 200) = v11;

        v4 = sub_22813998C();
        MEMORY[0x22AAB1970](v4);

        MEMORY[0x22AAB1970](2618, 0xE200000000000000);

        MEMORY[0x22AAB1970](v10, v9);

        v5 = *(v12 + 16) - 1;
        if (v2 >= v5)
        {
          v6 = 0;
        }

        else
        {
          v6 = 10;
        }

        if (v2 >= v5)
        {
          v7 = 0xE000000000000000;
        }

        else
        {
          v7 = 0xE100000000000000;
        }

        MEMORY[0x22AAB1970](v6, v7);
      }

      MEMORY[0x22AAB1970](v18, v19);

      v3 += 2;
      v2 = v11;
      result = v8;
      if (v17 == v11)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    v16 = *(v0 + 8);

    return v16(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_2280BAA48()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SKMailMessageThread.preprocessForLanguageCheck()()
{
  v2 = sub_22813899C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = *v0;
  v10 = *(*v0 + 16);
  if (v10)
  {
    v42 = v1;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v46 = v12;
    v12(&v38 - v7, v13, v2);
    v41 = v8;
    v14 = sub_22813895C();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v39 = v15;
    v40 = v16;
    v45 = *(v11 + 56);
    v47 = (v11 - 8);
    v17 = MEMORY[0x277D84F90];
    v43 = v11;
    v44 = v2;
    do
    {
      v46(v6, v13, v2);
      v19 = sub_22813893C();
      v21 = v20;
      v22 = *v47;
      (*v47)(v6, v2);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2281338C0(0, *(v17 + 2) + 1, 1, v17);
        }

        v24 = *(v17 + 2);
        v23 = *(v17 + 3);
        if (v24 >= v23 >> 1)
        {
          v17 = sub_2281338C0((v23 > 1), v24 + 1, 1, v17);
        }

        *(v17 + 2) = v24 + 1;
        v18 = &v17[16 * v24];
        *(v18 + 4) = v19;
        *(v18 + 5) = v21;
        v2 = v44;
      }

      v13 += v45;
      --v10;
    }

    while (v10);
    if (v39)
    {
      v25 = v39;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v48 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
    sub_2280BB108(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
    v26 = sub_22813925C();
    v28 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22813B030;
    *(inited + 32) = v40;
    *(inited + 40) = v25;
    *(inited + 48) = v26;
    *(inited + 56) = v28;
    v30 = sub_228045C28();
    v6 = v31;
    swift_setDeallocating();
    swift_arrayDestroy();
    v22(v41, v2);
  }

  else
  {
    v32 = swift_allocObject();
    v30 = 10;
    *(v32 + 16) = 10;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    v33 = sub_227FF96D4(0, 0xD000000000000085, 0x8000000228147D30, 145, sub_2280BB258, v32);
    sub_227FDB3CC();
    swift_allocError();
    *v34 = 10;
    *(v34 + 8) = v33;
    swift_willThrow();
  }

  v35 = v30;
  v36 = v6;
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

uint64_t sub_2280BAEE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280BAF78;

  return SKMailMessageThread.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280BAF78(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2280BB0A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2280BB108(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm_10()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2280BB1BC(uint64_t *a1, int a2)
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

uint64_t sub_2280BB204(uint64_t result, int a2, int a3)
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

uint64_t sub_2280BB274(uint64_t a1, uint64_t a2)
{
  v4 = sub_22813910C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = MEMORY[0x277D42EC0];
  v13[0] = a1;
  v13[1] = a2;

  v8 = MEMORY[0x277D42E18];
  sub_2281390FC();
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF40, &unk_22813FAE0);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22813A4B0;
  (*(v5 + 16))(v10 + v9, v7, v4);
  MEMORY[0x22AAB1690](v10, v4, v8);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2280BB42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v5 = sub_22813905C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[8] = v6;
  v4[9] = v7;

  return MEMORY[0x2822009F8](sub_2280BB4F4, 0, 0);
}

uint64_t sub_2280BB4F4()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_22813906C();

  v0[2] = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = sub_2280BBB6C(&qword_2813C8710, MEMORY[0x277D71A38]);
  *v5 = v0;
  v5[1] = sub_2280BB614;
  v7 = v0[5];

  return MEMORY[0x282165AB8](v0 + 2, v7, v6);
}

uint64_t sub_2280BB614(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_2280BBBC8;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_2280BBBCC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280BB73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = a3;
  v4[3] = a1;
  v5 = sub_22813905C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[8] = v6;
  v4[9] = v7;

  return MEMORY[0x2822009F8](sub_2280BB804, 0, 0);
}

uint64_t sub_2280BB804()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_22813906C();

  v0[2] = v1;
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = sub_2280BBB6C(&qword_2813C8718, MEMORY[0x277D71A30]);
  *v5 = v0;
  v5[1] = sub_2280BB924;
  v7 = v0[5];

  return MEMORY[0x282165AC0](v0 + 2, v7, v6);
}

uint64_t sub_2280BB924(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_2280BBAD0;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_2280BBA4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280BBA4C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];
  v2 = v0[12];

  return v1(v2);
}

uint64_t sub_2280BBAD0()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2280BBB6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22813755C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2280BBBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2280BBC34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SKTextMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_228138AAC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SKTextMessage.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_22813716C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v4 = sub_228136CDC();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v5 = sub_228138E6C();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280BBE8C, 0, 0);
}

uint64_t sub_2280BBE8C()
{
  v169 = v0;
  v1 = v0;
  v2 = v0[31];
  v3 = v1[28];
  v4 = v1[29];
  sub_228138A7C();
  v5 = sub_228041784(v2);
  v7 = v6;
  (*(v4 + 8))(v2, v3);
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_2280A88EC(v8, v9);
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  v157 = v10;
  v158 = v12;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v163 = v1;
  if (!v13)
  {
    v47 = objc_opt_self();
    v48 = off_2785F1000;

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
LABEL_145:
        swift_once();
      }

      v49 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v49 = &qword_2813C76F8;
    }

    v66 = *(*v49 + 1648);
    v67 = *(*v49 + 1656);
    v68 = *(*v49 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      v67(v167, v68);

      v1 = v163;
      if (v167[0])
      {
        goto LABEL_10;
      }
    }

    else
    {

      v1 = v163;
      if (v66)
      {
        goto LABEL_10;
      }
    }

    v62 = swift_allocObject();
    v63 = 12;
    *(v62 + 16) = 12;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    v64 = sub_2280C0DA4;
    v65 = 25;
    goto LABEL_76;
  }

LABEL_10:
  v14 = *(sub_2281389EC() + 16);

  if (v14)
  {
    goto LABEL_11;
  }

  v50 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v51 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v51 = &qword_2813C76F8;
  }

  v69 = *(*v51 + 1648);
  v70 = *(*v51 + 1656);
  v71 = *(*v51 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v70(v167, v71);

    v1 = v163;
    if ((v167[0] & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  else
  {

    v1 = v163;
    if (!v69)
    {
LABEL_75:

      v62 = swift_allocObject();
      v63 = 11;
      *(v62 + 16) = 11;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0;
      v64 = sub_2280C0DA0;
      v65 = 30;
      goto LABEL_76;
    }
  }

LABEL_11:
  v15 = v1[21];
  v16 = sub_2281389EC();
  v17 = swift_task_alloc();
  *(v17 + 16) = v15;
  v18 = sub_2280403DC(sub_2280C0A3C, v17, v16);

  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v1[26];
    v166 = MEMORY[0x277D84F90];
    sub_228043AD4(0, v19, 0);
    v21 = 0;
    v22 = v166;
    v156 = v18;
    v160 = v19;
    v161 = v18 + 32;
    v159 = (v20 + 8);
    while (1)
    {
      v23 = (v161 + 16 * v21);
      v25 = *v23;
      v24 = v23[1];

      v26 = sub_22813936C();
      if (v26)
      {
        v27 = v26;
        v167[0] = MEMORY[0x277D84F90];
        sub_228043D00(0, v26 & ~(v26 >> 63), 0);
        if (v27 < 0)
        {
          __break(1u);
LABEL_97:
          v47 = v155;
          goto LABEL_99;
        }

        v28 = v167[0];
        do
        {
          v29 = sub_22813945C();
          v31 = v30;
          if (sub_2281036C8(v29, v30))
          {

            v31 = 0xE100000000000000;
            v29 = 32;
          }

          v167[0] = v28;
          v33 = *(v28 + 16);
          v32 = *(v28 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_228043D00((v32 > 1), v33 + 1, 1);
            v28 = v167[0];
          }

          *(v28 + 16) = v33 + 1;
          v34 = v28 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          sub_22813937C();
          --v27;
        }

        while (v27);
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

      v35 = v163[27];
      v36 = v163[25];
      v163[18] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF18, &qword_228141340);
      sub_2280C0BC8(&qword_2813C4688, &qword_27D81EF18, &qword_228141340, MEMORY[0x277D83970]);
      v163[16] = sub_22813946C();
      v163[17] = v37;
      sub_228136C8C();
      sub_227FDB420();
      v38 = sub_2281397AC();
      v40 = v39;
      (*v159)(v35, v36);

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v42 = v38;
      }

      else
      {
        v42 = v25;
      }

      if (v41)
      {
        v43 = v40;
      }

      else
      {
        v43 = v24;
      }

      v45 = *(v166 + 16);
      v44 = *(v166 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_228043AD4((v44 > 1), v45 + 1, 1);
      }

      ++v21;
      *(v166 + 16) = v45 + 1;
      v46 = v166 + 16 * v45;
      *(v46 + 32) = v42;
      *(v46 + 40) = v43;
      if (v21 == v160)
      {

        v1 = v163;
        goto LABEL_47;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_47:
  v52 = sub_2281389EC();
  sub_228138A7C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v52 = sub_228133B70(0, v52[2] + 1, 1, v52);
  }

  v54 = v52[2];
  v53 = v52[3];
  if (v54 >= v53 >> 1)
  {
    v52 = sub_228133B70((v53 > 1), v54 + 1, 1, v52);
  }

  v56 = v1[29];
  v55 = v1[30];
  v57 = v1[28];
  v52[2] = v54 + 1;
  (*(v56 + 32))(v52 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v54, v55, v57);
  v58 = sub_228138A6C();
  if (v59)
  {
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0xE000000000000000;
  }

  v61 = sub_2280A8A4C(v58, v60);

  if (v61)
  {

    v62 = swift_allocObject();
    v63 = 6;
    *(v62 + 16) = 6;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    v64 = sub_2280C0C30;
    v65 = 41;
LABEL_76:
    v72 = sub_227FF96D4(0, 0xD00000000000007FLL, 0x8000000228147DC0, v65, v64, v62);
    sub_227FDB3CC();
    swift_allocError();
    *v73 = v63;
    *(v73 + 8) = v72;
    swift_willThrow();

    v74 = v1[1];

    return v74();
  }

  v76 = v1[20];
  v77 = sub_228138A6C();
  if (v78)
  {
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0xE000000000000000;
  }

  v80 = *(v76 + 208);
  v81 = sub_2280A7954(v77, v79, v76 + 160, v80);
  v83 = v82;
  v84 = v81;

  v156 = v80;
  v162 = sub_2280A8BD4(v84, v83);
  v86 = v85;

  v87 = sub_2281389FC();
  v160 = v76;
  v89 = sub_228041BA8(v87, v157, v158, v88);
  v91 = v90;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v162;
  *(inited + 40) = v86;
  *(inited + 48) = v89;
  *(inited + 56) = v91;

  sub_2280A8554(inited, (v160 + 160));
  swift_setDeallocating();
  swift_arrayDestroy();
  v93 = v158;
  v94 = sub_2280C0A78(v157, v158, v162, v86, v89, v91);
  v153 = v95;
  v154 = v94;
  v1[32] = v95;
  v96 = swift_initStackObject();
  *(v96 + 16) = xmmword_22813A4B0;
  *(v96 + 32) = v157;
  *(v96 + 40) = v158;
  v167[0] = v96;

  sub_227FED308(v22);
  v97 = *(v167[0] + 16);
  if (v97)
  {
    v98 = 0;
    v99 = v167[0] + 40;
    v47 = MEMORY[0x277D84F90];
    v152 = v167[0] + 40;
    v164 = *(v167[0] + 16);
    do
    {
      v155 = v47;
      v100 = (v99 + 16 * v98);
      while (1)
      {
        if (v98 >= v97)
        {
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v101 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_147;
        }

        v102 = *(v100 - 1);
        v103 = *v100;
        v93 = sub_2281392FC();
        v22 = v104;

        v47 = sub_2280BD990(v167, v93, v22);

        if (v47)
        {
          break;
        }

        ++v98;
        v100 += 2;
        v97 = v164;
        if (v101 == v164)
        {
          goto LABEL_97;
        }
      }

      v47 = v155;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_228043AD4(0, *(v155 + 16) + 1, 1);
        v47 = v155;
      }

      ++v98;
      v106 = *(v47 + 16);
      v105 = *(v47 + 24);
      v93 = (v106 + 1);
      if (v106 >= v105 >> 1)
      {
        sub_228043AD4((v105 > 1), v106 + 1, 1);
        v47 = v155;
      }

      *(v47 + 16) = v93;
      v107 = v47 + 16 * v106;
      *(v107 + 32) = v102;
      *(v107 + 40) = v103;
      v97 = v164;
      v99 = v152;
    }

    while (v101 != v164);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

LABEL_99:

  v108 = 0;
  v109 = *(v47 + 16);
  v48 = (v47 + 40);
  v110 = MEMORY[0x277D84F90];
LABEL_100:
  v111 = &v48[2 * v108];
  while (v109 != v108)
  {
    if (v108 >= *(v47 + 16))
    {
      __break(1u);
      goto LABEL_145;
    }

    v113 = *(v111 - 1);
    v112 = *v111;
    v111 += 2;
    ++v108;
    v114 = (v112 >> 56) & 0xF;
    if ((v112 & 0x2000000000000000) == 0)
    {
      v114 = v113 & 0xFFFFFFFFFFFFLL;
    }

    if (v114)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v167[0] = v110;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_228043AD4(0, *(v110 + 16) + 1, 1);
        v110 = v167[0];
      }

      v117 = *(v110 + 16);
      v116 = *(v110 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_228043AD4((v116 > 1), v117 + 1, 1);
        v110 = v167[0];
      }

      *(v110 + 16) = v117 + 1;
      v118 = v110 + 16 * v117;
      *(v118 + 32) = v113;
      *(v118 + 40) = v112;
      goto LABEL_100;
    }
  }

  v22 = v156;
  if (*(v110 + 16) >= 6uLL)
  {
    sub_2280C0964(v110, v110 + 32, 0, 0xBuLL);
    v120 = v119;

    v110 = v120;
  }

  v163[19] = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_2280C0BC8(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
  v121 = sub_22813925C();
  v123 = v122;

  v124 = HIBYTE(v123) & 0xF;
  if ((v123 & 0x2000000000000000) == 0)
  {
    v124 = v121 & 0xFFFFFFFFFFFFLL;
  }

  if (v124)
  {
    v167[0] = 0;
    v167[1] = 0xE000000000000000;
    sub_22813988C();

    strcpy(v167, "Participants: ");
    HIBYTE(v167[1]) = -18;
    MEMORY[0x22AAB1970](v121, v123);

    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    v97 = v167[0];
    v52 = v167[1];
  }

  else
  {

    v97 = 0;
    v52 = 0xE000000000000000;
  }

  v47 = objc_opt_self();
  v93 = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
LABEL_148:
    swift_once();
  }

  v165 = v97;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v125 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v125 = &qword_2813C76F8;
  }

  v126 = *(*v125 + 680);
  v127 = *(*v125 + 688);
  v128 = *(*v125 + 2208);

  v129 = v93[422];

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v127(v167, v128);

    v126 = v167[0];
  }

  else
  {
  }

  v130 = v163;
  if (!v126)
  {
    v136 = v165;
    goto LABEL_137;
  }

  if (qword_2813C8758 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v132 = v130[23];
    v131 = v130[24];
    v133 = v130[22];
    sub_228139B6C();
    v134 = swift_task_alloc();
    *(v134 + 16) = v131;
    v135 = sub_2280B866C(sub_2280C0C10, v134, v126);

    (*(v132 + 8))(v131, v133);
    if (v135)
    {

      v136 = 0;
      v52 = 0xE000000000000000;
      v130 = v163;
    }

    else
    {
      v130 = v163;
      v136 = v165;
    }

LABEL_137:
    v130[33] = v136;
    v130[34] = v52;
    if (v22)
    {
      v137 = *(sub_228138A8C() + 16);

      v138 = v137 != 0;
      KeyPath = swift_getKeyPath(asc_22813FB50);
      os_unfair_lock_lock((v22 + 16));
      v168 = MEMORY[0x277D839B0];
      LOBYTE(v167[0]) = v138;

      sub_2280449FC(v167, KeyPath, (v22 + 24));
      os_unfair_lock_unlock((v22 + 16));

      v140 = sub_22813936C();

      v141 = swift_getKeyPath(asc_22813FB78);
      os_unfair_lock_lock((v22 + 16));
      v142 = v136;
      v143 = MEMORY[0x277D84A28];
      v168 = MEMORY[0x277D84A28];
      v167[0] = v140;

      sub_2280449E4(v167, v141, (v22 + 24));
      os_unfair_lock_unlock((v22 + 16));

      v144 = sub_22813936C();

      v145 = swift_getKeyPath(asc_22813FBA0);
      os_unfair_lock_lock((v22 + 16));
      v168 = v143;
      v167[0] = v144;

      sub_2280449E4(v167, v145, (v22 + 24));
      os_unfair_lock_unlock((v22 + 16));

      v146 = sub_22813936C();

      v147 = swift_getKeyPath(byte_22813FBC8);
      os_unfair_lock_lock((v22 + 16));
      v168 = v143;
      v167[0] = v146;

      sub_2280449E4(v167, v147, (v22 + 24));
      os_unfair_lock_unlock((v22 + 16));

      v148 = sub_22813936C();
      v149 = swift_getKeyPath(byte_22813FBF0);
      os_unfair_lock_lock((v22 + 16));
      v168 = v143;
      v136 = v142;
      v167[0] = v148;

      sub_2280449E4(v167, v149, (v22 + 24));
      os_unfair_lock_unlock((v22 + 16));
    }

    else
    {
    }

    v150 = sub_2280AA14C(0, 0, 0x7FFFFFFFFFFFFFFFLL, v136, v52);
    v126 = 3 * v150;
    if ((v150 * 3) >> 64 == (3 * v150) >> 63)
    {
      break;
    }

    __break(1u);
LABEL_150:
    swift_once();
  }

  v151 = swift_task_alloc();
  v130[35] = v151;
  *v151 = v130;
  v151[1] = sub_2280BD3B0;

  return sub_2280D89D0(v154, v153, v160 + 160, v126);
}

uint64_t sub_2280BD3B0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {

    *(v6 + 288) = a2;
    *(v6 + 296) = a1;

    return MEMORY[0x2822009F8](sub_2280BD53C, 0, 0);
  }
}

uint64_t sub_2280BD53C()
{
  v2 = v0[36];
  v1 = v0[37];
  v5 = v0[33];
  v6 = v0[34];

  MEMORY[0x22AAB1970](v1, v2);

  v3 = v0[1];

  return v3(v5, v6);
}

Swift::String __swiftcall SKTextMessage.preprocessForLanguageCheck()()
{
  v0 = sub_228138A6C();
  if (!v1)
  {
    v0 = 0;
    v1 = 0xE000000000000000;
  }

  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_2280BD64C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280BD6E0;

  return SKTextMessage.preprocess(sharedSessionData:)(a1);
}

uint64_t sub_2280BD6E0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2280BD7F0()
{
  result = sub_228138A6C();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2280BD828@<X0>(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(asc_22813FB50);
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2E20((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280BD8C4@<X0>(os_unfair_lock_s **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath(byte_22813FBF0);
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_2280BD990(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_228139AAC();
  sub_22813923C();
  v8 = sub_228139AEC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2281399BC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2280BEDDC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2280BDAE0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22813701C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2280C0D5C(&qword_2813C8768, MEMORY[0x277CC9650]);
  v33 = a2;
  v11 = sub_2281391DC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2280C0D5C(&qword_2813C8760, MEMORY[0x277CC9658]);
      v21 = sub_22813926C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2280BEF5C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2280BDD98(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_228139A9C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2280BF1D8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2280BDE78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a3;
  v7 = *v3;
  v8 = a3 & 1;
  sub_228139AAC();
  sub_227FED188();
  sub_2281391EC();
  v9 = sub_228139AEC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2280BF2F8(a2, v8, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    result = 1;
    v14 = a2;
    goto LABEL_15;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = *(v13 + 16 * v11);
    if ((v4 & 1) == 0)
    {
      if (v14 == a2)
      {
        goto LABEL_13;
      }

      goto LABEL_4;
    }

    if (a2)
    {
      break;
    }

    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_4:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (a2 == 1)
  {
    if (v14 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  if (v14 != 2)
  {
    goto LABEL_4;
  }

LABEL_13:
  result = 0;
  v4 = *(v13 + 16 * v11 + 8);
LABEL_15:
  *a1 = v14;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2280BDFE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_228139AAC();
  sub_22813923C();
  v8 = sub_228139AEC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2281399BC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2280BF4AC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2280BE134(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E918, &qword_22813C628);
  result = sub_22813983C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2280BE394(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22813701C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF48, &unk_22813FC40);
  result = sub_22813983C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2280C0D5C(&qword_2813C8768, MEMORY[0x277CC9650]);
      result = sub_2281391DC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2280BE6DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF58, &qword_22813FC58);
  result = sub_22813983C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_228139A9C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2280BE900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF50, &qword_22813FC50);
  result = sub_22813983C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_228139AAC();
      sub_227FED188();
      sub_2281391EC();
      result = sub_228139AEC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2280BEB7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF60, &unk_22813FC60);
  result = sub_22813983C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_228139AAC();
      sub_22813923C();
      result = sub_228139AEC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_2280BEDDC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2280BE134(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2280BF62C();
      goto LABEL_16;
    }

    sub_2280BFDB0(v8 + 1);
  }

  v10 = *v4;
  sub_228139AAC();
  sub_22813923C();
  v11 = sub_228139AEC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_2281399BC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2281399DC();
  __break(1u);
}

uint64_t sub_2280BEF5C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22813701C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2280BE394(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2280BF788();
      goto LABEL_12;
    }

    sub_2280BFFE8(v10 + 1);
  }

  v12 = *v3;
  sub_2280C0D5C(&qword_2813C8768, MEMORY[0x277CC9650]);
  v13 = sub_2281391DC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2280C0D5C(&qword_2813C8760, MEMORY[0x277CC9658]);
      v21 = sub_22813926C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2281399DC();
  __break(1u);
  return result;
}

uint64_t sub_2280BF1D8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2280BE6DC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2280BF9C0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2280C02F0(v5 + 1);
  }

  v8 = *v3;
  result = sub_228139A9C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2281399DC();
  __break(1u);
  return result;
}

uint64_t sub_2280BF2F8(uint64_t result, char a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a4)
  {
    sub_2280BE900(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_2280BFB00();
      a3 = v9;
      goto LABEL_21;
    }

    sub_2280C04E0(v7 + 1);
  }

  v10 = *v4;
  sub_228139AAC();
  sub_227FED188();
  sub_2281391EC();
  result = sub_228139AEC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v10 + 48) + 16 * a3);
      if (a2)
      {
        if (v6)
        {
          if (v6 == 1)
          {
            if (v13 == 1)
            {
              goto LABEL_20;
            }
          }

          else if (v13 == 2)
          {
LABEL_20:
            result = sub_2281399DC();
            __break(1u);
            break;
          }
        }

        else if (!v13)
        {
          goto LABEL_20;
        }
      }

      else if (v13 == v6)
      {
        goto LABEL_20;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_21:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v6;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

void sub_2280BF4AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2280BEB7C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2280BFC54();
      goto LABEL_16;
    }

    sub_2280C072C(v8 + 1);
  }

  v10 = *v4;
  sub_228139AAC();
  sub_22813923C();
  v11 = sub_228139AEC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_2281399BC() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2281399DC();
  __break(1u);
}

void sub_2280BF62C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E918, &qword_22813C628);
  v2 = *v0;
  v3 = sub_22813982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_2280BF788()
{
  v1 = v0;
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF48, &unk_22813FC40);
  v6 = *v0;
  v7 = sub_22813982C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_2280BF9C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF58, &qword_22813FC58);
  v2 = *v0;
  v3 = sub_22813982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2280BFB00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF50, &qword_22813FC50);
  v2 = *v0;
  v3 = sub_22813982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_2280BFC54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF60, &unk_22813FC60);
  v2 = *v0;
  v3 = sub_22813982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2280BFDB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E918, &qword_22813C628);
  result = sub_22813983C();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_228139AAC();

      sub_22813923C();
      result = sub_228139AEC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_2280BFFE8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22813701C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF48, &unk_22813FC40);
  v7 = sub_22813983C();
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
      sub_2280C0D5C(&qword_2813C8768, MEMORY[0x277CC9650]);
      result = sub_2281391DC();
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

uint64_t sub_2280C02F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF58, &qword_22813FC58);
  result = sub_22813983C();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_228139A9C();
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

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2280C04E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF50, &qword_22813FC50);
  result = sub_22813983C();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_228139AAC();
      sub_227FED188();
      sub_2281391EC();
      result = sub_228139AEC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

void sub_2280C072C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF60, &unk_22813FC60);
  v4 = sub_22813983C();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_228139AAC();
      sub_22813923C();
      v20 = sub_228139AEC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

void sub_2280C0964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_3(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2280C0A3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228041784(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2280C0A78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    MEMORY[0x22AAB1970]();
    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    v11 = 0x203A7265646E6553;
  }

  else
  {
    v11 = 0;
  }

  v12 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v12 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    MEMORY[0x22AAB1970](a5, a6);
    v14 = 32;
    v13 = 0xE100000000000000;
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  MEMORY[0x22AAB1970](a3, a4);
  MEMORY[0x22AAB1970](v14, v13);

  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  return v11;
}

uint64_t sub_2280C0BC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm_11()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for SKTextMessage(uint64_t a1)
{
  result = qword_2813C7980;
  if (!qword_2813C7980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280C0CF0(uint64_t a1)
{
  result = sub_228138AAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2280C0D5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22813701C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2280C0DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  *(v7 + 208) = a7;
  *(v7 + 168) = a5;
  *(v7 + 176) = a6;
  *(v7 + 152) = a3;
  *(v7 + 160) = a4;
  *(v7 + 136) = a1;
  *(v7 + 144) = a2;
  *(v7 + 128) = a1;
  return MEMORY[0x2822009F8](sub_2280C0DD8, 0, 0);
}

uint64_t sub_2280C0DD8()
{
  sub_2280AA278(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 208) & 0x101, v0 + 16);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_2280C5414(0, 0, 0, 0, 0);
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v8 = 256;
  if (!v5)
  {
    v8 = 0;
  }

  *(v0 + 80) = v3;
  *(v0 + 88) = v8 | v4;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  sub_2281395DC();
  if (*(v0 + 72))
  {
    v9 = sub_2280AA384();
    *(v0 + 184) = v10;
    if (v10)
    {
      v11 = *(v0 + 144);
      *(v0 + 112) = v9;
      *(v0 + 120) = v10;
      v17 = (v11 + *v11);
      v12 = swift_task_alloc();
      *(v0 + 192) = v12;
      *v12 = v0;
      v12[1] = sub_2280C1088;

      return v17(v0 + 128, v0 + 112);
    }

    v14 = *(v0 + 72);
  }

  else
  {
    v14 = 0;
  }

  sub_2280C5414(*(v0 + 64), v14, *(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_2280C5414(0, 0, 0, 0, 0);
  v15 = *(v0 + 128);
  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_2280C1088()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    sub_2280C5414(*(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96));
    v3 = sub_2280C140C;
  }

  else
  {
    v3 = sub_2280C11C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280C11C4(uint64_t a1)
{
  v2 = *(v1 + 200);
  sub_2281395DC();
  if (v2)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = *(v1 + 96);

    sub_2280C5414(v3, v4, v5, v6, v7);
    swift_willThrow();
    sub_2280C5414(0, 0, 0, 0, 0);
    v8 = *(v1 + 8);

    return v8();
  }

  if (*(v1 + 72))
  {
    v10 = sub_2280AA384();
    *(v1 + 184) = v11;
    if (v11)
    {
      v12 = *(v1 + 144);
      *(v1 + 112) = v10;
      *(v1 + 120) = v11;
      v17 = (v12 + *v12);
      v13 = swift_task_alloc();
      *(v1 + 192) = v13;
      *v13 = v1;
      v13[1] = sub_2280C1088;

      return v17(v1 + 128, v1 + 112);
    }

    v14 = *(v1 + 72);
  }

  else
  {
    v14 = 0;
  }

  sub_2280C5414(*(v1 + 64), v14, *(v1 + 80), *(v1 + 88), *(v1 + 96));
  sub_2280C5414(0, 0, 0, 0, 0);
  v15 = *(v1 + 128);
  v16 = *(v1 + 8);

  return v16(v15);
}