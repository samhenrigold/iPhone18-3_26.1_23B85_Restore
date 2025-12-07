uint64_t sub_21CDFB51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsNavigationEventRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CDFB580(uint64_t a1)
{
  v2 = type metadata accessor for SettingsNavigationEventRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CDFB5DC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v22 = *(v3 + 16);
  v17 = v3 + 32;
  v18 = v2 + 32;

  v20 = v2;

  v19 = v3;

  v5 = 0;
  while (1)
  {
    if (v5 >= v22)
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *(v20 + 16))
    {
      goto LABEL_12;
    }

    v6 = (v18 + 16 * v5);
    v7 = v6[1];
    *&v29 = *v6;
    *(&v29 + 1) = v7;
    if (v5 >= *(v19 + 16))
    {
      goto LABEL_13;
    }

    sub_21CDE4CF4(v17 + 40 * v5++, v30);
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v32 = v29;
    sub_21CDE4CD8(v27, &v33);

LABEL_8:
    v36 = v32;
    v37[0] = v33;
    v37[1] = v34;
    v38 = v35;
    if (!*(&v32 + 1))
    {
    }

    sub_21CDE4CD8(v37, &v32);
    v8 = v34;
    v26 = *(&v33 + 1);
    __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    *&v29 = *a1;
    v9 = v29;
    *(&v29 + 1) = v10;
    LOBYTE(v30[0]) = v11;
    v12 = type metadata accessor for SettingsNavigationEventRecord(0);
    v13 = (a1 + v12[8]);
    v14 = v13[1];
    v24 = *v13;
    v25 = v12[7];
    v15 = v12[5];
    v16 = *(a1 + v12[6]);
    v23 = *(v8 + 16);
    sub_21CDEFF74(v9, v10);
    v23(&v29, v24, v14, a1 + v15, v16, a1 + v25, v26, v8);
    sub_21CDEFF7C(v29, *(&v29 + 1));
    result = __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t SettingsEventCenter.emitNavigationEventForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SettingsNavigationEventRecord(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  v14 = v9[7];
  v15 = sub_21CE6B960();
  (*(*(v15 - 8) + 16))(&v11[v14], a2, v15);
  v16 = v9[9];
  v17 = sub_21CE6BA60();
  (*(*(v17 - 8) + 16))(&v11[v16], a4, v17);
  v18 = &v11[v9[10]];
  *v11 = v12;
  *(v11 + 1) = v13;
  v11[16] = a1;
  *&v11[v9[8]] = a3;
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_21CDEFF74(v12, v13);

  sub_21CE6BE60();

  return sub_21CDFB580(v11);
}

uint64_t SettingsEventCenter.emitNavigationEventForApplicationSetting(associatedApplicationBundleIdentifier:title:localizedNavigationComponents:deepLink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SettingsNavigationEventRecord(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[7];
  v15 = sub_21CE6B960();
  (*(*(v15 - 8) + 16))(&v13[v14], a3, v15);
  v16 = v11[9];
  v17 = sub_21CE6BA60();
  (*(*(v17 - 8) + 16))(&v13[v16], a5, v17);
  v18 = &v13[v11[10]];
  *v13 = a1;
  *(v13 + 1) = a2;
  v13[16] = 1;
  *&v13[v11[8]] = a4;
  *v18 = a1;
  *(v18 + 1) = a2;
  swift_bridgeObjectRetain_n();

  sub_21CE6BE60();

  return sub_21CDFB580(v13);
}

uint64_t SettingsEventCenter.removeResponder<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(*(a3 + 8) + 8))();
  v5 = v4;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  swift_beginAccess();
  sub_21CDE48B8(v7, v3, v5);
  return swift_endAccess();
}

uint64_t sub_21CDFBBAC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x21CF19C80](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_21CDFBC4C(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_21CDFBC4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x21CF19C80](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x21CF19C90](v8, a4);
    sub_21CDFBCCC(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_21CDFBD1C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_21CE6D4B0();

        sub_21CE6CCA0();
        v7 = sub_21CE6D4E0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_21CE6BC10();

        if (v8)
        {
          while (1)
          {
            sub_21CE6BC60();
          }
        }

        v7 = sub_21CE6BC50();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_21CDFBE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_21CE6D4B0();
  sub_21CE6CCA0();
  result = sub_21CE6D4E0();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_21CE6BC10();
    result = sub_21CE6BC40();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_21CE6D400())
          {
            break;
          }

          sub_21CE6BC60();
          result = sub_21CE6BC40();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_21CDFBF98(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_21CDFC198(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x21CF19C60]())
  {
LABEL_16:
    v11 = sub_21CDFC198(a1);
    sub_21CDFBBAC();
    return v11;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_21CE6BC90();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = sub_21CDFC220(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_21CDFC418(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      return sub_21CDFC198(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21CDFC100@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CE12DFC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_21CDE4CD8(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21CDFC198(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CE12DE8(v3);
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

unint64_t sub_21CDFC220(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = sub_21CE6BC10();
  sub_21CE6BC60();
  if (v14)
  {
    v7 = sub_21CE6BC20();
    while (1)
    {
      result = sub_21CE6BC40();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_21CE6D4B0();

      sub_21CE6CCA0();
      v10 = sub_21CE6D4E0();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_21CE6BC40();
      v6 = a1;
      sub_21CE6BC30();
LABEL_3:
      sub_21CE6BC60();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_21CE6BC30();
}

uint64_t sub_21CDFC418(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v6) / 2)
    {
      result = MEMORY[0x21CF19C50](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            sub_21CE6D4B0();

            sub_21CE6CCA0();
            result = sub_21CE6D4E0();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_21CE6BC10())
            {
              while (1)
              {
                v11 = sub_21CE6BC40();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_21CE6BC60();
              }
            }

            result = v10 + v6;
            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            sub_21CE6BC50();

            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_21CE6BC10();
      v19 = sub_21CE6BC40();
      if ((v20 & 1) != 0 || v19 >= v8)
      {
LABEL_33:
        result = sub_21CE6BC60();
LABEL_18:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return result;
      }

      if (!__OFADD__(v19, v6))
      {
        sub_21CE6BC50();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_21CE6BC10();
      v21 = sub_21CE6BC40();
      if ((v22 & 1) == 0 && v21 >= v5)
      {
        v15 = __OFSUB__(v21, v6);
        result = v21 - v6;
        if (v15)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_21CE6BC50();
      }

      return sub_21CE6BC60();
    }

    v5 = a2;
    v18 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x21CF19C50](*a4 & 0x3FLL);
    if (v18 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v5)
    {
      do
      {
        sub_21CE6D4B0();

        sub_21CE6CCA0();
        result = sub_21CE6D4E0();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_21CE6BC10())
        {
          while (1)
          {
            v23 = sub_21CE6BC40();
            if ((v24 & 1) == 0 && v23 == v5)
            {
              break;
            }

            sub_21CE6BC60();
          }
        }

        sub_21CE6BC50();
      }

      while (++v5 != v9);
    }
  }

  return result;
}

uint64_t View.emitNavigationEventOnAppearForSystemSetting(icon:title:localizedNavigationComponents:deepLink:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v31 = a7;
  v32 = a5;
  v29 = a4;
  v30 = a3;
  v28 = a2;
  v8 = sub_21CE6BA60();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21CE6B960();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 8);
  v25 = *a1;
  v15 = *(a1 + 16);
  (*(v11 + 16))(v13, v28);
  (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v8);
  v16 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v9 + 80) + v17 + 8) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  v21 = v25;
  *(v19 + 16) = v25;
  *(v19 + 24) = v14;
  *(v19 + 32) = v15;
  (*(v11 + 32))(v19 + v16, v13, v20);
  *(v19 + v17) = v30;
  (*(v9 + 32))(v19 + v18, v27, v26);
  sub_21CDEFF74(v21, v14);

  sub_21CE6C8C0();
}

uint64_t sub_21CDFCB00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SettingsNavigationEventRecord(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281212FB0 != -1)
  {
    swift_once();
  }

  v15 = v12[5];
  v16 = sub_21CE6B960();
  (*(*(v16 - 8) + 16))(&v14[v15], a4, v16);
  v17 = v12[7];
  v18 = sub_21CE6BA60();
  (*(*(v18 - 8) + 16))(&v14[v17], a6, v18);
  v19 = &v14[v12[8]];
  *v14 = a1;
  *(v14 + 1) = a2;
  v14[16] = a3 & 1;
  *&v14[v12[6]] = a5;
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_21CDEFF74(a1, a2);

  sub_21CE6BE60();

  return sub_21CDFB580(v14);
}

uint64_t sub_21CDFCCB8()
{
  v1 = *(sub_21CE6B960() - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_21CE6BA60() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_21CDFCB00(v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t View.emitNavigationEventOnAppearForApplicationSetting(associatedApplicationBundleIdentifier:title:localizedNavigationComponents:deepLink:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a7;
  v27 = a8;
  v28 = a6;
  v24 = a5;
  v25 = a1;
  v26 = a4;
  v10 = sub_21CE6BA60();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CE6B960();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a3, v14);
  (*(v11 + 16))(v13, v24, v10);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v11 + 80) + v19 + 8) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a2;
  (*(v15 + 32))(v21 + v18, v17, v14);
  *(v21 + v19) = v26;
  (*(v11 + 32))(v21 + v20, v13, v23);

  sub_21CE6C8C0();
}

uint64_t sub_21CDFCFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SettingsNavigationEventRecord(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281212FB0 != -1)
  {
    swift_once();
  }

  v13 = v10[5];
  v14 = sub_21CE6B960();
  (*(*(v14 - 8) + 16))(&v12[v13], a3, v14);
  v15 = v10[7];
  v16 = sub_21CE6BA60();
  (*(*(v16 - 8) + 16))(&v12[v15], a5, v16);
  v17 = &v12[v10[8]];
  *v12 = a1;
  *(v12 + 1) = a2;
  v12[16] = 1;
  *&v12[v10[6]] = a4;
  *v17 = a1;
  *(v17 + 1) = a2;
  swift_bridgeObjectRetain_n();

  sub_21CE6BE60();

  return sub_21CDFB580(v12);
}

uint64_t sub_21CDFD1A8()
{
  v1 = *(sub_21CE6B960() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_21CE6BA60() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_21CDFCFF4(v6, v7, v0 + v2, v5, v8);
}

uint64_t sub_21CDFD288@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_2812128D8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_21CDE9220(&xmmword_2812128E0, v2);
}

uint64_t EnvironmentValues.settingsNavigationProxy.getter()
{
  sub_21CDE8FAC();

  return sub_21CE6C290();
}

uint64_t static SettingsNavigationProxyTrait.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_21CDE9220(&unk_281212888, a1);
}

uint64_t static SettingsNavigationProxyTrait.defaultValue.setter(uint64_t a1)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_21CDFD490(a1, &unk_281212888);
  swift_endAccess();
  return sub_21CDE93A8(a1);
}

uint64_t (*static SettingsNavigationProxyTrait.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CDFD574(uint64_t a1)
{
  if (qword_281212880 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_21CDFD490(a1, &unk_281212888);
  return swift_endAccess();
}

uint64_t UITraitCollection.settingsNavigationProxy.getter()
{
  sub_21CDE9098();

  return sub_21CE6CFC0();
}

uint64_t getEnumTagSinglePayload for SettingsNavigationProxyTrait(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SettingsNavigationProxyTrait(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t SettingsNavigationProxy.SettingsNavigationProxyError.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t sub_21CDFD7D8()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t sub_21CDFD84C(uint64_t a1)
{
  v2 = *v1;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v2);
  return sub_21CE6D4E0();
}

uint64_t SettingsNavigationProxy.stateDrivenNavigationPossible.getter()
{
  sub_21CDFDA00(v0, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v1 = v12;
    v2 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_2812132A0 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_281216608);
    v5 = sub_21CE6BD80();
    v6 = sub_21CE6CF30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21CDE1000, v5, v6, "Attempting to check state driven navigation support when the proxy doesn't have a responder.", v7, 2u);
      MEMORY[0x21CF1BD50](v7, -1, -1);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_21CDFDA00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF30, &qword_21CE70520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SettingsNavigationProxy.isPrimaryNavigationPathEmpty.getter()
{
  sub_21CDFDA00(v0, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v1 = v12;
    v2 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_27CE44248);
    v5 = sub_21CE6BD80();
    v6 = sub_21CE6CF10();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21CDE1000, v5, v6, "Attempting to check primary navigation path empty when the proxy doesn't have a responder.", v7, 2u);
      MEMORY[0x21CF1BD50](v7, -1, -1);
    }

    v3 = 1;
  }

  return v3 & 1;
}

uint64_t SettingsNavigationProxy.primaryNavigationPathCount.getter()
{
  sub_21CDFDA00(v0, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v1 = v12;
    v2 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_27CE44248);
    v5 = sub_21CE6BD80();
    v6 = sub_21CE6CF10();
    if (os_log_type_enabled(v5, v6))
    {
      v3 = -1;
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21CDE1000, v5, v6, "Attempting to check primary navigation path count when the proxy doesn't have a responder.", v7, 2u);
      MEMORY[0x21CF1BD50](v7, -1, -1);
    }

    else
    {

      return -1;
    }
  }

  return v3;
}

void SettingsNavigationProxy.appendToPrimaryNavigationPath<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CDFDA00(v9, &v21);
  if (v22)
  {
    sub_21CDE4CD8(&v21, v23);
    v10 = v24;
    v11 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v11 + 40))(a1, a2, a3, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_21CDE5494(&v21, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v12 = sub_21CE6BDA0();
    __swift_project_value_buffer(v12, qword_27CE44248);
    (*(v6 + 16))(v8, a1, a2);
    v13 = sub_21CE6BD80();
    v14 = sub_21CE6CF10();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315138;
      swift_getDynamicType();
      v17 = sub_21CE6D4F0();
      v19 = v18;
      (*(v6 + 8))(v8, a2);
      v20 = sub_21CDF2CC8(v17, v19, v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_21CDE1000, v13, v14, "Attempting to append value of type %s with a proxy that doesn't have a responder.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CF1BD50](v16, -1, -1);
      MEMORY[0x21CF1BD50](v15, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, a2);
    }
  }
}

void SettingsNavigationProxy.appendToPrimaryNavigationPath<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CDFDA00(v13, &v25);
  if (v26)
  {
    sub_21CDE4CD8(&v25, v27);
    v14 = v28;
    v15 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v15 + 48))(a1, a2, a3, a4, a5, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_21CDE5494(&v25, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v16 = sub_21CE6BDA0();
    __swift_project_value_buffer(v16, qword_27CE44248);
    (*(v10 + 16))(v12, a1, a2);
    v17 = sub_21CE6BD80();
    v18 = sub_21CE6CF10();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136315138;
      swift_getDynamicType();
      v21 = sub_21CE6D4F0();
      v23 = v22;
      (*(v10 + 8))(v12, a2);
      v24 = sub_21CDF2CC8(v21, v23, v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_21CDE1000, v17, v18, "Attempting to append value of type %s with a proxy that doesn't have a responder.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x21CF1BD50](v20, -1, -1);
      MEMORY[0x21CF1BD50](v19, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, a2);
    }
  }
}

Swift::Void __swiftcall SettingsNavigationProxy.removeLastFromPrimaryNavigationPath(_:)(Swift::Int a1)
{
  sub_21CDFDA00(v1, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v4 + 32))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v5 = sub_21CE6BDA0();
    __swift_project_value_buffer(v5, qword_27CE44248);
    v6 = sub_21CE6BD80();
    v7 = sub_21CE6CF10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CDE1000, v6, v7, "Attempting to remove values from primary navigation path when the proxy doesn't have a responder.", v8, 2u);
      MEMORY[0x21CF1BD50](v8, -1, -1);
    }
  }
}

void SettingsNavigationProxy.popToValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SettingsNavigationProxy.stateDrivenNavigationPossible.getter())
  {
    sub_21CDFDA00(v3, &v22);
    if (v23)
    {
      sub_21CDE4CD8(&v22, v24);
      v10 = v25;
      v11 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v11 + 56))(a1, a2, a3, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      sub_21CDE5494(&v22, &qword_27CE3FF30, &qword_21CE70520);
      if (qword_27CE3FA48 != -1)
      {
        swift_once();
      }

      v13 = sub_21CE6BDA0();
      __swift_project_value_buffer(v13, qword_27CE44248);
      (*(v7 + 16))(v9, a1, a2);
      v14 = sub_21CE6BD80();
      v15 = sub_21CE6CF10();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v24[0] = v27;
        *v16 = 136315138;
        swift_getDynamicType();
        v17 = sub_21CE6D4F0();
        v19 = v18;
        (*(v7 + 8))(v9, a2);
        v20 = sub_21CDF2CC8(v17, v19, v24);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_21CDE1000, v14, v15, "Attempting to pop to value of type %s with a proxy that doesn't have a responder.", v16, 0xCu);
        v21 = v27;
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x21CF1BD50](v21, -1, -1);
        MEMORY[0x21CF1BD50](v16, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v9, a2);
      }
    }
  }

  else
  {
    sub_21CDFFB58();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

void SettingsNavigationProxy.popToValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SettingsNavigationProxy.stateDrivenNavigationPossible.getter())
  {
    sub_21CDFDA00(v5, &v26);
    if (v27)
    {
      sub_21CDE4CD8(&v26, v28);
      v14 = v29;
      v15 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v15 + 64))(a1, a2, a3, a4, a5, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      sub_21CDE5494(&v26, &qword_27CE3FF30, &qword_21CE70520);
      if (qword_27CE3FA48 != -1)
      {
        swift_once();
      }

      v17 = sub_21CE6BDA0();
      __swift_project_value_buffer(v17, qword_27CE44248);
      (*(v11 + 16))(v13, a1, a2);
      v18 = sub_21CE6BD80();
      v19 = sub_21CE6CF10();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v28[0] = v31;
        *v20 = 136315138;
        swift_getDynamicType();
        v21 = sub_21CE6D4F0();
        v23 = v22;
        (*(v11 + 8))(v13, a2);
        v24 = sub_21CDF2CC8(v21, v23, v28);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_21CDE1000, v18, v19, "Attempting to pop to value of type %s with a proxy that doesn't have a responder.", v20, 0xCu);
        v25 = v31;
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x21CF1BD50](v25, -1, -1);
        MEMORY[0x21CF1BD50](v20, -1, -1);
      }

      else
      {

        (*(v11 + 8))(v13, a2);
      }
    }
  }

  else
  {
    sub_21CDFFB58();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall SettingsNavigationProxy.clearPrimaryNavigationPath()()
{
  sub_21CDFDA00(v0, &v7);
  if (v8)
  {
    sub_21CDE4CD8(&v7, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v2 + 72))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_21CDE5494(&v7, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v3 = sub_21CE6BDA0();
    __swift_project_value_buffer(v3, qword_27CE44248);
    v4 = sub_21CE6BD80();
    v5 = sub_21CE6CF10();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CDE1000, v4, v5, "Attempting to clear primary navigation path with a proxy that doesn't have a responder.", v6, 2u);
      MEMORY[0x21CF1BD50](v6, -1, -1);
    }
  }
}

Swift::Void __swiftcall SettingsNavigationProxy.resetNavigationState()()
{
  sub_21CDFDA00(v0, &v7);
  if (v8)
  {
    sub_21CDE4CD8(&v7, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v2 + 80))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_21CDE5494(&v7, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v3 = sub_21CE6BDA0();
    __swift_project_value_buffer(v3, qword_27CE44248);
    v4 = sub_21CE6BD80();
    v5 = sub_21CE6CF10();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CDE1000, v4, v5, "Attempting to reset navigation state with a proxy that doesn't have a responder.", v6, 2u);
      MEMORY[0x21CF1BD50](v6, -1, -1);
    }
  }
}

uint64_t SettingsNavigationProxy.setPrimaryNavigationPath<each A>(_:)(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = TupleTypeMetadata;
  v6 = 8 * a2;
  v41 = a4;
  v42 = a3;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21CE6C090();
  v40 = v37;
  v38 = *(v39 - 8);
  v23 = MEMORY[0x28223BE20](v39);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[1] = v37;
  MEMORY[0x28223BE20](v23);
  v26 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v27 = (v42 & 0xFFFFFFFFFFFFFFFELL);
    v28 = (v7 + 32);
    v29 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = a2;
    do
    {
      if (a2 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *v28;
      }

      v33 = *v27++;
      v32 = v33;
      v34 = &v22[v31];
      v35 = *v5++;
      (*(*(v32 - 8) + 16))(&v22[v31], v35);
      *v29++ = v34;
      v28 += 4;
      --v30;
    }

    while (v30);
  }

  sub_21CDFEFE0(v26, a2, v42, v41, v25);
  SettingsNavigationProxy.setPrimaryNavigationPath(_:)(v25);
  return (*(v38 + 8))(v25, v39);
}

uint64_t sub_21CDFEFE0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  v48 = a5;
  v49 = a1;
  v6 = 8 * a2;
  v51 = a3;
  v47 = a4;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v9 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v10 = 0;
      v11 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != v5)
      {
LABEL_9:
        v16 = v5 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v50 = TupleTypeMetadata;
  v45 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21CE6C090();
  v46 = &v42;
  v42 = *(v23 - 8);
  v43 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21CE6C080();
  v44 = &v42;
  MEMORY[0x28223BE20](v26);
  v27 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v5)
  {
    v28 = (v51 & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v50 + 32);
    v30 = v49;
    v31 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = v5;
    do
    {
      if (v5 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *v29;
      }

      v35 = *v28++;
      v34 = v35;
      v36 = &v22[v33];
      v37 = *v30++;
      (*(*(v34 - 8) + 16))(&v22[v33], v37);
      *v31++ = v36;
      v29 += 4;
      --v32;
    }

    while (v32);
  }

  v38 = v51;
  sub_21CDFF914(v27, v5, v51, v47);
  (*(v45 + 8))(v22, v50);
  result = (*(v42 + 32))(v48, v25, v43);
  if (v5)
  {
    v40 = (v38 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v41 = v49 - 1;
    do
    {
      result = (*(*(*(v40 + 8 * v5) - 8) + 8))(v41[v5]);
      --v5;
    }

    while (v5);
  }

  return result;
}

void SettingsNavigationProxy.setPrimaryNavigationPath(_:)(uint64_t a1)
{
  sub_21CDFDA00(v1, &v9);
  if (v10)
  {
    sub_21CDE4CD8(&v9, v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v4 + 88))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_21CDE5494(&v9, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v5 = sub_21CE6BDA0();
    __swift_project_value_buffer(v5, qword_27CE44248);
    v6 = sub_21CE6BD80();
    v7 = sub_21CE6CF10();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CDE1000, v6, v7, "Attempting to set a navigation path with a proxy that doesn't have a responder.", v8, 2u);
      MEMORY[0x21CF1BD50](v8, -1, -1);
    }
  }
}

uint64_t SettingsNavigationProxy.setPrimaryNavigationPath<each A>(_:)(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = TupleTypeMetadata;
  v8 = 8 * a2;
  v43 = a6;
  v44 = a3;
  if (a2 == 1)
  {
    v9 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v11 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v12 = 0;
      v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v12 != a2)
      {
LABEL_9:
        v18 = a2 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21CE6C090();
  v42 = v39;
  v40 = *(v41 - 8);
  v25 = MEMORY[0x28223BE20](v41);
  v27 = v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[1] = v39;
  MEMORY[0x28223BE20](v25);
  v28 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v29 = (v44 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v9 + 32);
    v31 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = a2;
    do
    {
      if (a2 == 1)
      {
        v33 = 0;
      }

      else
      {
        v33 = *v30;
      }

      v35 = *v29++;
      v34 = v35;
      v36 = &v24[v33];
      v37 = *v7++;
      (*(*(v34 - 8) + 16))(&v24[v33], v37);
      *v31++ = v36;
      v30 += 4;
      --v32;
    }

    while (v32);
  }

  sub_21CDFEFE0(v28, a2, v44, v43, v27);
  SettingsNavigationProxy.setPrimaryNavigationPath(_:)(v27);
  return (*(v40 + 8))(v27, v41);
}

uint64_t SettingsNavigationProxy.getPrimaryNavigationPath()()
{
  sub_21CDFDA00(v0, &v8);
  if (v9)
  {
    sub_21CDE4CD8(&v8, v10);
    v1 = v11;
    v2 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v2 + 96))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_21CDE5494(&v8, &qword_27CE3FF30, &qword_21CE70520);
    if (qword_27CE3FA48 != -1)
    {
      swift_once();
    }

    v4 = sub_21CE6BDA0();
    __swift_project_value_buffer(v4, qword_27CE44248);
    v5 = sub_21CE6BD80();
    v6 = sub_21CE6CF10();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21CDE1000, v5, v6, "Attempting to get a navigation path with a proxy that doesn't have a responder.", v7, 2u);
      MEMORY[0x21CF1BD50](v7, -1, -1);
    }

    return sub_21CE6C080();
  }
}

uint64_t static SettingsNavigationProxy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2 & 1) != 0 || (v3)
  {
    return v2 & v3;
  }

  else
  {
    return MEMORY[0x282133E80](*(a1 + 40), *(a2 + 40));
  }
}

char **sub_21CDFF914(char **result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = result;
    v5 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v6 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v13[4] = v13;
      v14 = a2;
      v7 = *v5;
      v13[2] = *v6;
      v8 = *(v7 - 8);
      v9 = *(v8 + 64);
      MEMORY[0x28223BE20](result);
      v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = *(v8 + 16);
      v12 = v11(v13 - v10, *v4, v7);
      v13[3] = v13;
      MEMORY[0x28223BE20](v12);
      v11(v13 - v10, v13 - v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FF48, &qword_21CE706D8);
      if (swift_dynamicCast())
      {
        sub_21CDFFD2C(v15, v17);
        __swift_project_boxed_opaque_existential_1(v17, v17[3]);
        sub_21CE6C070();
        (*(v8 + 8))(v13 - v10, v7);
        result = __swift_destroy_boxed_opaque_existential_1(v17);
      }

      else
      {
        v16 = 0;
        memset(v15, 0, sizeof(v15));
        sub_21CDE5494(v15, &qword_27CE3FF50, &unk_21CE706E0);
        sub_21CE6C060();
        result = (*(v8 + 8))(v13 - v10, v7);
      }

      ++v4;
      ++v6;
      ++v5;
      a2 = v14 - 1;
    }

    while (v14 != 1);
  }

  return result;
}

unint64_t sub_21CDFFB58()
{
  result = qword_27CE3FF38;
  if (!qword_27CE3FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FF38);
  }

  return result;
}

unint64_t sub_21CDFFBB0()
{
  result = qword_27CE3FF40;
  if (!qword_27CE3FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE3FF40);
  }

  return result;
}

uint64_t sub_21CDFFD2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t _s8Settings0A10PaneRecipeV11descriptionSSvg_0()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_21CE6D290();
  v10 = 0;
  v11 = 0xE000000000000000;
  MEMORY[0x21CF1ACB0](0xD000000000000012, 0x800000021CE70780);
  MEMORY[0x21CF1ACB0](0xD000000000000014, 0x800000021CE76160);
  MEMORY[0x21CF1ACB0](*v1, v1[1]);
  MEMORY[0x21CF1ACB0](0x656C646E7562202CLL, 0xEE00203A656D614ELL);
  MEMORY[0x21CF1ACB0](v1[2], v1[3]);
  MEMORY[0x21CF1ACB0](0xD000000000000012, 0x800000021CE76180);
  v3 = type metadata accessor for SettingsPaneRecipe(0);
  type metadata accessor for NSBundle.PluginLocation(0);
  sub_21CE6D340();
  v4 = *(v3 + 28);
  sub_21CE00700(v1 + v4, v8);
  v5 = v9;
  sub_21CDE5494(v8, qword_27CE40D00, &qword_21CE706F0);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_5;
  }

  result = sub_21CE00700(v1 + v4, v8);
  if (v9)
  {
    sub_21CDE5494(v8, qword_27CE40D00, &qword_21CE706F0);
    MEMORY[0x21CF1ACB0](0x6168736148796E41, 0xEB00000000656C62);
    v7 = 0x3A65756C6176202CLL;
    v2 = 0xE900000000000020;
LABEL_5:
    MEMORY[0x21CF1ACB0](v7, v2);

    MEMORY[0x21CF1ACB0](41, 0xE100000000000000);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t SettingsPaneRecipe.init(bundleName:pluginLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SettingsPaneRecipe(0);
  v9 = a4 + *(v8 + 28);
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *a4 = 0x50746C7561666544;
  a4[1] = 0xEB00000000656E61;
  a4[2] = a1;
  a4[3] = a2;
  v10 = a4 + *(v8 + 24);

  return sub_21CE00044(a3, v10);
}

uint64_t SettingsPaneRecipe.init(contentIdentifier:bundleName:pluginLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for SettingsPaneRecipe(0);
  v13 = a6 + *(v12 + 28);
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v14 = a6 + *(v12 + 24);

  return sub_21CE00044(a5, v14);
}

uint64_t sub_21CE00044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSBundle.PluginLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SettingsPaneRecipe.init<A>(contentIdentifier:bundleName:pluginLocation:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v25 = a4;
  v17 = *(a7 - 8);
  v24[1] = a10;
  MEMORY[0x28223BE20](a1);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SettingsPaneRecipe(0);
  sub_21CE0021C(a5, a8 + *(v20 + 24));
  v21 = a8 + *(v20 + 28);
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *a8 = a1;
  a8[1] = a2;
  v22 = v25;
  a8[2] = a3;
  a8[3] = v22;
  (*(v17 + 16))(v19, a6, a7);
  sub_21CE6D230();
  (*(v17 + 8))(a6, a7);
  sub_21CE00280(a5);
  return sub_21CE002DC(v26, v21);
}

uint64_t sub_21CE0021C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NSBundle.PluginLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE00280(uint64_t a1)
{
  v2 = type metadata accessor for NSBundle.PluginLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CE002DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE40D00, &qword_21CE706F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SettingsPaneRecipe.hash(into:)(uint64_t a1)
{
  sub_21CE6CCA0();
  sub_21CE6CCA0();
  v2 = type metadata accessor for SettingsPaneRecipe(0);
  sub_21CE6BA60();
  sub_21CDE8A7C(&qword_2812132C0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21CE6CB80();
  type metadata accessor for NSBundle.PluginLocation(0);
  sub_21CE6CCA0();
  sub_21CE00700(v1 + *(v2 + 28), &v6);
  if (!*(&v7 + 1))
  {
    return sub_21CE6D4D0();
  }

  v4[0] = v6;
  v4[1] = v7;
  v5 = v8;
  sub_21CE6D4D0();
  sub_21CE6D220();
  return sub_21CE00770(v4);
}

uint64_t SettingsPaneRecipe.hashValue.getter()
{
  sub_21CE6D4B0();
  SettingsPaneRecipe.hash(into:)(v1);
  return sub_21CE6D4E0();
}

uint64_t sub_21CE004BC()
{
  sub_21CE6D4B0();
  SettingsPaneRecipe.hash(into:)(v1);
  return sub_21CE6D4E0();
}

uint64_t sub_21CE00500(uint64_t a1)
{
  sub_21CE6D4B0();
  SettingsPaneRecipe.hash(into:)(v2);
  return sub_21CE6D4E0();
}

BOOL _s8Settings0A10PaneRecipeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21CE6D400() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_21CE6D400() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for SettingsPaneRecipe(0);
  v7 = *(v6 + 24);
  v8 = a1 + v7;
  v9 = a2 + v7;
  if ((sub_21CE6B9E0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for NSBundle.PluginLocation(0) + 20);
  v11 = *&v8[v10];
  v12 = *&v8[v10 + 8];
  v13 = &v9[v10];
  v14 = v11 == *v13 && v12 == *(v13 + 1);
  if (!v14 && (sub_21CE6D400() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v6 + 28);
  sub_21CE00700(a1 + v15, v21);
  sub_21CE00700(a2 + v15, &v23);
  if (v22)
  {
    sub_21CE00700(v21, v20);
    if (*(&v24 + 1))
    {
      v18[0] = v23;
      v18[1] = v24;
      v19 = v25;
      v16 = MEMORY[0x21CF1B1E0](v20, v18);
      sub_21CE00770(v18);
      sub_21CE00770(v20);
      sub_21CDE5494(v21, qword_27CE40D00, &qword_21CE706F0);
      return (v16 & 1) != 0;
    }

    sub_21CE00770(v20);
  }

  else if (!*(&v24 + 1))
  {
    sub_21CDE5494(v21, qword_27CE40D00, &qword_21CE706F0);
    return 1;
  }

  sub_21CDE5494(v21, &qword_27CE3FF58, &qword_21CE74E00);
  return 0;
}

uint64_t sub_21CE00700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE40D00, &qword_21CE706F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v5);
  (*(v11 + 32))(a5, v13, a3);
  result = type metadata accessor for OnSettingsExperienceOpenURLModifier(0, a3, a4, v14);
  v16 = (a5 + *(result + 36));
  *v16 = a1;
  v16[1] = a2;
  return result;
}

uint64_t sub_21CE008F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for OnSettingsExperienceOpenURLModifier(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_21CE00990(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_21CE00D24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CE00A18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_21CE00B54(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_21CE00D24()
{
  result = qword_2812117D8;
  if (!qword_2812117D8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2812117D8);
  }

  return result;
}

uint64_t sub_21CE00D80(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 36));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(v5 + 32);

  v7(v9, v6, v5);
}

uint64_t _SettingsExperienceContentInputs.onSettingsExperienceOpenURLActionHandler.getter()
{
  v1 = *v0;

  return v1;
}

__n128 _SettingsExperienceContentOutputs.init(item:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB8, &qword_21CE708D0);
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 16) = xmmword_21CE702B0;
  *(v4 + 32) = v5;
  result = a1[2];
  v8 = a1[3];
  *(v4 + 48) = v6;
  *(v4 + 64) = result;
  *(v4 + 80) = v8;
  *a2 = v4;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CE00F50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CE00F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21CE0100C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_21CE01054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_21CE010C0()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[5])
  {
    v5 = 0;
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD000000000000022, 0x800000021CE761A0);
    MEMORY[0x21CF1ACB0](v1, v2);
    MEMORY[0x21CF1ACB0](0x795461746164202CLL, 0xEC000000203A6570);
    v3 = sub_21CE6D4F0();
    MEMORY[0x21CF1ACB0](v3);
  }

  else
  {
    sub_21CE6D290();

    v5 = 0xD000000000000022;
    MEMORY[0x21CF1ACB0](v1, v2);
  }

  MEMORY[0x21CF1ACB0](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_21CE011EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21CE0120C, 0, 0);
}

uint64_t sub_21CE0120C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(type metadata accessor for SettingsExperienceOpenURLAction.Input(0) + 20);
  v4 = sub_21CE6C090();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);
  swift_storeEnumTagMultiPayload();
  v5 = v0[1];

  return v5();
}

uint64_t static SettingsExperienceOpenURLAction.Result.handled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CE6C090();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SettingsExperienceOpenURLAction.Input.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CE6BA60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SettingsExperienceOpenURLAction.Input.url.setter(uint64_t a1)
{
  v3 = sub_21CE6BA60();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SettingsExperienceOpenURLAction.Input.navigationPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsExperienceOpenURLAction.Input(0) + 20);
  v4 = sub_21CE6C090();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsExperienceOpenURLAction.Input.navigationPath.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsExperienceOpenURLAction.Input(0) + 20);
  v4 = sub_21CE6C090();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SettingsExperienceOpenURLAction.Input.init(url:navigationPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CE6BA60();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SettingsExperienceOpenURLAction.Input(0) + 20);
  v8 = sub_21CE6C090();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t static SettingsExperienceOpenURLAction.Result.openSettingsExperience(_:navigationPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE3FF60, &qword_21CE70A70) + 48);
  sub_21CE01738(a1, a3);
  v7 = sub_21CE6C090();
  (*(*(v7 - 8) + 16))(a3 + v6, a2, v7);
  type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21CE01738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE017D4(uint64_t a1)
{
  result = sub_21CE6BA60();
  if (v2 <= 0x3F)
  {
    result = sub_21CE6C090();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CE018A0(uint64_t a1)
{
  result = type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21CE0195C(uint64_t a1)
{
  sub_21CE6C090();
  if (v1 <= 0x3F)
  {
    sub_21CE019D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21CE019D0(uint64_t a1)
{
  if (!qword_281212FC0[0])
  {
    type metadata accessor for SettingsPaneRecipe(255);
    sub_21CE6C090();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_281212FC0);
    }
  }
}

uint64_t sub_21CE01A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21CE01ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_21CE01B24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t SettingsExperienceContent._collectSettingsExperienceContentOutputs_v1(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(a3 + 24))(a2, a3);
  v12 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

void sub_21CE01DF4(uint64_t a1)
{
  sub_21CE6D290();

  v1 = sub_21CE6D4F0();
  MEMORY[0x21CF1ACB0](v1);

  MEMORY[0x21CF1ACB0](46, 0xE100000000000000);
  sub_21CE6D350();
  __break(1u);
}

uint64_t sub_21CE01EE0@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  if (!v2)
  {

    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v3 = v1;
  v4 = *(v2 + 16);

  if (!v4)
  {
LABEL_18:

    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v6 = 0;
  v7 = 32;
  while (v6 < *(v2 + 16))
  {
    v10 = *(v2 + v7 + 32);
    v9 = *(v2 + v7 + 48);
    v11 = *(v2 + v7 + 16);
    v25 = *(v2 + v7);
    v26 = v11;
    v27 = v10;
    v28 = v9;
    v12 = v25;
    v13 = v11;
    v14 = BYTE8(v10);
    sub_21CE00700(v3 + 40, &v20);
    if (*(&v21 + 1))
    {
      v23[0] = v20;
      v23[1] = v21;
      v24 = v22;
      if (!v14)
      {
        result = sub_21CE00770(v23);
        goto LABEL_6;
      }

      if (v12 == *(v3 + 24) || (sub_21CE6D400() & 1) != 0)
      {
        sub_21CE02F4C(&v25, v19);
        sub_21CE6D210();
        sub_21CE00770(v23);
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        DynamicType = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1(v19);
        if (DynamicType == v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_21CE02F4C(&v25, v19);
        sub_21CE00770(v23);
      }
    }

    else
    {
      sub_21CE02F4C(&v25, v19);
      sub_21CDE5494(&v20, qword_27CE40D00, &qword_21CE706F0);
      if (v14 & 1) == 0 && (v12 == *(v3 + 24) || (sub_21CE6D400()))
      {
LABEL_20:

        v16 = v26;
        *a1 = v25;
        a1[1] = v16;
        v17 = v28;
        a1[2] = v27;
        a1[3] = v17;
        return result;
      }
    }

    result = sub_21CE02FA8(&v25);
LABEL_6:
    ++v6;
    v7 += 64;
    if (v4 == v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

double SettingsExperienceContentCoordinator.__allocating_init(bundle:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0xEB00000000656E61;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0x50746C7561666544;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  return result;
}

uint64_t SettingsExperienceContentCoordinator.init(bundle:)(uint64_t a1)
{
  *(v1 + 32) = 0xEB00000000656E61;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0x50746C7561666544;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  return v1;
}

uint64_t SettingsExperienceContentCoordinator.deinit()
{
  *(v0 + 80) = 0;

  sub_21CDE5494(v0 + 40, qword_27CE40D00, &qword_21CE706F0);

  return v0;
}

uint64_t SettingsExperienceContentCoordinator.__deallocating_deinit()
{
  *(v0 + 80) = 0;

  sub_21CDE5494(v0 + 40, qword_27CE40D00, &qword_21CE706F0);

  return swift_deallocClassInstance();
}

void sub_21CE0226C()
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(v0 + 80))
  {
    v2 = *(v0 + 16);
    if (([v2 isLoaded] & 1) == 0)
    {
      v23[0] = 0;
      if (![v2 loadAndReturnError_])
      {
        v18 = v23[0];
        sub_21CE6B910();

LABEL_12:
        swift_willThrow();
        return;
      }

      v3 = v23[0];
    }

    v4 = v0;
    NSBundle.settingsExperiencePluginLoaderName.getter();
    if (v1)
    {
      return;
    }

    v20[2] = 0;
    v5 = sub_21CE6CC20();

    v6 = [v2 classNamed_];

    if (v6)
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        if (ObjCClassMetadata)
        {
          v9 = v8;
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v25 = AssociatedConformanceWitness;
          __swift_allocate_boxed_opaque_existential_1(v23);
          static _SettingsExperiencePluginLoading.load()(ObjCClassMetadata, v9);
          v11 = AssociatedTypeWitness;
          v12 = v25;
          __swift_project_boxed_opaque_existential_1(v23, AssociatedTypeWitness);
          v13 = swift_getAssociatedTypeWitness();
          v20[1] = v20;
          v14 = *(v13 - 8);
          MEMORY[0x28223BE20](v13);
          v16 = v20 - v15;
          (*(AssociatedConformanceWitness + 24))(v11, v12);
          v21[0] = &unk_21CE70AE0;
          v21[1] = 0;
          v17 = swift_getAssociatedConformanceWitness();
          (*(v17 + 32))(&v22, v21, v13, v17);

          (*(v14 + 8))(v16, v13);
          *(v4 + 80) = v22;

          __swift_destroy_boxed_opaque_existential_1(v23);
          return;
        }
      }
    }

    sub_21CE025C0();
    swift_allocError();
    *v19 = 3;
    goto LABEL_12;
  }
}

unint64_t sub_21CE025C0()
{
  result = qword_281212868;
  if (!qword_281212868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281212868);
  }

  return result;
}

double sub_21CE02614@<D0>(uint64_t a1@<X8>)
{
  sub_21CE01EE0(&v28);
  if (!v32)
  {
    sub_21CE025C0();
    v6 = swift_allocError();
    *v7 = 4;
    v22 = v6;
    LOWORD(v23) = 0;
    BYTE2(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FFE8, &unk_21CE71030);
    sub_21CDE8C68();
    sub_21CDE8D74();
    sub_21CE6C400();
    goto LABEL_16;
  }

  v4 = v29;
  v3 = v30;
  if (v31)
  {

    sub_21CE00700(v1 + 40, &v22);
    if (*(&v23 + 1))
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      sub_21CE6D210();
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(&v22);
      if (DynamicType == v4)
      {
        sub_21CE6D210();
        v3(&v22);
        __swift_destroy_boxed_opaque_existential_1(&v22);
        sub_21CDE8D20();
        sub_21CDE8D74();
        sub_21CE6C400();
        sub_21CE00770(&v25);
        v12 = v22;
        v13 = v23;
        goto LABEL_11;
      }

      sub_21CE00770(&v25);
    }

    else
    {
      sub_21CDE5494(&v22, qword_27CE40D00, &qword_21CE706F0);
    }

    sub_21CE025C0();
    v10 = swift_allocError();
    *v11 = 5;
    v22 = v10;
    LOBYTE(v23) = 1;
    sub_21CDE8D20();
    sub_21CDE8D74();
    sub_21CE6C400();
    v12 = v25;
    v13 = v26;
LABEL_11:
    v22 = v12;
    LOBYTE(v23) = v13;
    BYTE1(v23) = 1;
    v14 = v12;
    sub_21CE02A90(v12, *(&v12 + 1), v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FFF0, &qword_21CE70CA0);
    sub_21CDE8BD8(&qword_2812131F0, &qword_27CE3FFF0, &qword_21CE70CA0, sub_21CDE8D20);
    sub_21CE6C400();

    sub_21CE02AA0(v14, *(&v14 + 1), v13);
    goto LABEL_12;
  }

  v8 = swift_retain_n();
  v9 = v4(v8);

  v22 = v9;
  LOWORD(v23) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FFF0, &qword_21CE70CA0);
  sub_21CDE8BD8(&qword_2812131F0, &qword_27CE3FFF0, &qword_21CE70CA0, sub_21CDE8D20);
  sub_21CE6C400();

LABEL_12:
  v15 = v26;
  v16 = BYTE1(v26);
  if (BYTE1(v26))
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v22 = v25;
  LOWORD(v23) = v17 | v26;
  BYTE2(v23) = 0;
  v18 = v25;
  sub_21CE02AB0(v25, *(&v25 + 1), v26, SBYTE1(v26));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FFE8, &unk_21CE71030);
  sub_21CDE8C68();
  sub_21CDE8D74();
  sub_21CE6C400();
  sub_21CDE5494(&v28, &qword_27CE3FFF8, &qword_21CE70CA8);
  sub_21CE02AC0(v18, *(&v18 + 1), v15, v16);
LABEL_16:
  result = *&v25;
  v20 = v26;
  v21 = BYTE2(v26);
  *a1 = v25;
  *(a1 + 16) = v20;
  *(a1 + 18) = v21;
  return result;
}

id sub_21CE02A90(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_21CE02AA0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_21CE02AB0(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_21CE02A90(a1, a2, a3 & 1);
  }

  else
  {
  }
}

void sub_21CE02AC0(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    sub_21CE02AA0(a1, a2, a3 & 1);
  }

  else
  {
  }
}

void *sub_21CE02B58(void *a1)
{
  v31 = sub_21CE6BA60();
  v2 = *(v31 - 8);
  v3 = MEMORY[0x28223BE20](v31);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v29 = v27 - v6;
  v7 = type metadata accessor for NSBundle.PluginLocation(0);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[3];
  v28 = a1[2];
  v13 = type metadata accessor for SettingsPaneRecipe(0);
  sub_21CE0021C(a1 + *(v13 + 24), v9);
  v14 = *(v13 + 28);
  v30 = a1;
  sub_21CE00700(a1 + v14, v32);
  v27[2] = type metadata accessor for SettingsExperienceContentCoordinator();
  v15 = swift_allocObject();
  v15[10] = 0;
  v15[3] = v11;
  v15[4] = v10;
  sub_21CE00700(v32, (v15 + 5));

  v16 = v28;
  v17 = v12;
  sub_21CE6B9C0();
  v18 = v29;
  sub_21CE6B9D0();
  v19 = *(v2 + 8);
  v20 = v5;
  v21 = v31;
  v33 = v2 + 8;
  v19(v20, v31);
  if ((_sSo8NSBundleC8SettingsE30settingsExperiencePluginExists4name8locationSbSS_AbCE0E8LocationVtFZ_0(v16, v17, v9) & 1) != 0 && (v22 = objc_allocWithZone(MEMORY[0x277CCA8D8]), v23 = sub_21CE6B9B0(), v24 = [v22 initWithURL_], v23, v24))
  {
    v19(v18, v21);
    sub_21CE02EEC(v30, type metadata accessor for SettingsPaneRecipe);
    sub_21CDE5494(v32, qword_27CE40D00, &qword_21CE706F0);
    sub_21CE02EEC(v9, type metadata accessor for NSBundle.PluginLocation);
    v15[2] = v24;
  }

  else
  {
    sub_21CE025C0();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v19(v18, v21);
    sub_21CE02EEC(v30, type metadata accessor for SettingsPaneRecipe);
    sub_21CDE5494(v32, qword_27CE40D00, &qword_21CE706F0);
    sub_21CE02EEC(v9, type metadata accessor for NSBundle.PluginLocation);

    sub_21CDE5494((v15 + 5), qword_27CE40D00, &qword_21CE706F0);

    swift_deallocPartialClassInstance();
  }

  return v15;
}

uint64_t sub_21CE02EEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21CE03018(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MobileGestalt_get_current_device();
  if (v4)
  {
    v5 = v4;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      v7 = sub_21CE6C3D0();
      sub_21CE032B8(a1, &v35);
      v26 = v43;
      v27 = v44;
      v22 = v39;
      v23 = v40;
      v24 = v41;
      v25 = v42;
      v18 = v35;
      v19 = v36;
      v20 = v37;
      v21 = v38;
      v29[8] = v43;
      v29[9] = v44;
      v29[4] = v39;
      v29[5] = v40;
      v29[6] = v41;
      v29[7] = v42;
      v29[0] = v35;
      v29[1] = v36;
      v28 = v45;
      v30 = v45;
      v29[2] = v37;
      v29[3] = v38;
      sub_21CDFAA5C(&v18, &v31, &qword_27CE40008, &qword_21CE70DC8);
      sub_21CDE5494(v29, &qword_27CE40008, &qword_21CE70DC8);
      *&v17[119] = v25;
      *&v17[135] = v26;
      *&v17[151] = v27;
      *&v17[55] = v21;
      *&v17[71] = v22;
      *&v17[87] = v23;
      *&v17[103] = v24;
      *&v17[7] = v18;
      *&v17[23] = v19;
      v17[167] = v28;
      *&v17[39] = v20;
      KeyPath = swift_getKeyPath();
      v9 = sub_21CE6C590();
      *&v32[113] = *&v17[112];
      *&v32[129] = *&v17[128];
      *&v32[145] = *&v17[144];
      *&v32[49] = *&v17[48];
      *&v32[65] = *&v17[64];
      *&v32[81] = *&v17[80];
      *&v32[97] = *&v17[96];
      *&v32[1] = *v17;
      *&v32[17] = *&v17[16];
      LOBYTE(v35) = 1;
      v31 = v7;
      v32[0] = 1;
      *&v32[161] = *&v17[160];
      *&v32[33] = *&v17[32];
      *&v33 = KeyPath;
      BYTE8(v33) = 1;
      v34[0] = v9;
      memset(&v34[8], 0, 32);
      v34[40] = 1;
      nullsub_1();
      v47 = v33;
      v48 = *v34;
      v49[0] = *&v34[16];
      *(v49 + 9) = *&v34[25];
      v43 = *&v32[112];
      v44 = *&v32[128];
      v45 = *&v32[144];
      v46 = *&v32[160];
      v39 = *&v32[48];
      v40 = *&v32[64];
      v41 = *&v32[80];
      v42 = *&v32[96];
      v35 = v31;
      v36 = *v32;
      v37 = *&v32[16];
      v38 = *&v32[32];
    }

    else
    {
      sub_21CE0370C(&v35);
    }

    v10 = v48;
    a2[12] = v47;
    a2[13] = v10;
    a2[14] = v49[0];
    *(a2 + 233) = *(v49 + 9);
    v11 = v44;
    a2[8] = v43;
    a2[9] = v11;
    v12 = v46;
    a2[10] = v45;
    a2[11] = v12;
    v13 = v40;
    a2[4] = v39;
    a2[5] = v13;
    v14 = v42;
    a2[6] = v41;
    a2[7] = v14;
    v15 = v36;
    *a2 = v35;
    a2[1] = v15;
    v16 = v38;
    a2[2] = v37;
    a2[3] = v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21CE032B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CE6C980();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6C970();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v35 = sub_21CE6C9A0();

  (*(v5 + 8))(v7, v4);
  sub_21CE6CAD0();
  sub_21CE6BFA0();
  v34 = v47;
  v8 = v48;
  LOBYTE(v4) = v50;
  v33 = v50;
  v38 = v51;
  v36 = v49;
  v37 = v52;
  v31 = sub_21CE6C910();
  KeyPath = swift_getKeyPath();
  LOBYTE(v58) = v8;
  v27 = v8;
  LOBYTE(v53) = v4;
  sub_21CE6C660();
  v9 = sub_21CE6C740();
  v28 = v10;
  v29 = v9;
  LOBYTE(v7) = v11;
  v30 = v12;

  v58 = 0;
  v59 = 0xE000000000000000;
  *&v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CE6D340();
  sub_21CE6C5D0();
  v13 = sub_21CE6C740();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v44 = v7 & 1;
  v43 = 1;
  *&v53 = v35;
  *(&v53 + 1) = v34;
  LOBYTE(v54) = v8;
  *(&v54 + 1) = *v46;
  DWORD1(v54) = *&v46[3];
  *(&v54 + 1) = v36;
  LOBYTE(v55) = v33;
  DWORD1(v55) = *&v45[3];
  *(&v55 + 1) = *v45;
  *(&v55 + 1) = v38;
  *&v56 = v37;
  *(&v56 + 1) = KeyPath;
  v57 = v31;
  *(v42 + 7) = v53;
  *(&v42[4] + 7) = v31;
  *(&v42[3] + 7) = v56;
  *(&v42[2] + 7) = v55;
  *(&v42[1] + 7) = v54;
  v41 = v7 & 1;
  v40 = v17 & 1;
  v39 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = v42[1];
  *(a2 + 9) = v42[0];
  v21 = v42[2];
  v22 = v42[3];
  *(a2 + 72) = *(&v42[3] + 15);
  *(a2 + 57) = v22;
  *(a2 + 41) = v21;
  *(a2 + 25) = v20;
  v23 = v28;
  v24 = v29;
  *(a2 + 88) = v29;
  *(a2 + 96) = v23;
  *(a2 + 104) = v7 & 1;
  *(a2 + 112) = v30;
  *(a2 + 120) = v13;
  *(a2 + 128) = v15;
  *(a2 + 136) = v17 & 1;
  *(a2 + 144) = v19;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  sub_21CDFAA5C(&v53, &v58, &qword_27CE40010, &qword_21CE70E38);
  sub_21CE037E4(v24, v23, v7 & 1);

  sub_21CE037E4(v13, v15, v17 & 1);

  sub_21CE037F4(v13, v15, v17 & 1);

  sub_21CE037F4(v24, v23, v44);

  v58 = v35;
  v59 = v34;
  v60 = v27;
  *v61 = *v46;
  *&v61[3] = *&v46[3];
  v62 = v36;
  v63 = v33;
  *v64 = *v45;
  *&v64[3] = *&v45[3];
  v65 = v38;
  v66 = v37;
  v67 = KeyPath;
  v68 = v31;
  return sub_21CDE5494(&v58, &qword_27CE40010, &qword_21CE70E38);
}

double sub_21CE0370C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 233) = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_21CE03738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CE6C200();
  *a1 = result;
  return result;
}

uint64_t sub_21CE0378C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CE6C1A0();
  *a1 = result;
  return result;
}

uint64_t sub_21CE037E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21CE037F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21CE03804()
{
  result = qword_27CE40018;
  if (!qword_27CE40018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40020, &qword_21CE70E40);
    sub_21CE03888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40018);
  }

  return result;
}

unint64_t sub_21CE03888()
{
  result = qword_27CE40028;
  if (!qword_27CE40028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40030, &qword_21CE70E48);
    sub_21CE03914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40028);
  }

  return result;
}

unint64_t sub_21CE03914()
{
  result = qword_27CE40038;
  if (!qword_27CE40038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40040, &qword_21CE70E50);
    sub_21CDE4158(&qword_27CE40048, &qword_27CE40050, &qword_21CE70E58, MEMORY[0x277CE1198]);
    sub_21CDE4158(&qword_2812131A8, &qword_27CE40058, &qword_21CE70E60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40038);
  }

  return result;
}

unint64_t sub_21CE039F8()
{
  type metadata accessor for SettingsExperienceCoordinationManager();
  v0 = swift_allocObject();
  result = sub_21CDFA274(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_2812123D0 = v0;
  return result;
}

uint64_t static SettingsExperienceCoordinationManager.shared.getter()
{
  if (qword_2812123C8 != -1)
  {
    swift_once();
  }
}

void sub_21CE03A9C(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for SettingsPaneRecipe(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v68 = (&v64 - v14);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - v15;
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v17 = sub_21CE6BDA0();
  v18 = __swift_project_value_buffer(v17, qword_2812165D8);
  sub_21CE06EA4(a1, v16, type metadata accessor for SettingsPaneRecipe);
  swift_retain_n();
  v66 = v18;
  v19 = sub_21CE6BD80();
  v20 = sub_21CE6CF30();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v65 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v67 = v2;
    v64 = v23;
    v70[0] = v23;
    *v22 = 136446466;
    v24 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
    v25 = v4;
    v26 = v12;
    v27 = a1;
    v29 = v28;
    sub_21CE06F0C(v16, type metadata accessor for SettingsPaneRecipe);
    v30 = sub_21CDF2CC8(v24, v29, v70);
    a1 = v27;
    v12 = v26;
    v4 = v25;

    *(v22 + 4) = v30;
    *(v22 + 12) = 2050;
    swift_beginAccess();
    v31 = *(*(v25 + 16) + 16);

    *(v22 + 14) = v31;

    _os_log_impl(&dword_21CDE1000, v19, v20, "Start lookup for coordinator for recipe '%{public}s' (%{public}ld item(s) in table)…", v22, 0x16u);
    v32 = v64;
    __swift_destroy_boxed_opaque_existential_1(v64);
    v3 = v67;
    MEMORY[0x21CF1BD50](v32, -1, -1);
    v33 = v22;
    v9 = v65;
    MEMORY[0x21CF1BD50](v33, -1, -1);
  }

  else
  {

    sub_21CE06F0C(v16, type metadata accessor for SettingsPaneRecipe);
  }

  swift_beginAccess();
  if (!*(*(v4 + 16) + 16) || (, sub_21CE66984(a1), v35 = v34, , (v35 & 1) == 0))
  {
    v47 = v68;
    sub_21CE06EA4(a1, v68, type metadata accessor for SettingsPaneRecipe);
    v48 = sub_21CE02B58(v47);
    if (!v3)
    {
      v49 = v48;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_21CE063C4(v49, a1, isUniquelyReferenced_nonNull_native);
      *(v4 + 16) = v71;
      swift_endAccess();
      sub_21CE06EA4(a1, v12, type metadata accessor for SettingsPaneRecipe);
      v51 = sub_21CE6BD80();
      v52 = sub_21CE6CF30();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v67 = 0;
        v54 = v53;
        v55 = a1;
        v56 = swift_slowAlloc();
        v69[0] = v56;
        *v54 = 136446210;
        v57 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
        v58 = v12;
        v60 = v59;
        sub_21CE06F0C(v58, type metadata accessor for SettingsPaneRecipe);
        v61 = sub_21CDF2CC8(v57, v60, v69);

        *(v54 + 4) = v61;
        _os_log_impl(&dword_21CDE1000, v51, v52, "Returning new instance of coordinator for recipe '%{public}s'.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        v62 = v56;
        a1 = v55;
        MEMORY[0x21CF1BD50](v62, -1, -1);
        MEMORY[0x21CF1BD50](v54, -1, -1);
      }

      else
      {

        sub_21CE06F0C(v12, type metadata accessor for SettingsPaneRecipe);
      }
    }

    goto LABEL_18;
  }

  sub_21CE06EA4(a1, v9, type metadata accessor for SettingsPaneRecipe);
  v36 = sub_21CE6BD80();
  v37 = v9;
  v38 = sub_21CE6CF30();
  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v67 = v3;
    v40 = v39;
    v41 = swift_slowAlloc();
    v69[0] = v41;
    *v40 = 136446210;
    v42 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
    v43 = a1;
    v45 = v44;
    sub_21CE06F0C(v37, type metadata accessor for SettingsPaneRecipe);
    v46 = sub_21CDF2CC8(v42, v45, v69);
    a1 = v43;

    *(v40 + 4) = v46;
    _os_log_impl(&dword_21CDE1000, v36, v38, "Return existing coordinator for recipe '%{public}s'.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x21CF1BD50](v41, -1, -1);
    MEMORY[0x21CF1BD50](v40, -1, -1);
  }

  else
  {

    sub_21CE06F0C(v37, type metadata accessor for SettingsPaneRecipe);
  }

  if (*(*(v4 + 16) + 16))
  {

    sub_21CE66984(a1);
    if (v63)
    {

LABEL_18:
      sub_21CE04150(a1, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21CE04150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v7 = sub_21CE6BDA0();
  __swift_project_value_buffer(v7, qword_2812165D8);
  sub_21CE06EA4(a1, v6, type metadata accessor for SettingsPaneRecipe);
  swift_retain_n();
  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CF30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    v12 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
    v14 = v13;
    sub_21CE06F0C(v6, type metadata accessor for SettingsPaneRecipe);
    v15 = sub_21CDF2CC8(v12, v14, &v18);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2050;
    swift_beginAccess();
    v16 = *(*(a2 + 16) + 16);

    *(v10 + 14) = v16;

    _os_log_impl(&dword_21CDE1000, v8, v9, "…completed lookup for coordinator for recipe '%{public}s' (%{public}ld item(s) in table).", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);
  }

  else
  {

    sub_21CE06F0C(v6, type metadata accessor for SettingsPaneRecipe);
  }
}

void sub_21CE043A4(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsPaneRecipe(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v7 = sub_21CE6BDA0();
  __swift_project_value_buffer(v7, qword_2812165D8);
  sub_21CE06EA4(a1, v6, type metadata accessor for SettingsPaneRecipe);
  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CF30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136446210;
    v12 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
    v14 = v13;
    sub_21CE06F0C(v6, type metadata accessor for SettingsPaneRecipe);
    v15 = sub_21CDF2CC8(v12, v14, v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_21CDE1000, v8, v9, "Handling request to remove coordinator for recipe '%{public}s'.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);
  }

  else
  {

    sub_21CE06F0C(v6, type metadata accessor for SettingsPaneRecipe);
  }

  swift_beginAccess();
  v16 = sub_21CE046FC(a1);
  swift_endAccess();
  if (v16)
  {

    v17 = sub_21CE6BD80();
    v18 = sub_21CE6CF30();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = *(*(v2 + 16) + 16);

      v20 = "Removed coordinator successfully (%{public}ld item(s) in table).";
LABEL_11:
      _os_log_impl(&dword_21CDE1000, v17, v18, v20, v19, 0xCu);
      MEMORY[0x21CF1BD50](v19, -1, -1);

      return;
    }
  }

  else
  {

    v17 = sub_21CE6BD80();
    v18 = sub_21CE6CF30();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = *(*(v2 + 16) + 16);

      v20 = "Coordinator not found in lookup table (%{public}ld item(s) in table).";
      goto LABEL_11;
    }
  }
}

uint64_t sub_21CE046FC(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_21CE66984(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21CE46A54();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for SettingsPaneRecipe(0);
  sub_21CE06F0C(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for SettingsPaneRecipe);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_21CE59A8C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_21CE047C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  v4[50] = type metadata accessor for SettingsPaneRecipe(0);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult(0);
  v4[57] = swift_task_alloc();
  v4[58] = type metadata accessor for SettingsExperienceOpenURLAction.Input(0);
  v4[59] = swift_task_alloc();
  type metadata accessor for SettingsExperienceOpenURLAction.Result(0);
  v4[60] = swift_task_alloc();
  v5 = sub_21CE6C090();
  v4[61] = v5;
  v4[62] = *(v5 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v6 = sub_21CE6BA60();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  sub_21CE6CDE0();
  v4[72] = sub_21CE6CDD0();
  v8 = sub_21CE6CDB0();
  v4[73] = v8;
  v4[74] = v7;

  return MEMORY[0x2822009F8](sub_21CE04A40, v8, v7);
}

uint64_t sub_21CE04A40()
{
  v57 = v0;
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 568);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 376);
  v5 = sub_21CE6BDA0();
  *(v0 + 600) = __swift_project_value_buffer(v5, qword_2812165D8);
  v6 = *(v2 + 16);
  *(v0 + 608) = v6;
  *(v0 + 616) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 568);
  v11 = *(v0 + 552);
  v12 = *(v0 + 544);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v54[0] = v51;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_21CDE8A7C(&qword_2812132B0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v50 = v8;
    v14 = v6;
    v15 = sub_21CE6D3E0();
    v17 = v16;
    v52 = *(v11 + 8);
    v52(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_21CDF2CC8(v18, v17, v54);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_21CDE1000, v7, v50, "Start openURL '%{private,mask.hash}s'…", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x21CF1BD50](v51, -1, -1);
    MEMORY[0x21CF1BD50](v13, -1, -1);
  }

  else
  {

    v52 = *(v11 + 8);
    v52(v10, v12);
  }

  sub_21CE01EE0(v54);
  v20 = v55;
  if (v55)
  {
    v21 = v56;
    v22 = v54[1];
    *(v0 + 16) = v54[0];
    *(v0 + 32) = v22;
    *(v0 + 48) = v54[2];
    *(v0 + 64) = v20;
    *(v0 + 72) = v21;
    sub_21CE6C080();
    swift_beginAccess();
    *(v0 + 632) = v21;
    *(v0 + 624) = 0;
    v23 = *(v0 + 536);
    v24 = *(v0 + 488);
    v25 = *(v0 + 496);
    v27 = *(v0 + 464);
    v26 = *(v0 + 472);
    (*(v0 + 608))(v26, *(v0 + 376), *(v0 + 544));
    v28 = *(v27 + 20);
    v29 = *(v25 + 16);
    *(v0 + 640) = v29;
    *(v0 + 648) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v26 + v28, v23, v24);

    v53 = (v20 + *v20);
    v30 = swift_task_alloc();
    *(v0 + 656) = v30;
    *v30 = v0;
    v30[1] = sub_21CE050A0;
    v32 = *(v0 + 472);
    v31 = *(v0 + 480);

    return v53(v31, v32);
  }

  else
  {
    v34 = *(v0 + 560);
    v35 = *(v0 + 544);
    v36 = *(v0 + 376);

    v6(v34, v36, v35);
    v37 = sub_21CE6BD80();
    v38 = sub_21CE6CF10();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 560);
    v41 = *(v0 + 544);
    if (v39)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v54[0] = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      sub_21CDE8A7C(&qword_2812132B0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v44 = sub_21CE6D3E0();
      v46 = v45;
      v52(v40, v41);
      v47 = sub_21CDF2CC8(v44, v46, v54);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_21CDE1000, v37, v38, "Attempted to open URL '%{private,mask.hash}s' but no settings experience content was found.", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x21CF1BD50](v43, -1, -1);
      MEMORY[0x21CF1BD50](v42, -1, -1);
    }

    else
    {

      v52(v40, v41);
    }

    v48 = *(v0 + 376);
    sub_21CE6C080();
    sub_21CE05FE4(v48);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_21CE050A0()
{
  v1 = *v0;
  v2 = *(*v0 + 472);

  sub_21CE06F0C(v2, type metadata accessor for SettingsExperienceOpenURLAction.Input);
  v3 = *(v1 + 592);
  v4 = *(v1 + 584);

  return MEMORY[0x2822009F8](sub_21CE05214, v4, v3);
}

uint64_t sub_21CE05214()
{
  v138 = v0;
  sub_21CE06EA4(*(v0 + 480), *(v0 + 456), type metadata accessor for SettingsExperienceOpenURLAction.Result.ActionResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 640);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 512);
    v5 = *(v0 + 488);
    v4 = *(v0 + 496);
    v6 = *(v0 + 456);
    v7 = *(v0 + 440);
    v125 = *(v0 + 432);
    v127 = *(v0 + 504);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE3FF60, &qword_21CE70A70) + 48);
    sub_21CDFA9F8(v6, v7);
    (*(v4 + 32))(v3, v6 + v8, v5);
    sub_21CE06EA4(v7, v125, type metadata accessor for SettingsPaneRecipe);
    v2(v127, v3, v5);
    v9 = sub_21CE6BD80();
    v10 = sub_21CE6CF30();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 504);
    v13 = *(v0 + 432);
    v14 = (*(v0 + 496) + 8);
    if (v11)
    {
      v128 = *(v0 + 488);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v133 = v16;
      *v15 = 136446722;
      v17 = *(v0 + 32);
      v134 = *(v0 + 16);
      v135 = v17;
      v18 = *(v0 + 64);
      v136 = *(v0 + 48);
      v137 = v18;
      v19 = sub_21CE010C0();
      v21 = sub_21CDF2CC8(v19, v20, &v133);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v22 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
      v24 = v23;
      sub_21CE06F0C(v13, type metadata accessor for SettingsPaneRecipe);
      v25 = sub_21CDF2CC8(v22, v24, &v133);

      *(v15 + 14) = v25;
      *(v15 + 22) = 2050;
      v26 = sub_21CE6C050();
      v27 = *v14;
      (*v14)(v12, v128);
      *(v15 + 24) = v26;
      _os_log_impl(&dword_21CDE1000, v9, v10, "Current item %{public}s requested to open settings experience for %{public}s. Working Navigation Path contains %{public}ld item(s).", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v16, -1, -1);
      MEMORY[0x21CF1BD50](v15, -1, -1);
    }

    else
    {
      v27 = *v14;
      (*v14)(*(v0 + 504), *(v0 + 488));

      sub_21CE06F0C(v13, type metadata accessor for SettingsPaneRecipe);
    }

    v49 = *(v0 + 624);
    sub_21CE03A9C(*(v0 + 440));
    if (!v49)
    {
      sub_21CE06EA4(*(v0 + 440), *(v0 + 424), type metadata accessor for SettingsPaneRecipe);
      v50 = sub_21CE6BD80();
      v51 = sub_21CE6CF30();
      v52 = os_log_type_enabled(v50, v51);
      v53 = *(v0 + 424);
      if (v52)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v134 = v55;
        *v54 = 136446210;
        v56 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
        v58 = v57;
        sub_21CE06F0C(v53, type metadata accessor for SettingsPaneRecipe);
        v59 = sub_21CDF2CC8(v56, v58, &v134);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_21CDE1000, v50, v51, "Coordinator initialized for %{public}s, moving to load plugin.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x21CF1BD50](v55, -1, -1);
        MEMORY[0x21CF1BD50](v54, -1, -1);
      }

      else
      {

        sub_21CE06F0C(v53, type metadata accessor for SettingsPaneRecipe);
      }

      sub_21CE0226C();
      sub_21CE06EA4(*(v0 + 440), *(v0 + 416), type metadata accessor for SettingsPaneRecipe);
      v92 = sub_21CE6BD80();
      v93 = sub_21CE6CF30();
      v94 = os_log_type_enabled(v92, v93);
      v95 = *(v0 + 416);
      if (v94)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v134 = v97;
        *v96 = 136446210;
        v98 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
        v100 = v99;
        sub_21CE06F0C(v95, type metadata accessor for SettingsPaneRecipe);
        v101 = sub_21CDF2CC8(v98, v100, &v134);

        *(v96 + 4) = v101;
        _os_log_impl(&dword_21CDE1000, v92, v93, "Plugin loaded for %{public}s.", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v97);
        MEMORY[0x21CF1BD50](v97, -1, -1);
        MEMORY[0x21CF1BD50](v96, -1, -1);
      }

      else
      {

        sub_21CE06F0C(v95, type metadata accessor for SettingsPaneRecipe);
      }

      result = sub_21CE01EE0((v0 + 144));
      v102 = *(v0 + 192);
      if (v102)
      {
        v103 = *(v0 + 536);
        v104 = *(v0 + 512);
        v106 = *(v0 + 488);
        v105 = *(v0 + 496);
        v107 = *(v0 + 440);
        v131 = *(v0 + 480);
        v108 = *(v0 + 200);
        v109 = *(v0 + 32);
        *(v0 + 208) = *(v0 + 16);
        *(v0 + 224) = v109;
        v110 = *(v0 + 64);
        *(v0 + 240) = *(v0 + 48);
        *(v0 + 256) = v110;
        v111 = *(v0 + 176);
        *(v0 + 32) = *(v0 + 160);
        *(v0 + 48) = v111;
        *(v0 + 16) = *(v0 + 144);
        *(v0 + 64) = v102;
        *(v0 + 72) = v108;
        sub_21CE02FA8(v0 + 208);
        (*(v105 + 24))(v103, v104, v106);
        sub_21CDE8A7C(qword_281213068, type metadata accessor for SettingsPaneRecipe, &protocol conformance descriptor for SettingsPaneRecipe);
        sub_21CE6C060();

        v27(v104, v106);
        sub_21CE06F0C(v107, type metadata accessor for SettingsPaneRecipe);
        sub_21CE06F0C(v131, type metadata accessor for SettingsExperienceOpenURLAction.Result);
        *(v0 + 632) = v108;
        *(v0 + 624) = 0;
        v112 = *(v0 + 536);
        v113 = *(v0 + 488);
        v114 = *(v0 + 496);
        v116 = *(v0 + 464);
        v115 = *(v0 + 472);
        (*(v0 + 608))(v115, *(v0 + 376), *(v0 + 544));
        v117 = *(v116 + 20);
        v118 = *(v114 + 16);
        *(v0 + 640) = v118;
        *(v0 + 648) = (v114 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v118(v115 + v117, v112, v113);

        v132 = (v102 + *v102);
        v119 = swift_task_alloc();
        *(v0 + 656) = v119;
        *v119 = v0;
        v119[1] = sub_21CE050A0;
        v121 = *(v0 + 472);
        v120 = *(v0 + 480);

        return v132(v120, v121);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v60 = *(v0 + 440);
    v61 = *(v0 + 408);

    sub_21CE06EA4(v60, v61, type metadata accessor for SettingsPaneRecipe);
    v62 = v49;
    v63 = sub_21CE6BD80();
    v64 = sub_21CE6CF10();

    v65 = os_log_type_enabled(v63, v64);
    v126 = *(v0 + 488);
    v130 = *(v0 + 512);
    v66 = *(v0 + 480);
    v67 = *(v0 + 440);
    v68 = *(v0 + 408);
    if (v65)
    {
      v124 = v27;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v134 = v71;
      *v69 = 136446466;
      v122 = v67;
      v123 = v66;
      v72 = _s8Settings0A10PaneRecipeV11descriptionSSvg_0();
      v74 = v73;
      sub_21CE06F0C(v68, type metadata accessor for SettingsPaneRecipe);
      v75 = sub_21CDF2CC8(v72, v74, &v134);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2114;
      v76 = v49;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 14) = v77;
      *v70 = v77;
      _os_log_impl(&dword_21CDE1000, v63, v64, "Failed to open settings experience for %{public}s: %{public}@", v69, 0x16u);
      sub_21CE06F6C(v70);
      MEMORY[0x21CF1BD50](v70, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x21CF1BD50](v71, -1, -1);
      v78 = v69;
      v27 = v124;
      MEMORY[0x21CF1BD50](v78, -1, -1);

      v124(v130, v126);
      sub_21CE06F0C(v122, type metadata accessor for SettingsPaneRecipe);
      v79 = v123;
    }

    else
    {

      sub_21CE06F0C(v68, type metadata accessor for SettingsPaneRecipe);
      v27(v130, v126);
      sub_21CE06F0C(v67, type metadata accessor for SettingsPaneRecipe);
      v79 = v66;
    }

    sub_21CE06F0C(v79, type metadata accessor for SettingsExperienceOpenURLAction.Result);
  }

  else
  {
    v28 = *(v0 + 528);
    v29 = *(v0 + 520);
    v30 = *(v0 + 488);
    v31 = *(v0 + 496);
    v32 = *(v0 + 456);

    (*(v31 + 32))(v28, v32, v30);
    v2(v29, v28, v30);
    v33 = sub_21CE6BD80();
    v34 = sub_21CE6CF30();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 520);
    v37 = *(v0 + 488);
    v38 = *(v0 + 480);
    v39 = (*(v0 + 496) + 8);
    if (v35)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v133 = v41;
      *v40 = 136446466;
      swift_beginAccess();
      v42 = *(v0 + 32);
      v134 = *(v0 + 16);
      v135 = v42;
      v43 = *(v0 + 64);
      v136 = *(v0 + 48);
      v137 = v43;
      v129 = v38;
      v44 = sub_21CE010C0();
      v46 = sub_21CDF2CC8(v44, v45, &v133);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2050;
      v47 = sub_21CE6C050();
      v27 = *v39;
      (*v39)(v36, v37);
      *(v40 + 14) = v47;
      _os_log_impl(&dword_21CDE1000, v33, v34, "Received handled response from %{public}s with resolved navigation path of %{public}ld item(s).", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x21CF1BD50](v41, -1, -1);
      MEMORY[0x21CF1BD50](v40, -1, -1);

      v48 = v129;
    }

    else
    {
      v27 = *v39;
      (*v39)(*(v0 + 520), *(v0 + 488));

      v48 = v38;
    }

    sub_21CE06F0C(v48, type metadata accessor for SettingsExperienceOpenURLAction.Result);
    (*(*(v0 + 496) + 40))(*(v0 + 536), *(v0 + 528), *(v0 + 488));
  }

  v80 = sub_21CE6BD80();
  v81 = sub_21CE6CF30();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 134349056;
    swift_beginAccess();
    *(v82 + 4) = sub_21CE6C050();
    _os_log_impl(&dword_21CDE1000, v80, v81, "Resolved navigation path of %{public}ld item(s).", v82, 0xCu);
    MEMORY[0x21CF1BD50](v82, -1, -1);
  }

  v83 = *(v0 + 640);
  v84 = *(v0 + 536);
  v85 = *(v0 + 488);
  v87 = *(v0 + 368);
  v86 = *(v0 + 376);

  swift_beginAccess();
  v83(v87, v84, v85);
  v27(v84, v85);
  v88 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v88;
  v89 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v89;
  sub_21CE02FA8(v0 + 80);
  sub_21CE05FE4(v86);

  v90 = *(v0 + 8);

  return v90();
}

void sub_21CE05FE4(uint64_t a1)
{
  v2 = sub_21CE6BA60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281213290 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_2812165D8);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    sub_21CDE8A7C(&qword_2812132B0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v11 = sub_21CE6D3E0();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_21CDF2CC8(v11, v13, &v16);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_21CDE1000, v7, v8, "…completed openURL '%{private,mask.hash}s'.", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t SettingsExperienceCoordinationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CE062C0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_21CE06320@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_21CE06350(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_21CE063C4(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SettingsPaneRecipe(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_21CE66984(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_21CE46A54();
      goto LABEL_7;
    }

    sub_21CE45588(v16, a3 & 1);
    v21 = sub_21CE66984(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21CE06EA4(a2, v10, type metadata accessor for SettingsPaneRecipe);
      return sub_21CE06CE8(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_21CE6D440();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_21CE06568(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CE66850(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21CE45CA0(v16, a4 & 1);
      v11 = sub_21CE66850(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_21CE6D440();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_21CE46DDC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_21CE066E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21CE66850(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21CE45F44(v18, a5 & 1);
      v13 = sub_21CE66850(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21CE6D440();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21CE46F48();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_21CE06868(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CE66850(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21CE470C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21CE46204(v16, a4 & 1);
    v11 = sub_21CE66850(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21CE6D440();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_21CDFA678(a1, v22);
  }

  else
  {
    sub_21CE06D88(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_21CE06A10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_21CE66850(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_21CE66850(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_21CE6D440();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

_OWORD *sub_21CE06BA8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_21CE669F0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_21CE473EC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_21CE46784(v13, a3 & 1);
    v8 = sub_21CE669F0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_21CE6D440();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_21CDFA678(a1, v19);
  }

  else
  {
    sub_21CE06E3C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_21CE06CE8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SettingsPaneRecipe(0);
  result = sub_21CDFA9F8(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_21CE06D88(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21CDFA678(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21CE06DF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_21CE06E3C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21CDFA678(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_21CE06EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CE06F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CE06F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40D20, &qword_21CE70EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SettingsExperienceCoordinationManager.openURL(_:startingFrom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 136) + **(*v3 + 136));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21CDE7A00;

  return v10(a1, a2, a3);
}

uint64_t static _SettingsExperiencePluginLoading.load()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t SettingsPane.init(makeContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x50746C7561666544;
  *(a3 + 8) = 0xEB00000000656E61;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t SettingsPane.init(id:makeContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  return result;
}

void *SettingsPane.init<A>(id:for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a10;
  v18[6] = a11;
  v18[7] = a12;
  v18[8] = a3;
  result = swift_allocObject();
  result[2] = a6;
  result[3] = a7;
  result[4] = a8;
  result[5] = a10;
  result[6] = a11;
  result[7] = a12;
  result[8] = a4;
  result[9] = a5;
  result[10] = sub_21CE074EC;
  result[11] = v18;
  *(a9 + 16) = a3;
  *(a9 + 24) = sub_21CE075F0;
  *(a9 + 32) = result;
  *(a9 + 40) = 1;
  return result;
}

uint64_t sub_21CE07384(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_getDynamicType() == a2)
  {
    sub_21CDE66C8(a1, &v8);
    return swift_dynamicCast();
  }

  else
  {
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0x742064656C696146, 0xEF2074736163206FLL);
    sub_21CE6D340();
    MEMORY[0x21CF1ACB0](544175136, 0xE400000000000000);
    v7 = sub_21CE6D4F0();
    MEMORY[0x21CF1ACB0](v7);

    result = sub_21CE6D350();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CE07500(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  a2(v12);
  return (*(v9 + 8))(v12, a7);
}

uint64_t SettingsPane._collectSettingsExperienceContentOutputs_v1(inputs:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + 40);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = *(a2 + 16);
    *(v13 + 32) = v10;
    *(v13 + 40) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB8, &qword_21CE708D0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21CE702B0;
    *(v14 + 32) = v7;
    *(v14 + 40) = v8;
    *(v14 + 48) = v9;
    *(v14 + 56) = sub_21CE07858;
    *(v14 + 64) = v13;
    *(v14 + 72) = 1;
  }

  else
  {
    v15 = sub_21CE67408(v3[2], v3[3], *(a2 + 16), *(a2 + 24));
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDB8, &qword_21CE708D0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21CE702B0;
    *(v14 + 32) = v7;
    *(v14 + 40) = v8;
    *(v14 + 48) = v15;
    *(v14 + 56) = v17;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0;
  }

  *(v14 + 80) = v6;
  *(v14 + 88) = v5;
  *a3 = v14;

  return sub_21CE07864(v9, v10, v11, v12);
}

uint64_t (*sub_21CE077A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  sub_21CDE66C8(a1, v12);
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  sub_21CDFA678(v12, (v9 + 48));
  v10 = sub_21CE67408(sub_21CE07A98, v9, a4, a5);

  return v10;
}

uint64_t sub_21CE07870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v12(v11);
  sub_21CE328C8();
  v13 = *(v5 + 8);
  v13(v8, a4);
  sub_21CE328C8();
  return (v13)(v10, a4);
}

uint64_t sub_21CE079B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21CE079EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21CE07A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SettingsPaneView.init(recipe:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for SettingsPaneRecipe(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CE01738(a1, v6);
  type metadata accessor for SettingsPaneViewModel(0);
  swift_allocObject();
  v9[1] = sub_21CE07E94(v6);
  sub_21CE6C9B0();
  result = sub_21CE07D30(a1);
  v8 = v9[3];
  *a2 = v9[2];
  a2[1] = v8;
  return result;
}

double SettingsPaneView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  *&v13 = *v1;
  *(&v13 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40060, &unk_21CE71020);
  sub_21CE6C9C0();
  v4 = *(v12 + 16);
  v5 = *(v12 + 24);
  sub_21CE07D8C(v4, v5);

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40000, &qword_21CE70D18);
    sub_21CE07D98();
    sub_21CDE8D74();
    sub_21CE6C400();
  }

  else
  {
    sub_21CE02614(&v13);
    v6 = v13;
    v7 = v15;
    v8 = v14;
    sub_21CE07DC8(v13, *(&v13 + 1), v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40000, &qword_21CE70D18);
    sub_21CE07D98();
    sub_21CDE8D74();
    sub_21CE6C400();
    sub_21CE07DD8(v4, 0);
    sub_21CE07DE4(v6, *(&v6 + 1), v8, v7);
  }

  result = *&v13;
  v10 = v14 | (v15 << 16);
  v11 = v16;
  *a1 = v13;
  *(a1 + 16) = v10;
  *(a1 + 18) = BYTE2(v10);
  *(a1 + 19) = v11;
  return result;
}

uint64_t sub_21CE07D30(uint64_t a1)
{
  v2 = type metadata accessor for SettingsPaneRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21CE07D8C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

id sub_21CE07DC8(id a1, uint64_t a2, __int16 a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return sub_21CE02AB0(a1, a2, a3, HIBYTE(a3) & 1);
  }
}

void sub_21CE07DD8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_21CE07DE4(id a1, uint64_t a2, __int16 a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_21CE02AC0(a1, a2, a3, HIBYTE(a3) & 1);
  }
}

uint64_t sub_21CE07E10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21CDE8D74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CE07E94(uint64_t *a1)
{
  v2 = v1;
  sub_21CE6BB80();
  sub_21CE01738(a1, v1 + OBJC_IVAR____TtC8Settings21SettingsPaneViewModel_recipe);
  if (qword_2812123C8 != -1)
  {
    swift_once();
  }

  sub_21CE03A9C(a1);
  v5 = v4;
  sub_21CE0226C();
  sub_21CE07D30(a1);
  *(v2 + 16) = v5;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_21CE07F78()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsPaneRecipe(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CE6CDE0();
  sub_21CE6CDD0();
  sub_21CE6CDB0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2812123C8 != -1)
  {
    swift_once();
  }

  v5 = OBJC_IVAR____TtC8Settings21SettingsPaneViewModel_recipe;
  sub_21CE01738(v0 + OBJC_IVAR____TtC8Settings21SettingsPaneViewModel_recipe, v4);
  sub_21CE043A4(v4);
  sub_21CE07D30(v4);

  sub_21CE07DD8(*(v0 + 16), *(v0 + 24));
  sub_21CE07D30(v0 + v5);
  v6 = OBJC_IVAR____TtC8Settings21SettingsPaneViewModel___observationRegistrar;
  v7 = sub_21CE6BB90();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

uint64_t sub_21CE08108(uint64_t a1)
{
  sub_21CE07F78();

  return swift_deallocClassInstance();
}

uint64_t sub_21CE0816C()
{
  sub_21CE6CDE0();
  sub_21CE6CDD0();
  v1 = sub_21CE6CDB0();
  v3 = v2;

  return MEMORY[0x2822009B0](v0, sub_21CE08108, v1, v3, 0);
}

uint64_t type metadata accessor for SettingsPaneViewModel(uint64_t a1)
{
  result = qword_281212C00;
  if (!qword_281212C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CE08254(uint64_t a1)
{
  result = type metadata accessor for SettingsPaneRecipe(319);
  if (v2 <= 0x3F)
  {
    result = sub_21CE6BB90();
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

uint64_t TupleSettingsExperienceContent.init(_:)@<X0>(uint64_t *TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = TupleTypeMetadata;
  v39 = a4;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TupleSettingsExperienceContent(0, a2, a3, v24);
  v38 = &v36;
  v25 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v27 = &v36 - v26;
  if (a2)
  {
    v28 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v7 + 32);
    v30 = a2;
    do
    {
      if (a2 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *v29;
      }

      v33 = *v28++;
      v32 = v33;
      v34 = *v6++;
      (*(*(v32 - 8) + 32))(&v23[v31], v34);
      v29 += 4;
      --v30;
    }

    while (v30);
  }

  (*(v21 + 16))(v27, v23, v7);
  (*(v25 + 32))(v39, v27, v37);
  return (*(v21 + 8))(v23, v7);
}

uint64_t TupleSettingsExperienceContent.content.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v23 + 16))(v22, v3, v7);
  if (v6)
  {
    v25 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v26 = (v7 + 32);
    v27 = v6;
    do
    {
      if (v6 == 1)
      {
        v28 = 0;
      }

      else
      {
        v28 = *v26;
      }

      v30 = *v25++;
      v29 = v30;
      v31 = *a2++;
      result = (*(*(v29 - 8) + 32))(v31, &v22[v28]);
      v26 += 4;
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t TupleSettingsExperienceContent.content.setter(uint64_t *TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v23 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = v5;
    do
    {
      if (v5 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v4++;
      (*(*(v27 - 8) + 32))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return (*(v20 + 40))(v2, v22, v6);
}

char *TupleSettingsExperienceContent._collectSettingsExperienceContentOutputs_v1(inputs:)@<X0>(__int128 *TupleTypeMetadata@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = TupleTypeMetadata;
  v51 = a3;
  v5 = a2[2];
  if (v5 == 1)
  {
    v6 = *(a2[3] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = a2[3] & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v53 = *v4;
  v49 = v21;
  v22 = *(v21 + 16);
  v54 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v22();
  v50 = v6;
  if (v5)
  {
    v24 = (a2[3] & 0xFFFFFFFFFFFFFFFELL);
    v25 = (a2[4] & 0xFFFFFFFFFFFFFFFELL);
    v26 = (v6 + 32);
    v57 = MEMORY[0x277D84F90];
    v27 = v5;
    v52 = v5;
    while (1)
    {
      v55 = &v49;
      v56 = v27;
      v31 = *v24;
      v32 = *v25;
      v33 = *(*v24 - 8);
      MEMORY[0x28223BE20](v23);
      v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = v5 == 1 ? 0 : *v26;
      (*(v33 + 16))(v35, &v54[v36], v31);
      v58 = v53;
      v37 = v31;
      (*(v32 + 32))(&v59, &v58, v31, v32);
      v38 = v59;
      v39 = *(v59 + 16);
      result = v57;
      v40 = *(v57 + 2);
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v42 = v57;
      if (!result || v41 > *(v57 + 3) >> 1)
      {
        if (v40 <= v41)
        {
          v43 = v40 + v39;
        }

        else
        {
          v43 = v40;
        }

        result = sub_21CDF225C(result, v43, 1, v57);
        v42 = result;
      }

      v44 = *(v38 + 16);
      v57 = v42;
      if (v44)
      {
        if ((*(v42 + 3) >> 1) - *(v42 + 2) < v39)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        v5 = v52;
        v29 = v37;
        v30 = v56;
        if (v39)
        {
          v45 = *(v57 + 2);
          v46 = __OFADD__(v45, v39);
          v47 = v45 + v39;
          if (v46)
          {
            goto LABEL_36;
          }

          *(v57 + 2) = v47;
          v30 = v56;
        }
      }

      else
      {

        v5 = v52;
        v29 = v37;
        v30 = v56;
        if (v39)
        {
          goto LABEL_34;
        }
      }

      v23 = (*(v33 + 8))(v35, v29);
      v26 += 4;
      ++v25;
      ++v24;
      v27 = v30 - 1;
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
LABEL_32:
    v48 = v50;
    *v51 = v57;
    return (*(v49 + 8))(v54, v48);
  }

  return result;
}

uint64_t sub_21CE08E88(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[7] = 0;
    v20 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x28223BE20](a1);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15++ = v17;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_21CE08FF4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_21CE6B960();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_21CE09FE0(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_21CE09FE0((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t SettingsNavigationEventRecord.init(icon:title:navigationPathComponents:navigationLink:associatedApplicationBundleIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v15 = type metadata accessor for SettingsNavigationEventRecord(0);
  v16 = (a7 + v15[8]);
  *a7 = v12;
  *(a7 + 8) = v13;
  *(a7 + 16) = v14;
  v17 = v15[5];
  v18 = sub_21CE6B960();
  (*(*(v18 - 8) + 32))(a7 + v17, a2, v18);
  *(a7 + v15[6]) = a3;
  v19 = v15[7];
  v20 = sub_21CE6BA60();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a4, v20);
  *v16 = a5;
  v16[1] = a6;
  return result;
}

uint64_t SettingsNavigationEventRecord.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_21CDEFF74(v2, v3);
}

uint64_t SettingsNavigationEventRecord.icon.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_21CDEFF7C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t SettingsNavigationEventRecord.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord(0) + 20);
  v4 = sub_21CE6B960();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsNavigationEventRecord.title.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord(0) + 20);
  v4 = sub_21CE6B960();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SettingsNavigationEventRecord.localizedNavigationComponents.getter()
{
  type metadata accessor for SettingsNavigationEventRecord(0);
}

uint64_t SettingsNavigationEventRecord.localizedNavigationComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SettingsNavigationEventRecord.navigationLink.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord(0) + 28);
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SettingsNavigationEventRecord.associatedApplicationBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SettingsNavigationEventRecord(0) + 32));

  return v1;
}

uint64_t SettingsNavigationEventRecord.associatedApplicationBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SettingsNavigationEventRecord(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:)(uint64_t a1)
{
  v2 = sub_21CE6BB40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE6BB20();
  v6 = SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:locale:)(a1, v5);
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:locale:)(uint64_t a1, uint64_t a2)
{
  v36 = sub_21CE6B960();
  v4 = *(v36 - 8);
  v5 = MEMORY[0x28223BE20](v36);
  v40 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v34 - v7;
  v8 = sub_21CE6C0C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x277CDFA88], v8);
  v12 = sub_21CE6C0B0();
  (*(v9 + 8))(v11, v8);
  v13 = *(v2 + *(type metadata accessor for SettingsNavigationEventRecord(0) + 24));
  v42 = a2;
  v14 = sub_21CE08FF4(sub_21CE09C7C, v41, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v35 = v12;
    v43 = MEMORY[0x277D84F90];
    sub_21CDE4558(0, v15, 0);
    v16 = v43;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v19 = *(v17 + 64);
    v34[1] = v14;
    v20 = v14 + ((v19 + 32) & ~v19);
    v37 = *(v17 + 56);
    v38 = v18;
    v21 = (v17 - 8);
    v22 = v36;
    do
    {
      v24 = v38;
      v23 = v39;
      v38(v39, v20, v22);
      v25 = v17;
      v24(v40, v23, v22);
      v26 = sub_21CE6CC70();
      v28 = v27;
      (*v21)(v23, v22);
      v43 = v16;
      v30 = *(v16 + 16);
      v29 = *(v16 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21CDE4558((v29 > 1), v30 + 1, 1);
        v22 = v36;
        v16 = v43;
      }

      *(v16 + 16) = v30 + 1;
      v31 = v16 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v20 += v37;
      --v15;
      v17 = v25;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v43 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40BA0, &qword_21CE6F4B0);
  sub_21CDF0A80();
  v32 = sub_21CE6CB90();

  return v32;
}

uint64_t sub_21CE09B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CE6BB40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CE6B960();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  return sub_21CE6B950();
}

uint64_t _s8Settings0A21NavigationEventRecordV14navigationLink10Foundation3URLVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsNavigationEventRecord(0) + 28);
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsNavigationEventRecord.description.getter()
{
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](0xD00000000000001DLL, 0x800000021CE711A0);
  MEMORY[0x21CF1ACB0](0x6E6F6369207B203ALL, 0xEA0000000000203ALL);
  v1 = SettingsEventImage.description.getter();
  MEMORY[0x21CF1ACB0](v1);

  MEMORY[0x21CF1ACB0](0x3A656C746974202CLL, 0xE900000000000020);
  v2 = type metadata accessor for SettingsNavigationEventRecord(0);
  v3 = sub_21CE6B960();
  sub_21CE6D340();
  MEMORY[0x21CF1ACB0](0xD000000000000021, 0x800000021CE76410);
  v4 = MEMORY[0x21CF1AD30](*(v0 + *(v2 + 24)), v3);
  MEMORY[0x21CF1ACB0](v4);

  MEMORY[0x21CF1ACB0](0xD000000000000012, 0x800000021CE76440);
  sub_21CE6BA60();
  sub_21CDE8AC4(&qword_2812132B0, MEMORY[0x277CC9290]);
  v5 = sub_21CE6D3E0();
  MEMORY[0x21CF1ACB0](v5);

  MEMORY[0x21CF1ACB0](0xD000000000000029, 0x800000021CE76460);
  v6 = (v0 + *(v2 + 32));
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE400000000000000;
    v7 = 1701736302;
  }

  MEMORY[0x21CF1ACB0](v7, v8);

  MEMORY[0x21CF1ACB0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_21CE09F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21CE6BA60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_21CE09FE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CE0A000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21CE0A000(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FDC0, &qword_21CE6F630);
  v10 = *(sub_21CE6B960() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21CE6B960() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s8Settings0A21NavigationEventRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v19 = *a1;
  v20 = v4;
  v21 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v16 = *a2;
  v17 = v6;
  v18 = v7;
  sub_21CDEFF74(v19, v4);
  sub_21CDEFF74(v16, v6);
  v8 = _s8Settings0A10EventImageO2eeoiySbAC_ACtFZ_0(&v19, &v16);
  sub_21CDEFF7C(v16, v17);
  sub_21CDEFF7C(v19, v20);
  if (v8)
  {
    v9 = type metadata accessor for SettingsNavigationEventRecord(0);
    if (MEMORY[0x21CF19920](a1 + v9[5], a2 + v9[5]) & 1) != 0 && (sub_21CE0A328(*(a1 + v9[6]), *(a2 + v9[6])) & 1) != 0 && (sub_21CE6B9E0())
    {
      v10 = v9[8];
      v11 = (a1 + v10);
      v12 = *(a1 + v10 + 8);
      v13 = (a2 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14 && (*v11 == *v13 && v12 == v14 || (sub_21CE6D400() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21CE0A328(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CE6B960();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_21CDE5974(&qword_2812132D0, MEMORY[0x277CC9130], MEMORY[0x277CC9140]);
    v21 = sub_21CE6CBA0();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.settingsHostApplicationBundleIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.suggestions.getter()
{
  swift_getKeyPath();
  sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &protocol conformance descriptor for SettingsZeroKeywordNavigationItemsProvider);
  sub_21CE6BB70();
}

uint64_t sub_21CE0A610@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &protocol conformance descriptor for SettingsZeroKeywordNavigationItemsProvider);
  sub_21CE6BB70();

  *a2 = *(v3 + 32);
}

uint64_t sub_21CE0A6E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21CDE5974(&qword_2812122B8, type metadata accessor for SettingsZeroKeywordNavigationItemsProvider, &protocol conformance descriptor for SettingsZeroKeywordNavigationItemsProvider);
  sub_21CE6BB70();

  *a2 = *(v3 + 40);
}

void *sub_21CE0A7F4()
{
  type metadata accessor for SettingsZeroKeywordNavigationItemsProvider(0);
  v0 = swift_allocObject();
  result = SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)(0xD000000000000015, 0x800000021CE757E0);
  qword_27CE40080 = v0;
  return result;
}

uint64_t static SettingsZeroKeywordNavigationItemsProvider.shared.getter()
{
  if (qword_27CE3F9C0 != -1)
  {
    swift_once();
  }
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.__allocating_init(settingsHostApplicationBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SettingsZeroKeywordNavigationItemsProvider.init(settingsHostApplicationBundleIdentifier:)(a1, a2);
  return v4;
}

uint64_t sub_21CE0A8F8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21CE6CDF0();
    v6 = sub_21CE6CE20();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    sub_21CE0B338(0, 0, v4, &unk_21CE71458, v8);

    return sub_21CDE5494(v4, &qword_27CE401F0, &qword_21CE71300);
  }

  return result;
}

void *SettingsZeroKeywordNavigationItemsProvider.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_21CE6D1E0();
    sub_21CE6BE40();
    sub_21CDE5974(&qword_27CE3FA98, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_21CE6CEB0();
    v2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_21CDEEAA0(v2);
      *(v1 + 56) = MEMORY[0x277D84FA0];

      v16 = OBJC_IVAR____TtC8Settings42SettingsZeroKeywordNavigationItemsProvider___observationRegistrar;
      v17 = sub_21CE6BB90();
      (*(*(v17 - 8) + 8))(v1 + v16, v17);
      return v1;
    }

    while (1)
    {
      sub_21CE6BE30();

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_21CE6D1F0())
      {
        sub_21CE6BE40();
        swift_dynamicCast();
        v13 = v6;
        v14 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t SettingsZeroKeywordNavigationItemsProvider.__deallocating_deinit()
{
  SettingsZeroKeywordNavigationItemsProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21CE0ADBC()
{
  v14 = v0;
  v1 = *(v0 + 1424);
  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_281216608);
  v3 = v1;
  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_21CE6D450();
    v10 = sub_21CDF2CC8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21CDE1000, v4, v5, "Failed to process records: '%{public}s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21CE0AFA4()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1392, sub_21CE0B010, v0 + 1296);
}

uint64_t sub_21CE0B068()
{
  v14 = v0;
  v1 = *(v0 + 1440);
  if (qword_2812132A0 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_281216608);
  v3 = v1;
  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF10();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_21CE6D450();
    v10 = sub_21CDF2CC8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21CDE1000, v4, v5, "Failed to process records: '%{public}s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21CE0B250()
{
  v1 = v0[22];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CE0B2C8()
{
  v1 = v0[24];
  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CE0B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21CDE5A20(a3, v25 - v10);
  v12 = sub_21CE6CE20();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21CDE5494(v11, &qword_27CE401F0, &qword_21CE71300);
  }

  else
  {
    sub_21CE6CE10();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CE6CDB0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21CE6CC90() + 32;
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

uint64_t sub_21CE0B5E8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_21CE0B970;
  }

  else
  {
    v2 = sub_21CE0B6FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CE0B6FC()
{
  v20 = v0;
  v1 = *(v0 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 80);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CDF2390(0, *(v3 + 2) + 1, 1, *(v0 + 80));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CDF2390((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  *(v3 + 2) = v5 + 1;
  *&v3[8 * v5 + 32] = v1;
  if (v6 != v7)
  {
    v14 = *(v0 + 96);
    *(v0 + 80) = v3;
    v15 = *(v0 + 56);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CF1B2A0](v14);
    }

    else
    {
      if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v15 + 8 * v14 + 32);
    }

    *(v0 + 88) = v8;
    *(v0 + 96) = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      v16 = [v8 linkAction];
      *(v0 + 40) = sub_21CDE40C8(0, &qword_2812119C8, 0x277D23720);
      *(v0 + 16) = v16;
      v17 = swift_task_alloc();
      *(v0 + 104) = v17;
      sub_21CDF3438();
      *v17 = v0;
      v17[1] = sub_21CE0B5E8;
      v8 = (v0 + 48);
      v15 = v0 + 16;

      return MEMORY[0x28210B540](v8, v15);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x28210B540](v8, v15);
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 64);
  v19 = MEMORY[0x277D84FA0];

  v11 = sub_21CDE71C0(v3, &v19, v10);

  v13 = *(v0 + 8);
  if (!v9)
  {
    v12 = v11;
  }

  return v13(v12);
}

uint64_t sub_21CE0B970()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CE0B9D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v49 = a2;
  v46 = a4;
  v42 = sub_21CE6B560();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21CE6B960();
  v37 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21CE6BA60();
  v7 = *(v48 - 8);
  v8 = MEMORY[0x28223BE20](v48);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v38 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = *a1;
  sub_21CE6B630();
  sub_21CE6B5A0();

  v43 = v14;
  sub_21CE6B630();
  sub_21CE6B5A0();

  if (v51 == *(v47 + 1))
  {

    v15 = v49;
  }

  else
  {
    v16 = sub_21CE6D400();

    v15 = v49;
    if ((v16 & 1) == 0)
    {
LABEL_5:
      (*(v7 + 8))(v13, v48);
      v17 = type metadata accessor for SettingsNavigationEventRecord(0);
      return (*(*(v17 - 8) + 56))(v46, 1, 1, v17);
    }
  }

  if (sub_21CE38FC0(v13, *v15))
  {
    goto LABEL_5;
  }

  v19 = v39;
  v20 = v48;
  (*(v7 + 16))(v39, v13, v48);
  v21 = v38;
  sub_21CE4756C(v38, v19);
  v22 = *(v7 + 8);
  v22(v21, v20);
  v22(v13, v20);
  sub_21CE6B630();
  v49 = v58;
  v48 = v59;
  v47 = v61;
  if (qword_281211F60 != -1)
  {
    swift_once();
  }

  v23 = v40;
  sub_21CE6B5A0();
  v24 = sub_21CE6B540();
  v26 = v25;
  (v41[1])(v23, v42);
  sub_21CDE5974(&qword_2812132C8, MEMORY[0x277CC9130], MEMORY[0x277CC9148]);
  v27 = v64;
  sub_21CE6B800();

  if (v27)
  {
    return sub_21CDF32E8(v24, v26);
  }

  sub_21CDF32E8(v24, v26);
  sub_21CE6B630();
  v52 = v58;
  v53 = v59;
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v28 = SettingsNavigationLocationEntity.localizedNavigationPathComponents.getter();
  v64 = 0;
  v49 = v28;

  sub_21CE6B630();
  sub_21CE6B5A0();

  sub_21CE6B5A0();
  LODWORD(v48) = v51;
  sub_21CE6B5A0();

  v47 = v52;
  v42 = v53;
  v29 = v45;
  v30 = type metadata accessor for SettingsNavigationEventRecord(0);
  v31 = v37;
  v32 = v46;
  (*(v37 + 16))(v46 + v30[5], v44, v29);
  sub_21CE6B630();
  v41 = v52;
  sub_21CE6B5A0();

  sub_21CE6B630();
  sub_21CE6B5A0();
  (*(v31 + 8))(v44, v45);

  v33 = v50;
  v34 = v30[8];
  v35 = v42;
  *v32 = v47;
  *(v32 + 8) = v35;
  *(v32 + 16) = v48;
  *(v32 + v30[6]) = v49;
  *(v32 + v34) = v33;
  return (*(*(v30 - 1) + 56))(v32, 0, 1, v30);
}

uint64_t sub_21CE0C2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsNavigationEventRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0C34C()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_21CE0C388()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_21CE0C3C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CDE7A00;

  return sub_21CDE5D3C(a1, v4, v5, v6);
}

uint64_t Binding.settingsUndoableBinding(actionName:systemSettingsAnchor:settingsUndoProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_21CE6BA60();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CE294EC(a2, a3, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v32 = a5;
    sub_21CDE5494(v14, &unk_27CE40310, &qword_21CE71470);
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    v19 = v6;
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v20 = sub_21CE6BDA0();
    __swift_project_value_buffer(v20, qword_27CE412C0);
    v21 = sub_21CE6BD80();
    v22 = sub_21CE6CF10();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136446978;
      v25 = sub_21CE6D2B0();
      v27 = sub_21CDF2CC8(v25, v26, &v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = 15;
      *(v23 + 22) = 2082;
      v28 = sub_21CE6D2B0();
      v30 = sub_21CDF2CC8(v28, v29, &v33);

      *(v23 + 24) = v30;
      *(v23 + 32) = 2082;
      *(v23 + 34) = sub_21CDF2CC8(0xD000000000000013, 0x800000021CE76580, &v33);
      _os_log_impl(&dword_21CDE1000, v21, v22, "%{public}s:%ld %{public}s %{public}s", v23, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v24, -1, -1);
      MEMORY[0x21CF1BD50](v23, -1, -1);
    }

    return (*(*(v32 - 8) + 16))(a6, v19);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    Binding.settingsUndoableBinding(actionName:deepLink:settingsUndoProxy:)(a1, v18, v32, a5, a6);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t Binding.settingsUndoableBinding(actionName:deepLink:settingsUndoProxy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v40 = a1;
  v41 = a2;
  v45 = a5;
  v46 = sub_21CE6BA60();
  v9 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = v10;
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_21CE6B960();
  v43 = *(v48 - 8);
  v12 = MEMORY[0x28223BE20](v48);
  v39 = v13;
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v47 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_21CE0D2FC(a3, &v49);
  if (v50)
  {
    sub_21CDE4CD8(&v49, v51);
    v35 = v9;
    v20 = a4;
    v44 = v11;
    v21 = *(v15 + 16);
    v21(v19, v6, a4);
    v22 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v34 = v14;
    v33 = v22 + v16;
    v37 = v22;
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    v38 = *(a4 + 16);
    *(v23 + 4) = v38;
    v36 = *(v15 + 32);
    v36(&v23[v22], v19, a4);
    v21(v47, v6, a4);
    sub_21CDE4CF4(v51, &v49);
    v24 = v43;
    (*(v43 + 16))(v14, v40, v48);
    v25 = v35;
    (*(v35 + 16))(v44, v41, v46);
    v26 = (v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + *(v24 + 80) + 40) & ~*(v24 + 80);
    v28 = v25;
    v29 = (v39 + *(v25 + 80) + v27) & ~*(v25 + 80);
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    *(v30 + 4) = v38;
    v36(&v30[v37], v47, v20);
    sub_21CDE4CD8(&v49, &v30[v26]);
    (*(v24 + 32))(&v30[v27], v34, v48);
    (*(v28 + 32))(&v30[v29], v44, v46);
    sub_21CE6CA80();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_21CDE5494(&v49, &qword_27CE400A8, &qword_21CE716C0);
    return (*(v15 + 16))(v45, v6, a4);
  }
}

uint64_t sub_21CE0CCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), uint64_t a8)
{
  v66 = a6;
  v67 = a7;
  v69 = a1;
  v71 = a8;
  v11 = sub_21CE6CA90();
  v74 = *(v11 - 8);
  v68 = *(v74 + 64);
  MEMORY[0x28223BE20](v11);
  v73 = &v51 - v12;
  v13 = sub_21CE6BA60();
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CE6B960();
  v52 = v15;
  v57 = *(v15 - 8);
  v16 = v57;
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  v54 = &v51 - v19;
  v64 = type metadata accessor for SettingsUndoAction(0) - 8;
  v21 = MEMORY[0x28223BE20](v64);
  v58 = (&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = *(a8 - 8);
  v23 = *(v72 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v70 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - v25;
  v59 = &v51 - v25;
  v60 = a4;
  MEMORY[0x21CF1AA30](v11);
  v27 = a5[3];
  v62 = a5[4];
  v63 = v27;
  v61 = __swift_project_boxed_opaque_existential_1(a5, v27);
  v53 = *(v16 + 16);
  v53(v20, v66, v15);
  v55 = *(v76 + 16);
  v55(v75, v67, v77);
  v28 = v74;
  v29 = *(v74 + 16);
  v56 = v11;
  v29(v73, a4, v11);
  v30 = v72;
  v31 = *(v72 + 16);
  v66 = v72 + 16;
  v67 = v31;
  v32 = v70;
  v33 = v26;
  v34 = v71;
  v31(v70, v33, v71);
  v35 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v36 = v30;
  v37 = (v68 + *(v30 + 80) + v35) & ~*(v30 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v34;
  (*(v74 + 32))(v38 + v35, v73, v11);
  (*(v36 + 32))(v38 + v37, v32, v34);
  v39 = v54;
  v40 = v52;
  v53(v65, v54, v52);
  v41 = sub_21CE6CC70();
  v43 = v42;
  v44 = v64;
  v45 = v58;
  v46 = v75;
  v47 = v77;
  v55(v58 + *(v64 + 28), v75, v77);
  sub_21CE6B4A0();
  (*(v76 + 8))(v46, v47);
  (*(v57 + 8))(v39, v40);
  *v45 = v41;
  v45[1] = v43;
  v48 = (v45 + *(v44 + 36));
  *v48 = sub_21CE0D534;
  v48[1] = v38;
  (*(v62 + 8))(v45, v63);
  sub_21CE0D5FC(v45);
  v49 = v71;
  v67(v70, v69, v71);
  sub_21CE6CA60();
  return (*(v72 + 8))(v59, v49);
}

uint64_t sub_21CE0D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CE6CA90();
  return sub_21CE6CA60();
}

uint64_t sub_21CE0D2FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE400A8, &qword_21CE716C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0D3D4(uint64_t a1)
{
  v3 = v1[4];
  v4 = *(sub_21CE6CA90() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_21CE6B960() - 8);
  v8 = (v6 + *(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_21CE6BA60() - 8);
  v11 = v1[2];
  v12 = v1[3];
  v13 = (v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));

  return sub_21CE0CCB0(a1, v11, v12, v1 + v5, (v1 + v6), v1 + v8, v13, v3);
}

uint64_t sub_21CE0D534()
{
  v1 = *(v0 + 16);
  v2 = *(sub_21CE6CA90() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_21CE0D234(v0 + v3, v4, v1);
}

uint64_t sub_21CE0D5FC(uint64_t a1)
{
  v2 = type metadata accessor for SettingsUndoAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CloudSyncPlatform.description.getter()
{
  v1 = *v0;
  v2 = 6512973;
  v3 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v3 = 1684099177;
  }

  if (v1 != 4)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    return 0x656E6F685069;
  }

  else
  {
    return v2;
  }
}

BOOL sub_21CE0D73C(void *a1, uint64_t *a2)
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

void *sub_21CE0D76C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_21CE0D798@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21CE0D870@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21CE0D8CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21CE0D9E4(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  swift_beginAccess();
  sub_21CE0F080(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_21CE0D98C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  swift_beginAccess();
  return sub_21CE0D9E4(v1 + v3, a1);
}

uint64_t sub_21CE0D9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0DA54(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_21CE0DAC8(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_21CE0DB1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

void sub_21CE0DB74(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5];
  v7 = v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_storeIdentifier;
  swift_beginAccess();
  if (*(v7 + 8))
  {

    v8 = sub_21CE6CC20();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_21CE6CC20();
  [a1 encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();

  v10 = v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_displayName;
  swift_beginAccess();
  if (*(v10 + 8))
  {

    v11 = sub_21CE6CC20();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_21CE6CC20();
  [a1 encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_message;
  swift_beginAccess();
  if (*(v13 + 8))
  {

    v14 = sub_21CE6CC20();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_21CE6CC20();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  v16 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  swift_beginAccess();
  sub_21CE0D9E4(v2 + v16, v6);
  v17 = sub_21CE6BA60();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v6, 1, v17) != 1)
  {
    v19 = sub_21CE6B9B0();
    (*(v18 + 8))(v6, v17);
  }

  v20 = sub_21CE6CC20();
  [a1 encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  v21 = v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectTitle;
  swift_beginAccess();
  if (*(v21 + 8))
  {

    v22 = sub_21CE6CC20();
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_21CE6CC20();
  [a1 encodeObject:v22 forKey:v23];
  swift_unknownObjectRelease();

  v24 = (v2 + OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms);
  swift_beginAccess();
  if ((v24[1] & 1) == 0)
  {
    v25 = *v24;
    v26 = sub_21CE6CC20();
    [a1 encodeInteger:v25 forKey:v26];
  }
}

id CloudSyncConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE0E644(a1);

  return v4;
}

id CloudSyncConfiguration.init(coder:)(void *a1)
{
  v2 = sub_21CE0E644(a1);

  return v2;
}

id CloudSyncConfiguration.__allocating_init(storeIdentifier:displayName:message:redirectURL:redirectTitle:platforms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v13 = objc_allocWithZone(v10);
  v29 = *a10;
  v28 = *(a10 + 8);
  v14 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_storeIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_displayName];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_message];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  v18 = sub_21CE6BA60();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  v19 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectTitle];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v13[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms];
  *v20 = 0;
  v20[8] = 1;
  swift_beginAccess();
  *v14 = a1;
  *(v14 + 1) = a2;
  swift_beginAccess();
  *v15 = a3;
  *(v15 + 1) = a4;
  swift_beginAccess();
  *v16 = a5;
  *(v16 + 1) = a6;
  swift_beginAccess();
  sub_21CE0EA88(a7, &v13[v17]);
  swift_endAccess();
  swift_beginAccess();
  *v19 = a8;
  *(v19 + 1) = a9;

  swift_beginAccess();
  *v20 = v29;
  v20[8] = v28;
  v32.receiver = v13;
  v32.super_class = v31;
  v21 = objc_msgSendSuper2(&v32, sel_init);
  sub_21CE0EAF8(a7);
  return v21;
}

id CloudSyncConfiguration.init(storeIdentifier:displayName:message:redirectURL:redirectTitle:platforms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v29 = *a10;
  v28 = *(a10 + 8);
  v13 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_storeIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_displayName];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_message];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  v17 = sub_21CE6BA60();
  (*(*(v17 - 8) + 56))(&v10[v16], 1, 1, v17);
  v18 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectTitle];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v10[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms];
  *v19 = 0;
  v19[8] = 1;
  swift_beginAccess();
  *v13 = a1;
  *(v13 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  swift_beginAccess();
  *v15 = a5;
  *(v15 + 1) = a6;

  swift_beginAccess();
  sub_21CE0EA88(a7, &v10[v16]);
  swift_endAccess();
  swift_beginAccess();
  *v18 = a8;
  *(v18 + 1) = a9;

  swift_beginAccess();
  *v19 = v29;
  v19[8] = v28;
  v30.receiver = v10;
  v30.super_class = type metadata accessor for CloudSyncConfiguration(0);
  v20 = objc_msgSendSuper2(&v30, sel_init);
  sub_21CE0EAF8(a7);
  return v20;
}

id CloudSyncConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudSyncConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncConfiguration(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21CE0E644(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v45 - v5;
  v6 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_storeIdentifier];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_displayName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_message];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectURL;
  v10 = sub_21CE6BA60();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v47 = v10;
  v48 = v9;
  v46 = v12;
  v45 = v11 + 56;
  (v12)(&v2[v9], 1, 1);
  v13 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_redirectTitle];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v2[OBJC_IVAR____TtC8Settings22CloudSyncConfiguration_platforms];
  *v14 = 0;
  v50 = v14;
  v14[8] = 1;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v15 = sub_21CE6D0F0();
  if (v15)
  {
    v16 = v15;
    v17 = sub_21CE6CC50();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  swift_beginAccess();
  *v6 = v17;
  v6[1] = v19;

  v20 = sub_21CE6D0F0();
  if (v20)
  {
    v21 = v20;
    v22 = sub_21CE6CC50();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  swift_beginAccess();
  *v7 = v22;
  v7[1] = v24;

  v25 = sub_21CE6D0F0();
  if (v25)
  {
    v26 = v25;
    v27 = sub_21CE6CC50();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = v49;
  v31 = 1;
  swift_beginAccess();
  *v8 = v27;
  v8[1] = v29;

  sub_21CDE40C8(0, &qword_27CE40118, 0x277CBEBC0);
  v32 = sub_21CE6D0F0();
  if (v32)
  {
    v33 = v32;
    sub_21CE6B9F0();

    v31 = 0;
  }

  v46(v30, v31, 1, v47);
  v34 = v48;
  swift_beginAccess();
  sub_21CE0F080(v30, &v2[v34]);
  swift_endAccess();
  v35 = sub_21CE6D0F0();
  if (v35)
  {
    v36 = v35;
    v37 = sub_21CE6CC50();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  swift_beginAccess();
  *v13 = v37;
  v13[1] = v39;

  v40 = sub_21CE6CC20();
  v41 = [a1 decodeIntegerForKey_];

  v42 = v50;
  swift_beginAccess();
  *v42 = v41;
  v42[8] = 0;
  v43 = type metadata accessor for CloudSyncConfiguration(0);
  v51.receiver = v2;
  v51.super_class = v43;
  return objc_msgSendSuper2(&v51, sel_init);
}

uint64_t sub_21CE0EA88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0EAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CloudSyncConfiguration(uint64_t a1)
{
  result = qword_27CE400F8;
  if (!qword_27CE400F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CE0EBB0()
{
  result = qword_27CE400D0;
  if (!qword_27CE400D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE400D0);
  }

  return result;
}

unint64_t sub_21CE0EC08()
{
  result = qword_27CE400D8;
  if (!qword_27CE400D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE400D8);
  }

  return result;
}

unint64_t sub_21CE0EC60()
{
  result = qword_27CE400E0;
  if (!qword_27CE400E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE400E0);
  }

  return result;
}

unint64_t sub_21CE0ECB8()
{
  result = qword_27CE400E8;
  if (!qword_27CE400E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE400E8);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t getEnumTagSinglePayload for CloudSyncPlatform(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CloudSyncPlatform(uint64_t result, int a2, int a3)
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

void sub_21CE0EDC0(uint64_t a1)
{
  sub_21CE0F028(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21CE0F028(uint64_t a1)
{
  if (!qword_27CE40108)
  {
    sub_21CE6BA60();
    v1 = sub_21CE6D150();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE40108);
    }
  }
}

uint64_t sub_21CE0F080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_21CE0F0F4()
{
  qword_27CE401A0 = 0;
  result = 0.0;
  xmmword_27CE40180 = 0u;
  *algn_27CE40190 = 0u;
  return result;
}

uint64_t sub_21CE0F10C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27CE3F9C8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_21CE0D2FC(&xmmword_27CE40180, v2);
}

void NSUndoManager.registerUndoAction(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SettingsUndoAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);
  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CEF0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v11 = 136315906;
    v12 = sub_21CE6D2B0();
    v14 = a1;
    v15 = v2;
    v16 = sub_21CDF2CC8(v12, v13, v28);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 18;
    *(v11 + 22) = 2080;
    v17 = sub_21CE6D2B0();
    v19 = sub_21CDF2CC8(v17, v18, v28);
    v2 = v15;
    a1 = v14;
    v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v11 + 24) = v19;
    *(v11 + 32) = 2080;
    *(v11 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v28);
    _os_log_impl(&dword_21CDE1000, v9, v10, "%s:%ld %s %s", v11, 0x2Au);
    v20 = v27;
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v20, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  v28[3] = &type metadata for SettingsFrameworkFeatureFlags;
  v28[4] = sub_21CE0F8AC();
  v21 = sub_21CE6BC00();
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v21)
  {
    sub_21CE0F900(a1, v7);
    v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v23 = swift_allocObject();
    sub_21CE0F964(v7, v23 + v22);
    sub_21CE0FA34();
    sub_21CE6CEE0();

    v24 = a1[1];
    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v26 = sub_21CE6CC20();
      [v2 setActionName_];
    }
  }
}

Swift::Void __swiftcall NSUndoManager.removeAllUndoActions()()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CEF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315906;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 31;
    *(v5 + 22) = 2080;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, v14);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2080;
    *(v5 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v14);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%s:%ld %s %s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v14[3] = &type metadata for SettingsFrameworkFeatureFlags;
  v14[4] = sub_21CE0F8AC();
  v13 = sub_21CE6BC00();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v13)
  {
    [v1 removeAllActions];
  }
}

unint64_t EnvironmentValues.settingsUndoProxy.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_21CE0FA80();
  v2 = sub_21CE6C2B0();
  if (v7)
  {
    return sub_21CDE4CD8(&v6, a1);
  }

  result = MEMORY[0x21CF1A110](v2);
  v4 = result;
  if (result)
  {
    result = sub_21CE0FA34();
    v5 = &protocol witness table for NSUndoManager;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  if (v7)
  {
    return sub_21CE0FAD4(&v6);
  }

  return result;
}

uint64_t sub_21CE0F84C(uint64_t a1)
{
  sub_21CE0D2FC(a1, v3);
  sub_21CE0D2FC(v3, &v2);
  sub_21CE0FA80();
  sub_21CE6C2C0();
  return sub_21CE0FAD4(v3);
}

unint64_t sub_21CE0F8AC()
{
  result = qword_27CE401A8;
  if (!qword_27CE401A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE401A8);
  }

  return result;
}

uint64_t sub_21CE0F900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsUndoAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CE0F964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsUndoAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CE0FA34()
{
  result = qword_27CE401B0;
  if (!qword_27CE401B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE401B0);
  }

  return result;
}

unint64_t sub_21CE0FA80()
{
  result = qword_27CE401B8;
  if (!qword_27CE401B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE401B8);
  }

  return result;
}

uint64_t sub_21CE0FAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE400A8, &qword_21CE716C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static ExtensionsObserver.extensionsQuery.getter()
{
  v0 = objc_opt_self();
  v1 = sub_21CE6CC20();
  v2 = [v0 extensionPointIdentifierQuery_];

  return v2;
}

uint64_t (*sub_21CE0FC10(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21CE6BEB0();
  return sub_21CE0FCB4;
}

uint64_t sub_21CE0FCB8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401D0, &qword_21CE717B0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  sub_21CE6BEA0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21CE0FE58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401D0, &qword_21CE717B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  sub_21CE6BEA0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21CE0FF90(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401D0, &qword_21CE717B0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  sub_21CE6BE90();
  swift_endAccess();
  return sub_21CE10100;
}

uint64_t sub_21CE10118@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CE6BEC0();

  *a4 = v6;
  return result;
}

uint64_t sub_21CE101A8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CE6BED0();
}

uint64_t sub_21CE10234(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CE6BEC0();

  return v3;
}

uint64_t sub_21CE102B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CE6BED0();
}

uint64_t (*sub_21CE10320(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21CE6BEB0();
  return sub_21CE1581C;
}

void sub_21CE103C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21CE1042C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_21CE6BE90();
  return swift_endAccess();
}

uint64_t sub_21CE104A8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E8, &unk_21CE71808);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  sub_21CE6BEA0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21CE10648(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21CE6BE90();
  return swift_endAccess();
}

uint64_t sub_21CE106C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E8, &unk_21CE71808);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  sub_21CE6BEA0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_21CE107F8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E8, &unk_21CE71808);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensionsLookup;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  sub_21CE6BE90();
  swift_endAccess();
  return sub_21CE15820;
}

void sub_21CE10968(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_21CE6BEA0();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_21CE6BEA0();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_21CE10AD0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402C8, &unk_21CE718E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = [a1 extensions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402D0, &qword_21CE718F8);
  v9 = sub_21CE6CD40();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    v17 = sub_21CE13D78(v14);
    sub_21CE12E24(&v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402D8, &qword_21CE71900);
    sub_21CE6CE40();
    return (*(v5 + 8))(v7, v4);
  }

  v10 = sub_21CE6D360();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v17 = MEMORY[0x277D84F90];
  sub_21CE6D310();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v16[1] = v2;
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CF1B2A0](v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
        swift_unknownObjectRetain();
      }

      ++v11;
      type metadata accessor for SettingsExtension();
      v13 = swift_allocObject();
      swift_getObjectType();
      sub_21CE17714(v12, v13);
      sub_21CE6D2F0();
      sub_21CE6D320();
      sub_21CE6D330();
      sub_21CE6D300();
    }

    while (v10 != v11);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_21CE10D7C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) localizedName];
  sub_21CE6CC50();

  v4 = [*(v2 + 16) localizedName];
  sub_21CE6CC50();

  sub_21CE1570C();
  v5 = sub_21CE6D170();

  return v5 == -1;
}

id sub_21CE10EF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionsObserver.QueryObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ExtensionsObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  ExtensionsObserver.init()();
  return v0;
}

uint64_t ExtensionsObserver.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensions;
  v13 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F8, &qword_21CE71818);
  sub_21CE6BE80();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v14 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensionsLookup;
  v19 = sub_21CDFA444(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40200, &qword_21CE71820);
  sub_21CE6BE80();
  (*(v5 + 32))(v0 + v14, v7, v4);
  v15 = sub_21CE6CE20();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v0;

  sub_21CE11F34(0, 0, v3, &unk_21CE71830, v16);

  return v0;
}

uint64_t sub_21CE112AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40328, &qword_21CE71950);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40330, &qword_21CE71958);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40338, &unk_21CE71960);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CE11448, 0, 0);
}

uint64_t sub_21CE11448()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F8, &qword_21CE71818);
  (*(v3 + 104))(v1, *MEMORY[0x277D85778], v2);
  sub_21CE6CE70();
  sub_21CE6CE50();
  v0[13] = 0;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_21CE11590;
  v5 = v0[4];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_21CE11590()
{

  return MEMORY[0x2822009F8](sub_21CE1168C, 0, 0);
}

uint64_t sub_21CE1168C()
{
  v1 = v0[2];
  v0[15] = v1;
  if (v1)
  {
    sub_21CE6CDE0();
    v0[16] = sub_21CE6CDD0();
    v3 = sub_21CE6CDB0();

    return MEMORY[0x2822009F8](sub_21CE117C8, v3, v2);
  }

  else
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    (*(v0[5] + 8))(v0[6], v0[4]);
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }
}

void sub_21CE117C8()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[3];

  sub_21CE11BD4(v1, v3);
  v0[17] = v2;
  if (v2)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_21CE11884, 0, 0);
  }
}

uint64_t sub_21CE11884()
{
  v0[13] = v0[17];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_21CE11590;
  v2 = v0[4];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v2);
}

void sub_21CE11934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402D8, &qword_21CE71900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(v3 + 16);
  v6(&v19 - v4, a1, v2);
  Observer = type metadata accessor for ExtensionsObserver.QueryObserver(0);
  v8 = objc_allocWithZone(Observer);
  v6(&v8[OBJC_IVAR____TtCC8Settings18ExtensionsObserverP33_8B62C04EFBF9C0BB57B71BCEDA4DE89713QueryObserver_continuation], v5, v2);
  v19.receiver = v8;
  v19.super_class = Observer;
  v9 = objc_msgSendSuper2(&v19, sel_init);
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40700, &qword_21CE71908);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CE71750;
  v11 = objc_opt_self();
  v12 = sub_21CE6CC20();
  v13 = [v11 extensionPointIdentifierQuery_];

  *(v10 + 32) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CC5E08]);
  sub_21CDE40C8(0, &unk_27CE40340, 0x277CC5DF8);
  v15 = v9;
  v16 = sub_21CE6CD30();

  v17 = [v14 initWithQueries:v16 delegate:v15];

  *(swift_allocObject() + 16) = v17;
  v18 = v17;
  sub_21CE6CE30();
  [v18 resume];
}

uint64_t sub_21CE11BD4(unint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  v3 = v2;
  v5 = a1;
  v34 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_29:
    v6 = sub_21CE6D360();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CE6BED0();
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_21CE6BED0();
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_30;
  }

LABEL_3:
  v27 = isUniquelyReferenced_nonNull_native;
  v28 = v3;
  v7 = 0;
  v32 = v5 & 0xC000000000000001;
  v29 = v5 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x277D84F98];
  v30 = v6;
  v31 = v5;
  while (1)
  {
    if (v32)
    {
      v9 = MEMORY[0x21CF1B2A0](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v7 >= *(v29 + 16))
      {
        goto LABEL_28;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v33 = v10;
    v11 = [*(v9 + 16) bundleIdentifier];
    v5 = sub_21CE6CC50();
    v13 = v12;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = sub_21CE66850(v5, v13);
    v15 = v8[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_26;
    }

    v18 = v14;
    if (v8[3] < v17)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_21CE46C6C();
      if (v18)
      {
LABEL_17:

        *(v8[7] + 8 * v3) = v9;

        goto LABEL_21;
      }
    }

LABEL_19:
    v8[(v3 >> 6) + 8] |= 1 << v3;
    v21 = (v8[6] + 16 * v3);
    *v21 = v5;
    v21[1] = v13;
    *(v8[7] + 8 * v3) = v9;
    v22 = v8[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_27;
    }

    v8[2] = v24;
LABEL_21:

    MEMORY[0x21CF1AD00](v25);
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CE6CD60();
    }

    sub_21CE6CD80();

    ++v7;
    v5 = v31;
    if (v33 == v30)
    {
      goto LABEL_30;
    }
  }

  sub_21CE459F8(v17, isUniquelyReferenced_nonNull_native);
  v19 = sub_21CE66850(v5, v13);
  if ((v18 & 1) == (v20 & 1))
  {
    v3 = v19;
    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  result = sub_21CE6D440();
  __break(1u);
  return result;
}

uint64_t sub_21CE11F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21CDE5A20(a3, v25 - v10);
  v12 = sub_21CE6CE20();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21CDE5494(v11, &qword_27CE401F0, &qword_21CE71300);
  }

  else
  {
    sub_21CE6CE10();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CE6CDB0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21CE6CC90() + 32;
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

      sub_21CDE5494(a3, &qword_27CE401F0, &qword_21CE71300);

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

  sub_21CDE5494(a3, &qword_27CE401F0, &qword_21CE71300);
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

uint64_t sub_21CE12224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_21CDE5A20(a3, v25 - v10);
  v12 = sub_21CE6CE20();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21CDE5494(v11, &qword_27CE401F0, &qword_21CE71300);
  }

  else
  {
    sub_21CE6CE10();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21CE6CDB0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21CE6CC90() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402C0, &qword_21CE718D8);
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

      sub_21CDE5494(a3, &qword_27CE401F0, &qword_21CE71300);

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

  sub_21CDE5494(a3, &qword_27CE401F0, &qword_21CE71300);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE402C0, &qword_21CE718D8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}