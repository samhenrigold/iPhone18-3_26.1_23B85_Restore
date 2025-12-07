uint64_t storeEnumTagSinglePayload for ChartRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26BB3C590(uint64_t a1@<X8>)
{
  v28[0] = a1;
  v1 = sub_26BB7BDB8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v28 - v7;
  if (qword_28158C2F8 != -1)
  {
    v27 = v6;
    swift_once();
    v6 = v27;
  }

  v29 = v6;
  v9 = sub_26BB7CB88();
  __swift_project_value_buffer(v9, qword_28158F140);
  v10 = sub_26BB7CB68();
  v11 = sub_26BB7CF78();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26BB21000, v10, v11, "Reading bundled currency conversion data", v12, 2u);
    MEMORY[0x26D68EA90](v12, -1, -1);
  }

  type metadata accessor for StockService(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  type metadata accessor for CurrencyConversionsResult(0);
  sub_26BB7C848();
  swift_allocObject();
  sub_26BB7C838();
  v15 = sub_26BB7CD38();
  v16 = sub_26BB7CD38();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (v17)
  {
    sub_26BB7BDA8();

    v21 = v29;
    (*(v2 + 32))(v8, v5, v29);
    v22 = v28[1];
    v23 = sub_26BB7BDC8();
    if (v22)
    {

      (*(v2 + 8))(v8, v21);
    }

    else
    {
      v25 = v23;
      v26 = v24;
      (*(v2 + 8))(v8, v21);
      sub_26BB3C970();
      sub_26BB7C828();
      sub_26BB3C9C8(v25, v26);
    }
  }

  else
  {
    sub_26BB3C91C(v18, v19, v20);
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_26BB3C91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439F50;
  if (!qword_280439F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F50);
  }

  return result;
}

unint64_t sub_26BB3C970()
{
  result = qword_28158BCD8;
  if (!qword_28158BCD8)
  {
    type metadata accessor for CurrencyConversionsResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BCD8);
  }

  return result;
}

uint64_t sub_26BB3C9C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_26BB3CA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439F58;
  if (!qword_280439F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F58);
  }

  return result;
}

id sub_26BB3CADC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NoopAppActivityMonitor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26BB3CB34@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_26BB3D360(v1 + 24, &v4);
  if (v5)
  {
    return sub_26BB28A3C(&v4, a1);
  }

  sub_26BB3D270(&v4);
  sub_26BB7CB48();
  sub_26BB282D8(a1, &v4);
  swift_beginAccess();
  sub_26BB3D3F0(&v4, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_26BB3CBEC()
{
  type metadata accessor for StocksKitModule();
  v0 = swift_allocObject();
  result = sub_26BB3CC28();
  qword_28158F138 = v0;
  return result;
}

uint64_t sub_26BB3CC28()
{
  v1 = v0;
  v25 = sub_26BB7CB28();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26BB7C8D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x277D84560];
  sub_26BB3D2F8(0, &qword_28158B0D8, &qword_28158BA40, MEMORY[0x277D6CCC8], MEMORY[0x277D84560]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26BB7DFD0;
  v11 = sub_26BB7C778();
  swift_allocObject();
  v12 = sub_26BB7C768();
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_26BB3D4DC(&unk_28158BA68, MEMORY[0x277D69838], MEMORY[0x277D69830]);
  *(v10 + 32) = v12;
  v13 = sub_26BB7C948();
  v14 = [objc_allocWithZone(v13) init];
  v15 = MEMORY[0x277D6CC58];
  *(v10 + 96) = v13;
  *(v10 + 104) = v15;
  *(v10 + 72) = v14;
  *(v10 + 136) = &type metadata for Assembly;
  *(v10 + 144) = sub_26BB3D524(v14, v16, v17);
  sub_26BB3D2F8(0, &qword_28158B0E0, &qword_28158BA60, MEMORY[0x277D6CA90], v9);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26BB7EC90;
  v19 = type metadata accessor for ServiceAssembly();
  v20 = swift_allocObject();
  *(v18 + 56) = v19;
  *(v18 + 64) = sub_26BB3D4DC(qword_28158B508, type metadata accessor for ServiceAssembly, &unk_26BB7DFA4);
  *(v18 + 32) = v20;
  v21 = type metadata accessor for ManagerAssembly();
  v22 = swift_allocObject();
  *(v18 + 96) = v21;
  *(v18 + 104) = sub_26BB3D4DC(&qword_28158B5A8, type metadata accessor for ManagerAssembly, &unk_26BB81274);
  *(v18 + 72) = v22;
  *(v10 + 112) = v18;
  sub_26BB7C8F8();
  swift_allocObject();
  sub_26BB7C8E8();
  *v8 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  (*(v6 + 104))(v8, *MEMORY[0x277D6CB40], v5);
  (*(v2 + 104))(v4, *MEMORY[0x277D6CF60], v25);
  sub_26BB7CB58();
  swift_allocObject();
  *(v1 + 16) = sub_26BB7CB38();
  return v1;
}

uint64_t Assembly.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_26BB3D2F8(0, &qword_28158B0E0, &qword_28158BA60, MEMORY[0x277D6CA90], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26BB7EC90;
  v3 = type metadata accessor for ServiceAssembly();
  v4 = swift_allocObject();
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_26BB3D4DC(qword_28158B508, type metadata accessor for ServiceAssembly, &unk_26BB7DFA4);
  *(v2 + 32) = v4;
  v5 = type metadata accessor for ManagerAssembly();
  v6 = swift_allocObject();
  *(v2 + 96) = v5;
  result = sub_26BB3D4DC(&qword_28158B5A8, type metadata accessor for ManagerAssembly, &unk_26BB81274);
  *(v2 + 104) = result;
  *(v2 + 72) = v6;
  *a1 = v2;
  return result;
}

uint64_t sub_26BB3D15C()
{

  sub_26BB3D270(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26BB3D1DC(uint64_t *a1, int a2)
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

uint64_t sub_26BB3D224(uint64_t result, int a2, int a3)
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

uint64_t sub_26BB3D270(uint64_t a1)
{
  sub_26BB3D2F8(0, &qword_28158BA48, &qword_28158BA50, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BB3D2F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_26BB3D480(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26BB3D360(uint64_t a1, uint64_t a2)
{
  sub_26BB3D2F8(0, &qword_28158BA48, &qword_28158BA50, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB3D3F0(uint64_t a1, uint64_t a2)
{
  sub_26BB3D2F8(0, &qword_28158BA48, &qword_28158BA50, MEMORY[0x277D6CB00], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB3D480(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26BB3D4DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BB3D524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439F60;
  if (!qword_280439F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F60);
  }

  return result;
}

uint64_t sub_26BB3D590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_26BB3D660(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26BB3D690@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26BB3D6BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_26BB3D794@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_26BB3D7E8()
{
  result = sub_26BB3D8FC(3);
  qword_280440430 = result;
  return result;
}

id sub_26BB3D81C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v5 setNumberStyle_];
  [v5 setMinimumFractionDigits_];
  [v5 setMaximumFractionDigits_];
  result = [v5 setMinimumIntegerDigits_];
  *a3 = v5;
  return result;
}

id sub_26BB3D8B4()
{
  result = sub_26BB3D8FC(2);
  qword_280440440 = result;
  return result;
}

id sub_26BB3D8D8()
{
  result = sub_26BB3D8FC(0);
  qword_280440448 = result;
  return result;
}

id sub_26BB3D8FC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v2 setNumberStyle_];
  [v2 setMinimumFractionDigits_];
  [v2 setMaximumFractionDigits_];
  [v2 setMinimumIntegerDigits_];
  v3 = sub_26BB7CD38();
  [v2 setPositivePrefix_];

  v4 = sub_26BB7CD38();
  [v2 setNegativePrefix_];

  return v2;
}

uint64_t PriceFormatter.format(price:style:options:)(uint64_t a1, void *a2, double a3)
{
  v4 = sub_26BB3DB08(*a2, *a1, *(a1 + 8), a3);
  [v4 setNumberStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_26BB7CD48();
  }

  else
  {

    return 0;
  }

  return v7;
}

id PriceFormatter.format(price:currencyCode:style:options:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v8 = *a4;
  v9 = v5;
  v10 = v6;
  return sub_26BB3DDE8(a1, a2, &v9, &v8, a5);
}

uint64_t sub_26BB3DB08(char a1, uint64_t a2, char a3, double a4)
{
  v5 = fabs(a4);
  if (a4 != 0.0 && v5 < 5.0 && (a1 & 1) == 0)
  {
    if (a3)
    {
      if (qword_280439D18 != -1)
      {
        swift_once();
      }

      v10 = &qword_280440428;
    }

    else
    {
      if (qword_280439D20 != -1)
      {
        swift_once();
      }

      v10 = &qword_280440430;
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (!a2)
        {
          goto LABEL_17;
        }

        goto LABEL_38;
      }

      if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v5 < 9.22337204e18)
        {
          if (v5 < 1)
          {
LABEL_17:
            if (qword_280439D10 != -1)
            {
              swift_once();
            }

            v10 = &qword_280440420;
            return *v10;
          }

          v9 = log10(v5);
          if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v9 > -9.22337204e18)
            {
              if (v9 < 9.22337204e18)
              {
                if (v9 < a2)
                {
                  goto LABEL_17;
                }

LABEL_38:
                if (qword_280439D28 == -1)
                {
LABEL_39:
                  v10 = &qword_280440438;
                  return *v10;
                }

LABEL_47:
                swift_once();
                goto LABEL_39;
              }

              goto LABEL_52;
            }

            goto LABEL_50;
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_45;
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_44;
    }

    if (v5 >= 9.22337204e18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v5 >= 1)
    {
      v12 = log10(v5);
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_49;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v12 >= a2)
      {
        if (qword_280439D38 == -1)
        {
LABEL_41:
          v10 = &qword_280440448;
          return *v10;
        }

LABEL_54:
        swift_once();
        goto LABEL_41;
      }
    }

    if (qword_280439D30 != -1)
    {
      swift_once();
    }

    v10 = &qword_280440440;
  }

  return *v10;
}

id sub_26BB3DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v83 = a2;
  v79 = a1;
  v8 = MEMORY[0x277D83D88];
  sub_26BB3EA84(0, &qword_280439F88, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = &v73 - v10;
  v11 = sub_26BB7BF88();
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v73 - v15;
  v17 = sub_26BB7BFA8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v78 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v73 - v24;
  sub_26BB3EA84(0, &qword_280439F90, MEMORY[0x277CC9640], v8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v73 - v27;
  v29 = *a4;
  v30 = sub_26BB3DB08(*a4, *a3, *(a3 + 8), a5);
  v31 = v30;
  if ((v29 & 2) != 0 && v83)
  {
    v75 = v30;
    sub_26BB7BF18();
    sub_26BB7BF98();
    v32 = *(v18 + 8);
    v76 = v17;
    v77 = v32;
    (v32)(v25);
    sub_26BB7BF68();
    v33 = *(v81 + 8);
    v33(v16, v82);
    v34 = sub_26BB7BEB8();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v28, 1, v34) == 1)
    {
      v36 = &qword_280439F90;
      v37 = MEMORY[0x277CC9640];
    }

    else
    {
      v74 = _s9StocksKit8CurrencyV10identifierSSvg_0();
      v81 = v39;
      (*(v35 + 8))(v28, v34);
      sub_26BB7BF18();
      sub_26BB7BF98();
      v40 = v76;
      v77(v23, v76);
      v28 = v80;
      sub_26BB7BF78();
      v33(v14, v82);
      v41 = sub_26BB7BEF8();
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v28, 1, v41) != 1)
      {
        v47 = v40;
        v48 = _s9StocksKit8CurrencyV10identifierSSvg_0();
        v50 = v49;
        (*(v42 + 8))(v28, v41);
        sub_26BB3EA84(0, &qword_280439F98, sub_26BB3EA28, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26BB7DFD0;
        *(inited + 32) = sub_26BB7CD48();
        v52 = v79;
        *(inited + 40) = v53;
        *(inited + 48) = v52;
        v54 = v83;
        *(inited + 56) = v83;
        *(inited + 64) = sub_26BB7CD48();
        *(inited + 72) = v55;
        v56 = v81;
        *(inited + 80) = v74;
        *(inited + 88) = v56;
        *(inited + 96) = sub_26BB7CD48();
        *(inited + 104) = v57;
        *(inited + 112) = v48;
        *(inited + 120) = v50;

        v58 = sub_26BB5F240(inited);
        swift_setDeallocating();
        sub_26BB3EA28();
        swift_arrayDestroy();
        MEMORY[0x26D68CD90](v58);

        v59 = v78;
        sub_26BB7BE98();
        v60 = sub_26BB7BEC8();
        v61 = v75;
        [v75 setLocale_];

        if (v52 == 7356999 && v54 == 0xE300000000000000 || (sub_26BB7D378() & 1) != 0)
        {
          [v61 setNumberStyle_];
          v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v45 = [v61 stringFromNumber_];

          if (!v45)
          {
            v77(v59, v47);

            return v45;
          }

          v63 = sub_26BB7CD48();
          v65 = v64;

          sub_26BB3EA84(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
          v66 = swift_allocObject();
          *(v66 + 16) = xmmword_26BB7EC90;
          v67 = MEMORY[0x277D837D0];
          *(v66 + 56) = MEMORY[0x277D837D0];
          v70 = sub_26BB3EB4C(v66, v68, v69);
          *(v66 + 32) = 0xD000000000000021;
          *(v66 + 40) = 0x800000026BB832D0;
          *(v66 + 96) = v67;
          *(v66 + 104) = v70;
          *(v66 + 64) = v70;
          *(v66 + 72) = v63;
          *(v66 + 80) = v65;
          v45 = sub_26BB7CD58();
        }

        else
        {
          [v61 setNumberStyle_];
          v71 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v72 = [v61 stringFromNumber_];

          if (!v72)
          {
            v77(v59, v47);

            return 0;
          }

          v45 = sub_26BB7CD48();
        }

        v77(v59, v47);
        return v45;
      }

      v36 = &qword_280439F88;
      v37 = MEMORY[0x277CC9698];
    }

    sub_26BB3E9B8(v28, v36, v37);
  }

  else
  {
    v38 = v30;
  }

  [v31 setNumberStyle_];
  v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v44 = [v31 stringFromNumber_];

  if (!v44)
  {

    return 0;
  }

  v45 = sub_26BB7CD48();

  return v45;
}

unint64_t sub_26BB3E6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439F68;
  if (!qword_280439F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F68);
  }

  return result;
}

unint64_t sub_26BB3E740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439F70;
  if (!qword_280439F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F70);
  }

  return result;
}

unint64_t sub_26BB3E798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439F78;
  if (!qword_280439F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F78);
  }

  return result;
}

unint64_t sub_26BB3E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439F80;
  if (!qword_280439F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439F80);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PriceFormatter.Style(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PriceFormatter.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_26BB3E920(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26BB3E938(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PriceFormatter.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PriceFormatter.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_26BB3E9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB3EA84(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB3EA28()
{
  if (!qword_280439FA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280439FA0);
    }
  }
}

void sub_26BB3EA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26BB3EAE8()
{
  result = qword_280439FB0;
  if (!qword_280439FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280439FB0);
  }

  return result;
}

unint64_t sub_26BB3EB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439FB8;
  if (!qword_280439FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439FB8);
  }

  return result;
}

uint64_t sub_26BB3EBA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = sub_26BB7C478();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = MEMORY[0x277D69680];
  sub_26BB3F0A4(0, &unk_28158BAA8, MEMORY[0x277D69680]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - v18;
  v20 = sub_26BB7C358();
  v31 = v21;
  v32 = v20;
  sub_26BB7C348();
  sub_26BB44398(v16, v14, &unk_28158BAA8, v10);
  v22 = 1;
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    (*(v4 + 32))(v9, v14, v3);
    (*(v4 + 16))(v7, v9, v3);
    sub_26BB7C3E8();
    v23 = *(v4 + 8);
    v23(v7, v3);
    v23(v9, v3);
    v22 = 0;
  }

  sub_26BB444C4(v16, &unk_28158BAA8, MEMORY[0x277D69680]);
  v24 = type metadata accessor for DataSource.Logo(0);
  (*(*(v24 - 8) + 56))(v19, v22, 1, v24);
  v25 = type metadata accessor for DataSource(0);
  v26 = v33;
  sub_26BB7C368();
  v27 = sub_26BB7C378();
  (*(*(v27 - 8) + 8))(a1, v27);
  v28 = v31;
  *v26 = v32;
  v26[1] = v28;
  return sub_26BB42E9C(v19, v26 + *(v25 + 20), qword_28158BEB8, type metadata accessor for DataSource.Logo);
}

uint64_t DataSource.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataSource.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_26BB3F0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BB7CFE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BB3F0FC()
{
  v1 = 1869049708;
  if (*v0 != 1)
  {
    v1 = 0x74616E6974736564;
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

uint64_t sub_26BB3F150@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB44044(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB3F178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB42D9C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB3F1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB42D9C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DataSource.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_28158B138, sub_26BB42D9C, &type metadata for DataSource.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42D9C(v8, v9, v10);
  sub_26BB7D488();
  v15 = 0;
  sub_26BB7D308();
  if (!v1)
  {
    type metadata accessor for DataSource(0);
    v14 = 1;
    type metadata accessor for DataSource.Logo(0);
    sub_26BB42DF0(&qword_28158B7F0, type metadata accessor for DataSource.Logo, &protocol conformance descriptor for DataSource.Logo);
    sub_26BB7D2F8();
    v13 = 2;
    sub_26BB7BDB8();
    sub_26BB42DF0(&qword_28158BB38, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_26BB7D2F8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DataSource.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26BB7BDB8();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for DataSource.Logo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  sub_26BB7CD88();
  v15 = type metadata accessor for DataSource(0);
  sub_26BB44398(v2 + *(v15 + 20), v14, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_26BB7D438();
  }

  else
  {
    sub_26BB42E38(v14, v11);
    sub_26BB7D438();
    sub_26BB7C3D8();
    sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640], MEMORY[0x277D69650]);
    sub_26BB7CCF8();
    sub_26BB42F08(v11, type metadata accessor for DataSource.Logo);
  }

  sub_26BB44398(v2 + *(v15 + 24), v7, &qword_28158C328, MEMORY[0x277CC9260]);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_26BB7D438();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_26BB7D438();
  sub_26BB42DF0(&qword_280439FC8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_26BB7CCF8();
  return (*(v17 + 8))(v19, v16);
}

uint64_t DataSource.hashValue.getter()
{
  sub_26BB7D418();
  DataSource.hash(into:)(v1);
  return sub_26BB7D458();
}

uint64_t DataSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v23 - v4;
  sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  sub_26BB43394(0, &qword_28158B1B8, sub_26BB42D9C, &type metadata for DataSource.CodingKeys, MEMORY[0x277D844C8]);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for DataSource(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42D9C(v14, v15, v16);
  v27 = v10;
  v17 = v28;
  sub_26BB7D478();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = v11;
  v19 = v25;
  v31 = 0;
  *v13 = sub_26BB7D268();
  v13[1] = v20;
  v28 = v20;
  type metadata accessor for DataSource.Logo(0);
  v30 = 1;
  sub_26BB42DF0(&qword_28158B7E8, type metadata accessor for DataSource.Logo, &protocol conformance descriptor for DataSource.Logo);
  sub_26BB7D258();
  sub_26BB42E9C(v7, v13 + *(v11 + 20), qword_28158BEB8, type metadata accessor for DataSource.Logo);
  sub_26BB7BDB8();
  v29 = 2;
  sub_26BB42DF0(&qword_28158BB30, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v21 = v24;
  sub_26BB7D258();
  (*(v19 + 8))(v27, v26);
  sub_26BB42E9C(v21, v13 + *(v18 + 24), &qword_28158C328, MEMORY[0x277CC9260]);
  sub_26BB3BFE0(v13, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_26BB42F08(v13, type metadata accessor for DataSource);
}

uint64_t sub_26BB3FD14()
{
  sub_26BB7D418();
  DataSource.hash(into:)(v1);
  return sub_26BB7D458();
}

uint64_t sub_26BB3FD58(uint64_t a1)
{
  sub_26BB7D418();
  DataSource.hash(into:)(v2);
  return sub_26BB7D458();
}

uint64_t sub_26BB3FDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB3FE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB42F68(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB3FEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB42F68(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DataSource.Logo.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_28158B130, sub_26BB42F68, &type metadata for DataSource.Logo.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42F68(v7, v8, v9);
  sub_26BB7D488();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FD0, MEMORY[0x277D69640], MEMORY[0x277D69648]);
  sub_26BB7D328();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DataSource.Logo.hash(into:)(uint64_t a1)
{
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640], MEMORY[0x277D69650]);

  return sub_26BB7CCF8();
}

uint64_t DataSource.Logo.hashValue.getter()
{
  sub_26BB7D418();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640], MEMORY[0x277D69650]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t DataSource.Logo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_26BB7C3D8();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB43394(0, &qword_28158B1B0, sub_26BB42F68, &type metadata for DataSource.Logo.CodingKeys, MEMORY[0x277D844C8]);
  v6 = v5;
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DataSource.Logo(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42F68(v12, v13, v14);
  v15 = v23;
  sub_26BB7D478();
  if (!v15)
  {
    v16 = v20;
    v17 = v21;
    sub_26BB42DF0(&qword_280439FD8, MEMORY[0x277D69640], MEMORY[0x277D69658]);
    sub_26BB7D288();
    (*(v16 + 8))(v8, v6);
    (*(v17 + 32))(v11, v22, v3);
    sub_26BB42E38(v11, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB40470()
{
  sub_26BB7D418();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640], MEMORY[0x277D69650]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t sub_26BB404F8(uint64_t a1)
{
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640], MEMORY[0x277D69650]);

  return sub_26BB7CCF8();
}

uint64_t sub_26BB4057C(uint64_t a1)
{
  sub_26BB7D418();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FC0, MEMORY[0x277D69640], MEMORY[0x277D69650]);
  sub_26BB7CCF8();
  return sub_26BB7D458();
}

uint64_t sub_26BB40618(void *a1)
{
  sub_26BB43394(0, &qword_28158B130, sub_26BB42F68, &type metadata for DataSource.Logo.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42F68(v7, v8, v9);
  sub_26BB7D488();
  sub_26BB7C3D8();
  sub_26BB42DF0(&qword_280439FD0, MEMORY[0x277D69640], MEMORY[0x277D69648]);
  sub_26BB7D328();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26BB4080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB40890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB42FBC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB408CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB42FBC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DataSource.ImageContext.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_280439FE0, sub_26BB42FBC, &type metadata for DataSource.ImageContext.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42FBC(v7, v8, v9);
  sub_26BB7D488();
  sub_26BB7D318();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DataSource.ImageContext.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  sub_26BB43394(0, &qword_280439FF0, sub_26BB42FBC, &type metadata for DataSource.ImageContext.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42FBC(v9, v10, v11);
  sub_26BB7D478();
  if (!v2)
  {
    v12 = v17;
    sub_26BB7D278();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *v12 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB40C3C(void *a1)
{
  sub_26BB43394(0, &qword_280439FE0, sub_26BB42FBC, &type metadata for DataSource.ImageContext.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB42FBC(v7, v8, v9);
  sub_26BB7D488();
  sub_26BB7D318();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DataSource.DownloadedLogo.light.getter()
{
  v1 = *v0;
  sub_26BB43010(*v0, *(v0 + 8));
  return v1;
}

uint64_t DataSource.DownloadedLogo.dark.getter()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
  }

  sub_26BB43064(*(v0 + 32), v1);
  return v2;
}

uint64_t DataSource.DownloadedLogo.variants.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_26BB43078(v9, &v8);
}

uint64_t DataSource.DownloadedLogo.Variants.light.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 16);
  return sub_26BB43010(v2, v3);
}

uint64_t DataSource.DownloadedLogo.Variants.dark.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_26BB43064(v2, v3);
}

uint64_t DataSource.DownloadedLogo.Variants.template.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_26BB43064(v2, v3);
}

uint64_t sub_26BB40EB0()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_26BB40F00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB44160(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB40F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB430B0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB40F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB430B0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DataSource.DownloadedLogo.Variants.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_280439FF8, sub_26BB430B0, &type metadata for DataSource.DownloadedLogo.Variants.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v34 = v1[5];
  v35 = v12;
  v13 = v1[6];
  v32 = v1[7];
  v33 = v13;
  v14 = v1[8];
  v30 = v1[9];
  v31 = v14;
  v15 = v1[10];
  v28 = v1[11];
  v29 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_26BB43010(v8, v9);
  sub_26BB430B0(v16, v17, v18);
  v19 = sub_26BB7D488();
  v37 = v8;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v41 = 0;
  sub_26BB43104(v19, v20, v21);
  v22 = v36;
  sub_26BB7D328();
  if (v22)
  {
    sub_26BB3C9C8(v37, v38);
  }

  else
  {
    v24 = v29;
    v23 = v30;
    v25 = v31;
    sub_26BB3C9C8(v37, v38);
    v37 = v35;
    v38 = v34;
    v39 = v33;
    v40 = v32;
    v41 = 1;
    sub_26BB43064(v35, v34);
    sub_26BB7D2F8();
    sub_26BB43158(v37, v38);
    v37 = v25;
    v38 = v23;
    v39 = v24;
    v40 = v28;
    v41 = 2;
    sub_26BB43064(v25, v23);
    sub_26BB7D2F8();
    sub_26BB43158(v37, v38);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DataSource.DownloadedLogo.Variants.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  sub_26BB43394(0, &qword_28043A010, sub_26BB430B0, &type metadata for DataSource.DownloadedLogo.Variants.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB430B0(v9, v10, v11);
  v12 = sub_26BB7D478();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v6;
  v16 = v35;
  LOBYTE(v36[0]) = 0;
  sub_26BB4316C(v12, v13, v14);
  sub_26BB7D288();
  v34 = v41;
  v17 = v42;
  LOBYTE(v36[0]) = 1;
  sub_26BB7D258();
  v32 = v41;
  v33 = v42;
  v53 = 2;
  sub_26BB7D258();
  (*(v15 + 8))(v8, v5);
  v30 = *(&v51 + 1);
  v31 = v51;
  v28 = *(&v52 + 1);
  v29 = v52;
  v18 = v34;
  v36[0] = v34;
  v19 = *(&v34 + 1);
  v36[1] = v17;
  v20 = v32;
  v37 = v32;
  v21 = *(&v32 + 1);
  v22 = v33;
  v38 = v33;
  v23 = *(&v33 + 1);
  v39 = v51;
  v40 = v52;
  *v16 = v34;
  v16[1] = v17;
  v24 = v37;
  v25 = v38;
  v26 = v40;
  v16[4] = v39;
  v16[5] = v26;
  v16[2] = v24;
  v16[3] = v25;
  sub_26BB43078(v36, &v41);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v41 = v18;
  *(&v41 + 1) = v19;
  v42 = v17;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  v46 = v23;
  v47 = v31;
  v48 = v30;
  v49 = v29;
  v50 = v28;
  return sub_26BB431C0(&v41);
}

uint64_t DataSource.DownloadedLogo.Variant.imageData.getter()
{
  v1 = *v0;
  sub_26BB43010(*v0, *(v0 + 8));
  return v1;
}

unint64_t sub_26BB41704()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461446567616D69;
  }
}

uint64_t sub_26BB41764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB44274(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB4178C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB431F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB417C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB431F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DataSource.DownloadedLogo.Variant.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_28043A020, sub_26BB431F0, &type metadata for DataSource.DownloadedLogo.Variant.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_26BB43010(v8, v9);
  sub_26BB431F0(v10, v11, v12);
  v13 = sub_26BB7D488();
  v19 = v8;
  v20 = v9;
  v21 = 0;
  sub_26BB43244(v13, v14, v15);
  v16 = v18[1];
  sub_26BB7D328();
  if (v16)
  {
    sub_26BB3C9C8(v19, v20);
  }

  else
  {
    sub_26BB3C9C8(v19, v20);
    LOBYTE(v19) = 1;
    sub_26BB7D318();
    LOBYTE(v19) = 2;
    sub_26BB7D318();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DataSource.DownloadedLogo.Variant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  sub_26BB43394(0, &qword_28043A038, sub_26BB431F0, &type metadata for DataSource.DownloadedLogo.Variant.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB431F0(v9, v10, v11);
  v12 = sub_26BB7D478();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v6;
  v16 = v25;
  v28 = 0;
  sub_26BB43298(v12, v13, v14);
  sub_26BB7D288();
  v18 = v26;
  v17 = v27;
  LOBYTE(v26) = 1;
  sub_26BB7D278();
  v20 = v19;
  LOBYTE(v26) = 2;
  sub_26BB7D278();
  v23 = v22;
  (*(v15 + 8))(v8, v5);
  *v16 = v18;
  v16[1] = v17;
  v16[2] = v20;
  v16[3] = v23;
  sub_26BB43010(v18, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_26BB3C9C8(v18, v17);
}

uint64_t sub_26BB41CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E6169726176 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB41D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB432EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB41D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB432EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t DataSource.DownloadedLogo.encode(to:)(void *a1)
{
  sub_26BB43394(0, &qword_28043A048, sub_26BB432EC, &type metadata for DataSource.DownloadedLogo.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v8 = v1[3];
  v27 = v1[2];
  v28 = v8;
  v9 = v1[5];
  v29 = v1[4];
  v30 = v9;
  v10 = v1[1];
  v25 = *v1;
  v26 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_26BB43078(&v25, &v19);
  sub_26BB432EC(v11, v12, v13);
  v14 = sub_26BB7D488();
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  sub_26BB43340(v14, v15, v16);
  sub_26BB7D328();
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23;
  v18[5] = v24;
  v18[0] = v19;
  v18[1] = v20;
  sub_26BB431C0(v18);
  return (*(v5 + 8))(v7, v4);
}

uint64_t DataSource.DownloadedLogo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  sub_26BB43394(0, &qword_28043A060, sub_26BB432EC, &type metadata for DataSource.DownloadedLogo.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB432EC(v9, v10, v11);
  v12 = sub_26BB7D478();
  if (!v2)
  {
    v15 = v21;
    sub_26BB433FC(v12, v13, v14);
    sub_26BB7D288();
    (*(v6 + 8))(v8, v5);
    v16 = v20[3];
    v15[2] = v20[2];
    v15[3] = v16;
    v17 = v20[5];
    v15[4] = v20[4];
    v15[5] = v17;
    v18 = v20[1];
    *v15 = v20[0];
    v15[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_26BB42184@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v59 = MEMORY[0x277D69668];
  sub_26BB3F0A4(0, &qword_28043A0F0, MEMORY[0x277D69668]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  *&v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v63 = &v53 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = sub_26BB7C448();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  sub_26BB7C408();
  v20 = sub_26BB7C428();
  v61 = v21;
  v62 = v20;
  sub_26BB7C438();
  v23 = v22;
  sub_26BB7C418();
  v25 = v24;
  v26 = *(v14 + 8);
  v26(v19, v13);
  v64 = a1;
  sub_26BB7C3F8();
  *&v57 = v12;
  sub_26BB44398(v12, v10, &qword_28043A0F0, v59);
  v56 = *(v14 + 48);
  v27 = v56(v10, 1, v13);
  v53 = v14;
  v54 = v26;
  if (v27 == 1)
  {
    sub_26BB444C4(v57, &qword_28043A0F0, MEMORY[0x277D69668]);
    v28 = 0;
    v58 = 0xF000000000000000;
    v59 = 0;
    v29 = 0;
  }

  else
  {
    (*(v14 + 32))(v19, v10, v13);
    (*(v14 + 16))(v17, v19, v13);
    v30 = sub_26BB7C428();
    v58 = v31;
    v59 = v30;
    sub_26BB7C438();
    v28 = v32;
    sub_26BB7C418();
    v29 = v33;
    v26(v17, v13);
    v26(v19, v13);
    sub_26BB444C4(v57, &qword_28043A0F0, MEMORY[0x277D69668]);
  }

  v34 = v17;
  v36 = v63;
  v35 = v64;
  sub_26BB7C458();
  v37 = v60;
  sub_26BB44398(v36, v60, &qword_28043A0F0, MEMORY[0x277D69668]);
  if (v56(v37, 1, v13) == 1)
  {
    v38 = sub_26BB7C468();
    (*(*(v38 - 8) + 8))(v35, v38);
    result = sub_26BB444C4(v36, &qword_28043A0F0, MEMORY[0x277D69668]);
    v40 = 0;
    v41 = 0uLL;
    v42 = 0xF000000000000000;
  }

  else
  {
    v43 = v53;
    (*(v53 + 32))(v19, v37, v13);
    (*(v43 + 16))(v17, v19, v13);
    v44 = v35;
    v40 = sub_26BB7C428();
    v42 = v45;
    sub_26BB7C438();
    v60 = v46;
    sub_26BB7C418();
    v57 = v47;
    v48 = sub_26BB7C468();
    (*(*(v48 - 8) + 8))(v44, v48);
    v49 = v54;
    v54(v34, v13);
    v49(v19, v13);
    result = sub_26BB444C4(v36, &qword_28043A0F0, MEMORY[0x277D69668]);
    *&v41 = v60;
    *(&v41 + 1) = v57;
  }

  v50 = v61;
  v51 = v55;
  *v55 = v62;
  v51[1] = v50;
  v51[2] = v23;
  v51[3] = v25;
  v52 = v58;
  v51[4] = v59;
  v51[5] = v52;
  v51[6] = v28;
  v51[7] = v29;
  v51[8] = v40;
  v51[9] = v42;
  *(v51 + 5) = v41;
  return result;
}

BOOL _s9StocksKit10DataSourceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_26BB7BDB8();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC9260];
  sub_26BB3F0A4(0, &qword_28158C328, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v47 - v8;
  sub_26BB44404(0, &qword_28043A0F8, &qword_28158C328, v6);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v47 - v10;
  v11 = type metadata accessor for DataSource.Logo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB3F0A4(0, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  sub_26BB44404(0, &qword_28043A100, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  v19 = v18;
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v22 = *a1;
  v23 = a1[1];
  v24 = *a2;
  v25 = a2[1];
  v54 = a2;
  if ((v22 != v24 || v23 != v25) && (sub_26BB7D378() & 1) == 0)
  {
    return 0;
  }

  v48 = v4;
  v47 = type metadata accessor for DataSource(0);
  v26 = *(v47 + 20);
  v27 = *(v19 + 48);
  sub_26BB44398(a1 + v26, v21, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  sub_26BB44398(v54 + v26, &v21[v27], qword_28158BEB8, type metadata accessor for DataSource.Logo);
  v28 = *(v12 + 48);
  if (v28(v21, 1, v11) != 1)
  {
    sub_26BB44398(v21, v17, qword_28158BEB8, type metadata accessor for DataSource.Logo);
    if (v28(&v21[v27], 1, v11) != 1)
    {
      sub_26BB42E38(&v21[v27], v14);
      v33 = MEMORY[0x26D68D2D0](v17, v14);
      sub_26BB42F08(v14, type metadata accessor for DataSource.Logo);
      sub_26BB42F08(v17, type metadata accessor for DataSource.Logo);
      sub_26BB444C4(v21, qword_28158BEB8, type metadata accessor for DataSource.Logo);
      if ((v33 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    sub_26BB42F08(v17, type metadata accessor for DataSource.Logo);
LABEL_9:
    v29 = &qword_28043A100;
    v30 = qword_28158BEB8;
    v31 = type metadata accessor for DataSource.Logo;
    v32 = v21;
LABEL_17:
    sub_26BB44468(v32, v29, v30, v31);
    return 0;
  }

  if (v28(&v21[v27], 1, v11) != 1)
  {
    goto LABEL_9;
  }

  sub_26BB444C4(v21, qword_28158BEB8, type metadata accessor for DataSource.Logo);
LABEL_11:
  v34 = *(v47 + 24);
  v35 = *(v51 + 48);
  v36 = MEMORY[0x277CC9260];
  v37 = a1 + v34;
  v38 = v52;
  sub_26BB44398(v37, v52, &qword_28158C328, MEMORY[0x277CC9260]);
  sub_26BB44398(v54 + v34, v38 + v35, &qword_28158C328, v36);
  v39 = v53;
  v40 = *(v53 + 48);
  v41 = v48;
  if (v40(v38, 1, v48) == 1)
  {
    if (v40(v38 + v35, 1, v41) == 1)
    {
      sub_26BB444C4(v38, &qword_28158C328, MEMORY[0x277CC9260]);
      return 1;
    }

    goto LABEL_16;
  }

  v42 = v50;
  sub_26BB44398(v38, v50, &qword_28158C328, MEMORY[0x277CC9260]);
  if (v40(v38 + v35, 1, v41) == 1)
  {
    (*(v39 + 8))(v42, v41);
LABEL_16:
    v29 = &qword_28043A0F8;
    v30 = &qword_28158C328;
    v31 = MEMORY[0x277CC9260];
    v32 = v38;
    goto LABEL_17;
  }

  v44 = v49;
  (*(v39 + 32))(v49, v38 + v35, v41);
  sub_26BB42DF0(&qword_28043A108, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v45 = sub_26BB7CD28();
  v46 = *(v39 + 8);
  v46(v44, v41);
  v46(v42, v41);
  sub_26BB444C4(v38, &qword_28158C328, MEMORY[0x277CC9260]);
  return (v45 & 1) != 0;
}

unint64_t sub_26BB42D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BF20;
  if (!qword_28158BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF20);
  }

  return result;
}

uint64_t sub_26BB42DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BB42E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Logo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB42E9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26BB3F0A4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BB42F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BB42F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BF08;
  if (!qword_28158BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF08);
  }

  return result;
}

unint64_t sub_26BB42FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280439FE8;
  if (!qword_280439FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280439FE8);
  }

  return result;
}

uint64_t sub_26BB43010(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26BB43064(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BB43010(result, a2);
  }

  return result;
}

unint64_t sub_26BB430B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A000;
  if (!qword_28043A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A000);
  }

  return result;
}

unint64_t sub_26BB43104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A008;
  if (!qword_28043A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A008);
  }

  return result;
}

uint64_t sub_26BB43158(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BB3C9C8(result, a2);
  }

  return result;
}

unint64_t sub_26BB4316C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A018;
  if (!qword_28043A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A018);
  }

  return result;
}

unint64_t sub_26BB431F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A028;
  if (!qword_28043A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A028);
  }

  return result;
}

unint64_t sub_26BB43244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A030;
  if (!qword_28043A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A030);
  }

  return result;
}

unint64_t sub_26BB43298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A040;
  if (!qword_28043A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A040);
  }

  return result;
}

unint64_t sub_26BB432EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A050;
  if (!qword_28043A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A050);
  }

  return result;
}

unint64_t sub_26BB43340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A058;
  if (!qword_28043A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A058);
  }

  return result;
}

void sub_26BB43394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_26BB433FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A068;
  if (!qword_28043A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A068);
  }

  return result;
}

void sub_26BB43508(uint64_t a1)
{
  sub_26BB3F0A4(319, qword_28158BEB8, type metadata accessor for DataSource.Logo);
  if (v1 <= 0x3F)
  {
    sub_26BB3F0A4(319, &qword_28158C328, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BB435FC(uint64_t a1)
{
  result = sub_26BB7C3D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_9StocksKit10DataSourceV14DownloadedLogoV7VariantVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_26BB436E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
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

uint64_t sub_26BB4373C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BB437C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_26BB43814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StocksKitServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StocksKitServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB43A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A080;
  if (!qword_28043A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A080);
  }

  return result;
}

unint64_t sub_26BB43A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A088;
  if (!qword_28043A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A088);
  }

  return result;
}

unint64_t sub_26BB43AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A090;
  if (!qword_28043A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A090);
  }

  return result;
}

unint64_t sub_26BB43B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A098;
  if (!qword_28043A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A098);
  }

  return result;
}

unint64_t sub_26BB43B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0A0;
  if (!qword_28043A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0A0);
  }

  return result;
}

unint64_t sub_26BB43BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0A8;
  if (!qword_28043A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0A8);
  }

  return result;
}

unint64_t sub_26BB43C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0B0;
  if (!qword_28043A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0B0);
  }

  return result;
}

unint64_t sub_26BB43C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0B8;
  if (!qword_28043A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0B8);
  }

  return result;
}

unint64_t sub_26BB43CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0C0;
  if (!qword_28043A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0C0);
  }

  return result;
}

unint64_t sub_26BB43D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0C8;
  if (!qword_28043A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0C8);
  }

  return result;
}

unint64_t sub_26BB43D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0D0;
  if (!qword_28043A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0D0);
  }

  return result;
}

unint64_t sub_26BB43DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0D8;
  if (!qword_28043A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0D8);
  }

  return result;
}

unint64_t sub_26BB43E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0E0;
  if (!qword_28043A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0E0);
  }

  return result;
}

unint64_t sub_26BB43E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A0E8;
  if (!qword_28043A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A0E8);
  }

  return result;
}

unint64_t sub_26BB43EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BEF8;
  if (!qword_28158BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BEF8);
  }

  return result;
}

unint64_t sub_26BB43F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BF00;
  if (!qword_28158BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF00);
  }

  return result;
}

unint64_t sub_26BB43F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BF10;
  if (!qword_28158BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF10);
  }

  return result;
}

unint64_t sub_26BB43FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158BF18;
  if (!qword_28158BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BF18);
  }

  return result;
}

uint64_t sub_26BB44044(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t sub_26BB44160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t sub_26BB44274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446567616D69 && a2 == 0xE900000000000061;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026BB83300 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26BB7D378();

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

uint64_t sub_26BB44398(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26BB3F0A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_26BB44404(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_26BB3F0A4(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_26BB44468(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26BB44404(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_26BB444C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB3F0A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB4456C(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_26BB7C878();
  MEMORY[0x28223BE20](v4);
  v5 = 0;
  v6 = *(a1 + 32);
  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 16);
    *atoken.val = *a1;
    *&atoken.val[4] = v7;
    v8 = audit_token_to_pid(&atoken);
    v9 = *(a1 + 16);
    *atoken.val = *a1;
    *&atoken.val[4] = v9;
    v5 = v8 | (audit_token_to_pidversion(&atoken) << 32);
  }

  *atoken.val = v5;
  LOBYTE(atoken.val[2]) = v6 & 1;
  sub_26BB7CB18();
  v10 = v31;
  if (v31)
  {
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v11 = sub_26BB7CB88();
    __swift_project_value_buffer(v11, qword_28158F140);
    v12 = sub_26BB7CB68();
    v13 = sub_26BB7CF78();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      if (*(a1 + 32))
      {
        v15 = 0;
      }

      else
      {
        v21 = *(a1 + 16);
        *atoken.val = *a1;
        *&atoken.val[4] = v21;
        v15 = audit_token_to_pid(&atoken);
      }

      *(v14 + 4) = v15;
      _os_log_impl(&dword_26BB21000, v12, v13, "Reusing URLSession for pid: %d", v14, 8u);
      MEMORY[0x26D68EA90](v14, -1, -1);
    }
  }

  else
  {
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v16 = sub_26BB7CB88();
    __swift_project_value_buffer(v16, qword_28158F140);
    v17 = sub_26BB7CB68();
    v18 = sub_26BB7CF78();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      if (*(a1 + 32))
      {
        v20 = 0;
      }

      else
      {
        v22 = *(a1 + 16);
        *atoken.val = *a1;
        *&atoken.val[4] = v22;
        v20 = audit_token_to_pid(&atoken);
      }

      *(v19 + 4) = v20;
      _os_log_impl(&dword_26BB21000, v17, v18, "Storing URLSession for pid: %d", v19, 8u);
      MEMORY[0x26D68EA90](v19, -1, -1);
    }

    v23 = swift_allocObject();
    v24 = *(a1 + 16);
    *(v23 + 16) = *a1;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(a1 + 32);
    *atoken.val = MEMORY[0x277D84F90];
    sub_26BB44CA4();
    sub_26BB44D84(0, &qword_28158BBB0, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    sub_26BB44CFC();
    sub_26BB7D028();
    sub_26BB44D84(0, &unk_28158B9A8, sub_26BB44DE8, MEMORY[0x277D6CEE8]);
    swift_allocObject();
    v10 = sub_26BB7C9F8();
    v25 = 0;
    v31 = v10;
    v26 = *(a1 + 32);
    if ((v26 & 1) == 0)
    {
      v27 = *(a1 + 16);
      *atoken.val = *a1;
      *&atoken.val[4] = v27;
      v28 = audit_token_to_pid(&atoken);
      v29 = *(a1 + 16);
      *atoken.val = *a1;
      *&atoken.val[4] = v29;
      v25 = v28 | (audit_token_to_pidversion(&atoken) << 32);
    }

    *atoken.val = v25;
    LOBYTE(atoken.val[2]) = v26 & 1;
    sub_26BB7CAE8();
  }

  *a2 = v10;
}

void sub_26BB4499C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v4 = sub_26BB7CB88();
  __swift_project_value_buffer(v4, qword_28158F140);
  v5 = sub_26BB7CB68();
  v6 = sub_26BB7CF78();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    if (*(a1 + 32))
    {
      v8 = 0;
    }

    else
    {
      v9 = *(a1 + 16);
      *v17.val = *a1;
      *&v17.val[4] = v9;
      v8 = audit_token_to_pid(&v17);
    }

    *(v7 + 4) = v8;
    _os_log_impl(&dword_26BB21000, v5, v6, "Creating URLSession for pid: %d", v7, 8u);
    MEMORY[0x26D68EA90](v7, -1, -1);
  }

  v10 = [objc_opt_self() defaultSessionConfiguration];
  [v10 setURLCache_];
  [v10 set:objc_msgSend(v10 timingDataOptions:sel__timingDataOptions) | 1];
  if ((*(a1 + 32) & 1) == 0)
  {
    v11 = *(a1 + 16);
    *v17.val = *a1;
    *&v17.val[4] = v11;
    v12 = sub_26BB44EEC(&v17, 0x20uLL);
    v14 = v13;
    v15 = sub_26BB7BDE8();
    sub_26BB3C9C8(v12, v14);
    [v10 set:v15 sourceApplicationAuditTokenData:?];
  }

  v16 = [objc_opt_self() sessionWithConfiguration_];

  *a2 = v16;
}

void sub_26BB44BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26BB7C9E8();
  sub_26BB7CF48();
}

void sub_26BB44C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26BB7C9E8();
  sub_26BB7CF58();
}

unint64_t sub_26BB44CA4()
{
  result = qword_28158C308;
  if (!qword_28158C308)
  {
    sub_26BB7C878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C308);
  }

  return result;
}

unint64_t sub_26BB44CFC()
{
  result = qword_28158BBA8;
  if (!qword_28158BBA8)
  {
    sub_26BB44D84(255, &qword_28158BBB0, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158BBA8);
  }

  return result;
}

void sub_26BB44D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26BB44DE8()
{
  result = qword_28158B248;
  if (!qword_28158B248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28158B248);
  }

  return result;
}

uint64_t sub_26BB44E34(_BYTE *__src, _BYTE *a2)
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

unint64_t sub_26BB44EEC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_26BB44E34(a1, &a1[a2]);
  }

  sub_26BB7BD98();
  swift_allocObject();
  sub_26BB7BD88();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_26BB7BDD8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t StockSearchResult.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StockSearchResult(0) + 20);

  return sub_26BB3BFE0(v3, a1);
}

uint64_t type metadata accessor for StockSearchResult(uint64_t a1)
{
  result = qword_28043A110;
  if (!qword_28043A110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BB4505C(uint64_t a1)
{
  sub_26BB450E0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DataSource(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BB450E0()
{
  if (!qword_28043A120)
  {
    v0 = sub_26BB7CE38();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A120);
    }
  }
}

uint64_t sub_26BB45130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26BB7C238();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_26BB7C6D8();
  v42 = v8;
  v41 = sub_26BB7C5D8();
  v40 = v9;
  v39 = sub_26BB7C698();
  v38 = v10;
  v37 = sub_26BB7C648();
  v36 = v11;
  v35 = sub_26BB7C6B8();
  v34 = v12;
  v33 = sub_26BB7C638();
  v32 = v13;
  v31 = sub_26BB7C6A8();
  v30 = v14;
  v29 = sub_26BB7C5E8();
  v16 = v15;
  sub_26BB7C618();
  v17 = (*(v5 + 88))(v7, v4);
  if (v17 != *MEMORY[0x277D69298])
  {
    if (v17 == *MEMORY[0x277D69288])
    {
      v18 = 1;
      goto LABEL_11;
    }

    if (v17 == *MEMORY[0x277D69290])
    {
      v18 = 2;
      goto LABEL_11;
    }

    if (v17 == *MEMORY[0x277D692A0])
    {
      v18 = 3;
      goto LABEL_11;
    }

    if (v17 == *MEMORY[0x277D69280])
    {
      v18 = 4;
      goto LABEL_11;
    }

    (*(v5 + 8))(v7, v4);
  }

  v18 = 0;
LABEL_11:
  v19 = type metadata accessor for Quote(0);
  sub_26BB7C5F8();
  sub_26BB7C608();
  sub_26BB7C668();
  sub_26BB45E30(MEMORY[0x277D697E0], &v46);
  v20 = v46;
  sub_26BB45E30(MEMORY[0x277D697F0], &v45);
  v21 = v45;
  sub_26BB45E30(MEMORY[0x277D697E8], &v44);
  v22 = v44;
  v23 = sub_26BB7C6C8();
  v25 = v24;
  sub_26BB7C688();
  sub_26BB7C658();
  sub_26BB7C678();
  sub_26BB7C628();
  v26 = sub_26BB7C6E8();
  result = (*(*(v26 - 8) + 8))(a1, v26);
  *a2 = v43;
  *(a2 + 8) = v42 & 1;
  *(a2 + 16) = v41;
  *(a2 + 24) = v40 & 1;
  *(a2 + 32) = v39;
  *(a2 + 40) = v38 & 1;
  *(a2 + 48) = v37;
  *(a2 + 56) = v36 & 1;
  *(a2 + 64) = v35;
  *(a2 + 72) = v34 & 1;
  *(a2 + 80) = v33;
  *(a2 + 88) = v32 & 1;
  *(a2 + 96) = v31;
  *(a2 + 104) = v30 & 1;
  *(a2 + 112) = v29;
  *(a2 + 120) = v16;
  *(a2 + 128) = v18;
  *(a2 + v19[16]) = v20;
  *(a2 + v19[17]) = v21;
  *(a2 + v19[18]) = v22;
  v28 = a2 + v19[19];
  *v28 = v23;
  *(v28 + 8) = v25 & 1;
  return result;
}

uint64_t sub_26BB454F4()
{
  v1 = *v0;
  v2 = 0x44636972656E6567;
  v3 = 0x52636972656E6567;
  if (v1 != 5)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x52544B4D6573796ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x655271616473616ELL;
  if (v1 != 1)
  {
    v5 = 0x6C6165526573796ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

StocksKit::Quote::Source_optional __swiftcall Quote.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26BB7D1F8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26BB45674(uint64_t a1)
{
  sub_26BB7CD88();
}

void sub_26BB457D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00646579616C65;
  v4 = 0x44636972656E6567;
  v5 = 0x52636972656E6567;
  v6 = 0xEF656D69746C6165;
  if (v2 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  v7 = 0x800000026BB82CB0;
  v8 = 0xD000000000000010;
  if (v2 != 3)
  {
    v8 = 0x52544B4D6573796ELL;
    v7 = 0xEF656D69746C6165;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEE00656D69746C61;
  v10 = 0x655271616473616ELL;
  if (v2 != 1)
  {
    v10 = 0x6C6165526573796ELL;
    v9 = 0xEC000000656D6974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t Quote.currencyCode.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Quote.exchangeOpen.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote(0) + 52);

  return sub_26BB45ACC(v3, a1);
}

uint64_t type metadata accessor for Quote(uint64_t a1)
{
  result = qword_28043A188;
  if (!qword_28043A188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BB45ACC(uint64_t a1, uint64_t a2)
{
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Quote.exchangeClose.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote(0) + 56);

  return sub_26BB45ACC(v3, a1);
}

uint64_t Quote.exchangeNextOpen.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote(0) + 60);

  return sub_26BB45ACC(v3, a1);
}

uint64_t Quote.priceSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t Quote.afterHoursSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t Quote.preMarketSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Quote(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t Quote.earningsStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote(0) + 80);

  return sub_26BB45ACC(v3, a1);
}

uint64_t Quote.earningsEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Quote(0) + 84);

  return sub_26BB45ACC(v3, a1);
}

uint64_t Quote.dateLastRefreshed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Quote(0) + 88);
  v4 = sub_26BB7BE48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Quote.marketTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Quote(0) + 92);
  v4 = sub_26BB7BFC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_26BB45E30@<X0>(void (*a1)(uint64_t)@<X1>, char *a2@<X8>)
{
  sub_26BB4A530(0, &qword_28043A1E0, MEMORY[0x277D691C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_26BB7C218();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v19 - v13;
  a1(v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_26BB4A594(v6, &qword_28043A1E0, MEMORY[0x277D691C0]);
    v16 = 7;
  }

  else
  {
    v17 = *(v8 + 32);
    v17(v14, v6, v7);
    v17(v11, v14, v7);
    result = (*(v8 + 88))(v11, v7);
    if (result == *MEMORY[0x277D69190])
    {
      v16 = 0;
    }

    else if (result == *MEMORY[0x277D69198] || result == *MEMORY[0x277D69188])
    {
      v16 = 1;
    }

    else if (result == *MEMORY[0x277D691B0])
    {
      v16 = 3;
    }

    else if (result == *MEMORY[0x277D691A8])
    {
      v16 = 4;
    }

    else if (result == *MEMORY[0x277D691A0])
    {
      v16 = 5;
    }

    else
    {
      if (result != *MEMORY[0x277D691B8])
      {
        result = (*(v8 + 8))(v11, v7);
      }

      v16 = 6;
    }
  }

  *a2 = v16;
  return result;
}

unint64_t sub_26BB46104(char a1)
{
  result = 0x6563697270;
  switch(a1)
  {
    case 1:
      result = 0x6168436563697270;
      break;
    case 2:
    case 6:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x756F487265746661;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 14:
      result = 0x656B72614D657270;
      break;
    case 7:
      result = 0x79636E6572727563;
      break;
    case 8:
    case 9:
    case 10:
      result = 0x65676E6168637865;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x756F536563697270;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
    case 18:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x73676E696E726165;
      break;
    case 19:
      result = 0x695474656B72616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BB46360@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BB49D88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BB46394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB4942C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB463D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB4942C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Quote.encode(to:)(void *a1)
{
  v3 = v1;
  sub_26BB49528(0, &qword_28043A130, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB4942C(v10, v11, v12);
  sub_26BB7D488();
  v23 = 0;
  sub_26BB7D2D8();
  if (!v2)
  {
    v23 = 1;
    sub_26BB7D2D8();
    v23 = 2;
    sub_26BB7D2D8();
    v23 = 3;
    sub_26BB7D2D8();
    v23 = 4;
    sub_26BB7D2D8();
    v23 = 5;
    sub_26BB7D2D8();
    v23 = 6;
    sub_26BB7D2D8();
    v23 = 7;
    v14 = sub_26BB7D2C8();
    v23 = *(v3 + 128);
    v22 = 8;
    sub_26BB49480(v14, v15, v16);
    sub_26BB7D328();
    v17 = type metadata accessor for Quote(0);
    v23 = 9;
    sub_26BB7BE48();
    sub_26BB4A4E8(&qword_28158BB28, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26BB7D2F8();
    v23 = 10;
    sub_26BB7D2F8();
    v23 = 11;
    v18 = sub_26BB7D2F8();
    v23 = *(v3 + v17[16]);
    v22 = 12;
    v21[1] = sub_26BB494D4(v18, v19, v20);
    sub_26BB7D2F8();
    v23 = *(v3 + v17[17]);
    v22 = 13;
    sub_26BB7D2F8();
    v23 = *(v3 + v17[18]);
    v22 = 14;
    sub_26BB7D2F8();
    v23 = 15;
    sub_26BB7D2D8();
    v23 = 16;
    sub_26BB7D2F8();
    v23 = 17;
    sub_26BB7D2F8();
    v23 = 18;
    sub_26BB7D328();
    v23 = 19;
    sub_26BB7BFC8();
    sub_26BB4A4E8(&qword_28043A150, MEMORY[0x277CC9A70], MEMORY[0x277CC9A78]);
    sub_26BB7D328();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t Quote.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v73 = sub_26BB7BFC8();
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v74 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_26BB7BE48();
  v70 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v71 = &v68 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v68 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v68 - v16;
  sub_26BB49528(0, &qword_28043A158, MEMORY[0x277D844C8]);
  v80 = v18;
  v78 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for Quote(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v82 = a1;
  v25 = __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_26BB4942C(v25, v26, v27);
  v81 = v20;
  v28 = v83;
  sub_26BB7D478();
  if (v28)
  {
    v83 = v28;
    return __swift_destroy_boxed_opaque_existential_1Tm(v82);
  }

  v29 = v17;
  v69 = v15;
  v30 = v78;
  v31 = v79;
  v85 = 0;
  v32 = v23;
  *v23 = sub_26BB7D238();
  v23[8] = v33 & 1;
  v85 = 1;
  *(v23 + 2) = sub_26BB7D238();
  v23[24] = v34 & 1;
  v85 = 2;
  *(v23 + 4) = sub_26BB7D238();
  v23[40] = v35 & 1;
  v85 = 3;
  *(v23 + 6) = sub_26BB7D238();
  v23[56] = v36 & 1;
  v85 = 4;
  *(v23 + 8) = sub_26BB7D238();
  v23[72] = v37 & 1;
  v85 = 5;
  *(v23 + 10) = sub_26BB7D238();
  v23[88] = v38 & 1;
  v85 = 6;
  *(v23 + 12) = sub_26BB7D238();
  v23[104] = v40 & 1;
  v85 = 7;
  v41 = sub_26BB7D228();
  v83 = 0;
  *(v23 + 14) = v41;
  *(v23 + 15) = v42;
  v84 = 8;
  sub_26BB4958C(v41, v42, v43);
  v44 = v83;
  sub_26BB7D288();
  v83 = v44;
  if (v44)
  {
    (*(v30 + 8))(v81, v80);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  else
  {
    v23[128] = v85;
    v85 = 9;
    sub_26BB4A4E8(&qword_28158BB20, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v50 = v83;
    sub_26BB7D258();
    v83 = v50;
    if (v50)
    {
      (*(v30 + 8))(v81, v80);
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
    }

    else
    {
      sub_26BB495E0(v29, &v23[v21[13]]);
      v85 = 10;
      v51 = v83;
      sub_26BB7D258();
      v83 = v51;
      if (v51)
      {
        (*(v30 + 8))(v81, v80);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v45 = 1;
      }

      else
      {
        sub_26BB495E0(v69, &v23[v21[14]]);
        v85 = 11;
        v52 = v83;
        sub_26BB7D258();
        v83 = v52;
        if (v52)
        {
          (*(v30 + 8))(v81, v80);
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v45 = 1;
          v46 = 1;
        }

        else
        {
          v53 = sub_26BB495E0(v12, &v23[v21[15]]);
          v84 = 12;
          sub_26BB49674(v53, v54, v55);
          v56 = v83;
          sub_26BB7D258();
          v83 = v56;
          if (v56 || (v23[v21[16]] = v85, v84 = 13, v57 = v83, sub_26BB7D258(), (v83 = v57) != 0) || (v23[v21[17]] = v85, v84 = 14, v58 = v83, sub_26BB7D258(), (v83 = v58) != 0) || (v23[v21[18]] = v85, v85 = 15, v59 = v83, v60 = sub_26BB7D238(), (v83 = v59) != 0) || (v62 = &v23[v21[19]], *v62 = v60, v62[8] = v61 & 1, v85 = 16, v63 = v83, sub_26BB7D258(), (v83 = v63) != 0))
          {
            (*(v30 + 8))(v81, v80);
            v48 = 0;
            v49 = 0;
            v45 = 1;
            v46 = 1;
            v47 = 1;
          }

          else
          {
            sub_26BB495E0(v71, &v23[v21[20]]);
            v85 = 17;
            v64 = v83;
            sub_26BB7D258();
            v83 = v64;
            if (v64)
            {
              (*(v30 + 8))(v81, v80);
              v49 = 0;
              v45 = 1;
              v46 = 1;
              v47 = 1;
              v48 = 1;
            }

            else
            {
              sub_26BB495E0(v31, &v23[v21[21]]);
              v85 = 18;
              v65 = v83;
              sub_26BB7D288();
              v83 = v65;
              if (!v65)
              {
                (*(v70 + 32))(&v23[v21[22]], v72, v77);
                v85 = 19;
                sub_26BB4A4E8(&qword_28043A170, MEMORY[0x277CC9A70], MEMORY[0x277CC9A90]);
                v66 = v83;
                sub_26BB7D288();
                v83 = v66;
                (*(v30 + 8))(v81, v80);
                if (v66)
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v82);

                  v67 = MEMORY[0x277CC9578];
                  sub_26BB4A594(&v23[v21[13]], &qword_28043A128, MEMORY[0x277CC9578]);
                  sub_26BB4A594(&v23[v21[14]], &qword_28043A128, v67);
                  sub_26BB4A594(&v23[v21[15]], &qword_28043A128, v67);
                  sub_26BB4A594(&v23[v21[20]], &qword_28043A128, v67);
                  sub_26BB4A594(&v23[v21[21]], &qword_28043A128, v67);
                  return (*(v70 + 8))(&v23[v21[22]], v77);
                }

                else
                {
                  (*(v75 + 32))(&v23[v21[23]], v74, v73);
                  sub_26BB496C8(v23, v76);
                  __swift_destroy_boxed_opaque_existential_1Tm(v82);
                  return sub_26BB4972C(v23, type metadata accessor for Quote);
                }
              }

              (*(v30 + 8))(v81, v80);
              v45 = 1;
              v46 = 1;
              v47 = 1;
              v48 = 1;
              v49 = 1;
            }
          }
        }
      }
    }

    v32 = v23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v82);

  if (v45)
  {
    result = sub_26BB4A594(&v32[v21[13]], &qword_28043A128, MEMORY[0x277CC9578]);
    if ((v46 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (!v46)
  {
LABEL_22:
    if (v47)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  result = sub_26BB4A594(&v32[v21[14]], &qword_28043A128, MEMORY[0x277CC9578]);
  if (v47)
  {
LABEL_23:
    result = sub_26BB4A594(&v32[v21[15]], &qword_28043A128, MEMORY[0x277CC9578]);
    if ((v48 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v48)
  {
LABEL_24:
    if (v49)
    {
      return sub_26BB4A594(&v32[v21[21]], &qword_28043A128, MEMORY[0x277CC9578]);
    }

    return result;
  }

LABEL_29:
  result = sub_26BB4A594(&v32[v21[20]], &qword_28043A128, MEMORY[0x277CC9578]);
  if (v49)
  {
    return sub_26BB4A594(&v32[v21[21]], &qword_28043A128, MEMORY[0x277CC9578]);
  }

  return result;
}

uint64_t Quote.description.getter()
{
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v152 = v1;
  MEMORY[0x28223BE20](v1);
  v151 = &v150 - v2;
  v154 = 0;
  v155 = 0xE000000000000000;
  v3 = MEMORY[0x277D839F8];
  v4 = MEMORY[0x277D83A80];
  if (v0[1])
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v7 = *v0;
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26BB7FDA0;
    *(v8 + 56) = v3;
    *(v8 + 64) = v4;
    *(v8 + 32) = v7;
    v6 = sub_26BB7CD58();
    v5 = v9;
  }

  MEMORY[0x26D68DCA0](v6, v5);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v10 = v154;
  v11 = v155;
  v154 = 0x2865746F7551;
  v155 = 0xE600000000000000;
  MEMORY[0x26D68DCA0](v10, v11);

  v12 = v154;
  v13 = v155;
  v154 = 0;
  v155 = 0xE000000000000000;
  if (v0[3])
  {
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    v16 = v0[2];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26BB7FDA0;
    *(v17 + 56) = v3;
    *(v17 + 64) = v4;
    *(v17 + 32) = v16;
    v15 = sub_26BB7CD58();
    v14 = v18;
  }

  MEMORY[0x26D68DCA0](v15, v14);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v19 = v154;
  v20 = v155;
  v154 = v12;
  v155 = v13;

  MEMORY[0x26D68DCA0](v19, v20);

  v21 = v154;
  v22 = v155;
  v154 = 0;
  v155 = 0xE000000000000000;
  if (v0[5])
  {
    v23 = 0xE300000000000000;
    v24 = 7104878;
  }

  else
  {
    v25 = v0[4];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26BB7FDA0;
    *(v26 + 56) = v3;
    *(v26 + 64) = v4;
    *(v26 + 32) = v25;
    v24 = sub_26BB7CD58();
    v23 = v27;
  }

  MEMORY[0x26D68DCA0](v24, v23);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v28 = v154;
  v29 = v155;
  v154 = v21;
  v155 = v22;

  MEMORY[0x26D68DCA0](v28, v29);

  v30 = v154;
  v31 = v155;
  v154 = 0;
  v155 = 0xE000000000000000;
  if (v0[7])
  {
    v32 = 0xE300000000000000;
    v33 = 7104878;
  }

  else
  {
    v34 = v0[6];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_26BB7FDA0;
    *(v35 + 56) = v3;
    *(v35 + 64) = v4;
    *(v35 + 32) = v34;
    v33 = sub_26BB7CD58();
    v32 = v36;
  }

  MEMORY[0x26D68DCA0](v33, v32);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v37 = v154;
  v38 = v155;
  v154 = v30;
  v155 = v31;

  MEMORY[0x26D68DCA0](v37, v38);

  v39 = v154;
  v40 = v155;
  v154 = 0;
  v155 = 0xE000000000000000;
  if (v0[9])
  {
    v41 = 0xE300000000000000;
    v42 = 7104878;
  }

  else
  {
    v43 = v0[8];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_26BB7FDA0;
    *(v44 + 56) = v3;
    *(v44 + 64) = v4;
    *(v44 + 32) = v43;
    v42 = sub_26BB7CD58();
    v41 = v45;
  }

  MEMORY[0x26D68DCA0](v42, v41);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v46 = v154;
  v47 = v155;
  v154 = v39;
  v155 = v40;

  MEMORY[0x26D68DCA0](v46, v47);

  v48 = v154;
  v49 = v155;
  v154 = 0;
  v155 = 0xE000000000000000;
  if (v0[11])
  {
    v50 = 0xE300000000000000;
    v51 = 7104878;
  }

  else
  {
    v52 = v0[10];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_26BB7FDA0;
    *(v53 + 56) = v3;
    *(v53 + 64) = v4;
    *(v53 + 32) = v52;
    v51 = sub_26BB7CD58();
    v50 = v54;
  }

  MEMORY[0x26D68DCA0](v51, v50);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v55 = v154;
  v56 = v155;
  v154 = v48;
  v155 = v49;

  MEMORY[0x26D68DCA0](v55, v56);

  v57 = v154;
  v58 = v155;
  v154 = 0;
  v155 = 0xE000000000000000;
  if (v0[13])
  {
    v59 = 0xE300000000000000;
    v60 = 7104878;
  }

  else
  {
    v61 = v0[12];
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_26BB7FDA0;
    *(v62 + 56) = v3;
    *(v62 + 64) = v4;
    *(v62 + 32) = v61;
    v60 = sub_26BB7CD58();
    v59 = v63;
  }

  MEMORY[0x26D68DCA0](v60, v59);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v64 = v154;
  v65 = v155;
  v154 = v57;
  v155 = v58;

  MEMORY[0x26D68DCA0](v64, v65);

  v66 = v154;
  v67 = v155;
  v154 = 0;
  v155 = 0xE000000000000000;
  if (v0[15])
  {
    v68 = v0[14];
    v69 = v0[15];
  }

  else
  {
    v69 = 0xE300000000000000;
    v68 = 7104878;
  }

  MEMORY[0x26D68DCA0](v68, v69);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v70 = v154;
  v71 = v155;
  v154 = v66;
  v155 = v67;

  MEMORY[0x26D68DCA0](v70, v71);

  v72 = v154;
  v73 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  v153 = *(v0 + 128);
  v74 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v74);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v75 = v154;
  v76 = v155;
  v154 = v72;
  v155 = v73;

  MEMORY[0x26D68DCA0](v75, v76);

  v77 = v154;
  v78 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  v79 = type metadata accessor for Quote(0);
  v80 = v151;
  sub_26BB45ACC(v0 + v79[13], v151);
  v81 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v81);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v82 = v154;
  v83 = v155;
  v154 = v77;
  v155 = v78;

  MEMORY[0x26D68DCA0](v82, v83);

  v84 = v154;
  v85 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  sub_26BB45ACC(v0 + v79[14], v80);
  v86 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v86);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v87 = v154;
  v88 = v155;
  v154 = v84;
  v155 = v85;

  MEMORY[0x26D68DCA0](v87, v88);

  v89 = v154;
  v90 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  sub_26BB45ACC(v0 + v79[15], v80);
  v91 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v91);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v92 = v154;
  v93 = v155;
  v154 = v89;
  v155 = v90;

  MEMORY[0x26D68DCA0](v92, v93);

  v94 = v154;
  v95 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  v96 = *(v0 + v79[16]);
  if (v96 > 3)
  {
    if (*(v0 + v79[16]) > 5u)
    {
      v97 = &unk_26BB7F000;
      if (v96 == 6)
      {
        v99 = 0xE700000000000000;
        v98 = 0x6E776F6E6B6E75;
      }

      else
      {
        v99 = 0xE300000000000000;
        v98 = 7104878;
      }
    }

    else
    {
      v97 = &unk_26BB7F000;
      if (v96 == 4)
      {
        v98 = 0x52544B4D6573796ELL;
      }

      else
      {
        v98 = 0x52636972656E6567;
      }

      v99 = 0xEF656D69746C6165;
    }
  }

  else if (*(v0 + v79[16]) > 1u)
  {
    v97 = &unk_26BB7F000;
    if (v96 == 2)
    {
      v98 = 0x6C6165526573796ELL;
      v99 = 0xEC000000656D6974;
    }

    else
    {
      v98 = 0xD000000000000010;
      v99 = 0x800000026BB82CB0;
    }
  }

  else
  {
    v97 = &unk_26BB7F000;
    if (*(v0 + v79[16]))
    {
      v98 = 0x655271616473616ELL;
      v99 = 0xEE00656D69746C61;
    }

    else
    {
      v98 = 0x44636972656E6567;
      v99 = 0xEE00646579616C65;
    }
  }

  MEMORY[0x26D68DCA0](v98, v99);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v100 = v154;
  v101 = v155;
  v154 = v94;
  v155 = v95;

  MEMORY[0x26D68DCA0](v100, v101);

  v102 = v154;
  v103 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  v104 = *(v0 + v79[17]);
  if (v104 > 3)
  {
    if (*(v0 + v79[17]) > 5u)
    {
      if (v104 == 6)
      {
        v106 = 0xE700000000000000;
        v105 = 0x6E776F6E6B6E75;
      }

      else
      {
        v106 = 0xE300000000000000;
        v105 = 7104878;
      }
    }

    else
    {
      if (v104 == 4)
      {
        v105 = 0x52544B4D6573796ELL;
      }

      else
      {
        v105 = 0x52636972656E6567;
      }

      v106 = 0xEF656D69746C6165;
    }
  }

  else if (*(v0 + v79[17]) > 1u)
  {
    if (v104 == 2)
    {
      v105 = 0x6C6165526573796ELL;
      v106 = 0xEC000000656D6974;
    }

    else
    {
      v105 = 0xD000000000000010;
      v106 = 0x800000026BB82CB0;
    }
  }

  else if (*(v0 + v79[17]))
  {
    v105 = 0x655271616473616ELL;
    v106 = 0xEE00656D69746C61;
  }

  else
  {
    v105 = 0x44636972656E6567;
    v106 = 0xEE00646579616C65;
  }

  MEMORY[0x26D68DCA0](v105, v106);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v107 = v154;
  v108 = v155;
  v154 = v102;
  v155 = v103;

  MEMORY[0x26D68DCA0](v107, v108);

  v109 = v154;
  v110 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  v111 = *(v0 + v79[18]);
  if (v111 > 3)
  {
    if (*(v0 + v79[18]) > 5u)
    {
      if (v111 == 6)
      {
        v113 = 0xE700000000000000;
        v112 = 0x6E776F6E6B6E75;
      }

      else
      {
        v113 = 0xE300000000000000;
        v112 = 7104878;
      }
    }

    else
    {
      if (v111 == 4)
      {
        v112 = 0x52544B4D6573796ELL;
      }

      else
      {
        v112 = 0x52636972656E6567;
      }

      v113 = 0xEF656D69746C6165;
    }
  }

  else if (*(v0 + v79[18]) > 1u)
  {
    if (v111 == 2)
    {
      v112 = 0x6C6165526573796ELL;
      v113 = 0xEC000000656D6974;
    }

    else
    {
      v112 = 0xD000000000000010;
      v113 = 0x800000026BB82CB0;
    }
  }

  else if (*(v0 + v79[18]))
  {
    v112 = 0x655271616473616ELL;
    v113 = 0xEE00656D69746C61;
  }

  else
  {
    v112 = 0x44636972656E6567;
    v113 = 0xEE00646579616C65;
  }

  MEMORY[0x26D68DCA0](v112, v113);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v114 = v154;
  v115 = v155;
  v154 = v109;
  v155 = v110;

  MEMORY[0x26D68DCA0](v114, v115);

  v116 = v154;
  v117 = v155;
  v154 = 0;
  v155 = 0xE000000000000000;
  v118 = (v0 + v79[19]);
  if (v118[1])
  {
    v119 = 0xE300000000000000;
    v120 = 7104878;
  }

  else
  {
    v121 = *v118;
    sub_26BB4A530(0, &qword_280439FA8, sub_26BB3EAE8, MEMORY[0x277D84560]);
    v122 = swift_allocObject();
    *(v122 + 16) = v97[218];
    *(v122 + 56) = MEMORY[0x277D839F8];
    *(v122 + 64) = MEMORY[0x277D83A80];
    *(v122 + 32) = v121;
    v120 = sub_26BB7CD58();
    v119 = v123;
  }

  MEMORY[0x26D68DCA0](v120, v119);

  MEMORY[0x26D68DCA0](8236, 0xE200000000000000);
  v124 = v154;
  v125 = v155;
  v154 = v116;
  v155 = v117;

  MEMORY[0x26D68DCA0](v124, v125);

  v127 = v154;
  v126 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  v128 = v0 + v79[20];
  v129 = v79;
  v130 = v151;
  sub_26BB45ACC(v128, v151);
  v131 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v131);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v132 = v154;
  v133 = v155;
  v154 = v127;
  v155 = v126;

  MEMORY[0x26D68DCA0](v132, v133);

  v135 = v154;
  v134 = v155;
  v154 = 46;
  v155 = 0xE100000000000000;
  sub_26BB45ACC(v0 + v129[21], v130);
  v136 = sub_26BB7CD68();
  MEMORY[0x26D68DCA0](v136);

  MEMORY[0x26D68DCA0](44, 0xE100000000000000);
  v137 = v154;
  v138 = v155;
  v154 = v135;
  v155 = v134;

  MEMORY[0x26D68DCA0](v137, v138);

  v140 = v154;
  v139 = v155;
  sub_26BB7BE48();
  sub_26BB4A4E8(&qword_28158C320, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v154 = sub_26BB7D348();
  v155 = v141;
  MEMORY[0x26D68DCA0](41, 0xE100000000000000);
  v142 = v154;
  v143 = v155;
  v154 = v140;
  v155 = v139;

  MEMORY[0x26D68DCA0](v142, v143);

  v145 = v154;
  v144 = v155;
  sub_26BB7BFC8();
  sub_26BB4A4E8(&qword_28043A178, MEMORY[0x277CC9A70], MEMORY[0x277CC9AA0]);
  v146 = sub_26BB7D348();
  v148 = v147;
  v154 = v145;
  v155 = v144;

  MEMORY[0x26D68DCA0](v146, v148);

  return v154;
}

uint64_t _s9StocksKit5QuoteV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BB7BE48();
  v100 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v99 = &v88[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v97 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v98 = &v88[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v88[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v88[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v88[-v17];
  sub_26BB4A454(0);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v88[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v88[-v25];
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v88[-v28];
  v30 = MEMORY[0x28223BE20](v27);
  v33 = &v88[-v32];
  v34 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_72;
    }
  }

  v35 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v35 = 1;
    }

    if (v35)
    {
      goto LABEL_72;
    }
  }

  v36 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v36 = 1;
    }

    if (v36)
    {
      goto LABEL_72;
    }
  }

  v37 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v37 = 1;
    }

    if (v37)
    {
      goto LABEL_72;
    }
  }

  v38 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_72;
    }
  }

  v39 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_72;
    }
  }

  v40 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_72;
    }
  }

  v41 = *(a1 + 120);
  v42 = *(a2 + 120);
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_72;
    }

    v95 = v31;
    v96 = v30;
    if ((*(a1 + 112) != *(a2 + 112) || v41 != v42) && (sub_26BB7D378() & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v95 = v31;
    v96 = v30;
    if (v42)
    {
      goto LABEL_72;
    }
  }

  if ((sub_26BB77F44(*(a1 + 128), *(a2 + 128)) & 1) == 0)
  {
    goto LABEL_72;
  }

  v91 = type metadata accessor for Quote(0);
  v43 = *(v96 + 48);
  v93 = v91[13];
  v94 = v43;
  sub_26BB45ACC(a1 + v93, v33);
  sub_26BB45ACC(a2 + v93, &v94[v33]);
  v92 = *(v100 + 48);
  v93 = v100 + 48;
  if (v92(v33, 1, v4) == 1)
  {
    if (v92(&v94[v33], 1, v4) == 1)
    {
      sub_26BB4A594(v33, &qword_28043A128, MEMORY[0x277CC9578]);
      goto LABEL_58;
    }

LABEL_56:
    v44 = v33;
LABEL_71:
    sub_26BB4972C(v44, sub_26BB4A454);
    goto LABEL_72;
  }

  sub_26BB45ACC(v33, v18);
  if (v92(&v94[v33], 1, v4) == 1)
  {
    (*(v100 + 8))(v18, v4);
    goto LABEL_56;
  }

  (*(v100 + 32))(v99, &v94[v33], v4);
  sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v89 = sub_26BB7CD28();
  v45 = *(v100 + 8);
  v90 = v100 + 8;
  v94 = v45;
  (v45)(v99, v4);
  (v94)(v18, v4);
  sub_26BB4A594(v33, &qword_28043A128, MEMORY[0x277CC9578]);
  if ((v89 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_58:
  v46 = v91[14];
  v47 = *(v96 + 48);
  sub_26BB45ACC(a1 + v46, v29);
  v94 = v47;
  sub_26BB45ACC(a2 + v46, &v47[v29]);
  v48 = v92;
  if (v92(v29, 1, v4) == 1)
  {
    if (v48(&v94[v29], 1, v4) == 1)
    {
      sub_26BB4A594(v29, &qword_28043A128, MEMORY[0x277CC9578]);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  sub_26BB45ACC(v29, v16);
  if (v48(&v94[v29], 1, v4) == 1)
  {
    (*(v100 + 8))(v16, v4);
LABEL_63:
    v44 = v29;
    goto LABEL_71;
  }

  v49 = v100;
  (*(v100 + 32))(v99, &v94[v29], v4);
  sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  LODWORD(v94) = sub_26BB7CD28();
  v50 = *(v49 + 8);
  v50(v99, v4);
  v50(v16, v4);
  sub_26BB4A594(v29, &qword_28043A128, MEMORY[0x277CC9578]);
  v48 = v92;
  if ((v94 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_65:
  v51 = v91[15];
  v52 = *(v96 + 48);
  sub_26BB45ACC(a1 + v51, v26);
  sub_26BB45ACC(a2 + v51, &v26[v52]);
  if (v48(v26, 1, v4) == 1)
  {
    if (v48(&v26[v52], 1, v4) != 1)
    {
      goto LABEL_70;
    }

    sub_26BB4A594(v26, &qword_28043A128, MEMORY[0x277CC9578]);
  }

  else
  {
    sub_26BB45ACC(v26, v13);
    if (v48(&v26[v52], 1, v4) == 1)
    {
      (*(v100 + 8))(v13, v4);
      goto LABEL_70;
    }

    v56 = v99;
    v55 = v100;
    (*(v100 + 32))(v99, &v26[v52], v4);
    sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v57 = sub_26BB7CD28();
    v58 = *(v55 + 8);
    v58(v56, v4);
    v58(v13, v4);
    sub_26BB4A594(v26, &qword_28043A128, MEMORY[0x277CC9578]);
    if ((v57 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  v59 = v91[16];
  v60 = *(a1 + v59);
  v61 = *(a2 + v59);
  if (v60 == 7)
  {
    if (v61 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v61 == 7 || (sub_26BB780C8(v60, v61) & 1) == 0)
  {
    goto LABEL_72;
  }

  v62 = v91[17];
  v63 = *(a1 + v62);
  v64 = *(a2 + v62);
  if (v63 == 7)
  {
    if (v64 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v64 == 7 || (sub_26BB780C8(v63, v64) & 1) == 0)
  {
    goto LABEL_72;
  }

  v65 = v91[18];
  v66 = *(a1 + v65);
  v67 = *(a2 + v65);
  if (v66 == 7)
  {
    if (v67 != 7)
    {
      goto LABEL_72;
    }
  }

  else if (v67 == 7 || (sub_26BB780C8(v66, v67) & 1) == 0)
  {
    goto LABEL_72;
  }

  v68 = v91[19];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 8);
  v71 = (a2 + v68);
  v72 = *(a2 + v68 + 8);
  if (v70)
  {
    if (!v72)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (*v69 != *v71)
    {
      LOBYTE(v72) = 1;
    }

    if (v72)
    {
      goto LABEL_72;
    }
  }

  v73 = v91[20];
  v74 = *(v96 + 48);
  sub_26BB45ACC(a1 + v73, v23);
  sub_26BB45ACC(a2 + v73, &v23[v74]);
  if (v92(v23, 1, v4) == 1)
  {
    if (v92(&v23[v74], 1, v4) == 1)
    {
      sub_26BB4A594(v23, &qword_28043A128, MEMORY[0x277CC9578]);
      goto LABEL_103;
    }

LABEL_101:
    v44 = v23;
    goto LABEL_71;
  }

  sub_26BB45ACC(v23, v98);
  if (v92(&v23[v74], 1, v4) == 1)
  {
    (*(v100 + 8))(v98, v4);
    goto LABEL_101;
  }

  v76 = v99;
  v75 = v100;
  (*(v100 + 32))(v99, &v23[v74], v4);
  sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v77 = v98;
  v78 = sub_26BB7CD28();
  v79 = *(v75 + 8);
  v79(v76, v4);
  v79(v77, v4);
  sub_26BB4A594(v23, &qword_28043A128, MEMORY[0x277CC9578]);
  if ((v78 & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_103:
  v80 = v91[21];
  v81 = v95;
  v82 = *(v96 + 48);
  sub_26BB45ACC(a1 + v80, v95);
  sub_26BB45ACC(a2 + v80, v81 + v82);
  v26 = v81;
  if (v92(v81, 1, v4) != 1)
  {
    sub_26BB45ACC(v81, v97);
    if (v92((v81 + v82), 1, v4) != 1)
    {
      v84 = v99;
      v83 = v100;
      (*(v100 + 32))(v99, &v26[v82], v4);
      sub_26BB4A4E8(&qword_28043A1D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v85 = v97;
      v86 = sub_26BB7CD28();
      v87 = *(v83 + 8);
      v87(v84, v4);
      v87(v85, v4);
      sub_26BB4A594(v26, &qword_28043A128, MEMORY[0x277CC9578]);
      if ((v86 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_109;
    }

    (*(v100 + 8))(v97, v4);
    goto LABEL_70;
  }

  if (v92((v81 + v82), 1, v4) != 1)
  {
LABEL_70:
    v44 = v26;
    goto LABEL_71;
  }

  sub_26BB4A594(v81, &qword_28043A128, MEMORY[0x277CC9578]);
LABEL_109:
  if (sub_26BB7BE08())
  {
    v53 = MEMORY[0x26D68CEC0](a1 + v91[23], a2 + v91[23]);
    return v53 & 1;
  }

LABEL_72:
  v53 = 0;
  return v53 & 1;
}

unint64_t sub_26BB4942C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A138;
  if (!qword_28043A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A138);
  }

  return result;
}

unint64_t sub_26BB49480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A140;
  if (!qword_28043A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A140);
  }

  return result;
}

unint64_t sub_26BB494D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A148;
  if (!qword_28043A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A148);
  }

  return result;
}

void sub_26BB49528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_26BB4942C(0, a2, a3);
    v7 = a3(a1, &type metadata for Quote.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26BB4958C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A160;
  if (!qword_28043A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A160);
  }

  return result;
}

uint64_t sub_26BB495E0(uint64_t a1, uint64_t a2)
{
  sub_26BB4A530(0, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BB49674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A168;
  if (!qword_28043A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A168);
  }

  return result;
}

uint64_t sub_26BB496C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BB4972C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BB49790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A180;
  if (!qword_28043A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A180);
  }

  return result;
}

void sub_26BB4980C(uint64_t a1)
{
  sub_26BB49994(319, &qword_28043A198, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    sub_26BB49994(319, &qword_28043A1A0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_26BB4A530(319, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26BB49994(319, &qword_28043A1A8, &type metadata for Quote.Source);
        if (v4 <= 0x3F)
        {
          sub_26BB7BE48();
          if (v5 <= 0x3F)
          {
            sub_26BB7BFC8();
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

void sub_26BB49994(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26BB7CFE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Quote.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Quote.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Quote.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Quote.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BB49C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A1B0;
  if (!qword_28043A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A1B0);
  }

  return result;
}

unint64_t sub_26BB49CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A1B8;
  if (!qword_28043A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A1B8);
  }

  return result;
}

unint64_t sub_26BB49D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A1C0;
  if (!qword_28043A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A1C0);
  }

  return result;
}

uint64_t sub_26BB49D88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_26BB7D378() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026BB83320 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F487265746661 && a2 == 0xEF65636972507372 || (sub_26BB7D378() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026BB83340 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B72614D657270 && a2 == 0xEE00656369725074 || (sub_26BB7D378() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026BB83360 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_26BB7D378() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_26BB7D378() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEC0000006E65704FLL || (sub_26BB7D378() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xED000065736F6C43 || (sub_26BB7D378() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB83380 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x756F536563697270 && a2 == 0xEB00000000656372 || (sub_26BB7D378() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026BB833A0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656B72614D657270 && a2 == 0xEF656372756F5374 || (sub_26BB7D378() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026BB833C0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB833E0 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEF65746144646E45 || (sub_26BB7D378() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026BB83400 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL)
  {

    return 19;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

unint64_t sub_26BB4A400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A1C8;
  if (!qword_28043A1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A1C8);
  }

  return result;
}

void sub_26BB4A454(uint64_t a1)
{
  if (!qword_28043A1D0)
  {
    sub_26BB4A530(255, &qword_28043A128, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28043A1D0);
    }
  }
}

uint64_t sub_26BB4A4E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26BB4A530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26BB4A594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26BB4A530(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_26BB4A608()
{
  v0 = objc_opt_self();
  v1 = sub_26BB7CD38();
  v2 = [v0 sc:v1 userDefaultsWithSuiteName:1 backupDisabled:?];

  qword_280440450 = v2;
}

uint64_t sub_26BB4A684(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v16 = v7;
  v17 = v2;
  sub_26BB7C268();
  sub_26BB7CAD8();
  v8 = sub_26BB7CA28();
  sub_26BB7CAA8();

  (*(v5 + 16))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v5 + 32))(v10 + v9, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v11 = sub_26BB7CA28();
  v12 = sub_26BB7CA98();

  return v12;
}

uint64_t sub_26BB4A874(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26BB7C268();
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v6 = sub_26BB7CB88();
  __swift_project_value_buffer(v6, qword_28158F140);
  v7 = a1;
  v8 = sub_26BB7CB68();
  v9 = sub_26BB7CF78();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_26BB7D3C8();
    v14 = sub_26BB38238(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_26BB21000, v8, v9, "Failed to refresh app configuration with error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D68EA90](v11, -1, -1);
    MEMORY[0x26D68EA90](v10, -1, -1);
  }

  sub_26BB7C4A8();
  sub_26BB4AAE0(0);
  swift_allocObject();
  return sub_26BB7CA88();
}

void sub_26BB4AAE0(uint64_t a1)
{
  if (!qword_28043A1E8)
  {
    sub_26BB7C268();
    v1 = sub_26BB7CAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_28043A1E8);
    }
  }
}

uint64_t sub_26BB4AB38()
{
  v1 = type metadata accessor for StocksKitServiceRequest(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - v5;
  v7 = sub_26BB7BE78();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  v14 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(v0, v16, type metadata accessor for CancellableStocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v16, v7);
    strcpy(v26, ".cancel(id: ");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_26BB7D348();
    MEMORY[0x26D68DCA0](v17);

    MEMORY[0x26D68DCA0](41, 0xE100000000000000);
    v18 = v26[0];
    v13 = v11;
  }

  else
  {
    sub_26BB54250(0);
    v20 = *(v19 + 48);
    (*(v8 + 32))(v13, v16, v7);
    sub_26BB5534C(&v16[v20], v6, type metadata accessor for StocksKitServiceRequest);
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_26BB7D098();

    strcpy(v26, ".fetch(id: ");
    HIDWORD(v26[1]) = -352321536;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_26BB7D348();
    MEMORY[0x26D68DCA0](v21);

    MEMORY[0x26D68DCA0](0x736575716572202CLL, 0xEB00000000203A74);
    sub_26BB54CA8(v6, v4, type metadata accessor for StocksKitServiceRequest);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BB55AE4(v4, type metadata accessor for DataSource.Logo);
      v22 = 0xE400000000000000;
      v23 = 1869049708;
    }

    else
    {
      sub_26BB53CA4(0);
      v22 = 0x800000026BB83500;
      sub_26BB55B44(&v4[*(v24 + 48)], &qword_28158BB50, MEMORY[0x277D858F8]);
      v23 = 0xD000000000000013;
    }

    MEMORY[0x26D68DCA0](v23, v22);

    MEMORY[0x26D68DCA0](41, 0xE100000000000000);
    v18 = v26[0];
    sub_26BB55AE4(v6, type metadata accessor for StocksKitServiceRequest);
  }

  (*(v8 + 8))(v13, v7);
  return v18;
}

uint64_t sub_26BB4AFAC(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_26BB581D0(0, &qword_28158B150, sub_26BB54A48, &type metadata for CancellableStocksKitServiceRequest.CancelCodingKeys, MEMORY[0x277D84538]);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v42 - v4;
  sub_26BB581D0(0, &qword_28158B158, sub_26BB54A9C, &type metadata for CancellableStocksKitServiceRequest.FetchCodingKeys, v2);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - v6;
  v42 = type metadata accessor for StocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v42);
  v53 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26BB7BE78();
  v51 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v42 - v11;
  v12 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB581D0(0, &qword_28158B160, sub_26BB54AF0, &type metadata for CancellableStocksKitServiceRequest.CodingKeys, v2);
  v16 = v15;
  v55 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB54AF0(v19, v20, v21);
  sub_26BB7D488();
  sub_26BB54CA8(v50, v14, type metadata accessor for CancellableStocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v51;
    v23 = v43;
    v24 = (*(v51 + 32))(v43, v14, v8);
    v59 = 1;
    sub_26BB54A48(v24, v25, v26);
    v27 = v44;
    sub_26BB7D2B8();
    sub_26BB54B44(&qword_28158BB18, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v28 = v46;
    sub_26BB7D328();
    (*(v45 + 8))(v27, v28);
    (*(v22 + 8))(v23, v8);
  }

  else
  {
    sub_26BB54250(0);
    v30 = *(v29 + 48);
    v31 = v51;
    (*(v51 + 32))(v52, v14, v8);
    v32 = sub_26BB5534C(&v14[v30], v53, type metadata accessor for StocksKitServiceRequest);
    v58 = 0;
    sub_26BB54A9C(v32, v33, v34);
    v35 = v47;
    sub_26BB7D2B8();
    v57 = 0;
    sub_26BB54B44(&qword_28158BB18, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v36 = v49;
    v37 = v54;
    sub_26BB7D328();
    v38 = v31;
    if (v37)
    {
      (*(v48 + 8))(v35, v36);
      v39 = v53;
    }

    else
    {
      v56 = 1;
      sub_26BB54B44(&qword_28158B8C8, type metadata accessor for StocksKitServiceRequest, &unk_26BB80364);
      v40 = v53;
      sub_26BB7D328();
      (*(v48 + 8))(v35, v36);
      v39 = v40;
    }

    sub_26BB55AE4(v39, type metadata accessor for StocksKitServiceRequest);
    (*(v38 + 8))(v52, v8);
  }

  return (*(v55 + 8))(v18, v16);
}

uint64_t sub_26BB4B65C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_26BB581D0(0, &qword_28158B1D0, sub_26BB54A48, &type metadata for CancellableStocksKitServiceRequest.CancelCodingKeys, MEMORY[0x277D844C8]);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  MEMORY[0x28223BE20](v4);
  v56 = v48 - v6;
  sub_26BB581D0(0, &qword_28158B1D8, sub_26BB54A9C, &type metadata for CancellableStocksKitServiceRequest.FetchCodingKeys, v3);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = v48 - v8;
  sub_26BB581D0(0, &qword_28158B1E0, sub_26BB54AF0, &type metadata for CancellableStocksKitServiceRequest.CodingKeys, v3);
  v10 = v9;
  v58 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = v48 - v11;
  v13 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v48 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v48 - v20;
  v22 = a1[3];
  v60 = a1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_26BB54AF0(v23, v24, v25);
  v26 = v59;
  sub_26BB7D478();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  v50 = v16;
  v28 = v55;
  v27 = v56;
  v59 = v21;
  v29 = v57;
  v30 = sub_26BB7D298();
  v31 = (2 * *(v30 + 16)) | 1;
  v61 = v30;
  v62 = v30 + 32;
  v63 = 0;
  v64 = v31;
  v32 = sub_26BB3BF0C();
  if (v32 == 2 || v63 != v64 >> 1)
  {
    v38 = sub_26BB7D0E8();
    swift_allocError();
    v40 = v39;
    sub_26BB39000(0);
    *v40 = v13;
    sub_26BB7D218();
    sub_26BB7D0C8();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v58 + 8))(v12, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  v48[1] = v13;
  v49 = v12;
  if (v32)
  {
    v65 = 1;
    sub_26BB54A48(v32, v33, v34);
    v35 = v27;
    sub_26BB7D208();
    v37 = v58;
    v36 = v59;
    v43 = v29;
    sub_26BB7BE78();
    sub_26BB54B44(&qword_28158BB08, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v45 = v50;
    v44 = v51;
    sub_26BB7D288();
    (*(v52 + 8))(v35, v44);
    (*(v37 + 8))(v49, v10);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v46 = v45;
  }

  else
  {
    v65 = 0;
    sub_26BB54A9C(v32, v33, v34);
    sub_26BB7D208();
    v42 = v58;
    v56 = v10;
    sub_26BB7BE78();
    v65 = 0;
    sub_26BB54B44(&qword_28158BB08, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_26BB7D288();
    sub_26BB54250(0);
    type metadata accessor for StocksKitServiceRequest(0);
    v65 = 1;
    sub_26BB54B44(&qword_28158B8C0, type metadata accessor for StocksKitServiceRequest, &unk_26BB8038C);
    v47 = v54;
    sub_26BB7D288();
    (*(v53 + 8))(v28, v47);
    (*(v42 + 8))(v49, v56);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v43 = v29;
    v36 = v59;
    v46 = v19;
  }

  sub_26BB5534C(v46, v36, type metadata accessor for CancellableStocksKitServiceRequest);
  sub_26BB5534C(v36, v43, type metadata accessor for CancellableStocksKitServiceRequest);
  return __swift_destroy_boxed_opaque_existential_1Tm(v60);
}

uint64_t sub_26BB4BE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26BB7D378();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BB4BF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB54A48(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB4BF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB54A48(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB4BF88()
{
  if (*v0)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 0x6863746566;
  }
}

uint64_t sub_26BB4BFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6863746566 && a2 == 0xE500000000000000;
  if (v6 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB4C090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB54AF0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB4C0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB54AF0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB4C108()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26BB4C138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB4C20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB54A9C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB4C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB54A9C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB4C2B8(void *a1)
{
  v2 = MEMORY[0x277D84538];
  sub_26BB581D0(0, &qword_28043A248, sub_26BB57F04, &type metadata for StocksKitServiceRequest.LogoCodingKeys, MEMORY[0x277D84538]);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v48 - v4;
  v48 = type metadata accessor for DataSource.Logo(0);
  MEMORY[0x28223BE20](v48);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB581D0(0, &qword_28158B140, sub_26BB57F58, &type metadata for StocksKitServiceRequest.CurrencyConversionsCodingKeys, v2);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - v8;
  sub_26BB55BBC(0, &qword_28158BB50, MEMORY[0x277D858F8]);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v48 - v10;
  v11 = type metadata accessor for StocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB581D0(0, &qword_28158B148, sub_26BB57FAC, &type metadata for StocksKitServiceRequest.CodingKeys, v2);
  v15 = v14;
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB57FAC(v18, v19, v20);
  sub_26BB7D488();
  sub_26BB54CA8(v56, v13, type metadata accessor for StocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26BB53D2C(0);
    v22 = *&v13[*(v21 + 48)];
    v23 = sub_26BB5534C(v13, v6, type metadata accessor for DataSource.Logo);
    LOBYTE(v59) = 1;
    sub_26BB57F04(v23, v24, v25);
    v26 = v53;
    sub_26BB7D2B8();
    LOBYTE(v59) = 0;
    sub_26BB54B44(&qword_28158B7F0, type metadata accessor for DataSource.Logo, &protocol conformance descriptor for DataSource.Logo);
    v27 = v55;
    v28 = v57;
    v29 = sub_26BB7D328();
    if (!v28)
    {
      v59 = v22;
      v62 = 1;
      sub_26BB580A8(v29, v30, v31);
      sub_26BB7D328();
    }

    (*(v54 + 8))(v26, v27);
    sub_26BB55AE4(v6, type metadata accessor for DataSource.Logo);
  }

  else
  {
    v32 = *v13;
    v33 = *(v13 + 1);
    v34 = v13[16];
    sub_26BB53CA4(0);
    v36 = &v13[*(v35 + 48)];
    v37 = v50;
    v38 = sub_26BB580FC(v36, v50);
    LOBYTE(v59) = 0;
    sub_26BB57F58(v38, v39, v40);
    v41 = v49;
    v42 = sub_26BB7D2B8();
    v59 = v32;
    v60 = v33;
    v61 = v34;
    v62 = 0;
    sub_26BB5817C(v42, v43, v44);
    v45 = v52;
    v46 = v57;
    sub_26BB7D328();
    if (!v46)
    {
      LOBYTE(v59) = 1;
      sub_26BB7D178();
      sub_26BB54B44(&qword_28158B210, MEMORY[0x277D858F8], MEMORY[0x277D85900]);
      sub_26BB7D2F8();
    }

    (*(v51 + 8))(v41, v45);
    sub_26BB55B44(v37, &qword_28158BB50, MEMORY[0x277D858F8]);
  }

  return (*(v58 + 8))(v17, v15);
}

uint64_t sub_26BB4C8F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = MEMORY[0x277D844C8];
  sub_26BB581D0(0, &qword_28043A230, sub_26BB57F04, &type metadata for StocksKitServiceRequest.LogoCodingKeys, MEMORY[0x277D844C8]);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v54 - v5;
  sub_26BB581D0(0, &qword_28158B1C0, sub_26BB57F58, &type metadata for StocksKitServiceRequest.CurrencyConversionsCodingKeys, v3);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v54 - v7;
  sub_26BB581D0(0, &qword_28158B1C8, sub_26BB57FAC, &type metadata for StocksKitServiceRequest.CodingKeys, v3);
  v9 = v8;
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v12 = type metadata accessor for StocksKitServiceRequest(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v21 = a1[3];
  v67 = a1;
  v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_26BB57FAC(v22, v23, v24);
  v25 = v66;
  sub_26BB7D478();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v67);
  }

  v56 = v20;
  v57 = v18;
  v66 = v15;
  v27 = v64;
  v26 = v65;
  v28 = v63;
  v29 = sub_26BB7D298();
  v30 = (2 * *(v29 + 16)) | 1;
  v68 = v29;
  v69 = v29 + 32;
  v70 = 0;
  v71 = v30;
  v31 = sub_26BB3BF0C();
  v34 = v9;
  v35 = v11;
  if (v31 == 2 || v70 != v71 >> 1)
  {
    v39 = sub_26BB7D0E8();
    swift_allocError();
    v41 = v40;
    sub_26BB39000(0);
    *v41 = v12;
    sub_26BB7D218();
    sub_26BB7D0C8();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v28 + 8))(v11, v34);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v67);
  }

  if (v31)
  {
    v55 = v12;
    v72 = 1;
    sub_26BB57F04(v31, v32, v33);
    v36 = v27;
    sub_26BB7D208();
    type metadata accessor for DataSource.Logo(0);
    v72 = 0;
    sub_26BB54B44(&qword_28158B7E8, type metadata accessor for DataSource.Logo, &protocol conformance descriptor for DataSource.Logo);
    v37 = v66;
    v38 = v61;
    sub_26BB7D288();
    sub_26BB53D2C(0);
    v72 = 1;
    sub_26BB58000(v47, v48, v49);
    sub_26BB7D288();
    (*(v60 + 8))(v36, v38);
    (*(v28 + 8))(v35, v34);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v52 = v37;
  }

  else
  {
    v72 = 0;
    sub_26BB57F58(v31, v32, v33);
    v42 = sub_26BB7D208();
    v43 = v28;
    v55 = v12;
    v72 = 0;
    sub_26BB58054(v42, v44, v45);
    v52 = v57;
    v46 = v59;
    sub_26BB7D288();
    sub_26BB53CA4(0);
    sub_26BB7D178();
    v72 = 1;
    sub_26BB54B44(&qword_28158B208, MEMORY[0x277D858F8], MEMORY[0x277D85918]);
    v50 = v62;
    sub_26BB7D258();
    (*(v58 + 8))(v50, v46);
    (*(v43 + 8))(v11, v34);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
  }

  v53 = v56;
  sub_26BB5534C(v52, v56, type metadata accessor for StocksKitServiceRequest);
  sub_26BB5534C(v53, v26, type metadata accessor for StocksKitServiceRequest);
  return __swift_destroy_boxed_opaque_existential_1Tm(v67);
}

uint64_t sub_26BB4D11C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_26BB7D378() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_26BB7D378();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26BB4D220(char a1)
{
  sub_26BB7D418();
  MEMORY[0x26D68E330](a1 & 1);
  return sub_26BB7D458();
}

uint64_t sub_26BB4D268(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_26BB4D298(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26BB7D378();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26BB4D30C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26BB7D378();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26BB4D380(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v44 = type metadata accessor for StocksKitServiceResult.FailureCodingKeys(255, v6, v7, v8);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_26BB7D338();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v43 = &v33 - v11;
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksKitServiceResult.SuccessCodingKeys(255, v6, v7, v8);
  v14 = swift_getWitnessTable();
  v37 = v13;
  v35 = v14;
  v15 = sub_26BB7D338();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v36 = &v33 - v17;
  v38 = *(v6 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v34 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v7;
  v51 = v6;
  type metadata accessor for StocksKitServiceResult.CodingKeys(255, v6, v7, v8);
  swift_getWitnessTable();
  v52 = sub_26BB7D338();
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v24 = &v33 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BB7D488();
  (*(v20 + 16))(v22, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v45;
    v26 = v41;
    v27 = v50;
    (*(v45 + 32))(v41, v22, v50);
    v56 = 1;
    v28 = v43;
    v29 = v52;
    sub_26BB7D2B8();
    v30 = v47;
    sub_26BB7D328();
    v31 = v46;
  }

  else
  {
    v25 = v38;
    v26 = v34;
    v27 = v51;
    (*(v38 + 32))(v34, v22, v51);
    v55 = 0;
    v28 = v36;
    v29 = v52;
    sub_26BB7D2B8();
    v30 = v40;
    sub_26BB7D328();
    v31 = v39;
  }

  (*(v31 + 8))(v28, v30);
  (*(v25 + 8))(v26, v27);
  return (*(v54 + 8))(v24, v29);
}

uint64_t sub_26BB4D90C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v65 = a5;
  v64 = a4;
  v57 = a7;
  v11 = type metadata accessor for StocksKitServiceResult.FailureCodingKeys(255, a2, a3, a6);
  WitnessTable = swift_getWitnessTable();
  v70 = v11;
  v61 = sub_26BB7D2A8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v71 = &v55 - v12;
  v13 = type metadata accessor for StocksKitServiceResult.SuccessCodingKeys(255, a2, a3, a6);
  v66 = swift_getWitnessTable();
  v67 = v13;
  v59 = sub_26BB7D2A8();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v68 = &v55 - v14;
  type metadata accessor for StocksKitServiceResult.CodingKeys(255, a2, a3, a6);
  v75 = swift_getWitnessTable();
  v15 = sub_26BB7D2A8();
  v16 = *(v15 - 8);
  v73 = v15;
  v74 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v62 = a2;
  v63 = a3;
  v19 = type metadata accessor for StocksKitServiceResult(0, a2, a3, a6);
  v72 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  v28 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = v76;
  sub_26BB7D478();
  if (!v29)
  {
    v75 = v22;
    v76 = v25;
    v56 = v27;
    v30 = v73;
    v31 = v18;
    *&v77 = sub_26BB7D298();
    sub_26BB7CE38();
    swift_getWitnessTable();
    *&v79 = sub_26BB7D008();
    *(&v79 + 1) = v32;
    *&v80 = v33;
    *(&v80 + 1) = v34;
    sub_26BB7CFF8();
    swift_getWitnessTable();
    sub_26BB7CF28();
    v35 = v77;
    if (v77 == 2 || (v55 = v79, v77 = v79, v78 = v80, (sub_26BB7CF38() & 1) == 0))
    {
      v41 = sub_26BB7D0E8();
      swift_allocError();
      v43 = v42;
      sub_26BB39000(0);
      *v43 = v19;
      sub_26BB7D218();
      sub_26BB7D0C8();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v74 + 8))(v31, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v35)
      {
        LOBYTE(v77) = 1;
        v36 = v71;
        v37 = v18;
        sub_26BB7D208();
        v38 = v74;
        v39 = v75;
        v40 = v61;
        sub_26BB7D288();
        (*(v60 + 8))(v36, v40);
        (*(v38 + 8))(v37, v30);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v49 = v39;
        v50 = v72;
        v51 = v57;
      }

      else
      {
        LOBYTE(v77) = 0;
        v44 = v68;
        v45 = v18;
        sub_26BB7D208();
        v46 = v74;
        v50 = v72;
        v47 = v59;
        sub_26BB7D288();
        (*(v58 + 8))(v44, v47);
        (*(v46 + 8))(v45, v30);
        swift_unknownObjectRelease();
        v52 = v76;
        swift_storeEnumTagMultiPayload();
        v51 = v57;
        v49 = v52;
      }

      v53 = *(v50 + 32);
      v54 = v56;
      v53(v56, v49, v19);
      v53(v51, v54, v19);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v81);
}

uint64_t sub_26BB4E0C0()
{
  if (*v0)
  {
    return 1869049708;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_26BB4E0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000026BB83500 == a2 || (sub_26BB7D378() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26BB7D378();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_26BB4E1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB57FAC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB4E21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB57FAC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB4E258()
{
  if (*v0)
  {
    return 0x656E696C64616564;
  }

  else
  {
    return 0x6C6F506568636163;
  }
}

uint64_t sub_26BB4E29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F506568636163 && a2 == 0xEB00000000796369;
  if (v6 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E696C64616564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB4E37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB57F58(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB4E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB57F58(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB4E3F4()
{
  if (*v0)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 1869049708;
  }
}

uint64_t sub_26BB4E428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1869049708 && a2 == 0xE400000000000000;
  if (v5 || (sub_26BB7D378() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26BB7D378();

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

uint64_t sub_26BB4E504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB57F04(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_26BB4E540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_26BB57F04(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_26BB4E5AC(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(v2, v4, type metadata accessor for StocksKitServiceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26BB55AE4(v4, type metadata accessor for DataSource.Logo);
    return 1869049708;
  }

  else
  {
    sub_26BB53CA4(0);
    sub_26BB55B44(&v4[*(v6 + 48)], &qword_28158BB50, MEMORY[0x277D858F8]);
    return 0xD000000000000013;
  }
}

uint64_t sub_26BB4E704(uint64_t a1)
{
  sub_26BB7D418();
  sub_26BB4D1F8(v3, *v1);
  return sub_26BB7D458();
}

uint64_t sub_26BB4E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB4D11C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BB4E798@<X0>(_BYTE *a2@<X8>)
{
  result = sub_26BB55DD0();
  *a2 = result;
  return result;
}

uint64_t sub_26BB4E7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26BB4E820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26BB4E888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB4D298(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26BB4E8C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BB299DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26BB4E8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26BB4E94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26BB4E9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BB4D30C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26BB4E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26BB4EA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26BB4EADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6961466863746566;
  v4 = 0xEC0000006572756CLL;
  if (v2 != 1)
  {
    v3 = 0x616C6C65636E6163;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x614665646F636564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006572756C69;
  }

  v7 = 0x6961466863746566;
  v8 = 0xEC0000006572756CLL;
  if (*a2 != 1)
  {
    v7 = 0x616C6C65636E6163;
    v8 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x614665646F636564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006572756C69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26BB7D378();
  }

  return v11 & 1;
}

uint64_t sub_26BB4EC08()
{
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

uint64_t sub_26BB4ECC8(uint64_t a1)
{
  sub_26BB7CD88();
}

uint64_t sub_26BB4ED74(uint64_t a1)
{
  sub_26BB7D418();
  sub_26BB7CD88();

  return sub_26BB7D458();
}

unint64_t sub_26BB4EE30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26BB55DD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26BB4EE60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006572756C69;
  v4 = 0xEC0000006572756CLL;
  v5 = 0x6961466863746566;
  if (v2 != 1)
  {
    v5 = 0x616C6C65636E6163;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x614665646F636564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26BB4EF8C()
{
  v1 = v0;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = sub_26BB7CB88();
  __swift_project_value_buffer(v2, qword_28158F140);
  v3 = sub_26BB7CB68();
  v4 = sub_26BB7CF78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26BB21000, v3, v4, "XPCSessionWrapper deinit", v5, 2u);
    MEMORY[0x26D68EA90](v5, -1, -1);
  }

  v6 = *(v1 + 16);

  os_unfair_lock_lock(v6 + 6);
  sub_26BB4F0AC();
  os_unfair_lock_unlock(v6 + 6);

  return v1;
}

uint64_t sub_26BB4F0AC()
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v0 = sub_26BB7CB88();
  __swift_project_value_buffer(v0, qword_28158F140);
  v1 = sub_26BB7CB68();
  v2 = sub_26BB7CF78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26BB21000, v1, v2, "Cancelling XPC...", v3, 2u);
    MEMORY[0x26D68EA90](v3, -1, -1);
  }

  return sub_26BB7CBE8();
}

uint64_t sub_26BB4F1B8()
{
  sub_26BB4EF8C();

  return swift_deallocClassInstance();
}

uint64_t sub_26BB4F20C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(void), uint64_t a9)
{
  v48 = a7;
  v49 = a8;
  v51 = a5;
  v52 = a3;
  v47 = a4;
  v44 = a1;
  v50 = a9;
  v12 = type metadata accessor for StocksKitServiceRequest(0);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v23 = sub_26BB7CB88();
  __swift_project_value_buffer(v23, qword_28158F140);
  v45 = a2;
  sub_26BB54CA8(a2, v22, type metadata accessor for StocksKitServiceRequest);
  v24 = sub_26BB7CB68();
  v25 = sub_26BB7CF78();
  if (os_log_type_enabled(v24, v25))
  {
    v41 = a6;
    v42 = v9;
    v26 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v53 = v40;
    *v26 = 136315138;
    sub_26BB54CA8(v22, v20, type metadata accessor for StocksKitServiceRequest);
    sub_26BB54CA8(v20, v17, type metadata accessor for StocksKitServiceRequest);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BB55AE4(v20, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v17, type metadata accessor for DataSource.Logo);
      v27 = 0xE400000000000000;
      v28 = 1869049708;
    }

    else
    {
      sub_26BB53CA4(0);
      v39 = *(v29 + 48);
      v27 = 0x800000026BB83500;
      sub_26BB55AE4(v20, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55B44(&v17[v39], &qword_28158BB50, MEMORY[0x277D858F8]);
      v28 = 0xD000000000000013;
    }

    v30 = sub_26BB38238(v28, v27, &v53);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_26BB21000, v24, v25, "Sending XPC message from proxy: %s", v26, 0xCu);
    v31 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x26D68EA90](v31, -1, -1);
    MEMORY[0x26D68EA90](v26, -1, -1);
  }

  else
  {

    sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
  }

  v32 = *v44;
  v33 = v46;
  sub_26BB54CA8(v45, v46, type metadata accessor for StocksKitServiceRequest);
  v34 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  sub_26BB5534C(v33, v35 + v34, type metadata accessor for StocksKitServiceRequest);
  v36 = (v35 + ((v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
  v37 = v51;
  *v36 = v47;
  v36[1] = v37;
  type metadata accessor for CancellableStocksKitServiceRequest(0);
  v48(0);
  sub_26BB54B44(&qword_28158B988, type metadata accessor for CancellableStocksKitServiceRequest, &unk_26BB8024C);
  v49();

  sub_26BB7CBD8();
}

uint64_t sub_26BB4F6FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v47 = a5;
  v48 = a4;
  v45 = a3;
  v44 = type metadata accessor for StocksKitServiceRequest(0);
  v6 = MEMORY[0x28223BE20](v44);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  sub_26BB56C7C(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  sub_26BB57E88(0, &qword_28158B0C8, sub_26BB56C7C, MEMORY[0x277D84C48]);
  MEMORY[0x28223BE20](v19);
  v21 = (&v44 - v20);
  sub_26BB56E40(a1, &v44 - v20, &qword_28158B0C8, sub_26BB56C7C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v23 = sub_26BB7CB88();
    __swift_project_value_buffer(v23, qword_28158F140);
    v24 = v22;
    v25 = sub_26BB7CB68();
    v26 = sub_26BB7CF78();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v22;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_26BB21000, v25, v26, "Failure sending request, error: %@", v27, 0xCu);
      sub_26BB55B44(v28, &qword_28158BB58, sub_26BB55C10);
      MEMORY[0x26D68EA90](v28, -1, -1);
      MEMORY[0x26D68EA90](v27, -1, -1);
    }

    *v16 = 0;
    swift_storeEnumTagMultiPayload();
    v48(v16);

    v18 = v16;
  }

  else
  {
    sub_26BB5534C(v21, v18, sub_26BB56C7C);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v31 = sub_26BB7CB88();
    __swift_project_value_buffer(v31, qword_28158F140);
    sub_26BB54CA8(v45, v12, type metadata accessor for StocksKitServiceRequest);
    v32 = sub_26BB7CB68();
    v33 = sub_26BB7CF78();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v46;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      sub_26BB54CA8(v12, v10, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v10, v35, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26BB55AE4(v10, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v12, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v35, type metadata accessor for DataSource.Logo);
        v38 = 0xE400000000000000;
        v39 = 1869049708;
      }

      else
      {
        sub_26BB53CA4(0);
        v41 = *(v40 + 48);
        v38 = 0x800000026BB83500;
        sub_26BB55AE4(v10, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v12, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55B44(&v46[v41], &qword_28158BB50, MEMORY[0x277D858F8]);
        v39 = 0xD000000000000013;
      }

      v42 = sub_26BB38238(v39, v38, &v49);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_26BB21000, v32, v33, "Done sending request: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x26D68EA90](v37, -1, -1);
      MEMORY[0x26D68EA90](v36, -1, -1);
    }

    else
    {

      sub_26BB55AE4(v12, type metadata accessor for StocksKitServiceRequest);
    }

    v48(v18);
  }

  return sub_26BB55AE4(v18, sub_26BB56C7C);
}

uint64_t sub_26BB4FD00(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for CancellableStocksKitServiceRequest(0);
  MEMORY[0x28223BE20](v4);
  v29 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26BB7BE78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v10 = sub_26BB7CB88();
  __swift_project_value_buffer(v10, qword_28158F140);
  v26 = *(v7 + 16);
  v27 = a2;
  v26(v9, a2, v6);
  v11 = sub_26BB7CB68();
  v12 = sub_26BB7CF78();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v2;
    v14 = v13;
    v23 = swift_slowAlloc();
    v30 = v23;
    *v14 = 136315138;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_26BB7D348();
    v24 = v4;
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = sub_26BB38238(v15, v17, &v30);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_26BB21000, v11, v12, "Sending cancellation XPC message for id: %s", v14, 0xCu);
    v19 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D68EA90](v19, -1, -1);
    MEMORY[0x26D68EA90](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v20 = v29;
  v26(v29, v27, v6);
  swift_storeEnumTagMultiPayload();
  sub_26BB54B44(&qword_28158B988, type metadata accessor for CancellableStocksKitServiceRequest, &unk_26BB8024C);
  sub_26BB7CBC8();
  return sub_26BB55AE4(v20, type metadata accessor for CancellableStocksKitServiceRequest);
}

void sub_26BB50094()
{
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v0 = sub_26BB7CB88();
  __swift_project_value_buffer(v0, qword_28158F140);
  oslog = sub_26BB7CB68();
  v1 = sub_26BB7CF78();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_26BB21000, oslog, v1, "Done sending XPC cancellation message", v2, 2u);
    MEMORY[0x26D68EA90](v2, -1, -1);
  }
}

void sub_26BB5017C(uint64_t a1)
{
  v2 = sub_26BB7CC28();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v9 = sub_26BB7CB88();
  __swift_project_value_buffer(v9, qword_28158F140);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v10(v6, a1, v2);
  v11 = sub_26BB7CB68();
  v12 = sub_26BB7CF78();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 67109378;
    v15 = sub_26BB7CC18() & 1;
    v16 = *(v3 + 8);
    v16(v8, v2);
    *(v13 + 4) = v15;
    *(v13 + 8) = 2080;
    v17 = sub_26BB7CC08();
    v19 = v18;
    v16(v6, v2);
    v20 = sub_26BB38238(v17, v19, &v23);

    *(v13 + 10) = v20;
    _os_log_impl(&dword_26BB21000, v11, v12, "Session cancelled (recoverable: %{BOOL}d): %s", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D68EA90](v14, -1, -1);
    MEMORY[0x26D68EA90](v13, -1, -1);
  }

  else
  {
    v21 = *(v3 + 8);
    v21(v8, v2);

    v21(v6, v2);
  }
}

uint64_t sub_26BB50428(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_26BB7CE88();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for StocksKitServiceRequest(0);
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v3[12] = *(v6 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = sub_26BB7BE78();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v3[19] = *(v8 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB505FC, 0, 0);
}

uint64_t sub_26BB505FC(uint64_t a1)
{
  v56 = v1;
  sub_26BB7BE68();
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[16];
  v7 = v1[4];
  v8 = sub_26BB7CB88();
  __swift_project_value_buffer(v8, qword_28158F140);
  sub_26BB54CA8(v7, v6, type metadata accessor for StocksKitServiceRequest);
  v54 = *(v5 + 16);
  v54(v2, v3, v4);
  v9 = sub_26BB7CB68();
  v10 = sub_26BB7CF78();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = v1[15];
    v11 = v1[16];
    v13 = v1[14];
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55[0] = v52;
    *v14 = 136315394;
    sub_26BB54CA8(v11, v12, type metadata accessor for StocksKitServiceRequest);
    sub_26BB54CA8(v12, v13, type metadata accessor for StocksKitServiceRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = v1[15];
    v16 = v1[16];
    v18 = v1[14];
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BB55AE4(v1[15], type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v16, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v18, type metadata accessor for DataSource.Logo);
      v19 = 0xE400000000000000;
      v20 = 1869049708;
    }

    else
    {
      sub_26BB53CA4(0);
      v27 = *(v26 + 48);
      v19 = 0x800000026BB83500;
      sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v16, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55B44(v18 + v27, &qword_28158BB50, MEMORY[0x277D858F8]);
      v20 = 0xD000000000000013;
    }

    v28 = v1[21];
    v30 = v1[17];
    v29 = v1[18];
    v31 = sub_26BB38238(v20, v19, v55);

    *(v14 + 4) = v31;
    *(v14 + 12) = 2080;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_26BB7D348();
    v34 = v33;
    v25 = *(v29 + 8);
    v25(v28, v30);
    v35 = sub_26BB38238(v32, v34, v55);

    *(v14 + 14) = v35;
    _os_log_impl(&dword_26BB21000, v9, v10, "Fetching request: %s from proxy with id: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v52, -1, -1);
    MEMORY[0x26D68EA90](v14, -1, -1);
  }

  else
  {
    v21 = v1[21];
    v22 = v1[17];
    v23 = v1[18];
    v24 = v1[16];

    v25 = *(v23 + 8);
    v25(v21, v22);
    sub_26BB55AE4(v24, type metadata accessor for StocksKitServiceRequest);
  }

  v1[23] = v25;
  sub_26BB54D10();
  v1[24] = v36;
  v38 = v1[19];
  v37 = v1[20];
  v39 = v1[17];
  v40 = v1[18];
  v41 = v1[13];
  v53 = v41;
  v42 = v1[11];
  v43 = v1[4];
  v44 = v1[5];
  v45 = v36;
  v54(v37, v1[22], v39);
  sub_26BB54CA8(v43, v41, type metadata accessor for StocksKitServiceRequest);
  v46 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v47 = (v38 + *(v42 + 80) + v46) & ~*(v42 + 80);
  v48 = swift_allocObject();
  v1[25] = v48;
  *(v48 + 16) = v44;
  *(v48 + 24) = v45;
  (*(v40 + 32))(v48 + v46, v37, v39);
  sub_26BB5534C(v53, v48 + v47, type metadata accessor for StocksKitServiceRequest);

  v49 = swift_task_alloc();
  v1[26] = v49;
  *v49 = v1;
  v49[1] = sub_26BB50C04;
  v50 = v1[3];

  return MEMORY[0x2821D20A8](v50, &unk_26BB80510, v48, &type metadata for DataSource.DownloadedLogo);
}

uint64_t sub_26BB50C04()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_26BB50E24;
  }

  else
  {

    v2 = sub_26BB50D20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BB50D20()
{
  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[17];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BB50E24()
{
  v1 = *(v0 + 216);

  *(v0 + 16) = v1;
  v2 = v1;
  sub_26BB55504();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    (*(v8 + 32))(v6, v5, v7);
    sub_26BB55568(v3, v4);
    v17 = *(v0 + 184);
    v9 = *(v0 + 176);
    v10 = *(v0 + 136);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    sub_26BB54B44(&qword_280439E98, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    (*(v12 + 16))(v14, v11, v13);
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
    v17(v9, v10);
  }

  else
  {
    (*(v0 + 184))(*(v0 + 176), *(v0 + 136));
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26BB51090(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_26BB7CE88();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for StocksKitServiceRequest(0);
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v3[12] = *(v6 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = sub_26BB7BE78();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v3[19] = *(v8 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BB51264, 0, 0);
}

uint64_t sub_26BB51264(uint64_t a1)
{
  v57 = v1;
  sub_26BB7BE68();
  if (qword_28158C2F8 != -1)
  {
    swift_once();
  }

  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[16];
  v7 = v1[4];
  v8 = sub_26BB7CB88();
  __swift_project_value_buffer(v8, qword_28158F140);
  sub_26BB54CA8(v7, v6, type metadata accessor for StocksKitServiceRequest);
  v55 = *(v5 + 16);
  v55(v2, v3, v4);
  v9 = sub_26BB7CB68();
  v10 = sub_26BB7CF78();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = v1[15];
    v11 = v1[16];
    v13 = v1[14];
    v14 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56[0] = v53;
    *v14 = 136315394;
    sub_26BB54CA8(v11, v12, type metadata accessor for StocksKitServiceRequest);
    sub_26BB54CA8(v12, v13, type metadata accessor for StocksKitServiceRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v17 = v1[15];
    v16 = v1[16];
    v18 = v1[14];
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BB55AE4(v1[15], type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v16, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v18, type metadata accessor for DataSource.Logo);
      v19 = 0xE400000000000000;
      v20 = 1869049708;
    }

    else
    {
      sub_26BB53CA4(0);
      v27 = *(v26 + 48);
      v19 = 0x800000026BB83500;
      sub_26BB55AE4(v17, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55AE4(v16, type metadata accessor for StocksKitServiceRequest);
      sub_26BB55B44(v18 + v27, &qword_28158BB50, MEMORY[0x277D858F8]);
      v20 = 0xD000000000000013;
    }

    v28 = v1[21];
    v30 = v1[17];
    v29 = v1[18];
    v31 = sub_26BB38238(v20, v19, v56);

    *(v14 + 4) = v31;
    *(v14 + 12) = 2080;
    sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v32 = sub_26BB7D348();
    v34 = v33;
    v25 = *(v29 + 8);
    v25(v28, v30);
    v35 = sub_26BB38238(v32, v34, v56);

    *(v14 + 14) = v35;
    _os_log_impl(&dword_26BB21000, v9, v10, "Fetching request: %s from proxy with id: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D68EA90](v53, -1, -1);
    MEMORY[0x26D68EA90](v14, -1, -1);
  }

  else
  {
    v21 = v1[21];
    v22 = v1[17];
    v23 = v1[18];
    v24 = v1[16];

    v25 = *(v23 + 8);
    v25(v21, v22);
    sub_26BB55AE4(v24, type metadata accessor for StocksKitServiceRequest);
  }

  v1[23] = v25;
  sub_26BB54D10();
  v1[24] = v36;
  v38 = v1[19];
  v37 = v1[20];
  v39 = v1[17];
  v40 = v1[18];
  v41 = v1[13];
  v54 = v41;
  v42 = v1[11];
  v43 = v1[4];
  v44 = v1[5];
  v45 = v36;
  v55(v37, v1[22], v39);
  sub_26BB54CA8(v43, v41, type metadata accessor for StocksKitServiceRequest);
  v46 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v47 = (v38 + *(v42 + 80) + v46) & ~*(v42 + 80);
  v48 = swift_allocObject();
  v1[25] = v48;
  *(v48 + 16) = v44;
  *(v48 + 24) = v45;
  (*(v40 + 32))(v48 + v46, v37, v39);
  sub_26BB5534C(v54, v48 + v47, type metadata accessor for StocksKitServiceRequest);

  v49 = swift_task_alloc();
  v1[26] = v49;
  v50 = type metadata accessor for CurrencyConversionsResult(0);
  *v49 = v1;
  v49[1] = sub_26BB51870;
  v51 = v1[3];

  return MEMORY[0x2821D20A8](v51, &unk_26BB804F8, v48, v50);
}

uint64_t sub_26BB51870()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_26BB58B5C;
  }

  else
  {

    v2 = sub_26BB58B3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BB5198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26BB519B4, 0, 0);
}

uint64_t sub_26BB519B4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_26BB51AA8;
  v4 = *(v0 + 16);

  return MEMORY[0x2822008A0](v4, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_26BB572F8, v1, &type metadata for DataSource.DownloadedLogo);
}

uint64_t sub_26BB51AA8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB51BE4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB51BE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB51C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26BB51C70, 0, 0);
}

uint64_t sub_26BB51C70()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = type metadata accessor for CurrencyConversionsResult(0);
  *v3 = v0;
  v3[1] = sub_26BB51D68;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_26BB55C5C, v1, v4);
}

uint64_t sub_26BB51D68()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB58B58, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BB51EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v28 = a4;
  v29 = a3;
  v30 = a1;
  sub_26BB57304(0);
  v27 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26BB7BE78();
  v24 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksKitServiceRequest(0);
  v23 = *(v13 - 8);
  v14 = *(v23 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(a5, v15, type metadata accessor for StocksKitServiceRequest);
  v16 = v28;
  (*(v10 + 16))(v12, v28, v9);
  v17 = v27;
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v27);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = (v14 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = (v11 + *(v7 + 80) + v19) & ~*(v7 + 80);
  v21 = swift_allocObject();
  sub_26BB5534C(v15, &v21[v18], type metadata accessor for StocksKitServiceRequest);
  (*(v10 + 32))(&v21[v19], v12, v24);
  (*(v7 + 32))(&v21[v20], v25, v17);
  sub_26BB55E24(v29, v16, v26, sub_26BB5736C, v21);
}

uint64_t sub_26BB521C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v31 = a5;
  v29 = a3;
  sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
  v28 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v27 = &v24 - v8;
  v10 = sub_26BB7BE78();
  v26 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StocksKitServiceRequest(0);
  v25 = *(v14 - 8);
  v15 = *(v25 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(v31, v16, type metadata accessor for StocksKitServiceRequest);
  (*(v11 + 16))(v13, a4, v10);
  v17 = v9;
  v18 = v28;
  (*(v7 + 16))(v17, v30, v28);
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = (v15 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = (v12 + *(v7 + 80) + v20) & ~*(v7 + 80);
  v22 = swift_allocObject();
  sub_26BB5534C(v16, &v22[v19], type metadata accessor for StocksKitServiceRequest);
  (*(v11 + 32))(&v22[v20], v13, v26);
  (*(v7 + 32))(&v22[v21], v27, v18);
  sub_26BB564C8(v29, a4, v31, sub_26BB55C68, v22);
}

uint64_t sub_26BB5250C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  v87 = sub_26BB7BE78();
  v86 = *(v87 - 8);
  v6 = MEMORY[0x28223BE20](v87);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v80 - v9;
  v82 = type metadata accessor for StocksKitServiceRequest(0);
  v11 = MEMORY[0x28223BE20](v82);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v80 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v80 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v80 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v80 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v80 - v26;
  v83 = *a1;
  if (a1[96])
  {
    sub_26BB54CA8(a1, v93, sub_26BB57784);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v28 = sub_26BB7CB88();
    __swift_project_value_buffer(v28, qword_28158F140);
    sub_26BB54CA8(a2, v25, type metadata accessor for StocksKitServiceRequest);
    v29 = v86;
    v30 = v87;
    (*(v86 + 16))(v8, v85, v87);
    v31 = sub_26BB7CB68();
    v32 = sub_26BB7CF78();
    if (os_log_type_enabled(v31, v32))
    {
      LODWORD(v85) = v32;
      v33 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v93 = v81;
      *v33 = 136315650;
      sub_26BB54CA8(v25, v16, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v16, v13, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = 1869049708;
        sub_26BB55AE4(v16, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v25, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v13, type metadata accessor for DataSource.Logo);
        v35 = 0xE400000000000000;
      }

      else
      {
        v34 = 0xD000000000000013;
        sub_26BB53CA4(0);
        v52 = *(v51 + 48);
        v35 = 0x800000026BB83500;
        sub_26BB55AE4(v16, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v25, type metadata accessor for StocksKitServiceRequest);
        v53 = &v13[v52];
        v29 = v86;
        sub_26BB55B44(v53, &qword_28158BB50, MEMORY[0x277D858F8]);
      }

      v54 = sub_26BB38238(v34, v35, v93);

      *(v33 + 4) = v54;
      *(v33 + 12) = 2112;
      sub_26BB56CE8(v55, v56, v57);
      swift_allocError();
      v50 = v83;
      *v58 = v83;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v59;
      v60 = v80;
      *v80 = v59;
      *(v33 + 22) = 2080;
      sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v61 = v87;
      v62 = sub_26BB7D348();
      v64 = v63;
      (*(v29 + 8))(v8, v61);
      v65 = sub_26BB38238(v62, v64, v93);

      *(v33 + 24) = v65;
      _os_log_impl(&dword_26BB21000, v31, v85, "Got failure response for request: %s, failure reason: %@, for id: %s", v33, 0x20u);
      sub_26BB55B44(v60, &qword_28158BB58, sub_26BB55C10);
      MEMORY[0x26D68EA90](v60, -1, -1);
      v66 = v81;
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v66, -1, -1);
      MEMORY[0x26D68EA90](v33, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v8, v30);
      v47 = sub_26BB55AE4(v25, type metadata accessor for StocksKitServiceRequest);
      v50 = v83;
    }

    sub_26BB56CE8(v47, v48, v49);
    v67 = swift_allocError();
    *v68 = v50;
    *v93 = v67;
    sub_26BB57304(0);
    return sub_26BB7CE58();
  }

  else
  {
    v36 = *(a1 + 49);
    v90 = *(a1 + 33);
    v37 = *(a1 + 65);
    v91 = v36;
    v92[0] = v37;
    *(v92 + 15) = *(a1 + 5);
    v38 = *(a1 + 17);
    v88 = *(a1 + 1);
    v89 = v38;
    sub_26BB54CA8(a1, v93, sub_26BB57784);
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v39 = sub_26BB7CB88();
    __swift_project_value_buffer(v39, qword_28158F140);
    sub_26BB54CA8(a2, v27, type metadata accessor for StocksKitServiceRequest);
    v40 = v86;
    v41 = v87;
    (*(v86 + 16))(v10, v85, v87);
    v42 = sub_26BB7CB68();
    v43 = sub_26BB7CF78();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v93 = v85;
      *v44 = 136315394;
      sub_26BB54CA8(v27, v22, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v22, v19, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = 1869049708;
        sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v27, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v19, type metadata accessor for DataSource.Logo);
        v46 = 0xE400000000000000;
      }

      else
      {
        sub_26BB53CA4(0);
        v71 = *(v70 + 48);
        v46 = 0x800000026BB83500;
        sub_26BB55AE4(v22, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v27, type metadata accessor for StocksKitServiceRequest);
        v72 = &v19[v71];
        v45 = 0xD000000000000013;
        sub_26BB55B44(v72, &qword_28158BB50, MEMORY[0x277D858F8]);
      }

      v73 = sub_26BB38238(v45, v46, v93);

      *(v44 + 4) = v73;
      *(v44 + 12) = 2080;
      sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v74 = v87;
      v75 = sub_26BB7D348();
      v77 = v76;
      (*(v86 + 8))(v10, v74);
      v78 = sub_26BB38238(v75, v77, v93);

      *(v44 + 14) = v78;
      _os_log_impl(&dword_26BB21000, v42, v43, "Got success response for request: %s, for id: %s", v44, 0x16u);
      v79 = v85;
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v79, -1, -1);
      MEMORY[0x26D68EA90](v44, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v10, v41);
      sub_26BB55AE4(v27, type metadata accessor for StocksKitServiceRequest);
    }

    v93[0] = v83;
    v95 = v90;
    v96 = v91;
    *v97 = v92[0];
    *&v97[15] = *(v92 + 15);
    *&v93[1] = v88;
    v94 = v89;
    sub_26BB57304(0);
    return sub_26BB7CE68();
  }
}

uint64_t sub_26BB52FA8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v100 = a3;
  v101 = a4;
  v99 = a2;
  sub_26BB57E88(0, &qword_28158B0D0, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D84C48]);
  v94 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v95 = (&v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v96 = &v91 - v8;
  v9 = sub_26BB7BE78();
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v97 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = (&v91 - v13);
  v93 = type metadata accessor for StocksKitServiceRequest(0);
  v14 = MEMORY[0x28223BE20](v93);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v91 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v91 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v91 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v91 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v91 - v29;
  v31 = type metadata accessor for CurrencyConversionsResult(0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v92 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v91 - v34;
  sub_26BB56C7C(0);
  MEMORY[0x28223BE20](v36);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BB54CA8(a1, v38, sub_26BB56C7C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    LODWORD(v38) = *v38;
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v39 = sub_26BB7CB88();
    __swift_project_value_buffer(v39, qword_28158F140);
    sub_26BB54CA8(v99, v28, type metadata accessor for StocksKitServiceRequest);
    v41 = v102;
    v40 = v103;
    v42 = v97;
    (*(v103 + 16))(v97, v100, v102);
    v43 = sub_26BB7CB68();
    v44 = sub_26BB7CF78();
    if (os_log_type_enabled(v43, v44))
    {
      LODWORD(v100) = v38;
      v45 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v104 = v99;
      *v45 = 136315650;
      sub_26BB54CA8(v28, v19, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v19, v16, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = 1869049708;
        sub_26BB55AE4(v19, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v28, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v16, type metadata accessor for DataSource.Logo);
        v38 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xD000000000000013;
        sub_26BB53CA4(0);
        v62 = *(v61 + 48);
        v38 = 0x800000026BB83500;
        sub_26BB55AE4(v19, type metadata accessor for StocksKitServiceRequest);
        v41 = v102;
        sub_26BB55AE4(v28, type metadata accessor for StocksKitServiceRequest);
        v63 = &v16[v62];
        v42 = v97;
        sub_26BB55B44(v63, &qword_28158BB50, MEMORY[0x277D858F8]);
      }

      v64 = sub_26BB38238(v46, v38, &v104);

      *(v45 + 4) = v64;
      *(v45 + 12) = 2112;
      sub_26BB56CE8(v65, v66, v67);
      swift_allocError();
      LOBYTE(v38) = v100;
      *v68 = v100;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v69;
      v70 = v98;
      *v98 = v69;
      *(v45 + 22) = 2080;
      sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v71 = sub_26BB7D348();
      v73 = v72;
      (*(v103 + 8))(v42, v41);
      v74 = sub_26BB38238(v71, v73, &v104);

      *(v45 + 24) = v74;
      _os_log_impl(&dword_26BB21000, v43, v44, "Got failure response for request: %s, failure reason: %@, for id: %s", v45, 0x20u);
      sub_26BB55B44(v70, &qword_28158BB58, sub_26BB55C10);
      MEMORY[0x26D68EA90](v70, -1, -1);
      v75 = v99;
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v75, -1, -1);
      MEMORY[0x26D68EA90](v45, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v42, v41);
      v58 = sub_26BB55AE4(v28, type metadata accessor for StocksKitServiceRequest);
    }

    sub_26BB56CE8(v58, v59, v60);
    v76 = swift_allocError();
    *v77 = v38;
    v104 = v76;
    sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
    return sub_26BB7CE58();
  }

  else
  {
    sub_26BB5534C(v38, v35, type metadata accessor for CurrencyConversionsResult);
    v47 = v35;
    if (qword_28158C2F8 != -1)
    {
      swift_once();
    }

    v48 = sub_26BB7CB88();
    __swift_project_value_buffer(v48, qword_28158F140);
    sub_26BB54CA8(v99, v30, type metadata accessor for StocksKitServiceRequest);
    v49 = v102;
    v50 = v103;
    v51 = v98;
    (*(v103 + 16))(v98, v100, v102);
    v52 = sub_26BB7CB68();
    v53 = sub_26BB7CF78();
    if (os_log_type_enabled(v52, v53))
    {
      v100 = v47;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v104 = v55;
      *v54 = 136315394;
      sub_26BB54CA8(v30, v25, type metadata accessor for StocksKitServiceRequest);
      sub_26BB54CA8(v25, v22, type metadata accessor for StocksKitServiceRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = 1869049708;
        sub_26BB55AE4(v25, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v30, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v22, type metadata accessor for DataSource.Logo);
        v57 = 0xE400000000000000;
      }

      else
      {
        sub_26BB53CA4(0);
        v80 = *(v79 + 48);
        v57 = 0x800000026BB83500;
        sub_26BB55AE4(v25, type metadata accessor for StocksKitServiceRequest);
        sub_26BB55AE4(v30, type metadata accessor for StocksKitServiceRequest);
        v81 = &v22[v80];
        v56 = 0xD000000000000013;
        sub_26BB55B44(v81, &qword_28158BB50, MEMORY[0x277D858F8]);
      }

      v82 = sub_26BB38238(v56, v57, &v104);

      *(v54 + 4) = v82;
      *(v54 + 12) = 2080;
      sub_26BB54B44(&qword_28158BB00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v83 = v98;
      v84 = v102;
      v85 = sub_26BB7D348();
      v87 = v86;
      (*(v103 + 8))(v83, v84);
      v88 = sub_26BB38238(v85, v87, &v104);

      *(v54 + 14) = v88;
      _os_log_impl(&dword_26BB21000, v52, v53, "Got success response for request: %s, for id: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D68EA90](v55, -1, -1);
      MEMORY[0x26D68EA90](v54, -1, -1);

      v47 = v100;
    }

    else
    {

      (*(v50 + 8))(v51, v49);
      sub_26BB55AE4(v30, type metadata accessor for StocksKitServiceRequest);
    }

    v89 = v96;
    sub_26BB54CA8(v47, v96, type metadata accessor for CurrencyConversionsResult);
    swift_storeEnumTagMultiPayload();
    v90 = v95;
    sub_26BB56E40(v89, v95, &qword_28158B0D0, type metadata accessor for CurrencyConversionsResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v104 = *v90;
      sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
      sub_26BB7CE58();
    }

    else
    {
      sub_26BB5534C(v90, v92, type metadata accessor for CurrencyConversionsResult);
      sub_26BB57E88(0, &qword_28158B260, type metadata accessor for CurrencyConversionsResult, MEMORY[0x277D85670]);
      sub_26BB7CE68();
    }

    sub_26BB56EC0(v89, &qword_28158B0D0, type metadata accessor for CurrencyConversionsResult);
    return sub_26BB55AE4(v47, type metadata accessor for CurrencyConversionsResult);
  }
}

void sub_26BB53CA4(uint64_t a1)
{
  if (!qword_28158BDC0[0])
  {
    sub_26BB55BBC(255, &qword_28158BB50, MEMORY[0x277D858F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_28158BDC0);
    }
  }
}

void sub_26BB53D2C(uint64_t a1)
{
  if (!qword_28043A1F0)
  {
    type metadata accessor for DataSource.Logo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28043A1F0);
    }
  }
}

uint64_t sub_26BB53DB0(uint64_t a1)
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

uint64_t sub_26BB53E2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
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

void sub_26BB53F54(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
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

uint64_t sub_26BB541D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26BB54250(uint64_t a1)
{
  if (!qword_28158C318)
  {
    sub_26BB7BE78();
    type metadata accessor for StocksKitServiceRequest(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28158C318);
    }
  }
}

void sub_26BB542C4()
{
  if (!qword_28043A1F8)
  {
    v0 = sub_26BB7BE78();
    if (!v1)
    {
      atomic_store(v0, &qword_28043A1F8);
    }
  }
}

unint64_t sub_26BB54310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28043A200;
  if (!qword_28043A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28043A200);
  }

  return result;
}

uint64_t sub_26BB54364(uint64_t a1, uint64_t a2, void *a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = type metadata accessor for StocksKitServiceRequest(0);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = *a3;

  return MEMORY[0x2822009F8](sub_26BB54408, 0, 0);
}

uint64_t sub_26BB54408()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  sub_26BB53D2C(0);
  v5 = *(v4 + 48);
  sub_26BB54CA8(v3, v2, type metadata accessor for DataSource.Logo);
  *(v2 + v5) = v1;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_26BB544FC;
  v7 = v0[5];
  v8 = v0[2];

  return sub_26BB50428(v8, v7);
}

uint64_t sub_26BB544FC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_26BB55AE4(v2, type metadata accessor for StocksKitServiceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB54674, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26BB54674()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BB546D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = type metadata accessor for StocksKitServiceRequest(0);
  v6 = swift_task_alloc();
  v7 = *v3;
  *(v4 + 40) = v6;
  *(v4 + 48) = v7;
  *(v4 + 56) = *a2;
  *(v4 + 88) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_26BB54784, 0, 0);
}

uint64_t sub_26BB54784()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  sub_26BB53CA4(0);
  v7 = *(v6 + 48);
  *v4 = v3;
  *(v4 + 8) = v2;
  *(v4 + 16) = v1;
  sub_26BB54C28(v5, v4 + v7);
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_26BB5486C;
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return sub_26BB51090(v10, v9);
}

uint64_t sub_26BB5486C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 80) = v0;

  sub_26BB55AE4(v2, type metadata accessor for StocksKitServiceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BB549E4, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_26BB549E4()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_26BB54A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2B8;
  if (!qword_28158C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2B8);
  }

  return result;
}

unint64_t sub_26BB54A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2D0;
  if (!qword_28158C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2D0);
  }

  return result;
}

unint64_t sub_26BB54AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C2E8;
  if (!qword_28158C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C2E8);
  }

  return result;
}

uint64_t sub_26BB54B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26BB54BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28158C1F0;
  if (!qword_28158C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158C1F0);
  }

  return result;
}

uint64_t sub_26BB54C28(uint64_t a1, uint64_t a2)
{
  sub_26BB55BBC(0, &qword_28158BB50, MEMORY[0x277D858F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}