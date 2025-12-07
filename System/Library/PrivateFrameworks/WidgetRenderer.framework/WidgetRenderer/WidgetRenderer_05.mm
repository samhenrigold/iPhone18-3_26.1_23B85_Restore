uint64_t sub_1DADE9A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DADE9A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADE9AFC(uint64_t a1)
{
  v2 = type metadata accessor for ActivityView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DADE9B58(uint64_t a1)
{
  sub_1DAD8D644();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DADE9C04(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v12 > 0x7FFFFFFE)
  {
    v25 = (a1 + v9 + 16) & ~v9;
    if (v5 == v13)
    {
      return (*(v4 + 48))(v25);
    }

    else
    {
      return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if ((v24 + 1) >= 2)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }
}

unsigned int *sub_1DADE9DFC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if (v12 > 0x7FFFFFFE)
        {
          v23 = (result + v8 + 16) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *result = 0;
          *(result + 1) = 0;
          *result = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(result + 1) = a2;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

double sub_1DADEA10C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 217) = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1DADEA164()
{
  result = qword_1ECC085A0;
  if (!qword_1ECC085A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08590, &qword_1DAED6968);
    sub_1DADEA244(&qword_1ECC085A8, &qword_1ECC085B0, &qword_1DAED6978, sub_1DADEA214);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC085A0);
  }

  return result;
}

uint64_t sub_1DADEA244(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1DADEA2C8()
{
  result = qword_1ECC085C8;
  if (!qword_1ECC085C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC085D0, &qword_1DAED6988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC085C8);
  }

  return result;
}

void sub_1DADEA34C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1DADEA380(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DAED247C())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E127E1F0](v6, a3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t InProcessActivityInstanceBase.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity;
  v4 = sub_1DAECE83C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DADEA51C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v38 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v37 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  v41 = v0;
  v35 = sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  v36 = v6;
  sub_1DAECDEFC();

  v7 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  result = swift_beginAccess();
  v39 = v0;
  v9 = *(v0 + v7);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
      goto LABEL_17;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v12 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;

    v32 = v12;
    swift_beginAccess();
    if (v11)
    {
      v13 = 0;
      v31 = v9 & 0xC000000000000001;
      v30 = v9;
      v29 = v10;
      v28 = v11;
      v14 = v34;
      do
      {
        if (v31)
        {
          v15 = MEMORY[0x1E127E1F0](v13, v9);
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_13:
            __break(1u);
          }
        }

        else
        {
          if (v13 >= *(v10 + 16))
          {
            __break(1u);
LABEL_17:
            v11 = sub_1DAED247C();
            goto LABEL_4;
          }

          v15 = *(v9 + 8 * v13 + 32);

          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_13;
          }
        }

        swift_getKeyPath();
        v17 = v39;
        v40 = v39;
        sub_1DAECDEFC();

        v18 = v33;
        sub_1DADEAD64(v17 + v32, v33);
        v19 = v37;
        sub_1DAD6495C(&v18[*(v37 + 24)], v14, &qword_1ECC08370, &unk_1DAED6580);
        v20 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
        swift_beginAccess();
        v21 = v38;
        sub_1DAD6495C(v15 + v20, v38, &qword_1ECC08370, &unk_1DAED6580);
        swift_beginAccess();

        sub_1DADE9908(v14, v15 + v20);
        swift_endAccess();
        sub_1DAE62CC4(v21);
        sub_1DAD64398(v21, &qword_1ECC08370, &unk_1DAED6580);
        sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
        v22 = *(v19 + 28);
        v23 = v28;
        sub_1DAD6495C(&v18[v22], v14, &qword_1ECC08370, &unk_1DAED6580);
        v24 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme;
        swift_beginAccess();
        sub_1DAD6495C(v15 + v24, v21, &qword_1ECC08370, &unk_1DAED6580);
        swift_beginAccess();
        sub_1DADE9908(v14, v15 + v24);
        swift_endAccess();
        sub_1DAE62CD8(v21);
        v25 = v21;
        v10 = v29;
        sub_1DAD64398(v25, &qword_1ECC08370, &unk_1DAED6580);
        sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
        v26 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment);
        *(v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = *v18;
        sub_1DAE631A8(v26);
        v27 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance);
        *(v15 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = v18[1];
        sub_1DAE64238(v27);
        v9 = v30;

        sub_1DADEAF80(v18);
        ++v13;
      }

      while (v16 != v23);
    }
  }

  return result;
}

uint64_t (*sub_1DADEA9C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DADEAA2C;
}

uint64_t sub_1DADEAA2C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1DADEA51C();
  }

  return result;
}

uint64_t sub_1DADEAA60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
  swift_beginAccess();
  return sub_1DADEAD64(v3 + v4, a2);
}

uint64_t sub_1DADEAB28(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DADEAD64(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEEC();

  return sub_1DADEAF80(v6);
}

uint64_t sub_1DADEAC50@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
  swift_beginAccess();
  return sub_1DADEAD64(v5 + v3, a1);
}

uint64_t type metadata accessor for InProcessActivityInstanceBase(uint64_t a1)
{
  result = qword_1ECC08668;
  if (!qword_1ECC08668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADEAD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADEADC8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEEC();

  return sub_1DADEAF80(a1);
}

uint64_t sub_1DADEAE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DADEAD64(a2, v6);
  v7 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
  swift_beginAccess();
  sub_1DADF41F8(v6, a1 + v7);
  swift_endAccess();
  sub_1DADEA51C();
  return sub_1DADEAF80(v6);
}

uint64_t sub_1DADEAF80(uint64_t a1)
{
  v2 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1DADEAFDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1DAECDF1C();

  v4[7] = sub_1DADEA9C8(v4);
  return sub_1DADEB114;
}

void sub_1DADEB120(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v8 = (v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
  if (*(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16))
  {
    if (a3)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((a3 & 1) != 0 || (*v8 == *&a1 ? (v9 = v8[1] == *&a2) : (v9 = 0), !v9))
  {
LABEL_9:

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446466;
      swift_getKeyPath();
      sub_1DAECDEFC();

      v14 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v15 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v16 = sub_1DAD6482C(v14, v15, &v20);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      swift_getKeyPath();
      sub_1DAECDEFC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08680, &qword_1DAED6CC0);
      v17 = sub_1DAED1D4C();
      v19 = sub_1DAD6482C(v17, v18, &v20);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] Content size changed to: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }
  }
}

__n128 sub_1DADEB3D4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16);
  result = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1DADEB4C4()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  return *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
}

double sub_1DADEB574(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  v8 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
  v9 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 8);
  v10 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16);
  if (v10 & 1) != 0 || (a3)
  {
    if (!*(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16) || (a3 & 1) == 0)
    {
LABEL_13:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
      sub_1DAECDEEC();

      return result;
    }
  }

  else if (*&v8 != *&a1 || *&v9 != *&a2)
  {
    goto LABEL_13;
  }

  *v7 = *&a1;
  *(v7 + 8) = *&a2;
  *(v7 + 16) = a3 & 1;

  sub_1DADEB120(v8, v9, v10);
  return result;
}

void sub_1DADEB788(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v7 = v4;
  swift_getKeyPath();
  v21 = v4;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  if (*(v4 + *a3))
  {
    if (a1)
    {

      v9 = sub_1DAED05FC();

      if (v9)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v10 = sub_1DAECEDCC();
  v11 = sub_1DAED203C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v12 = 136446466;
    swift_getKeyPath();
    format = a4;
    sub_1DAECDEFC();

    v13 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
    v14 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

    v15 = sub_1DAD6482C(v13, v14, &v21);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    swift_getKeyPath();
    sub_1DAECDEFC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08678, &qword_1DAED6CB8);
    v16 = sub_1DAED1D4C();
    v18 = sub_1DAD6482C(v16, v17, &v21);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1DAD61000, v10, v11, format, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v20, -1, -1);
    MEMORY[0x1E127F100](v12, -1, -1);
  }
}

uint64_t sub_1DADEBA4C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *a4 = *(v6 + *a3);
}

uint64_t sub_1DADEBB44(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();
}

double sub_1DADEBC4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5, ...)
{
  v10 = *a2;
  if (!*(v5 + *a2))
  {
    if (!a1)
    {
      v12 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v11 = sub_1DAED05FC();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(v5 + v10);
LABEL_8:
  *(v5 + v10) = a1;

  sub_1DADEB788(v12, a3, a2, a5);

  return result;
}

uint64_t sub_1DADEBE58()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  swift_beginAccess();
}

uint64_t sub_1DADEBF18(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_1DADEBF88(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1DAECDF1C();

  v4[7] = sub_1DADEBDF4(v4);
  return sub_1DADEC0C0;
}

void sub_1DADEC0CC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1DAECDF0C();

  free(v3);
}

void *sub_1DADEC160()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
  v2 = v1;
  return v1;
}

id sub_1DADEC210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
  *a2 = v4;

  return v4;
}

void sub_1DADEC2D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion;
  v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1DAECE70C();
  v6 = v5;
  v7 = a1;
  v8 = sub_1DAED228C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1DADEC46C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADEC584()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);

  return v1;
}

uint64_t sub_1DADEC640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  a2[1] = v4;
}

uint64_t sub_1DADEC6F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier) == a1 && *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8) == a2;
  if (v6 || (sub_1DAED289C() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADEC864()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();
}

uint64_t sub_1DADEC910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags);
}

uint64_t sub_1DADEC9C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags;

  v6 = sub_1DADF3510(v4, a1, v5);

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADECB84(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  swift_beginAccess();
}

uint64_t sub_1DADECC3C@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_1DADECD44(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADECE94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_1DADECF00()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();
}

uint64_t sub_1DADECFAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher);
}

double sub_1DADED060(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }

  return result;
}

void sub_1DADED19C(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *a4 = *(v6 + *a3);
}

double sub_1DADED250(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = a1 & 1;
    swift_getKeyPath();
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEFC();

    swift_getKeyPath();

    sub_1DAECDEFC();

    sub_1DAECEE6C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }

  return result;
}

double sub_1DADED444(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = a2;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  swift_getKeyPath();

  sub_1DAECDEFC();

  sub_1DAECEE6C();

  return result;
}

void sub_1DADED568(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  swift_getKeyPath();
  v10 = v1;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) & 1) == 0)
  {

    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED203C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      swift_getKeyPath();
      sub_1DAECDEFC();

      v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v8 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v9 = sub_1DAD6482C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Activate", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E127F100](v6, -1, -1);
      MEMORY[0x1E127F100](v5, -1, -1);
    }

    sub_1DADEF0CC();
  }
}

void sub_1DADED760(uint64_t a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  swift_getKeyPath();
  v39[0] = v1;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated;
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) & 1) == 0)
  {
    sub_1DADED250(0);
    if (*(v1 + v3) == 1)
    {
      *(v1 + v3) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v39[0] = v1;
      sub_1DAECDEEC();
    }

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED203C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v39[0] = v8;
      *v7 = 136446210;
      swift_getKeyPath();
      sub_1DAECDEFC();

      v9 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v11 = sub_1DAD6482C(v9, v10, v39);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] Invalidate", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    v12 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
    swift_beginAccess();
    v13 = *(v2 + v12);
    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
      goto LABEL_47;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
    {

      if (i)
      {
        v16 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E127E1F0](v16, v13);
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v16 >= *(v14 + 16))
            {
              goto LABEL_46;
            }

            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_19:
              __break(1u);
              break;
            }
          }

          sub_1DAE67BAC();

          ++v16;
        }

        while (v17 != i);
      }

LABEL_21:
      v19 = sub_1DADEBDF4(v39);
      if (*v18)
      {
        *v18 = MEMORY[0x1E69E7CC0];
      }

      (v19)(v39, 0);
      *(v2 + v12) = 0;

      swift_getKeyPath();
      v39[0] = v2;
      sub_1DAECDEFC();

      v20 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables;
      swift_beginAccess();
      v37 = v20;
      v13 = *(v2 + v20);
      if ((v13 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_1DAED242C();
        sub_1DAECEE3C();
        sub_1DADF3094(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
        sub_1DAED1F9C();
        v22 = v39[0];
        v21 = v39[1];
        v23 = v39[2];
        v14 = v39[3];
        v12 = v39[4];
      }

      else
      {
        v24 = -1 << *(v13 + 32);
        v21 = v13 + 56;
        v23 = ~v24;
        v25 = -v24;
        v26 = v25 < 64 ? ~(-1 << v25) : -1;
        v12 = v26 & *(v13 + 56);
        swift_bridgeObjectRetain_n();
        v14 = 0;
        v22 = v13;
      }

      v27 = (v23 + 64) >> 6;
      if (v22 < 0)
      {
        break;
      }

LABEL_30:
      v28 = v14;
      v29 = v12;
      v30 = v14;
      if (v12)
      {
LABEL_34:
        v31 = (v29 - 1) & v29;
        v32 = *(*(v22 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));

        if (v32)
        {
          goto LABEL_38;
        }

        goto LABEL_40;
      }

      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v30 >= v27)
        {
          goto LABEL_40;
        }

        v29 = *(v21 + 8 * v30);
        ++v28;
        if (v29)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }

    while (sub_1DAED24BC())
    {
      sub_1DAECEE3C();
      swift_dynamicCast();
      v30 = v14;
      v31 = v12;
      if (!v38)
      {
        break;
      }

LABEL_38:
      sub_1DAECEE2C();

      v14 = v30;
      v12 = v31;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }
    }

LABEL_40:
    sub_1DAD70B20(v22);

    swift_getKeyPath();
    sub_1DAECDEFC();

    swift_getKeyPath();
    sub_1DAECDF1C();

    *(v2 + v37) = MEMORY[0x1E69E7CD0];

    swift_getKeyPath();
    sub_1DAECDF0C();

    swift_getKeyPath();
    sub_1DAECDEFC();

    v33 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion;
    v34 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
    if (v34 && (v35 = v34, sub_1DAECE6EC(), v35, *(v2 + v33)))
    {
      v36 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v36);
      sub_1DAECDEEC();
    }

    else
    {
      *(v2 + v33) = 0;
    }
  }
}

void sub_1DADEDEC8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  BSDispatchQueueAssertMain();
  swift_getKeyPath();
  v48 = v2;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) & 1) == 0)
  {
    swift_getKeyPath();
    v48 = v2;
    sub_1DAECDEFC();

    v6 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters;
    swift_beginAccess();
    v44 = *(*(v2 + v6) + 16);
    swift_getKeyPath();

    sub_1DAECDEFC();

    swift_getKeyPath();
    sub_1DAECDF1C();

    swift_beginAccess();
    sub_1DAE87D3C(v47, a1, a2);
    swift_endAccess();

    v46[0] = v2;
    swift_getKeyPath();
    sub_1DAECDF0C();

    swift_retain_n();

    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v9 = 136446722;
      swift_getKeyPath();
      v40 = a1;
      v47[0] = v2;
      sub_1DAECDEFC();

      v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v11 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v12 = sub_1DAD6482C(v10, v11, v46);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2050;
      swift_getKeyPath();
      v47[0] = v3;
      sub_1DAECDEFC();

      v13 = *(*(v3 + v6) + 16);

      *(v9 + 14) = v13;

      *(v9 + 22) = 2082;
      *(v9 + 24) = sub_1DAD6482C(v40, a2, v46);
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Increment foreground count to: %{public}ld for viewID: %{public}s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v41, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);

      if (v44)
      {
        return;
      }
    }

    else
    {

      if (v44)
      {
        return;
      }
    }

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v46[0] = v17;
      *v16 = 136446210;
      swift_getKeyPath();
      v47[0] = v3;
      sub_1DAECDEFC();

      v18 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v19 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v20 = sub_1DAD6482C(v18, v19, v46);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1DAD61000, v14, v15, "[%{public}s] Forground", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E127F100](v17, -1, -1);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    swift_getKeyPath();
    v46[0] = v3;
    sub_1DAECDEFC();

    v21 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
    swift_beginAccess();
    v22 = *(v3 + v21);
    if (v22)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFF8;
      if (v22 >> 62)
      {
        goto LABEL_30;
      }

      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

      if (v24)
      {
        v25 = 0;
        v45 = v22 & 0xC000000000000001;
        v42 = v22;
        v43 = v24;
        do
        {
          if (v45)
          {
            v26 = MEMORY[0x1E127E1F0](v25, v22);
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
LABEL_25:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v25 >= *(v23 + 16))
            {
              __break(1u);
LABEL_30:
              v24 = sub_1DAED247C();
              goto LABEL_11;
            }

            v26 = *(v22 + 8 * v25 + 32);

            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_25;
            }
          }

          v28 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
          v29 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
          *(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 1;
          BSDispatchQueueAssertMain();
          if (v29 != *(v26 + v28))
          {

            v30 = sub_1DAECEDCC();
            v31 = sub_1DAED203C();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = v23;
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v47[0] = v34;
              *v33 = 136446466;
              *(v33 + 4) = sub_1DAD6482C(*(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), v47);
              *(v33 + 12) = 1026;
              *(v33 + 14) = *(v26 + v28);

              _os_log_impl(&dword_1DAD61000, v30, v31, "[%{public}s] isForeground changed (%{BOOL,public}d)", v33, 0x12u);
              __swift_destroy_boxed_opaque_existential_1Tm(v34);
              MEMORY[0x1E127F100](v34, -1, -1);
              v35 = v33;
              v23 = v32;
              v22 = v42;
              MEMORY[0x1E127F100](v35, -1, -1);
            }

            else
            {
            }

            v24 = v43;
            if (*(v26 + v28) == 1)
            {
              sub_1DAE69B6C(1);
            }
          }

          ++v25;
        }

        while (v27 != v24);
      }
    }

    v47[0] = 91;
    v47[1] = 0xE100000000000000;
    swift_getKeyPath();
    sub_1DAECDEFC();

    v36 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
    v37 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

    MEMORY[0x1E127DA50](v36, v37);

    MEMORY[0x1E127DA50](0x726765726F46205DLL, 0xEC000000646E756FLL);
    sub_1DAECDE3C();
    swift_allocObject();
    swift_weakInit();
    v38 = objc_allocWithZone(sub_1DAECE70C());
    v39 = sub_1DAECE6FC();
    sub_1DADEC2D0(v39);
  }
}

double sub_1DADEE768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
      sub_1DAECDEEC();
    }
  }

  return result;
}

void sub_1DADEE8A8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  BSDispatchQueueAssertMain();
  swift_getKeyPath();
  v46[0] = v2;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1DAECDEFC();

    swift_getKeyPath();
    sub_1DAECDF1C();

    v6 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters;
    swift_beginAccess();
    sub_1DAEC4F74(a1, a2);
    swift_endAccess();

    v46[0] = v2;
    swift_getKeyPath();
    sub_1DAECDF0C();

    swift_retain_n();

    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v43 = a1;
      v10 = swift_slowAlloc();
      v46[0] = v10;
      *v9 = 136446722;
      swift_getKeyPath();
      v45 = v2;
      sub_1DAECDEFC();

      v11 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v12 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v13 = sub_1DAD6482C(v11, v12, v46);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2050;
      swift_getKeyPath();
      v45 = v3;
      sub_1DAECDEFC();

      v14 = *(*(v3 + v6) + 16);

      *(v9 + 14) = v14;

      *(v9 + 22) = 2082;
      *(v9 + 24) = sub_1DAD6482C(v43, a2, v46);
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Decrement foreground count to: %{public}ld for viewID: %{public}s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    else
    {
    }

    swift_getKeyPath();
    v46[0] = v3;
    sub_1DAECDEFC();

    if (!*(*(v3 + v6) + 16))
    {

      v15 = sub_1DAECEDCC();
      v16 = sub_1DAED203C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v46[0] = v18;
        *v17 = 136446210;
        swift_getKeyPath();
        v45 = v3;
        sub_1DAECDEFC();

        v19 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
        v20 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

        v21 = sub_1DAD6482C(v19, v20, v46);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] Background", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1E127F100](v18, -1, -1);
        MEMORY[0x1E127F100](v17, -1, -1);
      }

      swift_getKeyPath();
      v46[0] = v3;
      sub_1DAECDEFC();

      v22 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
      swift_beginAccess();
      v23 = *(v3 + v22);
      if (v23)
      {
        v24 = v23 & 0xFFFFFFFFFFFFFF8;
        v41 = v3;
        if (v23 >> 62)
        {
          goto LABEL_33;
        }

        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

        if (v25)
        {
          v26 = 0;
          v44 = v23 & 0xC000000000000001;
          v42 = v23;
          do
          {
            if (v44)
            {
              v27 = MEMORY[0x1E127E1F0](v26, v23);
              v28 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
LABEL_25:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v26 >= *(v24 + 16))
              {
                __break(1u);
LABEL_33:
                v25 = sub_1DAED247C();
                goto LABEL_11;
              }

              v27 = *(v23 + 8 * v26 + 32);

              v28 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_25;
              }
            }

            v29 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
            v30 = *(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
            *(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 0;
            BSDispatchQueueAssertMain();
            if (v30 != *(v27 + v29))
            {

              v31 = sub_1DAECEDCC();
              v32 = sub_1DAED203C();
              if (os_log_type_enabled(v31, v32))
              {
                v33 = v24;
                v34 = swift_slowAlloc();
                v35 = swift_slowAlloc();
                v45 = v35;
                *v34 = 136446466;
                *(v34 + 4) = sub_1DAD6482C(*(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v45);
                *(v34 + 12) = 1026;
                *(v34 + 14) = *(v27 + v29);

                _os_log_impl(&dword_1DAD61000, v31, v32, "[%{public}s] isForeground changed (%{BOOL,public}d)", v34, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v35);
                MEMORY[0x1E127F100](v35, -1, -1);
                v36 = v34;
                v24 = v33;
                v23 = v42;
                MEMORY[0x1E127F100](v36, -1, -1);
              }

              else
              {
              }

              if (*(v27 + v29) == 1)
              {
                sub_1DAE69B6C(1);
              }
            }

            ++v26;
          }

          while (v28 != v25);
        }

        v3 = v41;
      }

      swift_getKeyPath();
      v45 = v3;
      sub_1DAECDEFC();

      v37 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion;
      v38 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
      if (v38 && (v39 = v38, sub_1DAECE6EC(), v39, *(v3 + v37)))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v45 = v3;
        sub_1DAECDEEC();
      }

      else
      {
        *(v3 + v37) = 0;
      }
    }
  }
}

uint64_t sub_1DADEF0CC()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v203 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v161 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v160 = &v157 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v202 = &v157 - v9;
  v201 = sub_1DAED22EC();
  v223 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v200 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D10, &qword_1DAED57C0);
  v222 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v198 = &v157 - v11;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D18, &qword_1DAED57C8);
  v230 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v196 = &v157 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v235 = &v157 - v14;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08690, &qword_1DAED6CD8);
  v229 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v157 - v15;
  v193 = sub_1DAED17AC();
  v228 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v192 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A150, &unk_1DAED6CE0);
  MEMORY[0x1EEE9AC00](v191);
  v190 = &v157 - v17;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v227 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v188 = &v157 - v18;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A160, &qword_1DAED6CF0);
  v226 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = &v157 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v185 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v245 = &v157 - v23;
  v234 = sub_1DAECDE4C();
  v225 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v244 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1DAECEDEC();
  v224 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v242 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DAED182C();
  v247 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v184 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v241 = &v157 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v212 = &v157 - v31;
  v237 = sub_1DAED1ABC();
  v206 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v240 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v205 = &v157 - v34;
  v35 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  swift_beginAccess();
  *(v1 + v35) = MEMORY[0x1E69E7CC0];

  sub_1DADED250(0);
  v36 = v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger;

  v183 = v36;
  v37 = sub_1DAECEDCC();
  v38 = sub_1DAED203C();

  v39 = os_log_type_enabled(v37, v38);
  v248 = v1;
  v246 = v26;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v253 = v41;
    *v40 = 136446210;
    swift_getKeyPath();
    v265[0] = v248;
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
    sub_1DAECDEFC();

    v42 = *(v248 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
    v43 = *(v248 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

    v44 = sub_1DAD6482C(v42, v43, &v253);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1DAD61000, v37, v38, "[%{public}s] Create view models", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E127F100](v41, -1, -1);
    MEMORY[0x1E127F100](v40, -1, -1);
  }

  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v45 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v45 + 56, &v253, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v255)
  {
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(&v253, v255);

  sub_1DAECE6BC();

  __swift_destroy_boxed_opaque_existential_1Tm(&v253);
  v47 = qword_1EE011BD8;
  sub_1DAD648F8(qword_1EE011BD8 + 144, v264);
  sub_1DAD648F8(v47 + 104, v263);
  swift_beginAccess();
  result = sub_1DAD6495C(v47 + 56, &v253, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v255)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v204 = *(*__swift_project_boxed_opaque_existential_1(&v253, v255) + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v253);
  v48 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v48 + 56, &v253, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v255)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v49 = __swift_project_boxed_opaque_existential_1(&v253, v255);
  sub_1DAD648F8(*v49 + 32, v262);
  __swift_destroy_boxed_opaque_existential_1Tm(&v253);
  v50 = v248;
  v51 = *(v248 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest);
  sub_1DAEBB27C(v51, v205);
  swift_getKeyPath();
  v52 = v50 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  v253 = v50;
  v53 = sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v54 = *(v50 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags);
  v55 = *(v54 + 16);
  if (v55)
  {
    v232 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v56 = objc_opt_self();
    v181 = (v248 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
    v182 = v56;
    v180 = v248 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity;
    v57 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
    v159 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables;
    v58 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters;
    v59 = v247;
    v236 = v54 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
    v157 = v54;

    v179 = v57;
    swift_beginAccess();
    v178 = v58;
    swift_beginAccess();
    v60 = v236;
    v61 = 0;
    v62 = *(v59 + 16);
    v59 += 16;
    v239 = v62;
    v231 = (v224 + 16);
    v176 = (v228 + 56);
    v177 = (v206 + 2);
    v174 = (v227 + 32);
    v175 = (v226 + 4);
    v173 = *MEMORY[0x1E6994040];
    v172 = (v225 + 2);
    v171 = (v228 + 48);
    v211 = (v228 + 32);
    v169 = (v223 + 8);
    v170 = (v229 + 8);
    v167 = v230 + 1;
    v168 = (v222 + 8);
    ++v206;
    v165 = (v224 + 8);
    v166 = (v225 + 1);
    v164 = (v59 + 72);
    v163 = *MEMORY[0x1E6985910];
    v158 = *MEMORY[0x1E697DBA8];
    v247 = v59;
    v162 = *(v59 + 56);
    v63 = v212;
    v238 = v52;
    v233 = v53;
    v230 = (v59 - 8);
    do
    {
      LODWORD(v227) = v61;
      v228 = v55;
      v236 = v60;
      v65 = v239;
      (v239)(v63);
      v222 = *v231;
      (v222)(v242, v183, v243);
      swift_getKeyPath();
      v253 = v248;
      sub_1DAECDEFC();

      v66 = v181[1];
      v253 = *v181;
      v254 = v66;

      MEMORY[0x1E127DA50](14906, 0xE200000000000000);
      sub_1DADF3094(&qword_1EE0056D8, MEMORY[0x1E6985920], MEMORY[0x1E6985930]);
      v67 = sub_1DAED287C();
      MEMORY[0x1E127DA50](v67);

      v220 = v254;
      v221 = v253;
      sub_1DAD648F8(v265, v261);
      sub_1DAD648F8(v264, v260);
      sub_1DAD648F8(v263, v259);
      sub_1DAD648F8(v262, v258);
      v68 = v204;
      sub_1DAECE81C();
      v65(v241, v63, v246);
      v69 = *v177;
      v70 = v237;
      (*v177)(v240, v205, v237);
      v71 = v193;
      (*v176)(v245, 1, 1, v193);
      v72 = __swift_mutable_project_boxed_opaque_existential_1(v258, v258[3]);
      v226 = &v157;
      v73 = MEMORY[0x1EEE9AC00](v72);
      v75 = (&v157 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v76 + 16))(v75, v73);
      v77 = *v75;
      v224 = type metadata accessor for ActivityRendererClient(0);
      v255 = v224;
      v78 = sub_1DADF3094(&qword_1EE008C88, type metadata accessor for ActivityRendererClient, &unk_1DAEDD730);
      v257 = &off_1F56B4928;
      v223 = v78;
      v256 = v78;
      v253 = v68;
      v79 = type metadata accessor for _DefaultActivityRendererSessionFactory();
      v252[4] = &off_1F56B36D8;
      v252[3] = v79;
      v252[0] = v77;
      type metadata accessor for ActivityViewModel(0);
      v80 = swift_allocObject();
      v81 = __swift_mutable_project_boxed_opaque_existential_1(v252, v79);
      v225 = &v157;
      v82 = MEMORY[0x1EEE9AC00](v81);
      v84 = (&v157 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v85 + 16))(v84, v82);
      v86 = *v84;
      v251[4] = &off_1F56B36D8;
      v251[3] = v79;
      v251[0] = v86;
      v87 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel___pendingInteractionSequenceNumber;
      v249 = 0;
      v229 = v68;
      v88 = v186;
      sub_1DAECEEFC();
      (*v175)(v80 + v87, v88, v187);
      v89 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseContentTouchedDown;
      LOBYTE(v249) = 0;
      v90 = v188;
      sub_1DAECEEFC();
      (*v174)(v80 + v89, v90, v189);
      v91 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView;
      sub_1DAECF10C();
      sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0, MEMORY[0x1E697BF38]);
      *(v80 + v91) = sub_1DAED087C();
      v92 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
      v93 = sub_1DAED1B8C();
      (*(*(v93 - 8) + 56))(v80 + v92, 1, 1, v93);
      v94 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
      v95 = sub_1DAECF0AC();
      v207 = *(v95 - 8);
      v96 = v207 + 56;
      v97 = *(v207 + 56);
      v97(v80 + v94, 1, 1, v95);
      v97(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme, 1, 1, v95);
      v209 = v96;
      v210 = v95;
      v208 = v97;
      v97(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme, 1, 1, v95);
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = 0;
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = 0;
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = 0;
      v98 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
      v99 = sub_1DAECE21C();
      (*(*(v99 - 8) + 104))(v80 + v98, v173, v99);
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 0;
      sub_1DAECF8DC();
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 0;
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = 0;
      v100 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
      v101 = sub_1DAECDCEC();
      (*(*(v101 - 8) + 56))(v80 + v100, 1, 1, v101);
      v102 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
      v103 = sub_1DAECDBFC();
      (*(*(v103 - 8) + 56))(v80 + v102, 1, 1, v103);
      v104 = (v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
      *v104 = 0;
      v104[1] = 0;
      v105 = (v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
      *v105 = 0;
      v105[1] = 0;
      v106 = v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
      *v106 = 0u;
      *(v106 + 16) = 0u;
      *(v106 + 32) = 0;
      v107 = v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
      *(v107 + 32) = 0;
      *v107 = 0u;
      *(v107 + 16) = 0u;
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__cancellable) = MEMORY[0x1E69E7CD0];
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__hasLoadedViewOnce) = 0;
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = 0;
      v108 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed;
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed) = 0;
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver) = 0;
      (v222)(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v242, v243);
      v109 = (v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
      v110 = v220;
      *v109 = v221;
      v109[1] = v110;
      sub_1DAD648F8(v261, v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseEnvironmentProvider);
      sub_1DAD648F8(v251, v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory);
      sub_1DADF410C(&v253, v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider);
      sub_1DAD648F8(v260, v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider);
      sub_1DAD648F8(v259, v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__dataProtectionMonitor);
      (*v172)(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v244, v234);
      v69((v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition), v240, v70);
      v239((v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag), v241, v246);
      *(v80 + v108) = 0;
      v111 = v185;
      sub_1DAD6495C(v245, v185, &qword_1ECC08698, &qword_1DAED84E0);
      v112 = *v171;
      if ((*v171)(v111, 1, v71) == 1)
      {
        v113 = v192;
        sub_1DAED178C();
        if (v112(v111, 1, v71) != 1)
        {
          sub_1DAD64398(v111, &qword_1ECC08698, &qword_1DAED84E0);
        }
      }

      else
      {
        v113 = v192;
        (*v211)(v192, v111, v71);
      }

      (*v211)((v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily), v113, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086A0, &qword_1DAED6CF8);
      swift_allocObject();
      v114 = sub_1DAECEE7C();
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewEntryDidChangePublisher) = v114;
      v249 = v114;
      v222 = v114;
      v115 = MEMORY[0x1E695BF88];
      sub_1DAD64B94(&qword_1EE005C40, &qword_1ECC086A0, &qword_1DAED6CF8, MEMORY[0x1E695BF88]);

      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher) = sub_1DAECEF6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086A8, &unk_1DAED6D00);
      swift_allocObject();
      v116 = sub_1DAECEE7C();
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__colorSchemeDidChangePublisher) = v116;
      v249 = v116;
      v221 = v116;
      sub_1DAD64B94(&qword_1EE005C30, &qword_1ECC086A8, &unk_1DAED6D00, v115);

      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorSchemeDidChangePublisher) = sub_1DAECEF6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      swift_allocObject();
      v117 = sub_1DAECEE7C();
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__overrideDateDidChangePublisher) = v117;
      v249 = v117;
      v220 = v117;
      sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, v115);

      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher) = sub_1DAECEF6C();
      v118 = type metadata accessor for DefaultWidgetViewSecurityPolicy();
      v119 = swift_allocObject();
      v120 = (v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicy);
      v120[3] = v118;
      v120[4] = &protocol witness table for DefaultWidgetViewSecurityPolicy;
      *v120 = v119;
      type metadata accessor for ActivityViewModelSecurityDataSource();
      v121 = swift_allocObject();
      *(v121 + 16) = v80;
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = v121;

      v249 = sub_1DAED12DC();
      v122 = sub_1DAED20EC();
      v250 = v122;
      v223 = sub_1DAED20AC();
      v123 = *(v223 - 8);
      v219 = *(v123 + 56);
      v224 = (v123 + 56);
      v124 = v235;
      v219(v235, 1, 1, v223);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A180, &unk_1DAED6D10);
      v216 = MEMORY[0x1E695BED8];
      sub_1DAD64B94(&unk_1EE005CC0, &unk_1ECC0A180, &unk_1DAED6D10, MEMORY[0x1E695BED8]);
      v218 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
      v125 = v194;
      sub_1DAECEFBC();
      sub_1DAD64398(v124, &unk_1ECC07D20, &unk_1DAED57D0);

      swift_allocObject();
      swift_weakInit();
      v217 = MEMORY[0x1E695BE98];
      sub_1DAD64B94(&qword_1EE005D30, &qword_1ECC08690, &qword_1DAED6CD8, MEMORY[0x1E695BE98]);

      v126 = v195;
      v127 = sub_1DAECF00C();

      (*v170)(v125, v126);
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver) = v127;

      __swift_project_boxed_opaque_existential_1((v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider), *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 24));
      v215 = sub_1DAECE2AC();
      v249 = v215;
      v128 = v200;
      sub_1DAED22DC();
      v214 = [v182 mainRunLoop];
      v250 = v214;
      v129 = sub_1DAED22CC();
      v130 = v202;
      (*(*(v129 - 8) + 56))(v202, 1, 1, v129);
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DD0, &unk_1DAED5860);
      sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
      sub_1DAD64B94(&qword_1EE00AC10, &unk_1ECC07DD0, &unk_1DAED5860, v216);
      sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0, MEMORY[0x1E696A010]);
      v131 = v198;
      sub_1DAECEFCC();
      sub_1DAD64398(v130, &qword_1ECC07D08, &qword_1DAEDCB80);

      (*v169)(v128, v201);

      v132 = sub_1DAED20EC();
      v249 = v132;
      v133 = v235;
      v219(v235, 1, 1, v223);
      sub_1DAD64B94(&qword_1EE00AC40, &qword_1ECC07D10, &qword_1DAED57C0, MEMORY[0x1E695BE50]);
      v134 = v196;
      v135 = v199;
      sub_1DAECEFBC();
      sub_1DAD64398(v133, &unk_1ECC07D20, &unk_1DAED57D0);

      (*v168)(v131, v135);
      swift_allocObject();
      swift_weakInit();
      sub_1DAD64B94(&qword_1EE00AC18, &qword_1ECC07D18, &qword_1DAED57C8, v217);
      v136 = v197;
      sub_1DAECF00C();

      (*v167)(v134, v136);
      swift_beginAccess();
      sub_1DAECEE0C();
      swift_endAccess();

      sub_1DAE6608C();

      sub_1DAD64398(v245, &qword_1ECC08698, &qword_1DAED84E0);
      v224 = *v206;
      (v224)(v240, v237);
      v137 = *v230;
      v138 = v246;
      (*v230)(v241, v246);
      (*v166)(v244, v234);
      __swift_destroy_boxed_opaque_existential_1Tm(v259);
      __swift_destroy_boxed_opaque_existential_1Tm(v260);
      __swift_destroy_boxed_opaque_existential_1Tm(v261);
      (*v165)(v242, v243);
      __swift_destroy_boxed_opaque_existential_1Tm(v251);
      __swift_destroy_boxed_opaque_existential_1Tm(&v253);
      __swift_destroy_boxed_opaque_existential_1Tm(v252);
      __swift_destroy_boxed_opaque_existential_1Tm(v258);
      v139 = v184;
      v63 = v212;
      v239(v184, v212, v138);
      v140 = (*v164)(v139, v138);
      if (v140 == v163)
      {
        v141 = v160;
        v142 = v210;
        (*(v207 + 104))(v160, v158, v210);
        v208(v141, 0, 1, v142);
        v143 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
        swift_beginAccess();
        v144 = v161;
        sub_1DAD6495C(v80 + v143, v161, &qword_1ECC08370, &unk_1DAED6580);
        swift_beginAccess();
        sub_1DADE9908(v141, v80 + v143);
        swift_endAccess();
        sub_1DAE62CC4(v144);
        sub_1DAD64398(v144, &qword_1ECC08370, &unk_1DAED6580);
        sub_1DAD64398(v141, &qword_1ECC08370, &unk_1DAED6580);
      }

      else
      {
        v137(v139, v138);
      }

      v145 = *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment);
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 1;
      sub_1DAE64024(v145);
      swift_getKeyPath();
      v146 = v248;
      v253 = v248;
      sub_1DAECDEFC();

      v147 = v203;
      sub_1DADEAD64(v146 + v179, v203);
      sub_1DADF3EB8(v147, v80);

      sub_1DADEAF80(v147);
      if ((v227 & 1) == 0)
      {
        v253 = *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);
        v148 = swift_allocObject();
        v149 = v248;
        swift_weakInit();
        v150 = swift_allocObject();
        *(v150 + 16) = v148;
        *(v150 + 24) = v80;

        v227 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E60, &unk_1DAED6D20);
        sub_1DAD64B94(&qword_1EE005CE0, &qword_1ECC09E60, &unk_1DAED6D20, MEMORY[0x1E695BED8]);
        sub_1DAECF00C();
        v63 = v212;

        swift_getKeyPath();
        v253 = v149;
        sub_1DAECDEFC();

        v253 = v149;
        swift_getKeyPath();
        sub_1DAECDF1C();

        swift_beginAccess();
        sub_1DAECEE0C();
        swift_endAccess();

        v253 = v149;
        v137 = v227;
        swift_getKeyPath();
        sub_1DAECDF0C();
      }

      swift_getKeyPath();
      v151 = v248;
      v253 = v248;
      sub_1DAECDEFC();

      v152 = *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
      *(v80 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = *(*(v151 + v178) + 16) != 0;
      sub_1DAE638F4(v152);
      v154 = sub_1DADEBF88(&v253);
      if (*v153)
      {
        v155 = v153;

        MEMORY[0x1E127DAD0](v156);
        v64 = v228;
        if (*((*v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DAED1E9C();
        }

        sub_1DAED1EBC();
        (v154)(&v253, 0);
      }

      else
      {
        (v154)(&v253, 0);
        v64 = v228;
      }

      v137(v63, v138);
      v60 = v236 + v162;
      v61 = 1;
      v55 = v64 - 1;
    }

    while (v55);

    (v224)(v205, v237);
  }

  else
  {

    (v206[1])(v205, v237);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v262);
  __swift_destroy_boxed_opaque_existential_1Tm(v263);
  __swift_destroy_boxed_opaque_existential_1Tm(v264);
  return __swift_destroy_boxed_opaque_existential_1Tm(v265);
}

double sub_1DADF15FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DAED187C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED1B8C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v29 - v16;
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v29[0] = v5;
    v21 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(a3 + v21, v14, &unk_1ECC09E40, &qword_1DAED68E0);
    if ((*(v9 + 48))(v14, 1, v8))
    {
      v22 = &unk_1ECC09E40;
      v23 = &qword_1DAED68E0;
      v24 = v14;
    }

    else
    {
      (*(v9 + 16))(v11, v14, v8);
      sub_1DAD64398(v14, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAED1B7C();
      (*(v9 + 8))(v11, v8);
      v25 = sub_1DAED1B1C();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v17, 1, v25) != 1)
      {
        sub_1DAED1AFC();
        (*(v26 + 8))(v17, v25);
        sub_1DAED186C();
        (*(v29[0] + 8))(v7, v4);
        v27 = 1;
        goto LABEL_7;
      }

      v22 = &unk_1ECC0A520;
      v23 = &unk_1DAED6D30;
      v24 = v17;
    }

    sub_1DAD64398(v24, v22, v23);
    v27 = 0;
LABEL_7:
    sub_1DADED250(v27);
    v28 = sub_1DAED094C();
    MEMORY[0x1EEE9AC00](v28);
    v29[-2] = v20;
    v29[-1] = a3;
    sub_1DAECF1DC();
  }

  return result;
}

void sub_1DADF1A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086B0, &unk_1DAED84D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v115 - v8;
  v123 = sub_1DAED187C();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAED1B8C();
  v139 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v131 = v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v129 = v115 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v127 = v115 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v120 = v115 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v135 = v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v134 = v115 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v133 = v115 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v119 = v115 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v115 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v130 = v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v128 = v115 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v126 = v115 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v118 = v115 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v138 = v115 - v39;

  v40 = sub_1DAECEDCC();
  v41 = sub_1DAED203C();

  v132 = v41;
  v42 = os_log_type_enabled(v40, v41);
  v137 = a1;
  v125 = v6;
  v136 = a2;
  v124 = v9;
  if (!v42)
  {

    goto LABEL_9;
  }

  v116 = v40;
  v43 = swift_slowAlloc();
  v117 = swift_slowAlloc();
  v141[0] = v117;
  *v43 = 136446466;
  swift_getKeyPath();
  v140 = a1;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v45 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  v44 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

  v46 = sub_1DAD6482C(v45, v44, v141);

  *(v43 + 4) = v46;
  *(v43 + 12) = 2082;
  v47 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(a2 + v47, v29, &unk_1ECC09E40, &qword_1DAED68E0);
  v48 = *(v139 + 48);
  if (v48(v29, 1, v11))
  {
    v49 = v11;

    sub_1DAD64398(v29, &unk_1ECC09E40, &qword_1DAED68E0);
    v50 = sub_1DAED1B1C();
    v51 = v138;
    (*(*(v50 - 8) + 56))(v138, 1, 1, v50);
LABEL_7:
    sub_1DAD64398(v51, &unk_1ECC0A520, &unk_1DAED6D30);
    v60 = 0xE300000000000000;
    v61 = 7104878;
    a2 = v136;
LABEL_8:
    v62 = v116;
    v63 = sub_1DAD6482C(v61, v60, v141);

    *(v43 + 14) = v63;
    _os_log_impl(&dword_1DAD61000, v62, v132, "[%{public}s] Entry metadata changed to: %{public}s", v43, 0x16u);
    v64 = v117;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v64, -1, -1);
    MEMORY[0x1E127F100](v43, -1, -1);

    v11 = v49;
LABEL_9:
    v65 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    v66 = v133;
    sub_1DAD6495C(a2 + v65, v133, &unk_1ECC09E40, &qword_1DAED68E0);
    v67 = v139;
    v138 = *(v139 + 48);
    v68 = (v138)(v66, 1, v11);
    v69 = v137;
    if (v68)
    {
      sub_1DAD64398(v66, &unk_1ECC09E40, &qword_1DAED68E0);
    }

    else
    {
      v70 = v127;
      (*(v67 + 16))(v127, v66, v11);
      sub_1DAD64398(v66, &unk_1ECC09E40, &qword_1DAED68E0);
      v71 = v126;
      sub_1DAED1B7C();
      (*(v67 + 8))(v70, v11);
      v72 = sub_1DAED1B1C();
      v73 = *(v72 - 8);
      if ((*(v73 + 48))(v71, 1, v72) != 1)
      {
        v90 = v71;
        v91 = v121;
        sub_1DAED1AFC();
        (*(v73 + 8))(v90, v72);
        sub_1DAED186C();
        v76 = v92;
        v79 = v93;
        (*(v122 + 8))(v91, v123);
        v74 = v69 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
        if (*(v69 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16))
        {
          v133 = v65;
          v75 = 0;
        }

        else
        {
          v75 = 0;
          v77 = *v74;
          if (v76 == *v74)
          {
            v78 = *(v74 + 8);
            if (v79 == *&v78)
            {
              v67 = v139;
              goto LABEL_15;
            }
          }

          v133 = v65;
        }

LABEL_17:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v81 = v137;
        v115[-4] = v137;
        *&v115[-3] = v76;
        *&v115[-2] = v79;
        LOBYTE(v115[-1]) = v75;
        v141[7] = v81;
        sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
        sub_1DAECDEEC();

        a2 = v136;
        v67 = v139;
        v65 = v133;
LABEL_18:
        v82 = v134;
        sub_1DAD6495C(a2 + v65, v134, &unk_1ECC09E40, &qword_1DAED68E0);
        if ((v138)(v82, 1, v11))
        {
          sub_1DAD64398(v82, &unk_1ECC09E40, &qword_1DAED68E0);
          v83 = 0;
        }

        else
        {
          v84 = v129;
          (*(v67 + 16))(v129, v82, v11);
          sub_1DAD64398(v82, &unk_1ECC09E40, &qword_1DAED68E0);
          v85 = v128;
          sub_1DAED1B7C();
          v86 = v84;
          v87 = v85;
          (*(v67 + 8))(v86, v11);
          v88 = sub_1DAED1B1C();
          v89 = *(v88 - 8);
          if ((*(v89 + 48))(v87, 1, v88) == 1)
          {
            sub_1DAD64398(v87, &unk_1ECC0A520, &unk_1DAED6D30);
            v83 = 0;
            v67 = v139;
          }

          else
          {
            v133 = v65;
            v94 = v124;
            sub_1DAED1B0C();
            (*(v89 + 8))(v87, v88);
            v95 = sub_1DAED175C();
            v96 = *(v95 - 8);
            if ((*(v96 + 48))(v94, 1, v95) == 1)
            {
              sub_1DAD64398(v94, &qword_1ECC086B0, &unk_1DAED84D0);
              v83 = 0;
            }

            else
            {
              v101 = sub_1DAED174C();
              (*(v96 + 8))(v94, v95);
              v83 = v101;
            }

            v67 = v139;
            v65 = v133;
          }
        }

        sub_1DADEBC1C(v83);
        v102 = v135;
        sub_1DAD6495C(a2 + v65, v135, &unk_1ECC09E40, &qword_1DAED68E0);
        if ((v138)(v102, 1, v11))
        {
          v103 = &unk_1ECC09E40;
          v104 = &qword_1DAED68E0;
          v105 = v102;
        }

        else
        {
          v106 = v131;
          (*(v67 + 16))(v131, v102, v11);
          sub_1DAD64398(v102, &unk_1ECC09E40, &qword_1DAED68E0);
          v107 = v130;
          sub_1DAED1B7C();
          (*(v67 + 8))(v106, v11);
          v108 = sub_1DAED1B1C();
          v109 = *(v108 - 8);
          if ((*(v109 + 48))(v107, 1, v108) == 1)
          {
            v103 = &unk_1ECC0A520;
            v104 = &unk_1DAED6D30;
            v105 = v107;
          }

          else
          {
            v110 = v125;
            sub_1DAED1ADC();
            (*(v109 + 8))(v107, v108);
            v111 = sub_1DAED175C();
            v112 = *(v111 - 8);
            if ((*(v112 + 48))(v110, 1, v111) != 1)
            {
              v114 = sub_1DAED174C();
              (*(v112 + 8))(v110, v111);
              v113 = v114;
              goto LABEL_41;
            }

            v103 = &qword_1ECC086B0;
            v104 = &unk_1DAED84D0;
            v105 = v110;
          }
        }

        sub_1DAD64398(v105, v103, v104);
        v113 = 0;
LABEL_41:
        sub_1DADEB758(v113);
        return;
      }

      sub_1DAD64398(v71, &unk_1ECC0A520, &unk_1DAED6D30);
      v67 = v139;
    }

    v74 = v69 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
    v75 = 1;
    v76 = 0.0;
    if (*(v69 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16))
    {
      v77 = *v74;
      v78 = *(v74 + 8);
      v79 = 0.0;
LABEL_15:
      *v74 = v76;
      *(v74 + 8) = v79;
      *(v74 + 16) = v75;
      sub_1DADEB120(*&v77, v78, v75);
      goto LABEL_18;
    }

    v133 = v65;
    v79 = 0.0;
    goto LABEL_17;
  }

  v52 = v139;
  v53 = v120;
  (*(v139 + 16))(v120, v29, v11);
  sub_1DAD64398(v29, &unk_1ECC09E40, &qword_1DAED68E0);
  v54 = v138;
  sub_1DAED1B7C();
  v55 = *(v52 + 8);
  v56 = v53;
  v51 = v54;
  v57 = v11;
  v55(v56, v11);
  v58 = sub_1DAED1B1C();
  v59 = *(v58 - 8);
  v120 = *(v59 + 48);
  v115[1] = v59 + 48;
  if ((v120)(v51, 1, v58) == 1)
  {
    v49 = v57;

    goto LABEL_7;
  }

  v115[0] = v55;
  sub_1DAD64398(v51, &unk_1ECC0A520, &unk_1DAED6D30);
  a2 = v136;
  v97 = v119;
  sub_1DAD6495C(v136 + v47, v119, &unk_1ECC09E40, &qword_1DAED68E0);
  if (v48(v97, 1, v57) == 1)
  {

    __break(1u);
  }

  else
  {
    v98 = v118;
    sub_1DAED1B7C();
    v49 = v57;
    (v115[0])(v97, v57);
    v99 = (v120)(v98, 1, v58);

    if (v99 != 1)
    {
      v61 = sub_1DAED1D4C();
      v60 = v100;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t InProcessActivityInstanceBase.deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity;
  v2 = sub_1DAECE83C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1DADEAF80(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration);

  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger;
  v4 = sub_1DAECEDEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  v6 = sub_1DAECDF3C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InProcessActivityInstanceBase.__deallocating_deinit()
{
  InProcessActivityInstanceBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DADF2C78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity;
  v5 = sub_1DAECE83C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DADF2D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();
}

uint64_t sub_1DADF2E34(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  return *(v2 + *a2);
}

uint64_t InProcessActivityInstanceBase.isLoadedPublisher.getter()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08658, &qword_1DAED6B20);
  sub_1DAD64B94(&qword_1ECC08660, &qword_1ECC08658, &qword_1DAED6B20, MEMORY[0x1E695BF88]);
  return sub_1DAECEF6C();
}

uint64_t sub_1DADF2FD8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1DADF3010(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1DADF3020(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1DAD6482C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1DADF3094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DADF30DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion) = v2;
  v4 = v2;
}

uint64_t sub_1DADF316C(uint64_t a1)
{
  result = sub_1DAECE83C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WidgetActivityInstanceContentConfiguration(319);
    if (v3 <= 0x3F)
    {
      result = sub_1DAECEDEC();
      if (v4 <= 0x3F)
      {
        result = sub_1DAECDF3C();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_1DADF34CC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) = *(v0 + 24);
}

uint64_t sub_1DADF3510(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1DAED182C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v5, v10);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v8, v16, v5);
    sub_1DADF3094(&unk_1EE0056E0, MEMORY[0x1E6985920], MEMORY[0x1E6985928]);
    v23 = sub_1DAED1CAC();
    v24 = *v19;
    (*v19)(v8, v5);
    v24(v12, v5);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

void sub_1DADF3724(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1DADF3C18(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    sub_1DAECEE3C();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v5 = &qword_1EE005C50;
    if (!v12)
    {
LABEL_27:
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v17 = *(v9 + 8 * v13);
        ++v16;
        if (v17)
        {
          v22 = (v17 - 1) & v17;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v22 = (v12 - 1) & v12;
LABEL_32:
      sub_1DADF3094(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

      v18 = sub_1DAED1C5C();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      sub_1DADF3094(&qword_1EE005C48, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      while ((sub_1DAED1CAC() & 1) == 0)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = (v10 + 63) >> 6;
      v12 = v22;
      v5 = &qword_1EE005C50;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_1DADF3A18(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1DAED294C();

    sub_1DAED1D9C();
    v16 = sub_1DAED297C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1DAED289C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1DADF3C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1DAED247C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v7 &= v7 - 1;
LABEL_12:

      v11 = sub_1DAED24CC();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v10 = *(a2 + 56 + 8 * v4);
      ++v9;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DADF3D1C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags) = *(v0 + 24);
}

uint64_t sub_1DADF3D60()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_1DADF3E0C(uint64_t *a1, uint64_t a2, char *a3, ...)
{
  v7 = *(v3 + 16);
  v8 = *(v7 + *a1);
  *(v7 + *a1) = *(v3 + 24);

  sub_1DADEB788(v8, a2, a1, a3);
}

double sub_1DADF3EB8(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v16 - v9;
  if (a2)
  {
    v11 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
    sub_1DAD6495C(&a1[*(v11 + 24)], v10, &qword_1ECC08370, &unk_1DAED6580);
    v12 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
    swift_beginAccess();
    sub_1DAD6495C(a2 + v12, v6, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();

    sub_1DADE9908(v10, a2 + v12);
    swift_endAccess();
    sub_1DAE62CC4(v6);
    sub_1DAD64398(v6, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v10, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD6495C(&a1[*(v11 + 28)], v10, &qword_1ECC08370, &unk_1DAED6580);
    v13 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme;
    swift_beginAccess();
    sub_1DAD6495C(a2 + v13, v6, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DADE9908(v10, a2 + v13);
    swift_endAccess();
    sub_1DAE62CD8(v6);
    sub_1DAD64398(v6, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v10, &qword_1ECC08370, &unk_1DAED6580);
    v14 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment);
    *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = *a1;
    sub_1DAE631A8(v14);
    v15 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance);
    *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = a1[1];
    sub_1DAE64238(v15);
  }

  return result;
}

uint64_t sub_1DADF410C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1DADF41A4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *v2 = *(v0 + 24);
  *(v2 + 16) = v1;
  sub_1DADEB120(v3, v4, v5);
}

uint64_t sub_1DADF41F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetActivityInstanceContentConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_1DADF42C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v4 = objc_allocWithZone(MEMORY[0x1E6994340]);

  v3[5] = [v4 init];
  v5 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v6 = sub_1DAED1CBC();
  v7 = [v5 initWithIdentifier_];

  v8 = v3[6];
  v3[6] = v7;

  return v3;
}

uint64_t sub_1DADF43A0(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = *(v1 + 48);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v1 + 48);
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 48) = 0;

  return v1;
}

uint64_t sub_1DADF4404(uint64_t a1)
{
  sub_1DADF43A0(a1);

  return swift_deallocClassInstance();
}

void sub_1DADF445C()
{
  v1 = v0;
  v29 = sub_1DAED09DC();
  v34 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DAED0A3C();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1DAECDCEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v26 - v13;
  v15 = [*(*(v0 + 16) + 32) extensionIdentity];
  swift_beginAccess();

  v16 = sub_1DAECE27C();

  if (v16)
  {

    sub_1DADC5180(v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

    else
    {
      v26 = *(v8 + 32);
      v28 = v14;
      v26(v14, v6, v7);
      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v27 = sub_1DAED20EC();
      (*(v8 + 16))(v10, v14, v7);
      v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      v26((v19 + v17), v10, v7);
      *(v19 + v18) = v1;
      *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;
      aBlock[4] = sub_1DADF537C;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      aBlock[3] = &block_descriptor_2;
      v20 = _Block_copy(aBlock);

      v21 = v15;

      v22 = v30;
      _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1DAD8E204(&qword_1EE00AB70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
      sub_1DADCA908();
      v23 = v32;
      v24 = v29;
      sub_1DAED23CC();
      v25 = v27;
      MEMORY[0x1E127DD70](0, v22, v23, v20);
      _Block_release(v20);

      (*(v34 + 8))(v23, v24);
      (*(v31 + 8))(v22, v33);
      (*(v8 + 8))(v28, v7);
    }
  }

  else
  {
  }
}

void sub_1DADF49B0(uint64_t a1, void *a2, void *a3)
{
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1DAECDCEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  sub_1DAECDCDC();
  sub_1DAD8E204(&qword_1EE00A6F0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v14 = sub_1DAED1C9C();
  v15 = *(v8 + 8);
  v15(v13, v7);
  if ((v14 & 1) == 0)
  {
    sub_1DADF4F24(v30, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1DAECDC7C();
      v16 = sub_1DAECDC6C();
      v15(v13, v7);
      if (v16)
      {
        v17 = a2[3];

        v17(v18);

        v15(v10, v7);
        return;
      }

      v15(v10, v7);
    }
  }

  sub_1DAECDC8C();
  v20 = a2[6];
  if (v20)
  {
    v21 = v19 + 900.0;
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v22 = v20;
    v23 = sub_1DAED20EC();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v26 = v30;
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    aBlock[4] = sub_1DADF5414;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD69AE8;
    aBlock[3] = &block_descriptor_22;
    v27 = _Block_copy(aBlock);
    v28 = v26;

    [v22 scheduleWithFireInterval:v23 leewayInterval:v27 queue:v21 handler:60.0];
    _Block_release(v27);
  }
}

void sub_1DADF4D8C(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1EE005E38 != -1)
    {
      swift_once();
    }

    v5 = sub_1DAECEDEC();
    __swift_project_value_buffer(v5, qword_1EE011730);
    v6 = a3;
    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}@] Staleness timer fired. Evaluating staleness.", v9, 0xCu);
      sub_1DAD64398(v10, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    sub_1DADF445C();
  }

  else
  {
    [a1 invalidate];
  }
}

uint64_t sub_1DADF4F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v39 = sub_1DAECDD3C();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *MEMORY[0x1E69941A8]);
  swift_beginAccess();
  v12 = v11[1];
  if (!v12)
  {
    [*(v2 + 48) invalidate];
LABEL_26:
    v33 = sub_1DAECDCEC();
    return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
  }

  v35 = v7;
  v40 = *v11;
  v13 = *(v2 + 40);

  v14 = [v13 allPairedDevices];
  sub_1DAD674D4(0, &qword_1ECC086B8, 0x1E6994338);
  v15 = sub_1DAED1E7C();

  v36 = a2;
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = sub_1DAED247C();
  if (!v16)
  {
LABEL_25:

    a2 = v36;
    goto LABEL_26;
  }

LABEL_4:
  v17 = 0;
  v37 = v15 & 0xFFFFFFFFFFFFFF8;
  v38 = v15 & 0xC000000000000001;
  v18 = v8 + 1;
  while (1)
  {
    if (v38)
    {
      v19 = MEMORY[0x1E127E1F0](v17, v15);
    }

    else
    {
      if (v17 >= *(v37 + 16))
      {
        goto LABEL_23;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v8 = v19;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v21 = [v19 relationshipID];
    sub_1DAECDD0C();

    v22 = sub_1DAECDCFC();
    v24 = v23;
    (*v18)(v10, v39);
    if (v22 == v40 && v12 == v24)
    {

      goto LABEL_18;
    }

    v25 = sub_1DAED289C();

    if (v25)
    {
      break;
    }

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_25;
    }
  }

LABEL_18:

  v26 = [v8 lastConnectionDate];
  v28 = v35;
  v27 = v36;
  if (v26)
  {
    v29 = v26;
    sub_1DAECDCBC();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_1DAECDCEC();
  (*(*(v31 - 8) + 56))(v28, v30, 1, v31);
  return sub_1DADF530C(v28, v27);
}

uint64_t sub_1DADF530C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DADF537C()
{
  v1 = *(sub_1DAECDCEC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1DADF49B0(v0 + v2, v4, v5);
}

uint64_t sub_1DADF5424()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011B30 = result;
  return result;
}

uint64_t sub_1DADF548C()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011638 = result;
  return result;
}

uint64_t sub_1DADF54F4()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011628 = result;
  return result;
}

uint64_t sub_1DADF555C()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DCF0 = result;
  return result;
}

uint64_t sub_1DADF55C4()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DCF8 = result;
  return result;
}

uint64_t sub_1DADF5630()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DD00 = result;
  return result;
}

uint64_t sub_1DADF5698()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DD08 = result;
  return result;
}

uint64_t sub_1DADF5704()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DD10 = result;
  return result;
}

uint64_t sub_1DADF5770()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DD18 = result;
  return result;
}

uint64_t sub_1DADF57F0(uint64_t a1, uint64_t *a2)
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  *a2 = result;
  return result;
}

uint64_t sub_1DADF5858()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011630 = result;
  return result;
}

uint64_t sub_1DADF58C0()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011620 = result;
  return result;
}

uint64_t sub_1DADF5954()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE011790);
  __swift_project_value_buffer(v0, qword_1EE011790);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF59D4()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0117A8);
  __swift_project_value_buffer(v0, qword_1EE0117A8);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5A54()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0117C0);
  __swift_project_value_buffer(v0, qword_1EE0117C0);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5CE4()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0116E8);
  __swift_project_value_buffer(v0, qword_1EE0116E8);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5D64()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DDF0);
  __swift_project_value_buffer(v0, qword_1ECC0DDF0);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5DE4()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DE08);
  __swift_project_value_buffer(v0, qword_1ECC0DE08);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5E64()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DE20);
  __swift_project_value_buffer(v0, qword_1ECC0DE20);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5EE4()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0116D0);
  __swift_project_value_buffer(v0, qword_1EE0116D0);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5F68()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DE38);
  __swift_project_value_buffer(v0, qword_1ECC0DE38);
  return sub_1DAECEDDC();
}

uint64_t type metadata accessor for _InProcessActivityInstanceView(uint64_t a1)
{
  result = qword_1ECC086C0;
  if (!qword_1ECC086C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DADF605C(uint64_t a1)
{
  sub_1DADF6108();
  if (v1 <= 0x3F)
  {
    sub_1DAED182C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for InProcessActivityInstanceBase(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DADF6108()
{
  if (!qword_1ECC086D0)
  {
    v0 = sub_1DAED079C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC086D0);
    }
  }
}

uint64_t sub_1DADF6174(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1DAED247C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E127E1F0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1DADF6298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF70F8(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_1DADF6360(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1DADF70F8(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEEC();

  return result;
}

uint64_t sub_1DADF642C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A150, &unk_1DAED6CE0);
  v3 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v5 = &v59 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086D8, &unk_1DAED6E18);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v59 - v6;
  v7 = type metadata accessor for _InProcessActivityInstanceView(0);
  v8 = v7 - 8;
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v64 = v9;
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1DAED1B8C();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v59 - v12;
  v14 = type metadata accessor for ActivityView(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086E0, &qword_1DAED6E28);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v59 - v17;
  v18 = *(v2 + *(v8 + 36));
  swift_getKeyPath();
  *&v73[0] = v18;
  sub_1DADF70F8(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase, &protocol conformance descriptor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v19 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  v20 = swift_beginAccess();
  v21 = *(v18 + v19);
  if (v21 && (MEMORY[0x1EEE9AC00](v20), *(&v59 - 2) = v2, , v22 = sub_1DADF6174(sub_1DADF709C, (&v59 - 4), v21), , v22))
  {
    v72 = 0;

    sub_1DAED076C();
    *(v16 + 2) = v73[0];
    v23 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
    v24 = *(v14 + 28);
    v25 = sub_1DAECEDEC();
    (*(*(v25 - 8) + 16))(&v16[v24], v22 + v23, v25);
    type metadata accessor for ActivityViewModel(0);
    sub_1DADF70F8(&qword_1EE007808, type metadata accessor for ActivityViewModel, &unk_1DAEDC81C);

    v26 = sub_1DAECF21C();
    v28 = v27;
    *v16 = v26;
    *(v16 + 1) = v27;
    *&v73[0] = sub_1DAED064C();
    *(v16 + 2) = sub_1DAED087C();
    *(v16 + 3) = 0;
    v29 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v28 + v29, v13, &unk_1ECC09E40, &qword_1DAED68E0);
    v30 = v61;
    v31 = v62;
    if ((*(v61 + 48))(v13, 1, v62))
    {
      sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
      v32 = *(v28 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
    }

    else
    {
      v35 = v60;
      (*(v30 + 16))(v60, v13, v31);
      sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
      v32 = sub_1DAED1B5C();
      (*(v30 + 8))(v35, v31);
    }

    *(v16 + 2) = v32;
    *(v16 + 3) = 0;
    v36 = v65;
    sub_1DADF71C8(v2, v65, type metadata accessor for _InProcessActivityInstanceView);
    v37 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v63 = v22;
    v38 = swift_allocObject();
    sub_1DADF714C(v36, v38 + v37);
    v39 = v66;
    sub_1DADF71C8(v16, v66, type metadata accessor for ActivityView);
    v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08708, &qword_1DAED6E60) + 36));
    *v40 = sub_1DADF71B0;
    v40[1] = v38;
    v40[2] = 0;
    v40[3] = 0;
    sub_1DADE9AFC(v16);
    sub_1DADF71C8(v2, v36, type metadata accessor for _InProcessActivityInstanceView);
    v41 = swift_allocObject();
    sub_1DADF714C(v36, v41 + v37);
    v42 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086F8, &qword_1DAED6E58) + 36));
    *v42 = 0;
    v42[1] = 0;
    v42[2] = sub_1DADF7230;
    v42[3] = v41;
    v43 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest;
    v44 = *(v18 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest);
    v45 = v63;

    v46 = v44;
    v47 = sub_1DAECE7FC();

    v48 = sub_1DAECE86C();
    sub_1DAECEA7C();
    v50 = v49;

    v51 = *(v18 + v43);
    v52 = sub_1DAECE7FC();

    v53 = sub_1DAECE87C();
    sub_1DAECEA7C();
    v55 = v54;

    sub_1DADF7A74(v45, v73, v50, v55);

    v56 = v39 + *(v67 + 36);
    v57 = v73[3];
    *(v56 + 32) = v73[2];
    *(v56 + 48) = v57;
    *(v56 + 64) = v74;
    v58 = v73[1];
    *v56 = v73[0];
    *(v56 + 16) = v58;
    sub_1DAD6495C(v39, v69, &qword_1ECC086E0, &qword_1DAED6E28);
    swift_storeEnumTagMultiPayload();
    sub_1DADF6E74();
    sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0, MEMORY[0x1E697BF38]);
    sub_1DAECFB1C();

    return sub_1DAD64398(v39, &qword_1ECC086E0, &qword_1DAED6E28);
  }

  else
  {
    sub_1DAECF10C();
    v33 = v71;
    (*(v3 + 16))(v69, v5, v71);
    swift_storeEnumTagMultiPayload();
    sub_1DADF6E74();
    sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0, MEMORY[0x1E697BF38]);
    sub_1DAECFB1C();
    return (*(v3 + 8))(v5, v33);
  }
}

uint64_t sub_1DADF6DE0(uint64_t a1, void (*a2)())
{
  type metadata accessor for _InProcessActivityInstanceView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08720, &qword_1DAED6E70);
  sub_1DAED077C();
  a2();
}

unint64_t sub_1DADF6E74()
{
  result = qword_1ECC086E8;
  if (!qword_1ECC086E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC086E0, &qword_1DAED6E28);
    sub_1DADF6F00();
    sub_1DADF7048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC086E8);
  }

  return result;
}

unint64_t sub_1DADF6F00()
{
  result = qword_1ECC086F0;
  if (!qword_1ECC086F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC086F8, &qword_1DAED6E58);
    sub_1DADF6F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC086F0);
  }

  return result;
}

unint64_t sub_1DADF6F8C()
{
  result = qword_1ECC08700;
  if (!qword_1ECC08700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08708, &qword_1DAED6E60);
    sub_1DADF70F8(qword_1EE007DA0, type metadata accessor for ActivityView, &unk_1DAEDCE94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08700);
  }

  return result;
}

unint64_t sub_1DADF7048()
{
  result = qword_1ECC08710;
  if (!qword_1ECC08710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08710);
  }

  return result;
}

uint64_t sub_1DADF70F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1DADF7140(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DAD660D8(result, a2);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1DADF714C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InProcessActivityInstanceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADF71C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADF72AC()
{
  v1 = sub_1DAED187C();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAED1B8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v33 = v0;
  v14 = *(v0 + 8);
  v15 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v14 + v15, v10, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    v16 = &unk_1ECC09E40;
    v17 = &qword_1DAED68E0;
    v18 = v10;
  }

  else
  {
    v20 = v31;
    v19 = v32;
    (*(v5 + 16))(v7, v10, v4);
    sub_1DAD64398(v10, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAED1B7C();
    (*(v5 + 8))(v7, v4);
    v21 = sub_1DAED1B1C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13, 1, v21) != 1)
    {
      sub_1DAED1AFC();
      (*(v22 + 8))(v13, v21);
      sub_1DAED186C();
      v29 = v27;
      v30 = v28;
      (*(v20 + 8))(v3, v19);
      *&v23 = v29;
      v24 = 0;
      *(&v23 + 1) = v30;
      goto LABEL_6;
    }

    v16 = &unk_1ECC0A520;
    v17 = &unk_1DAED6D30;
    v18 = v13;
  }

  sub_1DAD64398(v18, v16, v17);
  v23 = 0uLL;
  v24 = 1;
LABEL_6:
  v25 = *(v33 + 48);
  v36 = *(v33 + 32);
  v37 = v25;
  v34 = v23;
  v35 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08718, &qword_1DAED6E68);
  return sub_1DAED078C();
}

uint64_t sub_1DADF7660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08738, &qword_1DAED6F28);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v25 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08740, &qword_1DAED6F30);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08748, &qword_1DAED6F38);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08750, &qword_1DAED6F40);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *(v2 + 48);
  v35 = *(v2 + 32);
  v36 = v14;
  v15 = *(v2 + 48);
  v29 = *(v2 + 32);
  v30 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08718, &qword_1DAED6E68);
  sub_1DAED077C();
  v29 = v35;
  v30 = v36;
  sub_1DAED077C();
  sub_1DAED091C();
  sub_1DAECF15C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08758, &qword_1DAED6F48);
  (*(*(v16 - 8) + 16))(v5, v27, v16);
  v17 = &v5[*(v26 + 36)];
  v18 = v32;
  *v17 = v31;
  *(v17 + 1) = v18;
  *(v17 + 2) = v33;
  sub_1DAD7C48C(v5, v7, &qword_1ECC08738, &qword_1DAED6F28);
  *&v7[*(v25 + 36)] = 257;
  sub_1DAD7C48C(v7, v10, &qword_1ECC08740, &qword_1DAED6F30);
  *&v10[*(v8 + 36)] = 0;
  v34 = *(v2 + 64);
  v19 = v34;
  v20 = swift_allocObject();
  v21 = *(v3 + 48);
  *(v20 + 48) = *(v3 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(v3 + 64);
  v22 = *(v3 + 16);
  *(v20 + 16) = *v3;
  *(v20 + 32) = v22;
  sub_1DAD7C48C(v10, v13, &qword_1ECC08748, &qword_1DAED6F38);
  *&v13[*(v11 + 52)] = v19;
  v23 = &v13[*(v11 + 56)];
  *v23 = sub_1DADF7D98;
  v23[1] = v20;
  sub_1DAD7C48C(v13, v28, &qword_1ECC08750, &qword_1DAED6F40);
  sub_1DADF7DBC(v3, &v29);
  return sub_1DAD6495C(&v34, &v29, &qword_1ECC09E60, &unk_1DAED6D20);
}

uint64_t sub_1DADF7A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08680, &qword_1DAED6CC0);
  sub_1DAED076C();
  type metadata accessor for ActivityViewModel(0);
  sub_1DADF70F8(&qword_1EE007808, type metadata accessor for ActivityViewModel, &unk_1DAEDC81C);

  v8 = sub_1DAECF21C();
  v10 = v9;
  v11 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

  result = sub_1DADF72AC();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 49) = *v13;
  *(a2 + 52) = *&v13[3];
  *(a2 + 56) = v17;
  *(a2 + 64) = v11;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DADF7C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DADF7C64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DADF7CC4()
{
  result = qword_1ECC08728;
  if (!qword_1ECC08728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08730, &qword_1DAED6ED0);
    sub_1DADF6E74();
    sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08728);
  }

  return result;
}

uint64_t sub_1DADF7DF4()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion))
  {

    sub_1DAED0D4C();
  }

  v2 = OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger;
  v3 = sub_1DAECEDEC();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

double sub_1DADF7EE4()
{
  if (*(*v0 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion))
  {

    sub_1DAED0D4C();
  }

  return result;
}

void sub_1DADF7F40(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_1DADF7F98()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_1DADF7FDC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1DADF80A8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1DADF8138()
{
  v1 = v0;
  v2 = sub_1DAECDCEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  swift_beginAccess();
  v9 = *(v0 + 16);
  sub_1DAED0C5C();

  v10 = v27;
  sub_1DAD64398(&v25, &unk_1ECC08880, &unk_1DAED6F50);
  v11 = 0x746E6F6320736168;
  if (!v10)
  {
    v11 = 0x65746E6F63206F6ELL;
  }

  v12 = 0xEB00000000746E65;
  if (!v10)
  {
    v12 = 0xEA0000000000746ELL;
  }

  v28 = v11;
  v29 = v12;
  v13 = *(v1 + 16);
  v14 = sub_1DAED0BBC();
  v16 = v15;

  if (v16)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1DAED256C();

    v25 = 0xD000000000000014;
    v26 = 0x80000001DAEE15D0;
    MEMORY[0x1E127DA50](v14, v16);

    MEMORY[0x1E127DA50](v25, v26);
  }

  v17 = *(v1 + 16);
  sub_1DAED0B4C();

  if (v24)
  {
    sub_1DAD657D8(&v23, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, v27);
    sub_1DAED177C();
    sub_1DAECDC3C();
    sub_1DAD722E0(&qword_1EE00BCF8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v18 = sub_1DAED1CAC();
    v19 = *(v3 + 8);
    v19(v5, v2);
    v19(v8, v2);
    if ((v18 & 1) == 0)
    {
      *&v23 = 0;
      *(&v23 + 1) = 0xE000000000000000;
      sub_1DAED256C();

      *&v23 = 0xD000000000000015;
      *(&v23 + 1) = 0x80000001DAEE15B0;
      __swift_project_boxed_opaque_existential_1(&v25, v27);
      sub_1DAED177C();
      sub_1DAD722E0(&qword_1EE00BCF0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v20 = sub_1DAED287C();
      MEMORY[0x1E127DA50](v20);

      v19(v8, v2);
      MEMORY[0x1E127DA50](v23, *(&v23 + 1));
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  else
  {
    sub_1DAD64398(&v23, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  swift_beginAccess();
  if (*(v1 + 24) == 1)
  {
    MEMORY[0x1E127DA50](0x746361646572202CLL, 0xEA00000000006465);
  }

  return v28;
}

uint64_t WidgetArchiveEntry.deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate, &qword_1ECC07CE8, &qword_1DAED6F60);

  return v0;
}

uint64_t WidgetArchiveEntry.__deallocating_deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate, &qword_1ECC07CE8, &qword_1DAED6F60);

  return swift_deallocClassInstance();
}

double sub_1DADF8790(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAD85694(a1);
  }

  return result;
}

double sub_1DADF87F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  sub_1DADF88A0(a2, a3, a1, a4);
  os_unfair_lock_unlock(*(v8 + 16));

  return result;
}

uint64_t sub_1DADF88A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v8 = sub_1DAED0DDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_assertions;
  swift_beginAccess();

  v15 = sub_1DADFAB7C((a1 + v14), a2);
  v38 = v4;

  v16 = *(a1 + v14);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v15)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    result = sub_1DAED247C();
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v17 = sub_1DAED247C();
  if (v17 < v15)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1DADFAF14(v15, v17, type metadata accessor for WidgetArchiveEntryAssertion);
  swift_endAccess();
  v18 = *(a1 + v14);
  if (v18 >> 62)
  {
    goto LABEL_12;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    return result;
  }

LABEL_5:
  v20 = *(v9 + 16);
  v20(v13, v36, v8);
  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED203C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = v20;
    v24 = v23;
    v32 = swift_slowAlloc();
    v37[0] = v32;
    *v24 = 136446210;
    v25 = sub_1DAED0D8C();
    v34 = a3;
    v27 = v26;
    (*(v9 + 8))(v13, v8);
    v28 = sub_1DAD6482C(v25, v27, v37);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1DAD61000, v21, v22, "Removing entry: %{public}s", v24, 0xCu);
    v29 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1E127F100](v29, -1, -1);
    v30 = v24;
    v20 = v33;
    MEMORY[0x1E127F100](v30, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  v31 = v35;
  v20(v35, v36, v8);
  swift_beginAccess();
  sub_1DADD7FC8(0, v31);
  return swift_endAccess();
}

uint64_t sub_1DADF8C04()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger;
  v2 = sub_1DAECEDEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__descriptorProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor));
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer, &qword_1ECC087A8, &unk_1DAED71F0);

  v3 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
  v4 = sub_1DAED18CC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver));
  return v0;
}

uint64_t sub_1DADF8D5C()
{
  sub_1DADF8C04();

  return swift_deallocClassInstance();
}

char *sub_1DADF8DBC()
{
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_1DADF8F80(&v9, v0, &v10);
  os_unfair_lock_unlock(*(v1 + 16));

  v8[0] = v10;

  sub_1DADF9D80(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
  sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70, MEMORY[0x1E69E6310]);
  v3 = sub_1DAED1C8C();
  v5 = v4;

  v8[0] = 0x203A746E756F43;
  v8[1] = 0xE700000000000000;
  v6 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v6);

  MEMORY[0x1E127DA50](10, 0xE100000000000000);
  MEMORY[0x1E127DA50](v3, v5);

  return v8[0];
}

void sub_1DADF8F80(void *a1, uint64_t a2, char **a3)
{
  v61 = a3;
  v64 = sub_1DAED0DDC();
  v5 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08780, &qword_1DAED71C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v49 - v12;
  v13 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v14 = *(a2 + v13);
  *a1 = *(v14 + 16);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v50 = (v16 + 63) >> 6;
  v51 = v5 + 16;
  v59 = (v5 + 32);
  v53 = v5;
  v54 = v14;
  v55 = (v5 + 8);

  v19 = 0;
  v56 = v15;
  if (v18)
  {
    while (1)
    {
      v20 = v19;
LABEL_13:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v20 << 6);
      v27 = v53;
      v26 = v54;
      v28 = v52;
      v29 = v64;
      (*(v53 + 16))(v52, *(v54 + 48) + *(v53 + 72) * v25, v64);
      v30 = *(*(v26 + 56) + 8 * v25);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08788, &qword_1DAED71C8);
      v32 = *(v31 + 48);
      v33 = *(v27 + 32);
      v23 = v58;
      v33(v58, v28, v29);
      *(v23 + v32) = v30;
      (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_14:
      v34 = v57;
      sub_1DAD8C374(v23, v57);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08788, &qword_1DAED71C8);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        break;
      }

      (*v59)(v60, v34, v64);
      v62 = sub_1DAED0D8C();
      v63 = v36;
      MEMORY[0x1E127DA50](8250, 0xE200000000000000);
      v37 = sub_1DADF8138();
      MEMORY[0x1E127DA50](v37);

      v38 = v62;
      v39 = v63;
      v40 = v61;
      v41 = *v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_1DAD9BF68(0, *(v41 + 2) + 1, 1, v41);
        *v61 = v41;
      }

      v44 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v44 >= v43 >> 1)
      {
        v48 = sub_1DAD9BF68((v43 > 1), v44 + 1, 1, v41);
        *v61 = v48;
      }

      (*v55)(v60, v64);
      v45 = *v61;
      *(v45 + 2) = v44 + 1;
      v46 = &v45[16 * v44];
      *(v46 + 4) = v38;
      *(v46 + 5) = v39;
      v15 = v56;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v50 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v50;
    }

    v22 = v21 - 1;
    v23 = v58;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v50)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08788, &qword_1DAED71C8);
        (*(*(v47 - 8) + 56))(v23, 1, 1, v47);
        v18 = 0;
        v19 = v22;
        goto LABEL_14;
      }

      v18 = *(v15 + 8 * v20);
      ++v19;
      if (v18)
      {
        v19 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DADF947C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08790, &qword_1DAED71D0);
  v3 = sub_1DAED1D4C();
  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  MEMORY[0x1E127DA50](*(v1 + 40), *(v1 + 48));
  return v3;
}

void *sub_1DADF955C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087D0, &qword_1DAED7228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087D8, &qword_1DAED7230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DADF96A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087C8, &qword_1DAED7220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DADF97B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08778, &qword_1DAED71B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DADF98C0(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087C0, &unk_1DAED7210);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030) - 8);
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

void *sub_1DADF9B00(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1DADF9CE0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1DAED247C();
LABEL_9:
  result = sub_1DAED258C();
  *v2 = result;
  return result;
}

uint64_t sub_1DADF9D80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DADFA9C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DADF9DEC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DADF9DEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DAED286C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DAED1EAC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DADF9FB4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DADF9EE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DADF9EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1DAED289C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DADF9FB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1DADFA844(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1DADFA590((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1DAED289C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1DAED289C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DADFA858(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DADFA858((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1DADFA590((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DADFA844(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DADFA7B8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1DAED289C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1DADFA590(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1DAED289C() & 1) != 0)
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
      if (!v21 && (sub_1DAED289C() & 1) != 0)
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

uint64_t sub_1DADFA7B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DADFA844(v3);
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

char *sub_1DADFA858(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08770, &qword_1DAED71B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1DADFA960(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DAED247C();
  }

  return sub_1DAED258C();
}

double sub_1DADFA9EC()
{
  v1 = *(sub_1DAED0DDC() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1DADF87F0(v2, v3, v4, v5);
}

unint64_t sub_1DADFAA54(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1DAED247C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E127E1F0](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v5 + 32);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      if (v7 == Strong)
      {
        return v5;
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1DADFAB7C(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_1DADFAA54(*a1, a2);
  v9 = v7;
  if (v2)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1DAED247C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1DAED247C())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1E127E1F0](v10, v6);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v12 = *(v6 + 8 * v10 + 32);

LABEL_17:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong || (, v12 != Strong))
    {
      if (v9 != v10)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x1E127E1F0](v9, v6);
          v14 = MEMORY[0x1E127E1F0](v10, v6);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v15)
          {
            goto LABEL_48;
          }

          if (v10 >= v15)
          {
            goto LABEL_49;
          }

          v3 = *(v6 + 32 + 8 * v9);
          v14 = *(v6 + 32 + 8 * v10);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = sub_1DADFA960(v6);
          v16 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v14;

        if ((v6 & 0x8000000000000000) != 0 || v16)
        {
          v6 = sub_1DADFA960(v6);
          v4 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v10 >= *(v4 + 16))
        {
          goto LABEL_46;
        }

LABEL_8:
        *(v4 + 8 * v10 + 32) = v3;

        *a1 = v6;
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_45;
      }
    }

    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
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
  return sub_1DAED247C();
}

uint64_t sub_1DADFADF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1DAED247C();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1DAED247C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DADFAF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1DAED247C();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v12 = sub_1DAED247C();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_1DADF9CE0(result, 1);
    return sub_1DADFADF8(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1DADFAFF4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() sharedApplication];
    [AppDelegate applicationDidReceiveMemoryWarning:]_0();
  }
}

void sub_1DADFB070(uint64_t a1, void *a2)
{
  v4 = sub_1DAED18CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = objc_opt_self();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1DADFCB04;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);
  v11 = a2;

  [v7 bs:v10 performAfterSynchronizedCommit:?];
  _Block_release(v10);
}

double sub_1DADFB23C(int64_t a1, NSObject *a2)
{
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v97 - v6;
  v106 = sub_1DAED0DDC();
  v114 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED18CC();
  i = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v97 - v13;
  if (qword_1EE00AC60 == -1)
  {
    goto LABEL_2;
  }

LABEL_62:
  swift_once();
LABEL_2:
  v15 = sub_1DAECEDEC();
  v16 = __swift_project_value_buffer(v15, qword_1EE011B88);
  i[2](v14, a1, v8);
  v17 = a2;
  v110 = v16;
  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED203C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v122[0] = v113;
    *v20 = 136446466;
    sub_1DAD66C2C(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
    LODWORD(v112) = v19;
    v111 = v18;
    v21 = sub_1DAED287C();
    v23 = v22;
    v24 = i[1];
    (v24)(v14, v8);
    v25 = sub_1DAD6482C(v21, v23, v122);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    sub_1DAECEE9C();
    v26 = sub_1DAED287C();
    v28 = v27;
    (v24)(v11, v8);
    v29 = sub_1DAD6482C(v26, v28, v122);

    *(v20 + 14) = v29;
    v30 = v111;
    _os_log_impl(&dword_1DAD61000, v111, v112, "Dumping window/widget state after layout/commit when changing data protection level to: %{public}s, current=%{public}s", v20, 0x16u);
    v31 = v113;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v31, -1, -1);
    MEMORY[0x1E127F100](v20, -1, -1);
  }

  else
  {

    (i[1])(v14, v8);
  }

  v32 = [objc_opt_self() sharedApplication];
  a2 = [v32 connectedScenes];

  v33 = sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
  sub_1DAD8D6A4(&qword_1EE00A890, qword_1EE00A898, 0x1E69DCE70, MEMORY[0x1E69E81B8]);
  v34 = sub_1DAED1F6C();

  v113 = v33;
  if ((v34 & 0xC000000000000001) != 0)
  {
    sub_1DAED242C();
    sub_1DAED1F9C();
    v34 = v122[0];
    v36 = v122[1];
    v37 = v122[2];
    v8 = v122[3];
    v11 = v122[4];
  }

  else
  {
    v8 = 0;
    v38 = -1 << *(v34 + 32);
    v36 = v34 + 56;
    v37 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v11 = (v40 & *(v34 + 56));
  }

  v112 = v37;
  v41 = (v37 + 64) >> 6;
  v104 = (v114 + 8);
  *&v35 = 136447234;
  v103 = v35;
LABEL_12:
  for (i = &unk_1ECC07D30; (v34 & 0x8000000000000000) == 0; v11 = v114)
  {
    while (1)
    {
      v44 = v8;
      v45 = v11;
      a1 = v8;
      if (!v11)
      {
        while (1)
        {
          a1 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (a1 >= v41)
          {
            return sub_1DAD70B20(v34);
          }

          v45 = *(v36 + 8 * a1);
          ++v44;
          if (v45)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_22:
      v43 = (v45 - 1) & v45;
      a2 = *(*(v34 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v45)))));
      if (!a2)
      {
        return sub_1DAD70B20(v34);
      }

LABEL_23:
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (v46)
      {
        break;
      }

      v8 = a1;
      v11 = v43;
      if (v34 < 0)
      {
        goto LABEL_15;
      }
    }

    v14 = v46;
    v114 = v43;
    if ([v46 delegate])
    {
      type metadata accessor for WidgetSceneDelegate();
      v47 = swift_dynamicCastClass();
      if (!v47 || (v48 = *(v47 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection)) == 0 || (v49 = *(v48 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_32;
      }

      v111 = *(v49 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v50 = a2;
      a2 = sub_1DAECEDCC();
      v51 = sub_1DAED203C();

      v102 = v51;
      if (os_log_type_enabled(a2, v51))
      {
        v101 = a2;
        v100 = v50;
        v52 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v121 = v98;
        *v52 = v103;
        v53 = [v14 _FBSScene];
        v54 = [v53 identifier];

        v55 = sub_1DAED1CEC();
        v57 = v56;

        v58 = sub_1DAD6482C(v55, v57, &v121);

        *(v52 + 4) = v58;
        *(v52 + 12) = 2082;
        v97 = v111 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
        sub_1DAD648F8(v111 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v118);
        v59 = v119;
        v60 = v120;
        __swift_project_boxed_opaque_existential_1(v118, v119);
        v61 = (*(v60 + 16))(v59, v60);
        v62 = v105;
        sub_1DAED0C3C();

        v63 = sub_1DAED0DBC();
        (*v104)(v62, v106);
        __swift_destroy_boxed_opaque_existential_1Tm(v118);
        v64 = sub_1DAED22BC();
        v66 = v65;

        v67 = sub_1DAD6482C(v64, v66, &v121);

        *(v52 + 14) = v67;
        v99 = v52;
        *(v52 + 22) = 2082;
        v68 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
        v69 = v111;
        swift_beginAccess();
        v70 = v69 + v68;
        v71 = v107;
        sub_1DAD6495C(v70, v107, &unk_1ECC07D30, &unk_1DAED57E0);
        v72 = v108;
        sub_1DAD6495C(v71, v108, &unk_1ECC07D30, &unk_1DAED57E0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v74 = v71;
        }

        else
        {
          v74 = v72;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v75 = v72;
        }

        else
        {
          v75 = v71;
        }

        v76 = 0x6C6F686563616C50;
        if (EnumCaseMultiPayload != 1)
        {
          v76 = 0x7974706D45;
        }

        v77 = 0xEB00000000726564;
        if (EnumCaseMultiPayload != 1)
        {
          v77 = 0xE500000000000000;
        }

        v78 = EnumCaseMultiPayload == 0;
        if (EnumCaseMultiPayload)
        {
          v79 = v74;
        }

        else
        {
          v79 = v71;
        }

        if (v78)
        {
          v80 = 1702259020;
        }

        else
        {
          v72 = v75;
          v80 = v76;
        }

        if (v78)
        {
          v81 = 0xE400000000000000;
        }

        else
        {
          v81 = v77;
        }

        sub_1DAD64398(v79, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD64398(v72, &unk_1ECC07D30, &unk_1DAED57E0);
        v82 = sub_1DAD6482C(v80, v81, &v121);

        v83 = v99;
        *(v99 + 24) = v82;
        *(v83 + 32) = 2082;
        v84 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
        v85 = v111;
        swift_beginAccess();
        v118[0] = *(v85 + v84);
        sub_1DADFCBBC();
        v86 = sub_1DAED237C();
        v88 = sub_1DAD6482C(v86, v87, &v121);

        *(v83 + 34) = v88;
        *(v83 + 42) = 2082;
        sub_1DAD648F8(v97, v115);
        v89 = v116;
        v14 = v117;
        __swift_project_boxed_opaque_existential_1(v115, v116);
        v90 = (*(v14 + 2))(v89, v14);
        sub_1DAED0C5C();

        __swift_destroy_boxed_opaque_existential_1Tm(v115);
        v91 = v119;
        sub_1DAD64398(v118, &unk_1ECC08880, &unk_1DAED6F50);
        if (v91)
        {
          v92 = 5457241;
        }

        else
        {
          v92 = 20302;
        }

        if (v91)
        {
          v93 = 0xE300000000000000;
        }

        else
        {
          v93 = 0xE200000000000000;
        }

        v94 = sub_1DAD6482C(v92, v93, &v121);

        *(v83 + 44) = v94;
        v95 = v101;
        _os_log_impl(&dword_1DAD61000, v101, v102, "Scene[%{public}s-%{public}s] currentViewEntry=%{public}s, sequenceNumber=%{public}s, hasTimelineContentWired=%{public}s", v83, 0x34u);
        a2 = v98;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](a2, -1, -1);
        MEMORY[0x1E127F100](v83, -1, -1);
        swift_unknownObjectRelease();

        v8 = a1;
        v11 = v114;
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

LABEL_32:
    v8 = a1;
  }

LABEL_15:
  v42 = sub_1DAED24BC();
  if (v42)
  {
    v115[0] = v42;
    swift_dynamicCast();
    a2 = v118[0];
    a1 = v8;
    v43 = v11;
    if (v118[0])
    {
      goto LABEL_23;
    }
  }

  return sub_1DAD70B20(v34);
}

void sub_1DADFBE74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v46 = &v38 - v1;
  v47 = sub_1DAED12CC();
  v2 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  v6 = sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
  sub_1DAD8D6A4(&qword_1EE00A890, qword_1EE00A898, 0x1E69DCE70, MEMORY[0x1E69E81B8]);
  v7 = sub_1DAED1F6C();

  v49 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1DAED242C();
    sub_1DAED1F9C();
    v7 = v57;
    v8 = v58;
    v9 = v59;
    v10 = v60;
    v11 = v61;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);
  }

  v48 = v9;
  v15 = (v9 + 64) >> 6;
  v45 = (v2 + 48);
  v43 = (v2 + 32);
  v42 = (v2 + 8);
  while (1)
  {
    if (v7 < 0)
    {
      v21 = sub_1DAED24BC();
      if (!v21 || (*&v51 = v21, swift_dynamicCast(), v20 = v54[0], v18 = v10, v19 = v11, !v54[0]))
      {
LABEL_40:
        sub_1DAD70B20(v7);
        return;
      }

      goto LABEL_18;
    }

    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_40;
    }

LABEL_18:
    if ([v20 delegate])
    {
      v50 = v19;
      type metadata accessor for WidgetSceneDelegate();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {

        goto LABEL_38;
      }

      v23 = v22;
      BSDispatchQueueAssertMain();
      v24 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
      if (!v24)
      {
        swift_unknownObjectRelease();

        goto LABEL_39;
      }

      v25 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      v11 = v50;
      if (v25 && (v26 = *(v25 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator)) != 0)
      {
        v27 = v26 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
        swift_beginAccess();
        if (*(v27 + 24))
        {
          sub_1DAD648F8(v27, &v51);
          if (*(&v52 + 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v29 = *v27;
          v30 = *(v27 + 16);
          v53 = *(v27 + 32);
          v51 = v29;
          v52 = v30;
          if (*(&v30 + 1))
          {
LABEL_25:
            sub_1DAD657D8(&v51, v54);
            v28 = v26[6];
            *(&v40 + 1) = v26[5];
            v39 = v28;
            __swift_project_boxed_opaque_existential_1(v26 + 2, *(&v40 + 1));
            *&v40 = *(v28 + 8);
            v41 = v26;

            (v40)(&v51, *(&v40 + 1), v39);
            if (v53)
            {
            }

            else
            {
              v40 = v52;
              v32 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
              v33 = v41;
              swift_beginAccess();
              v34 = v33 + v32;
              v35 = v46;
              sub_1DAD6495C(v34, v46, &qword_1ECC08850, &qword_1DAED7280);
              v36 = v47;
              if ((*v45)(v35, 1, v47) == 1)
              {

                sub_1DAD64398(v35, &qword_1ECC08850, &qword_1DAED7280);
              }

              else
              {
                v37 = v44;
                (*v43)(v44, v35, v36);
                v39 = v56;
                __swift_project_boxed_opaque_existential_1(v54, v55);
                sub_1DAED117C();
                v39 = v56;
                __swift_project_boxed_opaque_existential_1(v54, v55);
                sub_1DAED118C();
                v39 = v56;
                __swift_project_boxed_opaque_existential_1(v54, v55);
                sub_1DAED116C();
                *&v40 = v56;
                __swift_project_boxed_opaque_existential_1(v54, v55);
                sub_1DAED119C();

                (*v42)(v37, v47);
              }
            }

            v31 = v54;
            goto LABEL_37;
          }
        }

        if (*(&v52 + 1))
        {
          v31 = &v51;
LABEL_37:
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
        }

LABEL_38:
        swift_unknownObjectRelease();
LABEL_39:
        v10 = v18;
        v11 = v50;
      }

      else
      {
        swift_unknownObjectRelease();

        v10 = v18;
      }
    }

    else
    {

      v10 = v18;
      v11 = v19;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_40;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_1DADFC580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_1DAED18CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADFCB1C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_1DAED18CC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_1DADFCBBC()
{
  result = qword_1EE005418;
  if (!qword_1EE005418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005418);
  }

  return result;
}

double sub_1DADFCC28(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08928, &qword_1DAED73A0);
  v5 = *(v4 - 8);
  *&result = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v9 = &v13 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);
  if (v10)
  {
    if (v10 == a1)
    {
      return result;
    }

    v11 = v6;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
    sub_1DAECEF0C();
    swift_endAccess();

    swift_allocObject();
    swift_weakInit();
    sub_1DAD64B94(&qword_1ECC08938, &qword_1ECC08928, &qword_1DAED73A0, MEMORY[0x1E695C068]);
    v12 = sub_1DAECF00C();

    (*(v5 + 8))(v9, v11);
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v12 = 0;
  }

  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintedViewModelSubscription) = v12;

  return result;
}

double sub_1DADFCE10(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters);
    *(Strong + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters) = v2;

    v7 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v2;
    v9 = v2;

    (*(*v5 + 448))();
  }

  return result;
}

void sub_1DADFCEF0(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata))
  {
    sub_1DAECEEBC();
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;
  }
}

uint64_t WatchComplicationsLiveWidgetViewModel.init(widgetViewModel:metrics:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088A8, &qword_1DAED72A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - v7;
  v8 = sub_1DAED0DDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__subscriptions) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintedViewModelSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata) = 0;
  v12 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_snapshotMetadataPublisher;
  sub_1DAECEEDC();
  swift_allocObject();
  *(v2 + v12) = sub_1DAECEECC();
  v13 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v14 = *(v39 - 8);
  v38 = *(v14 + 56);
  v40 = v14 + 56;
  v38(v3 + v13, 1, 1, v39);
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters) = 0;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel) = a1;

  v37 = a2;
  v15 = WatchComplicationsWidgetViewModel.init(metrics:)(v37);
  sub_1DAD648F8(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v43);
  v17 = v44;
  v16 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v18 = *(v16 + 16);
  swift_retain_n();
  v19 = v18(v17, v16);
  sub_1DAED0C3C();

  v20 = sub_1DAED0DBC();
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  v21 = [v20 family];

  v22 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  v23 = swift_beginAccess();
  *(v15 + v22) = v21;
  sub_1DAEAFEE0(v23);

  v24 = v37;
  [v37 size];
  v26 = v25;
  v28 = v27;
  v29 = (v15 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
  v30 = swift_beginAccess();
  *v29 = v26;
  v29[1] = v28;
  sub_1DAEAFEE0(v30);

  v42 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);
  v31 = swift_allocObject();
  swift_weakInit();

  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
  sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780, MEMORY[0x1E695BED8]);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v33 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  v34 = v41;
  sub_1DAD6495C(a1 + v33, v41, &unk_1ECC07D30, &unk_1DAED57E0);
  v38(v34, 0, 1, v39);
  v35 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry;
  swift_beginAccess();
  sub_1DAE000F0(v34, v15 + v35);
  swift_endAccess();
  sub_1DADFDCDC();

  return v15;
}

double sub_1DADFD4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088A8, &qword_1DAED72A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(a3 + v10, v6, &unk_1ECC07D30, &unk_1DAED57E0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    v12 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry;
    swift_beginAccess();
    sub_1DAE000F0(v6, v9 + v12);
    swift_endAccess();
    sub_1DADFDCDC();
  }

  return result;
}

void sub_1DADFD638(void (**a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v65 = a1;
  v2 = sub_1DAECEB5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088C0, &qword_1DAED72A8);
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v53 = (&v52 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088C8, &unk_1DAED72B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v56 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel);
  v22 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  v66 = v20;
  sub_1DAD6495C(v21 + v22, v20, &qword_1ECC07CE8, &qword_1DAED6F60);
  v23 = 0;
  v24 = v64;
  v25 = *v65;
  v52 = v3 + 16;
  v26 = *(v25 + 2);
  v64 += 6;
  v65 = (v24 + 7);
  v54 = v3;
  v61 = (v3 + 8);
  v62 = (v3 + 32);
  v27 = v25;
  v59 = v13;
  v60 = v10;
  v57 = v2;
  v58 = v25;
  for (i = v26; ; v26 = i)
  {
    if (v23 == v26)
    {
      v30 = 1;
      v23 = v26;
      goto LABEL_10;
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v23 >= *(v27 + 2))
    {
      goto LABEL_21;
    }

    v32 = v53;
    v31 = v54;
    v33 = v27 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
    v34 = *(v6 + 48);
    *v53 = v23;
    (*(v31 + 16))(v32 + v34, v33, v2);
    sub_1DAD7C48C(v32, v10, &qword_1ECC088C0, &qword_1DAED72A8);
    v30 = 0;
    ++v23;
LABEL_10:
    (*v65)(v10, v30, 1, v6);
    sub_1DAD7C48C(v10, v13, &qword_1ECC088C8, &unk_1DAED72B0);
    if ((*v64)(v13, 1, v6) == 1)
    {
      sub_1DAD64398(v66, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }

    (*v62)(v5, &v13[*(v6 + 48)], v2);
    v35 = sub_1DAECEB2C();
    if (v35)
    {
      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      if (v36)
      {
        v37 = v36;
        v38 = v55;
        sub_1DAD6495C(v66, v55, &qword_1ECC07CE8, &qword_1DAED6F60);
        v39 = sub_1DAECDCEC();
        v40 = *(v39 - 8);
        LODWORD(v38) = (*(v40 + 48))(v38, 1, v39);
        v41 = v35;
        v42 = 0;
        if (v38 != 1)
        {
          v43 = v55;
          v42 = sub_1DAECDC5C();
          (*(v40 + 8))(v43, v39);
        }

        [v37 setRelativeToDate_];

        v13 = v59;
        v10 = v60;
        v27 = v58;
      }

      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (v44)
      {
        v45 = v44;
        v46 = v56;
        sub_1DAD6495C(v66, v56, &qword_1ECC07CE8, &qword_1DAED6F60);
        v47 = sub_1DAECDCEC();
        v48 = *(v47 - 8);
        LODWORD(v46) = (*(v48 + 48))(v46, 1, v47);
        v49 = v35;
        v50 = 0;
        if (v46 != 1)
        {
          v51 = v56;
          v50 = sub_1DAECDC5C();
          (*(v48 + 8))(v51, v47);
        }

        [v45 setOverrideDate_];

        v13 = v59;
        v10 = v60;
        v27 = v58;
      }

      v28 = sub_1DAECDCEC();
      [v35 setPaused_];
      v2 = v57;
    }

    v29 = sub_1DAECEB3C();

    (*v61)(v5, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1DADFDCDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v147 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v154 = &v135 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v153 = &v135 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v145 = &v135 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v141 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v135 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v135 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v155 = &v135 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v144 = &v135 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v135 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v140 = &v135 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v156 = &v135 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v138 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v152 = &v135 - v31;
  v148 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v136 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v149 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v150 = &v135 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v151 = &v135 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088A8, &qword_1DAED72A0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v135 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v135 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E0, &qword_1DAED72D8);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v146 = (&v135 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v135 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v135 - v50;
  v52 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v52, v39, &qword_1ECC088A8, &qword_1DAED72A0);
  v53 = *(v41 + 48);
  if (v53(v39, 1, v40) == 1)
  {
    v54 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel);
    v55 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v54 + v55, v43, &unk_1ECC07D30, &unk_1DAED57E0);
    if (v53(v39, 1, v40) != 1)
    {
      sub_1DAD64398(v39, &qword_1ECC088A8, &qword_1DAED72A0);
    }
  }

  else
  {
    sub_1DAD7C48C(v39, v43, &unk_1ECC07D30, &unk_1DAED57E0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v51;
  v58 = v48;
  v59 = v153;
  if (EnumCaseMultiPayload)
  {
    v60 = v154;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1DAE00290(v43, v57, type metadata accessor for DefaultWidgetLiveViewEntry);
      v61 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
      (*(*(v61 - 8) + 56))(v57, 0, 1, v61);
    }

    else
    {
      v61 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
      (*(*(v61 - 8) + 56))(v57, 1, 1, v61);
      sub_1DAD64398(v43, &unk_1ECC07D30, &unk_1DAED57E0);
    }
  }

  else
  {
    sub_1DAE00290(v43, v51, type metadata accessor for DefaultWidgetLiveViewEntry);
    v61 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    (*(*(v61 - 8) + 56))(v51, 0, 1, v61);
    v60 = v154;
  }

  sub_1DAD6495C(v57, v48, &qword_1ECC088E0, &qword_1DAED72D8);
  type metadata accessor for DefaultWidgetLiveViewEntry(0);
  if ((*(*(v61 - 8) + 48))(v48, 1, v61) == 1)
  {
    v62 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel) = 0;
    sub_1DADFCC28(v62);

    v63 = sub_1DAECFF0C();
    v64 = *(*(v63 - 8) + 56);
    v65 = v147;
    v64(v147, 1, 1, v63);
    v66 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
    swift_beginAccess();
    sub_1DAE00160(v65, v1 + v66);
    v67 = swift_endAccess();
    sub_1DAEAFEE0(v67);
    sub_1DAD64398(v65, &unk_1ECC0A680, &unk_1DAED72C0);
    v64(v65, 1, 1, v63);
    v68 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText;
    swift_beginAccess();
    sub_1DAE00160(v65, v1 + v68);
    v69 = swift_endAccess();
    sub_1DAEAFEE0(v69);
    sub_1DAD64398(v65, &unk_1ECC0A680, &unk_1DAED72C0);
    v70 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
    v71 = swift_beginAccess();
    *(v1 + v70) = 2;
    sub_1DAEAFEE0(v71);
    goto LABEL_40;
  }

  v72 = v146;
  sub_1DAD6495C(v48, v146, &qword_1ECC088E0, &qword_1DAED72D8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v80 = *v72;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v82 = *(v81 + 64);
    v83 = v151;
    sub_1DAE00290(v72 + *(v81 + 48), v151, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v84 = v72 + v82;
    v85 = v152;
    sub_1DAD7C48C(v84, v152, &qword_1ECC088D8, &qword_1DAED72D0);
    v86 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel) = v80;
    swift_retain_n();
    sub_1DADFCC28(v86);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    v87 = v157;
    [v157 fraction];
    v89 = v88;

    if (v89 <= 0.5)
    {
      v90 = v138;
      sub_1DAD6495C(v85, v138, &qword_1ECC088D8, &qword_1DAED72D0);
      v96 = *(v136 + 48);
      v97 = v148;
      v98 = v96(v90, 1, v148);
      v91 = v150;
      if (v98 == 1)
      {
        sub_1DAE0022C(v83, v150);
        if (v96(v90, 1, v97) != 1)
        {
          sub_1DAD64398(v90, &qword_1ECC088D8, &qword_1DAED72D0);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v90 = v138;
      sub_1DAE0022C(v83, v138);
      (*(v136 + 56))(v90, 0, 1, v148);
      v91 = v150;
    }

    sub_1DAE00290(v90, v91, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
LABEL_24:
    v99 = v156;
    sub_1DAED194C();
    v100 = v140;
    sub_1DAD6495C(v99, v140, &qword_1ECC088D0, &qword_1DAEDE260);
    v101 = sub_1DAED165C();
    v102 = *(v101 - 8);
    v103 = *(v102 + 48);
    if (v103(v100, 1, v101) == 1)
    {
      sub_1DAD64398(v100, &qword_1ECC088D0, &qword_1DAEDE260);
      v104 = sub_1DAECFF0C();
      v105 = v143;
      (*(*(v104 - 8) + 56))(v143, 1, 1, v104);
    }

    else
    {
      v105 = v143;
      sub_1DAED160C();
      (*(v102 + 8))(v100, v101);
    }

    v110 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
    swift_beginAccess();
    sub_1DAE00160(v105, v1 + v110);
    v111 = swift_endAccess();
    sub_1DAEAFEE0(v111);
    sub_1DAD64398(v105, &unk_1ECC0A680, &unk_1DAED72C0);
    v112 = v142;
    sub_1DAD6495C(v156, v142, &qword_1ECC088D0, &qword_1DAEDE260);
    if (v103(v112, 1, v101) == 1)
    {
      sub_1DAD64398(v112, &qword_1ECC088D0, &qword_1DAEDE260);
      v113 = sub_1DAECFF0C();
      v114 = v145;
      (*(*(v113 - 8) + 56))(v145, 1, 1, v113);
    }

    else
    {
      v114 = v145;
      sub_1DAED15FC();
      (*(v102 + 8))(v112, v101);
    }

    v118 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText;
    swift_beginAccess();
    sub_1DAE00160(v114, v1 + v118);
    v119 = swift_endAccess();
    sub_1DAEAFEE0(v119);
    sub_1DAD64398(v114, &unk_1ECC0A680, &unk_1DAED72C0);
    v120 = v144;
    sub_1DAD6495C(v156, v144, &qword_1ECC088D0, &qword_1DAEDE260);
    if (v103(v120, 1, v101) == 1)
    {
      sub_1DAD64398(v120, &qword_1ECC088D0, &qword_1DAEDE260);
      v121 = 2;
    }

    else
    {
      v121 = sub_1DAED161C();
      (*(v102 + 8))(v120, v101);
    }

    v122 = v152;
    v123 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
    v124 = swift_beginAccess();
    *(v1 + v123) = v121;
    sub_1DAEAFEE0(v124);

    sub_1DAD64398(v156, &qword_1ECC088D0, &qword_1DAEDE260);
    sub_1DAE001D0(v150);
    sub_1DAD64398(v122, &qword_1ECC088D8, &qword_1DAED72D0);
    v117 = &v159;
    goto LABEL_39;
  }

  sub_1DAE00290(v72, v149, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  v73 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel) = 0;
  sub_1DADFCC28(v73);

  v74 = v155;
  sub_1DAED194C();
  v75 = v137;
  sub_1DAD6495C(v74, v137, &qword_1ECC088D0, &qword_1DAEDE260);
  v76 = sub_1DAED165C();
  v77 = *(v76 - 8);
  v78 = *(v77 + 48);
  if (v78(v75, 1, v76) == 1)
  {
    sub_1DAD64398(v75, &qword_1ECC088D0, &qword_1DAEDE260);
    v79 = sub_1DAECFF0C();
    (*(*(v79 - 8) + 56))(v59, 1, 1, v79);
  }

  else
  {
    sub_1DAED160C();
    (*(v77 + 8))(v75, v76);
  }

  v92 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
  swift_beginAccess();
  sub_1DAE00160(v59, v1 + v92);
  v93 = swift_endAccess();
  sub_1DAEAFEE0(v93);
  sub_1DAD64398(v59, &unk_1ECC0A680, &unk_1DAED72C0);
  v94 = v139;
  sub_1DAD6495C(v155, v139, &qword_1ECC088D0, &qword_1DAEDE260);
  if (v78(v94, 1, v76) == 1)
  {
    sub_1DAD64398(v94, &qword_1ECC088D0, &qword_1DAEDE260);
    v95 = sub_1DAECFF0C();
    (*(*(v95 - 8) + 56))(v60, 1, 1, v95);
  }

  else
  {
    sub_1DAED15FC();
    (*(v77 + 8))(v94, v76);
  }

  v106 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText;
  swift_beginAccess();
  sub_1DAE00160(v60, v1 + v106);
  v107 = swift_endAccess();
  sub_1DAEAFEE0(v107);
  sub_1DAD64398(v60, &unk_1ECC0A680, &unk_1DAED72C0);
  v108 = v141;
  sub_1DAD6495C(v155, v141, &qword_1ECC088D0, &qword_1DAEDE260);
  if (v78(v108, 1, v76) == 1)
  {
    sub_1DAD64398(v108, &qword_1ECC088D0, &qword_1DAEDE260);
    v109 = 2;
  }

  else
  {
    v109 = sub_1DAED161C();
    (*(v77 + 8))(v108, v76);
  }

  v115 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  v116 = swift_beginAccess();
  *(v1 + v115) = v109;
  sub_1DAEAFEE0(v116);
  sub_1DAD64398(v155, &qword_1ECC088D0, &qword_1DAEDE260);
  v117 = &v158;
LABEL_39:
  sub_1DAE001D0(*(v117 - 32));
LABEL_40:
  sub_1DAD64398(v58, &qword_1ECC088E0, &qword_1DAED72D8);
  v125 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters);
  v126 = v125;
  if (!v125)
  {
    v127 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel);
    v128 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
    swift_beginAccess();
    v126 = *(v127 + v128);
    v129 = v126;
  }

  v130 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v131 = *(v1 + v130);
  *(v1 + v130) = v126;
  v132 = v125;

  sub_1DAEA9F94();
  sub_1DAEA8A68(v133);
  return sub_1DAD64398(v57, &qword_1ECC088E0, &qword_1DAED72D8);
}

uint64_t sub_1DADFF0CC()
{
  v70[7] = *MEMORY[0x1E69E9840];
  v1 = sub_1DAECEBCC();
  v64 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1DAECEBEC();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECFF0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  v16 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = [objc_allocWithZone(MEMORY[0x1E69944E0]) init];
  sub_1DAEA888C(v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    v20 = sub_1DAECEC4C();
    (*(*(v20 - 8) + 8))(v18, v20);
    v21 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v21, v15, &unk_1ECC0A680, &unk_1DAED72C0);
    if ((*(v8 + 48))(v15, 1, v7))
    {
      sub_1DAD64398(v15, &unk_1ECC0A680, &unk_1DAED72C0);
      v22 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v35 = v63;
      (*(v8 + 16))(v63, v15, v7);
      sub_1DAD64398(v15, &unk_1ECC0A680, &unk_1DAED72C0);
      v22 = sub_1DAEAB598();
      (*(v8 + 8))(v35, v7);
    }

    v31 = v68;
LABEL_13:
    v70[0] = v22;
    sub_1DADFD638(v70);
    v36 = sub_1DADFFAB4(v22);

    if (v36)
    {
      sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
      v37 = sub_1DAED1E6C();
    }

    else
    {
      v37 = 0;
    }

    [v31 setLabelData_];

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v33 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
    swift_beginAccess();
    v31 = v68;
    if (*(v0 + v33) != 12)
    {
      goto LABEL_17;
    }

    v34 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v34, v12, &unk_1ECC0A680, &unk_1DAED72C0);
    if ((*(v8 + 48))(v12, 1, v7))
    {
      sub_1DAD64398(v12, &unk_1ECC0A680, &unk_1DAED72C0);
      v22 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v47 = v63;
      (*(v8 + 16))(v63, v12, v7);
      sub_1DAD64398(v12, &unk_1ECC0A680, &unk_1DAED72C0);
      v22 = sub_1DAEAB598();
      (*(v8 + 8))(v47, v7);
    }

    goto LABEL_13;
  }

  v24 = v66;
  v23 = v67;
  v25 = v65;
  (*(v66 + 32))(v67, v18, v65);
  sub_1DAEAA1E8(v3);
  v26 = v64;
  v27 = (*(v64 + 88))(v3, v1);
  if (v27 == *MEMORY[0x1E6996050])
  {
    (*(v26 + 96))(v3, v1);
    v28 = *v3;
    v29 = sub_1DAECEBDC();
    v30 = sub_1DADFFAB4(v29);

    v31 = v68;
    if (v30)
    {
      sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
      v32 = sub_1DAED1E6C();
    }

    else
    {
      v32 = 0;
    }

    [v31 setOuterLabelData_];

    v45 = sub_1DADFFAB4(v28);

    if (v45)
    {
      sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
      v46 = sub_1DAED1E6C();
    }

    else
    {
      v46 = 0;
    }

    v48 = v67;
    [v31 setLabelData_];

    (*(v24 + 8))(v48, v25);
  }

  else
  {
    v31 = v68;
    if (v27 == *MEMORY[0x1E6996048])
    {
      (*(v26 + 96))(v3, v1);
      v39 = *v3;
      v40 = v3[1];
      v41 = v3[2];
      v42 = sub_1DAECEBDC();
      v43 = sub_1DADFFAB4(v42);

      if (v43)
      {
        sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
        v44 = sub_1DAED1E6C();
      }

      else
      {
        v44 = 0;
      }

      [v31 setOuterLabelData_];

      v49 = objc_opt_self();
      v70[0] = 0;
      v50 = [v49 archivedDataWithRootObject:v39 requiringSecureCoding:1 error:v70];
      v51 = v70[0];
      if (v50)
      {
        v52 = sub_1DAECDC1C();
        v54 = v53;

        v55 = sub_1DAECDC0C();
        v56 = sub_1DAD70BB4(v52, v54);
      }

      else
      {
        v57 = v51;
        v58 = sub_1DAECDB1C();

        swift_willThrow();
        v55 = 0;
      }

      [v31 setGaugeProviderData_];

      v59 = sub_1DADFFAB4(v40);

      if (v59)
      {
        sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
        v60 = sub_1DAED1E6C();
      }

      else
      {
        v60 = 0;
      }

      [v31 setGaugeMinimumLabelData_];

      v61 = sub_1DADFFAB4(v41);

      if (v61)
      {
        sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
        v62 = sub_1DAED1E6C();
      }

      else
      {
        v62 = 0;
      }

      [v31 setGaugeMaximumLabelData_];

      (*(v66 + 8))(v23, v25);
    }

    else
    {
      (*(v24 + 8))(v23, v25);
      (*(v26 + 8))(v3, v1);
    }
  }

LABEL_17:
  [v31 copy];
  sub_1DAED238C();

  swift_unknownObjectRelease();
  sub_1DAD674D4(0, &qword_1ECC08918, 0x1E6994520);
  swift_dynamicCast();
  return v69;
}

unint64_t sub_1DADFFAB4(uint64_t a1)
{
  v2 = sub_1DAECEB5C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1E69E7CC0];
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v8 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    v31 = MEMORY[0x1E69E7CC0];
    v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = (v9 - 8);
    v10(v6, v11, v2, v5);
    while (1)
    {
      v15 = sub_1DAECEB4C();
      if (v16 >> 60 == 15)
      {
        (*v13)(v6, v2);
      }

      else
      {
        v17 = v15;
        v18 = v16;
        v19 = objc_allocWithZone(MEMORY[0x1E6994528]);
        v20 = v12;
        v21 = v2;
        v22 = v8;
        v23 = v9;
        v24 = sub_1DAECDC0C();
        v25 = [v19 initWithData_];

        v9 = v23;
        v8 = v22;
        v2 = v21;
        v12 = v20;
        v26 = v18;
        v6 = v32;
        v13 = v33;
        v27 = sub_1DADAF698(v17, v26);
        v28 = (*v13)(v6, v2, v27);
        if (v25)
        {
          MEMORY[0x1E127DAD0](v28);
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DAED1E9C();
            v13 = v33;
          }

          sub_1DAED1EBC();
          v31 = v34;
        }
      }

      v11 += v12;
      if (!--v7)
      {
        break;
      }

      v8(v6, v11, v2, v14);
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v29 = v31;
  if (v31 >> 62)
  {
    if (sub_1DAED247C())
    {
      return v29;
    }

    goto LABEL_14;
  }

  if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:

    return 0;
  }

  return v29;
}

void sub_1DADFFD68()
{

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry, &qword_1ECC088A8, &qword_1DAED72A0);
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters);
}

uint64_t WatchComplicationsLiveWidgetViewModel.deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style, &qword_1ECC088F0, qword_1DAED7330);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata, &unk_1ECC0A680, &unk_1DAED72C0);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText, &unk_1ECC0A680, &unk_1DAED72C0);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration, &qword_1ECC088F8, &qword_1DAEDE860);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry, &qword_1ECC088A8, &qword_1DAED72A0);

  return v0;
}

uint64_t WatchComplicationsLiveWidgetViewModel.__deallocating_deinit()
{
  WatchComplicationsLiveWidgetViewModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1DADFFFF0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v3;
}

uint64_t sub_1DAE00070(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1DAECEF4C();
}

uint64_t sub_1DAE000F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088A8, &qword_1DAED72A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE00160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE001D0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAE0022C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE00290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for WatchComplicationsLiveWidgetViewModel(uint64_t a1)
{
  result = qword_1ECC08900;
  if (!qword_1ECC08900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE0034C(uint64_t a1)
{
  sub_1DAE00434(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DAE00434(uint64_t a1)
{
  if (!qword_1ECC08910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC07D30, &unk_1DAED57E0);
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC08910);
    }
  }
}

id sub_1DAE006B8(void *a1)
{
  v2 = v1;
  v4 = [a1 _appearState];
  [a1 willMoveToParentViewController_];
  if (v4 == 2)
  {
    [a1 beginAppearanceTransition:0 animated:0];
  }

  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result removeFromSuperview];

    if (v4 == 2)
    {
      [a1 endAppearanceTransition];
    }

    return [a1 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DAE007E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1DAE00870(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1DAD690DC();
  }
}

id sub_1DAE0097C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UserInterfaceStyleSceneComponentProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DAE00A48()
{
  result = qword_1EE00ABA8;
  if (!qword_1EE00ABA8)
  {
    sub_1DAECF0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00ABA8);
  }

  return result;
}

double sub_1DAE00AA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene);
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene) = 0;

  v2 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__environmentSubscriber;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__environmentSubscriber))
  {

    sub_1DAECEE2C();
  }

  *(v0 + v2) = 0;

  return result;
}

void sub_1DAE00B8C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
    sub_1DAD7CAF4();
    sub_1DAED1F9C();
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v18;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_1DAED24BC() || (sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70), swift_dynamicCast(), (v12 = v13) == 0))
    {
LABEL_21:
      sub_1DAD70B20(v2);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1E127DAD0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_12:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_1DAE00DF8()
{
  result = [objc_opt_self() chs_isWatchFacesWidgetRendererProcess];
  byte_1ECC08A90 = result;
  return result;
}

double sub_1DAE00E2C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAE00E8C(a1);
  }

  return result;
}

void *sub_1DAE00E8C(void *a1)
{
  v2 = sub_1DAED1F2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v57 = v5;
    v58 = v3;
    v59 = v2;
    v55 = result;
    v7 = objc_opt_self();
    v56 = a1;
    v8 = [v7 sharedApplication];
    v9 = [v8 connectedScenes];

    sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
    sub_1DAD7CAF4();
    v10 = sub_1DAED1F6C();

    sub_1DAE00B8C(v10, v11);
    v13 = v12;

    v63[0] = MEMORY[0x1E69E7CC0];
    if (v13 >> 62)
    {
      goto LABEL_17;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v60; v14; i = v60)
    {
      v16 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E127E1F0](v16, v13);
        }

        else
        {
          if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v17 = *(v13 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = [v17 _FBSScene];
        v21 = [v20 settings];

        LOBYTE(v20) = [v21 isForeground];
        if (v20)
        {
          sub_1DAED25CC();
          sub_1DAED25FC();
          sub_1DAED260C();
          sub_1DAED25DC();
        }

        else
        {
        }

        ++v16;
        if (v19 == v14)
        {
          v22 = v63[0];
          i = v60;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v14 = sub_1DAED247C();
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_19:

    if (qword_1EE00AC60 != -1)
    {
LABEL_46:
      swift_once();
    }

    v23 = sub_1DAECEDEC();
    __swift_project_value_buffer(v23, qword_1EE011B88);

    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED203C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v63[0] = v27;
      *v26 = 136446210;
      sub_1DAE015F4();
      v30 = sub_1DAD6482C(v28, v29, v63);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DAD61000, v24, v25, "%{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E127F100](v27, -1, -1);
      MEMORY[0x1E127F100](v26, -1, -1);
    }

    swift_beginAccess();
    v31 = 0;
    v32 = i[5];
    v33 = 1 << *(v32 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v32 + 64);
    v36 = (v33 + 63) >> 6;
    v37 = 0.0;
    if (v35)
    {
      while (1)
      {
        v38 = v31;
LABEL_30:
        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v37 = v37 + *(*(v32 + 56) + ((v38 << 9) | (8 * v39)));
        if (!v35)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
LABEL_26:
      v38 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v38 >= v36)
      {
        break;
      }

      v35 = *(v32 + 64 + 8 * v38);
      ++v31;
      if (v35)
      {
        v31 = v38;
        goto LABEL_30;
      }
    }

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v23, qword_1EE011748);
    swift_retain_n();
    swift_retain_n();
    v40 = v56;
    v41 = sub_1DAECEDCC();
    v42 = sub_1DAED202C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136447234;
      v45 = sub_1DAD8CE78(v55);
      v47 = sub_1DAD6482C(v45, v46, v62);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2050;
      v48 = v22 & 0x4000000000000000;
      if (v22 < 0 || v48)
      {
        v49 = sub_1DAED247C();
      }

      else
      {
        v49 = *(v22 + 16);
      }

      *(v43 + 14) = v49;

      *(v43 + 22) = 2050;
      *(v43 + 24) = i[6];
      *(v43 + 32) = 2050;
      *(v43 + 34) = v37;
      *(v43 + 42) = 2050;
      v50 = i[7];

      *(v43 + 44) = v50;

      _os_log_impl(&dword_1DAD61000, v41, v42, "BUG IN CLIENT OF CHRONO. Please verify your scene lifecyles. %{public}s Foreground scenes exceed area limit: scenes: %{public}ld (area limit=%{public}f, in use=%{public}f) (count limit=%{public}ld)", v43, 0x34u);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1E127F100](v44, -1, -1);
      MEMORY[0x1E127F100](v43, -1, -1);
    }

    else
    {

      v48 = v22 & 0x4000000000000000;
    }

    v62[0] = 0x3A746E756F43;
    v62[1] = 0xE600000000000000;
    v51 = v57;
    if (v22 < 0 || v48)
    {
      v52 = sub_1DAED247C();
    }

    else
    {
      v52 = *(v22 + 16);
    }

    sub_1DAED0ABC();
    v61 = v52;
    v53 = sub_1DAED287C();
    MEMORY[0x1E127DA50](v53);

    sub_1DAED0AAC();
    sub_1DAED0A9C();

    return (*(v58 + 8))(v51, v59);
  }

  return result;
}

void sub_1DAE015F4()
{
  v77 = sub_1DAECDB3C();
  v73[0] = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v73 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v83 = 10;
  v84 = 0xE100000000000000;
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
  sub_1DAD7CAF4();
  v3 = sub_1DAED1F6C();

  v4 = 0;
  sub_1DAE00B8C(v3, v5);
  v7 = v6;
  v74 = 0;

  *&v80 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DAED247C())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v4 = &off_1E85EB000;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x1E127E1F0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = [v11 _FBSScene];
      v15 = [v14 settings];

      LOBYTE(v14) = [v15 isForeground];
      if (v14)
      {
        sub_1DAED25CC();
        sub_1DAED25FC();
        sub_1DAED260C();
        sub_1DAED25DC();
      }

      else
      {
      }

      ++v9;
    }

    while (v13 != i);
    v16 = 0;
    v4 = v80;
    *&v80 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v10)
      {
        v17 = MEMORY[0x1E127E1F0](v16, v7);
      }

      else
      {
        if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v17 = *(v7 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v17 _FBSScene];
      v21 = [v20 settings];

      LOBYTE(v20) = [v21 isForeground];
      if (v20)
      {
      }

      else
      {
        sub_1DAED25CC();
        sub_1DAED25FC();
        sub_1DAED260C();
        sub_1DAED25DC();
      }

      ++v16;
      if (v19 == i)
      {
        v22 = v4;
        v23 = v80;
        goto LABEL_30;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v22 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
LABEL_30:

  *&v80 = 0;
  *(&v80 + 1) = 0xE000000000000000;
  sub_1DAED256C();

  *&v80 = 0xD000000000000013;
  *(&v80 + 1) = 0x80000001DAEE2130;
  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    v24 = sub_1DAED247C();
  }

  else
  {
    v24 = *(v22 + 16);
  }

  *&v78[0] = v24;
  v25 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v25);

  MEMORY[0x1E127DA50](670249, 0xE300000000000000);
  if (v24)
  {
    *&v78[0] = MEMORY[0x1E69E7CC0];
    sub_1DAE02204(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_84;
    }

    v26 = 0;
    v27 = *&v78[0];
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1E127E1F0](v26, v22);
      }

      else
      {
        v28 = *(v22 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = sub_1DAD8CE78(v28);
      v32 = v31;

      *&v78[0] = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1DAE02204((v33 > 1), v34 + 1, 1);
        v27 = *&v78[0];
      }

      ++v26;
      *(v27 + 16) = v34 + 1;
      v35 = v27 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
    }

    while (v24 != v26);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  *&v78[0] = v27;

  v4 = v74;
  sub_1DADF9D80(v78);
  if (!v4)
  {

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
    v73[1] = sub_1DAE02284();
    v74 = v36;
    v37 = sub_1DAED1C8C();
    v39 = v38;

    MEMORY[0x1E127DA50](v37, v39);

    MEMORY[0x1E127DA50](2570, 0xE200000000000000);
    MEMORY[0x1E127DA50](v80, *(&v80 + 1));

    *&v80 = 0;
    *(&v80 + 1) = 0xE000000000000000;
    sub_1DAED256C();

    *&v80 = 0xD000000000000013;
    *(&v80 + 1) = 0x80000001DAEE2150;
    if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
    {
      v40 = sub_1DAED247C();
    }

    else
    {
      v40 = *(v23 + 16);
    }

    *&v78[0] = v40;
    v41 = sub_1DAED287C();
    MEMORY[0x1E127DA50](v41);

    MEMORY[0x1E127DA50](670249, 0xE300000000000000);
    if (!v40)
    {

      v43 = MEMORY[0x1E69E7CC0];
      goto LABEL_59;
    }

    *&v78[0] = MEMORY[0x1E69E7CC0];
    sub_1DAE02204(0, v40 & ~(v40 >> 63), 0);
    if ((v40 & 0x8000000000000000) == 0)
    {
      v42 = 0;
      v43 = *&v78[0];
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x1E127E1F0](v42, v23);
        }

        else
        {
          v44 = *(v23 + 8 * v42 + 32);
        }

        v45 = v44;
        v46 = sub_1DAD8CE78(v44);
        v48 = v47;

        *&v78[0] = v43;
        v50 = *(v43 + 16);
        v49 = *(v43 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1DAE02204((v49 > 1), v50 + 1, 1);
          v43 = *&v78[0];
        }

        ++v42;
        *(v43 + 16) = v50 + 1;
        v51 = v43 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
      }

      while (v40 != v42);

LABEL_59:
      *&v78[0] = v43;

      sub_1DADF9D80(v78);
      v52 = MEMORY[0x1E69E7CC0];

      v53 = sub_1DAED1C8C();
      v55 = v54;

      MEMORY[0x1E127DA50](v53, v55);

      MEMORY[0x1E127DA50](2570, 0xE200000000000000);
      MEMORY[0x1E127DA50](v80, *(&v80 + 1));

      v56 = *(v75 + 24);
      v82 = v52;
      v57 = v56;
      sub_1DAED1FEC();
      sub_1DAD66158(&qword_1EE00BD18, 255, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
      sub_1DAED234C();
      while (v81)
      {
        sub_1DADDC968(&v80, v78);
        sub_1DAD674D4(0, &qword_1EE005628, 0x1E6994548);
        if ((swift_dynamicCast() & 1) != 0 && v79)
        {
          MEMORY[0x1E127DAD0]();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DAED1E9C();
          }

          sub_1DAED1EBC();
          v52 = v82;
        }

        sub_1DAED234C();
      }

      (*(v73[0] + 8))(v76, v77);
      if (v52 >> 62)
      {
        v58 = sub_1DAED247C();
        if (v58)
        {
LABEL_69:
          *&v80 = MEMORY[0x1E69E7CC0];
          sub_1DAE02204(0, v58 & ~(v58 >> 63), 0);
          if ((v58 & 0x8000000000000000) == 0)
          {
            v59 = 0;
            v60 = v80;
            do
            {
              if ((v52 & 0xC000000000000001) != 0)
              {
                v61 = MEMORY[0x1E127E1F0](v59, v52);
              }

              else
              {
                v61 = *(v52 + 8 * v59 + 32);
              }

              v62 = v61;
              v63 = sub_1DAD8CE78(v61);
              v65 = v64;

              *&v80 = v60;
              v67 = *(v60 + 16);
              v66 = *(v60 + 24);
              if (v67 >= v66 >> 1)
              {
                sub_1DAE02204((v66 > 1), v67 + 1, 1);
                v60 = v80;
              }

              ++v59;
              *(v60 + 16) = v67 + 1;
              v68 = v60 + 16 * v67;
              *(v68 + 32) = v63;
              *(v68 + 40) = v65;
            }

            while (v58 != v59);

            goto LABEL_82;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v58 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v58)
        {
          goto LABEL_69;
        }
      }

      v60 = MEMORY[0x1E69E7CC0];
LABEL_82:
      *&v80 = v60;

      sub_1DADF9D80(&v80);

      v69 = sub_1DAED1C8C();
      v71 = v70;

      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      sub_1DAED256C();

      *&v80 = 0xD000000000000023;
      *(&v80 + 1) = 0x80000001DAEE2170;
      *&v78[0] = [*(v75 + 24) count];
      v72 = sub_1DAED287C();
      MEMORY[0x1E127DA50](v72);

      MEMORY[0x1E127DA50](670249, 0xE300000000000000);
      MEMORY[0x1E127DA50](v69, v71);

      MEMORY[0x1E127DA50](2570, 0xE200000000000000);
      MEMORY[0x1E127DA50](v80, *(&v80 + 1));

      return;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

  __break(1u);

  __break(1u);
}