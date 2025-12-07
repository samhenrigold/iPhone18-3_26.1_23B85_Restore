uint64_t sub_23DCF3368(void **__src, void **__dst, char *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst - __src;
  v7 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    v37 = __dst;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v70 = &v14[v11];
    if (v9 < 8 || v37 <= v5)
    {
      goto LABEL_72;
    }

    v69 = v14;
    v62 = v5;
    while (2)
    {
      v67 = v37;
      v38 = v37 - 1;
      v39 = v4;
      v40 = v70;
      v63 = v37 - 1;
      while (1)
      {
        v65 = v40 - 1;
        v41 = *v38;
        v42 = qword_27E30DFD0;
        v43 = *(v40 - 1);
        v44 = v41;
        if (v42 != -1)
        {
          swift_once();
        }

        v45 = qword_27E311CD0;

        v46 = sub_23DCF0270(v43, v45);
        v48 = v47;

        v49 = (v48 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v46;
        v50 = qword_27E311CD0;

        v51 = sub_23DCF0270(v44, v50);
        v53 = v52;

        if (v53)
        {
          break;
        }

        v55 = v49 == 0x7FFFFFFFFFFFFFFFLL && v51 == 0x7FFFFFFFFFFFFFFFLL;
        v54 = v62;
        if (v55)
        {
          goto LABEL_59;
        }

        v4 = v39 - 8;
        if (v49 < v51)
        {
          goto LABEL_65;
        }

LABEL_63:
        v38 = v63;
        v40 = v65;
        if (v70 != v39)
        {
          *v4 = *v65;
        }

        v70 = v65;
        v39 = v4;
        if (v65 <= v69)
        {
          v70 = v65;
          v37 = v67;
          v14 = v69;
          goto LABEL_72;
        }
      }

      v54 = v62;
      if (v49 != 0x7FFFFFFFFFFFFFFFLL)
      {

        v4 = v39 - 8;
LABEL_65:
        if (v39 != v67)
        {
          *v4 = *v63;
        }

        v14 = v69;
        if (v70 <= v69 || (v37 = v63, v63 <= v54))
        {
          v37 = v63;
          goto LABEL_72;
        }

        continue;
      }

      break;
    }

LABEL_59:
    v56 = sub_23DD42178();
    v58 = v57;
    if (v56 == sub_23DD42178() && v58 == v59)
    {

      v4 = v39 - 8;
    }

    else
    {
      v60 = sub_23DD42648();

      v4 = v39 - 8;
      if (v60)
      {
        goto LABEL_65;
      }
    }

    goto LABEL_63;
  }

  if (a4 != __src || &__src[v8] <= a4)
  {
    v13 = a4;
    memmove(a4, __src, 8 * v8);
    a4 = v13;
  }

  v70 = &a4[v8];
  v14 = a4;
  if (v6 >= 8 && __dst < v4)
  {
    v15 = __dst;
    v64 = v4;
    do
    {
      v66 = v15;
      v68 = v14;
      v16 = *v14;
      v17 = qword_27E30DFD0;
      v18 = *v15;
      v19 = v16;
      if (v17 != -1)
      {
        swift_once();
      }

      v20 = qword_27E311CD0;

      v21 = sub_23DCF0270(v18, v20);
      v23 = v22;

      if (v23)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v21;
      }

      v25 = qword_27E311CD0;

      v26 = sub_23DCF0270(v19, v25);
      v28 = v27;

      if (v28)
      {
        v29 = v64;
        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {

LABEL_30:
          v14 = v68;
          v36 = v66;
          v15 = v66 + 1;
          if (v5 == v66)
          {
            goto LABEL_32;
          }

LABEL_31:
          *v5 = *v36;
          goto LABEL_32;
        }
      }

      else
      {
        v30 = v24 == 0x7FFFFFFFFFFFFFFFLL && v26 == 0x7FFFFFFFFFFFFFFFLL;
        v29 = v64;
        if (!v30)
        {

          if (v24 < v26)
          {
            goto LABEL_30;
          }

          goto LABEL_35;
        }
      }

      v31 = sub_23DD42178();
      v33 = v32;
      if (v31 == sub_23DD42178() && v33 == v34)
      {
      }

      else
      {
        v35 = sub_23DD42648();

        if (v35)
        {
          goto LABEL_30;
        }
      }

LABEL_35:
      v15 = v66;
      v36 = v68;
      v14 = v68 + 1;
      if (v5 != v68)
      {
        goto LABEL_31;
      }

LABEL_32:
      ++v5;
    }

    while (v14 < v70 && v15 < v29);
  }

  v37 = v5;
LABEL_72:
  if (v37 != v14 || v37 >= (v14 + ((v70 - v14 + (v70 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v37, v14, 8 * (v70 - v14));
  }

  return 1;
}

uint64_t sub_23DCF389C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DCF3928(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_23DCF3964(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void _sSo9ACAccountC18AccountsUISettingsE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  if (ACAccount.appearsActive()() && !ACAccount.appearsActive()() || !ACAccount.appearsActive()() && ACAccount.appearsActive()())
  {
    return;
  }

  v4 = [a1 accountType];
  if (!v4)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v5 = v4;
  v6 = [v4 identifier];

  if (v6)
  {
    v7 = sub_23DD42178();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a2 accountType];
  if (!v10)
  {
    goto LABEL_81;
  }

  v11 = v10;
  v12 = [v10 identifier];

  if (!v12)
  {
    if (!v9)
    {
      goto LABEL_45;
    }

    goto LABEL_20;
  }

  v13 = sub_23DD42178();
  v15 = v14;

  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_45;
    }

    goto LABEL_20;
  }

  if (!v15)
  {
LABEL_20:

    goto LABEL_21;
  }

  if (v7 == v13 && v9 == v15)
  {

    goto LABEL_45;
  }

  v37 = sub_23DD42648();

  if (v37)
  {
LABEL_45:
    v38 = [a1 accountType];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 identifier];

      if (v40)
      {
        v41 = sub_23DD42178();
        v43 = v42;

        v44 = sub_23DD42178();
        if (v43)
        {
          if (v41 == v44 && v43 == v45)
          {

            goto LABEL_59;
          }

          v53 = sub_23DD42648();

          if (v53)
          {
LABEL_59:
            v54 = sub_23DD42138();
            v55 = [a1 accountPropertyForKey_];

            if (v55)
            {
              sub_23DD424A8();
              swift_unknownObjectRelease();
            }

            else
            {
              v61 = 0u;
              v62 = 0u;
            }

            v63 = v61;
            v64 = v62;
            if (*(&v62 + 1))
            {
              sub_23DCF0044();
              if (swift_dynamicCast())
              {
                v56 = [v60 BOOLValue];

                goto LABEL_67;
              }
            }

            else
            {
              sub_23DCEFFDC(&v63);
            }

            v56 = 0;
LABEL_67:
            v57 = sub_23DD42138();
            v58 = [a2 accountPropertyForKey_];

            if (v58)
            {
              sub_23DD424A8();
              swift_unknownObjectRelease();
            }

            else
            {
              v61 = 0u;
              v62 = 0u;
            }

            v63 = v61;
            v64 = v62;
            if (*(&v62 + 1))
            {
              sub_23DCF0044();
              if (swift_dynamicCast())
              {
                v59 = [v60 BOOLValue];

                if (v56)
                {
                  if ((v59 & 1) == 0)
                  {
                    return;
                  }
                }

                else if (v59)
                {
                  return;
                }

                goto LABEL_53;
              }
            }

            else
            {
              sub_23DCEFFDC(&v63);
            }

            if (v56)
            {
              return;
            }
          }

LABEL_53:
          v46 = [a1 accountDescription];
          if (v46)
          {
            v47 = v46;
            v48 = sub_23DD42178();
            v50 = v49;

            v51 = [a2 accountDescription];
            if (v51)
            {
              v52 = v51;
              sub_23DD42178();

              *&v63 = v48;
              *(&v63 + 1) = v50;
              sub_23DCF4570();
              sub_23DD42498();
            }
          }

          return;
        }
      }

      else
      {
        sub_23DD42178();
      }

      goto LABEL_53;
    }

LABEL_86:
    __break(1u);
    return;
  }

LABEL_21:
  if (qword_2814FCC70 != -1)
  {
    swift_once();
  }

  v16 = off_2814FCC78;
  v17 = [a1 accountType];
  if (!v17)
  {
    goto LABEL_82;
  }

  v18 = v17;
  v19 = [v17 identifier];

  if (!v19)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v20 = sub_23DD42178();
  v22 = v21;

  v23 = v16[2];
  if (v23)
  {
    v24 = 0;
    v25 = v16 + 5;
    do
    {
      if (*(v25 - 1) == v20 && *v25 == v22)
      {
        break;
      }

      if (sub_23DD42648())
      {
        break;
      }

      ++v24;
      v25 += 2;
    }

    while (v23 != v24);
  }

  v27 = [a2 accountType];
  if (!v27)
  {
    goto LABEL_84;
  }

  v28 = v27;
  v29 = [v27 identifier];

  if (!v29)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v30 = sub_23DD42178();
  v32 = v31;

  v33 = v16[2];
  if (v33)
  {
    v34 = 0;
    v35 = v16 + 5;
    do
    {
      if (*(v35 - 1) == v30 && *v35 == v32)
      {
        break;
      }

      if (sub_23DD42648())
      {
        break;
      }

      ++v34;
      v35 += 2;
    }

    while (v33 != v34);
  }
}

unint64_t sub_23DCF4128()
{
  result = qword_27E30E0D0;
  if (!qword_27E30E0D0)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E0D0);
  }

  return result;
}

void _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_23DCF4570();
    if (*(sub_23DD42458() + 16))
    {

      v4 = sub_23DD421A8();
      v6 = v5;

      MEMORY[0x23EEFDA30](v4, v6);

      v7 = sub_23DD42138();
      v8 = [objc_opt_self() bundleWithIdentifier_];

      if (v8)
      {
        v9 = sub_23DD42138();

        v10 = sub_23DD42138();
        v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

        sub_23DD42178();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_23DCF4364(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  sub_23DCF4570();
  if (*(sub_23DD42458() + 16))
  {

    v5 = sub_23DD421A8();
    v7 = v6;

    sub_23DD42538();

    MEMORY[0x23EEFDA30](v5, v7);

    if (v4)
    {
      MEMORY[0x23EEFDA30](0x524548544F5FLL, 0xE600000000000000);
    }

    v8 = sub_23DD42138();
    v9 = [objc_opt_self() bundleWithIdentifier_];

    if (v9)
    {
      v10 = sub_23DD42138();

      v11 = sub_23DD42138();
      v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

      sub_23DD42178();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

unint64_t sub_23DCF4570()
{
  result = qword_2814FCC98;
  if (!qword_2814FCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814FCC98);
  }

  return result;
}

uint64_t sub_23DCF45C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v6 = 0xE000000000000000;
  v16 = 0;
  v17 = 0xE000000000000000;
  v15[3] = &type metadata for AccountsUIModel.FeatureFlags;
  v15[4] = sub_23DCE1B80();
  v7 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (v7)
  {
    v8 = 0x5F6E7265646F6DLL;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v6 = 0xE700000000000000;
  }

  MEMORY[0x23EEFDA30](v8, v6);

  v15[0] = a1;
  v15[1] = a2;
  sub_23DCF4570();
  if (*(sub_23DD42458() + 16))
  {

    v9 = sub_23DD42198();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x23EEFDA30](v9, v11);

  if (v5)
  {
    v12 = 0x746365725FLL;
  }

  else
  {
    v12 = 0x6572617571735FLL;
  }

  if (v5)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x23EEFDA30](v12, v13);

  return v16;
}

unint64_t sub_23DCF4750(uint64_t a1, uint64_t a2)
{
  if (sub_23DD42178() == a1 && v4 == a2)
  {
    goto LABEL_20;
  }

  v6 = sub_23DD42648();

  if (v6)
  {
    return 0xD000000000000013;
  }

  if (sub_23DD42178() == a1 && v7 == a2)
  {
LABEL_20:

    return 0xD000000000000013;
  }

  v9 = sub_23DD42648();

  if (v9)
  {
    return 0xD000000000000013;
  }

  if (sub_23DD42178() == a1 && v10 == a2)
  {
    goto LABEL_18;
  }

  v12 = sub_23DD42648();

  if (v12)
  {
    return 0xD00000000000001BLL;
  }

  if (sub_23DD42178() == a1 && v13 == a2)
  {
LABEL_18:

    return 0xD00000000000001BLL;
  }

  v15 = sub_23DD42648();

  if (v15)
  {
    return 0xD00000000000001BLL;
  }

  if (sub_23DD42178() == a1 && v16 == a2)
  {
    goto LABEL_25;
  }

  v17 = sub_23DD42648();

  if (v17)
  {
    return 0xD000000000000014;
  }

  if (sub_23DD42178() == a1 && v18 == a2)
  {
    goto LABEL_25;
  }

  v19 = sub_23DD42648();

  if (v19)
  {
    return 0xD000000000000014;
  }

  if (sub_23DD42178() == a1 && v20 == a2)
  {
    goto LABEL_25;
  }

  v21 = sub_23DD42648();

  if (v21)
  {
    return 0xD000000000000014;
  }

  if (sub_23DD42178() == a1 && v22 == a2)
  {
LABEL_25:

    return 0xD000000000000014;
  }

  v23 = sub_23DD42648();

  if (v23)
  {
    return 0xD000000000000014;
  }

  return 0;
}

void sub_23DCF4A10(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_23DD41E58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E288, &qword_23DD44080);
  MEMORY[0x28223BE20](v10);
  v11 = *a3;
  if (v11)
  {
    goto LABEL_2;
  }

  sub_23DCF4750(a1, a2);
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v16 = sub_23DD42138();

    [v15 initWithBundleIdentifier_];

    v17 = [objc_opt_self() imageDescriptorNamed_];
LABEL_17:
    v26 = v17;
    sub_23DD41498();
    sub_23DCF4FFC();
    sub_23DD41F48();
    return;
  }

  if (sub_23DD42178() == a1 && v21 == a2)
  {

LABEL_16:
    v24 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v25 = sub_23DD42138();
    [v24 initWithType_];

    v17 = [objc_opt_self() imageDescriptorNamed_];
    goto LABEL_17;
  }

  v23 = sub_23DD42648();

  if (v23)
  {
    goto LABEL_16;
  }

LABEL_2:
  v12 = [objc_opt_self() imageDescriptorNamed_];
  v13 = v12;
  if ((v11 & 1) == 0)
  {
    [v12 size];
  }

  LOBYTE(v27[0]) = v11;
  sub_23DCF45C4(a1, a2, v27);
  v18 = sub_23DD42138();
  v19 = [objc_opt_self() bundleWithIdentifier_];

  if (v19)
  {
    sub_23DD41E88();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v20 = sub_23DD41E78();

    (*(v7 + 8))(v9, v6);
    sub_23DD41FF8();
    sub_23DD41848();
    v29 = 1;
    v27[0] = v20;
    v27[15] = 0;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E290, &qword_23DD44088);
    sub_23DCF4EEC();
    sub_23DD41F48();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_23DCF4EEC()
{
  result = qword_27E30E298;
  if (!qword_27E30E298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E290, &qword_23DD44088);
    sub_23DCF4F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E298);
  }

  return result;
}

unint64_t sub_23DCF4F78()
{
  result = qword_27E30E2A0;
  if (!qword_27E30E2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E2A8, &qword_23DD44090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E2A0);
  }

  return result;
}

unint64_t sub_23DCF4FFC()
{
  result = qword_27E30E2B0;
  if (!qword_27E30E2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E288, &qword_23DD44080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E2B0);
  }

  return result;
}

id sub_23DCF5064@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 32) isEnabledForDataclass_];
  *a1 = result;
  return result;
}

uint64_t sub_23DCF5098(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_23DCF50A8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

BOOL sub_23DCF5134(id a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v5 = sub_23DD425C8();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x23EEFDD80](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v10 = [v8 type];

    v6 = v7 + 1;
  }

  while (v10 != a1);
  return v5 != v7;
}

void *sub_23DCF5220(id a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DD425C8())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EEFDD80](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(a2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v6 type] == a1)
      {
        return v7;
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

uint64_t sub_23DCF5310(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4A8, &qword_23DD44718);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4B0, &qword_23DD44720);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = a1;
    sub_23DD416D8();

    v11 = v14;
    if (v14)
    {
      v14 = ACAccount.sortedProvisionedDataclasses.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4C8, &qword_23DD47390);
      sub_23DCEF9F0(&qword_27E30E4D0, &qword_27E30E4C8, &qword_23DD47390, MEMORY[0x277D83980]);
      sub_23DCFDCF8();
      sub_23DCFD4F8(&qword_27E30E4D8, type metadata accessor for AccountUISetting.CustomDataclass, &protocol conformance descriptor for AccountUISetting.CustomDataclass);
      sub_23DD41FB8();
      (*(v7 + 16))(v5, v9, v6);
      swift_storeEnumTagMultiPayload();
      sub_23DCFDC7C(&qword_27E30E4B8, &qword_27E30E4B0, &qword_23DD44720, sub_23DCFDCF8);
      sub_23DD41A78();

      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_23DCFDC7C(&qword_27E30E4B8, &qword_27E30E4B0, &qword_23DD44720, sub_23DCFDCF8);
      return sub_23DD41A78();
    }
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

__n128 sub_23DCF56CC@<Q0>(uint64_t a2@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);

  v3 = sub_23DD41888();
  v10 = v4;
  v11 = v3;
  type metadata accessor for AccountUISetting.CustomDataclass(0);
  sub_23DCFD4F8(&qword_27E30E478, type metadata accessor for AccountUISetting.CustomDataclass, &protocol conformance descriptor for AccountUISetting.CustomDataclass);
  v5 = sub_23DD41818();
  v8 = v6;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E050, &qword_23DD436A0);
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  sub_23DD41EA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E0C8, &qword_23DD43728);
  sub_23DD41EA8();
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 32) = v12;
  *(a2 + 48) = v12.n128_u8[0];
  *(a2 + 56) = v12.n128_u64[1];
  *(a2 + 64) = v12.n128_u8[0];
  *(a2 + 72) = v12.n128_u64[1];
  *(a2 + 80) = v12.n128_u8[0];
  *(a2 + 88) = v12.n128_u64[1];
  *(a2 + 96) = v12.n128_u8[0];
  *(a2 + 104) = v12.n128_u64[1];
  *(a2 + 112) = v12.n128_u8[0];
  *(a2 + 120) = v12.n128_u64[1];
  result = v12;
  *(a2 + 128) = v12;
  *(a2 + 144) = v13;
  *(a2 + 152) = v12;
  *(a2 + 168) = v13;
  *(a2 + 176) = v12;
  return result;
}

uint64_t sub_23DCF5984()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4C8, &qword_23DD47390);
  sub_23DCEF9F0(&qword_27E30E4D0, &qword_27E30E4C8, &qword_23DD47390, MEMORY[0x277D83980]);
  sub_23DCFDCF8();
  sub_23DCFD4F8(&qword_27E30E4D8, type metadata accessor for AccountUISetting.CustomDataclass, &protocol conformance descriptor for AccountUISetting.CustomDataclass);
  return sub_23DD41FB8();
}

void sub_23DCF5AD0(uint64_t a1@<X2>, unsigned __int8 *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock;
  swift_beginAccess();
  if (*(v4 + v5))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DD416D8();

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E8, &qword_23DD44510);
    MEMORY[0x23EEFD790](v6);
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = v7;
      sub_23DD416D8();

      if (v11)
      {
        swift_beginAccess();
        v9 = *(v4 + 32);
        v10 = [v11 isEnabledForDataclass_];

        *a2 = v10;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      type metadata accessor for AccountsUIModel(0);
      sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
      sub_23DD41868();
      __break(1u);
    }
  }
}

uint64_t DataclassRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E300, &qword_23DD44180);
  MEMORY[0x28223BE20](v63);
  v3 = v47 - v2;
  v55 = v47 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E308, &qword_23DD44188);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x28223BE20](v4);
  v64 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E310, &qword_23DD44190);
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  MEMORY[0x28223BE20](v7);
  v65 = v47 - v9;
  v10 = v1[9];
  v93 = v1[8];
  v94 = v10;
  v11 = v1[11];
  v95 = v1[10];
  v96 = v11;
  v12 = v1[5];
  v89 = v1[4];
  v90 = v12;
  v13 = v1[7];
  v91 = v1[6];
  v92 = v13;
  v14 = v1[1];
  v85 = *v1;
  v86 = v14;
  v15 = v1[3];
  v87 = v1[2];
  v88 = v15;
  sub_23DCF6498(&v85, v3);
  v81 = v93;
  v82 = v94;
  v83 = v95;
  v84 = v96;
  v77 = v89;
  v78 = v90;
  v79 = v91;
  v80 = v92;
  v73 = v85;
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v97 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E318, &qword_23DD44198);
  sub_23DD41EB8();
  v16 = v72;
  v97 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  v17 = v72;
  sub_23DCFB4C0(v16);
  v19 = v18;
  v21 = v20;

  *&v73 = v19;
  *(&v73 + 1) = v21;
  v62 = sub_23DCF4570();
  v22 = sub_23DD41C48();
  v24 = v23;
  v26 = v25;
  v51 = v27;
  v97 = v89;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  sub_23DD41ED8();
  LODWORD(v50) = v74;
  v71 = &v85;
  v70 = &v85;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E330, &qword_23DD441B0);
  OpaqueTypeConformance2 = sub_23DCFB9B4();
  v54 = sub_23DCFDC7C(&qword_27E30E398, &qword_27E30E330, &qword_23DD441B0, sub_23DCFBCB4);
  v28 = v55;
  sub_23DD41D78();

  sub_23DCEF904(v22, v24, v26 & 1);

  sub_23DCEFA38(v28, &qword_27E30E300, &qword_23DD44180);
  v97 = v93;
  v98 = v94;
  v73 = v93;
  *&v74 = v94;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
  sub_23DD41EB8();
  v73 = v72;
  v29 = sub_23DD41C48();
  v49 = v30;
  v50 = v29;
  v32 = v31;
  v48 = v33;
  v72 = v90;
  sub_23DD41ED8();
  v47[3] = v74;
  v69 = &v85;
  v68 = &v85;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  *&v73 = v63;
  *(&v73 + 1) = v52;
  v34 = MEMORY[0x277CE0BD8];
  *&v74 = MEMORY[0x277CE0BD8];
  *(&v74 + 1) = OpaqueTypeConformance2;
  *&v75 = v54;
  *(&v75 + 1) = MEMORY[0x277CE0BC8];
  v63 = MEMORY[0x277CDEDF0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
  v35 = v56;
  v36 = v64;
  v38 = v49;
  v37 = v50;
  sub_23DD41D78();

  sub_23DCEF904(v37, v38, v32 & 1);

  (*(v57 + 8))(v36, v35);
  v73 = v97;
  *&v74 = v98;
  sub_23DD41EB8();
  v73 = v72;
  v64 = sub_23DD41C48();
  v62 = v39;
  LOBYTE(v38) = v40;
  v57 = v41;
  v72 = v91;
  sub_23DD41ED8();
  LODWORD(v61) = v74;
  v67 = &v85;
  v66 = &v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D8, &qword_23DD44200);
  *&v73 = v35;
  *(&v73 + 1) = v51;
  *&v74 = v34;
  *(&v74 + 1) = OpaqueTypeConformance2;
  *&v75 = v54;
  *(&v75 + 1) = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_23DCEF9F0(&qword_27E30E3E0, &qword_27E30E3D8, &qword_23DD44200, MEMORY[0x277CE14C0]);
  v42 = v58;
  v44 = v64;
  v43 = v65;
  v45 = v62;
  sub_23DD41D78();

  sub_23DCEF904(v44, v45, v38 & 1);

  return (*(v59 + 8))(v43, v42);
}

uint64_t sub_23DCF6498@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E470, &qword_23DD444C0);
  MEMORY[0x28223BE20](v4);
  v6 = (v52 - v5);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E368, &qword_23DD441C8);
  MEMORY[0x28223BE20](v59);
  v58 = v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E358, &qword_23DD441C0);
  v9 = MEMORY[0x28223BE20](v8);
  v56 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = v52 - v11;
  v62 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DD416D8();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E8, &qword_23DD44510);
  MEMORY[0x23EEFD790](&v61);
  v13 = v61;

  if (v13 == 1)
  {
    v53 = v8;
    v54 = v4;
    v55 = a2;
    sub_23DCEFA38(&v62, &qword_27E30E480, &qword_23DD44518);
    sub_23DD422C8();
    sub_23DCFC15C(a1, &v60);
    v14 = sub_23DD422B8();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    *(v15 + 16) = v14;
    *(v15 + 24) = v16;
    v17 = a1[9];
    *(v15 + 160) = a1[8];
    *(v15 + 176) = v17;
    v18 = a1[11];
    *(v15 + 192) = a1[10];
    *(v15 + 208) = v18;
    v19 = a1[5];
    *(v15 + 96) = a1[4];
    *(v15 + 112) = v19;
    v20 = a1[7];
    *(v15 + 128) = a1[6];
    *(v15 + 144) = v20;
    v21 = a1[1];
    *(v15 + 32) = *a1;
    *(v15 + 48) = v21;
    v22 = a1[3];
    *(v15 + 64) = a1[2];
    *(v15 + 80) = v22;
    sub_23DCFC15C(a1, &v60);
    v23 = sub_23DD422B8();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v16;
    v25 = a1[9];
    *(v24 + 160) = a1[8];
    *(v24 + 176) = v25;
    v26 = a1[11];
    *(v24 + 192) = a1[10];
    *(v24 + 208) = v26;
    v27 = a1[5];
    *(v24 + 96) = a1[4];
    *(v24 + 112) = v27;
    v28 = a1[7];
    *(v24 + 128) = a1[6];
    *(v24 + 144) = v28;
    v29 = a1[1];
    *(v24 + 32) = *a1;
    *(v24 + 48) = v29;
    v30 = a1[3];
    *(v24 + 64) = a1[2];
    *(v24 + 80) = v30;
    v31 = sub_23DD41F88();
    MEMORY[0x28223BE20](v31);
    v52[-2] = a1;
    v32 = sub_23DCFBC60();
    v33 = v58;
    v52[1] = v32;
    sub_23DD41F28();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DD416D8();

    MEMORY[0x23EEFD790](&v61, v12);
    LOBYTE(v23) = v61;

    KeyPath = swift_getKeyPath();
    v35 = swift_allocObject();
    *(v35 + 16) = (v23 & 1) == 0;
    v36 = (v33 + *(v59 + 36));
    *v36 = KeyPath;
    v36[1] = sub_23DCFD788;
    v36[2] = v35;
    v37 = *a1;
    if (*a1)
    {
      v38 = objc_opt_self();
      v39 = v37;
      v40 = [v38 sharedConnection];
      v41 = v53;
      if (v40)
      {
        v42 = v40;
        v43 = [v40 effectiveBoolValueForSetting_];

        v44 = swift_getKeyPath();
        v45 = swift_allocObject();
        *(v45 + 16) = v43 == 2;
        v46 = v56;
        sub_23DCFD790(v33, v56, &qword_27E30E368, &qword_23DD441C8);
        v47 = (v46 + *(v41 + 36));
        *v47 = v44;
        v47[1] = sub_23DCFDE68;
        v47[2] = v45;
        v48 = v46;
        v49 = v57;
        sub_23DCFD790(v48, v57, &qword_27E30E358, &qword_23DD441C0);
        sub_23DCFD8B0(v49, v6, &qword_27E30E358, &qword_23DD441C0);
        swift_storeEnumTagMultiPayload();
        sub_23DCFBAC4();
        sub_23DD41A78();
        return sub_23DCEFA38(v49, &qword_27E30E358, &qword_23DD441C0);
      }

      __break(1u);
    }

    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  else
  {
    type metadata accessor for AccountUISetting.CustomDataclass(0);
    sub_23DCFD4F8(&qword_27E30E478, type metadata accessor for AccountUISetting.CustomDataclass, &protocol conformance descriptor for AccountUISetting.CustomDataclass);
    *v6 = sub_23DD41818();
    v6[1] = v51;
    swift_storeEnumTagMultiPayload();
    sub_23DCFBAC4();
    sub_23DCFBC60();
    return sub_23DD41A78();
  }

  return result;
}

uint64_t sub_23DCF6C14@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountUISetting.CustomDataclass(0);
  sub_23DCFD4F8(&qword_27E30E478, type metadata accessor for AccountUISetting.CustomDataclass, &protocol conformance descriptor for AccountUISetting.CustomDataclass);

  result = sub_23DD41818();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23DCF6C9C(_OWORD *a1)
{
  v10[0] = a1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E318, &qword_23DD44198);
  sub_23DD41EB8();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = a1[9];
  v2[9] = a1[8];
  v2[10] = v3;
  v4 = a1[11];
  v2[11] = a1[10];
  v2[12] = v4;
  v5 = a1[5];
  v2[5] = a1[4];
  v2[6] = v5;
  v6 = a1[7];
  v2[7] = a1[6];
  v2[8] = v6;
  v7 = a1[1];
  v2[1] = *a1;
  v2[2] = v7;
  v8 = a1[3];
  v2[3] = a1[2];
  v2[4] = v8;
  sub_23DCFC15C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E0C8, &qword_23DD43728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3A8, &unk_23DD441E0);
  sub_23DCEF9F0(&qword_27E30E438, &qword_27E30E0C8, &qword_23DD43728, MEMORY[0x277D83980]);
  sub_23DCFD4F8(&qword_27E30E440, type metadata accessor for ACDataclassActionType, &unk_23DD43C68);
  sub_23DCFBCB4();
  return sub_23DD41FA8();
}

uint64_t sub_23DCF6E48@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E448, &qword_23DD44490);
  MEMORY[0x28223BE20](v5);
  v56 = &v54 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3C8, &unk_23DD441F0);
  MEMORY[0x28223BE20](v57);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E450, &qword_23DD44498);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  v19 = *a1;
  if ([v19 isDestructive])
  {
    sub_23DCF1E88();
    v60 = v20;
    v61 = v21;
    sub_23DD41738();
    v22 = sub_23DD41758();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    v23 = swift_allocObject();
    v24 = a2[9];
    *(v23 + 144) = a2[8];
    *(v23 + 160) = v24;
    v25 = a2[11];
    *(v23 + 176) = a2[10];
    *(v23 + 192) = v25;
    v26 = a2[5];
    *(v23 + 80) = a2[4];
    *(v23 + 96) = v26;
    v27 = a2[7];
    *(v23 + 112) = a2[6];
    *(v23 + 128) = v27;
    v28 = a2[1];
    *(v23 + 16) = *a2;
    *(v23 + 32) = v28;
    v29 = a2[3];
    *(v23 + 48) = a2[2];
    *(v23 + 64) = v29;
    *(v23 + 208) = v19;
    sub_23DCFC15C(a2, v59);
    sub_23DCF4570();
    v30 = v19;
    sub_23DD41F08();
    (*(v16 + 16))(v11, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
    sub_23DCFBD6C();
    sub_23DD41A78();
    return (*(v16 + 8))(v18, v15);
  }

  else
  {
    v55 = v8;
    v32 = [v19 type];
    sub_23DCF1E88();
    v60 = v33;
    v61 = v34;
    if (v32)
    {
      v35 = swift_allocObject();
      v36 = a2[9];
      *(v35 + 144) = a2[8];
      *(v35 + 160) = v36;
      v37 = a2[11];
      *(v35 + 176) = a2[10];
      *(v35 + 192) = v37;
      v38 = a2[5];
      *(v35 + 80) = a2[4];
      *(v35 + 96) = v38;
      v39 = a2[7];
      *(v35 + 112) = a2[6];
      *(v35 + 128) = v39;
      v40 = a2[1];
      *(v35 + 16) = *a2;
      *(v35 + 32) = v40;
      v41 = a2[3];
      *(v35 + 48) = a2[2];
      *(v35 + 64) = v41;
      *(v35 + 208) = v19;
      sub_23DCFC15C(a2, v59);
      sub_23DCF4570();
      v42 = v19;
      sub_23DD41F18();
    }

    else
    {
      sub_23DD41748();
      v43 = sub_23DD41758();
      (*(*(v43 - 8) + 56))(v14, 0, 1, v43);
      v44 = swift_allocObject();
      v45 = a2[9];
      *(v44 + 144) = a2[8];
      *(v44 + 160) = v45;
      v46 = a2[11];
      *(v44 + 176) = a2[10];
      *(v44 + 192) = v46;
      v47 = a2[5];
      *(v44 + 80) = a2[4];
      *(v44 + 96) = v47;
      v48 = a2[7];
      *(v44 + 112) = a2[6];
      *(v44 + 128) = v48;
      v49 = a2[1];
      *(v44 + 16) = *a2;
      *(v44 + 32) = v49;
      v50 = a2[3];
      *(v44 + 48) = a2[2];
      *(v44 + 64) = v50;
      *(v44 + 208) = v19;
      sub_23DCFC15C(a2, v59);
      sub_23DCF4570();
      v51 = v19;
      sub_23DD41F08();
    }

    v52 = v11;
    (*(v16 + 16))(v56, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
    v53 = v55;
    sub_23DD41A78();
    (*(v16 + 8))(v18, v15);
    sub_23DCFD8B0(v53, v52, &qword_27E30E3C8, &unk_23DD441F0);
    swift_storeEnumTagMultiPayload();
    sub_23DCFBD6C();
    sub_23DD41A78();
    return sub_23DCEFA38(v53, &qword_27E30E3C8, &unk_23DD441F0);
  }
}

void sub_23DCF74DC(void *a1)
{
  v3 = sub_23DD41658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[9];
  v47 = v1[8];
  v48 = v7;
  v8 = v1[11];
  v49 = v1[10];
  v50 = v8;
  v9 = v1[5];
  v43 = v1[4];
  v44 = v9;
  v10 = v1[7];
  v45 = v1[6];
  v46 = v10;
  v11 = v1[1];
  v39 = *v1;
  v40 = v11;
  v12 = v1[3];
  v41 = v1[2];
  v42 = v12;
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_2814FD168);
  swift_beginAccess();
  (*(v4 + 16))(v6, v13, v3);
  v14 = a1;
  v15 = sub_23DD41638();
  v16 = sub_23DD42368();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = [v14 type];

    _os_log_impl(&dword_23DCDB000, v15, v16, "taking action: %ld", v17, 0xCu);
    MEMORY[0x23EEFE6D0](v17, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  (*(v4 + 8))(v6, v3);
  if (![v14 type])
  {
    v37[0] = v41;
    v38[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
    sub_23DD41EC8();
    goto LABEL_11;
  }

  v37[0] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  v18 = v38[0];
  if (!v38[0])
  {
LABEL_11:
    v37[0] = v46;
    LOBYTE(v38[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
    sub_23DD41EC8();
    return;
  }

  if (v39)
  {
    v19 = v39;
    v20 = sub_23DCE628C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E458, &qword_23DD444A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DD43570;
    v22 = *(&v40 + 1);
    swift_beginAccess();
    v23 = *(v22 + 32);
    *(inited + 32) = v23;
    *(inited + 40) = v14;
    v24 = v14;
    v25 = v18;
    v26 = v23;
    sub_23DD29700(inited);
    swift_setDeallocating();
    sub_23DCEFA38(inited + 32, &qword_27E30E460, &qword_23DD444A8);
    type metadata accessor for Dataclass(0);
    sub_23DCEFAE8(0, &qword_27E30E208, 0x277CB8F70);
    sub_23DCFD4F8(&qword_27E30E0D0, type metadata accessor for Dataclass, &unk_23DD43D40);
    v27 = sub_23DD42108();

    v37[0] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
    sub_23DD41EB8();
    v28 = LOBYTE(v38[0]);
    v29 = swift_allocObject();
    v30 = v48;
    v29[9] = v47;
    v29[10] = v30;
    v31 = v50;
    v29[11] = v49;
    v29[12] = v31;
    v32 = v44;
    v29[5] = v43;
    v29[6] = v32;
    v33 = v46;
    v29[7] = v45;
    v29[8] = v33;
    v34 = v40;
    v29[1] = v39;
    v29[2] = v34;
    v35 = v42;
    v29[3] = v41;
    v29[4] = v35;
    v38[4] = sub_23DCFD618;
    v38[5] = v29;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 1107296256;
    v38[2] = sub_23DD2CE8C;
    v38[3] = &block_descriptor_0;
    v36 = _Block_copy(v38);
    sub_23DCFC15C(&v39, v37);

    [v20 saveAccount:v25 withDataclassActions:v27 doVerify:v28 completion:v36];

    _Block_release(v36);
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DCF7A50@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E318, &qword_23DD44198);
  sub_23DD41EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  sub_23DCFC19C(v7);

  sub_23DCF4570();
  result = sub_23DD41C48();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_23DCF7B68(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  v5 = sub_23DD42138();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  if (v6)
  {
    v7 = sub_23DD42138();
    v8 = sub_23DD42138();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    v10 = sub_23DD42178();
    v12 = v11;

    v22 = v10;
    v23 = v12;
    sub_23DD41748();
    v13 = sub_23DD41758();
    (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
    v14 = swift_allocObject();
    v15 = a1[9];
    v14[9] = a1[8];
    v14[10] = v15;
    v16 = a1[11];
    v14[11] = a1[10];
    v14[12] = v16;
    v17 = a1[5];
    v14[5] = a1[4];
    v14[6] = v17;
    v18 = a1[7];
    v14[7] = a1[6];
    v14[8] = v18;
    v19 = a1[1];
    v14[1] = *a1;
    v14[2] = v19;
    v20 = a1[3];
    v14[3] = a1[2];
    v14[4] = v20;
    sub_23DCFC15C(a1, v21);
    sub_23DCF4570();
    sub_23DD41F08();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DCF7D8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  sub_23DD41EC8();
  return sub_23DD41EC8();
}

void sub_23DCF7E0C(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v48 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v48 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v52 = &v48 - v14;
  v15 = sub_23DD42138();
  v16 = objc_opt_self();
  v17 = [v16 bundleWithIdentifier_];

  if (v17)
  {
    v18 = sub_23DD42138();
    v19 = sub_23DD42138();
    v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

    sub_23DD42178();
    v21 = sub_23DD42148();
    v23 = v22;

    v53[24] = v21;
    v53[25] = v23;
    v24 = swift_allocObject();
    v25 = a1[9];
    v24[9] = a1[8];
    v24[10] = v25;
    v26 = a1[11];
    v24[11] = a1[10];
    v24[12] = v26;
    v27 = a1[5];
    v24[5] = a1[4];
    v24[6] = v27;
    v28 = a1[7];
    v24[7] = a1[6];
    v24[8] = v28;
    v29 = a1[1];
    v24[1] = *a1;
    v24[2] = v29;
    v30 = a1[3];
    v24[3] = a1[2];
    v24[4] = v30;
    sub_23DCFC15C(a1, v53);
    sub_23DCF4570();
    v31 = v52;
    sub_23DD41F18();
    v32 = sub_23DD42138();
    v33 = [v16 bundleWithIdentifier_];

    if (v33)
    {
      v34 = sub_23DD42138();
      v35 = sub_23DD42138();
      v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

      sub_23DD42178();
      v37 = sub_23DD42148();
      v39 = v38;

      v53[0] = v37;
      v53[1] = v39;
      sub_23DD41748();
      v40 = sub_23DD41758();
      (*(*(v40 - 8) + 56))(v5, 0, 1, v40);
      v41 = v48;
      sub_23DD41F08();
      v42 = *(v7 + 16);
      v43 = v49;
      v42(v49, v31, v6);
      v44 = v50;
      v42(v50, v41, v6);
      v45 = v51;
      v42(v51, v43, v6);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E418, &qword_23DD44400);
      v42(&v45[*(v46 + 48)], v44, v6);
      v47 = *(v7 + 8);
      v47(v41, v6);
      v47(v31, v6);
      v47(v44, v6);
      v47(v43, v6);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23DCF8394(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_23DD416D8();

    if (v3)
    {
      if (qword_2814FD150 != -1)
      {
        swift_once();
      }
    }
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DCF84AC@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
  sub_23DD41EB8();
  sub_23DCF4570();
  result = sub_23DD41C48();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_23DCF8534(char a1, uint64_t a2)
{
  v5 = v2[9];
  v101 = v2[8];
  v102[0] = v5;
  v6 = v2[11];
  v102[1] = v2[10];
  v103 = v6;
  v7 = v2[5];
  v97 = v2[4];
  v98 = v7;
  v8 = v2[7];
  v99 = v2[6];
  v100 = v8;
  v9 = v2[1];
  v93 = *v2;
  v94 = v9;
  v10 = v2[3];
  v95 = v2[2];
  v96 = v10;
  if ((a1 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v93)
  {
LABEL_39:
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v93;
  sub_23DD416D8();

  v12 = v81;
  if (!v81)
  {
    goto LABEL_8;
  }

  v13 = [v81 accountType];

  if (!v13)
  {
    __break(1u);
    goto LABEL_37;
  }

  v14 = [v13 identifier];

  if (!v14)
  {
    v12 = 0;
LABEL_8:
    v16 = 0xE000000000000000;
    goto LABEL_9;
  }

  v12 = sub_23DD42178();
  v16 = v15;

LABEL_9:
  if (v12 == sub_23DD42178() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_23DD42648();

    if ((v18 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v11;
  sub_23DD416D8();

  if (!v78)
  {
    v81 = 0u;
    v82 = 0u;
LABEL_24:
    sub_23DCEFA38(&v81, &qword_27E30E1F0, &unk_23DD43F80);
    goto LABEL_25;
  }

  v20 = [v78 accountPropertyForKey_];

  if (v20)
  {
    sub_23DD424A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
  }

  v81 = v78;
  v82 = v79;
  if (!*(&v79 + 1))
  {
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E488, &qword_23DD445A0);
  if (swift_dynamicCast())
  {
    v21 = v78;
    v22 = *(&v94 + 1);
    v23 = swift_beginAccess();
    *&v81 = v22[4];
    MEMORY[0x28223BE20](v23);
    v74[2] = &v81;
    v25 = v24;
    v26 = sub_23DCEA6FC(sub_23DCFD890, v74, v21);

    if ((v26 & 1) == 0)
    {
      v27 = sub_23DD42138();
      v28 = objc_opt_self();
      v29 = [v28 bundleWithIdentifier_];

      if (v29)
      {
        v30 = sub_23DD42138();
        v31 = sub_23DD42138();
        v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

        sub_23DD42178();
        v33 = sub_23DD42148();
        v35 = v34;

        v81 = v101;
        *&v82 = *&v102[0];
        *&v78 = v33;
        *(&v78 + 1) = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
        sub_23DD41EC8();
        v36 = sub_23DD42138();
        v37 = [v28 bundleWithIdentifier_];

        if (v37)
        {
          v38 = sub_23DD42138();
          v39 = sub_23DD42138();
          v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

          sub_23DD42178();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_23DD43570;
          swift_beginAccess();
          v43 = v22[5];
          v42 = v22[6];
          *(v41 + 56) = MEMORY[0x277D837D0];
          *(v41 + 64) = sub_23DCFD428();
          *(v41 + 32) = v43;
          *(v41 + 40) = v42;

          v44 = sub_23DD42148();
          v46 = v45;

          v78 = *(v102 + 8);
          *&v79 = *(&v102[1] + 1);
          *&v80 = v44;
          *(&v80 + 1) = v46;
          sub_23DD41EC8();
          v78 = v99;
          v80 = v99;
          v104[0] = *(&v99 + 1);
          sub_23DCFD8B0(v104, &v76, &qword_27E30E490, &qword_23DD445A8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
          sub_23DD41EB8();
          v76 = v78;
          v75 = (v77 & 1) == 0;
          sub_23DD41EC8();
          sub_23DCEFA38(&v78, &qword_27E30E328, &unk_23DD45C20);
          return;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

LABEL_25:
  v47 = *(&v94 + 1) + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock;
  swift_beginAccess();
  v48 = *v47;
  if (*v47)
  {
    v49 = *(v47 + 8);
    v50 = swift_allocObject();
    v51 = v102[0];
    *(v50 + 144) = v101;
    *(v50 + 160) = v51;
    v52 = v103;
    *(v50 + 176) = v102[1];
    *(v50 + 192) = v52;
    v53 = v98;
    *(v50 + 80) = v97;
    *(v50 + 96) = v53;
    v54 = v100;
    *(v50 + 112) = v99;
    *(v50 + 128) = v54;
    v55 = v94;
    *(v50 + 16) = v93;
    *(v50 + 32) = v55;
    v56 = v96;
    *(v50 + 48) = v95;
    *(v50 + 64) = v56;
    *(v50 + 208) = a1 & 1;
    sub_23DCDFF40(v48, v49);
    sub_23DCFC15C(&v93, &v81);
    v48(a2, a1 & 1, sub_23DCFD84C, v50);

    sub_23DCF5098(v48, v49);
    return;
  }

  v57 = v93;
  if (!v93)
  {
    goto LABEL_39;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v57;
  sub_23DD416D8();

  v59 = v81;
  if (!v81)
  {
LABEL_35:
    v89 = v101;
    v90 = v102[0];
    v91 = v102[1];
    v92 = v103;
    v85 = v97;
    v86 = v98;
    v87 = v99;
    v88 = v100;
    v81 = v93;
    v82 = v94;
    v83 = v95;
    v84 = v96;
    sub_23DCF8FA8(a1 & 1);
    return;
  }

  if (ACAccount.appearsActive()() || (a1 & 1) == 0)
  {

    goto LABEL_35;
  }

  if (qword_2814FD150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v60 = qword_2814FD158;
  v61 = swift_allocObject();
  v62 = v102[0];
  *(v61 + 144) = v101;
  *(v61 + 160) = v62;
  v63 = v103;
  *(v61 + 176) = v102[1];
  *(v61 + 192) = v63;
  v64 = v98;
  *(v61 + 80) = v97;
  *(v61 + 96) = v64;
  v65 = v100;
  *(v61 + 112) = v99;
  *(v61 + 128) = v65;
  v66 = v94;
  *(v61 + 16) = v93;
  *(v61 + 32) = v66;
  v67 = v96;
  *(v61 + 48) = v95;
  *(v61 + 64) = v67;
  *(v61 + 208) = 1;
  sub_23DCFC15C(&v93, &v81);
  v68 = v60;
  v69 = sub_23DCE628C();
  v70 = swift_allocObject();
  v70[2] = v59;
  v70[3] = v68;
  v70[4] = sub_23DCF9530;
  v70[5] = 0;
  v70[6] = sub_23DCFD7F8;
  v70[7] = v61;
  *&v83 = sub_23DCFD83C;
  *(&v83 + 1) = v70;
  *&v81 = MEMORY[0x277D85DD0];
  *(&v81 + 1) = 1107296256;
  *&v82 = sub_23DCF50A8;
  *(&v82 + 1) = &block_descriptor_81;
  v71 = _Block_copy(&v81);
  v72 = v68;
  v73 = v59;

  [v69 verifyCredentialsForAccount:v73 saveWhenAuthorized:0 withHandler:v71];
  _Block_release(v71);
}

void sub_23DCF8FA8(int a1)
{
  v35 = a1;
  v2 = sub_23DD42068();
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DD42098();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23DD42078();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[9];
  v49 = v1[8];
  v50 = v12;
  v13 = v1[11];
  v51 = v1[10];
  v52 = v13;
  v14 = v1[5];
  v45 = v1[4];
  v46 = v14;
  v15 = v1[7];
  v47 = v1[6];
  v48 = v15;
  v16 = v1[1];
  v41 = *v1;
  v42 = v16;
  v17 = v1[3];
  v43 = v1[2];
  v44 = v17;
  v18 = v41;
  if (v41)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    sub_23DD416D8();

    v20 = v40[0];
    if (v40[0])
    {
      [v40[0] copy];

      sub_23DD424A8();
      swift_unknownObjectRelease();
      sub_23DCEFAE8(0, &qword_2814FCC50, 0x277CB8F30);
      if (swift_dynamicCast())
      {
        v21 = v40[0];
        v39[0] = v44;
        v22 = v35;
        LOBYTE(v40[0]) = (v35 & 1) == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
        sub_23DD41EC8();
        sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
        (*(v9 + 104))(v11, *MEMORY[0x277D851B8], v8);
        v34 = sub_23DD423A8();
        (*(v9 + 8))(v11, v8);
        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        *(v23 + 24) = v22 & 1;
        v24 = v50;
        *(v23 + 160) = v49;
        *(v23 + 176) = v24;
        v25 = v52;
        *(v23 + 192) = v51;
        *(v23 + 208) = v25;
        v26 = v46;
        *(v23 + 96) = v45;
        *(v23 + 112) = v26;
        v27 = v48;
        *(v23 + 128) = v47;
        *(v23 + 144) = v27;
        v28 = v42;
        *(v23 + 32) = v41;
        *(v23 + 48) = v28;
        v29 = v44;
        *(v23 + 64) = v43;
        *(v23 + 80) = v29;
        v40[4] = sub_23DCFD91C;
        v40[5] = v23;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 1107296256;
        v40[2] = sub_23DCE4C84;
        v40[3] = &block_descriptor_102;
        v30 = _Block_copy(v40);
        v31 = v21;
        sub_23DCFC15C(&v41, v39);
        sub_23DD42088();
        *&v39[0] = MEMORY[0x277D84F90];
        sub_23DCFD4F8(&qword_2814FCCA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
        sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0, MEMORY[0x277D83970]);
        sub_23DD424B8();
        v32 = v34;
        MEMORY[0x23EEFDBD0](0, v7, v4, v30);
        _Block_release(v30);

        (*(v38 + 8))(v4, v2);
        (*(v36 + 8))(v7, v37);
      }
    }
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DCF9530(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_2814FD150 == -1)
  {
    return a2(1);
  }

  swift_once();
  return a2(1);
}

void sub_23DCF9594(char a1, _OWORD *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_23DD42068();
  v36 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23DD42098();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a2[9];
    v37[8] = a2[8];
    v37[9] = v19;
    v20 = a2[11];
    v37[10] = a2[10];
    v37[11] = v20;
    v21 = a2[5];
    v37[4] = a2[4];
    v22 = a2[6];
    v23 = a2[7];
    v37[5] = v21;
    v37[6] = v22;
    v37[7] = v23;
    v24 = a2[1];
    v37[0] = *a2;
    v37[1] = v24;
    v25 = a2[3];
    v37[2] = a2[2];
    v37[3] = v25;
    sub_23DCF8FA8(a3 & 1);
  }

  else
  {
    v35 = v16;
    sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
    v26 = sub_23DD42388();
    v27 = swift_allocObject();
    v28 = a2[9];
    v27[9] = a2[8];
    v27[10] = v28;
    v29 = a2[11];
    v27[11] = a2[10];
    v27[12] = v29;
    v30 = a2[5];
    v27[5] = a2[4];
    v27[6] = v30;
    v31 = a2[7];
    v27[7] = a2[6];
    v27[8] = v31;
    v32 = a2[1];
    v27[1] = *a2;
    v27[2] = v32;
    v33 = a2[3];
    v27[3] = a2[2];
    v27[4] = v33;
    aBlock[4] = a5;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DCE4C84;
    aBlock[3] = a6;
    v34 = _Block_copy(aBlock);
    sub_23DCFC15C(a2, v37);

    sub_23DD42088();
    *&v37[0] = MEMORY[0x277D84F90];
    sub_23DCFD4F8(&qword_2814FCCA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
    sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0, MEMORY[0x277D83970]);
    sub_23DD424B8();
    MEMORY[0x23EEFDBD0](0, v18, v13, v34);
    _Block_release(v34);

    (*(v36 + 8))(v13, v11);
    (*(v15 + 8))(v18, v35);
  }
}

void sub_23DCF992C(void *a1, char a2, uint64_t a3)
{
  v6 = sub_23DD41658();
  v89 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103[0] = *(a3 + 16);
  v9 = *(&v103[0] + 1);
  swift_beginAccess();
  v10 = *(v9 + 32);

  [a1 setEnabled:a2 & 1 forDataclass:v10];
  if (!*a3)
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DCFD4F8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  v11 = *a3;
  v12 = sub_23DCE628C();

  v90 = a1;
  v13 = [v12 dataclassActionsForAccountSave_];

  if (!v13)
  {
    sub_23DCEFA38(v103, &qword_27E30E480, &qword_23DD44518);
    goto LABEL_23;
  }

  v14 = v6;
  type metadata accessor for Dataclass(0);
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E0C8, &qword_23DD43728);
  sub_23DCFD4F8(&qword_27E30E0D0, type metadata accessor for Dataclass, &unk_23DD43D40);
  v88 = v16;
  v17 = sub_23DD42118();

  v18 = *(v9 + 32);
  if (!*(v17 + 16))
  {
    v30 = v18;
    sub_23DCEFA38(v103, &qword_27E30E480, &qword_23DD44518);

    goto LABEL_23;
  }

  v19 = v18;
  v20 = sub_23DCEA210(v19);
  if ((v21 & 1) == 0)
  {

    sub_23DCEFA38(v103, &qword_27E30E480, &qword_23DD44518);

LABEL_22:

LABEL_23:
    v31 = v11;
    v32 = sub_23DCE628C();

    v95 = *(a3 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
    sub_23DD41EB8();
    v33 = aBlock;
    v34 = swift_allocObject();
    v35 = *(a3 + 144);
    v34[9] = *(a3 + 128);
    v34[10] = v35;
    v36 = *(a3 + 176);
    v34[11] = *(a3 + 160);
    v34[12] = v36;
    v37 = *(a3 + 80);
    v34[5] = *(a3 + 64);
    v34[6] = v37;
    v38 = *(a3 + 112);
    v34[7] = *(a3 + 96);
    v34[8] = v38;
    v39 = *(a3 + 16);
    v34[1] = *a3;
    v34[2] = v39;
    v40 = *(a3 + 48);
    v34[3] = *(a3 + 32);
    v34[4] = v40;
    v100 = sub_23DCFD92C;
    v101 = v34;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v98 = sub_23DD2CE8C;
    v99 = &block_descriptor_108;
    v41 = _Block_copy(&aBlock);
    sub_23DCFC15C(a3, &v95);

    [v32 saveAccount:v90 withDataclassActions:0 doVerify:v33 completion:v41];

    v42 = v41;
LABEL_24:
    _Block_release(v42);
    return;
  }

  v22 = *(*(v17 + 56) + 8 * v20);

  if (v22 >> 62)
  {
    v23 = sub_23DD425C8();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v14;
  if (v23 <= 0)
  {
    sub_23DCEFA38(v103, &qword_27E30E480, &qword_23DD44518);

    goto LABEL_22;
  }

  if (v23 != 1)
  {
    sub_23DCEFA38(v103, &qword_27E30E480, &qword_23DD44518);

    v95 = *(a3 + 176);
    *&aBlock = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E318, &qword_23DD44198);
    sub_23DD41EC8();
    v95 = *(a3 + 32);
    *&aBlock = v90;
    v43 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
    sub_23DD41EC8();
    v95 = *(a3 + 64);
    aBlock = *(a3 + 64);
    *&v92[0] = *(&v95 + 1);
    sub_23DCFD8B0(v92, &v94, &qword_27E30E490, &qword_23DD445A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
    sub_23DD41EB8();
    v94 = v95;
    v93 = (v102 & 1) == 0;
    sub_23DD41EC8();
LABEL_26:
    sub_23DCEFA38(&v95, &qword_27E30E328, &unk_23DD45C20);
    return;
  }

  v25 = v8;
  v87 = v24;
  if (!(v22 >> 62))
  {
    v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    p_aBlock = &aBlock;
    if (v26)
    {
      goto LABEL_11;
    }

LABEL_28:
    sub_23DCEFA38(v103, &qword_27E30E480, &qword_23DD44518);
    goto LABEL_29;
  }

  v26 = sub_23DD425C8();
  p_aBlock = &aBlock;
  if (!v26)
  {
    goto LABEL_28;
  }

LABEL_11:
  v28 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    goto LABEL_47;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_48;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v28 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_35;
  }

  for (i = *(v22 + 8 * v28 + 32); ; i = MEMORY[0x23EEFDD80]())
  {
    p_aBlock = i;
    if (![i type])
    {
      break;
    }

    sub_23DCEFA38(v103, &qword_27E30E480, &qword_23DD44518);

LABEL_29:
    v25 = v11;

    v11 = sub_23DCE628C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E458, &qword_23DD444A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DD43570;
    v45 = *(v9 + 32);
    *(inited + 32) = v45;
    v46 = inited + 32;
    if (!v26)
    {
      __break(1u);
LABEL_45:
      v85 = v45;
      v49 = MEMORY[0x23EEFDD80](0, v22);
LABEL_33:
      v50 = v49;

      v25[5] = v50;
      sub_23DD29700(v25);
      swift_setDeallocating();
      sub_23DCEFA38(v46, &qword_27E30E460, &qword_23DD444A8);
      sub_23DCEFAE8(0, &qword_27E30E208, 0x277CB8F70);
      v51 = sub_23DD42108();

      v95 = *(a3 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
      sub_23DD41EB8();
      v52 = aBlock;
      v53 = swift_allocObject();
      v54 = *(a3 + 144);
      v53[9] = *(a3 + 128);
      v53[10] = v54;
      v55 = *(a3 + 176);
      v53[11] = *(a3 + 160);
      v53[12] = v55;
      v56 = *(a3 + 80);
      v53[5] = *(a3 + 64);
      v53[6] = v56;
      v57 = *(a3 + 112);
      v53[7] = *(a3 + 96);
      v53[8] = v57;
      v58 = *(a3 + 16);
      v53[1] = *a3;
      v53[2] = v58;
      v59 = *(a3 + 48);
      v53[3] = *(a3 + 32);
      v53[4] = v59;
      v100 = sub_23DCFD96C;
      v101 = v53;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v98 = sub_23DD2CE8C;
      v99 = &block_descriptor_114;
      v60 = _Block_copy(&aBlock);
      sub_23DCFC15C(a3, &v95);

      [v11 saveAccount:v90 withDataclassActions:v51 doVerify:v52 completion:v60];

      v42 = v60;
      goto LABEL_24;
    }

    v25 = inited;
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_45;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v47 = *(v22 + 32);
      v48 = v45;
      v49 = v47;
      goto LABEL_33;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  if (qword_2814FD160 != -1)
  {
    goto LABEL_51;
  }

LABEL_35:
  v61 = v87;
  v62 = __swift_project_value_buffer(v87, qword_2814FD168);
  swift_beginAccess();
  v63 = v89;
  (*(v89 + 16))(v25, v62, v61);
  v64 = p_aBlock;
  sub_23DCFC15C(a3, &v95);
  v65 = sub_23DD41638();
  v66 = sub_23DD42368();
  sub_23DCFD9AC(a3);
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    LODWORD(v88) = v66;
    v68 = v67;
    v69 = swift_slowAlloc();
    *&v95 = v69;
    *v68 = 134218242;
    *(v68 + 4) = [v64 type];

    *(v68 + 12) = 2080;
    *&v94 = v9;
    type metadata accessor for AccountUISetting.CustomDataclass(0);
    v70 = sub_23DD42188();
    v72 = sub_23DD2731C(v70, v71, &v95);
    v90 = v64;
    v73 = v63;
    v74 = v72;

    *(v68 + 14) = v74;
    _os_log_impl(&dword_23DCDB000, v65, v88, "Setting action %ld for dataclass %s", v68, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x23EEFE6D0](v69, -1, -1);
    MEMORY[0x23EEFE6D0](v68, -1, -1);

    (*(v73 + 8))(v25, v61);
    v64 = v90;
  }

  else
  {
    sub_23DCEFA38(v103, &qword_27E30E480, &qword_23DD44518);

    (*(v63 + 8))(v25, v61);
  }

  v75 = [v64 undoAlertTitle];
  if (v75)
  {
    v76 = v75;
    v77 = sub_23DD42178();
    v79 = v78;

    v80 = [v64 undoAlertMessage];
    if (v80)
    {
      v81 = v80;
      v82 = sub_23DD42178();
      v84 = v83;

      v95 = *(a3 + 128);
      v96 = *(a3 + 144);
      *&v94 = v77;
      *(&v94 + 1) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
      sub_23DD41EC8();
      v95 = *(a3 + 152);
      v96 = *(a3 + 168);
      *&v94 = v82;
      *(&v94 + 1) = v84;
      sub_23DD41EC8();
      v94 = *(a3 + 80);
      v95 = v94;
      v102 = *(&v94 + 1);
      sub_23DCFD8B0(&v102, v92, &qword_27E30E490, &qword_23DD445A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
      sub_23DD41EB8();
      v92[0] = v95;
      v91 = !v93;
      sub_23DD41EC8();

      goto LABEL_26;
    }
  }

  else
  {
  }
}

uint64_t sub_23DCFA538(int a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a4;
  v44 = a5;
  v42 = a1;
  v9 = sub_23DD42068();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_23DD42098();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DD41658();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_2814FD168);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = a2;
  v18 = sub_23DD41638();
  v19 = sub_23DD42368();

  if (os_log_type_enabled(v18, v19))
  {
    v41 = a6;
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v20 = 136315138;
    if (v42)
    {
      v21 = 0xEB00000000796C6CLL;
      v22 = 0x7566736563637573;
    }

    else
    {
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      sub_23DD42538();

      strcpy(v52, "with an error ");
      HIBYTE(v52[1]) = -18;
      v51 = a2;
      v23 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E468, &qword_23DD444B8);
      v24 = sub_23DD42188();
      MEMORY[0x23EEFDA30](v24);

      v22 = v52[0];
      v21 = v52[1];
    }

    v25 = sub_23DD2731C(v22, v21, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_23DCDB000, v18, v19, "save completed %s", v20, 0xCu);
    v26 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x23EEFE6D0](v26, -1, -1);
    MEMORY[0x23EEFE6D0](v20, -1, -1);

    (*(v13 + 8))(v15, v12);
    a6 = v41;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
  v27 = sub_23DD42388();
  v28 = swift_allocObject();
  v29 = a3[9];
  v28[9] = a3[8];
  v28[10] = v29;
  v30 = a3[11];
  v28[11] = a3[10];
  v28[12] = v30;
  v31 = a3[5];
  v28[5] = a3[4];
  v28[6] = v31;
  v32 = a3[7];
  v28[7] = a3[6];
  v28[8] = v32;
  v33 = a3[1];
  v28[1] = *a3;
  v28[2] = v33;
  v34 = a3[3];
  v28[3] = a3[2];
  v28[4] = v34;
  aBlock[4] = v44;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DCE4C84;
  aBlock[3] = a6;
  v35 = _Block_copy(aBlock);
  sub_23DCFC15C(a3, v52);

  v36 = v45;
  sub_23DD42088();
  v52[0] = MEMORY[0x277D84F90];
  sub_23DCFD4F8(&qword_2814FCCA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
  sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0, MEMORY[0x277D83970]);
  v37 = v47;
  v38 = v50;
  sub_23DD424B8();
  MEMORY[0x23EEFDBD0](0, v36, v37, v35);
  _Block_release(v35);

  (*(v49 + 8))(v37, v38);
  return (*(v46 + 8))(v36, v48);
}

void sub_23DCFAB1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *(v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  if (!v37)
  {
    goto LABEL_8;
  }

  v11 = [v37 accountType];

  if (!v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = [v11 identifier];

  if (!v12)
  {
LABEL_8:
    sub_23DD42178();
    goto LABEL_9;
  }

  v13 = sub_23DD42178();
  v15 = v14;

  v16 = sub_23DD42178();
  if (!v15)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v13 != v16 || v15 != v17)
  {
    v25 = sub_23DD42648();

    if (v25)
    {
      goto LABEL_14;
    }

LABEL_10:
    v18 = sub_23DD42138();
    v19 = [objc_opt_self() bundleWithIdentifier_];

    if (v19)
    {

      MEMORY[0x23EEFDA30](0x54414D524F465FLL, 0xE700000000000000);
      v20 = sub_23DD42138();

      v21 = [v19 localizedStringForKey:v20 value:0 table:0];

      sub_23DD42178();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_23DD43550;
      v23 = MEMORY[0x277D837D0];
      *(v22 + 56) = MEMORY[0x277D837D0];
      v24 = sub_23DCFD428();
      *(v22 + 32) = a3;
      *(v22 + 40) = a4;
      *(v22 + 96) = v23;
      *(v22 + 104) = v24;
      *(v22 + 64) = v24;
      *(v22 + 72) = a5;
      *(v22 + 80) = a6;

LABEL_12:
      sub_23DD42148();

      return;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  swift_beginAccess();
  v26 = sub_23DD42178();
  v28 = v27;
  if (v26 == sub_23DD42178() && v28 == v29)
  {

    goto LABEL_18;
  }

  v30 = sub_23DD42648();

  if ((v30 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  v31 = sub_23DD42138();
  v32 = [objc_opt_self() bundleWithIdentifier_];

  if (v32)
  {

    MEMORY[0x23EEFDA30](0xD000000000000017, 0x800000023DD4AE20);
    v33 = sub_23DD42138();

    v34 = [v32 localizedStringForKey:v33 value:0 table:0];

    sub_23DD42178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_23DD43570;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = sub_23DCFD428();
    *(v35 + 32) = a5;
    *(v35 + 40) = a6;

    goto LABEL_12;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_23DCFAFC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_23DCF4570();

  v4 = sub_23DD41C48();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  sub_23DCFC0BC(v4, v6, v8 & 1);

  sub_23DCFC0CC(v12, v13, v14, v15);
  sub_23DCFC110(v12, v13, v14, v15);
  sub_23DCEF904(v4, v6, v8 & 1);
}

uint64_t sub_23DCFB124@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_23DD420F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E408, &qword_23DD443A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  swift_beginAccess();
  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = v12;
    sub_23DD41E38();
    (*(v5 + 104))(v7, *MEMORY[0x277D4D808], v4);
    sub_23DD41E68();

    (*(v5 + 8))(v7, v4);
    (*(v9 + 32))(a2, v11, v8);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v9 + 56))(a2, v14, 1, v8);
}

uint64_t sub_23DCFB33C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3E8, &qword_23DD44398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3F0, &qword_23DD443A0);
  sub_23DCEF9F0(&qword_27E30E3F8, &qword_27E30E3E8, &qword_23DD44398, MEMORY[0x277CE14C0]);
  sub_23DCFC020();
  return sub_23DD41E98();
}

uint64_t sub_23DCFB430(void *a1, uint64_t *a2)
{
  v2 = sub_23DD42178();
  v4 = v3;
  if (v2 == sub_23DD42178() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23DD42648();
  }

  return v7 & 1;
}

void sub_23DCFB4C0(unint64_t a1)
{
  v3 = *(v1 + 24);
  if (sub_23DCF5134(4, a1) || sub_23DCF5134(5, a1) || sub_23DCF5134(6, a1))
  {
    v4 = sub_23DD42138();
    v5 = [objc_opt_self() bundleWithIdentifier_];

    if (v5)
    {
LABEL_5:
      v6 = sub_23DD42138();
      v7 = sub_23DD42138();
      v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

      sub_23DD42178();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_23DD43570;
      swift_beginAccess();
      v11 = *(v3 + 40);
      v10 = *(v3 + 48);
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_23DCFD428();
      *(v9 + 32) = v11;
      *(v9 + 40) = v10;

      sub_23DD42148();

      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!sub_23DCF5134(3, a1) && !sub_23DCF5134(2, a1))
  {
    if (!sub_23DCF5134(8, a1))
    {
      swift_beginAccess();
      v19 = sub_23DD42178();
      v21 = v20;
      if (v19 == sub_23DD42178() && v21 == v22)
      {
      }

      else
      {
        v23 = sub_23DD42648();

        if ((v23 & 1) == 0)
        {
          return;
        }
      }
    }

    v24 = sub_23DD42138();
    v25 = [objc_opt_self() bundleWithIdentifier_];

    if (v25)
    {
      v26 = sub_23DD42138();
      v27 = sub_23DD42138();
      v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

      sub_23DD42178();
      return;
    }

    goto LABEL_27;
  }

  if (!sub_23DCF5134(3, a1))
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v12 = sub_23DD42178();
  v14 = v13;
  if (v12 == sub_23DD42178() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_23DD42648();

    if ((v17 & 1) == 0)
    {
LABEL_14:
      v18 = sub_23DD42138();
      v5 = [objc_opt_self() bundleWithIdentifier_];

      if (v5)
      {
        goto LABEL_5;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }
  }
}

unint64_t sub_23DCFB9B4()
{
  result = qword_27E30E338;
  if (!qword_27E30E338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E300, &qword_23DD44180);
    sub_23DCFBA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E338);
  }

  return result;
}

unint64_t sub_23DCFBA38()
{
  result = qword_27E30E340;
  if (!qword_27E30E340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E348, &qword_23DD441B8);
    sub_23DCFBAC4();
    sub_23DCFBC60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E340);
  }

  return result;
}

unint64_t sub_23DCFBAC4()
{
  result = qword_27E30E350;
  if (!qword_27E30E350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E358, &qword_23DD441C0);
    sub_23DCFBB7C();
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E350);
  }

  return result;
}

unint64_t sub_23DCFBB7C()
{
  result = qword_27E30E360;
  if (!qword_27E30E360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E368, &qword_23DD441C8);
    sub_23DCEF9F0(&qword_27E30E370, &qword_27E30E378, &qword_23DD441D0, MEMORY[0x277CDF068]);
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E360);
  }

  return result;
}

unint64_t sub_23DCFBC60()
{
  result = qword_27E30E390;
  if (!qword_27E30E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E390);
  }

  return result;
}

unint64_t sub_23DCFBCB4()
{
  result = qword_27E30E3A0;
  if (!qword_27E30E3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E3A8, &unk_23DD441E0);
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
    sub_23DCFBD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E3A0);
  }

  return result;
}

unint64_t sub_23DCFBD6C()
{
  result = qword_27E30E3C0;
  if (!qword_27E30E3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E3C8, &unk_23DD441F0);
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E3C0);
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_23DCFBE98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DCFBEE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DCFBF60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DCFBFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23DCFC020()
{
  result = qword_27E30E400;
  if (!qword_27E30E400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E3F0, &qword_23DD443A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E400);
  }

  return result;
}

uint64_t sub_23DCFC0BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23DCFC0CC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23DCFC0BC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23DCFC110(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23DCEF904(result, a2, a3 & 1);
  }

  return result;
}

void sub_23DCFC19C(unint64_t a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E320, &unk_23DD441A0);
  sub_23DD41EB8();
  if (!v133)
  {
    goto LABEL_5;
  }

  v8 = [v133 accountType];

  if (!v8)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v9 = [v8 identifier];

  if (v9)
  {
    v10 = sub_23DD42178();
    v12 = v11;

    v13 = v10;
  }

  else
  {
LABEL_5:
    v13 = 0;
    v12 = 0;
  }

  _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(v13, v12, v6, v7);
  v15 = v14;
  v17 = v16;

  v18 = sub_23DCF5220(8, a1);
  if (v18)
  {
    v19 = v18;
    swift_beginAccess();
    v20 = sub_23DD42178();
    v22 = v21;
    if (v20 == sub_23DD42178() && v22 == v23)
    {

      goto LABEL_16;
    }

    v33 = sub_23DD42648();

    if (v33)
    {
LABEL_16:

      v34 = sub_23DD42138();
      v35 = [objc_opt_self() bundleWithIdentifier_];

      if (v35)
      {
        v36 = sub_23DD42138();
        v37 = sub_23DD42138();
        v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

        v30 = sub_23DD42178();
        v32 = v39;

LABEL_54:
        v110 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v110 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (v110)
        {
          goto LABEL_59;
        }

        v111 = sub_23DD42138();
        v112 = [objc_opt_self() bundleWithIdentifier_];

        if (v112)
        {
          v113 = sub_23DD42138();
          v114 = sub_23DD42138();
          v115 = [v112 localizedStringForKey:v113 value:v114 table:0];

          sub_23DD42178();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
          v116 = swift_allocObject();
          *(v116 + 16) = xmmword_23DD43570;
          *(v116 + 56) = MEMORY[0x277D837D0];
          *(v116 + 64) = sub_23DCFD428();
          *(v116 + 32) = v5;
          *(v116 + 40) = v4;
          sub_23DD42148();

LABEL_59:

          return;
        }

        goto LABEL_82;
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v40 = [v19 affectedContainers];
    v132 = v5;
    if (v40)
    {
      v41 = v40;
      v42 = sub_23DD42268();
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
    }

    v43 = v42[2];
    if (v43 > 1)
    {
      if (v43 == 2)
      {
        v97 = sub_23DD42138();
        v98 = [objc_opt_self() bundleWithIdentifier_];

        if (!v98)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v99 = sub_23DD42138();
        v100 = sub_23DD42138();
        v101 = [v98 localizedStringForKey:v99 value:v100 table:0];

        sub_23DD42178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_23DD44150;
        v103 = MEMORY[0x277D837D0];
        *(v102 + 56) = MEMORY[0x277D837D0];
        v104 = sub_23DCFD428();
        *(v102 + 32) = v132;
        *(v102 + 40) = v4;
        *(v102 + 96) = v103;
        *(v102 + 104) = v104;
        *(v102 + 64) = v104;
        *(v102 + 72) = v15;
        *(v102 + 80) = v17;
        *(v102 + 136) = v103;
        *(v102 + 144) = v104;
        v105 = v42[2];
        if (v105)
        {
          v106 = v42[5];
          *(v102 + 112) = v42[4];
          *(v102 + 120) = v106;
          *(v102 + 176) = v103;
          *(v102 + 184) = v104;
          if (v105 != 1)
          {
            v107 = v42[6];
            v108 = v42[7];

            *(v102 + 152) = v107;
            *(v102 + 160) = v108;
            goto LABEL_52;
          }

          goto LABEL_77;
        }

        goto LABEL_74;
      }

      if (v43 == 3)
      {
        v54 = sub_23DD42138();
        v55 = [objc_opt_self() bundleWithIdentifier_];

        if (!v55)
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v56 = sub_23DD42138();
        v57 = sub_23DD42138();
        v58 = [v55 localizedStringForKey:v56 value:v57 table:0];

        sub_23DD42178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_23DD43FF0;
        v60 = MEMORY[0x277D837D0];
        *(v59 + 56) = MEMORY[0x277D837D0];
        v61 = sub_23DCFD428();
        *(v59 + 32) = v132;
        *(v59 + 40) = v4;
        *(v59 + 96) = v60;
        *(v59 + 104) = v61;
        *(v59 + 64) = v61;
        *(v59 + 72) = v15;
        *(v59 + 80) = v17;
        *(v59 + 136) = v60;
        *(v59 + 144) = v61;
        v62 = v42[2];
        if (v62)
        {
          v63 = v42[5];
          *(v59 + 112) = v42[4];
          *(v59 + 120) = v63;
          *(v59 + 176) = v60;
          *(v59 + 184) = v61;
          if (v62 != 1)
          {
            v64 = v42[7];
            *(v59 + 152) = v42[6];
            *(v59 + 160) = v64;
            *(v59 + 216) = v60;
            *(v59 + 224) = v61;
            if (v62 >= 3)
            {
              v65 = v42[8];
              v66 = v42[9];

              *(v59 + 192) = v65;
              *(v59 + 200) = v66;
              goto LABEL_52;
            }

            goto LABEL_79;
          }

          goto LABEL_76;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (!v43)
      {

        v88 = sub_23DD42138();
        v89 = [objc_opt_self() bundleWithIdentifier_];

        if (!v89)
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v90 = sub_23DD42138();
        v91 = sub_23DD42138();
        v92 = [v89 localizedStringForKey:v90 value:v91 table:0];

        sub_23DD42178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_23DD43550;
        v94 = MEMORY[0x277D837D0];
        *(v93 + 56) = MEMORY[0x277D837D0];
        v95 = sub_23DCFD428();
        *(v93 + 32) = v132;
        *(v93 + 40) = v4;
        *(v93 + 96) = v94;
        *(v93 + 104) = v95;
        v5 = v132;
        *(v93 + 64) = v95;
        *(v93 + 72) = v15;
        *(v93 + 80) = v17;

        v30 = sub_23DD42148();
        v32 = v96;

        goto LABEL_54;
      }

      if (v43 == 1)
      {
        v44 = sub_23DD42138();
        v45 = [objc_opt_self() bundleWithIdentifier_];

        if (!v45)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v46 = sub_23DD42138();
        v47 = sub_23DD42138();
        v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

        sub_23DD42178();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_23DD44160;
        v50 = MEMORY[0x277D837D0];
        *(v49 + 56) = MEMORY[0x277D837D0];
        v51 = sub_23DCFD428();
        *(v49 + 32) = v132;
        *(v49 + 40) = v4;
        *(v49 + 96) = v50;
        *(v49 + 104) = v51;
        *(v49 + 64) = v51;
        *(v49 + 72) = v15;
        *(v49 + 80) = v17;
        *(v49 + 136) = v50;
        *(v49 + 144) = v51;
        if (v42[2])
        {
          v52 = v42[4];
          v53 = v42[5];

          *(v49 + 112) = v52;
          *(v49 + 120) = v53;
LABEL_52:
          v30 = sub_23DD42148();
          v32 = v109;
          goto LABEL_53;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v73 = sub_23DD42138();
    v74 = [objc_opt_self() bundleWithIdentifier_];

    if (!v74)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v75 = sub_23DD42138();
    v76 = sub_23DD42138();
    v77 = [v74 localizedStringForKey:v75 value:v76 table:0];

    sub_23DD42178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_23DD44170;
    v79 = MEMORY[0x277D837D0];
    *(v78 + 56) = MEMORY[0x277D837D0];
    v80 = sub_23DCFD428();
    *(v78 + 32) = v132;
    *(v78 + 40) = v4;
    *(v78 + 96) = v79;
    *(v78 + 104) = v80;
    *(v78 + 64) = v80;
    *(v78 + 72) = v15;
    *(v78 + 80) = v17;
    *(v78 + 136) = v79;
    *(v78 + 144) = v80;
    v81 = v42[2];
    if (v81)
    {
      v82 = v42[5];
      *(v78 + 112) = v42[4];
      *(v78 + 120) = v82;
      *(v78 + 176) = v79;
      *(v78 + 184) = v80;
      if (v81 != 1)
      {
        v83 = v42[7];
        *(v78 + 152) = v42[6];
        *(v78 + 160) = v83;
        *(v78 + 216) = v79;
        *(v78 + 224) = v80;
        if (v81 >= 3)
        {
          v84 = v42[8];
          v85 = v42[9];

          *(v78 + 192) = v84;
          *(v78 + 200) = v85;
          v86 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          *(v78 + 256) = sub_23DCEFAE8(0, &qword_27E30E280, 0x277CCABB0);
          *(v78 + 264) = sub_23DCFD47C();
          *(v78 + 232) = v86;
          v30 = sub_23DD42148();
          v32 = v87;
LABEL_53:

          v5 = v132;
          goto LABEL_54;
        }

        goto LABEL_78;
      }

      goto LABEL_75;
    }

    __break(1u);
    goto LABEL_72;
  }

  if (sub_23DCF5134(4, a1) || sub_23DCF5134(5, a1) || sub_23DCF5134(6, a1))
  {

    v24 = sub_23DD42138();
    v25 = [objc_opt_self() bundleWithIdentifier_];

    if (!v25)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v26 = sub_23DD42138();
    v27 = sub_23DD42138();
    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    sub_23DD42178();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_23DD43570;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_23DCFD428();
    *(v29 + 32) = v5;
    *(v29 + 40) = v4;

    v30 = sub_23DD42148();
    v32 = v31;

    goto LABEL_54;
  }

  if (sub_23DCF5134(3, a1) && sub_23DCF5134(2, a1))
  {
    sub_23DCFAB1C(0xD000000000000025, 0x800000023DD4A8E0, v15, v17, v5, v4);
    v30 = v67;
    v32 = v68;

    goto LABEL_54;
  }

  if (!sub_23DCF5134(3, a1))
  {

    v30 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_54;
  }

  swift_beginAccess();
  v69 = sub_23DD42178();
  v71 = v70;
  if (v69 == sub_23DD42178() && v71 == v72)
  {

    goto LABEL_62;
  }

  v117 = sub_23DD42648();

  if (v117)
  {
LABEL_62:

    v118 = sub_23DD42138();
    v119 = [objc_opt_self() bundleWithIdentifier_];

    if (!v119)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

LABEL_63:
    v120 = sub_23DD42138();
    v121 = sub_23DD42138();
    v122 = [v119 localizedStringForKey:v120 value:v121 table:0];

    v30 = sub_23DD42178();
    v32 = v123;

    goto LABEL_54;
  }

  v124 = sub_23DD42178();
  v126 = v125;
  if (v124 == sub_23DD42178() && v126 == v127)
  {
  }

  else
  {
    v128 = sub_23DD42648();

    if ((v128 & 1) == 0)
    {
      sub_23DCFAB1C(0xD00000000000001CLL, 0x800000023DD4A700, v15, v17, v5, v4);
      v30 = v130;
      v32 = v131;

      goto LABEL_54;
    }
  }

  v129 = sub_23DD42138();
  v119 = [objc_opt_self() bundleWithIdentifier_];

  if (v119)
  {
    goto LABEL_63;
  }

LABEL_90:
  __break(1u);
}

unint64_t sub_23DCFD428()
{
  result = qword_27E30E428;
  if (!qword_27E30E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E428);
  }

  return result;
}

unint64_t sub_23DCFD47C()
{
  result = qword_27E30E430;
  if (!qword_27E30E430)
  {
    sub_23DCEFAE8(255, &qword_27E30E280, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E430);
  }

  return result;
}

uint64_t sub_23DCFD4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_51Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_23DCFD72C(char *a1)
{
  v1 = *a1;
  memset(v3, 0, sizeof(v3));
  sub_23DCF8534(v1, v3);
  return sub_23DCEFA38(v3, &qword_27E30E1F0, &unk_23DD43F80);
}

uint64_t sub_23DCFD790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23DCFD8B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DCFDAF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DCFDB38(uint64_t result, int a2, int a3)
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

uint64_t sub_23DCFDB88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23DCFDBE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DCFDC7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DCFDCF8()
{
  result = qword_27E30E4C0;
  if (!qword_27E30E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E4C0);
  }

  return result;
}

unint64_t sub_23DCFDD4C()
{
  result = qword_27E30E4E0;
  if (!qword_27E30E4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E4E8, &unk_23DD44770);
    sub_23DCFDC7C(&qword_27E30E4B8, &qword_27E30E4B0, &qword_23DD44720, sub_23DCFDCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E4E0);
  }

  return result;
}

id sub_23DCFDE6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism);
  if (v1 <= 2)
  {
    if (!*(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism))
    {
LABEL_8:
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v3 = 0;
      goto LABEL_15;
    }

    if (v1 == 1)
    {
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v3 = 2;
    }

    else
    {
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v3 = 3;
    }
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) <= 4u)
    {
      if (v1 == 3)
      {
        v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        v3 = 4;
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    if (v1 == 5)
    {
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v3 = 1;
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastManualMethod);
      v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      if (v4 == 2)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }
  }

LABEL_15:

  return [v2 initWithInteger_];
}

uint64_t sub_23DCFDFB0(char a1, const char *a2)
{
  v5 = sub_23DD41658();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastManualMethod) = a1;
  sub_23DD41648();
  v9 = sub_23DD41638();
  v10 = sub_23DD42338();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23DCDB000, v9, v10, a2, v11, 2u);
    MEMORY[0x23EEFE6D0](v11, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23DCFE120(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_23DD41658();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD41648();

  v10 = sub_23DD41638();
  v11 = sub_23DD42338();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_23DD2731C(a1, a2, &v20);
    _os_log_impl(&dword_23DCDB000, v10, v11, "AccountAddAnalyticsSender: showed add flow for type %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x23EEFE6D0](v13, -1, -1);
    MEMORY[0x23EEFE6D0](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = (v3 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType);
  *v14 = a1;
  v14[1] = a2;

  v16 = *(v3 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_numberOfTypesShown);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_numberOfTypesShown) = v18;
  }

  return result;
}

void sub_23DCFE328(uint64_t a1, uint64_t a2)
{
  v5 = sub_23DD41658();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (*(v2 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_successSent) & 1) == 0)
  {
    v10 = v7;
    v11 = v2;
    *(v2 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_successSent) = 1;
    sub_23DD41648();
    v12 = sub_23DD41638();
    v13 = sub_23DD42338();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23DCDB000, v12, v13, "AccountAddAnalyticsSender: sending success analytics", v14, 2u);
      MEMORY[0x23EEFE6D0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E508, &qword_23DD448D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23DD43FE0;
    *(inited + 32) = 0xD000000000000016;
    *(inited + 40) = 0x800000023DD4B0C0;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 56) = 0xD000000000000014;
    *(inited + 64) = 0x800000023DD4B0E0;
    v16 = *(v11 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType);
    v17 = *(v11 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType + 8);

    v18 = sub_23DCFF3A8(v16, v17);

    *(inited + 72) = v18;
    *(inited + 80) = 0xD000000000000017;
    *(inited + 88) = 0x800000023DD4B100;
    *(inited + 96) = sub_23DCFDE6C();
    strcpy((inited + 104), "manualMethod");
    *(inited + 117) = 0;
    *(inited + 118) = -5120;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    strcpy((inited + 128), "resolveMethod");
    *(inited + 142) = -4864;
    *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 152) = 0xD000000000000010;
    *(inited + 160) = 0x800000023DD4B120;
    *(inited + 168) = sub_23DCFF3A8(a1, a2);
    strcpy((inited + 176), "setUpMechanism");
    *(inited + 191) = -18;
    *(inited + 192) = sub_23DCFDE6C();
    *(inited + 200) = 0x7365527055746573;
    *(inited + 208) = 0xEB00000000746C75;
    *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    sub_23DD297F8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E510, &qword_23DD448D8);
    swift_arrayDestroy();
    v19 = sub_23DD42138();
    sub_23DCFF608();
    v20 = sub_23DD42108();

    AnalyticsSendEvent();
  }

  else
  {

    sub_23DCFE77C();
  }
}

void sub_23DCFE77C()
{
  v1 = sub_23DD41658();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = sub_23DD412A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_successSent) & 1) != 0 || (v16 = OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_cancelSent, (*(v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_cancelSent)))
  {
    sub_23DD41648();
    v17 = sub_23DD41638();
    v18 = sub_23DD42338();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23DCDB000, v17, v18, "AccountAddAnalyticsSender: not sending canceled analytics due to having previously sent success or canceled from this sender prior", v19, 2u);
      MEMORY[0x23EEFE6D0](v19, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v20 = v0;
    v21 = v13;
    (*(v12 + 16))(v15, v0 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_startDate, v13);
    sub_23DD41288();
    v23 = v22;
    (*(v12 + 8))(v15, v21);
    if (v23 >= -10.0)
    {
      sub_23DD41648();
      v33 = sub_23DD41638();
      v34 = sub_23DD42338();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_23DCDB000, v33, v34, "AccountAddAnalyticsSender: not sending canceled analytics due to short time span", v35, 2u);
        MEMORY[0x23EEFE6D0](v35, -1, -1);
      }

      (*(v2 + 8))(v8, v1);
    }

    else
    {
      sub_23DD41648();
      v24 = sub_23DD41638();
      v25 = sub_23DD42338();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23DCDB000, v24, v25, "AccountAddAnalyticsSender: sending canceled analytics", v26, 2u);
        MEMORY[0x23EEFE6D0](v26, -1, -1);
      }

      (*(v2 + 8))(v10, v1);
      *(v20 + v16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E508, &qword_23DD448D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23DD43FE0;
      *(inited + 32) = 0xD000000000000016;
      *(inited + 40) = 0x800000023DD4B0C0;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(inited + 56) = 0xD000000000000014;
      *(inited + 64) = 0x800000023DD4B0E0;
      v28 = *(v20 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType);
      v29 = *(v20 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType + 8);

      v30 = sub_23DCFF3A8(v28, v29);

      *(inited + 72) = v30;
      *(inited + 80) = 0xD000000000000017;
      *(inited + 88) = 0x800000023DD4B100;
      *(inited + 96) = sub_23DCFDE6C();
      strcpy((inited + 104), "manualMethod");
      *(inited + 117) = 0;
      *(inited + 118) = -5120;
      *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      strcpy((inited + 128), "resolveMethod");
      *(inited + 142) = -4864;
      *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(inited + 152) = 0xD000000000000010;
      *(inited + 160) = 0x800000023DD4B120;
      *(inited + 168) = sub_23DCFF3A8(0, 0);
      strcpy((inited + 176), "setUpMechanism");
      *(inited + 191) = -18;
      *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(inited + 200) = 0x7365527055746573;
      *(inited + 208) = 0xEB00000000746C75;
      *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      sub_23DD297F8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E510, &qword_23DD448D8);
      swift_arrayDestroy();
      v31 = sub_23DD42138();
      sub_23DCFF608();
      v32 = sub_23DD42108();

      AnalyticsSendEvent();
    }
  }
}

uint64_t AccountAddAnalyticsSender.deinit()
{
  v1 = OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_startDate;
  v2 = sub_23DD412A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AccountAddAnalyticsSender.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_startDate;
  v2 = sub_23DD412A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for AccountAddAnalyticsSender(uint64_t a1)
{
  result = qword_27E30E4F0;
  if (!qword_27E30E4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DCFEF94(uint64_t a1)
{
  result = sub_23DD412A8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountAddAnalyticsSender.ManualMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccountAddAnalyticsSender.ManualMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AccountAddAnalyticsSender.ResolveMechanism(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccountAddAnalyticsSender.ResolveMechanism(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23DCFF31C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23DCFF330(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_23DCFF354()
{
  result = qword_27E30E500;
  if (!qword_27E30E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E500);
  }

  return result;
}

id sub_23DCFF3A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E520, &unk_23DD448E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DD44780;
  *(inited + 32) = sub_23DD42178();
  *(inited + 40) = v5;
  v6 = (inited + 40);
  *(inited + 48) = sub_23DD42178();
  *(inited + 56) = v7;
  *(inited + 64) = sub_23DD42178();
  *(inited + 72) = v8;
  *(inited + 80) = sub_23DD42178();
  *(inited + 88) = v9;
  *(inited + 96) = sub_23DD42178();
  *(inited + 104) = v10;
  *(inited + 112) = sub_23DD42178();
  *(inited + 120) = v11;
  *(inited + 128) = sub_23DD42178();
  *(inited + 136) = v12;
  *(inited + 144) = sub_23DD42178();
  *(inited + 152) = v13;
  *(inited + 160) = sub_23DD42178();
  *(inited + 168) = v14;
  *(inited + 176) = sub_23DD42178();
  *(inited + 184) = v15;
  *(inited + 192) = sub_23DD42178();
  *(inited + 200) = v16;
  *(inited + 208) = sub_23DD42178();
  *(inited + 216) = v17;
  *(inited + 224) = sub_23DD42178();
  *(inited + 232) = v18;
  *(inited + 240) = sub_23DD42178();
  *(inited + 248) = v19;
  *(inited + 256) = sub_23DD42178();
  *(inited + 264) = v20;
  *(inited + 272) = sub_23DD42178();
  *(inited + 280) = v21;
  for (i = 1; i != 17; ++i)
  {
    if (*v6)
    {
      if (a2)
      {
        v23 = *(v6 - 1) == a1 && *v6 == a2;
        if (v23 || (sub_23DD42648() & 1) != 0)
        {
LABEL_11:

          return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        }
      }
    }

    else if (!a2)
    {
      goto LABEL_11;
    }

    v6 += 2;
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
  swift_arrayDestroy();
  i = 0;
  return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
}

unint64_t sub_23DCFF608()
{
  result = qword_27E30E518;
  if (!qword_27E30E518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E30E518);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountAddAnalyticsSender.AccountAddResolverType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountAddAnalyticsSender.AccountAddResolverType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23DCFF7A8()
{
  result = qword_27E30E530;
  if (!qword_27E30E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E530);
  }

  return result;
}

uint64_t AccountSettingsRootView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DCFF854();
  result = sub_23DD41888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23DCFF854()
{
  result = qword_27E30E1A0;
  if (!qword_27E30E1A0)
  {
    type metadata accessor for AccountsUIModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E1A0);
  }

  return result;
}

uint64_t AccountSettingsRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23DD419D8();
  result = sub_23DD41C38();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_23DCFF934@<X0>(uint64_t a1@<X8>)
{
  sub_23DD419D8();
  result = sub_23DD41C38();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

ACUISAddAccountControllerSwap __swiftcall ACUISAddAccountControllerSwap.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for ACUISAddAccountControllerSwap()
{
  result = qword_27E30E538;
  if (!qword_27E30E538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E30E538);
  }

  return result;
}

void sub_23DCFFAE8(void *a1)
{
  v2 = sub_23DD41658();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    LODWORD(v11) = 0;
    v12 = 0;
    goto LABEL_20;
  }

  v6 = a1;
  v7 = [v5 specifier];
  if (v7)
  {
    v8 = v4;
    v9 = v7;
    v10 = [v7 propertyForKey_];

    if (v10)
    {
      sub_23DD424A8();
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0u;
      v56 = 0u;
    }

    v57 = v55;
    v58 = v56;
    v4 = v8;
    if (*(&v56 + 1))
    {
      v13 = swift_dynamicCast();
      if (v13)
      {
        v12 = v55;
      }

      else
      {
        v12 = 0;
      }

      if (v13)
      {
        v5 = *(&v55 + 1);
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  sub_23DCEFFDC(&v57);
  v12 = 0;
  v5 = 0;
LABEL_16:
  v14 = sub_23DD42138();
  v15 = NSClassFromString(v14);

  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = [v6 isKindOfClass_];

  if (v16)
  {

    v5 = 0x800000023DD4A5A0;
    v12 = 0xD000000000000014;
    LODWORD(v11) = 1;
  }

  else
  {
    LODWORD(v11) = 0;
  }

LABEL_20:
  sub_23DD41648();

  v17 = sub_23DD41638();
  v18 = sub_23DD42338();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v52 = a1;
    v21 = v20;
    *&v55 = v20;
    *v19 = 136315394;
    *&v57 = v12;
    *(&v57 + 1) = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
    v22 = sub_23DD42188();
    v24 = sub_23DD2731C(v22, v23, &v55);
    v25 = v12;
    v51 = v4;
    v26 = v11;
    v27 = v24;

    *(v19 + 4) = v27;
    *(v19 + 12) = 2080;
    if (v26)
    {
      v28 = 7562617;
    }

    else
    {
      v28 = 28526;
    }

    if (v26)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE200000000000000;
    }

    v29 = sub_23DD2731C(v28, v11, &v55);
    LOBYTE(v11) = v26;
    v12 = v25;

    *(v19 + 14) = v29;
    _os_log_impl(&dword_23DCDB000, v17, v18, "ACUISAddAccountControllerSwap presenting account from host app: %s, force mail: %s", v19, 0x16u);
    swift_arrayDestroy();
    v30 = v21;
    a1 = v52;
    MEMORY[0x23EEFE6D0](v30, -1, -1);
    MEMORY[0x23EEFE6D0](v19, -1, -1);

    (*(v53 + 8))(v51, v54);
  }

  else
  {

    (*(v53 + 8))(v4, v54);
  }

  LOBYTE(v57) = v11;
  type metadata accessor for AccountAddAnalyticsSender(0);
  v31 = swift_allocObject();
  *(v31 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_numberOfTypesShown) = 0;
  v32 = (v31 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastPresentedAddType);
  *v32 = 0;
  v32[1] = 0;
  *(v31 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) = 4;
  *(v31 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastManualMethod) = 0;
  *(v31 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_successSent) = 0;
  *(v31 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_cancelSent) = 0;
  sub_23DD41298();
  v33 = objc_allocWithZone(type metadata accessor for AccountAddViewModel(0));
  v34 = AccountAddViewModel.init(_:analyticsModel:hostBundleID:)(&v57, v31, v12, v5);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = a1;
  }

  v37 = *&v34[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost];
  *&v34[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost] = v35;
  v38 = v35;

  sub_23DD01864();
  type metadata accessor for AccountsUIModel(0);
  sub_23DD001C8(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  v39 = sub_23DD41888();
  v53 = v40;
  v54 = v39;
  sub_23DD001C8(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v41 = sub_23DD41888();
  v43 = v42;
  if (qword_2814FD150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v44 = qword_2814FD158;
  v45 = sub_23DD41678();
  v46 = qword_2814FD158;
  v47 = sub_23DCE6098();

  sub_23DD41478();
  sub_23DD001C8(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
  v48 = sub_23DD41678();
  v49 = sub_23DD41678();
  *&v57 = v54;
  *(&v57 + 1) = v53;
  *&v58 = v41;
  *(&v58 + 1) = v43;
  v59 = v45;
  v60 = v44;
  v61 = v48;
  v62 = v47;
  v63 = v49;
  v64 = v34;
  v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E550, &qword_23DD44A28));
  sub_23DD41A68();
}

uint64_t sub_23DD001C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AccountsTypes.IconType.hashValue.getter()
{
  v1 = *v0;
  sub_23DD42688();
  MEMORY[0x23EEFDED0](v1);
  return sub_23DD426A8();
}

unint64_t sub_23DD002B8()
{
  result = qword_27E30E558;
  if (!qword_27E30E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E558);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountsTypes.IconType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountsTypes.IconType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23DD00478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23DD2AD18(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_23DD285BC(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_23DCEFA38(a1, &qword_27E30E1F0, &unk_23DD43F80);
    sub_23DD279C8(a2, a3, v9);

    return sub_23DCEFA38(v9, &qword_27E30E1F0, &unk_23DD43F80);
  }

  return result;
}

char *sub_23DD00548(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23DCF20D8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23DD0063C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23DD425C8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_23DD425C8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23DD27928(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23DCEBDA8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t AccountAddView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  *a1 = sub_23DD41888();
  a1[1] = v2;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  result = sub_23DD41888();
  a1[2] = result;
  a1[3] = v4;
  return result;
}

uint64_t sub_23DD00848()
{
  result = sub_23DD42138();
  qword_27E311D18 = result;
  return result;
}

BOOL sub_23DD00880(void *a1)
{
  v2 = sub_23DD41488();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = a1;
  sub_23DD423B8();
  (*(v3 + 104))(v6, *MEMORY[0x277D40278], v2);
  sub_23DD03710(&qword_27E30EB18, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
  sub_23DD42238();
  sub_23DD42238();

  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  return v12[1] == v12[0];
}

uint64_t sub_23DD00A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23DD420E8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_23DD422C8();
  v5[7] = sub_23DD422B8();
  v8 = sub_23DD422A8();

  return MEMORY[0x2822009F8](sub_23DD00B24, v8, v7);
}

uint64_t sub_23DD00B24()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  sub_23DD423C8();
  sub_23DD420D8();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23DD00BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23DCFD8B0(a3, v25 - v10, &qword_27E30EA40, &qword_23DD45C78);
  v12 = sub_23DD422E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23DCEFA38(v11, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    sub_23DD422D8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23DD422A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23DD421B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23DCEFA38(a3, &qword_27E30EA40, &qword_23DD45C78);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DCEFA38(a3, &qword_27E30EA40, &qword_23DD45C78);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_23DD00ED0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_23DD422E8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_23DD422C8();
  v9 = a1;
  v10 = sub_23DD422B8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a3;
  sub_23DD00BD0(0, 0, v7, &unk_23DD46070, v11);
}

uint64_t sub_23DD0105C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t sub_23DD010E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();
}

uint64_t sub_23DD01210()
{
  v0 = sub_23DD42068();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v23 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23DD42098();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23DD42058();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_23DD420B8();
  v22 = *(v28 - 8);
  v9 = MEMORY[0x28223BE20](v28);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  if (LOBYTE(aBlock[0]) == 1)
  {
    sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
    v21 = sub_23DD42388();
    sub_23DD420A8();
    *v8 = 200;
    (*(v6 + 104))(v8, *MEMORY[0x277D85178], v5);
    MEMORY[0x23EEFD900](v11, v8);
    (*(v6 + 8))(v8, v5);
    v22 = *(v22 + 8);
    (v22)(v11, v28);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_23DD27278;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DCE4C84;
    aBlock[3] = &block_descriptor_1;
    v16 = _Block_copy(aBlock);

    sub_23DD42088();
    v29 = MEMORY[0x277D84F90];
    sub_23DD03710(&qword_2814FCCA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
    sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0, MEMORY[0x277D83970]);
    v17 = v23;
    v18 = v27;
    sub_23DD424B8();
    v19 = v21;
    MEMORY[0x23EEFDBB0](v13, v4, v17, v16);
    _Block_release(v16);

    (*(v26 + 8))(v17, v18);
    (*(v24 + 8))(v4, v25);
    (v22)(v13, v28);
  }

  return result;
}

void sub_23DD0171C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_23DD416E8();
    sub_23DD01210();
  }
}

uint64_t sub_23DD017E4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v3;
}

void sub_23DD01864()
{
  v1 = *&v0[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost];
  if (v1)
  {
    v2 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_continueButton;
    if (!*&v0[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_continueButton])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v1;
      sub_23DD416D8();

      if (v25[0] == 1)
      {
        v4 = sub_23DD42138();
        v5 = [objc_opt_self() bundleWithIdentifier_];

        if (v5)
        {
          v6 = sub_23DD42138();
          v7 = sub_23DD42138();
          v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

          sub_23DD42178();
          v26 = type metadata accessor for AccountAddViewModel(0);
          *v25 = v0;
          v9 = v0;
          v10 = sub_23DD42138();

          v11 = v26;
          if (v26)
          {
            v12 = __swift_project_boxed_opaque_existential_1(v25, v26);
            v13 = *(v11 - 8);
            MEMORY[0x28223BE20](v12);
            v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v13 + 16))(v15);
            v16 = sub_23DD42638();
            (*(v13 + 8))(v15, v11);
            __swift_destroy_boxed_opaque_existential_1Tm(v25);
          }

          else
          {
            v16 = 0;
          }

          v17 = objc_allocWithZone(MEMORY[0x277D751E0]);
          v18 = [v17 initWithTitle:v10 style:2 target:v16 action:{sel__iOS_continueButtonPressed, *v25}];

          swift_unknownObjectRelease();
          v19 = *&v0[v2];
          *&v0[v2] = v18;
          v20 = v18;

          [v20 setEnabled_];
          v21 = [v3 navigationItem];
          v22 = *&v0[v2];
          if (v22)
          {
            v23 = v21;
            v24 = v22;
            [v23 setRightBarButtonItem_];

            goto LABEL_10;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_10:
    }
  }
}

void *sub_23DD01BBC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_23DD41388();
    v10 = v9;
    v11 = sub_23DD41408();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v5, a1, v11);
    (*(v12 + 56))(v5, 0, 1, v11);
    sub_23DD10000(v8, v10, v5);

    return sub_23DCEFA38(v5, &qword_27E30E5B0, &qword_23DD44B60);
  }

  return result;
}

uint64_t AccountAddViewModel.AddType.hashValue.getter()
{
  v1 = *v0;
  sub_23DD42688();
  MEMORY[0x23EEFDED0](v1);
  return sub_23DD426A8();
}

char *AccountAddViewModel.init(_:analyticsModel:hostBundleID:)(unsigned __int8 *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v165 = a4;
  v164 = a3;
  v154 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E560, &qword_23DD44B00);
  MEMORY[0x28223BE20](v7 - 8);
  v175 = v133 - v8;
  v177 = sub_23DD42438();
  v174 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v172 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E568, &qword_23DD44B08);
  v168 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v166 = v133 - v10;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E570, &qword_23DD44B10);
  v169 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v167 = v133 - v11;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E578, &qword_23DD44B18);
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v173 = v133 - v12;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E580, &qword_23DD44B20);
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = v133 - v13;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E588, &qword_23DD44B28);
  v14 = MEMORY[0x28223BE20](v160);
  v159 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v158 = v133 - v16;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E590, &qword_23DD44B30);
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = v133 - v17;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E598, &qword_23DD44B38);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = v133 - v18;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E040, &unk_23DD44B40);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = v133 - v19;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E020, &qword_23DD43678);
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = v133 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5A0, &qword_23DD44B50);
  v183 = *(v21 - 8);
  v184 = v21;
  MEMORY[0x28223BE20](v21);
  v142 = v133 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5A8, &qword_23DD44B58);
  v141 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v140 = v133 - v23;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v24 = MEMORY[0x28223BE20](v139);
  v138 = v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v137 = v133 - v26;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B8, &qword_23DD44B68);
  v136 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v28 = v133 - v27;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5C0, &unk_23DD44B70);
  v186 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v30 = v133 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E000, &qword_23DD435C8);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = v133 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = v133 - v37;
  v153 = *a1;
  v39 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__accountSetupView;
  v189 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D8, &qword_23DD47200);
  sub_23DD41698();
  (*(v36 + 32))(&v5[v39], v38, v35);
  v40 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addOtherShown;
  LOBYTE(v189) = 0;
  v181 = v34;
  sub_23DD41698();
  v41 = *(v32 + 32);
  v182 = v31;
  v41(&v5[v40], v34, v31);
  v135 = v32 + 32;
  v134 = v41;
  v42 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addButtonEnabled;
  LOBYTE(v189) = 0;
  sub_23DD41698();
  v41(&v5[v42], v34, v31);
  v43 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__accountTypeToAdd;
  v189 = 0;
  v190 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
  sub_23DD41698();
  v45 = *(v186 + 32);
  v186 += 32;
  v179 = v45;
  v46 = v180;
  v45(&v5[v43], v30, v180);
  v47 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__usernameString;
  v189 = 0;
  v190 = 0xE000000000000000;
  sub_23DD41698();
  v48 = v5;
  (*(v136 + 32))(&v5[v47], v28, v185);
  v49 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__overrideSuggestion;
  v50 = sub_23DD41408();
  v51 = v137;
  (*(*(v50 - 8) + 56))(v137, 1, 1, v50);
  sub_23DCFD8B0(v51, v138, &qword_27E30E5B0, &qword_23DD44B60);
  v52 = v140;
  sub_23DD41698();
  sub_23DCEFA38(v51, &qword_27E30E5B0, &qword_23DD44B60);
  (*(v141 + 32))(&v5[v49], v52, v149);
  v53 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addType;
  v149 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addType;
  LOBYTE(v189) = 0;
  v54 = v142;
  sub_23DD41698();
  (*(v183 + 32))(&v48[v53], v54, v184);
  v55 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__accountTypesToDisplay;
  v189 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E090, &qword_23DD436C0);
  v56 = v143;
  sub_23DD41698();
  (*(v144 + 32))(&v48[v55], v56, v145);
  v57 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__formattedErrorText;
  v189 = 0;
  v190 = 0;
  v133[1] = v44;
  sub_23DD41698();
  v58 = v30;
  v59 = v179;
  v179(&v48[v57], v30, v46);
  v60 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addByAccountTypeSheetPresented;
  LOBYTE(v189) = 0;
  v61 = v181;
  sub_23DD41698();
  v62 = v61;
  v63 = v182;
  v64 = v134;
  v134(&v48[v60], v62, v182);
  v65 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__hostAppBundleID;
  v189 = 0;
  v190 = 0;
  v133[0] = v58;
  sub_23DD41698();
  v59(&v48[v65], v58, v46);
  v66 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__resolverEnabled;
  LOBYTE(v189) = 1;
  v67 = v181;
  sub_23DD41698();
  v64(&v48[v66], v67, v63);
  v68 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addedAccount;
  v189 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E050, &qword_23DD436A0);
  v69 = v146;
  sub_23DD41698();
  v70 = *(v147 + 32);
  v71 = v148;
  v70(&v48[v68], v69, v148);
  v72 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__existingAccountForUsername;
  v189 = 0;
  sub_23DD41698();
  v70(&v48[v72], v69, v71);
  v73 = v154;
  v74 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__filteredAccountsOnOtherDevices;
  v75 = MEMORY[0x277D84F90];
  v189 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5C8, &qword_23DD44B88);
  v76 = v150;
  sub_23DD41698();
  (*(v151 + 32))(&v48[v74], v76, v152);
  v77 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__networkIssue;
  LOBYTE(v189) = 0;
  sub_23DD41698();
  v78 = v182;
  v64(&v48[v77], v67, v182);
  v79 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__addPluginInProgress;
  LOBYTE(v189) = 0;
  sub_23DD41698();
  v64(&v48[v79], v67, v78);
  v80 = v64;
  v81 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__validatedUsername;
  v189 = 0;
  v190 = 0;
  v82 = v133[0];
  sub_23DD41698();
  v179(&v48[v81], v82, v180);
  v83 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__continueButtonGoogleAlertShown;
  LOBYTE(v189) = 0;
  sub_23DD41698();
  v80(&v48[v83], v67, v78);
  v84 = &v48[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  *v84 = 0;
  *(v84 + 1) = 0;
  *&v48[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper] = 0;
  *&v48[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_continueButton] = 0;
  *&v48[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost] = 0;
  v85 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_aListAccountTypes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1F8, &qword_23DD44B90);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_23DD44170;
  *(v86 + 32) = sub_23DD42178();
  *(v86 + 40) = v87;
  *(v86 + 48) = sub_23DD42178();
  *(v86 + 56) = v88;
  *(v86 + 64) = sub_23DD42178();
  *(v86 + 72) = v89;
  *(v86 + 80) = sub_23DD42178();
  *(v86 + 88) = v90;
  *(v86 + 96) = sub_23DD42178();
  *(v86 + 104) = v91;
  *(v86 + 112) = sub_23DD42178();
  *(v86 + 120) = v92;
  *&v48[v85] = v86;
  v93 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_chinaAccountTypes;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_23DD44160;
  *(v94 + 32) = sub_23DD42178();
  *(v94 + 40) = v95;
  *(v94 + 48) = sub_23DD42178();
  *(v94 + 56) = v96;
  *(v94 + 64) = sub_23DD42178();
  *(v94 + 72) = v97;
  *&v48[v93] = v94;
  v98 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_otherAccountTypes;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_23DD43FF0;
  *(v99 + 32) = sub_23DD42178();
  *(v99 + 40) = v100;
  *(v99 + 48) = sub_23DD42178();
  *(v99 + 56) = v101;
  *(v99 + 64) = sub_23DD42178();
  *(v99 + 72) = v102;
  *(v99 + 80) = sub_23DD42178();
  *(v99 + 88) = v103;
  v104 = sub_23DD42178();
  *&v48[v98] = v99;
  *&v48[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_cancelThis] = MEMORY[0x277D84FA0];
  *(v99 + 96) = v104;
  *(v99 + 104) = v105;
  v106 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel;
  *&v48[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel] = 0;
  *&v48[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_resolveTask] = 0;
  v107 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__preliminarySuggestions;
  v189 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5D0, &qword_23DD44B98);
  v108 = v155;
  sub_23DD41698();
  (*(v156 + 32))(&v48[v107], v108, v157);
  v109 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel__nextStep;
  Step = type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
  v111 = v158;
  (*(*(Step - 8) + 56))(v158, 1, 1, Step);
  sub_23DCFD8B0(v111, v159, &qword_27E30E588, &qword_23DD44B28);
  v112 = v161;
  sub_23DD41698();
  sub_23DCEFA38(v111, &qword_27E30E588, &qword_23DD44B28);
  (*(v162 + 32))(&v48[v109], v112, v163);
  v113 = v149;
  swift_beginAccess();
  (*(v183 + 8))(&v48[v113], v184);
  LOBYTE(v112) = v153;
  v188 = v153;
  sub_23DD41698();
  swift_endAccess();
  *&v48[v106] = v73;

  sub_23DD41358();
  swift_allocObject();
  *&v48[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_configResolver] = sub_23DD41348();
  v114 = type metadata accessor for AccountAddViewModel(0);
  v187.receiver = v48;
  v187.super_class = v114;
  v115 = objc_msgSendSuper2(&v187, sel_init);
  LOBYTE(v189) = v112;
  v116 = v115;
  v117 = sub_23DD037E4(&v189);
  swift_getKeyPath();
  swift_getKeyPath();
  v189 = v117;
  v118 = v116;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v189 = v164;
  v190 = v165;
  v119 = v118;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  if (v190)
  {
    if (v189 == 0xD000000000000014 && v190 == 0x800000023DD4A5A0)
    {
    }

    else
    {
      v120 = sub_23DD42648();

      if ((v120 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v189) = 0;
        v121 = v119;
        sub_23DD416E8();
      }
    }
  }

  swift_beginAccess();
  v122 = v166;
  sub_23DD416A8();
  swift_endAccess();
  v123 = v172;
  sub_23DD42428();
  v124 = [objc_opt_self() mainRunLoop];
  v189 = v124;
  v125 = sub_23DD42418();
  v126 = v175;
  (*(*(v125 - 8) + 56))(v175, 1, 1, v125);
  sub_23DCEFAE8(0, &qword_27E30E5D8, 0x277CBEB88);
  sub_23DCEF9F0(&qword_27E30E5E0, &qword_27E30E568, &qword_23DD44B08, MEMORY[0x277CBCEC8]);
  sub_23DD23B44();
  v127 = v167;
  v128 = v170;
  sub_23DD41708();
  sub_23DCEFA38(v126, &qword_27E30E560, &qword_23DD44B00);

  (*(v174 + 8))(v123, v177);
  (*(v168 + 8))(v122, v128);
  sub_23DCEF9F0(&qword_27E30E5F0, &qword_27E30E570, &qword_23DD44B10, MEMORY[0x277CBCCF8]);
  v129 = v173;
  v130 = v171;
  sub_23DD41718();
  (*(v169 + 8))(v127, v130);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23DCEF9F0(&qword_27E30E5F8, &qword_27E30E578, &qword_23DD44B18, MEMORY[0x277CBCBE0]);
  v131 = v178;
  sub_23DD41728();

  (*(v176 + 8))(v129, v131);
  swift_beginAccess();
  sub_23DD41668();
  swift_endAccess();

  return v119;
}

uint64_t sub_23DD03710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23DD03778(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23DD047F8(v2, v3);
  }
}

char *sub_23DD037E4(unsigned __int8 *a1)
{
  v2 = *a1;
  v17 = *(v1 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_aListAccountTypes);

  if (sub_23DD29EF4())
  {

    sub_23DD00548(v3);
  }

  if (!v2)
  {
    return v17;
  }

  v5 = sub_23DD42178();
  v7 = v6;
  v4 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23DCF20D8(0, *(v17 + 16) + 1, 1, v17);
  }

  v8 = *(v4 + 2);
  v9 = *(v4 + 3);
  v10 = v8 + 1;
  if (v8 >= v9 >> 1)
  {
    v16 = v8 + 1;
    v13 = v4;
    v14 = *(v4 + 2);
    v15 = sub_23DCF20D8((v9 > 1), v8 + 1, 1, v13);
    v8 = v14;
    v10 = v16;
    v4 = v15;
  }

  *(v4 + 2) = v10;
  v11 = &v4[16 * v8];
  *(v11 + 4) = v5;
  *(v11 + 5) = v7;
  return v4;
}

uint64_t sub_23DD03914(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  result = sub_23DD416E8();
  v5 = &v3[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  v6 = *&v3[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  if (a1)
  {
    if (v6)
    {
      v7 = *(v5 + 1);

      v6(v8);
      return sub_23DCF5098(v6, v7);
    }
  }

  else
  {
    v9 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    sub_23DCF5098(v6, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    v3;
    sub_23DD416E8();
    return sub_23DD01210();
  }

  return result;
}

uint64_t sub_23DD03A48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();
}

uint64_t sub_23DD03AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DD03B48;

  return sub_23DD041D0();
}

uint64_t sub_23DD03B48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DD03C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23DCFD8B0(a3, v25 - v10, &qword_27E30EA40, &qword_23DD45C78);
  v12 = sub_23DD422E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23DCEFA38(v11, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    sub_23DD422D8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23DD422A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23DD421B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23DD03EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23DCFD8B0(a3, v25 - v10, &qword_27E30EA40, &qword_23DD45C78);
  v12 = sub_23DD422E8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23DCEFA38(v11, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    sub_23DD422D8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23DD422A8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23DD421B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA80, &qword_23DD45D28);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA80, &qword_23DD45D28);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23DD041D0()
{
  v1[6] = v0;
  v2 = sub_23DD41658();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_23DD422C8();
  v1[10] = sub_23DD422B8();
  v4 = sub_23DD422A8();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_23DD042C4, v4, v3);
}

uint64_t sub_23DD042C4()
{
  v0[13] = *(v0[6] + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_configResolver);

  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_23DD04374;

  return MEMORY[0x28213A168]();
}

uint64_t sub_23DD04374()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_23DD04558;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_23DD04490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23DD04490()
{
  v1 = *(v0 + 48);

  *(swift_task_alloc() + 16) = v1;
  sub_23DD42018();
  sub_23DD41808();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23DD04558()
{
  v25 = v0;

  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_2814FD168);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23DD42338();
  v6 = sub_23DD41638();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = v0[15];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v0[5] = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1C0, &qword_23DD43F60);
    v14 = sub_23DD42188();
    v16 = sub_23DD2731C(v14, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_23DCDB000, v6, v5, "Caught error %s trying to check health of config resolve service", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23EEFE6D0](v12, -1, -1);
    MEMORY[0x23EEFE6D0](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[7];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[15];
  v21 = v0[6];
  *(swift_task_alloc() + 16) = v21;
  sub_23DD42018();
  sub_23DD41808();

  v22 = v0[1];

  return v22();
}

uint64_t sub_23DD047F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_resolveTask;
  if (*&v2[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_resolveTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1C0, &qword_23DD43F60);
    sub_23DD422F8();
  }

  v9 = sub_23DD422E8();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v11 = v2;

  v12 = sub_23DD04B34(0, 0, v7, &unk_23DD45FD0, v10);
  sub_23DCEFA38(v7, &qword_27E30EA40, &qword_23DD45C78);
  *&v2[v8] = v12;
}

uint64_t sub_23DD04990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_23DD04A3C;

  return sub_23DD05BDC(a5, a6);
}

uint64_t sub_23DD04A3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DD04B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23DCFD8B0(a3, v22 - v9, &qword_27E30EA40, &qword_23DD45C78);
  v11 = sub_23DD422E8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23DCEFA38(v10, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    sub_23DD422D8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23DD422A8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23DD421B8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23DD04DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_23DD41658();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_2814FD168);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_23DD42338();
  v15 = sub_23DD41638();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23DCDB000, v15, v14, "AccountAddViewModel.continueButtonPressed(:) begin", v16, 2u);
    MEMORY[0x23EEFE6D0](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v17 = sub_23DD422E8();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_23DD422C8();
  v18 = v3;

  v19 = sub_23DD422B8();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  v20[5] = a1;
  v20[6] = a2;
  sub_23DD00BD0(0, 0, v8, &unk_23DD45FA0, v20);

  return sub_23DD0F3B8("AccountAddViewModel.continueButtonPressed(:) end");
}

uint64_t sub_23DD0506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_23DD41408();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB10, &qword_23DD45F48);
  v6[15] = swift_task_alloc();
  v9 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = sub_23DD422C8();
  v6[20] = sub_23DD422B8();
  v10 = swift_task_alloc();
  v6[21] = v10;
  *v10 = v6;
  v10[1] = sub_23DD05260;

  return sub_23DD041D0();
}

uint64_t sub_23DD05260()
{
  v1 = *v0;

  v3 = sub_23DD422A8();
  *(v1 + 176) = v3;
  *(v1 + 184) = v2;

  return MEMORY[0x2822009F8](sub_23DD053A4, v3, v2);
}

uint64_t sub_23DD053A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  v2 = v0[2];
  v1 = v0[3];
  v0[24] = v1;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_23DD0549C;
  v4 = v0[15];

  return sub_23DD06460(v4, v2, v1);
}

uint64_t sub_23DD0549C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_23DD055E0, v3, v2);
}

uint64_t sub_23DD055E0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23DCEFA38(*(v0 + 120), &qword_27E30EB10, &qword_23DD45F48);
    goto LABEL_17;
  }

  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  v6 = *(v0 + 104);
  sub_23DD26A14(*(v0 + 120), v4, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
  sub_23DD0C7A4(v4, v5);
  sub_23DD269AC(v5, v6, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v13 = *(v0 + 144);
      v16 = *(v0 + 112);
      goto LABEL_15;
    }

    v12 = *(v0 + 32);
    if (*(v12 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel))
    {

      sub_23DCFDFA0();

      v12 = *(v0 + 32);
    }

    v13 = *(v0 + 144);
    v14 = *(v0 + 112);
    *(swift_task_alloc() + 16) = v12;
    sub_23DD42018();
    sub_23DD41808();

LABEL_13:
    v16 = v14;
LABEL_15:
    sub_23DD2B4C0(v16, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    v11 = v13;
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 112);
    v10 = **(v0 + 104);
    sub_23DD0DECC(v10);

LABEL_6:
    sub_23DD2B4C0(v9, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    v11 = v8;
LABEL_16:
    sub_23DD2B4C0(v11, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
    goto LABEL_17;
  }

  v15 = *(*(v0 + 64) + 32);
  v15(*(v0 + 88), *(v0 + 104), *(v0 + 56));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  if (*(v0 + 208))
  {
    v13 = *(v0 + 144);
    v14 = *(v0 + 112);
    (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
    goto LABEL_13;
  }

  v19 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 209) = 1;
  v19;
  sub_23DD416E8();
  sub_23DD01210();
  v20 = sub_23DD41388();
  v22 = v21;
  if (v20 == sub_23DD42178() && v22 == v23)
  {
  }

  else
  {
    v24 = sub_23DD42648();

    if ((v24 & 1) == 0)
    {
      v8 = *(v0 + 144);
      v9 = *(v0 + 112);
      v36 = *(v0 + 88);
      v37 = *(v0 + 56);
      v38 = *(v0 + 64);
      (*(v0 + 40))(v36);
      (*(v38 + 8))(v36, v37);
      goto LABEL_6;
    }
  }

  v25 = *(v0 + 112);
  v26 = *(v0 + 80);
  v39 = *(v0 + 144);
  v40 = *(v0 + 88);
  v41 = *(v0 + 64);
  v27 = *(v0 + 48);
  v28 = *(v0 + 56);
  v29 = *(v0 + 32);
  v42 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 210) = 1;
  v30 = v29;
  sub_23DD416E8();
  sub_23DD2B4C0(v25, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
  sub_23DD2B4C0(v39, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
  v15(v26, v40, v28);
  v31 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v42;
  *(v32 + 24) = v27;
  v15(v32 + v31, v26, v28);
  v33 = &v30[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  v34 = *&v30[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow];
  v35 = *&v30[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_googlePlatformShow + 8];
  *v33 = sub_23DD2B638;
  v33[1] = v32;

  sub_23DCF5098(v34, v35);
LABEL_17:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_23DD05B68(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  return sub_23DD416E8();
}

uint64_t sub_23DD05BDC(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v3[3] = type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB10, &qword_23DD45F48);
  v6 = swift_task_alloc();
  v3[6] = v6;
  v7 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  v3[7] = v7;
  v3[8] = *(v7 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = sub_23DD422C8();
  v3[11] = sub_23DD422B8();
  v8 = swift_task_alloc();
  v3[12] = v8;
  *v8 = v3;
  v8[1] = sub_23DD05D88;

  return sub_23DD06460(v6, a1, a2);
}

uint64_t sub_23DD05D88()
{

  v1 = sub_23DD422A8();

  return MEMORY[0x2822009F8](sub_23DD05EC4, v1, v0);
}

uint64_t sub_23DD05EC4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23DCEFA38(*(v0 + 48), &qword_27E30EB10, &qword_23DD45F48);
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 40);
    v6 = *(v0 + 32);
    sub_23DD26A14(*(v0 + 48), v4, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
    sub_23DD0C7A4(v4, v5);
    *(v0 + 104) = 0;
    sub_23DD269AC(v5, v6, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v7 = *(v0 + 32);
      *(v0 + 104) = 1;
      sub_23DD2B4C0(v7, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    }

    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = *(v0 + 16);
    v11 = swift_task_alloc();
    v11[2] = v10;
    v11[3] = v9;
    v11[4] = v8;
    v11[5] = v0 + 104;
    sub_23DD42018();
    sub_23DD41808();

    sub_23DD2B4C0(v9, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
    sub_23DD2B4C0(v8, type metadata accessor for AccountAddViewModel.EmailAddressValidationResult);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23DD060E0(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E588, &qword_23DD44B28);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_23DD269AC(a2, &v34 - v12, type metadata accessor for AccountAddViewModel.ContinueButtonNextStep);
  Step = type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
  (*(*(Step - 8) + 56))(v13, 0, 1, Step);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DCFD8B0(v13, v11, &qword_27E30E588, &qword_23DD44B28);
  v15 = a1;
  sub_23DD416E8();
  sub_23DCEFA38(v13, &qword_27E30E588, &qword_23DD44B28);
  v17 = *(a3 + 8);
  v16 = *(a3 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v17;
  v35 = v16;

  v18 = v15;
  sub_23DD416E8();
  v19 = *a4;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v34) = v19;
  v20 = v18;
  sub_23DD416E8();
  v21 = *&v20[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_continueButton];
  if (v21)
  {
    [v21 setEnabled_];
  }

  v22 = *a3;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v22;
  v23 = v22;
  v24 = v20;
  sub_23DD416E8();
  v25 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  v26 = *(a3 + *(v25 + 36));
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v26;
  v27 = v24;

  sub_23DD416E8();
  v28 = *(a3 + *(v25 + 40));
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v28;
  v29 = v27;

  sub_23DD416E8();
  v31 = *(a3 + 40);
  v30 = *(a3 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v31;
  v35 = v30;

  v32 = v29;
  return sub_23DD416E8();
}

uint64_t sub_23DD06460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_23DD41528();
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v6 = sub_23DD414D8();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v7 = sub_23DD414F8();
  v4[46] = v7;
  v4[47] = *(v7 - 8);
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v8 = sub_23DD415E8();
  v4[50] = v8;
  v4[51] = *(v8 - 8);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v9 = sub_23DD41608();
  v4[54] = v9;
  v4[55] = *(v9 - 8);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v10 = sub_23DD41558();
  v4[58] = v10;
  v4[59] = *(v10 - 8);
  v4[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB00, &qword_23DD45F30);
  v4[61] = swift_task_alloc();
  v11 = sub_23DD41568();
  v4[62] = v11;
  v4[63] = *(v11 - 8);
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v12 = sub_23DD41578();
  v4[66] = v12;
  v4[67] = *(v12 - 8);
  v4[68] = swift_task_alloc();
  sub_23DD414B8();
  v4[69] = swift_task_alloc();
  v13 = sub_23DD415C8();
  v4[70] = v13;
  v4[71] = *(v13 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v14 = sub_23DD415B8();
  v4[74] = v14;
  v4[75] = *(v14 - 8);
  v4[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v15 = sub_23DD41408();
  v4[81] = v15;
  v4[82] = *(v15 - 8);
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();
  v16 = sub_23DD411D8();
  v4[87] = v16;
  v4[88] = *(v16 - 8);
  v4[89] = swift_task_alloc();
  v17 = sub_23DD41658();
  v4[90] = v17;
  v4[91] = *(v17 - 8);
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  sub_23DD422C8();
  v4[108] = sub_23DD422B8();
  v19 = sub_23DD422A8();
  v4[109] = v19;
  v4[110] = v18;

  return MEMORY[0x2822009F8](sub_23DD06B8C, v19, v18);
}

uint64_t sub_23DD06B8C()
{
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 856);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = __swift_project_value_buffer(v3, qword_2814FD168);
  *(v0 + 888) = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v0 + 896) = v5;
  *(v0 + 904) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = sub_23DD42338();
  v7 = sub_23DD41638();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23DCDB000, v7, v6, "AccountAddViewModel.validateEmailAddress(:) begin", v8, 2u);
    MEMORY[0x23EEFE6D0](v8, -1, -1);
  }

  v9 = *(v0 + 856);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);

  v12 = *(v10 + 8);
  *(v0 + 912) = v12;
  v12(v9, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  if (*(v0 + 1080))
  {
    v13 = *(v0 + 712);
    v14 = *(v0 + 704);
    v15 = *(v0 + 696);
    v16 = *(v0 + 656);
    v17 = *(v0 + 648);
    v18 = *(v0 + 640);
    v19 = *(v0 + 296);
    *(v0 + 192) = *(v0 + 288);
    *(v0 + 200) = v19;
    sub_23DD411C8();
    *(v0 + 920) = sub_23DCF4570();
    v20 = sub_23DD42478();
    *(v0 + 928) = v20;
    v52 = v21;
    *(v0 + 936) = v21;
    (*(v14 + 8))(v13, v15);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DD416D8();

    if ((*(v16 + 48))(v18, 1, v17) == 1)
    {
      sub_23DCEFA38(*(v0 + 640), &qword_27E30E5B0, &qword_23DD44B60);
LABEL_8:
      v22 = *(v0 + 304);
      v23 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_configResolver;
      *(v0 + 944) = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_configResolver;
      *(v0 + 952) = *(v22 + v23);

      sub_23DD414A8();
      sub_23DD41538();
      v24 = swift_task_alloc();
      *(v0 + 960) = v24;
      *v24 = v0;
      v24[1] = sub_23DD0741C;
      v25 = *(v0 + 608);
      v26 = *(v0 + 584);

      return MEMORY[0x28213A178](v25, v26);
    }

    (*(*(v0 + 656) + 32))(*(v0 + 688), *(v0 + 640), *(v0 + 648));
    if (sub_23DD413F8() == v20 && v29 == v52)
    {
    }

    else
    {
      v30 = sub_23DD42648();

      if ((v30 & 1) == 0)
      {
        v51 = *(v0 + 688);
        v44 = *(v0 + 656);
        v45 = *(v0 + 648);
        v46 = *(v0 + 632);
        v47 = *(v0 + 624);
        v48 = *(v0 + 304);
        (*(v44 + 56))(v46, 1, 1, v45);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DCFD8B0(v46, v47, &qword_27E30E5B0, &qword_23DD44B60);
        v49 = v48;
        sub_23DD416E8();
        sub_23DCEFA38(v46, &qword_27E30E5B0, &qword_23DD44B60);
        (*(v44 + 8))(v51, v45);
        goto LABEL_8;
      }
    }

    v31 = *(v0 + 688);
    v32 = *(v0 + 656);
    v33 = *(v0 + 648);
    v34 = *(v0 + 280);
    v53 = sub_23DD41388();
    v36 = v35;
    v37 = sub_23DD413F8();
    v39 = v38;
    v40 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
    v41 = v40[8];
    (*(v32 + 16))(&v34[v41], v31, v33);
    (*(v32 + 56))(&v34[v41], 0, 1, v33);
    (*(v32 + 8))(v31, v33);
    *v34 = 0;
    *(v34 + 1) = 0;
    *(v34 + 2) = 0;
    *(v34 + 3) = v53;
    *(v34 + 4) = v36;
    *(v34 + 5) = v37;
    *(v34 + 6) = v39;
    v42 = MEMORY[0x277D84F90];
    *&v34[v40[9]] = MEMORY[0x277D84F90];
    *&v34[v40[10]] = v42;
    (*(*(v40 - 1) + 56))(v34, 0, 1, v40);
  }

  else
  {
    v27 = *(v0 + 280);

    v28 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  }

  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_23DD0741C()
{
  v1 = *v0;
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 560);

  v5 = *(v3 + 8);
  v1[121] = v5;
  v1[122] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v6 = v1[110];
  v7 = v1[109];

  return MEMORY[0x2822009F8](sub_23DD075D0, v7, v6);
}

uint64_t sub_23DD075D0()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = sub_23DD41598();
  *(v0 + 984) = v4;
  sub_23DD41588();
  v5 = (*(v2 + 88))(v1, v3);
  v165 = v0;
  if (v5 != *MEMORY[0x277CE86E8])
  {
    v148 = v4;
    if (v5 == *MEMORY[0x277CE86F8])
    {
      (*(v0 + 896))(*(v0 + 768), *(v0 + 888), *(v0 + 720));
      v17 = sub_23DD42338();
      v18 = sub_23DD41638();
      v19 = os_log_type_enabled(v18, v17);
      v20 = *(v0 + 912);
      v21 = *(v0 + 768);
      v22 = *(v0 + 720);
      if (v19)
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "AccountAddViewModel.validateEmailAddress(:) validated empty";
LABEL_12:
        _os_log_impl(&dword_23DCDB000, v18, v17, v24, v23, 2u);
        MEMORY[0x23EEFE6D0](v23, -1, -1);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (v5 == *MEMORY[0x277CE8700])
    {
      (*(v0 + 896))(*(v0 + 760), *(v0 + 888), *(v0 + 720));
      v17 = sub_23DD42338();
      v18 = sub_23DD41638();
      v31 = os_log_type_enabled(v18, v17);
      v20 = *(v0 + 912);
      v21 = *(v0 + 760);
      v22 = *(v0 + 720);
      if (v31)
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "AccountAddViewModel.validateEmailAddress(:) invalid";
        goto LABEL_12;
      }

LABEL_13:

      v20(v21, v22);

      v146 = 0;
      v147 = 0;
      v144 = 0;
      v145 = 0;
      v25 = v0;
      goto LABEL_14;
    }

    if (v5 == *MEMORY[0x277CE86E0])
    {
      (*(v0 + 896))(*(v0 + 744), *(v0 + 888), *(v0 + 720));
      v91 = sub_23DD42338();
      v92 = sub_23DD41638();
      if (os_log_type_enabled(v92, v91))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_23DCDB000, v92, v91, "AccountAddViewModel.validateEmailAddress(:) valid but suspicious", v93, 2u);
        MEMORY[0x23EEFE6D0](v93, -1, -1);
      }

      v94 = *(v0 + 912);
      v95 = *(v0 + 744);
      v25 = v0;
      v96 = *(v0 + 720);

      v94(v95, v96);
      v97 = sub_23DD42138();
      v98 = [objc_opt_self() bundleWithIdentifier_];

      if (v98)
      {
        v102 = *(v0 + 968);
        v103 = *(v0 + 584);
        v104 = *(v0 + 560);
        v105 = sub_23DD42138();
        v106 = sub_23DD42138();
        v107 = [v98 localizedStringForKey:v105 value:v106 table:0];

        v108 = sub_23DD42178();
        v146 = v109;
        v147 = v108;

        sub_23DD415A8();
        sub_23DD41548();
        v102(v103, v104);
        v110 = sub_23DD421C8();
        v144 = v111;
        v145 = v110;

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      if (v5 == *MEMORY[0x277CE86F0])
      {
        v112 = *(v0 + 968);
        v164 = *(v0 + 896);
        v113 = *(v0 + 888);
        v114 = *(v0 + 848);
        v115 = *(v0 + 720);
        v116 = *(v0 + 584);
        v117 = *(v0 + 560);
        sub_23DD415A8();
        sub_23DD41548();
        v112(v116, v117);
        *(v0 + 992) = sub_23DD421C8();
        *(v0 + 1000) = v118;
        v164(v114, v113, v115);
        v119 = sub_23DD42338();
        v120 = sub_23DD41638();
        if (os_log_type_enabled(v120, v119))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          _os_log_impl(&dword_23DCDB000, v120, v119, "AccountAddViewModel.validateEmailAddress(:) validated good, running resolve", v121, 2u);
          MEMORY[0x23EEFE6D0](v121, -1, -1);
        }

        v122 = *(v0 + 944);
        v123 = v165[114];
        v124 = v165[106];
        v125 = v165[90];
        v126 = v165[38];

        v123(v124, v125);
        v165[126] = *(v126 + v122);

        sub_23DD415A8();
        v127 = swift_task_alloc();
        v165[127] = v127;
        *v127 = v165;
        v127[1] = sub_23DD088C8;
        v100 = v165[72];
        v101 = v165[60];
        v99 = v165[61];

        return MEMORY[0x28213A170](v99, v100, v101);
      }

      (*(v0 + 896))(*(v0 + 736), *(v0 + 888), *(v0 + 720));
      v128 = sub_23DD42338();
      v129 = sub_23DD41638();
      if (os_log_type_enabled(v129, v128))
      {
        v130 = swift_slowAlloc();
        *v130 = 0;
        _os_log_impl(&dword_23DCDB000, v129, v128, "AccountAddViewModel.validateEmailAddress(:) unknown default", v130, 2u);
        MEMORY[0x23EEFE6D0](v130, -1, -1);
      }

      v131 = *(v0 + 912);
      v132 = *(v0 + 736);
      v25 = v0;
      v133 = *(v0 + 720);

      v131(v132, v133);
      v134 = sub_23DD42138();
      v135 = [objc_opt_self() bundleWithIdentifier_];

      if (v135)
      {
        v136 = v25[68];
        v137 = v25[67];
        v138 = v25[66];
        v139 = sub_23DD42138();
        v140 = sub_23DD42138();
        v141 = [v135 localizedStringForKey:v139 value:v140 table:0];

        v142 = sub_23DD42178();
        v146 = v143;
        v147 = v142;

        (*(v137 + 8))(v136, v138);

        v144 = 0;
        v145 = 0;
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x28213A170](v99, v100, v101);
  }

  v6 = *(v0 + 896);
  v7 = *(v0 + 888);
  v8 = *(v0 + 752);
  v9 = *(v0 + 720);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 528);

  (*(v11 + 96))(v10, v12);
  v13 = *v10;
  v6(v8, v7, v9);
  v14 = sub_23DD42338();

  v15 = sub_23DD41638();
  v148 = v13;
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(v13 + 16);

    _os_log_impl(&dword_23DCDB000, v15, v14, "AccountAddViewModel.validateEmailAddress(:) found %ld suggestions", v16, 0xCu);
    MEMORY[0x23EEFE6D0](v16, -1, -1);
  }

  else
  {
  }

  v25 = v165;
  v26 = v165[121];
  v27 = v165[73];
  v28 = v165[70];
  (v165[114])(v165[94], v165[90]);
  sub_23DD415A8();
  sub_23DD41548();
  v26(v27, v28);
  v29 = sub_23DD421C8();
  v144 = v30;
  v145 = v29;

  v146 = 0;
  v147 = 0;
LABEL_14:
  if (sub_23DD421E8() < 1)
  {
    v161 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_85;
  }

LABEL_16:
  swift_beginAccess();
  v32 = qword_2814FD158;
  sub_23DCE6098();

  v33 = sub_23DD41418();

  v162 = *(v33 + 16);
  if (v162)
  {
    v34 = 0;
    v35 = v25[82];
    v158 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v160 = v33 + v158;
    v36 = (v35 + 8);
    v161 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
LABEL_85:
        swift_once();
        goto LABEL_16;
      }

      v37 = *(v35 + 72);
      v38 = *(v35 + 16);
      v38(v25[85], v160 + v37 * v34, v25[81]);
      v39 = sub_23DD413F8();
      v41 = v40;

      v42 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (!v42)
      {
        goto LABEL_27;
      }

      sub_23DD413F8();
      v25 = v165;
      v43 = sub_23DD42218();

      if ((v43 & 1) == 0)
      {
        goto LABEL_27;
      }

      v44 = v33;
      v45 = v165[117];
      v46 = v165[116];
      if (sub_23DD413F8() == v46 && v47 == v45)
      {
        break;
      }

      v48 = sub_23DD42648();

      v33 = v44;
      if (v48)
      {
        goto LABEL_27;
      }

      v38(v165[84], v165[85], v165[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = sub_23DCF2310(0, *(v161 + 2) + 1, 1, v161);
      }

      v50 = *(v161 + 2);
      v49 = *(v161 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v161 = sub_23DCF2310((v49 > 1), v50 + 1, 1, v161);
      }

      v52 = v165[84];
      v53 = v165[81];
      (*v36)(v165[85], v53);
      *(v161 + 2) = v51;
      v54 = v53;
      v25 = v165;
      (*(v35 + 32))(&v161[v158 + v50 * v37], v52, v54);
      v33 = v44;
      if (v51 == 3)
      {
        goto LABEL_38;
      }

LABEL_28:
      if (v162 == ++v34)
      {
        goto LABEL_38;
      }
    }

    v33 = v44;
LABEL_27:
    (*v36)(v25[85], v25[81]);
    goto LABEL_28;
  }

  v161 = MEMORY[0x277D84F90];
LABEL_38:

LABEL_39:
  v156 = *(v148 + 16);
  if (v156)
  {
    v55 = 0;
    v56 = v25[40];
    v57 = *(v56 + 16);
    v56 += 16;
    v159 = v57;
    v58 = v25[82];
    v150 = (*(v56 + 64) + 32) & ~*(v56 + 64);
    v157 = *(v56 + 56);
    v59 = (v58 + 8);
    v151 = (v58 + 32);
    v153 = v58;
    v155 = (v58 + 56);
    v149 = (v56 + 16);
    v154 = (v56 - 8);
    v152 = MEMORY[0x277D84F90];
    do
    {
      v163 = v55;
      v159(v25[42], v148 + v150 + v55 * v157, v25[39]);
      v60 = *(v161 + 2);
      if (v60)
      {
        v61 = &v161[(*(v153 + 80) + 32) & ~*(v153 + 80)];
        v62 = *(v153 + 72);
        v63 = *(v153 + 16);
        while (1)
        {
          v63(v25[83], v61, v25[81]);
          v64 = sub_23DD413F8();
          v66 = v65;
          sub_23DD41508();
          if (v64 == sub_23DD421C8() && v66 == v67)
          {
            break;
          }

          v69 = sub_23DD42648();

          if (v69)
          {
            goto LABEL_62;
          }

          v25 = v165;
          (*v59)(v165[83], v165[81]);
          v61 += v62;
          if (!--v60)
          {
            goto LABEL_51;
          }
        }

LABEL_62:
        v25 = v165;
        v82 = v165[81];
        v83 = v165[77];
        (*v151)(v83, v165[83], v82);
        (*v155)(v83, 0, 1, v82);
        sub_23DCEFA38(v83, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_51:
        v70 = v25[117];
        v71 = v25;
        v72 = v25[116];
        v73 = v71[77];
        (*v155)(v73, 1, 1, v71[81]);
        sub_23DCEFA38(v73, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v72 && v74 == v70)
        {

          v25 = v71;
        }

        else
        {
          v76 = sub_23DD42648();

          v25 = v71;
          if ((v76 & 1) == 0)
          {
            v159(v71[41], v71[42], v71[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v77 = v152;
            }

            else
            {
              v77 = sub_23DCF22E8(0, v152[2] + 1, 1, v152);
            }

            v79 = v77[2];
            v78 = v77[3];
            if (v79 >= v78 >> 1)
            {
              v77 = sub_23DCF22E8((v78 > 1), v79 + 1, 1, v77);
            }

            v80 = v71[41];
            v81 = v71[39];
            v77[2] = v79 + 1;
            v152 = v77;
            (*v149)(v77 + v150 + v79 * v157, v80, v81);
          }
        }
      }

      v55 = v163 + 1;
      (*v154)(v25[42], v25[39]);
    }

    while (v163 + 1 != v156);

    v84 = v152;
  }

  else
  {

    v84 = MEMORY[0x277D84F90];
  }

  v85 = v25[82];
  v86 = v25[81];
  v87 = v25[35];
  (*(v25[75] + 8))(v25[76], v25[74]);
  v88 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v85 + 56))(&v87[v88[8]], 1, 1, v86);
  *v87 = 0;
  *(v87 + 1) = v147;
  *(v87 + 2) = v146;
  *(v87 + 3) = 0;
  *(v87 + 4) = 0;
  *(v87 + 5) = v145;
  *(v87 + 6) = v144;
  *&v87[v88[9]] = v161;
  *&v87[v88[10]] = v84;
  (*(*(v88 - 1) + 56))(v87, 0, 1, v88);
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v89 = v25[1];

  return v89();
}

uint64_t sub_23DD088C8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[121];
  v5 = v2[72];
  v6 = v2[70];
  if (v0)
  {
    v8 = v3[59];
    v7 = v3[60];
    v9 = v3[58];

    (*(v8 + 8))(v7, v9);
    v4(v5, v6);
    v10 = v3[110];
    v11 = v3[109];
    v12 = sub_23DD0A494;
  }

  else
  {
    v4(v2[72], v2[70]);

    v10 = v3[110];
    v11 = v3[109];
    v12 = sub_23DD08AAC;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_23DD08AAC()
{
  v268 = v0;
  v1 = v0;
  v2 = v0[65];
  v5 = v0 + 63;
  v4 = v0[63];
  v3 = v5[1];
  v7 = v1[61];
  v6 = v1[62];
  (*(v4 + 56))(v7, 0, 1, v6);
  (*(v4 + 32))(v2, v7, v6);
  (*(v4 + 16))(v3, v2, v6);
  v8 = (*(v4 + 88))(v3, v6);
  v266 = v1;
  if (v8 == *MEMORY[0x277CE86C0])
  {
    v9 = v1[64];
    v10 = v1[57];
    v11 = v1[54];
    v12 = v1[55];
    v13 = v1[53];
    v14 = v1[50];
    v15 = v1[51];
    (*(v1[63] + 96))(v9, v1[62]);
    (*(v12 + 32))(v10, v9, v11);
    sub_23DD415F8();
    v16 = (*(v15 + 88))(v13, v14);
    if (v16 == *MEMORY[0x277CE8740])
    {
      (v1[112])(v1[105], v1[111], v1[90]);
      v17 = sub_23DD42338();
      v18 = sub_23DD41638();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_23DCDB000, v18, v17, "AccountAddViewModel.validateEmailAddress(:) custom OAuth: unimplemented", v19, 2u);
        MEMORY[0x23EEFE6D0](v19, -1, -1);
      }

      v20 = v18;
      v21 = v1[125];
      v22 = v1[114];
      v23 = v1[105];
      v24 = v1[90];
      v25 = v1[65];
      v26 = v1[62];
      v27 = v1[63];
      v28 = v1[57];
      v29 = v1[55];
      v30 = v1[54];
      v252 = v25;
      v259 = v266[53];
      v31 = v266[51];
      v242 = v26;
      v247 = v266[50];

      v32 = v21;
      v22(v23, v24);
      v33 = 0xD000000000000019;
      v34 = 0x800000023DD4BC10;
      v35 = v30;
      v1 = v266;
      (*(v29 + 8))(v28, v35);
      (*(v27 + 8))(v252, v242);
      (*(v31 + 8))(v259, v247);
LABEL_6:
      v36 = v1[123];
LABEL_34:
      v1[131] = v32;
      v1[130] = v34;
      v1[129] = v36;
      v1[128] = v33;
      v134 = [objc_opt_self() defaultStore];
      v1[132] = v134;
      if (v134)
      {
        v135 = v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1F8, &qword_23DD44B90);
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_23DD43570;
        *(v136 + 32) = v33;
        *(v136 + 40) = v34;
        v137 = sub_23DD42258();
        v1[133] = v137;

        v1[2] = v1;
        v1[7] = v1 + 34;
        v1[3] = sub_23DD0AFAC;
        v138 = swift_continuation_init();
        v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB08, &unk_23DD45F38);
        v1[10] = MEMORY[0x277D85DD0];
        v1[11] = 1107296256;
        v1[12] = sub_23DD0C6A8;
        v1[13] = &block_descriptor_507;
        v1[14] = v138;
        [v135 visibleTopLevelAccountsWithAccountTypeIdentifiers:v137 completion:v1 + 10];
        v134 = v1 + 2;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x282200938](v134);
    }

    v68 = v1[112];
    v69 = v1[111];
    if (v16 != *MEMORY[0x277CE8730] && v16 != *MEMORY[0x277CE8748] && v16 != *MEMORY[0x277CE8750] && v16 != *MEMORY[0x277CE8738])
    {
      if (v16 == *MEMORY[0x277CE8720])
      {
        v70 = v1[104];
        v71 = v1[90];

        v68(v70, v69, v71);
        v72 = sub_23DD42338();
        v73 = sub_23DD41638();
        if (os_log_type_enabled(v73, v72))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_23DCDB000, v73, v72, "AccountAddViewModel.validateEmailAddress(:) oauth type exchange consumer", v74, 2u);
          MEMORY[0x23EEFE6D0](v74, -1, -1);
        }

        v222 = v1[125];
        v75 = v1[114];
        v76 = v1[104];
        v77 = v1[90];
        v262 = v1[65];
        v78 = v1[63];
        v79 = v1[62];
        v80 = v1[57];
        v81 = v1[55];
        v82 = v1[54];

        v75(v76, v77);
        v33 = sub_23DD42178();
        v34 = v83;
        (*(v81 + 8))(v80, v82);
        (*(v78 + 8))(v262, v79);
        v32 = v222;

        v36 = MEMORY[0x277D84F90];
        goto LABEL_34;
      }

      v162 = v1[90];
      if (v16 == *MEMORY[0x277CE8728])
      {
        v68(v1[103], v1[111], v162);
        v163 = sub_23DD42338();
        v164 = sub_23DD41638();
        if (os_log_type_enabled(v164, v163))
        {
          v165 = swift_slowAlloc();
          *v165 = 0;
          _os_log_impl(&dword_23DCDB000, v164, v163, "AccountAddViewModel.validateEmailAddress(:) oauth type exchange enterprise", v165, 2u);
          MEMORY[0x23EEFE6D0](v165, -1, -1);
        }

        v224 = v1[125];
        v166 = v1[114];
        v167 = v1[103];
        v168 = v1[90];
        v264 = v1[65];
        v169 = v1[63];
        v170 = v1[62];
        v171 = v1[57];
        v172 = v1[55];
        v173 = v1[54];

        v166(v167, v168);
        v33 = 0xD000000000000019;
        v34 = 0x800000023DD4BC10;
        (*(v172 + 8))(v171, v173);
        (*(v169 + 8))(v264, v170);
        v32 = v224;
      }

      else
      {
        v68(v1[101], v1[111], v162);
        v208 = sub_23DD42338();
        v209 = sub_23DD41638();
        if (os_log_type_enabled(v209, v208))
        {
          v210 = swift_slowAlloc();
          *v210 = 0;
          _os_log_impl(&dword_23DCDB000, v209, v208, "AccountAddViewModel.validateEmailAddress(:) unknown default", v210, 2u);
          MEMORY[0x23EEFE6D0](v210, -1, -1);
        }

        v225 = v1[125];
        v211 = v1[114];
        v212 = v1[101];
        v213 = v1[90];
        v214 = v1[63];
        v215 = v1[57];
        v216 = v1[55];
        v217 = v1[54];
        v258 = v1[65];
        v265 = v1[53];
        v218 = v1[51];
        v246 = v1[62];
        v251 = v1[50];

        v211(v212, v213);
        v33 = 0xD000000000000019;
        v34 = 0x800000023DD4BC10;
        (*(v216 + 8))(v215, v217);
        v32 = v225;
        (*(v214 + 8))(v258, v246);
        (*(v218 + 8))(v265, v251);
      }

      goto LABEL_6;
    }

    v90 = v1[102];
    v91 = v1[90];
    v93 = v1[56];
    v92 = v1[57];
    v94 = v1[55];
    v95 = v266[54];

    v68(v90, v69, v91);
    v96 = sub_23DD42338();
    (*(v94 + 16))(v93, v92, v95);
    v1 = v266;
    v97 = sub_23DD41638();
    v98 = os_log_type_enabled(v97, v96);
    v99 = v266[114];
    v100 = v266[102];
    v101 = v266[90];
    v103 = v266[55];
    v102 = v266[56];
    v263 = v266[54];
    if (v98)
    {
      v249 = v266[102];
      v255 = v266[90];
      v105 = v266[51];
      v104 = v266[52];
      v106 = v266[50];
      v237 = v96;
      v107 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v267[0] = v234;
      *v107 = 136315138;
      v244 = v99;
      sub_23DD415F8();
      v108 = sub_23DD415D8();
      v110 = v109;
      (*(v105 + 8))(v104, v106);
      v266[32] = v108;
      v266[33] = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
      v111 = sub_23DD42188();
      v113 = v112;
      v114 = v102;
      v66 = *(v103 + 8);
      v66(v114, v263);
      v115 = sub_23DD2731C(v111, v113, v267);

      *(v107 + 4) = v115;
      _os_log_impl(&dword_23DCDB000, v97, v237, "AccountAddViewModel.validateEmailAddress(:) oauth type %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v234);
      MEMORY[0x23EEFE6D0](v234, -1, -1);
      MEMORY[0x23EEFE6D0](v107, -1, -1);

      v244(v249, v255);
    }

    else
    {

      v132 = v102;
      v66 = *(v103 + 8);
      v66(v132, v263);
      v99(v100, v101);
    }

    v117 = v266[57];
    v118 = v266[54];
    v120 = v266[51];
    v119 = v266[52];
    v121 = v266[50];
    sub_23DD415F8();
    v122 = sub_23DD415D8();
  }

  else
  {
    v37 = v1[112];
    v38 = v1[111];
    if (v8 != *MEMORY[0x277CE86B0])
    {
      v84 = v1[90];
      if (v8 == *MEMORY[0x277CE86B8])
      {
        v37(v1[99], v1[111], v84);
        v85 = sub_23DD42338();
        v86 = sub_23DD41638();
        if (os_log_type_enabled(v86, v85))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_23DCDB000, v86, v85, "AccountAddViewModel.validateEmailAddress(:) unknown type from resolver", v87, 2u);
          MEMORY[0x23EEFE6D0](v87, -1, -1);
        }

        v32 = v1[125];
        v88 = v1[114];
        v89 = v1[99];
      }

      else
      {
        v37(v1[98], v1[111], v84);
        v124 = sub_23DD42338();
        v86 = sub_23DD41638();
        if (os_log_type_enabled(v86, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_23DCDB000, v86, v124, "AccountAddViewModel.validateEmailAddress(:) unknown default from resolver", v125, 2u);
          MEMORY[0x23EEFE6D0](v125, -1, -1);
        }

        v32 = v1[125];
        v88 = v1[114];
        v89 = v1[98];
      }

      v126 = v1[90];
      v127 = v1[65];
      v128 = v1[64];
      v129 = v1[63];
      v130 = v266[62];

      v88(v89, v126);
      v34 = 0x800000023DD4BC10;
      v131 = *(v129 + 8);
      v131(v127, v130);
      v131(v128, v130);
      v1 = v266;
      v36 = v266[123];
      v33 = 0xD000000000000019;
      goto LABEL_34;
    }

    v39 = v1[100];
    v41 = v1[63];
    v40 = v1[64];
    v42 = v1[62];
    v43 = v1[49];
    v253 = v1[90];
    v260 = v1[48];
    v44 = v1[47];
    v45 = v1[46];

    (*(v41 + 96))(v40, v42);
    (*(v44 + 32))(v43, v40, v45);
    v37(v39, v38, v253);
    v46 = sub_23DD42338();
    v47 = v45;
    v1 = v266;
    (*(v44 + 16))(v260, v43, v47);
    v48 = sub_23DD41638();
    v49 = os_log_type_enabled(v48, v46);
    v50 = v266[114];
    v51 = v266[100];
    v52 = v266[90];
    v54 = v266[47];
    v53 = v266[48];
    v261 = v266[46];
    if (v49)
    {
      v248 = v266[100];
      v254 = v266[90];
      v56 = v266[44];
      v55 = v266[45];
      v57 = v266[43];
      v236 = v46;
      v58 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v267[0] = v233;
      *v58 = 136315138;
      v243 = v50;
      sub_23DD414E8();
      v59 = sub_23DD414C8();
      v61 = v60;
      (*(v56 + 8))(v55, v57);
      v266[30] = v59;
      v266[31] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E528, &qword_23DD44B80);
      v62 = sub_23DD42188();
      v64 = v63;
      v65 = v53;
      v66 = *(v54 + 8);
      v66(v65, v261);
      v67 = sub_23DD2731C(v62, v64, v267);

      *(v58 + 4) = v67;
      _os_log_impl(&dword_23DCDB000, v48, v236, "AccountAddViewModel.validateEmailAddress(:) known type: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v233);
      MEMORY[0x23EEFE6D0](v233, -1, -1);
      MEMORY[0x23EEFE6D0](v58, -1, -1);

      v243(v248, v254);
    }

    else
    {

      v116 = v53;
      v66 = *(v54 + 8);
      v66(v116, v261);
      v50(v51, v52);
    }

    v117 = v266[49];
    v119 = v266[45];
    v118 = v266[46];
    v121 = v266[43];
    v120 = v266[44];
    sub_23DD414E8();
    v122 = sub_23DD414C8();
  }

  v226 = v122;
  v34 = v123;
  (*(v120 + 8))(v119, v121);
  v66(v117, v118);
  v133 = v1[125];
  (*(v1[63] + 8))(v1[65], v1[62]);
  if (v34)
  {

    v36 = MEMORY[0x277D84F90];
    v32 = v133;
    v33 = v226;
    goto LABEL_34;
  }

  v219 = v1[124];
  v139 = sub_23DD421E8();
  v140 = MEMORY[0x277D84F90];
  v223 = v133;
  if (v139 <= 0)
  {
    v250 = MEMORY[0x277D84F90];
    goto LABEL_67;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_99;
  }

LABEL_40:
  swift_beginAccess();
  v141 = qword_2814FD158;
  sub_23DCE6098();

  v142 = sub_23DD41418();

  v256 = *(v142 + 16);
  if (v256)
  {
    v143 = 0;
    v144 = v1[82];
    v238 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v245 = v142 + v238;
    v145 = (v144 + 8);
    v250 = MEMORY[0x277D84F90];
    v240 = v142;
    while (1)
    {
      if (v143 >= *(v142 + 16))
      {
        __break(1u);
LABEL_99:
        swift_once();
        goto LABEL_40;
      }

      v1 = v266;
      v146 = *(v144 + 72);
      v147 = *(v144 + 16);
      v147(v266[85], v245 + v146 * v143, v266[81]);
      v148 = sub_23DD413F8();
      v150 = v149;

      v151 = HIBYTE(v150) & 0xF;
      if ((v150 & 0x2000000000000000) == 0)
      {
        v151 = v148 & 0xFFFFFFFFFFFFLL;
      }

      if (!v151)
      {
        goto LABEL_51;
      }

      sub_23DD413F8();
      v152 = sub_23DD42218();

      if ((v152 & 1) == 0)
      {
        goto LABEL_51;
      }

      v153 = v266[117];
      v154 = v266[116];
      if (sub_23DD413F8() == v154 && v155 == v153)
      {
        break;
      }

      v1 = v266;
      v156 = sub_23DD42648();

      v142 = v240;
      if (v156)
      {
        goto LABEL_51;
      }

      v147(v266[84], v266[85], v266[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v250 = sub_23DCF2310(0, *(v250 + 2) + 1, 1, v250);
      }

      v158 = *(v250 + 2);
      v157 = *(v250 + 3);
      v159 = v158 + 1;
      if (v158 >= v157 >> 1)
      {
        v250 = sub_23DCF2310((v157 > 1), v158 + 1, 1, v250);
      }

      v160 = v266[84];
      v161 = v266[81];
      (*v145)(v266[85], v161);
      *(v250 + 2) = v159;
      (*(v144 + 32))(&v250[v238 + v158 * v146], v160, v161);
      v142 = v240;
      if (v159 == 3)
      {
        goto LABEL_66;
      }

LABEL_52:
      if (v256 == ++v143)
      {
        goto LABEL_66;
      }
    }

    v1 = v266;
    v142 = v240;
LABEL_51:
    (*v145)(v1[85], v1[81]);
    goto LABEL_52;
  }

  v250 = MEMORY[0x277D84F90];
LABEL_66:

  v1 = v266;
  v140 = MEMORY[0x277D84F90];
LABEL_67:
  v235 = v140[2];
  v228 = v140;
  if (v235)
  {
    v174 = 0;
    v175 = v1[82];
    v176 = v1[40];
    v177 = *(v176 + 16);
    v176 += 16;
    v241 = v177;
    v221 = (*(v176 + 64) + 32) & ~*(v176 + 64);
    v232 = v140 + v221;
    v178 = (v175 + 8);
    v239 = *(v176 + 56);
    v227 = (v175 + 32);
    v229 = v175;
    v231 = (v175 + 56);
    v220 = (v176 + 16);
    v230 = (v176 - 8);
    do
    {
      v257 = v174;
      v241(v1[42], &v232[v174 * v239], v1[39]);
      v179 = *(v250 + 2);
      if (v179)
      {
        v180 = &v250[(*(v229 + 80) + 32) & ~*(v229 + 80)];
        v181 = *(v229 + 72);
        v182 = *(v229 + 16);
        while (1)
        {
          v182(v1[83], v180, v1[81]);
          v183 = sub_23DD413F8();
          v185 = v184;
          sub_23DD41508();
          if (v183 == sub_23DD421C8() && v185 == v186)
          {
            break;
          }

          v188 = sub_23DD42648();

          if (v188)
          {
            goto LABEL_90;
          }

          v1 = v266;
          (*v178)(v266[83], v266[81]);
          v180 += v181;
          if (!--v179)
          {
            goto LABEL_79;
          }
        }

LABEL_90:
        v1 = v266;
        v200 = v266[81];
        v201 = v266[77];
        (*v227)(v201, v266[83], v200);
        (*v231)(v201, 0, 1, v200);
        sub_23DCEFA38(v201, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_79:
        v189 = v1[117];
        v190 = v1[116];
        v191 = v1[77];
        (*v231)(v191, 1, 1, v1[81]);
        sub_23DCEFA38(v191, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v190 && v192 == v189)
        {
        }

        else
        {
          v194 = sub_23DD42648();

          if ((v194 & 1) == 0)
          {
            v241(v1[41], v1[42], v1[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v195 = v228;
            }

            else
            {
              v195 = sub_23DCF22E8(0, v228[2] + 1, 1, v228);
            }

            v197 = v195[2];
            v196 = v195[3];
            if (v197 >= v196 >> 1)
            {
              v195 = sub_23DCF22E8((v196 > 1), v197 + 1, 1, v195);
            }

            v198 = v1[41];
            v199 = v1[39];
            v195[2] = v197 + 1;
            v228 = v195;
            (*v220)(v195 + v221 + v197 * v239, v198, v199);
          }
        }
      }

      v174 = v257 + 1;
      (*v230)(v1[42], v1[39]);
    }

    while (v257 + 1 != v235);
  }

  v202 = v1[82];
  v203 = v1[81];
  v204 = v1[35];
  (*(v1[75] + 8))(v1[76], v1[74]);
  v205 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v202 + 56))(&v204[v205[8]], 1, 1, v203);
  *v204 = 0;
  *(v204 + 1) = 0;
  *(v204 + 2) = 0;
  *(v204 + 3) = v226;
  *(v204 + 4) = 0;
  *(v204 + 5) = v219;
  *(v204 + 6) = v223;
  *&v204[v205[9]] = v250;
  *&v204[v205[10]] = v228;
  (*(*(v205 - 1) + 56))(v204, 0, 1, v205);
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v206 = v1[1];

  return v206();
}

uint64_t sub_23DD0A494()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[97];
  v4 = v0[90];
  v5 = v0[61];
  (*(v0[63] + 56))(v5, 1, 1, v0[62]);
  sub_23DCEFA38(v5, &qword_27E30EB00, &qword_23DD45F30);
  v1(v3, v2, v4);
  v6 = sub_23DD42338();
  v7 = sub_23DD41638();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23DCDB000, v7, v6, "AccountAddViewModel.validateEmailAddress(:) error running resolve", v8, 2u);
    MEMORY[0x23EEFE6D0](v8, -1, -1);
  }

  v67 = v0[125];
  v9 = v0[114];
  v10 = v0[97];
  v11 = v0[90];

  v9(v10, v11);

  v66 = v0[124];
  v68 = v0[123];
  if (sub_23DD421E8() < 1)
  {
    v80 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_59;
  }

LABEL_5:
  swift_beginAccess();
  v12 = qword_2814FD158;
  sub_23DCE6098();

  v13 = sub_23DD41418();

  v82 = *(v13 + 16);
  if (v82)
  {
    v14 = 0;
    v15 = v0[82];
    v79 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v16 = (v15 + 8);
    v80 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
LABEL_59:
        swift_once();
        goto LABEL_5;
      }

      v17 = *(v15 + 72);
      v18 = *(v15 + 16);
      v18(v0[85], v13 + v79 + v17 * v14, v0[81]);
      v19 = sub_23DD413F8();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {
        goto LABEL_16;
      }

      sub_23DD413F8();
      v23 = sub_23DD42218();

      if ((v23 & 1) == 0)
      {
        goto LABEL_16;
      }

      v24 = v0[117];
      v25 = v0[116];
      if (sub_23DD413F8() == v25 && v26 == v24)
      {
        break;
      }

      v27 = sub_23DD42648();

      if (v27)
      {
        goto LABEL_16;
      }

      v18(v0[84], v0[85], v0[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_23DCF2310(0, *(v80 + 2) + 1, 1, v80);
      }

      v29 = *(v80 + 2);
      v28 = *(v80 + 3);
      if (v29 >= v28 >> 1)
      {
        v80 = sub_23DCF2310((v28 > 1), v29 + 1, 1, v80);
      }

      v30 = v0[84];
      v31 = v0[81];
      (*v16)(v0[85], v31);
      *(v80 + 2) = v29 + 1;
      (*(v15 + 32))(&v80[v79 + v29 * v17], v30, v31);
      if (v29 == 2)
      {
        goto LABEL_27;
      }

LABEL_17:
      if (v82 == ++v14)
      {
        goto LABEL_27;
      }
    }

LABEL_16:
    (*v16)(v0[85], v0[81]);
    goto LABEL_17;
  }

  v80 = MEMORY[0x277D84F90];
LABEL_27:

LABEL_28:
  v76 = *(v68 + 16);
  if (v76)
  {
    v32 = 0;
    v33 = v0[40];
    v34 = *(v33 + 16);
    v33 += 16;
    v78 = v34;
    v35 = v0[82];
    v70 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v77 = *(v33 + 56);
    v83 = (v35 + 8);
    v71 = (v35 + 32);
    v73 = v35;
    v75 = (v35 + 56);
    v69 = (v33 + 16);
    v74 = (v33 - 8);
    v72 = MEMORY[0x277D84F90];
    do
    {
      v81 = v32;
      v78(v0[42], v68 + v70 + v32 * v77, v0[39]);
      v36 = *(v80 + 2);
      if (v36)
      {
        v37 = &v80[(*(v73 + 80) + 32) & ~*(v73 + 80)];
        v38 = *(v73 + 72);
        v39 = *(v73 + 16);
        while (1)
        {
          v39(v0[83], v37, v0[81]);
          v40 = sub_23DD413F8();
          v42 = v41;
          sub_23DD41508();
          if (v40 == sub_23DD421C8() && v42 == v43)
          {
            break;
          }

          v45 = sub_23DD42648();

          if (v45)
          {
            goto LABEL_51;
          }

          (*v83)(v0[83], v0[81]);
          v37 += v38;
          if (!--v36)
          {
            goto LABEL_40;
          }
        }

LABEL_51:
        v57 = v0[81];
        v58 = v0[77];
        (*v71)(v58, v0[83], v57);
        (*v75)(v58, 0, 1, v57);
        sub_23DCEFA38(v58, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_40:
        v46 = v0[117];
        v47 = v0[116];
        v48 = v0[77];
        (*v75)(v48, 1, 1, v0[81]);
        sub_23DCEFA38(v48, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v47 && v49 == v46)
        {
        }

        else
        {
          v51 = sub_23DD42648();

          if ((v51 & 1) == 0)
          {
            v78(v0[41], v0[42], v0[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v52 = v72;
            }

            else
            {
              v52 = sub_23DCF22E8(0, v72[2] + 1, 1, v72);
            }

            v54 = v52[2];
            v53 = v52[3];
            if (v54 >= v53 >> 1)
            {
              v52 = sub_23DCF22E8((v53 > 1), v54 + 1, 1, v52);
            }

            v55 = v0[41];
            v56 = v0[39];
            v52[2] = v54 + 1;
            v72 = v52;
            (*v69)(v52 + v70 + v54 * v77, v55, v56);
          }
        }
      }

      v32 = v81 + 1;
      (*v74)(v0[42], v0[39]);
    }

    while (v81 + 1 != v76);

    v59 = v72;
  }

  else
  {

    v59 = MEMORY[0x277D84F90];
  }

  v60 = v0[82];
  v61 = v0[81];
  v62 = v0[35];
  (*(v0[75] + 8))(v0[76], v0[74]);
  v63 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v60 + 56))(v62 + v63[8], 1, 1, v61);
  *v62 = 0u;
  *(v62 + 16) = 0u;
  *(v62 + 32) = 0;
  *(v62 + 40) = v66;
  *(v62 + 48) = v67;
  *(v62 + v63[9]) = v80;
  *(v62 + v63[10]) = v59;
  (*(*(v63 - 1) + 56))(v62, 0, 1, v63);
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v64 = v0[1];

  return v64();
}