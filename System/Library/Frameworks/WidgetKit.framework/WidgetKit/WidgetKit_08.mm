uint64_t sub_1920E1294(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4, __n128 a5)
{
  v6 = a1;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v8)
    {
      goto LABEL_29;
    }

    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v6 < 0)
    {
      v10 = v6;
    }

    if (v7)
    {
      v11 = v10;
    }

    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v12 = a2;
    }

    if (a2 >> 62)
    {
      v13 = v12;
    }

    if (v11 == v13)
    {
LABEL_29:
      v21 = 1;
      return v21 & 1;
    }

    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = sub_19202A7A8(0, a3, a4);
    if (((a2 | v6) & 0xC000000000000001) != 0)
    {
      v14 = a2 & 0xC000000000000001;
      v15 = 4;
      while (1)
      {
        v16 = v15 - 4;
        v17 = v15 - 3;
        if (__OFADD__(v15 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x193B0B410](v15 - 4, v6);
          if (!v14)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v6 + 8 * v15);
          if (!v14)
          {
LABEL_24:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 8 * v15);
            goto LABEL_26;
          }
        }

        v19 = MEMORY[0x193B0B410](v15 - 4, a2);
LABEL_26:
        v20 = v19;
        v21 = sub_1922281D0();

        if (v21)
        {
          ++v15;
          if (v17 != v8)
          {
            continue;
          }
        }

        return v21 & 1;
      }
    }

    v22 = (v6 + 32);
    v23 = (a2 + 32);
    v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v8 - 1;
    while (1)
    {
      if (!v24)
      {
        goto LABEL_40;
      }

      if (!v25)
      {
        break;
      }

      v28 = *v22++;
      v27 = v28;
      v29 = *v23++;
      a2 = v27;
      v6 = v29;
      v21 = sub_1922281D0();

      v31 = v26-- != 0;
      if (v21)
      {
        --v25;
        --v24;
        if (v31)
        {
          continue;
        }
      }

      return v21 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v32 = a4;
    v33 = a3;
    v34 = sub_192228340();
    a3 = v33;
    a4 = v32;
    v8 = v34;
  }

  v35 = a4;
  v36 = a3;
  result = sub_192228340();
  a3 = v36;
  a4 = v35;
  if (v8 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1920E1510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1920E1778();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues._localizations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_192056FC0();
  sub_1922261E0();
  return sub_1920E15D0;
}

void sub_1920E15D0(uint64_t *a1, char a2)
{
  if (a2)
  {

    EnvironmentValues._localizations.setter(v2);
  }

  else
  {
    EnvironmentValues._localizations.setter(*a1);
  }
}

uint64_t sub_1920E1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1920E16AC(uint64_t a1)
{
  v2 = sub_192046438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E16E8(uint64_t a1)
{
  v2 = sub_192046438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920E1730()
{
  if (*(*v0 + 16))
  {
    return sub_19216A63C();
  }

  else
  {
    return 7104878;
  }
}

unint64_t sub_1920E1778()
{
  result = qword_1EADEF9C8;
  if (!qword_1EADEF9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECE8, &unk_19222B0D0);
    sub_192046D84(&qword_1EADF1230, 255, type metadata accessor for WidgetLocalizations, &protocol conformance descriptor for WidgetLocalizations);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF9C8);
  }

  return result;
}

uint64_t sub_1920E1830(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
    sub_1920E1A88();
    sub_192227B00();
    sub_192227B00();
    if (v12 == v10 && v13 == v11)
    {
    }

    else
    {
      v6 = sub_1922289A0();

      if ((v6 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    if (sub_1920E0BF0(*(v2 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations), *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations)))
    {
      v7 = *(v2 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);
      v8 = *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations);

      v4 = v7 ^ v8 ^ 1;
      return v4 & 1;
    }

LABEL_11:

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1920E1988(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
      v2 = sub_192225510();
      v4 = v3;
      if (v2 == sub_192225510() && v4 == v5)
      {
        v7 = 0;
      }

      else
      {
        v7 = sub_1922289A0();
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1920E1A88()
{
  result = qword_1EADED350;
  if (!qword_1EADED350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1200, &qword_19222F370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED350);
  }

  return result;
}

uint64_t sub_1920E1AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplatePicker.Option(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920E1B50(uint64_t a1)
{
  v2 = type metadata accessor for ControlTemplatePicker.Option(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1920E1BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920E1C20()
{
  result = qword_1EADEF9E8;
  if (!qword_1EADEF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF9E8);
  }

  return result;
}

uint64_t sub_1920E1CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
  v12 = a4 + *(v11 + 20);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  v13 = a4 + *(v11 + 24);
  *v13 = xmmword_19222A790;
  (*(a3 + 8))(a2, a3);
  (*(a3 + 16))(&v24, a2, a3);
  v14 = v25;
  *v12 = v24;
  *(v12 + 16) = v14;
  (*(v8 + 32))(v10, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA20, &qword_19222F5C8);
  if (swift_dynamicCast())
  {
    sub_19203832C(v22, &v24);
    v15 = __swift_project_boxed_opaque_existential_1(&v24, v26);
    v16 = (v15 + *(type metadata accessor for ViewableTimelineEntry(0) + 32));
    v17 = *v16;
    v18 = v16[1];
    v19 = *v13;
    v20 = *(v13 + 8);
    sub_19206A874(*v16, v18);
    sub_192046ED4(v19, v20);
    *v13 = v17;
    *(v13 + 8) = v18;
    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    return sub_1920E28D8(v22);
  }
}

uint64_t sub_1920E1EB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA18, &qword_19222F5C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19204D7FC();
  sub_192228B90();
  LOBYTE(v18) = 0;
  sub_192225150();
  sub_19203EDF0(&qword_1ED74BB00, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1922288C0();
  if (!v2)
  {
    v10 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
    v11 = (v3 + *(v10 + 20));
    v12 = *(v11 + 16);
    v18 = *v11;
    v19 = v12;
    v17 = 1;
    sub_1920E2884();
    sub_192228850();
    v13 = (v3 + *(v10 + 24));
    v14 = v13[1];
    *&v18 = *v13;
    *(&v18 + 1) = v14;
    v17 = 2;
    sub_19206A874(v18, v14);
    sub_1920593E0();
    sub_192228850();
    v9.n128_f64[0] = sub_192046ED4(v18, *(&v18 + 1));
  }

  return (*(v6 + 8))(v8, v5, v9);
}

uint64_t sub_1920E20EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1920E29F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1920E2120(uint64_t a1)
{
  v2 = sub_19204D7FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E215C(uint64_t a1)
{
  v2 = sub_19204D7FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920E21B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1920E2B18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1920E21E4(uint64_t a1)
{
  v2 = sub_19203D274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E2220(uint64_t a1)
{
  v2 = sub_19203D274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1920E225C(void *a1)
{
  v3 = v1;
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA08, &qword_19222F5B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203D274();
  sub_192228B90();
  LOBYTE(v21[0]) = 6;
  sub_1922288A0();
  if (v2)
  {
    goto LABEL_3;
  }

  v21[0] = *v3;
  HIBYTE(v20) = 8;
  sub_1920E27DC();
  sub_1922288C0();
  v9 = type metadata accessor for WidgetArchivableMetadata(0);
  LOBYTE(v21[0]) = 7;
  type metadata accessor for BundleStub(0);
  sub_19203EDF0(&qword_1ED74BAF8, type metadata accessor for BundleStub, &protocol conformance descriptor for BundleStub);
  sub_1922288C0();
  v21[0] = *(v3 + v9[7]);
  v10 = v21[0];
  HIBYTE(v20) = 1;
  sub_1920E2830();
  v11 = v10;
  sub_1922288C0();

  v21[0] = *(v3 + v9[9]);
  HIBYTE(v20) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9F8, &qword_19222F590);
  sub_19204D670(&qword_1ED74AE08, &qword_1ED74AE18, &unk_19222F4D8, MEMORY[0x1E69E6300]);
  sub_1922288C0();
  v21[0] = *(v3 + v9[10]);
  HIBYTE(v20) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA00, &qword_19222F598);
  sub_19204D760(&qword_1ED74A008, &qword_1ED74A080, &protocol conformance descriptor for WidgetViewMetadata, MEMORY[0x1E69E6300]);
  sub_1922288C0();
  LOBYTE(v21[0]) = 5;
  type metadata accessor for TimelineReloadPolicy(0);
  sub_19203EDF0(qword_1ED74B6A0, type metadata accessor for TimelineReloadPolicy, &protocol conformance descriptor for TimelineReloadPolicy);
  sub_1922288C0();
  LOBYTE(v21[0]) = 0;
  sub_192225150();
  sub_19203EDF0(&qword_1ED74BB00, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1922288C0();
  v12 = objc_opt_self();
  v13 = *(v3 + v9[8]);
  v21[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v21];
  v15 = v21[0];
  if (!v14)
  {
    v19 = v15;
    sub_192224F90();

    swift_willThrow();
LABEL_3:
    (*(v6 + 8))(v8, v5);
    return;
  }

  v16 = sub_192225080();
  v18 = v17;

  v21[0] = v16;
  v21[1] = v18;
  HIBYTE(v20) = 2;
  sub_1920593E0();
  sub_1922288C0();
  (*(v6 + 8))(v8, v5);
  sub_192039140(v16, v18);
}

unint64_t sub_1920E27DC()
{
  result = qword_1ED74BAE0;
  if (!qword_1ED74BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BAE0);
  }

  return result;
}

unint64_t sub_1920E2830()
{
  result = qword_1ED74BB70;
  if (!qword_1ED74BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BB70);
  }

  return result;
}

unint64_t sub_1920E2884()
{
  result = qword_1ED74B698;
  if (!qword_1ED74B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B698);
  }

  return result;
}

uint64_t sub_1920E28D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA28, &qword_19222F5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1920E2944()
{
  result = qword_1EADEFA30;
  if (!qword_1EADEFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFA30);
  }

  return result;
}

unint64_t sub_1920E299C()
{
  result = qword_1EADEFA38;
  if (!qword_1EADEFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFA38);
  }

  return result;
}

uint64_t sub_1920E29F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6176656C6572 && a2 == 0xE900000000000065 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447972746E65 && a2 == 0xE900000000000061)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t sub_1920E2B18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567646977 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74654D7972746E65 && a2 == 0xED00006174616461 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174654D77656976 && a2 == 0xEC00000061746164 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F5064616F6C6572 && a2 == 0xEC0000007963696CLL || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5665766968637261 && a2 == 0xEE006E6F69737265 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEF656C646E75426ELL || (sub_1922289A0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372)
  {

    return 8;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t sub_1920E2E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = sub_1922265A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = *(v5 + 16);
  v47 = a2;
  v49 = v11;
  (v11)(&v33 - v9, a2, v4, v8);
  v37 = v5;
  v44 = *(v5 + 88);
  v12 = v44(v10, v4);
  v13 = v12;
  v43 = *MEMORY[0x1E697F658];
  v14 = *MEMORY[0x1E697F690];
  v42 = *MEMORY[0x1E697F690];
  v16 = v12 == v43 || v12 == v14;
  v17 = *MEMORY[0x1E697F698];
  v40 = v16;
  v41 = v17;
  if (v12 == v17)
  {
    v16 = 1;
  }

  v18 = *MEMORY[0x1E697F680];
  v19 = 1;
  v38 = v16;
  v39 = v18;
  if (v16)
  {
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
  }

  else
  {
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
    if (v12 == v18)
    {
      goto LABEL_28;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      goto LABEL_26;
    }

    if (v12 == *MEMORY[0x1E697F660])
    {
LABEL_25:
      v25 = 0;
LABEL_26:
      v26 = 0;
      goto LABEL_28;
    }

    if (v12 == *MEMORY[0x1E697F630])
    {
LABEL_24:
      v24 = 0;
      goto LABEL_25;
    }

    if (v12 == *MEMORY[0x1E697F670])
    {
LABEL_23:
      v23 = 0;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F668])
    {
LABEL_22:
      v22 = 0;
      goto LABEL_23;
    }

    if (v12 == *MEMORY[0x1E697F678])
    {
LABEL_21:
      v21 = 0;
      goto LABEL_22;
    }

    if (v12 == *MEMORY[0x1E697F640])
    {
LABEL_20:
      v20 = 0;
      goto LABEL_21;
    }

    if (v12 == *MEMORY[0x1E697F648])
    {
      v19 = 0;
      goto LABEL_20;
    }

    (*(v37 + 8))(v10, v4);
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
  }

LABEL_28:
  v35 = v21;
  v36 = v22;
  v33 = v19;
  v34 = v20;
  v27 = v48;
  v28 = v45;
  v49(v48, v45, v4);
  v29 = v44(v27, v4);
  if (v29 != v43)
  {
    v30 = v47;
    if (v29 == v42)
    {
      if (v13 != v43)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == v41)
    {
      if (!v40)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == v39)
    {
      if (!v38)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F650])
    {
      if ((v26 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F660])
    {
      if ((v25 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F630])
    {
      if ((v24 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F670])
    {
      if ((v23 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F668])
    {
      if ((v36 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F678])
    {
      if ((v35 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F640])
    {
      if ((v34 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F648])
    {
      if ((v33 & 1) == 0)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else
    {
      v32 = v47;
      (*(v37 + 8))(v48, v4);
      v30 = v32;
      if (!v38)
      {
        return (v49)(v46, v30, v4);
      }
    }

    v30 = v28;
    return (v49)(v46, v30, v4);
  }

  v30 = v47;
  return (v49)(v46, v30, v4);
}

uint64_t sub_1920E32C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for ActivityMetricsDefinition(0);
  __swift_allocate_value_buffer(v3, qword_1EADEFA40);
  v4 = __swift_project_value_buffer(v3, qword_1EADEFA40);
  v5 = *(type metadata accessor for MetricsRequest(0) + 40);
  v6 = sub_192226600();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *v4 = xmmword_19222F800;
  *(v4 + 16) = 0;
  *(v4 + 24) = xmmword_19222F800;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0x4036000000000000;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 1;
  *(v4 + 96) = xmmword_19222F810;
  v7 = type metadata accessor for JindoMetricsDefinition(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v2, 1, 1, v7);
  v9 = *(v3 + 20);
  v8((v4 + v9), 1, 1, v7);
  return sub_1920E3564(v2, v4 + v9);
}

uint64_t ActivityMetricsDefinition.init(listItemMetrics:jindoMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ActivityMetricsDefinition(0) + 20);
  v7 = type metadata accessor for JindoMetricsDefinition(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  sub_1920E5194(a1, a3, type metadata accessor for MetricsRequest);

  return sub_1920E3564(a2, a3 + v6);
}

uint64_t type metadata accessor for ActivityMetricsDefinition(uint64_t a1)
{
  result = qword_1ED74BC40;
  if (!qword_1ED74BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1920E3564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static ActivityMetricsDefinition.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ActivityMetricsDefinition(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADEFA40);
  return sub_1920E5260(v3, a1, type metadata accessor for ActivityMetricsDefinition);
}

uint64_t ActivityMetricsDefinition._rawJindoMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivityMetricsDefinition(0) + 20);

  return sub_1920E3698(v3, a1);
}

uint64_t sub_1920E3698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ActivityMetricsDefinition._rawJindoMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActivityMetricsDefinition(0) + 20);

  return sub_1920E3564(a1, v3);
}

uint64_t ActivityMetricsDefinition.listItemMetrics(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_1922265A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  v20 = *(v7 + 104);
  v20(v15, *MEMORY[0x1E697F680], v6, v17);
  (v20)(v9, *MEMORY[0x1E697F648], v6);
  sub_1920E4394(v33, v9, v12);
  v21 = *(v7 + 8);
  v21(v9, v6);
  v22 = v21;
  v34 = v19;
  sub_1920E2E24(v15, v12, v19);
  v21(v12, v6);
  v21(v15, v6);
  sub_1920E5260(v35, a2, type metadata accessor for MetricsRequest);
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  LODWORD(v15) = *(a2 + 40);
  (*(v7 + 16))(v5, v19, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v25 = sub_192228110();
  v26 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v27 = [objc_opt_self() defaultMetrics];
  if (!v15)
  {
    v24 = v23;
  }

  v28 = v26;
  [v27 scaledValueForValue:v28 compatibleWithTraitCollection:v24];
  v30 = v29;

  result = v22(v34, v6);
  *(a2 + 24) = v23;
  *(a2 + 32) = v30;
  *(a2 + 40) = 1;
  return result;
}

uint64_t ActivityMetricsDefinition.jindoMetrics(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v53 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC50, &qword_19222B040);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v46[-v3];
  v4 = type metadata accessor for MetricsRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46[-v7];
  v9 = type metadata accessor for JindoMetricsDefinition(0);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1922265A0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46[-v19];
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v46[-v23];
  v25 = *(v12 + 104);
  v25(v20, *MEMORY[0x1E697F680], v11, v22);
  (v25)(v14, *MEMORY[0x1E697F648], v11);
  sub_1920E4394(v52, v14, v17);
  v26 = *(v12 + 8);
  v27 = v14;
  v28 = v9;
  v26(v27, v11);
  v52 = v24;
  sub_1920E2E24(v20, v17, v24);
  v26(v17, v11);
  v26(v20, v11);
  v29 = type metadata accessor for ActivityMetricsDefinition(0);
  sub_1920E3698(v51 + *(v29 + 20), v8);
  if ((*(v54 + 48))(v8, 1, v9) == 1)
  {
    v26(v52, v11);
    sub_192033970(v8, &qword_1EADEFA58, &unk_19222F820);
    return (*(v54 + 56))(v53, 1, 1, v9);
  }

  else
  {
    v31 = v8;
    v32 = v49;
    sub_1920E5194(v31, v49, type metadata accessor for JindoMetricsDefinition);
    v51 = *(v9 + 32);
    v33 = v50;
    sub_1920E5260(&v32[v51], v50, type metadata accessor for MetricsRequest);
    v34 = v33[3];
    v35 = v33[4];
    v47 = *(v33 + 40);
    v36 = v48;
    v37 = v52;
    (*(v12 + 16))(v48, v52, v11);
    (*(v12 + 56))(v36, 0, 1, v11);
    v38 = sub_192228110();
    v39 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v48 = v28;
    v40 = v39;
    v41 = [objc_opt_self() defaultMetrics];
    if (!v47)
    {
      v35 = v34;
    }

    v42 = v40;
    [v41 scaledValueForValue:v42 compatibleWithTraitCollection:v35];
    v44 = v43;

    v26(v37, v11);
    v33[3] = v34;
    *(v33 + 4) = v44;
    *(v33 + 40) = 1;
    sub_1920E51FC(v33, &v32[v51]);
    v45 = v53;
    sub_1920E5260(v32, v53, type metadata accessor for JindoMetricsDefinition);
    (*(v54 + 56))(v45, 0, 1, v48);
    return sub_1920E5CA0(v32, type metadata accessor for JindoMetricsDefinition);
  }
}

uint64_t ActivityMetricsDefinition.filePath.getter()
{
  sub_192228400();

  v0 = DimensionRequest.filePath.getter();
  MEMORY[0x193B0A990](v0);

  MEMORY[0x193B0A990](3827757, 0xE300000000000000);
  v1 = DimensionRequest.filePath.getter();
  MEMORY[0x193B0A990](v1);

  MEMORY[0x193B0A990](980575021, 0xE400000000000000);
  v2 = sub_192227D10();
  MEMORY[0x193B0A990](v2);

  MEMORY[0x193B0A990](3830573, 0xE300000000000000);
  v3 = sub_192227D10();
  MEMORY[0x193B0A990](v3);

  return 14967;
}

uint64_t ActivityMetricsDefinition.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - v2;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x800000019224A100);
  v4 = MetricsRequest.description.getter();
  MEMORY[0x193B0A990](v4);

  MEMORY[0x193B0A990](0x6E694A776172202CLL, 0xEB000000003D6F64);
  v5 = type metadata accessor for ActivityMetricsDefinition(0);
  sub_1920E3698(v0 + *(v5 + 20), v3);
  v6 = type metadata accessor for JindoMetricsDefinition(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_192033970(v3, &qword_1EADEFA58, &unk_19222F820);
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v9 = JindoMetricsDefinition.description.getter();
    v7 = v10;
    sub_1920E5CA0(v3, type metadata accessor for JindoMetricsDefinition);
    v8 = v9;
  }

  MEMORY[0x193B0A990](v8, v7);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v12[0];
}

uint64_t sub_1920E4394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v46 = a3;
  v4 = sub_1922265A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = *(v5 + 16);
  v47 = a2;
  v49 = v11;
  (v11)(&v33 - v9, a2, v4, v8);
  v37 = v5;
  v44 = *(v5 + 88);
  v12 = v44(v10, v4);
  v13 = v12;
  v43 = *MEMORY[0x1E697F658];
  v14 = *MEMORY[0x1E697F690];
  v42 = *MEMORY[0x1E697F690];
  v16 = v12 == v43 || v12 == v14;
  v17 = *MEMORY[0x1E697F698];
  v40 = v16;
  v41 = v17;
  if (v12 == v17)
  {
    v16 = 1;
  }

  v18 = *MEMORY[0x1E697F680];
  v19 = 1;
  v38 = v16;
  v39 = v18;
  if (v16)
  {
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
  }

  else
  {
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    v25 = 1;
    v26 = 1;
    if (v12 == v18)
    {
      goto LABEL_28;
    }

    if (v12 == *MEMORY[0x1E697F650])
    {
      goto LABEL_26;
    }

    if (v12 == *MEMORY[0x1E697F660])
    {
LABEL_25:
      v25 = 0;
LABEL_26:
      v26 = 0;
      goto LABEL_28;
    }

    if (v12 == *MEMORY[0x1E697F630])
    {
LABEL_24:
      v24 = 0;
      goto LABEL_25;
    }

    if (v12 == *MEMORY[0x1E697F670])
    {
LABEL_23:
      v23 = 0;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x1E697F668])
    {
LABEL_22:
      v22 = 0;
      goto LABEL_23;
    }

    if (v12 == *MEMORY[0x1E697F678])
    {
LABEL_21:
      v21 = 0;
      goto LABEL_22;
    }

    if (v12 == *MEMORY[0x1E697F640])
    {
LABEL_20:
      v20 = 0;
      goto LABEL_21;
    }

    if (v12 == *MEMORY[0x1E697F648])
    {
      v19 = 0;
      goto LABEL_20;
    }

    (*(v37 + 8))(v10, v4);
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
  }

LABEL_28:
  v35 = v21;
  v36 = v22;
  v33 = v19;
  v34 = v20;
  v27 = v48;
  v28 = v45;
  v49(v48, v45, v4);
  v29 = v44(v27, v4);
  v30 = v47;
  if (v29 != v43)
  {
    if (v29 == v42)
    {
      if (v13 == v43)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == v41)
    {
      if (v40)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == v39)
    {
      if (v38)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F650])
    {
      if (v26)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F660])
    {
      if (v25)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F630])
    {
      if (v24)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F670])
    {
      if (v23)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F668])
    {
      if (v36)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F678])
    {
      if (v35)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F640])
    {
      if (v34)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else if (v29 == *MEMORY[0x1E697F648])
    {
      if (v33)
      {
        return (v49)(v46, v30, v4);
      }
    }

    else
    {
      v32 = v47;
      (*(v37 + 8))(v48, v4);
      v30 = v32;
      if (v38)
      {
        return (v49)(v46, v30, v4);
      }
    }
  }

  v30 = v28;
  return (v49)(v46, v30, v4);
}

unint64_t sub_1920E4830()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1920E486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x800000019224A130 == a2;
  if (v5 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019224A150 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_1920E4950(uint64_t a1)
{
  v2 = sub_1920E5C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E498C(uint64_t a1)
{
  v2 = sub_1920E5C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityMetricsDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA60, &qword_19222F830);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920E5C4C();
  sub_192228B90();
  v8[15] = 0;
  type metadata accessor for MetricsRequest(0);
  sub_1920E5D90(&qword_1EADED168, type metadata accessor for MetricsRequest, &protocol conformance descriptor for MetricsRequest);
  sub_1922288C0();
  if (!v1)
  {
    type metadata accessor for ActivityMetricsDefinition(0);
    v8[14] = 1;
    type metadata accessor for JindoMetricsDefinition(0);
    sub_1920E5D90(&qword_1EADED028, type metadata accessor for JindoMetricsDefinition, &protocol conformance descriptor for JindoMetricsDefinition);
    sub_192228850();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityMetricsDefinition.hash(into:)(uint64_t a1)
{
  MetricsRequest.hash(into:)(a1);
  type metadata accessor for ActivityMetricsDefinition(0);
  return sub_1920E52C8(a1);
}

uint64_t ActivityMetricsDefinition.hashValue.getter()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)(v1);
  type metadata accessor for ActivityMetricsDefinition(0);
  sub_1920E52C8(v1);
  return sub_192228B30();
}

uint64_t ActivityMetricsDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for MetricsRequest(0);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA68, &qword_19222F838);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ActivityMetricsDefinition(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  v15 = type metadata accessor for JindoMetricsDefinition(0);
  v16 = *(*(v15 - 8) + 56);
  v27 = v14;
  v16(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920E5C4C();
  v17 = v26;
  sub_192228B70();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_192033970(&v12[v27], &qword_1EADEFA58, &unk_19222F820);
  }

  else
  {
    v18 = v23;
    v29 = 0;
    sub_1920E5D90(&qword_1EADEDF50, type metadata accessor for MetricsRequest, &protocol conformance descriptor for MetricsRequest);
    sub_1922287C0();
    sub_1920E5194(v24, v12, type metadata accessor for MetricsRequest);
    v28 = 1;
    sub_1920E5D90(&qword_1EADEDF38, type metadata accessor for JindoMetricsDefinition, &protocol conformance descriptor for JindoMetricsDefinition);
    v19 = v5;
    v20 = v25;
    sub_192228750();
    (*(v18 + 8))(v9, v20);
    sub_1920E3564(v19, &v12[v27]);
    sub_1920E5260(v12, v22, type metadata accessor for ActivityMetricsDefinition);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1920E5CA0(v12, type metadata accessor for ActivityMetricsDefinition);
  }
}

uint64_t sub_1920E5068()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)(v1);
  sub_1920E52C8(v1);
  return sub_192228B30();
}

uint64_t sub_1920E50FC()
{
  sub_192228AD0();
  MetricsRequest.hash(into:)(v1);
  sub_1920E52C8(v1);
  return sub_192228B30();
}

uint64_t sub_1920E5194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920E51FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920E5260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920E52C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JindoMetricsDefinition(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1920E3698(v2, &v14 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_192228AF0();
  }

  sub_1920E5194(v10, v7, type metadata accessor for JindoMetricsDefinition);
  sub_192228AF0();
  v12 = *v7;
  if (*v7 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v12);
  v13 = v7[1];
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x193B0BAC0](*&v13);
  MetricsRequest.hash(into:)(a1);
  MetricsRequest.hash(into:)(a1);
  MetricsRequest.hash(into:)(a1);
  MetricsRequest.hash(into:)(a1);
  return sub_1920E5CA0(v7, type metadata accessor for JindoMetricsDefinition);
}

BOOL sub_1920E54C0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_1922265A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

BOOL _s9WidgetKit25ActivityMetricsDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JindoMetricsDefinition(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA78, &qword_19222FAC0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if ((static MetricsRequest.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for ActivityMetricsDefinition(0) + 20);
  v15 = *(v11 + 48);
  sub_1920E3698(a1 + v14, v13);
  sub_1920E3698(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_192033970(v13, &qword_1EADEFA58, &unk_19222F820);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1920E3698(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1920E5CA0(v10, type metadata accessor for JindoMetricsDefinition);
LABEL_7:
    v18 = &qword_1EADEFA78;
    v19 = &qword_19222FAC0;
LABEL_19:
    sub_192033970(v13, v18, v19);
    return 0;
  }

  sub_1920E5194(&v13[v15], v7, type metadata accessor for JindoMetricsDefinition);
  v20 = *v10 == *v7 && v10[1] == v7[1];
  if (!v20 || (static MetricsRequest.== infix(_:_:)(v10 + v4[5], v7 + v4[5]) & 1) == 0 || (static MetricsRequest.== infix(_:_:)(v10 + v4[6], v7 + v4[6]) & 1) == 0 || (static MetricsRequest.== infix(_:_:)(v10 + v4[7], v7 + v4[7]) & 1) == 0)
  {
    sub_1920E5CA0(v7, type metadata accessor for JindoMetricsDefinition);
    sub_1920E5CA0(v10, type metadata accessor for JindoMetricsDefinition);
    v18 = &qword_1EADEFA58;
    v19 = &unk_19222F820;
    goto LABEL_19;
  }

  v21 = static MetricsRequest.== infix(_:_:)(v10 + v4[8], v7 + v4[8]);
  sub_1920E5CA0(v7, type metadata accessor for JindoMetricsDefinition);
  sub_1920E5CA0(v10, type metadata accessor for JindoMetricsDefinition);
  sub_192033970(v13, &qword_1EADEFA58, &unk_19222F820);
  return (v21 & 1) != 0;
}

unint64_t sub_1920E5C4C()
{
  result = qword_1EADEE110;
  if (!qword_1EADEE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE110);
  }

  return result;
}

uint64_t sub_1920E5CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920E5D90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1920E5E00(uint64_t a1)
{
  type metadata accessor for MetricsRequest(319);
  if (v1 <= 0x3F)
  {
    sub_1920E5E84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1920E5E84(uint64_t a1)
{
  if (!qword_1ED74B948[0])
  {
    type metadata accessor for JindoMetricsDefinition(255);
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, qword_1ED74B948);
    }
  }
}

unint64_t sub_1920E5EF0()
{
  result = qword_1EADEFA70;
  if (!qword_1EADEFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFA70);
  }

  return result;
}

unint64_t sub_1920E5F48()
{
  result = qword_1EADEE100;
  if (!qword_1EADEE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE100);
  }

  return result;
}

unint64_t sub_1920E5FA0()
{
  result = qword_1EADEE108;
  if (!qword_1EADEE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE108);
  }

  return result;
}

BOOL sub_1920E5FF4(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1922265A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x1E697F658];
  if (v13 != *MEMORY[0x1E697F658])
  {
    if (v13 == *MEMORY[0x1E697F690])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F698])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x1E697F680])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x1E697F650])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x1E697F660])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x1E697F630])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x1E697F670])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x1E697F668])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x1E697F678])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x1E697F640])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x1E697F648])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E697F690])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E697F698])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x1E697F680])
    {
      if (v16 == *MEMORY[0x1E697F650])
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F660])
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F630])
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F670])
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F668])
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F678])
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F640])
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == *MEMORY[0x1E697F648])
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

uint64_t sub_1920E640C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, uint64_t x1_0@<X1>)
{
  v7 = sub_192226B50();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_192226B70();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E697CB08])
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    v16 = sub_192226AF0();
    v18 = sub_1921B01A8(v16, v17, x1_0);

    if (v18)
    {
      sub_192226AA0();
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      return (*(v12 + 56))(a3, 1, 1, v11);
    }
  }

  else
  {
    (*(v12 + 56))(a3, 1, 1, v11);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1920E66A0()
{
  v0 = type metadata accessor for ControlTemplateButton(0);
  __swift_allocate_value_buffer(v0, qword_1EADED060);
  v1 = __swift_project_value_buffer(v0, qword_1EADED060);
  return sub_1920E66EC(v1);
}

uint64_t sub_1920E66EC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for ControlTemplateButton.Option(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = sub_192226B70();
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = v7[8];
  v13(&v11[v14], 1, 1, v12);
  v15 = &v11[v7[9]];
  v16 = &v11[v7[10]];
  v17 = &v11[v7[11]];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  sub_19204193C(v5, &v11[v14], &qword_1EADEF720, &unk_19222E2F0);
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *v16 = 0;
  *(v16 + 1) = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  v13(v5, 1, 1, v12);
  v18 = v7[8];
  v19 = v33;
  v13(&v33[v18], 1, 1, v12);
  v20 = v19 + v7[9];
  v21 = (v19 + v7[10]);
  v22 = (v19 + v7[11]);
  *v19 = 0u;
  v19[1] = 0u;
  sub_19204193C(v5, v19 + v18, &qword_1EADEF720, &unk_19222E2F0);
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *v21 = 0;
  v21[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  v23 = v34;
  sub_1920ECD2C(v11, v34, type metadata accessor for ControlTemplateButton.Option);
  v24 = type metadata accessor for ControlTemplateButton(0);
  v25 = v23;
  sub_1920ECD2C(v19, v23 + v24[5], type metadata accessor for ControlTemplateButton.Option);
  v26 = sub_192225020();
  v27 = *(*(v26 - 8) + 56);
  v28 = v35;
  v27(v35, 1, 1, v26);
  v29 = v24[7];
  v27((v25 + v29), 1, 1, v26);
  v30 = (v25 + v24[10]);
  *(v25 + v24[6]) = 0;
  sub_19204193C(v28, v25 + v29, &qword_1EADEEE10, &unk_19222B630);
  *(v25 + v24[8]) = 0;
  *(v25 + v24[9]) = 1;
  *v30 = 0;
  v30[1] = 0;
  *(v25 + v24[11]) = 0;
  sub_1920ECC84(v19, type metadata accessor for ControlTemplateButton.Option);
  return sub_1920ECC84(v11, type metadata accessor for ControlTemplateButton.Option);
}

uint64_t ControlTemplateButton.Option.init(title:subtitle:icon:tint:status:actionHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = type metadata accessor for ControlTemplateButton.Option(0);
  v20 = v19[6];
  v21 = sub_192226B70();
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = &a9[v19[7]];
  v23 = &a9[v19[8]];
  v24 = &a9[v19[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = sub_19204193C(a5, &a9[v20], &qword_1EADEF720, &unk_19222E2F0);
  *v22 = a6;
  *(v22 + 1) = a7;
  v22[16] = a8 & 1;
  *v23 = a10;
  *(v23 + 1) = a11;
  *v24 = a12;
  *(v24 + 1) = a13;
  return result;
}

uint64_t ControlTemplateButton.init(inactive:active:action:associatedURL:privacySensitive:disabled:accessibilityIdentifier:rasterizedImagesAllowed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v15 = *a3;
  v16 = type metadata accessor for ControlTemplateButton(0);
  v17 = v16[7];
  v18 = sub_192225020();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = (a9 + v16[10]);
  sub_1920ED888(a1, a9, type metadata accessor for ControlTemplateButton.Option);
  sub_1920ED888(a2, a9 + v16[5], type metadata accessor for ControlTemplateButton.Option);
  *(a9 + v16[6]) = v15;
  result = sub_19204193C(a4, a9 + v17, &qword_1EADEEE10, &unk_19222B630);
  *(a9 + v16[8]) = a5;
  *(a9 + v16[9]) = a6;
  *v19 = a7;
  v19[1] = a8;
  *(a9 + v16[11]) = a10;
  return result;
}

uint64_t static ControlTemplateButton.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateButton(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED060);
  swift_beginAccess();
  return sub_1920ECD2C(v3, a1, type metadata accessor for ControlTemplateButton);
}

uint64_t static ControlTemplateButton.empty.setter(uint64_t a1)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateButton(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED060);
  swift_beginAccess();
  sub_1920E6E94(a1, v3);
  swift_endAccess();
  return sub_1920ECC84(a1, type metadata accessor for ControlTemplateButton);
}

uint64_t sub_1920E6E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateButton(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static ControlTemplateButton.empty.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for ControlTemplateButton(0);
  __swift_project_value_buffer(v1, qword_1EADED060);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1920E6F8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateButton(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED060);
  swift_beginAccess();
  return sub_1920ECD2C(v3, a1, type metadata accessor for ControlTemplateButton);
}

uint64_t sub_1920E702C(uint64_t a1)
{
  if (qword_1EADED058 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ControlTemplateButton(0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED060);
  swift_beginAccess();
  sub_1920E6E94(a1, v3);
  return swift_endAccess();
}

uint64_t ControlTemplateButton.Option.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ControlTemplateButton.Option.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlTemplateButton.Option.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ControlTemplateButton.Option.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ControlTemplateButton.Option.tint.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ControlTemplateButton.Option(0);
  v8 = v3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t ControlTemplateButton.Option.status.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlTemplateButton.Option(0) + 32));

  return v1;
}

uint64_t ControlTemplateButton.Option.status.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateButton.Option(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplateButton.Option.actionHint.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlTemplateButton.Option(0) + 36));

  return v1;
}

uint64_t ControlTemplateButton.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateButton.Option(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1920E750C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1953393012;
  v4 = 0x737574617473;
  if (v1 != 4)
  {
    v4 = 0x69486E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627573;
  if (v1 != 1)
  {
    v5 = 1852793705;
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

uint64_t sub_1920E75B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1920ED3EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1920E75E8(uint64_t a1)
{
  v2 = sub_1920ECC30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920E7624(uint64_t a1)
{
  v2 = sub_1920ECC30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateButton.Option.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA80, &qword_19222FAE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920ECC30();
  sub_192228B90();
  LOBYTE(v14) = 0;
  sub_192228830();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_192228830();
    v10 = type metadata accessor for ControlTemplateButton.Option(0);
    LOBYTE(v14) = 2;
    sub_192226B70();
    sub_1920ECCE4(&qword_1EADEE4B0, MEMORY[0x1E697CB10], MEMORY[0x1E697CB18]);
    sub_192228850();
    v11 = (v3 + *(v10 + 28));
    v12 = *(v11 + 16);
    v14 = *v11;
    v15 = v12;
    v13[15] = 3;
    sub_1920CF350();
    sub_192228850();
    LOBYTE(v14) = 4;
    sub_192228830();
    LOBYTE(v14) = 5;
    sub_192228830();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ControlTemplateButton.Option.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v34 - v4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA88, &qword_19222FAE8);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v34 - v5;
  v7 = type metadata accessor for ControlTemplateButton.Option(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = v8[8];
  v12 = sub_192226B70();
  v13 = *(*(v12 - 8) + 56);
  v36 = v11;
  v13(v10 + v11, 1, 1, v12);
  v14 = v10 + v8[9];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = (v10 + v8[10]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v8[11];
  v42 = v10;
  v43 = a1;
  v17 = (v10 + v16);
  *v17 = 0;
  v17[1] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920ECC30();
  v40 = v6;
  v18 = v41;
  sub_192228B70();
  if (v18)
  {
    v19 = v42;
  }

  else
  {
    v41 = v14;
    v34 = v15;
    v21 = v37;
    v20 = v38;
    LOBYTE(v44) = 0;
    v22 = sub_192228730();
    v19 = v42;
    *v42 = v22;
    v19[1] = v23;
    LOBYTE(v44) = 1;
    v19[2] = sub_192228730();
    v19[3] = v24;
    LOBYTE(v44) = 2;
    sub_1920ECCE4(&qword_1EADEDCE8, MEMORY[0x1E697CB10], MEMORY[0x1E697CB28]);
    sub_192228750();
    sub_19204193C(v20, v19 + v36, &qword_1EADEF720, &unk_19222E2F0);
    v46 = 3;
    sub_1920CF44C();
    sub_192228750();
    v25 = v45;
    v26 = v41;
    *v41 = v44;
    *(v26 + 16) = v25;
    LOBYTE(v44) = 4;
    v27 = sub_192228730();
    v29 = v34;
    *v34 = v27;
    v29[1] = v30;
    LOBYTE(v44) = 5;
    v31 = sub_192228730();
    v33 = v32;
    (*(v21 + 8))(v40, v39);
    *v17 = v31;
    v17[1] = v33;
    sub_1920ECD2C(v19, v35, type metadata accessor for ControlTemplateButton.Option);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1920ECC84(v19, type metadata accessor for ControlTemplateButton.Option);
}

uint64_t ControlTemplateButton.active.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ControlTemplateButton(0) + 20);

  return sub_1920ECD94(a1, v3);
}

id ControlTemplateButton.action.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ControlTemplateButton(0) + 24));
  *a1 = v3;

  return v3;
}

void ControlTemplateButton.action.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for ControlTemplateButton(0) + 24);

  *(v1 + v3) = v2;
}

uint64_t ControlTemplateButton.privacySensitive.setter(char a1)
{
  result = type metadata accessor for ControlTemplateButton(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ControlTemplateButton.disabled.setter(char a1)
{
  result = type metadata accessor for ControlTemplateButton(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlTemplateButton.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlTemplateButton(0) + 40));

  return v1;
}

uint64_t ControlTemplateButton.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlTemplateButton(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlTemplateButton.rasterizedImagesAllowed.setter(char a1)
{
  result = type metadata accessor for ControlTemplateButton(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ControlTemplateButton.asPlaceholder()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v45[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45[-v7];
  if (qword_1EADECB28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *algn_1EADECB38;
  v55 = qword_1EADECB30;
  v10 = qword_1EADECB10;

  if (v10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_1EADECB20;
  v50 = qword_1EADECB18;
  v12 = type metadata accessor for ControlTemplateButton.Option(0);
  sub_19202CFFC(v1 + v12[6], v8, &qword_1EADEF720, &unk_19222E2F0);
  v13 = v12[6];
  v14 = (v1 + v12[7]);
  v15 = *v14;
  v47 = v14[1];
  v48 = v15;
  v46 = *(v14 + 16);
  v53 = sub_192226B70();
  v16 = *(v53 - 8);
  v52 = *(v16 + 56);
  v54 = v16 + 56;
  v52(&a1[v13], 1, 1, v53);
  v17 = v12[7];
  v18 = v12[8];
  v51 = v1;
  v19 = &a1[v17];
  v20 = &a1[v18];
  v21 = &a1[v12[9]];
  *a1 = v55;
  *(a1 + 1) = v9;
  *(a1 + 2) = v50;
  *(a1 + 3) = v11;

  v49 = v8;
  sub_19204193C(v8, &a1[v13], &qword_1EADEF720, &unk_19222E2F0);
  v22 = v47;
  *v19 = v48;
  *(v19 + 1) = v22;
  v19[16] = v46;
  *v20 = 0;
  *(v20 + 1) = 0;
  v23 = type metadata accessor for ControlTemplateButton(0);
  *v21 = 0;
  *(v21 + 1) = 0;
  v24 = v2 + v23[5];
  v25 = *algn_1EADECB38;
  v55 = qword_1EADECB30;
  v26 = qword_1EADECB20;
  v50 = qword_1EADECB18;
  sub_19202CFFC(v24 + v12[6], v8, &qword_1EADEF720, &unk_19222E2F0);
  v27 = v12[6];
  v28 = (v24 + v12[7]);
  v29 = *v28;
  v47 = v28[1];
  v48 = v29;
  LOBYTE(v21) = *(v28 + 16);
  v30 = &a1[v23[5]];
  v52(v30 + v27, 1, 1, v53);
  v31 = v30 + v12[7];
  v32 = (v30 + v12[8]);
  v33 = (v30 + v12[9]);
  *v30 = v55;
  v30[1] = v25;
  v30[2] = v50;
  v30[3] = v26;

  sub_19204193C(v49, v30 + v27, &qword_1EADEF720, &unk_19222E2F0);
  v34 = v47;
  *v31 = v48;
  *(v31 + 1) = v34;
  v31[16] = v21;
  *v32 = 0;
  v32[1] = 0;
  *v33 = 0;
  v33[1] = 0;
  v35 = v51;
  v36 = *(v51 + v23[6]);
  v37 = sub_192225020();
  v38 = *(*(v37 - 8) + 56);
  v39 = v56;
  v38(v56, 1, 1, v37);
  v40 = v23[7];
  v41 = v35;
  LOBYTE(v35) = *(v35 + v23[8]);
  LOBYTE(v33) = *(v41 + v23[9]);
  LODWORD(v55) = *(v41 + v23[11]);
  v38(&a1[v40], 1, 1, v37);
  v42 = &a1[v23[10]];
  *&a1[v23[6]] = v36;
  v43 = v36;
  result = sub_19204193C(v39, &a1[v40], &qword_1EADEEE10, &unk_19222B630);
  a1[v23[8]] = v35;
  a1[v23[9]] = v33;
  *v42 = 0;
  *(v42 + 1) = 0;
  a1[v23[11]] = v55;
  return result;
}

uint64_t ControlTemplateButton.asTemplateWithTargetedVectorGlyphAssetLib(symbolNames:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v4 = v3;
  v136 = a2;
  v137 = a1;
  v149 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v143 = &v123 - v6;
  v141 = sub_192226B50();
  v146 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v133 = &v123 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v138 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v139 = (&v123 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v142 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v123 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v123 - v21;
  v23 = sub_192226B70();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v144 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v134 = &v123 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v145 = &v123 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v123 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v132 = &v123 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v123 - v36;
  v147 = type metadata accessor for ControlTemplateButton.Option(0);
  sub_19202CFFC(v4 + v147[6], v22, &qword_1EADEF720, &unk_19222E2F0);
  v38 = v24 + 48;
  v148 = *(v24 + 48);
  v39 = v148(v22, 1, v23);
  v40 = MEMORY[0x1E697CB08];
  v135 = v8;
  if (v39 == 1)
  {
    sub_192033970(v22, &qword_1EADEF720, &unk_19222E2F0);
    sub_1920ECD2C(v4, v149, type metadata accessor for ControlTemplateButton.Option);
    v41 = v144;
    v42 = v145;
    v43 = v139;
    v44 = v146;
  }

  else
  {
    v140 = v24 + 48;
    v131 = *(v24 + 32);
    v131(v37, v22, v23);
    (*(v24 + 16))(v32, v37, v23);
    if ((*(v24 + 88))(v32, v23) == *v40)
    {
      (*(v24 + 96))(v32, v23);
      v45 = v146;
      v46 = v133;
      (v146[4])(v133, v32, v141);
      v47 = sub_192226AF0();
      v49 = sub_1921B01A8(v47, v48, v137);

      if (v49)
      {
        sub_192226AA0();
        (v45[1])(v46, v141);
        (*(v24 + 8))(v37, v23);
      }

      else
      {
        (v45[1])(v46, v141);
        (*(v24 + 8))(v37, v23);
        (*(v24 + 56))(v19, 1, 1, v23);
      }
    }

    else
    {
      v50 = *(v24 + 8);
      v50(v37, v23);
      (*(v24 + 56))(v19, 1, 1, v23);
      v50(v32, v23);
    }

    if (v148(v19, 1, v23) == 1)
    {
      sub_192033970(v19, &qword_1EADEF720, &unk_19222E2F0);
      sub_1920ECD2C(v4, v149, type metadata accessor for ControlTemplateButton.Option);
    }

    else
    {
      v52 = v131;
      v51 = v132;
      v131(v132, v19, v23);
      v53 = v4[1];
      v133 = *v4;
      v128 = v53;
      v54 = v4[2];
      v129 = v4[3];
      v130 = v54;
      v55 = v149;
      v56 = v142;
      v52(v142, v51, v23);
      v57 = *(v24 + 56);
      v57(v56, 0, 1, v23);
      v58 = v147;
      v59 = v147[7];
      v124 = v147[6];
      v60 = v4 + v59;
      v61 = *v60;
      v131 = *(v60 + 1);
      v132 = v61;
      v127 = v60[16];
      v62 = v147[9];
      v63 = (v4 + v147[8]);
      v65 = *v63;
      v64 = v63[1];
      v126 = v65;
      v123 = v64;
      v66 = *(v4 + v62 + 8);
      v125 = *(v4 + v62);
      v57(v55 + v124, 1, 1, v23);
      v67 = v55 + v58[7];
      v68 = (v55 + v58[8]);
      v69 = (v55 + v58[9]);
      v70 = v128;
      *v55 = v133;
      v55[1] = v70;
      v71 = v129;
      v55[2] = v130;
      v55[3] = v71;

      v72 = v123;

      sub_19204193C(v142, v55 + v124, &qword_1EADEF720, &unk_19222E2F0);
      v73 = v131;
      *v67 = v132;
      *(v67 + 1) = v73;
      v67[16] = v127;
      *v68 = v126;
      v68[1] = v72;
      *v69 = v125;
      v69[1] = v66;
    }

    v42 = v145;
    v44 = v146;
    v43 = v139;
    v38 = v140;
    v41 = v144;
  }

  v74 = type metadata accessor for ControlTemplateButton(0);
  v75 = v74[5];
  v146 = v4;
  v76 = v4 + v75;
  v77 = (v149 + v75);
  sub_19202CFFC(&v76[v147[6]], v43, &qword_1EADEF720, &unk_19222E2F0);
  if (v148(v43, 1, v23) == 1)
  {
    sub_192033970(v43, &qword_1EADEF720, &unk_19222E2F0);
    v78 = v76;
    v79 = v77;
  }

  else
  {
    v139 = v77;
    v80 = *(v24 + 32);
    v80(v42, v43, v23);
    (*(v24 + 16))(v41, v42, v23);
    if ((*(v24 + 88))(v41, v23) == *MEMORY[0x1E697CB08])
    {
      v140 = v38;
      (*(v24 + 96))(v41, v23);
      v81 = v135;
      (v44[4])(v135, v41, v141);
      v82 = sub_192226AF0();
      v84 = sub_1921B01A8(v82, v83, v137);

      if (v84)
      {
        v85 = v138;
        v86 = v145;
        sub_192226AA0();
        (v44[1])(v81, v141);
        (*(v24 + 8))(v86, v23);
      }

      else
      {
        (v44[1])(v81, v141);
        (*(v24 + 8))(v145, v23);
        v85 = v138;
        (*(v24 + 56))(v138, 1, 1, v23);
      }
    }

    else
    {
      v87 = *(v24 + 8);
      v87(v42, v23);
      v85 = v138;
      (*(v24 + 56))(v138, 1, 1, v23);
      v87(v144, v23);
    }

    if (v148(v85, 1, v23) != 1)
    {
      v88 = v134;
      v80(v134, v85, v23);
      v89 = *(v76 + 1);
      v148 = *v76;
      v90 = *(v76 + 2);
      v144 = *(v76 + 3);
      v145 = v90;
      v91 = v142;
      v80(v142, v88, v23);
      v92 = *(v24 + 56);
      v92(v91, 0, 1, v23);
      v93 = v147;
      v94 = v147[6];
      v95 = &v76[v147[7]];
      v96 = *v95;
      v140 = *(v95 + 1);
      v141 = v96;
      LODWORD(v138) = v95[16];
      v97 = &v76[v147[8]];
      v98 = *v97;
      v99 = v97[1];
      v100 = &v76[v147[9]];
      v101 = v100[1];
      v136 = *v100;
      v137 = v98;
      v102 = v139;
      v92(v139 + v94, 1, 1, v23);
      v103 = v102 + v93[7];
      v104 = (v102 + v93[8]);
      v105 = (v102 + v93[9]);
      *v102 = v148;
      v102[1] = v89;
      v106 = v144;
      v102[2] = v145;
      v102[3] = v106;

      sub_19204193C(v142, v102 + v94, &qword_1EADEF720, &unk_19222E2F0);
      v107 = v140;
      *v103 = v141;
      *(v103 + 1) = v107;
      v103[16] = v138;
      v108 = v136;
      *v104 = v137;
      v104[1] = v99;
      *v105 = v108;
      v105[1] = v101;
      goto LABEL_23;
    }

    sub_192033970(v85, &qword_1EADEF720, &unk_19222E2F0);
    v78 = v76;
    v79 = v139;
  }

  sub_1920ECD2C(v78, v79, type metadata accessor for ControlTemplateButton.Option);
LABEL_23:
  v109 = v146;
  v110 = *(v146 + v74[6]);
  v111 = v143;
  sub_19202CFFC(v146 + v74[7], v143, &qword_1EADEEE10, &unk_19222B630);
  v112 = v74[7];
  LODWORD(v148) = *(v109 + v74[8]);
  v113 = v74[10];
  v114 = *(v109 + v74[9]);
  v115 = *(v109 + v113);
  v116 = *(v109 + v113 + 8);
  v117 = *(v109 + v74[11]);
  v118 = sub_192225020();
  v119 = v149;
  (*(*(v118 - 8) + 56))(v149 + v112, 1, 1, v118);
  v120 = (v119 + v74[10]);
  *(v119 + v74[6]) = v110;

  v121 = v110;
  result = sub_19204193C(v111, v119 + v112, &qword_1EADEEE10, &unk_19222B630);
  *(v119 + v74[8]) = v148;
  *(v119 + v74[9]) = v114;
  *v120 = v115;
  v120[1] = v116;
  *(v119 + v74[11]) = v117;
  return result;
}

uint64_t ControlTemplateButton.vectorGlyphAssetLibraryDatas.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_192226B70();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ControlTemplateButton.Option(0);
  v10 = *(v9 - 8);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA90, &qword_19222FAF0);
  v14 = *(v10 + 72);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v37 = swift_allocObject();
  v16 = v37 + v15;
  v17 = v5;
  v18 = type metadata accessor for ControlTemplateButton(0);
  sub_1920ECD2C(v1 + *(v18 + 20), v16, type metadata accessor for ControlTemplateButton.Option);
  v41 = v1;
  sub_1920ECD2C(v1, v16 + v14, type metadata accessor for ControlTemplateButton.Option);
  v40 = v9;
  v19 = *(v9 + 24);
  sub_1920ECD2C(v16, v13, type metadata accessor for ControlTemplateButton.Option);
  v36 = v19;
  sub_19202CFFC(&v13[v19], v4, &qword_1EADEF720, &unk_19222E2F0);
  sub_1920ECC84(v13, type metadata accessor for ControlTemplateButton.Option);
  v39 = v6;
  v20 = *(v6 + 48);
  v21 = v20(v4, 1, v5);
  v42 = (v6 + 32);
  v38 = v8;
  if (v21 == 1)
  {
    sub_192033970(v4, &qword_1EADEF720, &unk_19222E2F0);
    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v23 = v8;
    v24 = *(v6 + 32);
    v35 = v5;
    v24(v23, v4, v5);
    v22 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1920C2FCC(0, *(v22 + 2) + 1, 1, v22);
    }

    v26 = *(v22 + 2);
    v25 = *(v22 + 3);
    if (v26 >= v25 >> 1)
    {
      v22 = sub_1920C2FCC((v25 > 1), v26 + 1, 1, v22);
    }

    *(v22 + 2) = v26 + 1;
    v27 = &v22[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26];
    v17 = v35;
    v24(v27, v38, v35);
  }

  sub_1920ECD2C(v16 + v14, v13, type metadata accessor for ControlTemplateButton.Option);
  sub_19202CFFC(&v13[v36], v4, &qword_1EADEF720, &unk_19222E2F0);
  sub_1920ECC84(v13, type metadata accessor for ControlTemplateButton.Option);
  if (v20(v4, 1, v17) == 1)
  {
    sub_192033970(v4, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v28 = *v42;
    v29 = v38;
    (*v42)(v38, v4, v17);
    v30 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1920C2FCC(0, *(v22 + 2) + 1, 1, v22);
    }

    v32 = *(v22 + 2);
    v31 = *(v22 + 3);
    if (v32 >= v31 >> 1)
    {
      v22 = sub_1920C2FCC((v31 > 1), v32 + 1, 1, v22);
    }

    *(v22 + 2) = v32 + 1;
    v28(&v22[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32], v29, v30);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = sub_1920E9968(v22);

  return v33;
}

uint64_t sub_1920E9968(uint64_t a1)
{
  v2 = sub_192226B70();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_192226B50();
  v6 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v8 = v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_192226B30();
  v179 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v195 = v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymbolLookupKey(0);
  v198 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v182 = v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v204 = v178 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v183 = v178 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v178 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v201 = v178 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v203 = v178 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v191 = v178 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAB8, &qword_19222FEF8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v200 = v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v199 = v178 - v28;
  v29 = *(a1 + 16);
  v190 = v18;
  if (v29)
  {
    v178[1] = v10;
    v31 = *(v3 + 16);
    v30 = v3 + 16;
    v197 = v31;
    v32 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v33 = (v30 + 72);
    LODWORD(v194) = *MEMORY[0x1E697CB08];
    v192 = v30 - 8;
    v189 = (v30 + 80);
    v188 = (v6 + 32);
    v186 = (v6 + 8);
    v34 = MEMORY[0x1E69E7CC8];
    *&v193 = *(v30 + 56);
    v181 = xmmword_19222B480;
    v184 = v30;
    v187 = v8;
    v35 = v183;
    v185 = (v30 + 72);
    v180 = v2;
    v31(v5, v32, v2);
    while (1)
    {
      v36 = (*v33)(v5, v2);
      if (v36 != v194)
      {
        (*v192)(v5, v2);
        goto LABEL_4;
      }

      (*v189)(v5, v2);
      (*v188)(v8, v5, v202);
      sub_192226B40();
      if (!*(v34 + 16))
      {
        break;
      }

      v37 = sub_1920B7128(v35);
      if ((v38 & 1) == 0)
      {
        break;
      }

      v206 = *(*(v34 + 56) + 8 * v37);

      v39 = sub_192226AF0();
      sub_192082B80(&v205, v39, v40);

      v41 = v182;
      sub_1920ECD2C(v35, v182, type metadata accessor for SymbolLookupKey);
      if (!v206)
      {
        v73 = sub_1920B7128(v41);
        v74 = v34;
        if (v75)
        {
          v76 = v73;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v205 = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_19213EDA8();
            v74 = v205;
          }

          sub_1920ECC84(*(v74 + 48) + *(v198 + 72) * v76, type metadata accessor for SymbolLookupKey);

          sub_1921E1120(v76, v74);
          v78 = v182;
        }

        else
        {
          v78 = v182;
        }

        sub_1920ECC84(v78, type metadata accessor for SymbolLookupKey);
        sub_1920ECC84(v35, type metadata accessor for SymbolLookupKey);
        v83 = v187;
        (*v186)(v187, v202);
        v34 = v74;
        v8 = v83;
LABEL_25:
        v33 = v185;
        goto LABEL_4;
      }

      v42 = v206;

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v205 = v34;
      v44 = sub_1920B7128(v41);
      v46 = v34;
      v47 = v44;
      v48 = *(v46 + 16);
      v49 = (v45 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_92;
      }

      v51 = v45;
      if (*(v46 + 24) >= v50)
      {
        if ((v43 & 1) == 0)
        {
          sub_19213EDA8();
        }
      }

      else
      {
        sub_19213BD10(v50, v43);
        v52 = sub_1920B7128(v182);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_97;
        }

        v47 = v52;
      }

      v18 = v190;
      v79 = v205;
      if (v51)
      {
        *(v205[7] + 8 * v47) = v42;

        sub_1920ECC84(v182, type metadata accessor for SymbolLookupKey);
        sub_1920ECC84(v35, type metadata accessor for SymbolLookupKey);
        v8 = v187;
        (*v186)(v187, v202);
        v34 = v79;
      }

      else
      {
        v205[(v47 >> 6) + 8] |= 1 << v47;
        v80 = v182;
        sub_1920ECD2C(v182, v79[6] + *(v198 + 72) * v47, type metadata accessor for SymbolLookupKey);
        *(v79[7] + 8 * v47) = v42;
        sub_1920ECC84(v80, type metadata accessor for SymbolLookupKey);
        sub_1920ECC84(v35, type metadata accessor for SymbolLookupKey);
        v8 = v187;
        (*v186)(v187, v202);
        v81 = v79[2];
        v65 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v65)
        {
          goto LABEL_93;
        }

        v34 = v79;
        v79[2] = v82;
      }

      v33 = v185;
      v2 = v180;
LABEL_4:
      v32 += v193;
      if (!--v29)
      {
        goto LABEL_40;
      }

      v197(v5, v32, v2);
    }

    v54 = v35;
    v55 = v204;
    sub_1920ECD2C(v54, v204, type metadata accessor for SymbolLookupKey);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECF0, &qword_19222D8D0);
    v56 = v34;
    inited = swift_initStackObject();
    *(inited + 16) = v181;
    *(inited + 32) = sub_192226AF0();
    *(inited + 40) = v58;
    v59 = sub_192170200(inited);
    swift_setDeallocating();
    sub_1920ED9C4(inited + 32);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v205 = v56;
    v61 = sub_1920B7128(v55);
    v63 = *(v56 + 16);
    v64 = (v62 & 1) == 0;
    v65 = __OFADD__(v63, v64);
    v66 = v63 + v64;
    if (v65)
    {
      goto LABEL_90;
    }

    v67 = v62;
    if (*(v56 + 24) >= v66)
    {
      v35 = v183;
      if ((v60 & 1) == 0)
      {
        v84 = v61;
        sub_19213EDA8();
        v61 = v84;
      }
    }

    else
    {
      sub_19213BD10(v66, v60);
      v61 = sub_1920B7128(v204);
      v35 = v183;
      if ((v67 & 1) != (v68 & 1))
      {
LABEL_97:
        sub_192228A40();
        __break(1u);
LABEL_98:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC8, &unk_192246D20);
        result = sub_192228A40();
        __break(1u);
        return result;
      }
    }

    v18 = v190;
    v69 = v205;
    if (v67)
    {
      *(v205[7] + 8 * v61) = v59;

      v34 = v69;
    }

    else
    {
      v205[(v61 >> 6) + 8] |= 1 << v61;
      v70 = v61;
      sub_1920ECD2C(v204, v69[6] + *(v198 + 72) * v61, type metadata accessor for SymbolLookupKey);
      *(v69[7] + 8 * v70) = v59;
      v71 = v69[2];
      v65 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v65)
      {
        goto LABEL_91;
      }

      v34 = v69;
      v69[2] = v72;
    }

    sub_1920ECC84(v204, type metadata accessor for SymbolLookupKey);
    sub_1920ECC84(v35, type metadata accessor for SymbolLookupKey);
    v8 = v187;
    (*v186)(v187, v202);
    goto LABEL_25;
  }

  v34 = MEMORY[0x1E69E7CC8];
LABEL_40:
  v202 = sub_192140634(MEMORY[0x1E69E7CC0]);
  v85 = *(v34 + 64);
  v189 = (v34 + 64);
  v86 = 1 << *(v34 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & v85;
  v89 = (v86 + 63) >> 6;
  v194 = (v179 + 16);
  v192 = v34;

  v90 = 0;
  *&v91 = 136380931;
  v193 = v91;
  v92 = v200;
  v93 = v201;
  v94 = v203;
  v197 = v89;
LABEL_43:
  v95 = v90;
  if (v88)
  {
    while (1)
    {
      v96 = v93;
      v97 = v18;
      v98 = v95;
LABEL_53:
      v101 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
      v102 = v101 | (v98 << 6);
      v103 = v192;
      v104 = v191;
      sub_1920ECD2C(*(v192 + 48) + *(v198 + 72) * v102, v191, type metadata accessor for SymbolLookupKey);
      v105 = *(*(v103 + 56) + 8 * v102);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC0, &unk_19222FF00);
      v107 = *(v106 + 48);
      sub_1920ED888(v104, v92, type metadata accessor for SymbolLookupKey);
      *(v92 + v107) = v105;
      (*(*(v106 - 8) + 56))(v92, 0, 1, v106);

      v100 = v98;
      v18 = v97;
      v93 = v96;
      v94 = v203;
LABEL_54:
      v108 = v199;
      sub_1920ED8F0(v92, v199);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC0, &unk_19222FF00);
      if ((*(*(v109 - 8) + 48))(v108, 1, v109) == 1)
      {
        break;
      }

      v110 = *(v108 + *(v109 + 48));
      sub_1920ED888(v108, v94, type metadata accessor for SymbolLookupKey);
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v111 = sub_1922258B0();
      __swift_project_value_buffer(v111, qword_1EAE00810);
      sub_1920ECD2C(v94, v93, type metadata accessor for SymbolLookupKey);

      v112 = sub_192225890();
      v113 = sub_192227FB0();

      v114 = os_log_type_enabled(v112, v113);
      v204 = v100;
      if (v114)
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v205 = v116;
        *v115 = v193;
        v117 = sub_192227D60();
        v119 = sub_19202B8CC(v117, v118, &v205);

        *(v115 + 4) = v119;
        *(v115 + 12) = 2081;
        (*v194)(v195, v93, v196);
        v120 = sub_192227990();
        v122 = v121;
        sub_1920ECC84(v93, type metadata accessor for SymbolLookupKey);
        v123 = sub_19202B8CC(v120, v122, &v205);
        v18 = v190;

        *(v115 + 14) = v123;
        _os_log_impl(&dword_192028000, v112, v113, "requesting dataForVectorGlyphs for %{private}s from %{private}s", v115, 0x16u);
        swift_arrayDestroy();
        v124 = v116;
        v94 = v203;
        MEMORY[0x193B0C7F0](v124, -1, -1);
        MEMORY[0x193B0C7F0](v115, -1, -1);
      }

      else
      {

        sub_1920ECC84(v93, type metadata accessor for SymbolLookupKey);
      }

      v125 = sub_1921B08CC(v94, v110);
      if (v125)
      {
        v126 = v125;
        v127 = sub_192227D40();
        v128 = [v126 dataForVectorGlyphsWithNames_];

        if (v128)
        {
          v146 = sub_192225080();
          v148 = v147;

          sub_1920367C8(v146, v148);
          v149 = v202;
          v150 = swift_isUniquelyReferenced_nonNull_native();
          v205 = v149;
          v151 = sub_1920B70BC(v110);
          v153 = *(v149 + 16);
          v154 = (v152 & 1) == 0;
          v65 = __OFADD__(v153, v154);
          v155 = v153 + v154;
          if (v65)
          {
            __break(1u);
          }

          else
          {
            v156 = v152;
            if (*(v149 + 24) >= v155)
            {
              if (v150)
              {
                goto LABEL_78;
              }

              v162 = v151;
              sub_19213EC2C();
              v151 = v162;
              v93 = v201;
              if ((v156 & 1) == 0)
              {
                goto LABEL_81;
              }

LABEL_79:
              v158 = v151;

              v202 = v205;
              v159 = (v205[7] + 16 * v158);
              v160 = *v159;
              v161 = v159[1];
              *v159 = v146;
              v159[1] = v148;
              sub_192039140(v160, v161);
              sub_192039140(v146, v148);
              sub_1920ECC84(v94, type metadata accessor for SymbolLookupKey);
LABEL_83:
              v92 = v200;
              v89 = v197;
              v90 = v204;
              goto LABEL_43;
            }

            sub_19213BA74(v155, v150);
            v151 = sub_1920B70BC(v110);
            if ((v156 & 1) != (v157 & 1))
            {
              goto LABEL_98;
            }

LABEL_78:
            v93 = v201;
            if (v156)
            {
              goto LABEL_79;
            }

LABEL_81:
            v163 = v205;
            v205[(v151 >> 6) + 8] |= 1 << v151;
            *(v163[6] + 8 * v151) = v110;
            v164 = (v163[7] + 16 * v151);
            *v164 = v146;
            v164[1] = v148;
            sub_192039140(v146, v148);
            sub_1920ECC84(v94, type metadata accessor for SymbolLookupKey);
            v165 = v163[2];
            v65 = __OFADD__(v165, 1);
            v166 = v165 + 1;
            if (!v65)
            {
              v202 = v163;
              v163[2] = v166;
              goto LABEL_83;
            }
          }

          __break(1u);
          goto LABEL_97;
        }
      }

      sub_1920ECD2C(v94, v18, type metadata accessor for SymbolLookupKey);

      v129 = sub_192225890();
      v130 = sub_192227F90();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v205 = v132;
        *v131 = v193;
        v133 = sub_192227D60();
        v135 = sub_19202B8CC(v133, v134, &v205);

        *(v131 + 4) = v135;
        *(v131 + 12) = 2081;
        (*v194)(v195, v18, v196);
        v136 = sub_192227990();
        v138 = v137;
        sub_1920ECC84(v18, type metadata accessor for SymbolLookupKey);
        v139 = sub_19202B8CC(v136, v138, &v205);

        *(v131 + 14) = v139;
        _os_log_impl(&dword_192028000, v129, v130, "failed to get dataForVectorGlyphs for %{private}s from %{private}s", v131, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193B0C7F0](v132, -1, -1);
        MEMORY[0x193B0C7F0](v131, -1, -1);
      }

      else
      {

        sub_1920ECC84(v18, type metadata accessor for SymbolLookupKey);
      }

      v92 = v200;
      v93 = v201;
      v90 = v204;
      v140 = sub_1920B70BC(v110);
      v142 = v141;

      if (v142)
      {
        v144 = v202;
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v205 = v144;
        if ((v145 & 1) == 0)
        {
          sub_19213EC2C();
          v144 = v205;
        }

        sub_192039140(*(*(v144 + 56) + 16 * v140), *(*(v144 + 56) + 16 * v140 + 8));
        v202 = v144;
        sub_1921E0F84(v140, v144);
        sub_1920ECC84(v94, type metadata accessor for SymbolLookupKey);
        v89 = v197;
        goto LABEL_43;
      }

      sub_1920ECC84(v94, type metadata accessor for SymbolLookupKey);
      v95 = v90;
      v89 = v197;
      if (!v88)
      {
        goto LABEL_45;
      }
    }

    if (qword_1EADEE4E8 != -1)
    {
      goto LABEL_94;
    }
  }

  else
  {
LABEL_45:
    if (v89 <= v95 + 1)
    {
      v99 = v95 + 1;
    }

    else
    {
      v99 = v89;
    }

    v100 = v99 - 1;
    while (1)
    {
      v98 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v98 >= v89)
      {
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC0, &unk_19222FF00);
        (*(*(v143 - 8) + 56))(v92, 1, 1, v143);
        v88 = 0;
        goto LABEL_54;
      }

      v88 = v189[v98];
      ++v95;
      if (v88)
      {
        v96 = v93;
        v97 = v18;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
  }

  v167 = sub_1922258B0();
  __swift_project_value_buffer(v167, qword_1EAE00810);
  v168 = v202;
  swift_bridgeObjectRetain_n();
  v169 = sub_192225890();
  v170 = sub_192227FB0();

  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    v205 = v172;
    *v171 = 136380675;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC8, &unk_192246D20);
    sub_1920ED960();
    v173 = sub_192227850();
    v175 = v174;

    v176 = sub_19202B8CC(v173, v175, &v205);

    *(v171 + 4) = v176;

    _os_log_impl(&dword_192028000, v169, v170, "assetLibraryDatas: returning dataPerNames with keys:%{private}s", v171, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v172);
    MEMORY[0x193B0C7F0](v172, -1, -1);
    MEMORY[0x193B0C7F0](v171, -1, -1);
  }

  else
  {
  }

  return v168;
}

unint64_t sub_1920EAF18()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000010;
    if (v1 != 4)
    {
      v5 = 0x64656C6261736964;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    v2 = 0x6576697463616E69;
    v3 = 0x6E6F69746361;
    if (v1 != 2)
    {
      v3 = 0x746169636F737361;
    }

    if (*v0)
    {
      v2 = 0x657669746361;
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
}

uint64_t sub_1920EB020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1920ED5E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1920EB054(uint64_t a1)
{
  v2 = sub_1920ECDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920EB090(uint64_t a1)
{
  v2 = sub_1920ECDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlTemplateButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA98, &qword_19222FAF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920ECDF8();
  sub_192228B90();
  LOBYTE(v14) = 0;
  type metadata accessor for ControlTemplateButton.Option(0);
  sub_1920ECCE4(&qword_1EADEDF40, type metadata accessor for ControlTemplateButton.Option, &protocol conformance descriptor for ControlTemplateButton.Option);
  sub_1922288C0();
  if (!v2)
  {
    v9 = type metadata accessor for ControlTemplateButton(0);
    LOBYTE(v14) = 1;
    sub_1922288C0();
    v14 = *(v3 + *(v9 + 24));
    v10 = v14;
    v13[15] = 2;
    sub_1920ECE4C();
    v11 = v10;
    sub_1922288C0();

    LOBYTE(v14) = 3;
    sub_192225020();
    sub_1920ECCE4(&qword_1ED74BB38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_192228850();
    LOBYTE(v14) = 4;
    sub_192228870();
    LOBYTE(v14) = 5;
    sub_192228870();
    LOBYTE(v14) = 6;
    sub_192228830();
    LOBYTE(v14) = 7;
    sub_192228870();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ControlTemplateButton.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v39 = type metadata accessor for ControlTemplateButton.Option(0);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAA0, &qword_19222FB00);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for ControlTemplateButton(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 28);
  v18 = sub_192225020();
  v19 = *(*(v18 - 8) + 56);
  v20 = v15;
  v42 = v17;
  v19(&v15[v17], 1, 1, v18);
  v21 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1920ECDF8();
  v40 = v12;
  v22 = v41;
  sub_192228B70();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_192033970(v20 + v42, &qword_1EADEEE10, &unk_19222B630);
  }

  else
  {
    v34 = v5;
    v41 = v13;
    LOBYTE(v45) = 0;
    sub_1920ECCE4(&qword_1EADED880, type metadata accessor for ControlTemplateButton.Option, &protocol conformance descriptor for ControlTemplateButton.Option);
    v23 = v36;
    sub_1922287C0();
    v24 = v20;
    sub_1920ED888(v23, v20, type metadata accessor for ControlTemplateButton.Option);
    LOBYTE(v45) = 1;
    sub_1922287C0();
    v25 = v41;
    sub_1920ED888(v7, v24 + v41[5], type metadata accessor for ControlTemplateButton.Option);
    v44 = 2;
    sub_1920ECEA0();
    sub_1922287C0();
    *(v24 + v25[6]) = v45;
    LOBYTE(v45) = 3;
    sub_1920ECCE4(qword_1ED7488E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v26 = v34;
    sub_192228750();
    sub_19204193C(v26, v24 + v42, &qword_1EADEEE10, &unk_19222B630);
    LOBYTE(v45) = 4;
    *(v24 + v25[8]) = sub_192228770() & 1;
    LOBYTE(v45) = 5;
    v27 = sub_192228770();
    v28 = v37;
    *(v24 + v25[9]) = v27 & 1;
    LOBYTE(v45) = 6;
    v29 = sub_192228730();
    v30 = (v24 + v25[10]);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v45) = 7;
    LOBYTE(v26) = sub_192228770();
    (*(v28 + 8))(v40, v38);
    *(v24 + v25[11]) = v26 & 1;
    sub_1920ECD2C(v24, v35, type metadata accessor for ControlTemplateButton);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_1920ECC84(v24, type metadata accessor for ControlTemplateButton);
  }
}

uint64_t ControlTemplateButton.validateIcon(_:)(void (*a1)(char *), uint64_t a2)
{
  v25 = a1;
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = sub_192226B70();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for ControlTemplateButton(0) + 20);
  v24 = v2;
  v16 = v2 + v15;
  v17 = type metadata accessor for ControlTemplateButton.Option(0);
  sub_19202CFFC(v16 + *(v17 + 24), v8, &qword_1EADEF720, &unk_19222E2F0);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_192033970(v8, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v22 = v5;
    (*(v10 + 32))(v14, v8, v9);
    v19 = v26;
    v25(v14);
    if (v19)
    {
      return (*(v10 + 8))(v14, v9);
    }

    (*(v10 + 8))(v14, v9);
    v5 = v22;
  }

  sub_19202CFFC(v24 + *(v17 + 24), v5, &qword_1EADEF720, &unk_19222E2F0);
  if (v18(v5, 1, v9) == 1)
  {
    return sub_192033970(v5, &qword_1EADEF720, &unk_19222E2F0);
  }

  v14 = v23;
  (*(v10 + 32))(v23, v5, v9);
  v25(v14);
  return (*(v10 + 8))(v14, v9);
}

uint64_t ControlTemplateButton.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v31 - v3;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000023, 0x800000019224A170);
  if (v0[1])
  {
    v5 = *v0;
    v6 = v0[1];
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x193B0A990](v5, v6);

  MEMORY[0x193B0A990](0x627573202020200ALL, 0xEF203A656C746974);
  if (v0[3])
  {
    v7 = v0[2];
    v8 = v0[3];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x193B0A990](v7, v8);

  v9 = 0xE300000000000000;
  MEMORY[0x193B0A990](2128928, 0xE300000000000000);
  v10 = type metadata accessor for ControlTemplateButton(0);
  v11 = v0 + v10[5];
  v12 = *(v11 + 3);
  if (v12)
  {
    v13 = *(v11 + 2);
  }

  else
  {
    v13 = 7104878;
  }

  if (v12)
  {
    v9 = *(v11 + 3);
  }

  MEMORY[0x193B0A990](v13, v9);

  MEMORY[0x193B0A990](0x6F6369202020200ALL, 0xED00002020203A6ELL);
  v14 = type metadata accessor for ControlTemplateButton.Option(0);
  sub_19202CFFC(v0 + *(v14 + 24), v4, &qword_1EADEF720, &unk_19222E2F0);
  v15 = sub_192226B70();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    sub_192033970(v4, &qword_1EADEF720, &unk_19222E2F0);
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    v19 = sub_192226AB0();
    v17 = v20;
    (*(v16 + 8))(v4, v15);
    v18 = v19;
  }

  MEMORY[0x193B0A990](v18, v17);

  MEMORY[0x193B0A990](0x746361202020200ALL, 0xED0000203A6E6F69);
  v31[1] = *(v1 + v10[6]);
  v21 = ControlAction.description.getter();
  MEMORY[0x193B0A990](v21);

  MEMORY[0x193B0A990](0xD000000000000017, 0x800000019224A1A0);
  if (*(v1 + v10[8]))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + v10[8]))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v22, v23);

  MEMORY[0x193B0A990](0x736964202020200ALL, 0xEF203A64656C6261);
  if (*(v1 + v10[9]))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v1 + v10[9]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x193B0A990](v24, v25);

  MEMORY[0x193B0A990](0xD00000000000001ELL, 0x800000019224A1C0);
  v26 = (v1 + v10[10]);
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;
  }

  else
  {
    v28 = 7104878;
  }

  if (v27)
  {
    v29 = v26[1];
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](v28, v29);

  MEMORY[0x193B0A990](10506, 0xE200000000000000);
  return v32;
}

uint64_t _s9WidgetKit21ControlTemplateButtonV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D0, &qword_19222E728);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  if ((_s9WidgetKit21ControlTemplateButtonV6OptionV2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = type metadata accessor for ControlTemplateButton(0);
  if ((_s9WidgetKit21ControlTemplateButtonV6OptionV2eeoiySbAE_AEtFZ_0((a1 + v14[5]), (a2 + v14[5])) & 1) == 0)
  {
    goto LABEL_17;
  }

  v39 = v5;
  v15 = v14[6];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_17;
    }

    v37[1] = sub_1920EDA18();
    v18 = v17;
    v38 = v14;
    v19 = v18;
    v20 = v16;
    v21 = v19;
    v22 = v20;
    LOBYTE(v20) = sub_1922281D0();

    v14 = v38;
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v17)
  {
    goto LABEL_17;
  }

  v38 = v14;
  v23 = v14[7];
  v24 = *(v11 + 48);
  sub_19202CFFC(a1 + v23, v13, &qword_1EADEEE10, &unk_19222B630);
  sub_19202CFFC(a2 + v23, &v13[v24], &qword_1EADEEE10, &unk_19222B630);
  v25 = *(v39 + 48);
  if (v25(v13, 1, v4) != 1)
  {
    sub_19202CFFC(v13, v10, &qword_1EADEEE10, &unk_19222B630);
    if (v25(&v13[v24], 1, v4) != 1)
    {
      v26 = v39;
      (*(v39 + 32))(v7, &v13[v24], v4);
      sub_1920ECCE4(&qword_1EADECF08, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v27 = sub_192227910();
      v28 = *(v26 + 8);
      v28(v7, v4);
      v28(v10, v4);
      sub_192033970(v13, &qword_1EADEEE10, &unk_19222B630);
      if ((v27 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    (*(v39 + 8))(v10, v4);
LABEL_13:
    sub_192033970(v13, &qword_1EADEF7D0, &qword_19222E728);
    goto LABEL_17;
  }

  if (v25(&v13[v24], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_192033970(v13, &qword_1EADEEE10, &unk_19222B630);
LABEL_15:
  v29 = v38;
  if (*(a1 + v38[8]) != *(a2 + v38[8]) || *(a1 + v38[9]) != *(a2 + v38[9]))
  {
    goto LABEL_17;
  }

  v32 = v38[10];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (sub_1922289A0() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    v30 = *(a1 + v29[11]) ^ *(a2 + v29[11]) ^ 1;
    return v30 & 1;
  }

  if (!v36)
  {
    goto LABEL_26;
  }

LABEL_17:
  v30 = 0;
  return v30 & 1;
}

uint64_t _s9WidgetKit21ControlTemplateButtonV6OptionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_192226B70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF7D8, qword_19222E730);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v39 = type metadata accessor for ControlTemplateButton.Option(0);
  v18 = *(v39 + 24);
  v19 = *(v11 + 48);
  sub_19202CFFC(a1 + v18, v13, &qword_1EADEF720, &unk_19222E2F0);
  v20 = a2 + v18;
  v21 = v5;
  sub_19202CFFC(v20, &v13[v19], &qword_1EADEF720, &unk_19222E2F0);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_19202CFFC(v13, v10, &qword_1EADEF720, &unk_19222E2F0);
    if (v22(&v13[v19], 1, v4) != 1)
    {
      (*(v21 + 32))(v7, &v13[v19], v4);
      sub_1920ECCE4(&qword_1EADEF7E0, MEMORY[0x1E697CB10], MEMORY[0x1E697CB20]);
      v24 = sub_192227910();
      v25 = *(v21 + 8);
      v25(v7, v4);
      v25(v10, v4);
      sub_192033970(v13, &qword_1EADEF720, &unk_19222E2F0);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

    (*(v21 + 8))(v10, v4);
LABEL_20:
    sub_192033970(v13, &qword_1EADEF7D8, qword_19222E730);
    return 0;
  }

  if (v22(&v13[v19], 1, v4) != 1)
  {
    goto LABEL_20;
  }

  sub_192033970(v13, &qword_1EADEF720, &unk_19222E2F0);
LABEL_24:
  v26 = v39;
  v27 = *(v39 + 28);
  if (*(a1 + v27 + 16))
  {
    if ((*(a2 + v27 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + v27 + 16) & 1) != 0 || (sub_192227290() & 1) == 0)
  {
    return 0;
  }

  v28 = *(v26 + 32);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_1922289A0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  v33 = *(v26 + 36);
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (v37 && (*v34 == *v36 && v35 == v37 || (sub_1922289A0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v37)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1920ECC30()
{
  result = qword_1EADEE5C8;
  if (!qword_1EADEE5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5C8);
  }

  return result;
}

uint64_t sub_1920ECC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920ECCE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1920ECD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920ECD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateButton.Option(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920ECDF8()
{
  result = qword_1EADEE5E0;
  if (!qword_1EADEE5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5E0);
  }

  return result;
}

unint64_t sub_1920ECE4C()
{
  result = qword_1EADEE450;
  if (!qword_1EADEE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE450);
  }

  return result;
}

unint64_t sub_1920ECEA0()
{
  result = qword_1EADEDA60;
  if (!qword_1EADEDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDA60);
  }

  return result;
}

uint64_t sub_1920ECEF4(void *a1)
{
  a1[1] = sub_1920ECCE4(&qword_1EADEE5A0, type metadata accessor for ControlTemplateButton, &protocol conformance descriptor for ControlTemplateButton);
  a1[2] = sub_1920ECCE4(&qword_1EADEE5B0, type metadata accessor for ControlTemplateButton, &protocol conformance descriptor for ControlTemplateButton);
  result = sub_1920ECCE4(&qword_1EADEE5A8, type metadata accessor for ControlTemplateButton, &protocol conformance descriptor for ControlTemplateButton);
  a1[3] = result;
  return result;
}

void sub_1920ECFC8(uint64_t a1)
{
  type metadata accessor for ControlTemplateButton.Option(319);
  if (v1 <= 0x3F)
  {
    sub_192040A00(319, &qword_1ED74C4C0, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      sub_192040778(319, &qword_1ED74B590, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1920ED0D8(uint64_t a1)
{
  sub_192040778(319, &qword_1ED74B590, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_192040A00(319, &qword_1ED74B540, MEMORY[0x1E697CB10]);
    if (v2 <= 0x3F)
    {
      sub_192040778(319, &qword_1EADEE808, MEMORY[0x1E6981540]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1920ED1E0()
{
  result = qword_1EADEFAA8;
  if (!qword_1EADEFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFAA8);
  }

  return result;
}

unint64_t sub_1920ED238()
{
  result = qword_1EADEFAB0;
  if (!qword_1EADEFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFAB0);
  }

  return result;
}

unint64_t sub_1920ED290()
{
  result = qword_1EADEE5D0;
  if (!qword_1EADEE5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5D0);
  }

  return result;
}

unint64_t sub_1920ED2E8()
{
  result = qword_1EADEE5D8;
  if (!qword_1EADEE5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5D8);
  }

  return result;
}

unint64_t sub_1920ED340()
{
  result = qword_1EADEE5B8;
  if (!qword_1EADEE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5B8);
  }

  return result;
}

unint64_t sub_1920ED398()
{
  result = qword_1EADEE5C0;
  if (!qword_1EADEE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE5C0);
  }

  return result;
}

uint64_t sub_1920ED3EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953393012 && a2 == 0xE400000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69486E6F69746361 && a2 == 0xEA0000000000746ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1920ED5E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004C52556465 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000192249E50 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E70 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000192249E90 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1920ED888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920ED8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAB8, &qword_19222FEF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920ED960()
{
  result = qword_1EADEDFE0;
  if (!qword_1EADEDFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFAC8, &unk_192246D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDFE0);
  }

  return result;
}

unint64_t sub_1920EDA18()
{
  result = qword_1ED74B690;
  if (!qword_1ED74B690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74B690);
  }

  return result;
}

uint64_t WidgetRelevanceRequest.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind);

  return v1;
}

id WidgetRelevanceRequest.__allocating_init(kind:archiveFileHandle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id WidgetRelevanceRequest.init(kind:archiveFileHandle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for WidgetRelevanceRequest();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1920EDB98(void *a1)
{
  v3 = sub_192227930();
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle);
  v6 = sub_192227930();
  [a1 encodeObject:v5 forKey:v6];
}

id WidgetRelevanceRequest.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEFAE0, &unk_19222FF10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19222B480;
  *(v2 + 32) = sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  sub_192228150();

  if (v18)
  {
    v3 = swift_dynamicCast();
    if (v3)
    {
      v4 = v14;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_192030F04(v17);
    v4 = 0;
    v5 = 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19222B480;
  *(v6 + 32) = sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  sub_192228150();

  if (v18)
  {
    if (swift_dynamicCast())
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }

    if (v5)
    {
      if (v7)
      {
        v8 = type metadata accessor for WidgetRelevanceRequest();
        v9 = objc_allocWithZone(v8);
        v10 = &v9[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind];
        *v10 = v4;
        *(v10 + 1) = v5;
        *&v9[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle] = v7;
        v16.receiver = v9;
        v16.super_class = v8;
        v11 = v7;
        v12 = objc_msgSendSuper2(&v16, sel_init);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v12;
      }

      goto LABEL_17;
    }

LABEL_19:

    a1 = v7;
    goto LABEL_20;
  }

  sub_192030F04(v17);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_19;
  }

LABEL_17:

LABEL_20:

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id WidgetRelevanceRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetRelevanceRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetRelevanceRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1920EE13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920EE190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1920EE1CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920EE21C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1920EE270(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1920EE288(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1920EE2C0()
{
  v0 = sub_192225300();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1922252F0();
  v5 = sub_1922252E0();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  qword_1EADEFB68 = v4;
}

double static WidgetRelevanceGroup.named(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;

  return result;
}

double static WidgetRelevanceGroup.automatic.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_19222DBC0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit0A14RelevanceGroupV7StorageO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1920EE408(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1920EE464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1920EE4C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920EE514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1920EE570(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void *EnvironmentValues.activityUpdateAvailability.getter()
{
  sub_192057834();

  return sub_1922261E0();
}

uint64_t EnvironmentValues.isActivityUpdateReduced.getter()
{
  sub_192057834();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues.isActivityUpdateReduced.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_192057834();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1920EE708;
}

WidgetKit::ActivityUpdateAvailability_optional __swiftcall ActivityUpdateAvailability.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ActivityUpdateAvailability.description.getter()
{
  if (*v0)
  {
    return 0x64656375646572;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_1920EE814()
{
  if (*v0)
  {
    return 0x64656375646572;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t (*EnvironmentValues.activityUpdateAvailability.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = sub_192057834();
  sub_1922261E0();
  return sub_1920EEA00;
}

unint64_t sub_1920EE8E4()
{
  result = qword_1EADEFB70;
  if (!qword_1EADEFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB70);
  }

  return result;
}

uint64_t sub_1920EE938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1920EE8E4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1920EE9AC()
{
  result = qword_1EADEFB80;
  if (!qword_1EADEFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB80);
  }

  return result;
}

id sub_1920EEA04(void *a1, char a2, void *a3, double a4, double a5)
{
  result = [a1 extensionBundleIdentifier];
  if (result)
  {
    v9 = result;
    v10 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213E0AC(v9, 0xD000000000000011, 0x800000019224A290, isUniquelyReferenced_nonNull_native);
    v12 = [a1 kind];
    v13 = sub_192227960();
    v15 = v14;

    sub_1920AC810(6, v13, v15);

    v16 = sub_192228250();

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v10;
    sub_19213E0AC(v16, 0x694B746567646977, 0xEA0000000000646ELL, v17);
    LOBYTE(v26) = a2;
    _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(&v26);
    v18 = sub_192227D90();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v10;
    sub_19213E0AC(v18, 0x796C696D6166, 0xE600000000000000, v19);
    v20 = v26;
    [a3 size];
    v21 = sub_192225410();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v20;
    sub_19213E0AC(v21, 0x746867696568, 0xE600000000000000, v22);
    v23 = v26;
    [a3 size];
    v24 = sub_192225410();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v23;
    sub_19213E0AC(v24, 0x6874646977, 0xE500000000000000, v25);
    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1920EECBC()
{
  result = qword_1EADEFB88;
  if (!qword_1EADEFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB88);
  }

  return result;
}

uint64_t sub_1920EED10()
{
  result = sub_192227960();
  qword_1EAE00870 = result;
  *algn_1EAE00878 = v1;
  return result;
}

uint64_t sub_1920EED40()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1)
  {
    v2 = 4003;
  }

  else
  {
    v2 = 4001;
  }

  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_1920EED94()
{
  if (*v0)
  {
    v1 = 4003;
  }

  else
  {
    v1 = 4001;
  }

  return MEMORY[0x193B0BA90](v1);
}

uint64_t sub_1920EEDD0()
{
  v1 = *v0;
  sub_192228AD0();
  if (v1)
  {
    v2 = 4003;
  }

  else
  {
    v2 = 4001;
  }

  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

void *sub_1920EEE20@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 4003)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 4001)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1920EEE40(uint64_t *a1@<X8>)
{
  v2 = 4001;
  if (*v1)
  {
    v2 = 4003;
  }

  *a1 = v2;
}

uint64_t sub_1920EEE5C()
{
  if (qword_1EADEE908 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAE00870;

  return v0;
}

uint64_t sub_1920EEEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1920EF0AC();
  v5 = sub_1920EF100();

  return MEMORY[0x1EEDC27F0](a1, a2, v4, v5);
}

unint64_t sub_1920EEF24()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000042;
  }
}

unint64_t sub_1920EEF6C()
{
  result = qword_1EADEFB90;
  if (!qword_1EADEFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB90);
  }

  return result;
}

uint64_t sub_1920EEFC0(uint64_t a1)
{
  v2 = sub_1920EF058();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1920EEFFC(uint64_t a1)
{
  v2 = sub_1920EF058();
  v3 = sub_1920EF0AC();
  v4 = sub_1920EF100();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

unint64_t sub_1920EF058()
{
  result = qword_1EADEFB98;
  if (!qword_1EADEFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFB98);
  }

  return result;
}

unint64_t sub_1920EF0AC()
{
  result = qword_1EADEFBA0;
  if (!qword_1EADEFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFBA0);
  }

  return result;
}

unint64_t sub_1920EF100()
{
  result = qword_1EADEFBA8;
  if (!qword_1EADEFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFBA8);
  }

  return result;
}

uint64_t sub_1920EF16C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 40);
  v6 = *(a3 + 32);
  v8 = *a1;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 24);
  v12 = v5;
  return v6(&v8, a2);
}

uint64_t sub_1920EF1DC(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920EF2F4;

  return v7(a1, a2);
}

uint64_t sub_1920EF2F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1920EF3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1920EF538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1920B3B44;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1920EF684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920EF9CC;

  return v9(a1, a2, a3);
}

uint64_t sub_1920EF7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1920EF8DC()
{
  sub_1920B3090();
  sub_1922261E0();
  return v1;
}

uint64_t sub_1920EF928(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1920EF970(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void ActivityViewMetrics.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void ActivityViewMetrics.init(bounds:cornerRadius:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

uint64_t static ActivityViewMetrics.from(request:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*(result + 16) == 1 && *(result + 8) > v2)
  {
    v2 = *(result + 8);
  }

  v3 = *(result + 24);
  if ((*(result + 40) & 1) != 0 && *(result + 32) > v3)
  {
    v3 = *(result + 32);
  }

  v4 = *(result + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  return result;
}

uint64_t ActivityViewMetrics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_1920EFB18(*v0, v2, v0[2], v0[3]);
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x193B0BAC0](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193B0BAC0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  return MEMORY[0x193B0BAC0](*&v6);
}

uint64_t sub_1920EFB18(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3;
  }

  MEMORY[0x193B0BAC0](*&v7);
  if (a4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a4;
  }

  MEMORY[0x193B0BAC0](*&v8);
  if (a1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a1;
  }

  MEMORY[0x193B0BAC0](*&v9);
  if (a2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a2;
  }

  return MEMORY[0x193B0BAC0](*&v10);
}

uint64_t ActivityViewMetrics.description.getter()
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD00000000000001DLL, 0x800000019224A320);
  type metadata accessor for CGRect(0);
  sub_1922285A0();
  MEMORY[0x193B0A990](0x72656E726F63202CLL, 0xEF3D737569646152);
  v0 = sub_192227D10();
  MEMORY[0x193B0A990](v0);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0;
}

uint64_t static ActivityViewMetrics.== infix(_:_:)(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  v3 = a2[1].origin.x;
  LODWORD(result) = CGRectEqualToRect(*a1, *a2);
  if (x == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920EFCD0()
{
  if (*v0)
  {
    return 0x615272656E726F63;
  }

  else
  {
    return 0x73646E756F62;
  }
}

uint64_t sub_1920EFD10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646E756F62 && a2 == 0xE600000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_1920EFDEC(uint64_t a1)
{
  v2 = sub_1920F0024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920EFE28(uint64_t a1)
{
  v2 = sub_1920F0024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityViewMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBB0, &qword_1922305C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v9 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F0024();
  sub_192228B90();
  v10 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v10;
  v13 = 0;
  type metadata accessor for CGRect(0);
  sub_1920F0458(&qword_1ED74A908, MEMORY[0x1E695EF68]);
  sub_1922288C0();
  if (!v2)
  {
    *&v12[0] = v9;
    v13 = 1;
    sub_192059A84();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1920F0024()
{
  result = qword_1EADEE250;
  if (!qword_1EADEE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE250);
  }

  return result;
}

uint64_t ActivityViewMetrics.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_192228AD0();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193B0BAC0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x193B0BAC0](*&v7);
  if (v1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v1;
  }

  v9 = v8;
  MEMORY[0x193B0BAC0](*&v8);
  if (v2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v2;
  }

  v11 = v10;
  MEMORY[0x193B0BAC0](*&v10);
  MEMORY[0x193B0BAC0](*&v9);
  MEMORY[0x193B0BAC0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x193B0BAC0](*&v12);
  return sub_192228B30();
}

uint64_t ActivityViewMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBB8, &qword_1922305C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F0024();
  sub_192228B70();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v16 = 0;
    sub_1920F0458(&unk_1ED74A7A0, MEMORY[0x1E695EF80]);
    sub_1922287C0();
    v12 = v15;
    v13 = v14;
    v16 = 1;
    sub_192045184();
    sub_1922287C0();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v12;
    *a2 = v13;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1920F0370()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_192228AD0();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193B0BAC0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x193B0BAC0](*&v7);
  if (v1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v1;
  }

  v9 = v8;
  MEMORY[0x193B0BAC0](*&v8);
  if (v2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v2;
  }

  v11 = v10;
  MEMORY[0x193B0BAC0](*&v10);
  MEMORY[0x193B0BAC0](*&v9);
  MEMORY[0x193B0BAC0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x193B0BAC0](*&v12);
  return sub_192228B30();
}

uint64_t sub_1920F0458(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1920F04A0()
{
  result = qword_1EADEFBC0;
  if (!qword_1EADEFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFBC0);
  }

  return result;
}

uint64_t sub_1920F0528(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  v3 = a2[1].origin.x;
  LODWORD(result) = CGRectEqualToRect(*a1, *a2);
  if (x == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920F0568(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920F0588(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1920F05E0()
{
  result = qword_1EADEFBC8;
  if (!qword_1EADEFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFBC8);
  }

  return result;
}

unint64_t sub_1920F0638()
{
  result = qword_1EADEE240;
  if (!qword_1EADEE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE240);
  }

  return result;
}

unint64_t sub_1920F0690()
{
  result = qword_1EADEE248;
  if (!qword_1EADEE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE248);
  }

  return result;
}

uint64_t EnvironmentValues.isRemoteWidget.getter()
{
  sub_1920C869C();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues.isRemoteWidget.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1920C869C();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1920F07C4;
}

unint64_t ControlError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1922261D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ControlError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1920F47F0(v1, v8, type metadata accessor for ControlError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      v11 = v8[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000019, 0x800000019224A370);
      v25 = v10;
      v12 = sub_192228910();
      MEMORY[0x193B0A990](v12);

      MEMORY[0x193B0A990](0xD000000000000018, 0x800000019224A390);
      v25 = v11;
      v13 = sub_192228910();
      MEMORY[0x193B0A990](v13);

      MEMORY[0x193B0A990](46, 0xE100000000000000);
      return v26;
    }

    else
    {
      return 0xD00000000000002CLL;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBD8, &qword_1922308F0);
    v16 = *(v8 + *(v15 + 48));
    v17 = *(v8 + *(v15 + 64));
    (*(v3 + 32))(v5, v8, v2);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_192228400();

    v26 = 0xD00000000000001BLL;
    v27 = 0x800000019224A3B0;
    v25 = v16;
    v24 = 1;
    v18 = WidgetEnvironment.differences(from:ignoringEnvironmentKeys:usage:)(v5, v17, &v24);

    v19 = MEMORY[0x193B0AB30](v18, MEMORY[0x1E69E6158]);
    v21 = v20;

    MEMORY[0x193B0A990](v19, v21);

    v22 = v26;
    (*(v3 + 8))(v5, v2);
    return v22;
  }
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v82 = type metadata accessor for BundleStub(0);
  v84 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBE0, &qword_1922308F8);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBE8, &qword_192230900);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v79 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v79 - v10;
  v11 = sub_192225150();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBF0, &unk_192230908);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79 - v23;
  v87 = a1;
  sub_19202CFFC(a1, v92, &qword_1EADEFBF8, &unk_192230918);
  v25 = v93;
  if (v93)
  {
    v26 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v26 + 56))(v25, v26);
    v27 = *(v12 + 56);
    v27(v24, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
    v27 = *(v12 + 56);
    v27(v24, 1, 1, v11);
  }

  sub_19202CFFC(v90, v92, &qword_1EADEFBF8, &unk_192230918);
  v28 = v93;
  if (v93)
  {
    v29 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v29 + 56))(v28, v29);
    v27(v21, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
    v27(v21, 1, 1, v11);
  }

  v30 = v89;
  v31 = *(v14 + 48);
  sub_19202CFFC(v24, v16, &qword_1EADEED10, &unk_19222B0F0);
  sub_19202CFFC(v21, &v16[v31], &qword_1EADEED10, &unk_19222B0F0);
  v32 = *(v12 + 48);
  if (v32(v16, 1, v11) == 1)
  {
    sub_192033970(v21, &qword_1EADEED10, &unk_19222B0F0);
    sub_192033970(v24, &qword_1EADEED10, &unk_19222B0F0);
    if (v32(&v16[v31], 1, v11) == 1)
    {
      sub_192033970(v16, &qword_1EADEED10, &unk_19222B0F0);
      goto LABEL_15;
    }

LABEL_12:
    v33 = &qword_1EADEFBF0;
    v34 = &unk_192230908;
    v35 = v16;
LABEL_13:
    sub_192033970(v35, v33, v34);
LABEL_39:
    v54 = 0;
    return v54 & 1;
  }

  sub_19202CFFC(v16, v30, &qword_1EADEED10, &unk_19222B0F0);
  if (v32(&v16[v31], 1, v11) == 1)
  {
    sub_192033970(v21, &qword_1EADEED10, &unk_19222B0F0);
    sub_192033970(v24, &qword_1EADEED10, &unk_19222B0F0);
    (*(v12 + 8))(v30, v11);
    goto LABEL_12;
  }

  v36 = &v16[v31];
  v37 = v86;
  (*(v12 + 32))(v86, v36, v11);
  sub_1920F47A8(&qword_1EADEDEE8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v38 = sub_192227910();
  v39 = *(v12 + 8);
  v39(v37, v11);
  sub_192033970(v21, &qword_1EADEED10, &unk_19222B0F0);
  sub_192033970(v24, &qword_1EADEED10, &unk_19222B0F0);
  v39(v30, v11);
  sub_192033970(v16, &qword_1EADEED10, &unk_19222B0F0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  v40 = v87;
  sub_19202CFFC(v87, v92, &qword_1EADEFBF8, &unk_192230918);
  v41 = v93;
  if (v93)
  {
    v42 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v41 = (*(v42 + 72))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
  }

  v43 = v88;
  sub_19202CFFC(v90, v92, &qword_1EADEFBF8, &unk_192230918);
  v44 = v93;
  if (!v93)
  {
    sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
    if (!v41)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v45 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  v46 = (*(v45 + 72))(v44, v45);
  __swift_destroy_boxed_opaque_existential_1(v92);
  if (!v41)
  {
    if (v46)
    {

      goto LABEL_39;
    }

    goto LABEL_27;
  }

  if (!v46)
  {
LABEL_24:

    goto LABEL_39;
  }

  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v47 = sub_1922281D0();

  if ((v47 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_27:
  sub_19202CFFC(v40, v92, &qword_1EADEFBF8, &unk_192230918);
  v48 = v93;
  if (v93)
  {
    v49 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    v48 = (*(v49 + 80))(v48, v49);
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
  }

  sub_19202CFFC(v90, v92, &qword_1EADEFBF8, &unk_192230918);
  v50 = v93;
  if (!v93)
  {
    sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
    if (!v48)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v51 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  v52 = (*(v51 + 80))(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v92);
  if (!v48)
  {
    if (!v52)
    {
      goto LABEL_41;
    }

LABEL_38:

    goto LABEL_39;
  }

  v92[0] = v48;
  if (!v52)
  {
    goto LABEL_38;
  }

  v91 = v52;
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADECEE0, MEMORY[0x1E6994010], MEMORY[0x1E6994028]);
  v53 = sub_192227910();

  if ((v53 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_41:
  sub_19202CFFC(v40, v92, &qword_1EADEFBF8, &unk_192230918);
  v56 = v93;
  if (v93)
  {
    v57 = v94;
    __swift_project_boxed_opaque_existential_1(v92, v93);
    (*(v57 + 48))(&v91, v56, v57);
    v58 = v91;
    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
    v58 = 0;
  }

  sub_19202CFFC(v90, v92, &qword_1EADEFBF8, &unk_192230918);
  v59 = v93;
  if (!v93)
  {
    sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
    if (v56)
    {
      goto LABEL_39;
    }

    goto LABEL_50;
  }

  v60 = v94;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  (*(v60 + 48))(&v91, v59, v60);
  v62 = v91;
  v61 = HIDWORD(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  v54 = 0;
  if (v56 && v62 == v58 && !((v58 ^ (v61 << 32)) >> 32))
  {
LABEL_50:
    sub_19202CFFC(v40, v92, &qword_1EADEFBF8, &unk_192230918);
    v63 = v93;
    if (v93)
    {
      v64 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v65 = v63;
      v66 = v85;
      (*(v64 + 40))(v65, v64);
      v67 = *(v84 + 56);
      v68 = v82;
      v67(v66, 0, 1, v82);
      __swift_destroy_boxed_opaque_existential_1(v92);
    }

    else
    {
      sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
      v67 = *(v84 + 56);
      v68 = v82;
      v67(v85, 1, 1, v82);
    }

    v69 = v83;
    sub_19202CFFC(v90, v92, &qword_1EADEFBF8, &unk_192230918);
    v70 = v93;
    if (v93)
    {
      v71 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      (*(v71 + 40))(v70, v71);
      v72 = v84;
      v67(v43, 0, 1, v68);
      __swift_destroy_boxed_opaque_existential_1(v92);
    }

    else
    {
      sub_192033970(v92, &qword_1EADEFBF8, &unk_192230918);
      v72 = v84;
      v67(v43, 1, 1, v68);
    }

    v73 = *(v81 + 48);
    v74 = v85;
    sub_19202CFFC(v85, v69, &qword_1EADEFBE8, &qword_192230900);
    sub_19202CFFC(v43, v69 + v73, &qword_1EADEFBE8, &qword_192230900);
    v75 = *(v72 + 48);
    if (v75(v69, 1, v68) == 1)
    {
      sub_192033970(v43, &qword_1EADEFBE8, &qword_192230900);
      sub_192033970(v74, &qword_1EADEFBE8, &qword_192230900);
      if (v75(v69 + v73, 1, v68) == 1)
      {
        sub_192033970(v69, &qword_1EADEFBE8, &qword_192230900);
        v54 = 1;
        return v54 & 1;
      }
    }

    else
    {
      v76 = v80;
      sub_19202CFFC(v69, v80, &qword_1EADEFBE8, &qword_192230900);
      if (v75(v69 + v73, 1, v68) != 1)
      {
        v77 = v69 + v73;
        v78 = v79;
        sub_19203D0F8(v77, v79, type metadata accessor for BundleStub);
        v54 = _s9WidgetKit10BundleStubV2eeoiySbAC_ACtFZ_0(v76, v78);
        sub_1920F4878(v78, type metadata accessor for BundleStub);
        sub_192033970(v43, &qword_1EADEFBE8, &qword_192230900);
        sub_192033970(v85, &qword_1EADEFBE8, &qword_192230900);
        sub_1920F4878(v76, type metadata accessor for BundleStub);
        sub_192033970(v69, &qword_1EADEFBE8, &qword_192230900);
        return v54 & 1;
      }

      sub_192033970(v43, &qword_1EADEFBE8, &qword_192230900);
      sub_192033970(v85, &qword_1EADEFBE8, &qword_192230900);
      sub_1920F4878(v76, type metadata accessor for BundleStub);
    }

    v33 = &qword_1EADEFBE0;
    v34 = &qword_1922308F8;
    v35 = v69;
    goto LABEL_13;
  }

  return v54 & 1;
}

uint64_t ControlArchive.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_192225150();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_192228400();

  v18 = 60;
  v19 = 0xE100000000000000;
  v8 = sub_192228BD0();
  MEMORY[0x193B0A990](v8);

  MEMORY[0x193B0A990](0x6F72746E6F63203ALL, 0xEA00000000003D6CLL);
  v9 = (*(a2 + 72))(a1, a2);
  v10 = [v9 description];
  v11 = sub_192227960();
  v13 = v12;

  MEMORY[0x193B0A990](v11, v13);

  MEMORY[0x193B0A990](0x3D6574617473202CLL, 0xE800000000000000);
  v17[1] = (*(a2 + 80))(a1, a2);
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADEEE00, MEMORY[0x1E6994010], MEMORY[0x1E6994038]);
  v14 = sub_192228910();
  MEMORY[0x193B0A990](v14);

  MEMORY[0x193B0A990](0x697461657263202CLL, 0xEF3D657461446E6FLL);
  (*(a2 + 56))(a1, a2);
  sub_1920F47A8(&qword_1EADEFC00, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v15 = sub_192228910();
  MEMORY[0x193B0A990](v15);

  (*(v5 + 8))(v7, v4);
  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v18;
}

void ControlArchive.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_192225150();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 56))(a2, a3, v7);
  sub_1920F47A8(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  (*(v6 + 8))(v9, v5);
  v10 = (*(a3 + 72))(a2, a3);
  sub_1922281E0();

  v13 = (*(a3 + 80))(a2, a3);
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADEFC08, MEMORY[0x1E6994010], MEMORY[0x1E6994020]);
  sub_192227890();

  (*(a3 + 64))(&v13, a2, a3);
  v11 = v13;
  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90]();
}

uint64_t ControlArchiveMock.__allocating_init(control:state:environment:template:date:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v45 = a4;
  v41 = a1;
  v42 = a2;
  v46 = type metadata accessor for ControlArchiveStorage(0);
  MEMORY[0x1EEE9AC00](v46);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192225150();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *a3;
  v43 = v13;
  v44 = a5;
  v23 = *(v13 + 16);
  v23(v18, a5, v12, v20);
  v47 = v13 + 16;
  v48 = v23;
  (v23)(v15, v18, v12);
  v24 = v41;
  BundleStub.init(_:)([v41 extensionIdentity], v11);
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v22[v19[6]] = v24;
  v25 = qword_1ED74BAA0;
  sub_1920F47F0(v11, v22, type metadata accessor for BundleStub);
  v48(&v22[v19[8]], v15, v12);
  *&v22[v19[5]] = v25;
  v49 = v40;
  WidgetEnvironment.filterForControlArchiving()();
  sub_1920F4878(v11, type metadata accessor for BundleStub);
  v26 = *(v43 + 8);
  v26(v15, v12);
  v26(v18, v12);
  *&v22[v19[7]] = v49;
  *&v22[v19[9]] = v42;
  sub_1920F47F0(v22, v8, type metadata accessor for ControlArchiveStorageMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBA0, &unk_19222AF80);
  v27 = *(type metadata accessor for ControlTemplateType(0) - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_19222B480;
  v30 = v45;
  sub_1920F47F0(v45, v29 + v28, type metadata accessor for ControlTemplateType);
  v31 = sub_192140634(MEMORY[0x1E69E7CC0]);
  v26(v44, v12);
  sub_1920F4878(v30, type metadata accessor for ControlTemplateType);
  sub_1920F4878(v22, type metadata accessor for ControlArchiveStorageMetadata);
  v32 = v46;
  *&v8[*(v46 + 20)] = v29;
  *&v8[*(v32 + 28)] = 2;
  *&v8[*(v32 + 24)] = v31;
  type metadata accessor for ControlArchiveMock(0);
  v33 = swift_allocObject();
  sub_1920F47F0(v8, v33 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  *(v33 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v8[v19[5]];
  v48((v33 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate), &v8[v19[8]], v12);
  v34 = *&v8[v19[7]];
  *(v33 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v34;
  v35 = *&v8[v19[6]];
  *(v33 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v35;
  *(v33 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v8[v19[9]];
  sub_19203D0F8(v8, v33 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  v36 = v34;
  v37 = v35;

  return v33;
}

uint64_t sub_1920F251C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  result = type metadata accessor for ControlArchiveStorage(0);
  v5 = *(v3 + *(result + 20));
  if (*(v5 + 16))
  {
    v6 = *(type metadata accessor for ControlTemplateType(0) - 8);
    return sub_1920F47F0(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, type metadata accessor for ControlTemplateType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920F25D4()
{
  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  return v0;
}

double sub_1920F26F8()
{
  type metadata accessor for ControlArchiveStorage(0);

  return result;
}

double sub_1920F2740()
{
  type metadata accessor for ControlArchiveStorage(0);

  return result;
}

uint64_t sub_1920F2788@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ControlArchiveStorage(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  sub_1920F47F0(v10, &v23 - v8, type metadata accessor for ControlArchiveStorageMetadata);
  v11 = *(v10 + v4[8]);
  *&v9[v4[7]] = MEMORY[0x1E69E7CC0];
  *&v9[v4[9]] = 2;
  *&v9[v4[8]] = v11;
  sub_1920F47F0(v9, v6, type metadata accessor for ControlArchiveStorage);
  v12 = type metadata accessor for StorageBackedControlArchive(0);
  v13 = swift_allocObject();
  sub_1920F47F0(v6, v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v14 = type metadata accessor for ControlArchiveStorageMetadata(0);
  *(v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v6[v14[5]];
  v15 = v14[8];
  v16 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v17 = sub_192225150();
  (*(*(v17 - 8) + 16))(v13 + v16, &v6[v15], v17);
  v18 = *&v6[v14[7]];
  *(v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v18;
  v19 = *&v6[v14[6]];
  *(v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v19;
  *(v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v6[v14[9]];
  sub_19203D0F8(v6, v13 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  a1[3] = v12;
  a1[4] = sub_1920F47A8(&qword_1EADED5D0, type metadata accessor for StorageBackedControlArchive, &protocol conformance descriptor for StorageBackedControlArchive);
  *a1 = v13;

  v20 = v18;
  v21 = v19;

  return sub_1920F4878(v9, type metadata accessor for ControlArchiveStorage);
}

uint64_t sub_1920F2A28@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  result = type metadata accessor for ControlArchiveStorage(0);
  v5 = *(v3 + *(result + 20));
  if (*(v5 + 16))
  {
    v6 = *(type metadata accessor for ControlTemplateType(0) - 8);
    return sub_1920F47F0(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, type metadata accessor for ControlTemplateType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920F2B08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ControlArchiveStorage(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1920F47F0(v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, v7, type metadata accessor for ControlArchiveStorage);
  v8 = type metadata accessor for StateOverridenControlArchive(0);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC9WidgetKit28StateOverridenControlArchive__state) = a1;
  sub_1920F47F0(v7, v9 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v10 = type metadata accessor for ControlArchiveStorageMetadata(0);
  *(v9 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v7[v10[5]];
  v11 = v10[8];
  v12 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v13 = sub_192225150();
  (*(*(v13 - 8) + 16))(v9 + v12, &v7[v11], v13);
  v14 = *&v7[v10[7]];
  *(v9 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v14;
  v15 = *&v7[v10[6]];
  *(v9 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v15;
  *(v9 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v7[v10[9]];
  sub_19203D0F8(v7, v9 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  a2[3] = v8;
  a2[4] = sub_1920F47A8(&qword_1EADEFC18, type metadata accessor for StateOverridenControlArchive, &protocol conformance descriptor for StorageBackedControlArchive);
  *a2 = v9;

  v16 = v14;
  v17 = v15;
}

uint64_t sub_1920F2D2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ControlArchiveStorage(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  sub_1920F47F0(v12, &v25 - v10, type metadata accessor for ControlArchiveStorageMetadata);
  v13 = *(v12 + v6[8]);
  *&v11[v6[7]] = a1;
  *&v11[v6[9]] = 2;
  *&v11[v6[8]] = v13;
  sub_1920F47F0(v11, v8, type metadata accessor for ControlArchiveStorage);
  v14 = type metadata accessor for StorageBackedControlArchive(0);
  v15 = swift_allocObject();
  sub_1920F47F0(v8, v15 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v16 = type metadata accessor for ControlArchiveStorageMetadata(0);
  *(v15 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v8[v16[5]];
  v17 = v16[8];
  v18 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v19 = sub_192225150();
  (*(*(v19 - 8) + 16))(v15 + v18, &v8[v17], v19);
  v20 = *&v8[v16[7]];
  *(v15 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v20;
  v21 = *&v8[v16[6]];
  *(v15 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v21;
  *(v15 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v8[v16[9]];
  sub_19203D0F8(v8, v15 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  a2[3] = v14;
  a2[4] = sub_1920F47A8(&qword_1EADED5D0, type metadata accessor for StorageBackedControlArchive, &protocol conformance descriptor for StorageBackedControlArchive);
  *a2 = v15;

  v22 = v20;
  v23 = v21;

  return sub_1920F4878(v11, type metadata accessor for ControlArchiveStorage);
}

void *StorageBackedControlArchive.__allocating_init(from:)(void *a1)
{
  v3 = type metadata accessor for ControlArchiveStorage(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v17 = &v16 - v7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFC20, &qword_192230928);
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v16 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F4918();
  sub_192228B70();
  if (!v1)
  {
    v12 = v8;
    v13 = v16;
    sub_1920F47A8(&qword_1EADED888, type metadata accessor for ControlArchiveStorage, &unk_192238D70);
    v14 = v17;
    sub_1922287C0();
    sub_1920F47F0(v14, v5, type metadata accessor for ControlArchiveStorage);
    v11 = (*(v13 + 176))(v5);
    sub_1920F4878(v14, type metadata accessor for ControlArchiveStorage);
    (*(v12 + 8))(v10, v18);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1920F3268(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFC30, &qword_192230930);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F4918();
  sub_192228B90();
  type metadata accessor for ControlArchiveStorage(0);
  sub_1920F47A8(&qword_1EADEE130, type metadata accessor for ControlArchiveStorage, &unk_192238D48);
  sub_1922288C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1920F33E8()
{
  sub_192228AD0();
  sub_192225150();
  sub_1920F47A8(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  v1 = sub_1922281E0();
  (*(*v0 + 136))(v1);
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADEFC08, MEMORY[0x1E6994010], MEMORY[0x1E6994020]);
  sub_192227890();

  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

double StorageBackedControlArchive.systemVersion.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion);
  *a1 = result;
  return result;
}

uint64_t StorageBackedControlArchive.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v4 = sub_192225150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id StorageBackedControlArchive.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment);
  *a1 = v2;
  return v2;
}

double sub_1920F362C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t sub_1920F3694(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1920F47F0(a1, v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v3 = type metadata accessor for ControlArchiveStorageMetadata(0);
  *(v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *(a1 + v3[5]);
  v4 = v3[8];
  v5 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v6 = sub_192225150();
  (*(*(v6 - 8) + 16))(v2 + v5, a1 + v4, v6);
  v7 = *(a1 + v3[7]);
  *(v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v7;
  v8 = *(a1 + v3[6]);
  *(v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v8;
  *(v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *(a1 + v3[9]);
  sub_19203D0F8(a1, v2 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
  v9 = v7;
  v10 = v8;

  return v2;
}

uint64_t sub_1920F37E8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment;
  v27 = *(v3 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment);
  v9 = v27;
  v10 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a1, a2);
  v12 = v11;

  if (v12)
  {
    type metadata accessor for ControlError(0);
    sub_1920F47A8(&qword_1EADEFC38, type metadata accessor for ControlError, &protocol conformance descriptor for ControlError);
    swift_allocError();
    v14 = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBD8, &qword_1922308F0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 64);
    v18 = sub_1922261D0();
    (*(*(v18 - 8) + 16))(v14, a1, v18);
    v19 = *(v4 + v8);
    *(v14 + v16) = v19;
    *(v14 + v17) = a2;
    swift_storeEnumTagMultiPayload();
    v20 = v19;

    return swift_willThrow();
  }

  v21 = v4 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  result = type metadata accessor for ControlArchiveStorage(0);
  v23 = *(v21 + *(result + 20));
  if (v10 >= *(v23 + 16))
  {
    type metadata accessor for ControlError(0);
    sub_1920F47A8(&qword_1EADEFC38, type metadata accessor for ControlError, &protocol conformance descriptor for ControlError);
    swift_allocError();
    v25 = *(v23 + 16);
    *v26 = v10;
    v26[1] = v25;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = *(type metadata accessor for ControlTemplateType(0) - 8);
    return sub_1920F47F0(v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v10, a3, type metadata accessor for ControlTemplateType);
  }

  return result;
}

uint64_t sub_1920F3A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1920F3B18(uint64_t a1)
{
  v2 = sub_1920F4918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920F3B54(uint64_t a1)
{
  v2 = sub_1920F4918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s9WidgetKit18ControlArchiveMockCfD_0()
{
  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);

  return swift_deallocClassInstance();
}

double sub_1920F3CE4@<D0>(double *a1@<X8>)
{
  result = *(*v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion);
  *a1 = result;
  return result;
}

uint64_t sub_1920F3CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v5 = sub_192225150();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

id sub_1920F3D78@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment);
  *a1 = v2;
  return v2;
}

double sub_1920F3DE8()
{
  type metadata accessor for ControlArchiveStorage(0);

  return result;
}

double sub_1920F3E34()
{
  type metadata accessor for ControlArchiveStorage(0);

  return result;
}

uint64_t sub_1920F3E80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  result = type metadata accessor for ControlArchiveStorage(0);
  v5 = *(v3 + *(result + 20));
  if (*(v5 + 16))
  {
    v6 = *(type metadata accessor for ControlTemplateType(0) - 8);
    return sub_1920F47F0(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a1, type metadata accessor for ControlTemplateType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920F3FD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1920F4010(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFC30, &qword_192230930);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920F4918();
  sub_192228B90();
  type metadata accessor for ControlArchiveStorage(0);
  sub_1920F47A8(&qword_1EADEE130, type metadata accessor for ControlArchiveStorage, &unk_192238D48);
  sub_1922288C0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1920F41A4()
{
  v1 = *v0;
  sub_192228AD0();
  sub_192225150();
  sub_1920F47A8(&qword_1EADEEEC0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_192227890();
  v2 = sub_1922281E0();
  (*(*v1 + 136))(v2);
  sub_1922254F0();
  sub_1920F47A8(&qword_1EADEFC08, MEMORY[0x1E6994010], MEMORY[0x1E6994020]);
  sub_192227890();

  WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v3);
  return sub_192228B30();
}

void sub_1920F42FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  ControlArchive.hash(into:)(a1, a2, WitnessTable);
}

uint64_t sub_1920F435C(uint64_t a1, uint64_t a2)
{
  sub_192228AD0();
  WitnessTable = swift_getWitnessTable();
  ControlArchive.hash(into:)(v5, a2, WitnessTable);
  return sub_192228B30();
}

uint64_t sub_1920F43C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ControlArchive.description.getter(a1, WitnessTable);
}

uint64_t StateOverridenControlArchive.deinit()
{
  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);

  return v0;
}

uint64_t StateOverridenControlArchive.__deallocating_deinit()
{
  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
  v1 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
  v2 = sub_192225150();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1920F4878(v0 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);

  return swift_deallocClassInstance();
}

uint64_t _s9WidgetKit27StorageBackedControlArchiveC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_192225120() & 1) == 0)
  {
    return 0;
  }

  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  if ((sub_1922281D0() & 1) == 0)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  v5 = a1 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage;
  v6 = type metadata accessor for ControlArchiveStorage(0);
  if (*(*(v5 + *(v6 + 20)) + 16) != *(*(a2 + v4 + *(v6 + 20)) + 16))
  {
    return 0;
  }

  v7 = *(v6 + 24);
  v8 = *(v5 + v7);
  v9 = *(a2 + v4 + v7);

  return sub_1920C0620(v8, v9);
}

uint64_t sub_1920F47A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1920F47F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920F4878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1920F4918()
{
  result = qword_1EADEFC28;
  if (!qword_1EADEFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFC28);
  }

  return result;
}

uint64_t sub_1920F49B4(void *a1)
{
  a1[1] = sub_1920F47A8(&qword_1EADED5D8, type metadata accessor for StorageBackedControlArchive, &protocol conformance descriptor for StorageBackedControlArchive);
  a1[2] = sub_1920F47A8(&qword_1EADED5E0, type metadata accessor for StorageBackedControlArchive, &protocol conformance descriptor for StorageBackedControlArchive);
  a1[3] = sub_1920F47A8(&qword_1EADED5F8, type metadata accessor for StorageBackedControlArchive, &protocol conformance descriptor for StorageBackedControlArchive);
  result = sub_1920F47A8(&qword_1EADED5F0, type metadata accessor for StorageBackedControlArchive, &protocol conformance descriptor for StorageBackedControlArchive);
  a1[4] = result;
  return result;
}

void sub_1920F4B20(uint64_t a1)
{
  sub_1920F4B94(319);
  if (v1 <= 0x3F)
  {
    sub_1920F4C1C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1920F4B94(uint64_t a1)
{
  if (!qword_1EADEFC50)
  {
    sub_1922261D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFC58, &qword_192230AD8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EADEFC50);
    }
  }
}

void sub_1920F4C1C()
{
  if (!qword_1EADEFC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADEFC60);
    }
  }
}

uint64_t sub_1920F4DDC(uint64_t a1)
{
  result = type metadata accessor for BundleStub(319);
  if (v2 <= 0x3F)
  {
    result = sub_192225150();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ControlArchiveStorage(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1920F5188()
{
  result = qword_1EADEFC88;
  if (!qword_1EADEFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFC88);
  }

  return result;
}

unint64_t sub_1920F51E0()
{
  result = qword_1EADEFC90;
  if (!qword_1EADEFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFC90);
  }

  return result;
}

unint64_t sub_1920F5238()
{
  result = qword_1EADEFC98;
  if (!qword_1EADEFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFC98);
  }

  return result;
}

uint64_t WidgetAccentedRenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t Image.widgetAccentedRenderingMode(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  *a3 = a2;
  *(a3 + 8) = v3;
}

unint64_t sub_1920F539C()
{
  result = qword_1EADEFCA0;
  if (!qword_1EADEFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCA0);
  }

  return result;
}

unint64_t sub_1920F5400()
{
  result = qword_1ED748C88;
  if (!qword_1ED748C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFCA8, &unk_192230D90);
    sub_1920F548C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C88);
  }

  return result;
}

unint64_t sub_1920F548C()
{
  result = qword_1ED748C30;
  if (!qword_1ED748C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C30);
  }

  return result;
}

uint64_t sub_1920F54E0()
{
  v0 = sub_192225B10();
  __swift_allocate_value_buffer(v0, qword_1ED74C7B8);
  __swift_project_value_buffer(v0, qword_1ED74C7B8);
  return sub_192225B00();
}

uint64_t sub_1920F5568()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = off_1F06B72D8;
  v2 = type metadata accessor for ControlCenterClient();
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1920F5B54;

  return (v5)(v2, &off_1F06B72C0);
}

uint64_t ControlCenter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1920F577C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = off_1F06B72D8;
  v2 = type metadata accessor for ControlCenterClient();
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1920F58C0;

  return (v5)(v2, &off_1F06B72C0);
}

uint64_t sub_1920F58C0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

Swift::Void __swiftcall ControlCenter.reloadAllControls(forBundleIdentifier:)(Swift::String forBundleIdentifier)
{
  object = forBundleIdentifier._object;
  countAndFlagsBits = forBundleIdentifier._countAndFlagsBits;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_1921EAB48(countAndFlagsBits, object);
}

uint64_t dispatch thunk of ControlCenter.currentControls()()
{
  v4 = (*(*v0 + 96) + **(*v0 + 96));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1920EF2F4;

  return v4();
}

uint64_t ControlInfo.init(control:pushInfo:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;
  *(v3 + 104) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1920F5B80, 0, 0);
}

uint64_t sub_1920F5B80()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  *(v4 + 16) = xmmword_19222A790;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = [v5 kind];
  v7 = sub_192227960();
  v9 = v8;

  *v4 = v7;
  *(v4 + 8) = v9;
  v10 = sub_192046ED4(0, 0xF000000000000000);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v11 = [v5 intentReference];

  if (v11)
  {
    v12 = [v11 intent];
    v0[15] = v12;

    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 linkAction];
        v15 = v14;
        if (v14)
        {
          v14 = sub_19202A7A8(0, &qword_1EADEE500, 0x1E69AC640);
        }

        else
        {
          v0[8] = 0;
          v0[9] = 0;
        }

        v0[7] = v15;
        v0[10] = v14;
        v19 = swift_task_alloc();
        v0[16] = v19;
        *v19 = v0;
        v19[1] = sub_1920F5D90;

        return MEMORY[0x1EEDB29B0](v0 + 2, v0 + 7);
      }
    }
  }

  v16 = v0[11];
  *(v16 + 72) = 0;
  *(v16 + 56) = 0u;
  *(v16 + 40) = 0u;
  v17 = v0[1];

  return v17();
}

uint64_t sub_1920F5D90()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_1920F5F34;
  }

  else
  {
    sub_192030F04(v2 + 56);
    v3 = sub_1920F5EBC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1920F5EBC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 16);
  *(v1 + 72) = v2;
  *(v1 + 56) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1920F5F34()
{
  sub_192030F04(v0 + 56);
  v1 = *(v0 + 88);
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ControlInfo.configurationIntent<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1920D93EC(v2 + 40, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF888, &qword_19222EAB0);
  v5 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
}

uint64_t ControlInfo.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ControlInfo.pushInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_19206A874(v2, v3);
}

void ControlInfo.pushInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_192046ED4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t ControlInfo.hashValue.getter()
{
  sub_192228AD0();
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_1920F61F0@<X0>(uint64_t *a1@<X8>)
{
  sub_1922281F0();
  result = sub_192228910();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1920F6240()
{
  sub_192228AD0();
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_1920F62A8()
{
  sub_192228AD0();
  sub_1922281E0();
  return sub_192228B30();
}

unint64_t sub_1920F62F8()
{
  result = qword_1EADEFCB0;
  if (!qword_1EADEFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit15ControlPushInfoVSg(uint64_t a1)
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

uint64_t sub_1920F63C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1920F6410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1920F6474()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1920F6508(uint64_t a1)
{
  sub_1922279B0();
}

uint64_t sub_1920F6588()
{
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1920F6618(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_1920F66FC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (*a2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (*a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (v2 != 1)
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {

    v9 = 1;
  }

  else
  {
    v10 = sub_1922289A0();

    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1920F67F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {

    v9 = 1;
  }

  else
  {
    v10 = sub_1922289A0();

    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1920F68EC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1684828002;
  if (*a2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x72616C75676572;
  }

  if (*a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1684828002;
  if (v2 != 1)
  {
    v6 = 1701736302;
  }

  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x72616C75676572;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_1920F69F8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920EF2F4;

  return v7(a1, a2);
}

uint64_t sub_1920F6B10()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_192227FA0();
    v6 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v7 = sub_192049898(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t HideViewInCarPlayModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t HideViewInCarPlayModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_192227FA0();
    v10 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v11 = sub_192049898(v9, 0);
    (*(v6 + 8))(v8, v5, v11);
    LOBYTE(v9) = v15[15];
  }

  if (v9)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC8, &qword_1922311D8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCD0, &qword_1922311E0);
  *(a2 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1920F6E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1920F7488();

  return MEMORY[0x1EEDDB138](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1920F6EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1920F7488();

  return MEMORY[0x1EEDDB140](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1920F6FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1920F6B10())
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC8, &qword_1922311D8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCD0, &qword_1922311E0);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_1920F7088@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

double View.hideViewInCarPlay()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x193B0A190](&KeyPath, a1, &type metadata for HideViewInCarPlayModifier, a2);
  return sub_192049898(KeyPath, v6);
}

void *sub_1920F713C@<X0>(_BYTE *a1@<X8>)
{
  sub_1920F74DC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_1920F71F8()
{
  result = qword_1EADEFCD8;
  if (!qword_1EADEFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCD8);
  }

  return result;
}

unint64_t sub_1920F7250()
{
  result = qword_1EADEFCE0;
  if (!qword_1EADEFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCE0);
  }

  return result;
}

unint64_t sub_1920F72A8()
{
  result = qword_1EADEFCE8;
  if (!qword_1EADEFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCE8);
  }

  return result;
}

uint64_t sub_1920F72FC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1920F7344(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1920F7398()
{
  result = qword_1EADEFCF0;
  if (!qword_1EADEFCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFCD0, &qword_1922311E0);
    sub_1920F7424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCF0);
  }

  return result;
}

unint64_t sub_1920F7424()
{
  result = qword_1EADEFCF8;
  if (!qword_1EADEFCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFCC8, &qword_1922311D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFCF8);
  }

  return result;
}

unint64_t sub_1920F7488()
{
  result = qword_1EADEFD00;
  if (!qword_1EADEFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFD00);
  }

  return result;
}

unint64_t sub_1920F74DC()
{
  result = qword_1EADECD80;
  if (!qword_1EADECD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD80);
  }

  return result;
}

uint64_t sub_1920F7530@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC0, &qword_192243910);
  sub_19202A98C(a1, a5);
  sub_192228430();
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v7 = sub_192228910();
  MEMORY[0x193B0A990](v7);

  sub_192228480();
  v8 = *MEMORY[0x1E69E6B30];
  v9 = sub_1922284C0();
  return (*(*(v9 - 8) + 104))(a5, v8, v9);
}

unsigned __int8 *EnvironmentValues.widgetFamily.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_19203B36C();
  sub_1922261E0();
  v3[0] = v3[1];
  return sub_19206E384(v3, a1);
}

uint64_t EnvironmentValues.chsWidgetFamily.getter()
{
  sub_19203B36C();
  sub_1922261E0();
  v1[0] = v1[1];
  return _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(v1);
}

void *EnvironmentValues.internalWidgetFamily.getter()
{
  sub_19203B36C();

  return sub_1922261E0();
}

uint64_t (*EnvironmentValues._widgetFamily.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_19203B36C();
  sub_1922261E0();
  return sub_1920F77A4;
}

void *EnvironmentValues.levelOfDetail.getter()
{
  sub_19205337C();

  return sub_1922261E0();
}

WidgetKit::LevelOfDetail::Storage_optional __swiftcall LevelOfDetail.Storage.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t (*EnvironmentValues.levelOfDetail.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_19205337C();
  sub_1922261E0();
  return sub_1920F79E8;
}

unint64_t sub_1920F7A24()
{
  result = qword_1EADEFD10;
  if (!qword_1EADEFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFD10);
  }

  return result;
}

unint64_t sub_1920F7A88()
{
  result = qword_1EADEFD18;
  if (!qword_1EADEFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFD18);
  }

  return result;
}

uint64_t sub_1920F7ADC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for MetricsRequest(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = *a1;
  v13 = type metadata accessor for CommonActivityArchivingModifiers(0);
  v14 = *(v13 + 20);
  sub_1920F8D30(a2, &a3[v14]);
  sub_1920F864C(&a3[v14], v12);
  sub_1920F883C(&v12[*(v10 + 48)], v8);
  v15 = sub_192226600();
  LODWORD(a2) = (*(*(v15 - 8) + 48))(v8, 1, v15);
  sub_1920F88AC(v8);
  if (a2 == 1)
  {
    v16 = *a3;
    if (v16 <= 1)
    {
      if (!*a3)
      {
        v17 = type metadata accessor for ExpandedJindoActivityFontDefinition();
        v18 = &unk_1EADED3E0;
        v19 = type metadata accessor for ExpandedJindoActivityFontDefinition;
        goto LABEL_10;
      }
    }

    else if (v16 != 2 && v16 != 3)
    {
      v17 = type metadata accessor for DefaultActivityFontDefinition();
      v18 = &unk_1EADED4B0;
      v19 = type metadata accessor for DefaultActivityFontDefinition;
LABEL_10:
      v20 = v19;
      v21 = &unk_192231DBC;
      goto LABEL_11;
    }

    v17 = type metadata accessor for CompactJindoActivityFontDefinition();
    v18 = &unk_1EADED3E8;
    v19 = type metadata accessor for CompactJindoActivityFontDefinition;
    goto LABEL_10;
  }

  v17 = type metadata accessor for RectangularHomeScreenComplicationFontDefinition();
  v18 = &unk_1EADEFD80;
  v20 = type metadata accessor for RectangularHomeScreenComplicationFontDefinition;
  v21 = &unk_192242D48;
LABEL_11:
  result = sub_1920F8D94(v18, v20, v21);
  v23 = &a3[*(v13 + 24)];
  *v23 = v17;
  v23[1] = result;
  return result;
}

uint64_t sub_1920F7D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v55 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD28, &qword_192231690);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v42 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD30, &qword_192231698);
  MEMORY[0x1EEE9AC00](v53);
  v44 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v42 - v6;
  v50 = type metadata accessor for MetricsRequest(0) - 8;
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_192226600();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_192225D60();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD40, &qword_1922316A8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for CommonActivityArchivingModifiers(0);
  v16 = v2 + *(v15 + 20);
  v17 = *(v16 + 48);
  v18 = *(v9 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_192226560();
  (*(*(v20 - 8) + 104))(&v11[v18], v19, v20);
  *v11 = v17;
  *(v11 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD48, &qword_1922316B0);
  sub_192031E74(&qword_1EADEDD18, &qword_1EADEFD48, &qword_1922316B0, MEMORY[0x1E697FDF8]);
  sub_1920F8D94(&qword_1ED74B850, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD0]);
  v22 = v46;
  v21 = v47;
  sub_1922270A0();
  sub_1920F87DC(v11, MEMORY[0x1E697EAF0]);
  KeyPath = swift_getKeyPath();
  v24 = *(v15 + 24);
  v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD50, &qword_1922316E8) + 36)];
  *v25 = KeyPath;
  *(v25 + 8) = *(v45 + v24);
  v26 = swift_getKeyPath();
  v27 = *(v16 + 104);
  v28 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD58, &qword_192231718) + 36)];
  *v28 = v26;
  v28[8] = v27 < 1.2;
  v29 = swift_getKeyPath();
  v30 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD60, &qword_192231748) + 36)];
  *v30 = v29;
  v30[8] = v27 >= 1.2;
  v31 = swift_getKeyPath();
  v51 = v12;
  v32 = &v14[*(v12 + 36)];
  *v32 = v31;
  v32[8] = 0;
  v33 = v16;
  v35 = v48;
  v34 = v49;
  sub_1920F864C(v33, v49);
  sub_1920F883C(v34 + *(v50 + 48), v21);
  if ((*(v35 + 48))(v21, 1, v22) == 1)
  {
    sub_1920F88AC(v21);
    sub_19202CFFC(v14, v54, &qword_1EADEFD40, &qword_1922316A8);
    swift_storeEnumTagMultiPayload();
    sub_1920F8914();
    sub_1920F89CC();
    sub_1922266E0();
  }

  else
  {
    v36 = v43;
    (*(v35 + 32))(v43, v21, v22);
    v37 = swift_getKeyPath();
    v38 = v44;
    v39 = &v44[*(v53 + 36)];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD78, &qword_192231788);
    (*(v35 + 16))(v39 + *(v40 + 28), v36, v22);
    *v39 = v37;
    sub_19202CFFC(v14, v38, &qword_1EADEFD40, &qword_1922316A8);
    sub_19202CFFC(v38, v54, &qword_1EADEFD30, &qword_192231698);
    swift_storeEnumTagMultiPayload();
    sub_1920F8914();
    sub_1920F89CC();
    sub_1922266E0();
    sub_192033970(v38, &qword_1EADEFD30, &qword_192231698);
    (*(v35 + 8))(v36, v22);
  }

  return sub_192033970(v14, &qword_1EADEFD40, &qword_1922316A8);
}

uint64_t sub_1920F83F4(uint64_t a1)
{
  v2 = sub_192226600();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_192226190();
}

uint64_t View.applyCommonEnvironment(viewTag:metricsRequest:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MetricsRequest(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for CommonActivityArchivingModifiers(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  sub_1920F864C(a2, v10);
  sub_1920F7ADC(&v16, v10, v13);
  MEMORY[0x193B0A190](v13, a3, v11, a4);
  return sub_1920F87DC(v13, type metadata accessor for CommonActivityArchivingModifiers);
}

uint64_t type metadata accessor for CommonActivityArchivingModifiers(uint64_t a1)
{
  result = qword_1EADED3F8;
  if (!qword_1EADED3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1920F864C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920F86D8(uint64_t a1)
{
  result = type metadata accessor for MetricsRequest(319);
  if (v2 <= 0x3F)
  {
    result = sub_1920F876C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1920F876C()
{
  result = qword_1EADEDE60;
  if (!qword_1EADEDE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD20, &qword_192231638);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EADEDE60);
  }

  return result;
}

uint64_t sub_1920F87DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920F883C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920F88AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD38, &qword_1922316A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1920F8914()
{
  result = qword_1EADEDDB8;
  if (!qword_1EADEDDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD30, &qword_192231698);
    sub_1920F89CC();
    sub_192031E74(&qword_1EADEDCE0, &qword_1EADEFD78, &qword_192231788, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDB8);
  }

  return result;
}

unint64_t sub_1920F89CC()
{
  result = qword_1EADEDDC0;
  if (!qword_1EADEDDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD40, &qword_1922316A8);
    sub_1920F8AB4(&qword_1EADEDDD8, &qword_1EADEFD60, &qword_192231748, sub_1920F8A84);
    sub_19206ABD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDC0);
  }

  return result;
}

uint64_t sub_1920F8AB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_192031E74(&qword_1ED74A558, &qword_1EADEFD70, &qword_192231780, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1920F8B64()
{
  result = qword_1EADEDE10;
  if (!qword_1EADEDE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD50, &qword_1922316E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD48, &qword_1922316B0);
    sub_192225D60();
    sub_192031E74(&qword_1EADEDD18, &qword_1EADEFD48, &qword_1922316B0, MEMORY[0x1E697FDF8]);
    sub_1920F8D94(&qword_1ED74B850, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD0]);
    swift_getOpaqueTypeConformance2();
    sub_192031E74(&qword_1ED74BAD0, &qword_1EADEFD68, &qword_1922360C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE10);
  }

  return result;
}

unint64_t sub_1920F8CDC()
{
  result = qword_1EADEDDA0;
  if (!qword_1EADEDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDDA0);
  }

  return result;
}

uint64_t sub_1920F8D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920F8D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1920F8DDC()
{
  result = qword_1EADEDD58;
  if (!qword_1EADEDD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EADEFD88, &unk_1922317C0);
    sub_1920F8914();
    sub_1920F89CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD58);
  }

  return result;
}

uint64_t RelevanceConfiguration.init<A>(kind:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v41 = a8;
  v42 = a4;
  v35 = a3;
  v36 = a6;
  v43 = a5;
  v40 = a2;
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_1920FDC30(AssociatedTypeWitness, a1, v40, AssociatedTypeWitness, AssociatedConformanceWitness);
  v39 = v19;
  v40 = v18;
  v37 = v21;
  v38 = v20;
  (*(v14 + 16))(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a7);
  v22 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 2) = v36;
  *(v23 + 3) = a7;
  v25 = v41;
  *(v23 + 4) = v41;
  *(v23 + 5) = a10;
  (*(v14 + 32))(&v23[v22], &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a7);
  v26 = &v23[(v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  v27 = v43;
  *v26 = v42;
  v26[1] = v27;
  v44[0] = a7;
  v44[1] = v24;
  v44[2] = a10;
  v44[3] = v25;
  v28 = type metadata accessor for RelevanceEntryProvider(0, v44);
  WitnessTable = swift_getWitnessTable();
  v30 = swift_allocObject();
  v30[2] = v24;
  v30[3] = v28;
  v30[4] = v25;
  v30[5] = WitnessTable;
  v30[6] = sub_1920F91FC;
  v30[7] = v23;
  result = (*(v14 + 8))(v35, a7);
  v32 = v39;
  *a9 = v40;
  a9[1] = v32;
  v33 = v37;
  a9[2] = v38;
  a9[3] = v33;
  a9[4] = sub_1920FBAF0;
  a9[5] = v30;
  return result;
}

uint64_t sub_1920F90CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  (*(v15 + 32))(a8, v18, a5);
  v21[0] = a5;
  v21[1] = a4;
  v21[2] = a7;
  v21[3] = a6;
  v19 = (a8 + *(type metadata accessor for RelevanceEntryProvider(0, v21) + 52));
  *v19 = a2;
  v19[1] = a3;
}

uint64_t sub_1920F91FC@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(v1[3] - 8) + 80) + 48) & ~*(*(v1[3] - 8) + 80);
  v3 = (v1 + ((*(*(v1[3] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1920F90CC(v1 + v2, *v3, v3[1], v1[2], v1[3], v1[4], v1[5], a1);
}

void sub_1920F9288(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  (*(v4 + 16))(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a2, v6);
  v11 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v12 = swift_allocObject();
  v13 = *(a2 + 16);
  v16[0] = *(a2 + 32);
  v14 = v16[0];
  v16[1] = v13;
  *(v12 + 16) = v13;
  *(v12 + 32) = v14;
  (*(v4 + 32))(v12 + v11, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v15 = v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v8;
  *(v15 + 8) = v9;
  *(v15 + 16) = v10;
  swift_getAssociatedTypeWitness();
  nullsub_1();
}

uint64_t sub_1920F9410(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = a9;
  *(v9 + 33) = a6;
  *(v9 + 56) = a2;
  *(v9 + 64) = a3;
  *(v9 + 40) = a1;
  *(v9 + 48) = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 88) = AssociatedTypeWitness;
  v11 = sub_192228240();
  *(v9 + 96) = v11;
  *(v9 + 104) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v9 + 112) = v12;
  *(v9 + 120) = *(AssociatedTypeWitness - 8);
  *(v9 + 128) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v9 + 136) = v13;
  swift_getAssociatedConformanceWitness();
  *v13 = v9;
  v13[1] = sub_1920F95E8;

  return MEMORY[0x1EEDF3C38](v12);
}

uint64_t sub_1920F95E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1920F96E4, 0, 0);
}

uint64_t sub_1920F96E4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 40);
    (*(*(v0 + 104) + 8))(v1, *(v0 + 96));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v4, 1, 1, AssociatedTypeWitness);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v17 = *(v0 + 80);
    v8 = *(v0 + 33);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    (*(v2 + 32))(*(v0 + 128), v1, v3);
    *(v0 + 16) = v10;
    *(v0 + 24) = v9;
    *(v0 + 32) = v8;
    v16 = (*(v17 + 48) + **(v17 + 48));
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_1920F9948;
    v12 = *(v0 + 128);
    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
    v15 = *(v0 + 40);

    return v16(v15, v12, v0 + 16, v13, v14);
  }
}

uint64_t sub_1920F9948()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1920F9B4C;
  }

  else
  {
    v2 = sub_1920F9A5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1920F9A5C()
{
  v1 = v0[5];
  (*(v0[15] + 8))(v0[16], v0[11]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v1, 0, 1, AssociatedTypeWitness);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1920F9B4C()
{
  (*(v0[15] + 8))(v0[16], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1920F9BD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = sub_1920F9CDC(v2, v5, v6, v7, v8);
  v22 = v10;
  v23 = v9;
  v11 = sub_1920FA5BC(v2, v5, v6, v7, v8);
  v13 = v12;
  v14 = (v2 + *(a1 + 52));
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_1920FA7EC(v2, v5, v6, v7, v8);
  sub_1921856D8(v23, v22, v11, v13, v15, v16, v17, v18, v24);
  v19 = v24[1];
  *a2 = v24[0];
  a2[1] = v19;
  v20 = v24[3];
  a2[2] = v24[2];
  a2[3] = v20;
}

void *sub_1920F9CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for RelevanceEntryProvider(0, v18);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return &unk_1922319B0;
}

uint64_t sub_1920F9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v8[6] = v16;
  v17 = type metadata accessor for RelevanceEntryProvider(0, (v8 + 2));
  *v16 = v8;
  v16[1] = sub_1920F9F30;

  return sub_1920FA024(a1, a2, a3, v17);
}

uint64_t sub_1920F9F30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1920FA024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for TimelineProviderContext(0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1920FA0BC, 0, 0);
}

uint64_t sub_1920FA0BC()
{
  v15 = v0;
  v1 = v0[7];
  v2 = v0[5];
  sub_192087350(v0[4], v1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 56);
  sub_1920FB69C(v1);
  v13[0] = v3;
  v13[1] = v4;
  v14 = v5;
  sub_1920F9288(v13, v2);
  v7 = v6;
  v0[8] = v8;
  v9 = swift_task_alloc();
  v0[9] = v9;
  v0[10] = swift_getAssociatedTypeWitness();
  *v9 = v0;
  v9[1] = sub_1920FA1D8;
  v10 = v0[2];
  v11 = v0[3];

  return sub_1920C9A70(v10, v11, v7);
}

uint64_t sub_1920FA1D8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1920FA31C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1920FA31C()
{
  v25 = v0;

  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[3];
  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1ED74CCC8);
  v4 = v2;
  v5 = v1;
  v6 = sub_192225890();
  v7 = sub_192227F90();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136380931;
    v14 = [v10 intent];
    v15 = [v14 description];

    v16 = sub_192227960();
    v18 = v17;

    v19 = sub_19202B8CC(v16, v18, &v24);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2114;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v21;
    *v12 = v21;
    _os_log_impl(&dword_192028000, v6, v7, "Unable to fetch entries for intent %{private}s with error: %{public}@", v11, 0x16u);
    sub_1920FB918(v12);
    MEMORY[0x193B0C7F0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x193B0C7F0](v13, -1, -1);
    MEMORY[0x193B0C7F0](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0[10] - 8) + 56))(v0[2], 1, 1);

  v22 = v0[1];

  return v22();
}

uint64_t (*sub_1920FA5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for RelevanceEntryProvider(0, v18);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return sub_1920FB5E4;
}

uint64_t sub_1920FA718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineProviderContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192087350(a1, v6);
  v7 = *(v6 + 8);
  v8 = *(v6 + 9);
  LOBYTE(a1) = v6[56];
  sub_1920FB69C(v6);
  v11[0] = v7;
  v11[1] = v8;
  v12 = a1;
  return (*(*(a2 + 32) + 56))(v11, *(a2 + 16));
}

void *sub_1920FA7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  v10 = type metadata accessor for RelevanceEntryProvider(0, v18);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  (*(v11 + 32))(&v16[v15], v14, v10);
  return &unk_1922319A0;
}

uint64_t sub_1920FA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = v10;
  v11 = type metadata accessor for RelevanceEntryProvider(0, (v5 + 2));
  WitnessTable = swift_getWitnessTable();
  *v10 = v5;
  v10[1] = sub_1920FAA3C;

  return sub_1922216C0(v11, WitnessTable);
}

uint64_t sub_1920FAA3C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

double sub_1920FAB38@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1920F9BD8(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1920FAB78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  v8 = (*(v4 + 40) + **(v4 + 40));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1920A59A8;

  return v8(a1, v5, v4);
}

uint64_t sub_1920FACA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920B3B44;

  return sub_1920FAB78(a1, a2);
}

WidgetKit::RelevanceEntriesProviderContext __swiftcall RelevanceEntriesProviderContext.init(displaySize:isPreview:)(CGSize displaySize, Swift::Bool isPreview)
{
  *v2 = displaySize.width;
  *(v2 + 8) = displaySize.height;
  *(v2 + 16) = isPreview;
  result.displaySize.height = displaySize.height;
  result.displaySize.width = displaySize.width;
  result.isPreview = isPreview;
  return result;
}

uint64_t sub_1920FADAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t dispatch thunk of RelevanceEntriesProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return v9(a1, a2, a3);
}