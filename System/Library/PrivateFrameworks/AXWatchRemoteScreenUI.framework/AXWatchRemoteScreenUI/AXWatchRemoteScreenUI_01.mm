Swift::Void __swiftcall AXTwiceCompanionRootViewController.crownButtonLongPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F1610, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.sideButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000013, 0x800000023D6F1630, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.sideButtonLongPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000017, 0x800000023D6F1650, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t AXTwiceCompanionRootViewController.axActionPerform(action:value:bridgeElement:)(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a2;
  v26 = a1;
  v6 = sub_23D6EE620();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D6EE670();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v14 = sub_23D6EE660();
  v15 = sub_23D6EE810();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v24 = a3;
    v19 = v18;
    v28 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_23D6D3C38(0xD00000000000002CLL, 0x800000023D6F1670, &v28);
    _os_log_impl(&dword_23D6CB000, v14, v15, "[TWICE] %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v20 = v19;
    a3 = v24;
    MEMORY[0x23EEE9940](v20, -1, -1);
    MEMORY[0x23EEE9940](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  *v9 = v26;
  sub_23D6EDF00(v27, (v9 + 8), &qword_27E2E2B60, qword_23D6EFE00);
  *(v9 + 8) = sub_23D6D1D74(0, &unk_27E2E2B68, 0x277D73FF0);
  *(v9 + 5) = a3;
  (*(v7 + 104))(v9, *MEMORY[0x277CE7018], v6);
  v21 = a3;
  sub_23D6DF5FC(v9);
  return (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.pullToDismissViewController()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD00000000000001DLL, 0x800000023D6F16A0, &v16);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CE7058], v2);
  sub_23D6DF5FC(v5);
  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.stingButtonPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000014, 0x800000023D6F16C0, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.stingButtonLongPressed()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000018, 0x800000023D6F16E0, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall AXTwiceCompanionRootViewController.stingButtonKeycord()()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD000000000000014, 0x800000023D6F1700, &v19);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = [objc_opt_self() buttonRepresentationWithType_];
  if (v15)
  {
    *v5 = v15;
    v16 = v15;
    (*(v3 + 104))(v5, *MEMORY[0x277CE7008], v2);
    v17 = v16;
    sub_23D6DF5FC(v5);

    (*(v3 + 8))(v5, v2);
  }
}

id sub_23D6EC3C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a2[3];
  if (v8)
  {
    v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v11 = *(v8 - 8);
    MEMORY[0x28223BE20](v10);
    v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_23D6EE9F0();
    (*(v11 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(a2);
  }

  else
  {
    v14 = 0;
  }

  if (a4 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_23D6EE2E0();
    sub_23D6EDF68(a3, a4);
  }

  v16 = [v4 initWithAxAction:a1 withValue:v14 forElementRefData:v15];
  swift_unknownObjectRelease();

  return v16;
}

unint64_t sub_23D6EC554(uint64_t a1)
{
  v2 = sub_23D6EE8C0();

  return sub_23D6EC610(a1, v2);
}

unint64_t sub_23D6EC598(uint64_t a1, uint64_t a2)
{
  sub_23D6EEA20();
  sub_23D6EE750();
  v4 = sub_23D6EEA30();

  return sub_23D6EC6D8(a1, a2, v4);
}

unint64_t sub_23D6EC610(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D6EDCDC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEE8FF0](v9, a1);
      sub_23D6ED0B8(v9);
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

unint64_t sub_23D6EC6D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D6EEA00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23D6EC790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CD0, &qword_23D6F0120);
  v33 = v4;
  result = sub_23D6EE9C0();
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_23D6D43BC(v24, v34);
      }

      else
      {
        sub_23D6D42F0(v24, v34);
      }

      sub_23D6EEA20();
      sub_23D6EE750();
      result = sub_23D6EEA30();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23D6D43BC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_23D6ECA48(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23D6EC598(a2, a3);
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
      sub_23D6ECC04();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23D6EC790(v16, a4 & 1);
    v11 = sub_23D6EC598(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23D6EEA10();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_23D6D43BC(a1, v22);
  }

  else
  {
    sub_23D6ECB98(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_23D6ECB98(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23D6D43BC(a4, (a5[7] + 32 * a1));
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

void *sub_23D6ECC04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CD0, &qword_23D6F0120);
  v2 = *v0;
  v3 = sub_23D6EE9B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23D6D42F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23D6D43BC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

double sub_23D6ECDA8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = v3 * 5.0;
  v5 = [v0 mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v14 = v4 / CGRectGetWidth(v26);
  v15 = [v0 mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  Height = CGRectGetHeight(v27);
  return sqrt((0.0 - v14) * (0.0 - v14) + (0.0 - v4 / Height) * (0.0 - v4 / Height));
}

double sub_23D6ECEE0(unint64_t a1, unint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = mach_timebase_info(v8);
  result = -1.0;
  if (!v4)
  {
    v6 = a2 - a1;
    if (a2 < a1)
    {
      __break(1u);
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6 * v8[0].numer;
      if ((v6 * v8[0].numer) >> 64 == v7 >> 63)
      {
        if (v8[0].denom)
        {
          return (v7 / v8[0].denom) / 1000000.0;
        }

LABEL_11:
        __break(1u);
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t type metadata accessor for AXTwiceCompanionRootViewController(uint64_t a1)
{
  result = qword_27E2E2B78;
  if (!qword_27E2E2B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D6ECFE8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D6ED040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2AC0, &qword_23D6EFF90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D6ED10C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23D6ED160(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_23D6ED1BC(uint64_t a1)
{
  sub_23D6EE640();
  if (v1 <= 0x3F)
  {
    sub_23D6ED310(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23D6ED310(uint64_t a1)
{
  if (!qword_27E2E2B88)
  {
    sub_23D6EE320();
    v1 = sub_23D6EE890();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2E2B88);
    }
  }
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_23D6ED37C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D6ED39C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

void sub_23D6ED3DC(void *a1)
{
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() server];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 isScreenLockedWithPasscode_];

    if (v12)
    {
      sub_23D6EE330();
      v13 = sub_23D6EE660();
      v14 = sub_23D6EE810();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_23D6CB000, v13, v14, "[TWICE] Device is locked. Dismissing Twice VC!", v15, 2u);
        MEMORY[0x23EEE9940](v15, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      if (a1)
      {
        v16 = *MEMORY[0x277CE7058];
        v17 = *(v3 + 104);
        v18 = a1;
        v17(v5, v16, v2);
        sub_23D6DF5FC(v5);

        (*(v3 + 8))(v5, v2);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_23D6ED644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2C78, &qword_23D6F00D8);
    v3 = sub_23D6EE9D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D6EDF00(v4, v13, &qword_27E2E2C70, &qword_23D6F00D0);
      result = sub_23D6EC554(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23D6D43BC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_23D6ED780(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CB0, &qword_23D6F0100);
    v3 = sub_23D6EE9D0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_23D6ED10C(v7, v8);
      result = sub_23D6EC598(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_23D6ED898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E2CD0, &qword_23D6F0120);
    v3 = sub_23D6EE9D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D6EDF00(v4, &v13, &qword_27E2E2CC0, &qword_23D6F0110);
      v5 = v13;
      v6 = v14;
      result = sub_23D6EC598(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23D6D43BC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_23D6ED9C8()
{
  v1 = v0;
  v2 = sub_23D6EE620();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6EE670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D6EE330();
  v10 = sub_23D6EE660();
  v11 = sub_23D6EE810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23D6D3C38(0xD00000000000001CLL, 0x800000023D6F1990, &v17);
    _os_log_impl(&dword_23D6CB000, v10, v11, "[TWICE] %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EEE9940](v14, -1, -1);
    MEMORY[0x23EEE9940](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277CE7058], v2);
  sub_23D6DF5FC(v5);
  return (*(v3 + 8))(v5, v2);
}

void sub_23D6EDC38(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_23D6EDC48(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23D6EDC88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D6EDD40()
{
  MEMORY[0x23EEE9980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D6EDD78()
{
  v1 = sub_23D6EE620();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23D6EDE3C()
{
  v1 = *(sub_23D6EE620() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_23D6E1BB8(v2, v3);
}

uint64_t sub_23D6EDEA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D6EDF00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23D6EDF68(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23D6ED160(result, a2);
  }

  return result;
}

uint64_t sub_23D6EDF7C()
{
  sub_23D6ED160(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23D6EDFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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