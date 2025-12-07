StocksAnalytics::CalendarResultType_optional __swiftcall CalendarResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CalendarResultType.rawValue.getter()
{
  v1 = 0x6C65636E6163;
  v2 = 1818845542;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x73736563637573;
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

unint64_t sub_2202623BC()
{
  result = qword_27CF268B8;
  if (!qword_27CF268B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF268B8);
  }

  return result;
}

uint64_t sub_220262410()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_2202624CC(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220262574(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220262638(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6C65636E6163;
  v4 = 0xE400000000000000;
  v5 = 1818845542;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000022038F8E0;
  }

  if (*v1)
  {
    v3 = 0x73736563637573;
    v2 = 0xE700000000000000;
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

unint64_t sub_220262770()
{
  result = qword_27CF268C0;
  if (!qword_27CF268C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF268C0);
  }

  return result;
}

unint64_t sub_2202627C4()
{
  result = qword_281264378;
  if (!qword_281264378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264378);
  }

  return result;
}

unint64_t sub_220262818()
{
  result = qword_281263DE8;
  if (!qword_281263DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263DE8);
  }

  return result;
}

void sub_22026286C()
{
  sub_2202636D8(0, &qword_281266960, sub_2202627C4, &type metadata for WebSubscriptionData);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - v4;
  v6 = [*(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext) purchaseController];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 webAccessOptedInTagIDs];

  if (!v8)
  {
    return;
  }

  v9 = sub_22036FB98();

  v10 = *(v9 + 16);
  v32 = v3;
  v33 = v2;
  v31 = v5;
  if (!v10)
  {

    v13 = 2;
    v11 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v11 = sub_2202880A8(v10, 0);
  v12 = sub_220263738(&v34, v11 + 4, v10, v9);
  sub_220263890(v34);
  if (v12 != v10)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v13 = 1;
LABEL_7:
  v24 = v13;
  v26 = v11;
  v30 = *(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager);
  sub_22036EF08();
  LOBYTE(v34) = v13;
  v35 = v11;
  sub_2201F8304(0);
  v29 = v14;
  v15 = sub_22036EE48();
  v16 = *(v15 - 8);
  v28 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v27 = xmmword_220371600;
  *(v18 + 16) = xmmword_220371600;
  v19 = *MEMORY[0x277CEAD10];
  v20 = *(v16 + 104);
  v20(v18 + v17, v19, v15);
  v25 = "v24@?0@NSArray8@NSArray16";
  sub_2202627C4();
  sub_22036F328();

  LOBYTE(v34) = v24;
  v35 = v26;
  v21 = v31;
  sub_22036ECD8();
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  v20(v22 + v17, v19, v15);
  sub_22036EEB8();

  (*(v32 + 8))(v21, v33);
}

void sub_220262C2C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext) purchaseController];
  if (v1)
  {
    v2 = v1;
    sub_22036F4F8();
    v3 = sub_22036F4D8();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[4] = sub_2202635C4;
    v6[5] = v4;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_2202635CC;
    v6[3] = &block_descriptor_0;
    v5 = _Block_copy(v6);

    [v2 performEntitlementCheckWithIgnoreCache:0 callbackQueue:v3 completion:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_220262D5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2202636D8(0, &qword_281266950, sub_220262818, &type metadata for PaidSubscriptionData);
  v5 = v4;
  v6 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v8 = v85 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!a1)
    {
LABEL_68:

      return;
    }

    v96 = Strong;
    v92 = v8;
    v93 = v6;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_27;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v94 = v5;
    while (v11)
    {
      v12 = 0;
      v98 = a1 & 0xC000000000000001;
      v5 = MEMORY[0x277D84F98];
      v97 = a1;
      while (1)
      {
        if (v98)
        {
          v16 = MEMORY[0x223D79B90](v12, a1);
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_24;
          }

          v16 = *(a1 + 8 * v12 + 32);
        }

        v17 = v16;
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v19 = [v16 inAppAdamID];
        v20 = [v19 stringValue];

        v21 = sub_22036FAD8();
        v23 = v22;

        a1 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v5;
        v25 = sub_220303844(v21, v23);
        v27 = v5[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_25;
        }

        v31 = v26;
        if (v5[3] < v30)
        {
          sub_220303A20(v30, isUniquelyReferenced_nonNull_native);
          v25 = sub_220303844(v21, v23);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_73;
          }

LABEL_17:
          if (v31)
          {
            goto LABEL_6;
          }

          goto LABEL_18;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_17;
        }

        v36 = v25;
        sub_220303F6C();
        v25 = v36;
        if (v31)
        {
LABEL_6:
          v13 = v25;

          v5 = v99;
          v14 = v99[7];
          v15 = *(v14 + 8 * v13);
          *(v14 + 8 * v13) = a1;

          goto LABEL_7;
        }

LABEL_18:
        v5 = v99;
        v99[(v25 >> 6) + 8] |= 1 << v25;
        v33 = (v5[6] + 16 * v25);
        *v33 = v21;
        v33[1] = v23;
        *(v5[7] + 8 * v25) = a1;

        v34 = v5[2];
        v29 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v29)
        {
          goto LABEL_26;
        }

        v5[2] = v35;
LABEL_7:
        ++v12;
        a1 = v97;
        if (v18 == v11)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v11 = sub_22036FE18();
      v94 = v5;
    }

    v5 = MEMORY[0x277D84F98];
LABEL_29:
    v37 = [*&v96[OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_cloudContext] purchaseController];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 purchaseLookUpEntriesByTagID];

      if (v39)
      {
        sub_220263690(0, &qword_281261E58, 0x277D31218);
        v40 = sub_22036FA58();

        v41 = 0;
        v43 = v40 + 64;
        v42 = *(v40 + 64);
        v98 = v40;
        v44 = 1 << *(v40 + 32);
        v45 = -1;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        v46 = v45 & v42;
        v47 = (v44 + 63) >> 6;
        v91 = MEMORY[0x277D84F90];
        v95 = MEMORY[0x277D84F90];
        if ((v45 & v42) == 0)
        {
          while (1)
          {
LABEL_37:
            v48 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              __break(1u);
              goto LABEL_71;
            }

            if (v48 >= v47)
            {
              break;
            }

            v46 = *(v43 + 8 * v48);
            ++v41;
            if (v46)
            {
              v41 = v48;
              goto LABEL_41;
            }
          }

          v71 = v95;
          v72 = v91;
          if (*(v91 + 2))
          {
            v73 = 3;
          }

          else
          {
            v73 = 1;
          }

          if (*(v91 + 2))
          {
            v74 = 2;
          }

          else
          {
            v74 = 4;
          }

          if (*(v95 + 2))
          {
            v75 = v73;
          }

          else
          {
            v75 = v74;
          }

          LODWORD(v97) = v75;
          v98 = OBJC_IVAR____TtC15StocksAnalytics15SessionObserver_sessionManager;
          v87 = sub_22036EF08();
          LOBYTE(v99) = v75;
          v100 = v71;
          v101 = v72;
          sub_2201F8304(0);
          v90 = v76;
          v77 = sub_22036EE48();
          v78 = *(v77 - 8);
          v89 = *(v78 + 72);
          v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
          v80 = swift_allocObject();
          v88 = xmmword_220371600;
          *(v80 + 16) = xmmword_220371600;
          v81 = *MEMORY[0x277CEAD10];
          v86 = *(v78 + 104);
          v86(v80 + v79, v81, v77);
          v85[1] = "v24@?0@NSArray8@NSArray16";
          sub_220262818();
          sub_22036F328();

          LOBYTE(v99) = v97;
          v100 = v71;
          v101 = v72;
          v82 = v92;
          sub_22036ECD8();
          v83 = v96;
          v84 = swift_allocObject();
          *(v84 + 16) = v88;
          v86(v84 + v79, v81, v77);
          sub_22036EEB8();

          (*(v93 + 8))(v82, v94);
          Strong = v83;
          goto LABEL_68;
        }

        while (1)
        {
          while (1)
          {
LABEL_41:
            v49 = __clz(__rbit64(v46));
            v46 &= v46 - 1;
            v50 = v49 | (v41 << 6);
            v51 = *(v98 + 56);
            v52 = (*(v98 + 48) + 16 * v50);
            v53 = v52[1];
            v97 = *v52;
            v54 = *(v51 + 8 * v50);

            v55 = v54;
            if ([v55 purchaseType] != 1)
            {
              goto LABEL_36;
            }

            v56 = [v55 purchaseID];
            if (!v56)
            {
              goto LABEL_36;
            }

            v57 = v56;
            v58 = sub_22036FAD8();
            v60 = v59;

            if (v5[2])
            {
              break;
            }

LABEL_36:

            if (!v46)
            {
              goto LABEL_37;
            }
          }

          v61 = sub_220303844(v58, v60);
          v63 = v62;

          if ((v63 & 1) == 0)
          {
            goto LABEL_36;
          }

          v64 = *(v5[7] + 8 * v61);
          if ([v64 isTrialPeriod])
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_220287D18(0, *(v95 + 2) + 1, 1, v95);
            }

            v66 = *(v95 + 2);
            v65 = *(v95 + 3);
            v67 = v66 + 1;
            if (v66 >= v65 >> 1)
            {
              v95 = sub_220287D18((v65 > 1), v66 + 1, 1, v95);
            }

            v68 = v95;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v91 = sub_220287D18(0, *(v91 + 2) + 1, 1, v91);
            }

            v66 = *(v91 + 2);
            v70 = *(v91 + 3);
            v67 = v66 + 1;
            if (v66 >= v70 >> 1)
            {
              v91 = sub_220287D18((v70 > 1), v66 + 1, 1, v91);
            }

            v68 = v91;
          }

          *(v68 + 2) = v67;
          v69 = &v68[16 * v66];
          *(v69 + 4) = v97;
          *(v69 + 5) = v53;
          if (!v46)
          {
            goto LABEL_37;
          }
        }
      }
    }

    else
    {
LABEL_71:
      __break(1u);
    }

    __break(1u);
LABEL_73:
    sub_220370098();
    __break(1u);
  }
}

uint64_t sub_2202635CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_220263690(0, &qword_281261E50, 0x277D31338);
    v4 = sub_22036FB68();
  }

  if (a3)
  {
    sub_220263690(0, &qword_281261E48, 0x277D312D0);
    a3 = sub_22036FB68();
  }

  v5(v4, a3);
}

uint64_t sub_220263690(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2202636D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_22036ECE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_220263738(void *result, void *a2, uint64_t a3, uint64_t a4)
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

StocksAnalytics::ActionMethod_optional __swiftcall ActionMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActionMethod.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x4D747865746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x6570697773;
  }

  if (*v0)
  {
    v1 = 0x776F7272616873;
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

unint64_t sub_220263984()
{
  result = qword_27CF268C8;
  if (!qword_27CF268C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF268C8);
  }

  return result;
}

uint64_t sub_2202639D8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220263AA0(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_220263B54(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220263C24(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEB00000000756E65;
  v5 = 0x4D747865746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x6570697773;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x776F7272616873;
    v2 = 0xE700000000000000;
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

unint64_t sub_220263D68()
{
  result = qword_27CF268D0;
  if (!qword_27CF268D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF268D0);
  }

  return result;
}

StocksAnalytics::SymbolChartDateRange_optional __swiftcall SymbolChartDateRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SymbolChartDateRange.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0x6B656557656E6FLL;
    v9 = 0x68746E6F4D656E6FLL;
    if (v1 != 3)
    {
      v9 = 0x6E6F4D6565726874;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x796144656E6FLL;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x7261655965766966;
    v3 = 0x73726165596E6574;
    if (v1 != 9)
    {
      v3 = 7889261;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x68746E6F4D786973;
    v5 = 0x72616559656E6FLL;
    if (v1 != 6)
    {
      v5 = 0x73726165596F7774;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_220263F88()
{
  result = qword_27CF268D8;
  if (!qword_27CF268D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF268D8);
  }

  return result;
}

uint64_t sub_220263FDC()
{
  v1 = *v0;
  sub_220370108();
  sub_22032C560(v3, v1);
  return sub_220370128();
}

uint64_t sub_22026402C(uint64_t a1)
{
  v2 = *v1;
  sub_220370108();
  sub_22032C560(v4, v2);
  return sub_220370128();
}

uint64_t sub_22026407C@<X0>(uint64_t *a1@<X8>)
{
  result = SymbolChartDateRange.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_220264164()
{
  result = qword_27CF268E0;
  if (!qword_27CF268E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF268E0);
  }

  return result;
}

uint64_t sub_220264220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70795470756F7267 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2202642B0(uint64_t a1)
{
  v2 = sub_220264484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202642EC(uint64_t a1)
{
  v2 = sub_220264484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdGroupData.encode(to:)(void *a1)
{
  sub_2202646C4(0, &qword_27CF268E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220264484();
  sub_220370168();
  v11 = v8;
  sub_2202644D8();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220264484()
{
  result = qword_27CF268F0;
  if (!qword_27CF268F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF268F0);
  }

  return result;
}

unint64_t sub_2202644D8()
{
  result = qword_281262040;
  if (!qword_281262040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262040);
  }

  return result;
}

uint64_t AdGroupData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2202646C4(0, &qword_27CF268F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220264484();
  sub_220370148();
  if (!v2)
  {
    sub_220264728();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2202646C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220264484();
    v7 = a3(a1, &type metadata for AdGroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220264728()
{
  result = qword_281266CA0[0];
  if (!qword_281266CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281266CA0);
  }

  return result;
}

unint64_t sub_2202647D8()
{
  result = qword_27CF26900;
  if (!qword_27CF26900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26900);
  }

  return result;
}

unint64_t sub_220264830()
{
  result = qword_27CF26908;
  if (!qword_27CF26908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26908);
  }

  return result;
}

unint64_t sub_220264888()
{
  result = qword_27CF26910;
  if (!qword_27CF26910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26910);
  }

  return result;
}

uint64_t sub_220264944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000002203909B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_220370048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2202649D8(uint64_t a1)
{
  v2 = sub_220264BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220264A14(uint64_t a1)
{
  v2 = sub_220264BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolChartDisplayErrorData.encode(to:)(void *a1)
{
  sub_220264DEC(0, &qword_281261BD8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220264BAC();
  sub_220370168();
  v11 = v8;
  sub_220264C00();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220264BAC()
{
  result = qword_281262A38;
  if (!qword_281262A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A38);
  }

  return result;
}

unint64_t sub_220264C00()
{
  result = qword_281262A48[0];
  if (!qword_281262A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281262A48);
  }

  return result;
}

uint64_t SymbolChartDisplayErrorData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220264DEC(0, &qword_27CF26918, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220264BAC();
  sub_220370148();
  if (!v2)
  {
    sub_220264E50();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220264DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220264BAC();
    v7 = a3(a1, &type metadata for SymbolChartDisplayErrorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220264E50()
{
  result = qword_27CF26920;
  if (!qword_27CF26920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26920);
  }

  return result;
}

unint64_t sub_220264EA8()
{
  result = qword_281262A18;
  if (!qword_281262A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A18);
  }

  return result;
}

unint64_t sub_220264F00()
{
  result = qword_281262A20;
  if (!qword_281262A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A20);
  }

  return result;
}

unint64_t sub_220264FA8()
{
  result = qword_27CF26928;
  if (!qword_27CF26928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26928);
  }

  return result;
}

unint64_t sub_220265000()
{
  result = qword_281262A28;
  if (!qword_281262A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A28);
  }

  return result;
}

unint64_t sub_220265058()
{
  result = qword_281262A30;
  if (!qword_281262A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262A30);
  }

  return result;
}

uint64_t sub_22026517C()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_281263D70);
  __swift_project_value_buffer(v0, qword_281263D70);
  return sub_22036F108();
}

uint64_t PaywallExposureEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PaywallExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 24);
  sub_220266184(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 24);
  sub_220266184(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 28);
  sub_220266184(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 28);
  sub_220266184(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 32);
  sub_220266184(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 32);
  sub_220266184(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 36);
  sub_220266184(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 36);
  sub_220266184(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 40);
  sub_220266184(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 40);
  sub_220266184(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 44);
  sub_220266184(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220265CD4()
{
  result = qword_2812644B8;
  if (!qword_2812644B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644B8);
  }

  return result;
}

unint64_t sub_220265D28()
{
  result = qword_2812644C0;
  if (!qword_2812644C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644C0);
  }

  return result;
}

uint64_t PaywallExposureEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 44);
  sub_220266184(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 48);
  sub_220266184(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220265F2C()
{
  result = qword_281265D50;
  if (!qword_281265D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D50);
  }

  return result;
}

unint64_t sub_220265F80()
{
  result = qword_281265D58;
  if (!qword_281265D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265D58);
  }

  return result;
}

uint64_t PaywallExposureEvent.purchaseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 48);
  sub_220266184(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.paywallData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 52);
  sub_220266184(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220266184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220266200()
{
  result = qword_281266010;
  if (!qword_281266010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266010);
  }

  return result;
}

unint64_t sub_220266254()
{
  result = qword_281266018;
  if (!qword_281266018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266018);
  }

  return result;
}

uint64_t PaywallExposureEvent.paywallData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PaywallExposureEvent(0) + 52);
  sub_220266184(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PaywallExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for PaywallExposureEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220266184(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_220266184(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_220266184(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_220266184(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_220266184(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_220266184(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_220266184(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_220266184(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t sub_220266884@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t PaywallExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PaywallExposureEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 28);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_2202669E8(v10, v9);
}

uint64_t sub_2202669E8(uint64_t a1, uint64_t a2)
{
  sub_22023A8F4(0, &qword_27CF26930, &type metadata for NewsArticleData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PaywallExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

void PaywallExposureEvent.Model.channelData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  sub_2202440A8(v4, v5, v6, v7);
}

void PaywallExposureEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t PaywallExposureEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t PaywallExposureEvent.Model.purchaseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PaywallExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t PaywallExposureEvent.Model.paywallData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PaywallExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 PaywallExposureEvent.Model.init(eventData:timedData:viewData:newsArticleData:feedData:channelData:groupData:purchaseSessionData:purchaseData:paywallData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, char *a11)
{
  v17 = *a3;
  v18 = a3[1];
  v19 = *(a3 + 8);
  v39 = *a5;
  v20 = *(a5 + 2);
  v40 = *(a6 + 16);
  v41 = *(a7 + 40);
  v42 = *(a7 + 32);
  v43 = a8[1];
  v44 = *a8;
  v46 = a10[1];
  v47 = *a10;
  v45 = *(a10 + 16);
  v48 = *a11;
  v21 = sub_22036F388();
  v37 = *(a7 + 16);
  v38 = *a7;
  v35 = a6[1];
  v36 = *a6;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for PaywallExposureEvent.Model(0);
  v23 = v22[5];
  v24 = sub_22036F3C8();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  *v25 = v17;
  *(v25 + 8) = v18;
  *(v25 + 16) = v19;
  v26 = a9 + v22[7];
  v27 = *(a4 + 48);
  *(v26 + 32) = *(a4 + 32);
  *(v26 + 48) = v27;
  *(v26 + 64) = *(a4 + 64);
  v28 = *(a4 + 16);
  *v26 = *a4;
  *(v26 + 16) = v28;
  v29 = a9 + v22[8];
  *v29 = v39;
  *(v29 + 16) = v20;
  v30 = a9 + v22[9];
  *v30 = v36;
  *(v30 + 16) = v35;
  *(v30 + 32) = v40;
  v31 = a9 + v22[10];
  result = v38;
  *v31 = v38;
  *(v31 + 16) = v37;
  *(v31 + 32) = v42;
  *(v31 + 40) = v41;
  v33 = (a9 + v22[11]);
  *v33 = v44;
  v33[1] = v43;
  v34 = a9 + v22[12];
  *v34 = v47;
  *(v34 + 8) = v46;
  *(v34 + 16) = v45;
  *(a9 + v22[13]) = v48;
  return result;
}

unint64_t sub_220266E0C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x6573616863727570;
    if (a1 != 8)
    {
      v6 = 0x446C6C6177796170;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x446C656E6E616863;
    if (a1 != 5)
    {
      v7 = 0x74614470756F7267;
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
    v1 = 0x746144746E657665;
    v2 = 0x6174614477656976;
    v3 = 0x697472417377656ELL;
    if (a1 != 3)
    {
      v3 = 0x6174614464656566;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
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

uint64_t sub_220266F74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220268DD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220266FA8(uint64_t a1)
{
  v2 = sub_2202675EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220266FE4(uint64_t a1)
{
  v2 = sub_2202675EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaywallExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220268054(0, &qword_27CF26938, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202675EC();
  sub_220370168();
  LOBYTE(v50[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for PaywallExposureEvent.Model(0);
    LOBYTE(v50[0]) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = (v3 + v10[6]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v54 = v12;
    v55 = v13;
    v56 = v11;
    v59 = 2;
    sub_220202110();

    sub_22036FFF8();

    v14 = v3 + v10[7];
    v15 = *(v14 + 16);
    v16 = *(v14 + 48);
    v51 = *(v14 + 32);
    v52 = v16;
    v17 = *(v14 + 16);
    v50[0] = *v14;
    v50[1] = v17;
    v18 = *(v14 + 48);
    v47 = v51;
    v48 = v18;
    v53 = *(v14 + 64);
    v49 = *(v14 + 64);
    v45 = v50[0];
    v46 = v15;
    v58 = 3;
    sub_2202669E8(v50, v43);
    sub_22022EDA0();
    sub_22036FF88();
    v43[2] = v47;
    v43[3] = v48;
    v44 = v49;
    v43[0] = v45;
    v43[1] = v46;
    sub_220267640(v43);
    v20 = (v3 + v10[8]);
    v21 = *(v20 + 2);
    v38 = *v20;
    v39 = v21;
    v57 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v22 = v3 + v10[9];
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    v26 = *(v22 + 32);
    *&v38 = *v22;
    *(&v38 + 1) = v23;
    v39 = v24;
    v40 = v25;
    LOWORD(v41) = v26;
    v57 = 5;
    sub_2202440A8(v38, v23, v24, v25);
    sub_220236A84();
    sub_22036FF88();
    sub_220244C08(v38, *(&v38 + 1), v39, v40);
    v27 = (v3 + v10[10]);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    v31 = v27[4];
    v32 = v27[5];
    *&v38 = *v27;
    *(&v38 + 1) = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v57 = 6;
    sub_22023846C(v38, v28, v29, v30, v31, v32);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v38, *(&v38 + 1), v39, v40, v41, v42);
    v33 = (v3 + v10[11]);
    v34 = v33[1];
    *&v38 = *v33;
    *(&v38 + 1) = v34;
    v57 = 7;
    sub_220265D28();

    sub_22036FFF8();

    v35 = (v3 + v10[12]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v35) = *(v35 + 16);
    *&v38 = v36;
    *(&v38 + 1) = v37;
    LOBYTE(v39) = v35;
    v57 = 8;
    sub_220265F80();

    sub_22036FFF8();

    LOBYTE(v38) = *(v3 + v10[13]);
    v57 = 9;
    sub_220266254();
    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202675EC()
{
  result = qword_27CF26940;
  if (!qword_27CF26940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26940);
  }

  return result;
}

uint64_t sub_220267640(uint64_t a1)
{
  sub_22023A8F4(0, &qword_27CF26930, &type metadata for NewsArticleData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PaywallExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v46 = sub_22036F3C8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220268054(0, &qword_27CF26948, MEMORY[0x277D844C8]);
  v51 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v42 - v8;
  v10 = type metadata accessor for PaywallExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202675EC();
  v50 = v9;
  v13 = v52;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v4;
    v15 = v48;
    v43 = v10;
    v52 = v12;
    LOBYTE(v56) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v16 = v49;
    sub_22036FF28();
    v17 = *(v47 + 32);
    v18 = v52;
    v49 = v5;
    v17(v52, v16, v5);
    LOBYTE(v56) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v19 = v14;
    v20 = v46;
    sub_22036FF28();
    v42[1] = 0;
    v21 = v19;
    v22 = v43;
    (*(v45 + 32))(&v18[v43[5]], v21, v20);
    LOBYTE(v53) = 2;
    sub_2202020B8();
    sub_22036FF28();
    v23 = *(&v56 + 1);
    v24 = v57;
    v25 = &v18[v22[6]];
    *v25 = v56;
    *(v25 + 1) = v23;
    *(v25 + 8) = v24;
    v62 = 3;
    sub_22022ED48();
    sub_22036FEB8();
    v26 = &v18[v22[7]];
    v27 = v59;
    *(v26 + 2) = v58;
    *(v26 + 3) = v27;
    *(v26 + 16) = v60;
    v28 = v57;
    *v26 = v56;
    *(v26 + 1) = v28;
    v61 = 4;
    sub_2201FBCC4();
    sub_22036FEB8();
    v29 = v54;
    v30 = &v18[v22[8]];
    *v30 = v53;
    *(v30 + 2) = v29;
    v61 = 5;
    sub_220236A30();
    sub_22036FEB8();
    v31 = v55;
    v32 = &v18[v22[9]];
    v33 = v54;
    *v32 = v53;
    *(v32 + 1) = v33;
    *(v32 + 16) = v31;
    v61 = 6;
    sub_220236C88();
    sub_22036FEB8();
    v34 = &v18[v22[10]];
    v35 = v54;
    *v34 = v53;
    *(v34 + 1) = v35;
    *(v34 + 2) = v55;
    v61 = 7;
    sub_220265CD4();
    sub_22036FF28();
    v36 = *(&v53 + 1);
    v37 = &v52[v22[11]];
    *v37 = v53;
    *(v37 + 1) = v36;
    v61 = 8;
    sub_220265F2C();
    sub_22036FF28();
    v38 = *(&v53 + 1);
    v39 = v54;
    v40 = &v52[v43[12]];
    *v40 = v53;
    *(v40 + 1) = v38;
    v40[16] = v39;
    v61 = 9;
    sub_220266200();
    sub_22036FF28();
    (*(v15 + 8))(v50, v51);
    v41 = v52;
    v52[v43[13]] = v53;
    sub_2202680B8(v41, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_22026811C(v41);
  }
}

void sub_220268054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202675EC();
    v7 = a3(a1, &type metadata for PaywallExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202680B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22026811C(uint64_t a1)
{
  v2 = type metadata accessor for PaywallExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220268250@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220266184(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_220266184(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_220266184(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_220266184(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_220266184(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_220266184(0, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_220266184(0, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_220266184(0, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_22026870C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220266184(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
      if (v3 <= 0x3F)
      {
        sub_220266184(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
        if (v4 <= 0x3F)
        {
          sub_220266184(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_220266184(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
            if (v6 <= 0x3F)
            {
              sub_220266184(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_220266184(319, &qword_281266788, sub_220265CD4, sub_220265D28, &type metadata for PurchaseSessionData);
                if (v8 <= 0x3F)
                {
                  sub_220266184(319, &qword_281266820, sub_220265F2C, sub_220265F80, &type metadata for PurchaseData);
                  if (v9 <= 0x3F)
                  {
                    sub_220266184(319, &qword_281266848, sub_220266200, sub_220266254, &type metadata for PaywallData);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_220268A38(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_27CF26930, &type metadata for NewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF26288, &type metadata for ChannelData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
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

uint64_t getEnumTagSinglePayload for StartMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StartMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220268CD4()
{
  result = qword_27CF26960;
  if (!qword_27CF26960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26960);
  }

  return result;
}

unint64_t sub_220268D2C()
{
  result = qword_27CF26968;
  if (!qword_27CF26968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26968);
  }

  return result;
}

unint64_t sub_220268D84()
{
  result = qword_27CF26970;
  if (!qword_27CF26970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26970);
  }

  return result;
}

uint64_t sub_220268DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002203909D0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446C6C6177796170 && a2 == 0xEB00000000617461)
  {

    return 9;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t DynamicEndpoint.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_2201F9BC8(a1, v2 + 16);
  return v2;
}

uint64_t DynamicEndpoint.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t DynamicEndpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = sub_22036E868();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22036E8D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22026953C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_22036E958();
  sub_22036E7B8();
  (*(v3 + 8))(v5, v2);
  sub_22036E8A8();
  (*(v7 + 8))(v9, v6);
  sub_22036E4F8();

  v13 = sub_22036E508();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result != 1)
  {
    return (*(v14 + 32))(v17, v12, v13);
  }

  __break(1u);
  return result;
}

void sub_22026953C(uint64_t a1)
{
  if (!qword_281266AE0)
  {
    sub_22036E508();
    v1 = sub_22036FCC8();
    if (!v2)
    {
      atomic_store(v1, &qword_281266AE0);
    }
  }
}

uint64_t DynamicEndpoint.name.getter()
{
  v1 = sub_22036E868();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036E8D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_22036E958();
  sub_22036E7B8();
  (*(v2 + 8))(v4, v1);
  v9 = sub_22036E8C8();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t DynamicEndpoint.sharedContainerIdentifier.getter(uint64_t a1, uint64_t a2)
{
  sub_22036EA58();
  sub_22036EA48();
  v2 = sub_22036EA38();

  return v2;
}

uint64_t WatchlistSummaryItemData.symbols.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

StocksAnalytics::WatchlistSummaryItemData __swiftcall WatchlistSummaryItemData.init(watchlistType:symbols:)(StocksAnalytics::WatchlistType watchlistType, Swift::OpaquePointer symbols)
{
  *v2 = *watchlistType;
  *(v2 + 8) = symbols;
  result.symbols = symbols;
  result.watchlistType = watchlistType;
  return result;
}

uint64_t sub_2202698D8()
{
  if (*v0)
  {
    return 0x736C6F626D7973;
  }

  else
  {
    return 0x73696C6863746177;
  }
}

uint64_t sub_220269920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73696C6863746177 && a2 == 0xED00006570795474;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736C6F626D7973 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_220269A04(uint64_t a1)
{
  v2 = sub_220269C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220269A40(uint64_t a1)
{
  v2 = sub_220269C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WatchlistSummaryItemData.encode(to:)(void *a1)
{
  sub_220269F6C(0, &qword_281261BE0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = *v1;
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220269C58();
  sub_220370168();
  v14 = v9;
  v13 = 0;
  sub_220269CAC();
  sub_22036FFF8();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_220269D00();
    sub_22026A024(&qword_281261EF0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22036FFF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_220269C58()
{
  result = qword_281263098;
  if (!qword_281263098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263098);
  }

  return result;
}

unint64_t sub_220269CAC()
{
  result = qword_281265968;
  if (!qword_281265968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265968);
  }

  return result;
}

void sub_220269D00()
{
  if (!qword_281261EF8)
  {
    v0 = sub_22036FB88();
    if (!v1)
    {
      atomic_store(v0, &qword_281261EF8);
    }
  }
}

uint64_t WatchlistSummaryItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220269F6C(0, &qword_281261D70, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220269C58();
  sub_220370148();
  if (!v2)
  {
    v15 = 0;
    sub_220269FD0();
    sub_22036FF28();
    v13 = v16;
    sub_220269D00();
    v14 = 1;
    sub_22026A024(&qword_281261EE0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    v11 = v12[1];
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220269F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220269C58();
    v7 = a3(a1, &type metadata for WatchlistSummaryItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220269FD0()
{
  result = qword_281265958;
  if (!qword_281265958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281265958);
  }

  return result;
}

uint64_t sub_22026A024(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_220269D00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22026A088()
{
  result = qword_281263078;
  if (!qword_281263078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263078);
  }

  return result;
}

unint64_t sub_22026A0E0()
{
  result = qword_281263080;
  if (!qword_281263080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263080);
  }

  return result;
}

unint64_t sub_22026A188()
{
  result = qword_27CF26978;
  if (!qword_27CF26978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26978);
  }

  return result;
}

unint64_t sub_22026A1E0()
{
  result = qword_281263088;
  if (!qword_281263088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263088);
  }

  return result;
}

unint64_t sub_22026A238()
{
  result = qword_281263090;
  if (!qword_281263090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281263090);
  }

  return result;
}

uint64_t sub_22026A354()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26980);
  __swift_project_value_buffer(v0, qword_27CF26980);
  return sub_22036F108();
}

uint64_t NoStoriesAvailableEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NoStoriesAvailableEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NoStoriesAvailableEvent(0) + 20);
  sub_22026A514(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22026A514(uint64_t a1)
{
  if (!qword_281266730)
  {
    sub_2201FBCC4();
    sub_2201FBD1C();
    v1 = sub_22036EE38();
    if (!v2)
    {
      atomic_store(v1, &qword_281266730);
    }
  }
}

uint64_t NoStoriesAvailableEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NoStoriesAvailableEvent(0) + 20);
  sub_22026A514(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NoStoriesAvailableEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for NoStoriesAvailableEvent(0) + 20);
  sub_22026A514(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t NoStoriesAvailableEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NoStoriesAvailableEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t NoStoriesAvailableEvent.Model.init(eventData:feedData:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = sub_22036F388();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for NoStoriesAvailableEvent.Model(0);
  v10 = a3 + *(result + 20);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  return result;
}

uint64_t sub_22026A81C()
{
  if (*v0)
  {
    return 0x6174614464656566;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_22026A85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (sub_220370048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_220370048();

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

uint64_t sub_22026A940(uint64_t a1)
{
  v2 = sub_22026ABA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22026A97C(uint64_t a1)
{
  v2 = sub_22026ABA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NoStoriesAvailableEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22026AF60(0, &qword_27CF26998, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22026ABA4();
  sub_220370168();
  v15[0] = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = v3 + *(type metadata accessor for NoStoriesAvailableEvent.Model(0) + 20);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15[0] = *v10;
    v16 = v11;
    v17 = v12;
    v14[7] = 1;
    sub_2201FBD1C();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22026ABA4()
{
  result = qword_27CF269A0;
  if (!qword_27CF269A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF269A0);
  }

  return result;
}

uint64_t NoStoriesAvailableEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_22036F388();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22026AF60(0, &qword_27CF269A8, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for NoStoriesAvailableEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22026ABA4();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  v30 = 0;
  sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
  v15 = v29;
  v16 = v27;
  sub_22036FF28();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v33 = 1;
  sub_2201FBCC4();
  sub_22036FF28();
  (*(v28 + 8))(v9, v16);
  v18 = v31;
  v19 = v32;
  v20 = v23;
  v21 = v23 + *(v24 + 20);
  *v21 = v30;
  *(v21 + 8) = v18;
  *(v21 + 16) = v19;
  sub_22026AFC4(v20, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22026B028(v20);
}

void sub_22026AF60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22026ABA4();
    v7 = a3(a1, &type metadata for NoStoriesAvailableEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22026AFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoStoriesAvailableEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22026B028(uint64_t a1)
{
  v2 = type metadata accessor for NoStoriesAvailableEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22026B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_22026A514(0);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_22026B244(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22026A514(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22026B2F0(uint64_t a1)
{
  result = sub_22036F388();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22026B378()
{
  result = qword_27CF269C0;
  if (!qword_27CF269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF269C0);
  }

  return result;
}

unint64_t sub_22026B3D0()
{
  result = qword_27CF269C8;
  if (!qword_27CF269C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF269C8);
  }

  return result;
}

unint64_t sub_22026B428()
{
  result = qword_27CF269D0;
  if (!qword_27CF269D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF269D0);
  }

  return result;
}

StocksAnalytics::SubscribeButtonTargetType_optional __swiftcall SubscribeButtonTargetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscribeButtonTargetType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x50676E69646E616CLL;
  v4 = 1802398060;
  if (v1 != 3)
  {
    v4 = 0x65676150706D61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6573616863727570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_22026B590()
{
  result = qword_27CF269D8;
  if (!qword_27CF269D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF269D8);
  }

  return result;
}

uint64_t sub_22026B5E4()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22026B6D4(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22026B7B0(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22026B8A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000656761;
  v6 = 0x50676E69646E616CLL;
  v7 = 0xE400000000000000;
  v8 = 1802398060;
  if (v2 != 3)
  {
    v8 = 0x65676150706D61;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6573616863727570;
    v3 = 0xED00007465656853;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_22026BA14()
{
  result = qword_27CF269E0;
  if (!qword_27CF269E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF269E0);
  }

  return result;
}

uint64_t NonNewsArticleData.publicationName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NonNewsArticleData.publicationName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NonNewsArticleData.articleSource.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NonNewsArticleData.articleSource.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NonNewsArticleData.articleURL.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NonNewsArticleData.articleURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall NonNewsArticleData.init(publicationName:articleSource:articleURL:)(StocksAnalytics::NonNewsArticleData *__return_ptr retstr, Swift::String publicationName, Swift::String articleSource, Swift::String articleURL)
{
  retstr->publicationName = publicationName;
  retstr->articleSource = articleSource;
  retstr->articleURL = articleURL;
}

uint64_t sub_22026BC18()
{
  v1 = 0x53656C6369747261;
  if (*v0 != 1)
  {
    v1 = 0x55656C6369747261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746163696C627570;
  }
}

uint64_t sub_22026BC90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22026C4D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22026BCB8(uint64_t a1)
{
  v2 = sub_22026BEE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22026BCF4(uint64_t a1)
{
  v2 = sub_22026BEE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsArticleData.encode(to:)(void *a1)
{
  sub_22026C1BC(0, &qword_27CF269E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = v1[2];
  v12[3] = v1[3];
  v12[4] = v8;
  v9 = v1[4];
  v12[1] = v1[5];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22026BEE0();
  sub_220370168();
  v15 = 0;
  v10 = v12[5];
  sub_22036FFB8();
  if (!v10)
  {
    v14 = 1;
    sub_22036FFB8();
    v13 = 2;
    sub_22036FFB8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22026BEE0()
{
  result = qword_27CF269F0;
  if (!qword_27CF269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF269F0);
  }

  return result;
}

uint64_t NonNewsArticleData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22026C1BC(0, &qword_27CF269F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22026BEE0();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v23 = v10;
  v25 = 1;
  v21 = sub_22036FEE8();
  v22 = v13;
  v24 = 2;
  v14 = sub_22036FEE8();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v9, v6);
  v18 = v22;
  *a2 = v23;
  a2[1] = v12;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22026C1BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22026BEE0();
    v7 = a3(a1, &type metadata for NonNewsArticleData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22026C224()
{
  result = qword_27CF26A00;
  if (!qword_27CF26A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A00);
  }

  return result;
}

unint64_t sub_22026C27C()
{
  result = qword_27CF26A08;
  if (!qword_27CF26A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A08);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22026C314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22026C35C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22026C3CC()
{
  result = qword_27CF26A10;
  if (!qword_27CF26A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A10);
  }

  return result;
}

unint64_t sub_22026C424()
{
  result = qword_27CF26A18;
  if (!qword_27CF26A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A18);
  }

  return result;
}

unint64_t sub_22026C47C()
{
  result = qword_27CF26A20;
  if (!qword_27CF26A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A20);
  }

  return result;
}

uint64_t sub_22026C4D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746163696C627570 && a2 == 0xEF656D614E6E6F69;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53656C6369747261 && a2 == 0xED0000656372756FLL || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55656C6369747261 && a2 == 0xEA00000000004C52)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_22026C6C8()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26A58);
  __swift_project_value_buffer(v0, qword_27CF26A58);
  return sub_22036F108();
}

uint64_t SaveEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SaveEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 20);
  sub_22026D490(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SaveEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 20);
  sub_22026D490(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SaveEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 24);
  sub_22026D490(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SaveEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 24);
  sub_22026D490(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SaveEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 28);
  sub_22026D490(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SaveEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 28);
  sub_22026D490(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SaveEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 32);
  sub_22026D490(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SaveEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 32);
  sub_22026D490(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SaveEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 36);
  sub_22026D490(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SaveEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 36);
  sub_22026D490(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SaveEvent.userArticleContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 40);
  sub_22026D490(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SaveEvent.userArticleContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 40);
  sub_22026D490(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SaveEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 44);
  sub_22026D490(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SaveEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 44);
  sub_22026D490(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SaveEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 48);
  sub_22026D490(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22026D490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t SaveEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SaveEvent(0) + 48);
  sub_22026D490(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SaveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SaveEvent(0);
  v5 = v4[5];
  sub_22026D490(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22026D490(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_22026D490(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_22026D490(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_22026D490(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_22026D490(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_22026D490(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_22026D490(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v2, v21);
}

uint64_t SaveEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SaveEvent.Model(0) + 20);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t SaveEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SaveEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

void SaveEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SaveEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t SaveEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SaveEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t SaveEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SaveEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t SaveEvent.Model.userArticleContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SaveEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t SaveEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SaveEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t SaveEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SaveEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

__n128 SaveEvent.Model.init(eventData:newsArticleData:actionData:groupData:feedData:viewData:userArticleContextData:issueData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, __int16 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, __n128 *a10)
{
  v14 = *a3;
  v16 = *(a4 + 4);
  v15 = *(a4 + 5);
  v33 = *a5;
  v17 = *(a5 + 2);
  v18 = a6[1];
  v34 = *a6;
  v19 = *(a6 + 8);
  v35 = *a7;
  v36 = a8[1];
  v37 = *a8;
  v42 = *a10;
  v40 = a10[1].n128_u64[1];
  v41 = a10[1].n128_u64[0];
  v38 = a10[2].n128_u8[1];
  v39 = a10[2].n128_u8[0];
  v20 = sub_22036F388();
  v31 = a4[1];
  v32 = *a4;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for SaveEvent.Model(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 48);
  *(v22 + 32) = *(a2 + 32);
  *(v22 + 48) = v23;
  *(v22 + 64) = *(a2 + 64);
  v24 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v24;
  *(a9 + v21[6]) = v14;
  v25 = a9 + v21[7];
  *v25 = v32;
  *(v25 + 16) = v31;
  *(v25 + 32) = v16;
  *(v25 + 40) = v15;
  v26 = a9 + v21[8];
  *v26 = v33;
  *(v26 + 16) = v17;
  v27 = a9 + v21[9];
  *v27 = v34;
  *(v27 + 8) = v18;
  *(v27 + 16) = v19;
  *(a9 + v21[10]) = v35;
  v28 = (a9 + v21[11]);
  *v28 = v37;
  v28[1] = v36;
  v29 = (a9 + v21[12]);
  result = v42;
  *v29 = v42;
  v29[1].n128_u64[0] = v41;
  v29[1].n128_u64[1] = v40;
  v29[2].n128_u8[0] = v39;
  v29[2].n128_u8[1] = v38;
  return result;
}

unint64_t sub_22026DEA8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x61446E6F69746361;
    if (a1 != 2)
    {
      v6 = 0x74614470756F7267;
    }

    if (a1)
    {
      v5 = 0x697472417377656ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000016;
    v2 = 0x7461446575737369;
    if (a1 != 7)
    {
      v2 = 0x446C656E6E616863;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6174614464656566;
    if (a1 != 4)
    {
      v3 = 0x6174614477656976;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22026DFE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22026F8C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22026E00C(uint64_t a1)
{
  v2 = sub_22026E5A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22026E048(uint64_t a1)
{
  v2 = sub_22026E5A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SaveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22026ECE8(0, &qword_27CF26A70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22026E5A4();
  sub_220370168();
  v54 = 0;
  sub_22036F388();
  sub_2202366E0(&qword_2812666A8, MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for SaveEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v49 = *(v11 + 32);
    v50 = v13;
    v14 = *(v11 + 16);
    v48[0] = *v11;
    v48[1] = v14;
    v15 = *(v11 + 48);
    v45 = v49;
    v46 = v15;
    v51 = *(v11 + 64);
    v47 = *(v11 + 64);
    v43 = v48[0];
    v44 = v12;
    v53 = 1;
    sub_22022ECDC(v48, v41);
    sub_22022EDA0();
    sub_22036FFF8();
    v41[2] = v45;
    v41[3] = v46;
    v42 = v47;
    v41[0] = v43;
    v41[1] = v44;
    sub_22022ED14(v41);
    LOBYTE(v36) = *(v3 + v10[6]);
    v52 = 2;
    sub_22023B7F4();
    sub_22036FFF8();
    v16 = (v3 + v10[7]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    *&v36 = *v16;
    *(&v36 + 1) = v17;
    v37 = v18;
    v38 = v19;
    v39 = v20;
    v40 = v21;
    v52 = 3;
    sub_22023846C(v36, v17, v18, v19, v20, v21);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v36, *(&v36 + 1), v37, v38, v39, v40);
    v22 = (v3 + v10[8]);
    v23 = *(v22 + 2);
    v36 = *v22;
    v37 = v23;
    v52 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v24 = (v3 + v10[9]);
    v25 = *v24;
    v26 = v24[1];
    LOWORD(v24) = *(v24 + 8);
    *&v36 = v25;
    *(&v36 + 1) = v26;
    LOWORD(v37) = v24;
    v52 = 5;
    sub_220202110();

    sub_22036FF88();

    LOWORD(v36) = *(v3 + v10[10]);
    v52 = 6;
    sub_22025E918();
    sub_22036FFF8();
    v28 = (v3 + v10[11]);
    v29 = v28[1];
    *&v36 = *v28;
    *(&v36 + 1) = v29;
    v52 = 7;
    sub_220237744();

    sub_22036FF88();

    v30 = (v3 + v10[12]);
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[2];
    v34 = v30[3];
    v35 = *(v30 + 32);
    LOBYTE(v30) = *(v30 + 33);
    *&v36 = v31;
    *(&v36 + 1) = v32;
    v37 = v33;
    v38 = v34;
    LOBYTE(v39) = v35;
    BYTE1(v39) = v30;
    v52 = 8;
    sub_220236A84();

    sub_22036FFF8();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22026E5A4()
{
  result = qword_27CF26A78;
  if (!qword_27CF26A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A78);
  }

  return result;
}

void SaveEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_22036F388();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22026ECE8(0, &qword_27CF26A80, MEMORY[0x277D844C8]);
  v32 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for SaveEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22026E5A4();
  v31 = v8;
  sub_220370148();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v29;
    LOBYTE(v36) = 0;
    sub_2202366E0(&qword_2812666A0, MEMORY[0x277CEAEC0]);
    v13 = v30;
    sub_22036FF28();
    (*(v28 + 32))(v11, v13, v4);
    v42 = 1;
    sub_22022ED48();
    sub_22036FF28();
    v30 = 0;
    v14 = &v11[v9[5]];
    v15 = v39;
    *(v14 + 2) = v38;
    *(v14 + 3) = v15;
    *(v14 + 16) = v40;
    v16 = v37;
    *v14 = v36;
    *(v14 + 1) = v16;
    v41 = 2;
    sub_22023B7A0();
    sub_22036FF28();
    v11[v9[6]] = v33;
    v41 = 3;
    sub_220236C88();
    sub_22036FEB8();
    v17 = &v11[v9[7]];
    v18 = v34;
    *v17 = v33;
    *(v17 + 1) = v18;
    *(v17 + 2) = v35;
    v41 = 4;
    sub_2201FBCC4();
    sub_22036FEB8();
    v19 = v34;
    v20 = &v11[v9[8]];
    *v20 = v33;
    *(v20 + 2) = v19;
    v41 = 5;
    sub_2202020B8();
    sub_22036FEB8();
    v21 = v34;
    v22 = &v11[v9[9]];
    *v22 = v33;
    *(v22 + 8) = v21;
    v41 = 6;
    sub_22025E8C4();
    sub_22036FF28();
    *&v11[v9[10]] = v33;
    v41 = 7;
    sub_2202376F0();
    sub_22036FEB8();
    *&v11[v9[11]] = v33;
    v41 = 8;
    sub_220236A30();
    sub_22036FF28();
    (*(v12 + 8))(v31, v32);
    v23 = v34;
    v24 = v35;
    v25 = BYTE1(v35);
    v26 = &v11[v9[12]];
    *v26 = v33;
    *(v26 + 1) = v23;
    v26[32] = v24;
    v26[33] = v25;
    sub_22026ED4C(v11, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_22026EDB0(v11);
  }
}

void sub_22026ECE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22026E5A4();
    v7 = a3(a1, &type metadata for SaveEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22026ED4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22026EDB0(uint64_t a1)
{
  v2 = type metadata accessor for SaveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22026EEE4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_22026D490(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22026D490(0, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_22026D490(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_22026D490(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_22026D490(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_22026D490(0, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_22026D490(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_22026D490(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v4, v22);
}

void sub_22026F360(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_22026D490(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
    if (v2 <= 0x3F)
    {
      sub_22026D490(319, &qword_281266AE8, sub_22023B7A0, sub_22023B7F4, &type metadata for ActionData);
      if (v3 <= 0x3F)
      {
        sub_22026D490(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_22026D490(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_22026D490(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
            if (v6 <= 0x3F)
            {
              sub_22026D490(319, &qword_281266760, sub_22025E8C4, sub_22025E918, &type metadata for UserArticleContextData);
              if (v7 <= 0x3F)
              {
                sub_22026D490(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                if (v8 <= 0x3F)
                {
                  sub_22026D490(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_22026F674(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_27CF25FA8, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262008, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_22026F7BC()
{
  result = qword_27CF26A88;
  if (!qword_27CF26A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A88);
  }

  return result;
}

unint64_t sub_22026F814()
{
  result = qword_27CF26A90;
  if (!qword_27CF26A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A90);
  }

  return result;
}

unint64_t sub_22026F86C()
{
  result = qword_27CF26A98;
  if (!qword_27CF26A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26A98);
  }

  return result;
}

uint64_t sub_22026F8C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002203908B0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
  {

    return 8;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t ViewData.viewSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

StocksAnalytics::ViewData __swiftcall ViewData.init(viewSessionID:viewType:viewAction:)(StocksAnalytics::ViewData viewSessionID, StocksAnalytics::ViewType viewType, StocksAnalytics::ViewAction viewAction)
{
  v4 = *viewType;
  v5 = *viewAction;
  *v3 = viewSessionID.viewSessionID;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  viewSessionID.viewType = viewType;
  return viewSessionID;
}

uint64_t sub_22026FCE4()
{
  v1 = 0x6570795477656976;
  if (*v0 != 1)
  {
    v1 = 0x6974634177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7373655377656976;
  }
}

uint64_t sub_22026FD50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220270600(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22026FD78(uint64_t a1)
{
  v2 = sub_22026FFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22026FDB4(uint64_t a1)
{
  v2 = sub_22026FFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewData.encode(to:)(void *a1)
{
  sub_220270324(0, &qword_281261B90, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v16 = *(v1 + 17);
  v17 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_22026FFD4();
  sub_220370168();
  v22 = 0;
  sub_22036FFB8();
  if (!v2)
  {
    v13 = v16;
    v21 = v17;
    v20 = 1;
    sub_220270028();
    sub_22036FFF8();
    v19 = v13;
    v18 = 2;
    sub_22027007C();
    sub_22036FFF8();
  }

  return (*(v5 + 8))(v7, v12);
}

unint64_t sub_22026FFD4()
{
  result = qword_281262128;
  if (!qword_281262128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262128);
  }

  return result;
}

unint64_t sub_220270028()
{
  result = qword_281262100;
  if (!qword_281262100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262100);
  }

  return result;
}

unint64_t sub_22027007C()
{
  result = qword_2812660D0;
  if (!qword_2812660D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660D0);
  }

  return result;
}

uint64_t ViewData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_220270324(0, &qword_281261D48, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22026FFD4();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v10 = sub_22036FEE8();
  v12 = v11;
  v13 = v10;
  v20 = 1;
  sub_220270388();
  sub_22036FF28();
  v17 = v21;
  v18 = 2;
  sub_2202703DC();
  sub_22036FF28();
  (*(v7 + 8))(v9, v6);
  v15 = v19;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220270324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22026FFD4();
    v7 = a3(a1, &type metadata for ViewData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_220270388()
{
  result = qword_2812620F0;
  if (!qword_2812620F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812620F0);
  }

  return result;
}

unint64_t sub_2202703DC()
{
  result = qword_2812660C0;
  if (!qword_2812660C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812660C0);
  }

  return result;
}

uint64_t sub_220270460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2202704A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2202704FC()
{
  result = qword_27CF26AA0;
  if (!qword_27CF26AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26AA0);
  }

  return result;
}

unint64_t sub_220270554()
{
  result = qword_281262118;
  if (!qword_281262118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262118);
  }

  return result;
}

unint64_t sub_2202705AC()
{
  result = qword_281262120;
  if (!qword_281262120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262120);
  }

  return result;
}

uint64_t sub_220270600(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634177656976 && a2 == 0xEA00000000006E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_2202707F0()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26AD8);
  __swift_project_value_buffer(v0, qword_27CF26AD8);
  return sub_22036F108();
}

uint64_t AudioEngageEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEngageEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 24);
  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 24);
  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 28);
  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 28);
  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 32);
  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 32);
  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 36);
  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 36);
  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 40);
  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.trackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 40);
  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.audioEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 44);
  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.audioEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 44);
  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 48);
  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 48);
  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 52);
  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 52);
  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 56);
  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 56);
  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.playbackData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 60);
  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AudioEngageEvent.playbackData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 60);
  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.audioEngagementOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 64);
  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220271BB8()
{
  result = qword_27CF26AF8;
  if (!qword_27CF26AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26AF8);
  }

  return result;
}

unint64_t sub_220271C0C()
{
  result = qword_27CF26B00;
  if (!qword_27CF26B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26B00);
  }

  return result;
}

uint64_t AudioEngageEvent.audioEngagementOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 64);
  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 68);
  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220271E10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t AudioEngageEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEngageEvent(0) + 68);
  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AudioEngageEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AudioEngageEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v21 - 8) + 104))(a1 + v20, v12, v21);
  v22 = v4[13];
  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v25 - 8) + 104))(a1 + v24, v12, v25);
  v26 = v4[15];
  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v12, v31);
}

uint64_t sub_220272648@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AudioEngageEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

uint64_t AudioEngageEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

void AudioEngageEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t AudioEngageEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 36);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t AudioEngageEvent.Model.trackData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t AudioEngageEvent.Model.audioEngagementData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 44));
  v4 = v3[1];
  v8 = *v3;
  v9[0] = v4;
  *(v9 + 10) = *(v3 + 26);
  v5 = *(v9 + 10);
  *a1 = v8;
  a1[1] = v4;
  *(a1 + 26) = v5;
  return sub_2202385EC(&v8, &v7);
}

uint64_t AudioEngageEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t AudioEngageEvent.Model.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 52);
  v4 = *(v3 + 144);
  v5 = *(v3 + 176);
  v32 = *(v3 + 160);
  v33 = v5;
  v6 = *(v3 + 80);
  v7 = *(v3 + 112);
  v28 = *(v3 + 96);
  v8 = v28;
  v29 = v7;
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  v30 = *(v3 + 128);
  v11 = v30;
  v31 = v10;
  v12 = *(v3 + 48);
  v13 = *(v3 + 80);
  v26 = *(v3 + 64);
  v14 = v26;
  v27 = v13;
  v15 = *(v3 + 16);
  v16 = *(v3 + 48);
  v24 = *(v3 + 32);
  v17 = v24;
  v25 = v16;
  v18 = *(v3 + 16);
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  v20 = *(v3 + 176);
  *(a1 + 160) = v32;
  *(a1 + 176) = v20;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  *(a1 + 32) = v17;
  *(a1 + 48) = v12;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  v34 = *(v3 + 192);
  *(a1 + 192) = *(v3 + 192);
  *a1 = v19;
  *(a1 + 16) = v15;
  return sub_220272A1C(v23, v22);
}

uint64_t AudioEngageEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 56));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

float AudioEngageEvent.Model.playbackData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for AudioEngageEvent.Model(0) + 60));
  *a1 = result;
  return result;
}

uint64_t AudioEngageEvent.Model.audioEngagementOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t AudioEngageEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudioEngageEvent.Model(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

__n128 AudioEngageEvent.Model.init(eventData:timedData:newsArticleData:channelData:groupData:feedData:trackData:audioEngagementData:viewData:articleScienceData:issueData:playbackData:audioEngagementOriginationData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, int *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t *a12, int *a13, char *a14, char *a15)
{
  v51 = *a4;
  v22 = *(a4 + 2);
  v21 = *(a4 + 3);
  v23 = *(a4 + 32);
  v50 = *(a4 + 33);
  v52 = *(a5 + 5);
  v53 = *(a5 + 4);
  v55 = *a6;
  v54 = *(a6 + 2);
  v56 = *(a7 + 4);
  v57 = *a7;
  v59 = a10[1];
  v60 = *a10;
  v58 = *(a10 + 8);
  v61 = a12[1];
  v62 = *a12;
  v24 = *a13;
  v63 = *a14;
  v64 = *a15;
  v25 = sub_22036F388();
  v48 = a5[1];
  v49 = *a5;
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for AudioEngageEvent.Model(0);
  v27 = v26[5];
  v28 = sub_22036F3C8();
  (*(*(v28 - 8) + 32))(a9 + v27, a2, v28);
  v29 = a9 + v26[6];
  v30 = *(a3 + 48);
  *(v29 + 32) = *(a3 + 32);
  *(v29 + 48) = v30;
  *(v29 + 64) = *(a3 + 64);
  v31 = *(a3 + 16);
  *v29 = *a3;
  *(v29 + 16) = v31;
  v32 = a9 + v26[7];
  *v32 = v51;
  *(v32 + 16) = v22;
  *(v32 + 24) = v21;
  *(v32 + 32) = v23;
  *(v32 + 33) = v50;
  v33 = a9 + v26[8];
  *v33 = v49;
  *(v33 + 16) = v48;
  *(v33 + 32) = v53;
  *(v33 + 40) = v52;
  v34 = a9 + v26[9];
  *v34 = v55;
  *(v34 + 16) = v54;
  v35 = a9 + v26[10];
  *v35 = v57;
  *(v35 + 4) = v56;
  v36 = (a9 + v26[11]);
  v37 = a8[1];
  *v36 = *a8;
  v36[1] = v37;
  *(v36 + 26) = *(a8 + 26);
  v38 = a9 + v26[12];
  *v38 = v60;
  *(v38 + 8) = v59;
  *(v38 + 16) = v58;
  v39 = a9 + v26[13];
  v40 = *(a11 + 48);
  *(v39 + 32) = *(a11 + 32);
  *(v39 + 48) = v40;
  v41 = *(a11 + 16);
  *v39 = *a11;
  *(v39 + 16) = v41;
  v42 = *(a11 + 112);
  *(v39 + 96) = *(a11 + 96);
  *(v39 + 112) = v42;
  v43 = *(a11 + 80);
  *(v39 + 64) = *(a11 + 64);
  *(v39 + 80) = v43;
  *(v39 + 192) = *(a11 + 192);
  v44 = *(a11 + 176);
  *(v39 + 160) = *(a11 + 160);
  *(v39 + 176) = v44;
  result = *(a11 + 128);
  v46 = *(a11 + 144);
  *(v39 + 128) = result;
  *(v39 + 144) = v46;
  v47 = (a9 + v26[14]);
  *v47 = v62;
  v47[1] = v61;
  *(a9 + v26[15]) = v24;
  *(a9 + v26[16]) = v63;
  *(a9 + v26[17]) = v64;
  return result;
}

uint64_t sub_220272DE0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x697472417377656ELL;
      break;
    case 3:
      result = 0x446C656E6E616863;
      break;
    case 4:
      result = 0x74614470756F7267;
      break;
    case 5:
      v3 = 1684366694;
      goto LABEL_16;
    case 6:
      result = 0x7461446B63617274;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      v3 = 2003134838;
LABEL_16:
      result = v3 | 0x6174614400000000;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x7461446575737369;
      break;
    case 11:
      result = 0x6B63616279616C70;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220272F74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202756A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220272FA8(uint64_t a1)
{
  v2 = sub_2202738C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220272FE4(uint64_t a1)
{
  v2 = sub_2202738C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioEngageEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2202745B0(0, &qword_27CF26B08, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v55 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202738C8();
  sub_220370168();
  LOBYTE(v75) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for AudioEngageEvent.Model(0);
    v114 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v111 = *(v11 + 32);
    v112 = v13;
    v14 = *(v11 + 16);
    v110[0] = *v11;
    v110[1] = v14;
    v15 = *(v11 + 48);
    v107 = v111;
    v108 = v15;
    v113 = *(v11 + 64);
    v109 = *(v11 + 64);
    v105 = v110[0];
    v106 = v12;
    v104 = 2;
    sub_22022ECDC(v110, &v75);
    sub_22022EDA0();
    sub_22036FFF8();
    v102[2] = v107;
    v102[3] = v108;
    v103 = v109;
    v102[0] = v105;
    v102[1] = v106;
    sub_22022ED14(v102);
    v115 = v10;
    v16 = (v3 + *(v10 + 28));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = *(v16 + 32);
    LOBYTE(v16) = *(v16 + 33);
    *&v75 = v17;
    *(&v75 + 1) = v18;
    *&v76 = v19;
    *(&v76 + 1) = v20;
    LOBYTE(v77) = v21;
    BYTE1(v77) = v16;
    LOBYTE(v62) = 3;
    sub_220236A84();

    sub_22036FFF8();

    v22 = (v3 + v115[8]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v27 = v22[5];
    *&v75 = *v22;
    *(&v75 + 1) = v23;
    *&v76 = v24;
    *(&v76 + 1) = v25;
    *&v77 = v26;
    *(&v77 + 1) = v27;
    LOBYTE(v62) = 4;
    sub_22023846C(v75, v23, v24, v25, v26, v27);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v75, *(&v75 + 1), v76, *(&v76 + 1), v77, *(&v77 + 1));
    v28 = (v3 + v115[9]);
    v29 = *(v28 + 2);
    v75 = *v28;
    *&v76 = v29;
    LOBYTE(v62) = 5;
    sub_2201FBD1C();

    sub_22036FF88();

    v30 = (v3 + v115[10]);
    v31 = *v30;
    LOBYTE(v30) = *(v30 + 4);
    v100 = v31;
    v101 = v30;
    v99 = 6;
    sub_2202370E4();
    sub_22036FFF8();
    v32 = (v3 + v115[11]);
    v33 = v32[1];
    v97 = *v32;
    v98[0] = v33;
    *(v98 + 10) = *(v32 + 26);
    v34 = v32[1];
    v95 = *v32;
    v96[0] = v34;
    *(v96 + 10) = *(v32 + 26);
    v94 = 7;
    sub_2202385EC(&v97, &v75);
    sub_2202374EC();
    sub_22036FFF8();
    v92 = v95;
    *v93 = v96[0];
    *&v93[10] = *(v96 + 10);
    sub_22023921C(&v92);
    v35 = (v3 + v115[12]);
    v36 = *v35;
    v37 = v35[1];
    LOWORD(v35) = *(v35 + 8);
    v89 = v36;
    v90 = v37;
    v91 = v35;
    v88 = 8;
    sub_220202110();

    sub_22036FF88();

    v38 = v115;
    v39 = (v3 + v115[13]);
    v40 = v39[9];
    v41 = v39[11];
    v85 = v39[10];
    v86 = v41;
    v42 = v39[5];
    v43 = v39[7];
    v81 = v39[6];
    v82 = v43;
    v44 = v39[7];
    v45 = v39[9];
    v83 = v39[8];
    v84 = v45;
    v46 = v39[1];
    v47 = v39[3];
    v77 = v39[2];
    v78 = v47;
    v48 = v39[3];
    v49 = v39[5];
    v79 = v39[4];
    v80 = v49;
    v50 = v39[1];
    v75 = *v39;
    v76 = v50;
    v51 = v39[11];
    v72 = v85;
    v73 = v51;
    v68 = v81;
    v69 = v44;
    v70 = v83;
    v71 = v40;
    v64 = v77;
    v65 = v48;
    v66 = v79;
    v67 = v42;
    v87 = *(v39 + 24);
    v74 = *(v39 + 24);
    v62 = v75;
    v63 = v46;
    v61 = 9;
    sub_220272A1C(&v75, v59);
    sub_22025E6C0();
    sub_22036FFF8();
    v59[9] = v71;
    v59[10] = v72;
    v59[11] = v73;
    v60 = v74;
    v59[7] = v69;
    v59[8] = v70;
    v59[2] = v64;
    v59[3] = v65;
    v59[5] = v67;
    v59[6] = v68;
    v59[4] = v66;
    v59[0] = v62;
    v59[1] = v63;
    sub_22027391C(v59);
    v52 = (v3 + v38[14]);
    v53 = v52[1];
    v57 = *v52;
    v58 = v53;
    v56 = 10;
    sub_220237744();

    sub_22036FF88();

    LODWORD(v57) = *(v3 + v115[15]);
    v56 = 11;
    sub_22023799C();
    sub_22036FFF8();
    LOBYTE(v57) = *(v3 + v115[16]);
    v56 = 12;
    sub_220271C0C();
    sub_22036FFF8();
    LOBYTE(v57) = *(v3 + v115[17]);
    v56 = 13;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2202738C8()
{
  result = qword_27CF26B10;
  if (!qword_27CF26B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26B10);
  }

  return result;
}

void AudioEngageEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_22036F3C8();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2202745B0(0, &qword_27CF26B18, MEMORY[0x277D844C8]);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v46 - v8;
  v10 = type metadata accessor for AudioEngageEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2202738C8();
  v57 = v9;
  v13 = v83;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v53;
    v47 = v10;
    v48 = a1;
    v83 = v12;
    LOBYTE(v70) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v15 = v54;
    sub_22036FF28();
    v16 = *(v52 + 32);
    v17 = v83;
    v54 = v5;
    v16(v83, v15, v5);
    LOBYTE(v70) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v18 = v14;
    v19 = v51;
    sub_22036FF28();
    v46[1] = 0;
    v20 = v47;
    (*(v50 + 32))(&v17[v47[5]], v18, v19);
    v64 = 2;
    sub_22022ED48();
    sub_22036FF28();
    v21 = &v17[v20[6]];
    v22 = v68;
    *(v21 + 2) = v67;
    *(v21 + 3) = v22;
    *(v21 + 16) = v69;
    v23 = v66;
    *v21 = v65;
    *(v21 + 1) = v23;
    LOBYTE(v62) = 3;
    sub_220236A30();
    sub_22036FF28();
    v24 = v71;
    v25 = v72;
    v26 = BYTE1(v72);
    v27 = &v17[v20[7]];
    *v27 = v70;
    *(v27 + 1) = v24;
    v27[32] = v25;
    v27[33] = v26;
    LOBYTE(v62) = 4;
    sub_220236C88();
    sub_22036FEB8();
    v28 = &v17[v20[8]];
    v29 = v71;
    *v28 = v70;
    *(v28 + 1) = v29;
    *(v28 + 2) = v72;
    LOBYTE(v62) = 5;
    sub_2201FBCC4();
    sub_22036FEB8();
    v30 = v71;
    v31 = &v17[v20[9]];
    *v31 = v70;
    *(v31 + 2) = v30;
    LOBYTE(v62) = 6;
    sub_220237090();
    sub_22036FF28();
    v32 = BYTE4(v70);
    v33 = &v17[v20[10]];
    *v33 = v70;
    v33[4] = v32;
    v61 = 7;
    sub_220237498();
    sub_22036FF28();
    v34 = &v17[v20[11]];
    v35 = *v63;
    *v34 = v62;
    *(v34 + 1) = v35;
    *(v34 + 26) = *&v63[10];
    LOBYTE(v59) = 8;
    sub_2202020B8();
    sub_22036FEB8();
    v36 = v71;
    v37 = &v83[v47[12]];
    *v37 = v70;
    *(v37 + 8) = v36;
    v60 = 9;
    sub_22025E66C();
    sub_22036FF28();
    v38 = &v83[v47[13]];
    v39 = v79;
    v40 = v81;
    *(v38 + 10) = v80;
    *(v38 + 11) = v40;
    *(v38 + 24) = v82;
    v41 = v75;
    v42 = v77;
    *(v38 + 6) = v76;
    *(v38 + 7) = v42;
    *(v38 + 8) = v78;
    *(v38 + 9) = v39;
    v43 = v71;
    v44 = v73;
    *(v38 + 2) = v72;
    *(v38 + 3) = v44;
    *(v38 + 4) = v74;
    *(v38 + 5) = v41;
    *v38 = v70;
    *(v38 + 1) = v43;
    v58 = 10;
    sub_2202376F0();
    sub_22036FEB8();
    *&v83[v47[14]] = v59;
    v58 = 11;
    sub_220237948();
    sub_22036FF28();
    *&v83[v47[15]] = v59;
    v58 = 12;
    sub_220271BB8();
    sub_22036FF28();
    v83[v47[16]] = v59;
    v58 = 13;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v55 + 8))(v57, v56);
    v45 = v83;
    v83[v47[17]] = v59;
    sub_220274614(v45, v49);
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_220274678(v45);
  }
}

void sub_2202745B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2202738C8();
    v7 = a3(a1, &type metadata for AudioEngageEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220274614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEngageEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220274678(uint64_t a1)
{
  v2 = type metadata accessor for AudioEngageEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2202747AC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220271E10(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_220271E10(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_220271E10(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_220271E10(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_220271E10(0, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_220271E10(0, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_220271E10(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v22 - 8) + 104))(a2 + v21, v13, v22);
  v23 = a1[13];
  sub_220271E10(0, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_220271E10(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v26 - 8) + 104))(a2 + v25, v13, v26);
  v27 = a1[15];
  sub_220271E10(0, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_220271E10(0, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
  (*(*(v30 - 8) + 104))(a2 + v29, v4, v30);
  v31 = a1[17];
  sub_220271E10(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v13, v32);
}

void sub_220274E48(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220271E10(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_220271E10(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_220271E10(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_220271E10(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_220271E10(319, &qword_27CF25F28, sub_220237090, sub_2202370E4, &type metadata for TrackData);
              if (v7 <= 0x3F)
              {
                sub_220271E10(319, &qword_27CF25F40, sub_220237498, sub_2202374EC, &type metadata for AudioEngagementData);
                if (v8 <= 0x3F)
                {
                  sub_220271E10(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
                  if (v9 <= 0x3F)
                  {
                    sub_220271E10(319, &qword_2812667A0, sub_22025E66C, sub_22025E6C0, &type metadata for ArticleScienceData);
                    if (v10 <= 0x3F)
                    {
                      sub_220271E10(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                      if (v11 <= 0x3F)
                      {
                        sub_220271E10(319, &qword_27CF25F58, sub_220237948, sub_22023799C, &type metadata for PlaybackData);
                        if (v12 <= 0x3F)
                        {
                          sub_220271E10(319, &qword_27CF26AF0, sub_220271BB8, sub_220271C0C, &type metadata for AudioEngagementOriginationData);
                          if (v13 <= 0x3F)
                          {
                            sub_220271E10(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_2202752B4(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF25FA8, &type metadata for ViewData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281262008, &type metadata for IssueData);
            if (v6 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_281265970, &type metadata for WatchlistData);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioEngageEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioEngageEvent.Model.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2202755A4()
{
  result = qword_27CF26B40;
  if (!qword_27CF26B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26B40);
  }

  return result;
}

unint64_t sub_2202755FC()
{
  result = qword_27CF26B48;
  if (!qword_27CF26B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26B48);
  }

  return result;
}

unint64_t sub_220275654()
{
  result = qword_27CF26B50;
  if (!qword_27CF26B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26B50);
  }

  return result;
}

uint64_t sub_2202756A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446B63617274 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390370 == a2 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390890 == a2 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC00000061746144 || (sub_220370048() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000220390A40 == a2 || (sub_220370048() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_220275BEC()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26B88);
  __swift_project_value_buffer(v0, qword_27CF26B88);
  return sub_22036F108();
}

uint64_t NonNewsArticleViewEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NonNewsArticleViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.nonNewsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 24);
  sub_220276BF4(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewEvent.nonNewsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 24);
  sub_220276BF4(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 28);
  sub_220276BF4(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_220276084()
{
  result = qword_2812652C0;
  if (!qword_2812652C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812652C0);
  }

  return result;
}

unint64_t sub_2202760D8()
{
  result = qword_2812652C8;
  if (!qword_2812652C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812652C8);
  }

  return result;
}

uint64_t NonNewsArticleViewEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 28);
  sub_220276BF4(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 32);
  sub_220276BF4(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_2202762DC()
{
  result = qword_2812644F8;
  if (!qword_2812644F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644F8);
  }

  return result;
}

unint64_t sub_220276330()
{
  result = qword_281264500;
  if (!qword_281264500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281264500);
  }

  return result;
}

uint64_t NonNewsArticleViewEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 32);
  sub_220276BF4(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 36);
  sub_220276BF4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 36);
  sub_220276BF4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 40);
  sub_220276BF4(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 40);
  sub_220276BF4(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 44);
  sub_220276BF4(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 44);
  sub_220276BF4(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 48);
  sub_220276BF4(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NonNewsArticleViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 48);
  sub_220276BF4(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 52);
  sub_220276BF4(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_220276BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t NonNewsArticleViewEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NonNewsArticleViewEvent(0) + 52);
  sub_220276BF4(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NonNewsArticleViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NonNewsArticleViewEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_220276BF4(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_220276BF4(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_220276BF4(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_220276BF4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_220276BF4(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v10, v17);
  v18 = v4[11];
  sub_220276BF4(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_220276BF4(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_220276BF4(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v10, v23);
}

uint64_t sub_22027724C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t NonNewsArticleViewEvent.Model.nonNewsArticleData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewEvent.Model(0) + 24));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t NonNewsArticleViewEvent.Model.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NonNewsArticleViewEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleViewEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t NonNewsArticleViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NonNewsArticleViewEvent.Model(0) + 36);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

void NonNewsArticleViewEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewEvent.Model(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t NonNewsArticleViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NonNewsArticleViewEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t NonNewsArticleViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t NonNewsArticleViewEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NonNewsArticleViewEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 NonNewsArticleViewEvent.Model.init(eventData:timedData:nonNewsArticleData:feedPositionData:inGroupPositionData:feedData:groupData:viewData:viewEndData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, int *a4@<X3>, int *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11)
{
  v34 = a3[1];
  v35 = *a3;
  v16 = *(a3 + 4);
  v15 = *(a3 + 5);
  v17 = *a4;
  v18 = *(a4 + 4);
  v19 = *a5;
  v20 = *(a5 + 4);
  v37 = *a6;
  v36 = *(a6 + 2);
  v38 = *(a7 + 40);
  v39 = *(a7 + 32);
  v41 = a8[1];
  v42 = *a8;
  v40 = *(a8 + 8);
  v43 = *a10;
  v44 = *a11;
  v21 = sub_22036F388();
  v32 = *(a7 + 16);
  v33 = *a7;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for NonNewsArticleViewEvent.Model(0);
  v23 = v22[5];
  v24 = sub_22036F3C8();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = a9 + v22[6];
  *v25 = v35;
  *(v25 + 16) = v34;
  *(v25 + 32) = v16;
  *(v25 + 40) = v15;
  v26 = a9 + v22[7];
  *v26 = v17;
  *(v26 + 4) = v18;
  v27 = a9 + v22[8];
  *v27 = v19;
  *(v27 + 4) = v20;
  v28 = a9 + v22[9];
  *v28 = v37;
  *(v28 + 16) = v36;
  v29 = a9 + v22[10];
  result = v33;
  *v29 = v33;
  *(v29 + 16) = v32;
  *(v29 + 32) = v39;
  *(v29 + 40) = v38;
  v31 = a9 + v22[11];
  *v31 = v42;
  *(v31 + 8) = v41;
  *(v31 + 16) = v40;
  *(a9 + v22[12]) = v43;
  *(a9 + v22[13]) = v44;
  return result;
}

unint64_t sub_220277710(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0x6174614477656976;
    v5 = 0x44646E4577656976;
    if (a1 != 8)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x6174614464656566;
    if (a1 != 5)
    {
      v6 = 0x74614470756F7267;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0xD000000000000010;
    if (a1 != 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000012;
    }

    if (a1)
    {
      v1 = 0x74614464656D6974;
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

uint64_t sub_220277868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2202793CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220277890(uint64_t a1)
{
  v2 = sub_220277E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2202778CC(uint64_t a1)
{
  v2 = sub_220277E64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NonNewsArticleViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_220278764(0, &qword_27CF26BA8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220277E64();
  sub_220370168();
  LOBYTE(v33) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for NonNewsArticleViewEvent.Model(0);
    LOBYTE(v33) = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v16 = v11[5];
    *&v33 = *v11;
    *(&v33 + 1) = v12;
    v34 = v13;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v38 = 2;
    sub_22026C27C();

    sub_22036FFF8();

    v17 = (v3 + v10[7]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 4);
    LODWORD(v33) = v18;
    BYTE4(v33) = v17;
    v38 = 3;
    sub_2202760D8();
    sub_22036FF88();
    v19 = (v3 + v10[8]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 4);
    LODWORD(v33) = v20;
    BYTE4(v33) = v19;
    v38 = 4;
    sub_220276330();
    sub_22036FF88();
    v21 = (v3 + v10[9]);
    v22 = *(v21 + 2);
    v33 = *v21;
    v34 = v22;
    v38 = 5;
    sub_2201FBD1C();

    sub_22036FF88();

    v23 = (v3 + v10[10]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    v28 = v23[5];
    *&v33 = *v23;
    *(&v33 + 1) = v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v38 = 6;
    sub_22023846C(v33, v24, v25, v26, v27, v28);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v33, *(&v33 + 1), v34, v35, v36, v37);
    v29 = (v3 + v10[11]);
    v30 = *v29;
    v31 = v29[1];
    LOWORD(v29) = *(v29 + 8);
    *&v33 = v30;
    *(&v33 + 1) = v31;
    LOWORD(v34) = v29;
    v38 = 7;
    sub_220202110();

    sub_22036FFF8();

    LOBYTE(v33) = *(v3 + v10[12]);
    v38 = 8;
    sub_2202310D4();
    sub_22036FFF8();
    LOBYTE(v33) = *(v3 + v10[13]);
    v38 = 9;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_220277E64()
{
  result = qword_27CF26BB0;
  if (!qword_27CF26BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26BB0);
  }

  return result;
}

void NonNewsArticleViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v45 = sub_22036F3C8();
  v41 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220278764(0, &qword_27CF26BB8, MEMORY[0x277D844C8]);
  v46 = v7;
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v10 = type metadata accessor for NonNewsArticleViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220277E64();
  v47 = v9;
  v13 = v48;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v4;
    v15 = v43;
    v39 = v10;
    v48 = v12;
    v16 = v45;
    LOBYTE(v49) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v17 = v44;
    sub_22036FF28();
    v18 = v5;
    v19 = *(v42 + 32);
    v20 = v48;
    v44 = v18;
    v19(v48, v17);
    LOBYTE(v49) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    sub_22036FF28();
    v21 = v39;
    (*(v41 + 32))(&v20[v39[5]], v14, v16);
    v52 = 2;
    sub_22026C224();
    v38[1] = 0;
    sub_22036FF28();
    v38[0] = a1;
    v22 = v50;
    v23 = v51;
    v24 = &v20[v21[6]];
    *v24 = v49;
    *(v24 + 1) = v22;
    *(v24 + 2) = v23;
    v52 = 3;
    sub_220276084();
    sub_22036FEB8();
    v25 = BYTE4(v49);
    v26 = &v20[v21[7]];
    *v26 = v49;
    v26[4] = v25;
    v52 = 4;
    sub_2202762DC();
    sub_22036FEB8();
    v27 = BYTE4(v49);
    v28 = &v20[v21[8]];
    *v28 = v49;
    v28[4] = v27;
    v52 = 5;
    sub_2201FBCC4();
    sub_22036FEB8();
    v29 = v50;
    v30 = &v20[v21[9]];
    *v30 = v49;
    *(v30 + 2) = v29;
    v52 = 6;
    sub_220236C88();
    sub_22036FEB8();
    v31 = &v20[v21[10]];
    v32 = v50;
    *v31 = v49;
    *(v31 + 1) = v32;
    *(v31 + 2) = v51;
    v52 = 7;
    sub_2202020B8();
    sub_22036FF28();
    v33 = *(&v49 + 1);
    v34 = v50;
    v35 = &v48[v39[11]];
    *v35 = v49;
    *(v35 + 1) = v33;
    *(v35 + 8) = v34;
    v52 = 8;
    sub_220231080();
    sub_22036FF28();
    v48[v39[12]] = v49;
    v52 = 9;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v15 + 8))(v47, v46);
    v36 = v40;
    v37 = v48;
    v48[v39[13]] = v49;
    sub_2202787C8(v37, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_22027882C(v37);
  }
}

void sub_220278764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220277E64();
    v7 = a3(a1, &type metadata for NonNewsArticleViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2202787C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonNewsArticleViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22027882C(uint64_t a1)
{
  v2 = type metadata accessor for NonNewsArticleViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220278960@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_220276BF4(0, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_220276BF4(0, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_220276BF4(0, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_220276BF4(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_220276BF4(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v18 - 8) + 104))(a2 + v17, v11, v18);
  v19 = a1[11];
  sub_220276BF4(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_220276BF4(0, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_220276BF4(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v11, v24);
}

void sub_220278E1C(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_220276BF4(319, &qword_27CF26BA0, sub_22026C224, sub_22026C27C, &type metadata for NonNewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_220276BF4(319, &qword_2812667C0, sub_220276084, sub_2202760D8, &type metadata for FeedPositionData);
        if (v4 <= 0x3F)
        {
          sub_220276BF4(319, &qword_281266798, sub_2202762DC, sub_220276330, &type metadata for InGroupPositionData);
          if (v5 <= 0x3F)
          {
            sub_220276BF4(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
            if (v6 <= 0x3F)
            {
              sub_220276BF4(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
              if (v7 <= 0x3F)
              {
                sub_220276BF4(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_220276BF4(319, &qword_281266840, sub_220231080, sub_2202310D4, &type metadata for ViewEndData);
                  if (v9 <= 0x3F)
                  {
                    sub_220276BF4(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_220279148(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_2812652B8, &type metadata for FeedPositionData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_2812644F0, &type metadata for InGroupPositionData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_281265970, &type metadata for WatchlistData);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2202792C8()
{
  result = qword_27CF26BE0;
  if (!qword_27CF26BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26BE0);
  }

  return result;
}

unint64_t sub_220279320()
{
  result = qword_27CF26BE8;
  if (!qword_27CF26BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26BE8);
  }

  return result;
}

unint64_t sub_220279378()
{
  result = qword_27CF26BF0;
  if (!qword_27CF26BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26BF0);
  }

  return result;
}

uint64_t sub_2202793CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220390A60 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390A80 == a2 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390AA0 == a2 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_220370048();

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

StocksAnalytics::ViewabilityHeight_optional __swiftcall ViewabilityHeight.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ViewabilityHeight.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C616974726170;
  if (*v0 != 2)
  {
    v2 = 0x657370616C6C6F63;
  }

  if (*v0)
  {
    v1 = 0x6465646E61707865;
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

unint64_t sub_220279804()
{
  result = qword_27CF26BF8;
  if (!qword_27CF26BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26BF8);
  }

  return result;
}

uint64_t sub_220279858()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_220279920(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_2202799D4(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_220279AA4(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE700000000000000;
  v5 = 0x6C616974726170;
  if (*v1 != 2)
  {
    v5 = 0x657370616C6C6F63;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x6465646E61707865;
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

unint64_t sub_220279BE8()
{
  result = qword_27CF26C00;
  if (!qword_27CF26C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26C00);
  }

  return result;
}

uint64_t GroupData.groupID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t GroupData.groupID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t GroupData.curatedSubType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GroupData.curatedSubType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

_BYTE *GroupData.init(groupType:groupID:groupArticleCount:groupPosition:curatedSubType:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 28) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

unint64_t sub_220279E04()
{
  v1 = *v0;
  v2 = 0x70795470756F7267;
  v3 = 0xD000000000000011;
  v4 = 0x736F5070756F7267;
  if (v1 != 3)
  {
    v4 = 0x5364657461727563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x444970756F7267;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_220279EC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22027A6C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220279EE8(uint64_t a1)
{
  v2 = sub_22027A16C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220279F24(uint64_t a1)
{
  v2 = sub_22027A16C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupData.encode(to:)(void *a1)
{
  sub_22027A470(0, &qword_281261B80, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v9;
  LODWORD(v9) = *(v1 + 6);
  v13 = *(v1 + 7);
  v14 = v9;
  v12[1] = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22027A16C();
  sub_220370168();
  v23 = v8;
  v22 = 0;
  sub_2202644D8();
  v10 = v17;
  sub_22036FFF8();
  if (!v10)
  {
    v21 = 1;
    sub_22036FFB8();
    v20 = 2;
    sub_220370008();
    v19 = 3;
    sub_220370008();
    v18 = 4;
    sub_22036FF68();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22027A16C()
{
  result = qword_281262070;
  if (!qword_281262070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262070);
  }

  return result;
}

uint64_t GroupData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22027A470(0, qword_281266E08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22027A16C();
  sub_220370148();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  sub_220264728();
  sub_22036FF28();
  v10 = v30;
  v28 = 1;
  v11 = sub_22036FEE8();
  v13 = v12;
  v24 = v11;
  v27 = 2;
  v23 = sub_22036FF38();
  v26 = 3;
  v22 = sub_22036FF38();
  v25 = 4;
  v14 = sub_22036FE98();
  v17 = v16;
  v18 = *(v7 + 8);
  v21 = v14;
  v18(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v24;
  *(a2 + 16) = v13;
  v19 = v22;
  *(a2 + 24) = v23;
  *(a2 + 28) = v19;
  *(a2 + 32) = v21;
  *(a2 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22027A470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22027A16C();
    v7 = a3(a1, &type metadata for GroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22027A50C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22027A554(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22027A5C4()
{
  result = qword_27CF26C08;
  if (!qword_27CF26C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26C08);
  }

  return result;
}

unint64_t sub_22027A61C()
{
  result = qword_281262060;
  if (!qword_281262060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262060);
  }

  return result;
}

unint64_t sub_22027A674()
{
  result = qword_281262068;
  if (!qword_281262068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281262068);
  }

  return result;
}

uint64_t sub_22027A6C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70795470756F7267 && a2 == 0xE900000000000065;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220390B30 == a2 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736F5070756F7267 && a2 == 0xED00006E6F697469 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5364657461727563 && a2 == 0xEE00657079546275)
  {

    return 4;
  }

  else
  {
    v6 = sub_220370048();

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

uint64_t sub_22027A960()
{
  v0 = sub_22036F118();
  __swift_allocate_value_buffer(v0, qword_27CF26C40);
  __swift_project_value_buffer(v0, qword_27CF26C40);
  return sub_22036F108();
}

uint64_t MediaEngageEvent.eventData.setter(uint64_t a1)
{
  sub_220230578(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaEngageEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 20);
  sub_220230718(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 24);
  sub_22027BCC8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.newsArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 24);
  sub_22027BCC8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 28);
  sub_22027BCC8(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 28);
  sub_22027BCC8(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 32);
  sub_22027BCC8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 32);
  sub_22027BCC8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 36);
  sub_22027BCC8(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_22027B158()
{
  result = qword_281261FE0;
  if (!qword_281261FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FE0);
  }

  return result;
}

unint64_t sub_22027B1AC()
{
  result = qword_281261FE8;
  if (!qword_281261FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281261FE8);
  }

  return result;
}

uint64_t MediaEngageEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 36);
  sub_22027BCC8(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.mediaEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 40);
  sub_22027BCC8(0, &qword_281266790, sub_22027B3B0, sub_22027B404, &type metadata for MediaEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_22027B3B0()
{
  result = qword_2812644E0;
  if (!qword_2812644E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644E0);
  }

  return result;
}

unint64_t sub_22027B404()
{
  result = qword_2812644E8;
  if (!qword_2812644E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812644E8);
  }

  return result;
}

uint64_t MediaEngageEvent.mediaEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 40);
  sub_22027BCC8(0, &qword_281266790, sub_22027B3B0, sub_22027B404, &type metadata for MediaEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 44);
  sub_22027BCC8(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 44);
  sub_22027BCC8(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 48);
  sub_22027BCC8(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 48);
  sub_22027BCC8(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 52);
  sub_22027BCC8(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 52);
  sub_22027BCC8(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 56);
  sub_22027BCC8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 56);
  sub_22027BCC8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.activeWatchlistData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 60);
  sub_22027BCC8(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_22027BCC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_22036EE38();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t MediaEngageEvent.activeWatchlistData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageEvent(0) + 60);
  sub_22027BCC8(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaEngageEvent(0);
  v5 = v4[5];
  sub_220230718(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_22027BCC8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_22027BCC8(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_22027BCC8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_22027BCC8(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_22027BCC8(0, &qword_281266790, sub_22027B3B0, sub_22027B404, &type metadata for MediaEngagementData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_22027BCC8(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_22027BCC8(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_22027BCC8(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v23 - 8) + 104))(a1 + v22, v10, v23);
  v24 = v4[14];
  sub_22027BCC8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_22027BCC8(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v10, v27);
}

uint64_t sub_22027C410@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t MediaEngageEvent.Model.newsArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_22022ECDC(v10, v9);
}

void MediaEngageEvent.Model.groupData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_22023846C(v4, v5, v6, v7, v8, v9);
}

uint64_t MediaEngageEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 32);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
}

uint64_t MediaEngageEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 36));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaEngageEvent.Model.mediaEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for MediaEngageEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 3);
  LOBYTE(v4) = *(v4 + 16);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 12) = v7;
  *(a1 + 16) = v4;
  return result;
}

uint64_t MediaEngageEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaEngageEvent.Model.anfComponentData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 48));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_22027C714(v4, v5);
}

uint64_t sub_22027C714(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t MediaEngageEvent.Model.issueData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaEngageEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageEvent.Model(0) + 56));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOBYTE(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;
}

uint64_t MediaEngageEvent.Model.activeWatchlistData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaEngageEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

__n128 MediaEngageEvent.Model.init(eventData:timedData:newsArticleData:groupData:feedData:mediaData:mediaEngagementData:viewData:anfComponentData:issueData:channelData:activeWatchlistData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, __n128 *a12, char *a13)
{
  v18 = *(a4 + 4);
  v19 = *(a4 + 5);
  v41 = *a5;
  v20 = *(a5 + 2);
  v21 = *a6;
  v43 = *(a6 + 2);
  v44 = *(a6 + 1);
  v42 = *(a6 + 6);
  v22 = a6[28];
  v48 = *a7;
  v46 = *(a7 + 3);
  v47 = *(a7 + 8);
  v45 = *(a7 + 16);
  v50 = a8[1];
  v51 = *a8;
  v49 = *(a8 + 8);
  v52 = a10[1];
  v53 = *a10;
  v54 = a11[1];
  v55 = *a11;
  v60 = *a12;
  v58 = a12[1].n128_u64[1];
  v59 = a12[1].n128_u64[0];
  v56 = a12[2].n128_u8[1];
  v57 = a12[2].n128_u8[0];
  v61 = *a13;
  v23 = sub_22036F388();
  v39 = a4[1];
  v40 = *a4;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for MediaEngageEvent.Model(0);
  v25 = v24[5];
  v26 = sub_22036F3C8();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = a9 + v24[6];
  v28 = *(a3 + 48);
  *(v27 + 32) = *(a3 + 32);
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a3 + 64);
  v29 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v29;
  v30 = a9 + v24[7];
  *v30 = v40;
  *(v30 + 16) = v39;
  *(v30 + 32) = v18;
  *(v30 + 40) = v19;
  v31 = a9 + v24[8];
  *v31 = v41;
  *(v31 + 16) = v20;
  v32 = a9 + v24[9];
  *v32 = v21;
  *(v32 + 8) = v44;
  *(v32 + 16) = v43;
  *(v32 + 24) = v42;
  *(v32 + 28) = v22;
  v33 = a9 + v24[10];
  *v33 = v48;
  *(v33 + 8) = v47;
  *(v33 + 12) = v46;
  *(v33 + 16) = v45;
  v34 = a9 + v24[11];
  *v34 = v51;
  *(v34 + 8) = v50;
  *(v34 + 16) = v49;
  v35 = (a9 + v24[12]);
  *v35 = v53;
  v35[1] = v52;
  v36 = (a9 + v24[13]);
  *v36 = v55;
  v36[1] = v54;
  v37 = (a9 + v24[14]);
  result = v60;
  *v37 = v60;
  v37[1].n128_u64[0] = v59;
  v37[1].n128_u64[1] = v58;
  v37[2].n128_u8[0] = v57;
  v37[2].n128_u8[1] = v56;
  *(a9 + v24[15]) = v61;
  return result;
}

unint64_t sub_22027CA78(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7461446575737369;
    v7 = 0x446C656E6E616863;
    if (a1 != 10)
    {
      v7 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000013;
    v9 = 0x6174614477656976;
    if (a1 != 7)
    {
      v9 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x74614470756F7267;
    v3 = 0x6174614464656566;
    if (a1 != 4)
    {
      v3 = 0x746144616964656DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x74614464656D6974;
    if (a1 != 1)
    {
      v4 = 0x697472417377656ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22027CC0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22027ED7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22027CC34(uint64_t a1)
{
  v2 = sub_22027D360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22027CC70(uint64_t a1)
{
  v2 = sub_22027D360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngageEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22027DF78(0, &qword_27CF26C58, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22027D360();
  sub_220370168();
  LOBYTE(v62[0]) = 0;
  sub_22036F388();
  sub_2202307E4(&qword_2812666A8, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_22036FFF8();
  if (!v2)
  {
    v10 = type metadata accessor for MediaEngageEvent.Model(0);
    v66 = 1;
    sub_22036F3C8();
    sub_2202307E4(&qword_281266690, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_22036FFF8();
    v11 = v3 + v10[6];
    v12 = *(v11 + 16);
    v13 = *(v11 + 48);
    v63 = *(v11 + 32);
    v64 = v13;
    v14 = *(v11 + 16);
    v62[0] = *v11;
    v62[1] = v14;
    v15 = *(v11 + 48);
    v59 = v63;
    v60 = v15;
    v65 = *(v11 + 64);
    v61 = *(v11 + 64);
    v57 = v62[0];
    v58 = v12;
    v56 = 2;
    sub_22022ECDC(v62, v54);
    sub_22022EDA0();
    sub_22036FFF8();
    v54[2] = v59;
    v54[3] = v60;
    v55 = v61;
    v54[0] = v57;
    v54[1] = v58;
    sub_22022ED14(v54);
    v16 = (v3 + v10[7]);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    *&v49 = *v16;
    *(&v49 + 1) = v17;
    v50 = v18;
    v51 = v19;
    v52 = v20;
    v53 = v21;
    v48 = 3;
    sub_22023846C(v49, v17, v18, v19, v20, v21);
    sub_220236CDC();
    sub_22036FF88();
    sub_2202391D8(v49, *(&v49 + 1), v50, v51, v52, v53);
    v22 = (v3 + v10[8]);
    v23 = *(v22 + 2);
    v49 = *v22;
    v50 = v23;
    v48 = 4;
    sub_2201FBD1C();

    sub_22036FF88();

    v24 = (v3 + v10[9]);
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = *(v24 + 2);
    v28 = *(v24 + 6);
    LOBYTE(v24) = v24[28];
    LOBYTE(v49) = v25;
    *(&v49 + 1) = v26;
    v50 = v27;
    LODWORD(v51) = v28;
    BYTE4(v51) = v24;
    v48 = 5;
    sub_22027B1AC();

    sub_22036FFF8();

    v30 = (v3 + v10[10]);
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 3);
    LOBYTE(v30) = *(v30 + 16);
    *&v49 = v31;
    BYTE8(v49) = v32;
    HIDWORD(v49) = v33;
    LOBYTE(v50) = v30;
    v48 = 6;
    sub_22027B404();
    sub_22036FFF8();
    v34 = (v3 + v10[11]);
    v35 = *v34;
    v36 = v34[1];
    LOWORD(v34) = *(v34 + 8);
    *&v49 = v35;
    *(&v49 + 1) = v36;
    LOWORD(v50) = v34;
    v48 = 7;
    sub_220202110();

    sub_22036FFF8();

    v37 = (v3 + v10[12]);
    v38 = v37[1];
    *&v49 = *v37;
    *(&v49 + 1) = v38;
    v48 = 8;
    sub_22027C714(v49, v38);
    sub_22024EDBC();
    sub_22036FF88();
    sub_22027D3B4(v49, *(&v49 + 1));
    v39 = (v3 + v10[13]);
    v40 = v39[1];
    *&v49 = *v39;
    *(&v49 + 1) = v40;
    v48 = 9;
    sub_220237744();

    sub_22036FF88();

    v41 = (v3 + v10[14]);
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    v46 = *(v41 + 32);
    LOBYTE(v41) = *(v41 + 33);
    *&v49 = v42;
    *(&v49 + 1) = v43;
    v50 = v44;
    v51 = v45;
    LOBYTE(v52) = v46;
    BYTE1(v52) = v41;
    v48 = 10;
    sub_220236A84();

    sub_22036FFF8();

    LOBYTE(v49) = *(v3 + v10[15]);
    v48 = 11;
    sub_220237C70();
    sub_22036FF88();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_22027D360()
{
  result = qword_27CF26C60;
  if (!qword_27CF26C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26C60);
  }

  return result;
}

uint64_t sub_22027D3B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void MediaEngageEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = sub_22036F3C8();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22036F388();
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22027DF78(0, &qword_27CF26C68, MEMORY[0x277D844C8]);
  v52 = v7;
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for MediaEngageEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22027D360();
  v51 = v9;
  v13 = v63;
  sub_220370148();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v44 = a1;
    v43 = v10;
    v63 = v12;
    LOBYTE(v58) = 0;
    sub_2202307E4(&qword_2812666A0, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v14 = v49;
    sub_22036FF28();
    v15 = v63;
    (*(v48 + 32))(v63, v14, v5);
    LOBYTE(v58) = 1;
    sub_2202307E4(&qword_281266688, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v16 = v47;
    sub_22036FF28();
    v42 = v5;
    v49 = 0;
    v17 = v43;
    (*(v46 + 32))(&v15[v43[5]], v4, v16);
    v57 = 2;
    sub_22022ED48();
    sub_22036FF28();
    v18 = &v15[v17[6]];
    v19 = v61;
    *(v18 + 2) = v60;
    *(v18 + 3) = v19;
    *(v18 + 16) = v62;
    v20 = v59;
    *v18 = v58;
    *(v18 + 1) = v20;
    v53 = 3;
    sub_220236C88();
    sub_22036FEB8();
    v21 = &v15[v17[7]];
    v22 = v55;
    *v21 = v54;
    *(v21 + 1) = v22;
    *(v21 + 2) = v56;
    v53 = 4;
    sub_2201FBCC4();
    sub_22036FEB8();
    v23 = v55;
    v24 = &v15[v17[8]];
    *v24 = v54;
    *(v24 + 2) = v23;
    v53 = 5;
    sub_22027B158();
    sub_22036FF28();
    v25 = *(&v54 + 1);
    v26 = v55;
    v27 = DWORD2(v55);
    v28 = BYTE12(v55);
    v29 = &v15[v17[9]];
    *v29 = v54;
    *(v29 + 1) = v25;
    *(v29 + 2) = v26;
    *(v29 + 6) = v27;
    v29[28] = v28;
    v53 = 6;
    sub_22027B3B0();
    sub_22036FF28();
    v30 = BYTE8(v54);
    v31 = HIDWORD(v54);
    v32 = v55;
    v33 = &v15[v17[10]];
    *v33 = v54;
    v33[8] = v30;
    *(v33 + 3) = v31;
    v33[16] = v32;
    v53 = 7;
    sub_2202020B8();
    sub_22036FF28();
    v34 = *(&v54 + 1);
    v35 = v55;
    v36 = &v63[v43[11]];
    *v36 = v54;
    *(v36 + 1) = v34;
    *(v36 + 8) = v35;
    v53 = 8;
    sub_22024ED64();
    sub_22036FEB8();
    *&v63[v43[12]] = v54;
    v53 = 9;
    sub_2202376F0();
    sub_22036FEB8();
    *&v63[v43[13]] = v54;
    v53 = 10;
    sub_220236A30();
    sub_22036FF28();
    v37 = v55;
    v38 = v56;
    v39 = BYTE1(v56);
    v40 = &v63[v43[14]];
    *v40 = v54;
    *(v40 + 1) = v37;
    v40[32] = v38;
    v40[33] = v39;
    v53 = 11;
    sub_220237C1C();
    sub_22036FEB8();
    (*(v50 + 8))(v51, v52);
    v41 = v63;
    v63[v43[15]] = v54;
    sub_22027DFDC(v41, v45);
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_22027E040(v41);
  }
}

void sub_22027DF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22027D360();
    v7 = a3(a1, &type metadata for MediaEngageEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22027DFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22027E040(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22027E174@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_220230578(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_220230718(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_22027BCC8(0, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_22027BCC8(0, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_22027BCC8(0, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_22027BCC8(0, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_22027BCC8(0, &qword_281266790, sub_22027B3B0, sub_22027B404, &type metadata for MediaEngagementData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_22027BCC8(0, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_22027BCC8(0, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_22027BCC8(0, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
  (*(*(v24 - 8) + 104))(a2 + v23, v11, v24);
  v25 = a1[14];
  sub_22027BCC8(0, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_22027BCC8(0, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v11, v28);
}

void sub_22027E720(uint64_t a1)
{
  sub_220230578(319);
  if (v1 <= 0x3F)
  {
    sub_220230718(319);
    if (v2 <= 0x3F)
    {
      sub_22027BCC8(319, &qword_2812667E0, sub_22022ED48, sub_22022EDA0, &type metadata for NewsArticleData);
      if (v3 <= 0x3F)
      {
        sub_22027BCC8(319, &qword_281266718, sub_220236C88, sub_220236CDC, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_22027BCC8(319, &qword_281266730, sub_2201FBCC4, sub_2201FBD1C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_22027BCC8(319, &qword_281266708, sub_22027B158, sub_22027B1AC, &type metadata for MediaData);
            if (v6 <= 0x3F)
            {
              sub_22027BCC8(319, &qword_281266790, sub_22027B3B0, sub_22027B404, &type metadata for MediaEngagementData);
              if (v7 <= 0x3F)
              {
                sub_22027BCC8(319, &qword_281266728, sub_2202020B8, sub_220202110, &type metadata for ViewData);
                if (v8 <= 0x3F)
                {
                  sub_22027BCC8(319, &qword_2812667C8, sub_22024ED64, sub_22024EDBC, &type metadata for ANFComponentData);
                  if (v9 <= 0x3F)
                  {
                    sub_22027BCC8(319, &qword_281266710, sub_2202376F0, sub_220237744, &type metadata for IssueData);
                    if (v10 <= 0x3F)
                    {
                      sub_22027BCC8(319, &qword_281266858, sub_220236A30, sub_220236A84, &type metadata for ChannelData);
                      if (v11 <= 0x3F)
                      {
                        sub_22027BCC8(319, &qword_281266810, sub_220237C1C, sub_220237C70, &type metadata for WatchlistData);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

void sub_22027EAEC(uint64_t a1)
{
  sub_22036F388();
  if (v1 <= 0x3F)
  {
    sub_22036F3C8();
    if (v2 <= 0x3F)
    {
      sub_22023A8F4(319, &qword_281262048, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_22023A8F4(319, &qword_281262190, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_22023A8F4(319, &qword_27CF26C70, &type metadata for ANFComponentData);
          if (v5 <= 0x3F)
          {
            sub_22023A8F4(319, &qword_281262008, &type metadata for IssueData);
            if (v6 <= 0x3F)
            {
              sub_22023A8F4(319, &qword_281265970, &type metadata for WatchlistData);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22027EC78()
{
  result = qword_27CF26C78;
  if (!qword_27CF26C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26C78);
  }

  return result;
}

unint64_t sub_22027ECD0()
{
  result = qword_27CF26C80;
  if (!qword_27CF26C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26C80);
  }

  return result;
}

unint64_t sub_22027ED28()
{
  result = qword_27CF26C88;
  if (!qword_27CF26C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26C88);
  }

  return result;
}

uint64_t sub_22027ED7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220370048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697472417377656ELL && a2 == 0xEF61746144656C63 || (sub_220370048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390B50 == a2 || (sub_220370048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_220370048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220390B70 == a2 || (sub_220370048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_220370048() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_220370048() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220390390 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_220370048();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

StocksAnalytics::StoryType_optional __swiftcall StoryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22036FE78();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StoryType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x69706F6C65766564;
  v4 = 0x64657461647075;
  if (v1 != 3)
  {
    v4 = 0x6C65527373657270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696B61657262;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_22027F284()
{
  result = qword_27CF26C90;
  if (!qword_27CF26C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26C90);
  }

  return result;
}

uint64_t sub_22027F2D8()
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

uint64_t sub_22027F3C8(uint64_t a1)
{
  sub_22036FB08();
}

uint64_t sub_22027F4A4(uint64_t a1)
{
  sub_220370108();
  sub_22036FB08();

  return sub_220370128();
}

void sub_22027F59C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000676ELL;
  v6 = 0x69706F6C65766564;
  v7 = 0xE700000000000000;
  v8 = 0x64657461647075;
  if (v2 != 3)
  {
    v8 = 0x6C65527373657270;
    v7 = 0xEC00000065736165;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676E696B61657262;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_22027F708()
{
  result = qword_281266EC8;
  if (!qword_281266EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281266EC8);
  }

  return result;
}

uint64_t sub_22027F7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74694B65726F7473 && a2 == 0xED0000726F727245)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22027F85C(uint64_t a1)
{
  v2 = sub_22027FA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22027F898(uint64_t a1)
{
  v2 = sub_22027FA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreKitErrorData.encode(to:)(void *a1)
{
  sub_22027FC70(0, &qword_27CF26C98, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22027FA30();
  sub_220370168();
  v11 = v8;
  sub_22027FA84();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22027FA30()
{
  result = qword_27CF26CA0;
  if (!qword_27CF26CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CA0);
  }

  return result;
}

unint64_t sub_22027FA84()
{
  result = qword_27CF26CA8;
  if (!qword_27CF26CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CA8);
  }

  return result;
}

uint64_t StoreKitErrorData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_22027FC70(0, &qword_27CF26CB0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22027FA30();
  sub_220370148();
  if (!v2)
  {
    sub_22027FCD4();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_22027FC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22027FA30();
    v7 = a3(a1, &type metadata for StoreKitErrorData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22027FCD4()
{
  result = qword_27CF26CB8;
  if (!qword_27CF26CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CB8);
  }

  return result;
}

unint64_t sub_22027FD2C()
{
  result = qword_27CF26CC0;
  if (!qword_27CF26CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CC0);
  }

  return result;
}

unint64_t sub_22027FD84()
{
  result = qword_27CF26CC8;
  if (!qword_27CF26CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CC8);
  }

  return result;
}

unint64_t sub_22027FE2C()
{
  result = qword_27CF26CD0;
  if (!qword_27CF26CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CD0);
  }

  return result;
}

unint64_t sub_22027FE84()
{
  result = qword_27CF26CD8;
  if (!qword_27CF26CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CD8);
  }

  return result;
}

unint64_t sub_22027FEDC()
{
  result = qword_27CF26CE0;
  if (!qword_27CF26CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CE0);
  }

  return result;
}

uint64_t sub_22027FFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697463656C6573 && a2 == 0xED0000657079546ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_220370048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_220280030(uint64_t a1)
{
  v2 = sub_220280204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22028006C(uint64_t a1)
{
  v2 = sub_220280204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizedAdsUserSelectionData.encode(to:)(void *a1)
{
  sub_220280444(0, &qword_27CF26CE8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220280204();
  sub_220370168();
  v11 = v8;
  sub_220280258();
  sub_22036FFF8();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_220280204()
{
  result = qword_27CF26CF0;
  if (!qword_27CF26CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CF0);
  }

  return result;
}

unint64_t sub_220280258()
{
  result = qword_27CF26CF8;
  if (!qword_27CF26CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26CF8);
  }

  return result;
}

uint64_t PersonalizedAdsUserSelectionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_220280444(0, &qword_27CF26D00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220280204();
  sub_220370148();
  if (!v2)
  {
    sub_2202804A8();
    sub_22036FF28();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_220280444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220280204();
    v7 = a3(a1, &type metadata for PersonalizedAdsUserSelectionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2202804A8()
{
  result = qword_27CF26D08;
  if (!qword_27CF26D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF26D08);
  }

  return result;
}