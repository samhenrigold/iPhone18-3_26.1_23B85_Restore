void *sub_24EAE3F00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_24EAE67F0(*(a1 + 16), 0, &unk_27F2357E0, &qword_24F93B8F0);
  v4 = sub_24EAE7C84(&v6, v3 + 4, v2, a1);
  sub_24E6586B4(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_24EAE3FA0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_24F92C738();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_24EAE6BC8(v3, 0);
  sub_24EA10C44((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_24EAE4034(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_24ED7C5F0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_24EAE4138(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_24ED7E42C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_24EAE423C(uint64_t a1, __n128 a2)
{
  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_24ED7E294(&v11, *(*(a1 + 48) + (v10 | (v9 << 6))));
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_24EAE4318()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F227EB8);
  __swift_project_value_buffer(v4, qword_27F227EB8);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

void WelcomeOnboardingStep.init(bag:whatsNewItems:userDefaults:privacyIdentifiers:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  sub_24F92C7F8();
  *a5 = a1;
  if (a2)
  {

    a5[1] = a2;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    a5[2] = sub_24EAEA4C0();
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = a3;
    a4 = sub_24EAEA5B8();
    goto LABEL_8;
  }

  a5[1] = sub_24EAEA068();
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  a5[2] = a3;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = a3;
LABEL_8:

  a5[3] = a4;
}

void WelcomeOnboardingStep.enabledWhatsNewItems.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *(v1 + 16);
      v6 = v1 + 32 + 72 * v3;
      for (i = v3; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
          return;
        }

        v8 = *(v6 + 16);
        v9 = *(v6 + 32);
        v10 = *(v6 + 48);
        v24 = *(v6 + 64);
        v11 = *v6;
        v22 = v9;
        v23 = v10;
        v20 = v11;
        v21 = v8;
        v3 = i + 1;
        if ((v24 & 0x100) != 0)
        {
          break;
        }

        v6 += 72;
        if (v2 == v3)
        {
          return;
        }
      }

      sub_24EAEA8B0(&v20, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24F458684(0, *(v4 + 16) + 1, 1);
        v4 = v25;
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_24F458684((v13 > 1), v14 + 1, 1);
        v4 = v25;
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 72 * v14;
      *(v15 + 32) = v20;
      v16 = v21;
      v17 = v22;
      v18 = v23;
      *(v15 + 96) = v24;
      *(v15 + 64) = v17;
      *(v15 + 80) = v18;
      *(v15 + 48) = v16;
    }

    while (v2 - 1 != i);
  }
}

uint64_t WelcomeOnboardingStep.hasUnacknowledgedWhatsNewItems.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - v2;
  if (qword_27F210C28 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v1 + 8))(v3, v0);
  if (v22 == 1)
  {
    v4 = NSUserDefaults.acknowledgedItems.getter();
    WelcomeOnboardingStep.enabledWhatsNewItems.getter();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v21 = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v7, 0);
      v8 = v21;
      v9 = (v6 + 40);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v21 = v8;
        v12 = *(v8 + 16);
        v13 = *(v8 + 24);

        if (v12 >= v13 >> 1)
        {
          sub_24F4578E0((v13 > 1), v12 + 1, 1);
          v8 = v21;
        }

        *(v8 + 16) = v12 + 1;
        v14 = v8 + 16 * v12;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        v9 += 9;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }

    v17 = sub_24F45D828(v8);

    sub_24EAE4B60(v4, v17);
    v19 = v18;

    v16 = v19 ^ 1;
  }

  else
  {
    if (qword_27F210180 != -1)
    {
      swift_once();
    }

    v15 = sub_24F92AAE8();
    __swift_project_value_buffer(v15, qword_27F227EB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t NSUserDefaults.acknowledgedItems.getter()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    if (swift_dynamicCast())
    {
      v3 = sub_24F45D828(v5);

      return v3;
    }
  }

  else
  {
    sub_24E857CC8(v8);
  }

  return MEMORY[0x277D84FA0];
}

void sub_24EAE4B60(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return;
          }

          if (v20 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v20);
          ++v10;
        }

        while (!v7);
        v10 = v20;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];
      sub_24F92D068();

      sub_24F92B218();
      v14 = sub_24F92D0B8();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = (*(a1 + 48) + 16 * v16);
        v19 = *v18 == v13 && v18[1] == v12;
        if (v19 || (sub_24F92CE08() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }
}

uint64_t WelcomeOnboardingStep.shouldShow.getter()
{
  if (_s12GameStoreKit27ResilientDeepLinkControllerO03hasdE5Links3bagSbAA14ASKBagContractC_tFZ_0(*v0))
  {
    if (qword_27F210180 == -1)
    {
LABEL_3:
      v1 = sub_24F92AAE8();
      __swift_project_value_buffer(v1, qword_27F227EB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_3;
  }

  v3 = v0[2];
  v4 = sub_24F92B098();
  v5 = [v3 integerForKey_];

  if (!v5)
  {
    if (qword_27F210180 == -1)
    {
LABEL_13:
      v16 = sub_24F92AAE8();
      __swift_project_value_buffer(v16, qword_27F227EB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();
      goto LABEL_14;
    }

LABEL_27:
    swift_once();
    goto LABEL_13;
  }

  v7 = ASKBuildTypeGetCurrent(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  *(v8 + 32) = @"debug";
  *(v8 + 40) = @"convergence";
  *(v8 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v9 = @"debug";
  v10 = @"convergence";
  v11 = @"internal";
  v12 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v7, v12);

  if (IsAnyOf)
  {
    v14 = sub_24F92B098();
    v15 = [v3 integerForKey_];

    if (v15 >= 10)
    {
      if (qword_27F210180 == -1)
      {
        goto LABEL_3;
      }

      goto LABEL_26;
    }
  }

  if (WelcomeOnboardingStep.hasUnacknowledgedWhatsNewItems.getter())
  {
    if (qword_27F210180 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

  v17 = v0[3];
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_20:
    if (qword_27F210180 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v19 = 0;
  v20 = (v17 + 40);
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    v22 = *(v20 - 1);
    v21 = *v20;
    v23 = objc_opt_self();

    v24 = sub_24F92B098();
    LODWORD(v23) = [v23 acknowledgementNeededForPrivacyIdentifier_];

    if (v23)
    {
      break;
    }

    ++v19;
    v20 += 2;
    if (v18 == v19)
    {
      goto LABEL_20;
    }
  }

  if (qword_27F210180 != -1)
  {
    swift_once();
  }

  v25 = sub_24F92AAE8();
  __swift_project_value_buffer(v25, qword_27F227EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v26[3] = MEMORY[0x277D837D0];
  v26[0] = v22;
  v26[1] = v21;
  sub_24F928458();
  sub_24E857CC8(v26);
  sub_24F92A588();
LABEL_14:

  return 1;
}

id NSUserDefaults.acknowledgedVersion.getter()
{
  v1 = sub_24F92B098();
  v2 = [v0 integerForKey_];

  return v2;
}

Swift::Void __swiftcall WelcomeOnboardingStep.markAsShown()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v49 - v4;
  v6 = sub_24F927E38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  *v9 = sub_24F92BEF8();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_24F927E68();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_27F210C28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_24F92A3B8();
  sub_24F92A408();
  (*(v3 + 8))(v5, v2);
  if (aBlock[0])
  {
    v49 = *(v1 + 16);
    v50 = NSUserDefaults.acknowledgedItems.getter();
    WelcomeOnboardingStep.enabledWhatsNewItems.getter();
    v12 = v11;
    v13 = *(v11 + 16);
    if (v13)
    {
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v13, 0);
      v14 = aBlock[0];
      v15 = (v12 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;
        aBlock[0] = v14;
        v19 = *(v14 + 16);
        v18 = *(v14 + 24);

        if (v19 >= v18 >> 1)
        {
          sub_24F4578E0((v18 > 1), v19 + 1, 1);
          v14 = aBlock[0];
        }

        *(v14 + 16) = v19 + 1;
        v20 = v14 + 16 * v19;
        *(v20 + 32) = v17;
        *(v20 + 40) = v16;
        v15 += 9;
        --v13;
      }

      while (v13);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    sub_24EAE9E40(v14);

    v22 = *(v1 + 8);
    v23 = *(v22 + 16);
    v24 = MEMORY[0x277D84F90];
    if (v23)
    {
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v23, 0);
      v24 = aBlock[0];
      v25 = (v22 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        aBlock[0] = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);

        if (v29 >= v28 >> 1)
        {
          sub_24F4578E0((v28 > 1), v29 + 1, 1);
          v24 = aBlock[0];
        }

        *(v24 + 16) = v29 + 1;
        v30 = v24 + 16 * v29;
        *(v30 + 32) = v27;
        *(v30 + 40) = v26;
        v25 += 9;
        --v23;
      }

      while (v23);
    }

    v31 = sub_24EAE6D74(v24, v50);

    v32 = v31[2];
    if (v32)
    {
      v33 = sub_24EAE67F0(v31[2], 0, &unk_27F2357E0, &qword_24F93B8F0);
      v34 = sub_24EAE7C84(aBlock, v33 + 4, v32, v31);
      v35 = aBlock[0];

      sub_24E6586B4(v35);
      if (v34 != v32)
      {
        __break(1u);
      }
    }

    v36 = sub_24F92B588();

    v37 = sub_24F92B098();
    [v49 setObject:v36 forKey:v37];

    if (qword_27F210180 != -1)
    {
      swift_once();
    }

    v38 = sub_24F92AAE8();
    __swift_project_value_buffer(v38, qword_27F227EB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v39 = v31[2];
    if (v39)
    {
      v40 = sub_24EAE67F0(v31[2], 0, &unk_27F2357E0, &qword_24F93B8F0);
      v41 = sub_24EAE7C84(aBlock, v40 + 4, v39, v31);
      sub_24E6586B4(aBlock[0]);
      if (v41 == v39)
      {
LABEL_26:
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
        aBlock[0] = v40;
        sub_24F928438();
        sub_24E857CC8(aBlock);
        sub_24F92A588();

        v21 = v49;
        goto LABEL_27;
      }

      __break(1u);
    }

    v40 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v21 = *(v1 + 16);
LABEL_27:
  v42 = sub_24F92B098();
  [v21 setInteger:9 forKey:v42];

  sub_24F45D828(v43);

  v44 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
  v45 = sub_24F92BA98();

  v46 = [v44 initWithPrivacyIdentifiers_];

  v47 = [v46 acknowledgePrivacy];
  v53 = sub_24EAE5F64;
  v54 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9F9FFC;
  v52 = &block_descriptor_46;
  v48 = _Block_copy(aBlock);
  [v47 addFinishBlock_];
  _Block_release(v48);
}

void NSUserDefaults.acknowledgedItems.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = sub_24EAE67F0(*(a1 + 16), 0, &unk_27F2357E0, &qword_24F93B8F0);
    v5 = sub_24EAE7C84(&v8, v4 + 4, v3, a1);
    sub_24E6586B4(v8);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v6 = sub_24F92B588();

  v7 = sub_24F92B098();
  [v1 setObject:v6 forKey:v7];
}

void NSUserDefaults.acknowledgedVersion.setter(uint64_t a1)
{
  v3 = sub_24F92B098();
  [v1 setInteger:a1 forKey:v3];
}

double sub_24EAE5F64(char a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27F210180 != -1)
    {
      swift_once();
    }

    v4 = sub_24F92AAE8();
    __swift_project_value_buffer(v4, qword_27F227EB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v5 = sub_24F91F268();
    v6 = AMSLogableError();

    v7 = sub_24F92B0D8();
    v9 = v8;

    v11[3] = MEMORY[0x277D837D0];
    v11[0] = v7;
    v11[1] = v9;
    sub_24F928438();
    sub_24E857CC8(v11);
    sub_24F92A5A8();
  }

  else if (a1)
  {
    sub_24F92ADF8();
    sub_24F92ADE8();
    sub_24F92ADD8();
  }

  return result;
}

void static WelcomeOnboardingStep.reset(userDefaults:)(void *a1)
{
  v2 = sub_24F92B098();
  [a1 setInteger:0 forKey:v2];

  v3 = sub_24F92B588();
  v4 = sub_24F92B098();
  [a1 setObject:v3 forKey:v4];
}

uint64_t WelcomeOnboardingStep.hashValue.getter()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EAE62A4()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24EAE630C()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

void (*NSUserDefaults.acknowledgedVersion.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = sub_24F92B098();
  v4 = [v1 integerForKey_];

  *a1 = v4;
  return sub_24EAE6418;
}

void sub_24EAE6418(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_24F92B098();
  [v1 setInteger:v2 forKey:v3];
}

void sub_24EAE648C(void *a1, void **a2)
{
  v2 = *a2;

  sub_24EAE3F00(v3);
  v4 = sub_24F92B588();

  v5 = sub_24F92B098();
  [v2 setObject:v4 forKey:v5];
}

void (*NSUserDefaults.acknowledgedItems.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.acknowledgedItems.getter();
  return sub_24EAE657C;
}

void sub_24EAE657C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = sub_24EAE67F0(*(*a1 + 16), 0, &unk_27F2357E0, &qword_24F93B8F0);
    v6 = sub_24EAE7C84(&v14, v5 + 4, v4, v3);
    v7 = v14;

    sub_24E6586B4(v7);
    if (v6 == v4)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (v4)
  {
    v8 = sub_24EAE67F0(v4, 0, &unk_27F2357E0, &qword_24F93B8F0);
    v9 = sub_24EAE7C84(&v14, v8 + 4, v4, v3);
    sub_24E6586B4(v14);
    if (v9 != v4)
    {
      __break(1u);
LABEL_8:
      v10 = a1[1];
      v13 = sub_24F92B588();

      v11 = sub_24F92B098();
      [v10 setObject:v13 forKey:v11];

      goto LABEL_11;
    }
  }

  else
  {
  }

  v12 = a1[1];
  v13 = sub_24F92B588();

  v11 = sub_24F92B098();
  [v12 setObject:v13 forKey:v11];
LABEL_11:
}

void *sub_24EAE67F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_24EAE68A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0xE38E38E38E38E39) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_24EAE6938(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0, &unk_24F992820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_24EAE69C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213940, &qword_24F93B4D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_24EAE6A3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213978, &qword_24F97A290);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24EAE6B44(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227EF0, &qword_24F980DB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_24EAE6BC8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_24EAE6C78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_24EAE6D74(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_24EAE7254(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_24EAEABDC(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x2530542D0](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_24EAE6F14(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_24EAE7434(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_24EAEABB0(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x2530542D0](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_24EAE70B4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_24EAE7674(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_24EAEAB1C(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x2530542D0](v15, -1, -1);
  }

  return v11;
}

unint64_t *sub_24EAE7254(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_24F92D068();

          sub_24F92B218();
          v13 = sub_24F92D0B8();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_24F92CE08() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_24F7A8670(v25, a2, v24, a4);
}

void sub_24EAE7434(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v35 = a4 + 56;

  v30 = 0;
  v31 = v5;
  v11 = 0;
  v33 = v10;
  v34 = v6;
  while (v9)
  {
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = (*(v5 + 48) + ((v11 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];
    sub_24F92D068();

    sub_24F92B218();
    v18 = sub_24F92D0B8();
    v19 = -1 << *(v4 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v35 + 8 * (v20 >> 6))) != 0)
    {
      v23 = v4;
      v24 = (*(v4 + 48) + 16 * v20);
      if (*v24 != v17 || v24[1] != v16)
      {
        v26 = ~v19;
        while ((sub_24F92CE08() & 1) == 0)
        {
          v20 = (v20 + 1) & v26;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v35 + 8 * (v20 >> 6))) == 0)
          {
            v4 = v23;
            v5 = v31;
            goto LABEL_23;
          }

          v27 = (*(v23 + 48) + 16 * v20);
          if (*v27 == v17 && v27[1] == v16)
          {
            break;
          }
        }
      }

      v12 = a1[v21];
      a1[v21] = v12 | v22;
      v4 = v23;
      v5 = v31;
      v10 = v33;
      v6 = v34;
      if ((v12 & v22) == 0 && __OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_27:

        sub_24F7A8894(a1, a2, v30, v4);
        return;
      }
    }

    else
    {
LABEL_23:

      v10 = v33;
      v6 = v34;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_24EAE7674(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = a4;
  v26 = a4 + 56;

  v23 = 0;
  v9 = 0;
  while (v7)
  {
LABEL_12:
    sub_24E65864C(*(a3 + 48) + 40 * (__clz(__rbit64(v7)) | (v9 << 6)), v30);
    v28[0] = v30[0];
    v28[1] = v30[1];
    v29 = v31;
    v11 = v32;
    v12 = sub_24F92C7B8();
    v13 = -1 << *(v11 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v26 + 8 * (v14 >> 6))) == 0)
    {
      goto LABEL_5;
    }

    sub_24E65864C(*(v32 + 48) + 40 * v14, v27);
    v17 = MEMORY[0x253052150](v27, v28);
    sub_24E6585F8(v27);
    if ((v17 & 1) == 0)
    {
      v18 = ~v13;
      while (1)
      {
        v14 = (v14 + 1) & v18;
        v15 = v14 >> 6;
        v16 = 1 << v14;
        if (((1 << v14) & *(v26 + 8 * (v14 >> 6))) == 0)
        {
          break;
        }

        sub_24E65864C(*(v32 + 48) + 40 * v14, v27);
        v19 = MEMORY[0x253052150](v27, v28);
        sub_24E6585F8(v27);
        if (v19)
        {
          goto LABEL_17;
        }
      }

LABEL_5:
      sub_24E6585F8(v28);
      goto LABEL_6;
    }

LABEL_17:
    sub_24E6585F8(v28);
    v20 = a1[v15];
    a1[v15] = v20 | v16;
    if ((v20 & v16) == 0)
    {
      if (__OFADD__(v23, 1))
      {
        goto LABEL_22;
      }

      ++v23;
    }

LABEL_6:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      v21 = v32;

      sub_24F7A8CEC(a1, a2, v23, v21);
      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

unint64_t sub_24EAE78A8(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a2)
  {
LABEL_19:
    v8 = 0;
    goto LABEL_22;
  }

  v8 = a3;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
    }

    else
    {
      v4 = a2;
      v5 = a4 >> 62;
      v14 = a1;
      v6 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
        v10 = 0;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          if (v9 == v10)
          {
            v8 = v9;
LABEL_21:
            a1 = v14;
            goto LABEL_22;
          }

          if ((a4 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x253052270](v10, a4);
            if (!v5)
            {
              goto LABEL_12;
            }
          }

          else
          {
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v12 = *(a4 + 8 * v10 + 32);

            if (!v5)
            {
LABEL_12:
              a1 = *(v6 + 16);
              goto LABEL_15;
            }
          }

          a1 = sub_24F92C738();
LABEL_15:
          if (v10 >= a1)
          {
            goto LABEL_24;
          }

          *(v4 + 8 * v10) = v12;
          if (v11 == v8)
          {
            goto LABEL_21;
          }

          ++v10;
          if (v11 >= v8)
          {
            __break(1u);
            goto LABEL_19;
          }
        }
      }
    }

    v9 = sub_24F92C738();
    goto LABEL_6;
  }

LABEL_22:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

void sub_24EAE79E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v41 = sub_24F92A1F8();
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_24EAE7C84(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_24EAE7DDC(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 32);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x42uLL);
      if (v14 == v10)
      {
        sub_24E627A14(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_24E627A14(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE7F74(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      sub_24E65864C(*(a4 + 48) + 40 * v18, &v27);
      v19 = (*(a4 + 56) + 32 * v18);
      v20 = v19[1];
      *&v29[8] = *v19;
      *&v29[24] = v20;
      v21 = v28;
      v30 = v27;
      v31 = v28;
      v22 = *(&v20 + 1);
      v34 = *(&v20 + 1);
      v23 = *&v29[16];
      v32 = *v29;
      v33 = *&v29[16];
      *(v11 + 32) = *v29;
      *(v11 + 48) = v23;
      *(v11 + 64) = v22;
      *v11 = v30;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        goto LABEL_23;
      }

      v11 += 72;
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
    if (v13 <= v12 + 1)
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = v13;
    }

    v12 = v25 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE8114(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
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

void *sub_24EAE8268(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_24EAE8364(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
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

void *sub_24EAE84BC(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 32);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x42uLL);
      if (v14 == v10)
      {
        sub_24E627A14(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_24E627A14(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE8650(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE87A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

void *sub_24EAE88FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_24E772724(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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

LABEL_26:
  __break(1u);
  return result;
}

void sub_24EAE8A64(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_24EAE8D14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = a2;
      v7 = result;
      v8 = a5;
      v9 = 0;
      v10 = a4;
      v11 = a4 + 32;
      v12 = a3;
      v13 = a3 - 1;
      while (1)
      {
        sub_24E772724(v11, v6);
        if (v13 == v9)
        {
          break;
        }

        v6 += 40;
        v11 += 40;
        if (v5 == ++v9)
        {
          a3 = v5;
          a5 = v8;
          a4 = v10;
          result = v7;
          goto LABEL_12;
        }
      }

      a5 = v8;
      a4 = v10;
      result = v7;
      a3 = v12;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_24EAE8DF0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 32;

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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE8F58(void *result, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = a4;
  v8 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v11 = 0;
    v19 = -1 << *(v5 + 32);
    v9 = v5 + 56;
    v10 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v12 = v21 & *(v5 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_32;
  }

  sub_24F92C6F8();
  sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
  sub_24EAEAB48();
  result = sub_24F92BAE8();
  v5 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v12 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v13 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v10;
  v24 = v8;
  v13 = 0;
  v14 = (v10 + 64) >> 6;
  v8 = 1;
  while (1)
  {
    if (v5 < 0)
    {
      if (!sub_24F92C778())
      {
        goto LABEL_30;
      }

      sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v15 = v11;
    if (!v12)
    {
      break;
    }

    v16 = v11;
LABEL_13:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v5 + 48) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v8 == a3)
    {
      v13 = a3;
      goto LABEL_30;
    }

    ++a2;
    v13 = v8;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v16 >= v14)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v11 = v16;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v11 + 1)
  {
    v22 = v11 + 1;
  }

  else
  {
    v22 = v14;
  }

  v11 = v22 - 1;
LABEL_30:
  v10 = v23;
  v8 = v24;
LABEL_32:
  *v8 = v5;
  *(v8 + 8) = v9;
  *(v8 + 16) = v10;
  *(v8 + 24) = v11;
  *(v8 + 32) = v12;
  return v13;
}

void sub_24EAE9174(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24F91F6B8();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_24EAE9418(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for LeaderboardEntry(0);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[7];
      v25 = *(v31 + 72);
      sub_24E6C2DEC(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_24E6C2F10(v10, v13);
      sub_24E6C2F10(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_24EAE9640(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
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

void *sub_24EAE9794(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v19;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v19;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_24EAE98EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24F92AA48();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_24EAE9B90(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E10, &unk_24F93AB90);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_24EAE9E40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_24ED7C5F0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_24EAE9EB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_24ED7E42C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_24EAE9F20(uint64_t a1)
{
  v2 = sub_24F92AA48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2, v7);
      sub_24ED801C4(v9, v5);
      (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_24EAEA068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v30 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F227F00, &qword_24F980DB8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F9479A0;
  v5 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  if (qword_27F210C18 != -1)
  {
    swift_once();
  }

  v30[1] = v5;
  sub_24F92A3B8();
  sub_24F92A408();
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  v31 = v7;
  v7(v3, v0);
  v8 = v34;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x800000024FA525E0;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = localizedString(_:comment:)(v9, v10);
  v12._countAndFlagsBits = 0xD000000000000021;
  v12._object = 0x800000024FA52600;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = localizedString(_:comment:)(v12, v13);
  *(v4 + 32) = 0x6E69746152656741;
  *(v4 + 40) = 0xEA00000000007367;
  *(v4 + 48) = v11;
  *(v4 + 64) = v14;
  *(v4 + 80) = 0xD00000000000001DLL;
  *(v4 + 88) = 0x800000024FA525C0;
  *(v4 + 96) = 0;
  *(v4 + 97) = v8;
  if (qword_27F210C20 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  v31(v3, v0);
  v30[0] = v6;
  v15 = v33;
  v16._countAndFlagsBits = 0xD000000000000024;
  v16._object = 0x800000024FA52670;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = localizedString(_:comment:)(v16, v17);
  v19._countAndFlagsBits = 0xD00000000000002ALL;
  v19._object = 0x800000024FA526A0;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = localizedString(_:comment:)(v19, v20);
  *(v4 + 104) = 0xD000000000000013;
  *(v4 + 112) = 0x800000024FA52630;
  *(v4 + 120) = v18;
  *(v4 + 136) = v21;
  *(v4 + 152) = 0xD00000000000001ELL;
  *(v4 + 160) = 0x800000024FA52650;
  *(v4 + 168) = 1;
  *(v4 + 169) = v15;
  if (qword_27F210C30 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  v31(v3, v0);
  v22 = v32;
  v23._countAndFlagsBits = 0xD000000000000024;
  v23._object = 0x800000024FA52710;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = localizedString(_:comment:)(v23, v24);
  v26._countAndFlagsBits = 0xD00000000000002ALL;
  v26._object = 0x800000024FA52740;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = localizedString(_:comment:)(v26, v27);
  *(v4 + 176) = 0xD000000000000013;
  *(v4 + 184) = 0x800000024FA526D0;
  *(v4 + 192) = v25;
  *(v4 + 208) = v28;
  *(v4 + 224) = 0xD00000000000001DLL;
  *(v4 + 232) = 0x800000024FA526F0;
  *(v4 + 240) = 0;
  *(v4 + 241) = v22;
  return v4;
}

id sub_24EAEA4C0()
{
  if (*MEMORY[0x277D6A708])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24F92B0C8();
    }
  }

  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

char *sub_24EAEA5B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-1] - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  *(v4 + 32) = 0xD00000000000001DLL;
  *(v4 + 40) = 0x800000024FA52540;
  if (qword_27F2109F8 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (LOBYTE(v12[0]) == 1)
  {
    v4 = sub_24E615CF4(1, 2, 1, v4);
    *(v4 + 16) = 2;
    *(v4 + 48) = 0xD000000000000020;
    *(v4 + 56) = 0x800000024FA52590;
  }

  v12[3] = &type metadata for Feature;
  v12[4] = sub_24EAEAC44();
  LOBYTE(v12[0]) = 6;
  v6 = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v6)
  {
    if (qword_27F210B08 != -1)
    {
      swift_once();
    }

    sub_24F92A3B8();
    sub_24F92A408();
    v5(v3, v0);
    if (LOBYTE(v12[0]) == 1)
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_24E615CF4((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = 0xD000000000000029;
      *(v9 + 40) = 0x800000024FA52560;
    }
  }

  return v4;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24EAEA924(uint64_t a1)
{
  result = sub_24EAEA94C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24EAEA94C()
{
  result = qword_27F227ED0;
  if (!qword_27F227ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227ED0);
  }

  return result;
}

unint64_t sub_24EAEA9A4()
{
  result = qword_27F227ED8;
  if (!qword_27F227ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227ED8);
  }

  return result;
}

void sub_24EAEA9F8(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_24F92B098();
  v5 = [v3 integerForKey_];

  *a2 = v5;
}

void sub_24EAEAA64(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24F92B098();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_24EAEAADC@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.acknowledgedItems.getter();
  *a1 = result;
  return result;
}

unint64_t sub_24EAEAB48()
{
  result = qword_27F227EE8;
  if (!qword_27F227EE8)
  {
    sub_24E69A5C4(255, &unk_27F2376E0, 0x277D6EEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227EE8);
  }

  return result;
}

uint64_t sub_24EAEAC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_24EAEAC44()
{
  result = qword_27F227EF8;
  if (!qword_27F227EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227EF8);
  }

  return result;
}

uint64_t sub_24EAEACA4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8617DC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24EAEE14C(v5);
  *a1 = v2;
  return result;
}

double sub_24EAEAE18@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F922118();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0, &unk_24F973400);
  v6 = swift_allocObject();
  v21 = v6;
  *(v6 + 16) = sub_24EAEB0D4;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v20 = v7;
  *(v7 + 16) = sub_24EAF01E4;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EAF01E4;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24EAEB320;
  *(v9 + 24) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670, &unk_24F980F40);
  *(a1 + 32) = v10;
  v11 = sub_24E9E955C();
  *(a1 + 40) = v11;
  *(a1 + 8) = v9;
  v12 = *MEMORY[0x277D76938];
  *v5 = *MEMORY[0x277D76938];
  (*(v3 + 104))(v5, *MEMORY[0x277D22620], v2);
  v13 = sub_24F922628();
  v14 = MEMORY[0x277D22798];
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  __swift_allocate_boxed_opaque_existential_1((a1 + 56));
  v22[3] = v2;
  v22[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);

  v16 = v12;
  sub_24F922638();
  (*(v3 + 8))(v5, v2);
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  v17 = v20;
  *(a1 + 96) = v21;
  *(a1 + 160) = v10;
  *(a1 + 168) = v11;
  *(a1 + 136) = v17;
  *(a1 + 200) = v10;
  *(a1 + 208) = v11;
  *(a1 + 176) = v8;
  *(a1 + 272) = v10;
  *(a1 + 280) = v11;
  *a1 = 6;
  *(a1 + 48) = 0x3FF0000000000000;
  result = 0.15;
  *(a1 + 216) = xmmword_24F980DC0;
  *(a1 + 232) = 0x4020000000000000;
  *(a1 + 240) = 3;
  *(a1 + 248) = v9;
  *(a1 + 288) = 0x3FD6666666666666;
  *(a1 + 296) = 0;
  return result;
}

void sub_24EAEB0D4(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 0.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 10.0;
  if (v12)
  {
    v11 = 6.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EAEB1F8(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 13.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 33.0;
  if ((v12 & 1) == 0)
  {
    v11 = 16.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EAEB320(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_24F92C138();
  v5 = 12.0;
  if (v3)
  {
    v5 = 14.0;
  }

  *a2 = v5;
}

uint64_t static SearchTagsRibbonViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F210188 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_24EAEB414(&unk_27F227F10, v2);
}

void *SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = memcpy((a4 + 8), a2, 0x129uLL);
  *(a4 + 305) = a3;
  return result;
}

void SearchTagsRibbonViewLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v59 = sub_24F92CDB8();
  v14 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v57 = &v49 - v18;
  v19 = *v7;
  if (*(*v7 + 16))
  {
    v20 = [a1 traitCollection];
    v21 = sub_24F92BFB8();

    v22 = *(v7 + 305);
    if (v22 == 2 || (v22 & 1) == 0 || *(v19 + 16) < 3uLL)
    {
      v24 = [v21 preferredContentSizeCategory];
      v25 = sub_24F92C138();

      if (v25)
      {
        v23 = sub_24EAEF314(v19, v21, a3, a4, a5, a6, *(v7 + 232));
      }

      else
      {
        v26.n128_f64[0] = a3;
        v23 = sub_24EAEC154(v19, v21, v26, a4, a5, a6);
      }
    }

    else
    {
      v23 = sub_24EAEBA20(v19, v21, a3, a4, a5, a6);
    }

    v60 = v23;
    v27 = *(v19 + 16);

    v56 = v27;
    if (v27)
    {
      v28 = 0;
      v29 = v19 + 32;
      v53 = *MEMORY[0x277D84688];
      v52 = (v14 + 104);
      v51 = *MEMORY[0x277D84680];
      v50 = (v14 + 8);
      v54 = v21;
      v55 = v19;
      while (v28 < *(v19 + 16))
      {
        sub_24EAEC5C8(v29, v65);
        v30 = *(v60 + 16);
        if (v28 == v30)
        {

          sub_24E601704(v65, &qword_27F228040, &qword_24F947320);
          goto LABEL_20;
        }

        if (v28 >= v30)
        {
          goto LABEL_22;
        }

        v31 = v60 + 32 * v28;
        v32 = *(v31 + 48);
        v61 = *(v31 + 32);
        v62 = v32;
        v72[3] = v68;
        v72[4] = v69;
        v71[0] = v65[0];
        v71[1] = v65[1];
        v72[0] = v66[0];
        v64 = v28 + 1;
        v73 = v70;
        v72[1] = v66[1];
        v72[2] = v67;
        v75 = v32;
        v74 = v61;
        v33 = v68;
        v34 = *(&v68 + 1);
        v35 = v69;
        v36 = *(&v69 + 1);
        v37 = a1;
        v38 = v70;
        v39 = HIBYTE(v70);
        v40 = BYTE1(v68);
        sub_24E65864C(v71, v65);
        sub_24E615E00(v72 + 8, v66 + 8);
        LOBYTE(v68) = v33;
        BYTE1(v68) = v40;
        *(&v68 + 1) = v34;
        LOBYTE(v69) = v35;
        *(&v69 + 1) = v36;
        LOBYTE(v70) = v38;
        v41 = v37;
        HIBYTE(v70) = v39;
        v63 = *(&v67 + 1);
        __swift_project_boxed_opaque_existential_1(v66 + 1, v67);
        v42 = *v52;
        v43 = v57;
        v44 = v59;
        (*v52)(v57, v53, v59);
        v45 = v58;
        v42(v58, v51, v44);
        CGPoint.rounded(_:)(v43, *&v61, *(&v61 + 1));
        CGSize.rounded(_:)(v45, v62.n128_f64[0], v62.n128_f64[1]);
        v46 = *v50;
        (*v50)(v45, v44);
        v47 = v44;
        v19 = v55;
        v46(v43, v47);
        a1 = v41;
        v48 = [v41 traitCollection];
        sub_24F92BF88();
        sub_24F92C1E8(a3, a4, a5, a6);

        v21 = v54;
        sub_24F922228();
        sub_24E601704(v65, &qword_27F228040, &qword_24F947320);
        sub_24E601704(v71, &qword_27F228048, &qword_24F980DD8);
        v29 += 120;
        v28 = v64;
        if (v56 == v64)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
LABEL_18:

LABEL_20:
      sub_24F922128();
    }
  }

  else
  {

    sub_24F922128();
  }
}

char *sub_24EAEBA20(uint64_t a1, void *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = a1;
  v14 = v6[31];
  v15 = *(a1 + 16);
  if (v14 >= v15)
  {

    v7 = v13;
    goto LABEL_14;
  }

  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {

    sub_24E6B8A14(v16, v13 + 32, 0, (2 * v14) | 1);
    v7 = v17;
    if (!v14)
    {
      v18 = *(v13 + 16);
      if (v18)
      {
        goto LABEL_5;
      }

LABEL_13:

      goto LABEL_14;
    }
  }

  sub_24E6B8A14(v13, v13 + 32, v14, (2 * v15) | 1);
  v25 = v24;

  v13 = v25;
  v18 = *(v25 + 16);
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_5:
  v33 = v7;
  v34 = a2;
  v35 = v6;
  v39 = MEMORY[0x277D84F90];
  sub_24F4582AC(0, v18, 0);
  v19 = v39;
  v20 = v13 + 32;
  do
  {
    sub_24EAEC5C8(v20, v36);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_24F922248();
    sub_24E601704(v36, &qword_27F228040, &qword_24F947320);
    v39 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      sub_24F4582AC((v21 > 1), v22 + 1, 1);
      v19 = v39;
    }

    *(v19 + 16) = v23;
    v20 += 120;
    --v18;
  }

  while (v18);

  a2 = v34;
LABEL_14:
  v26 = [a2 preferredContentSizeCategory];
  v27 = sub_24F92C138();

  if (v27)
  {
    sub_24EAEFC20(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    v40.origin.x = a3;
    v40.origin.y = a4;
    v40.size.width = a5;
    v40.size.height = a6;
    MinY = CGRectGetMinY(v40);
    __swift_project_boxed_opaque_existential_1(v6 + 18, v6[21]);
    sub_24F9223B8();
    v28 = sub_24EAED174(v7, a2, MinY + v30, a3, a4, a5, a6);
  }

  v31 = v28;

  return v31;
}

CGFloat SearchTagsRibbonViewLayout.measurements(fitting:in:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    return *MEMORY[0x277D22A78];
  }

  v5 = v3;
  v8 = [a1 traitCollection];
  v9 = sub_24F92BFB8();

  v10 = *(v5 + 305);
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v12 = [v9 preferredContentSizeCategory];
    v13 = sub_24F92C138();

    if (v13)
    {
      v11 = sub_24EAEF314(v4, v9, 0.0, 0.0, a2, a3, *(v5 + 29));
    }

    else
    {
      v14.n128_u64[0] = 0;
      v11 = sub_24EAEC154(v4, v9, v14, 0.0, a2, a3);
    }
  }

  else
  {
    v11 = sub_24EAEBA20(v4, v9, 0.0, 0.0, a2, a3);
  }

  v15 = *(v11 + 16);
  if (v15)
  {
    v27 = a2;
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v18 = *(v11 + 48);
    v19 = *(v11 + 56);
    v20 = v15 - 1;
    if (v15 != 1)
    {
      v21 = (v11 + 88);
      do
      {
        v22 = *(v21 - 3);
        v23 = *(v21 - 2);
        v25 = *(v21 - 1);
        v24 = *v21;
        v29.origin.x = v16;
        v29.origin.y = v17;
        v29.size.width = v18;
        v29.size.height = v19;
        MaxY = CGRectGetMaxY(v29);
        v30.origin.x = v22;
        v30.origin.y = v23;
        v30.size.width = v25;
        v30.size.height = v24;
        if (MaxY < CGRectGetMaxY(v30))
        {
          v16 = v22;
          v17 = v23;
          v18 = v25;
          v19 = v24;
        }

        v21 += 4;
        --v20;
      }

      while (v20);
    }

    v31.origin.x = v16;
    v31.origin.y = v17;
    v31.size.width = v18;
    v31.size.height = v19;
    CGRectGetMaxY(v31);

    return v27;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_24EAEBF08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_24F922D38();
  v3 = *MEMORY[0x277D767F8];
  if (sub_24F92C158())
  {
    v3;
  }

  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_24F922D48();
}

uint64_t sub_24EAEBFA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = v4 - 1;
      if (v4 != 1)
      {
        v10 = (a1 + 88);
        do
        {
          v11 = *(v10 - 3);
          v12 = *(v10 - 2);
          v13 = *(v10 - 1);
          v14 = *v10;
          v30.origin.x = v5;
          v30.origin.y = v6;
          v30.size.width = v7;
          v30.size.height = v8;
          MidY = CGRectGetMidY(v30);
          v31.origin.x = v11;
          v31.origin.y = v12;
          v31.size.width = v13;
          v31.size.height = v14;
          if (MidY < CGRectGetMidY(v31))
          {
            v5 = v11;
            v6 = v12;
            v7 = v13;
            v8 = v14;
          }

          v10 += 4;
          --v9;
        }

        while (v9);
      }

      v32.origin.x = v5;
      v32.origin.y = v6;
      v32.size.width = v7;
      v32.size.height = v8;
      v15 = CGRectGetMidY(v32);
    }

    else
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = *&a2;
  }

  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v29 = MEMORY[0x277D84F90];
    sub_24F45820C(0, v16, 0);
    v17 = v29;
    v18 = (a1 + 56);
    do
    {
      v19 = *(v18 - 3);
      v33.origin.y = *(v18 - 2);
      v20 = *(v18 - 1);
      v21 = *v18;
      v33.origin.x = v19;
      v33.size.width = v20;
      v33.size.height = *v18;
      Height = CGRectGetHeight(v33);
      v24 = *(v29 + 16);
      v23 = *(v29 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = Height;
        sub_24F45820C((v23 > 1), v24 + 1, 1);
        Height = v26;
      }

      *(v29 + 16) = v24 + 1;
      v25 = (v29 + 32 * v24);
      v25[4] = v19;
      v25[5] = v15 + Height * -0.5;
      v25[6] = v20;
      v25[7] = v21;
      v18 += 4;
      --v16;
    }

    while (v16);
  }

  return v17;
}

uint64_t sub_24EAEC154(uint64_t a1, uint64_t a2, __n128 a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = a3.n128_f64[0];
  v46 = MEMORY[0x277D84F90];
  v11 = *(v6 + 56);
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_11:
    v17 = a1;

    v18 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v13 = 0;
  v14 = a1 + 32;
  v15 = 1;
  v40 = a1 + 32;
  while (1)
  {
    sub_24EAEC5C8(v14, v44);
    if (v45 >= 8u && v45 != 9)
    {
      break;
    }

    v16 = sub_24F92CE08();

    sub_24E601704(v44, &qword_27F228040, &qword_24F947320);
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_5:
    ++v13;
    v15 += 2;
    v14 += 120;
    if (v12 == v13)
    {
      goto LABEL_11;
    }
  }

  if (v45 == 10)
  {
    sub_24E601704(v44, &qword_27F228040, &qword_24F947320);
    goto LABEL_5;
  }

  swift_bridgeObjectRelease_n();
  sub_24E601704(v44, &qword_27F228040, &qword_24F947320);
LABEL_13:
  v17 = a1;

  sub_24E6B8A14(v19, v40, 0, v15);
  v18 = v20;
  if (v13)
  {
    sub_24E6B8A14(a1, v40, v13, (2 * v12) | 1);
    v39 = v38;

    v17 = v39;
  }

LABEL_15:
  if (*(v18 + 16))
  {
    v47.origin.x = v10;
    v47.origin.y = a4;
    v47.size.width = a5;
    v47.size.height = a6;
    Height = CGRectGetHeight(v47);
    v22 = sub_24EAEC638(v18, a2, v10, a4, v11 * a5, Height);

    sub_24EA0ABE0(v23);
    v24 = *(v22 + 2);
    if (v24)
    {
      v25 = &v22[32 * v24];
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[3];

      v48.origin.x = v26;
      v48.origin.y = v27;
      v48.size.width = v28;
      v48.size.height = v29;
      MaxX = CGRectGetMaxX(v48);
    }

    else
    {

      MaxX = 0.0;
    }

    v31 = MaxX + *(v42 + 240);
  }

  else
  {

    v31 = 0.0;
  }

  v49.origin.x = v10;
  v49.origin.y = a4;
  v49.size.width = a5;
  v49.size.height = a6;
  v32 = CGRectGetWidth(v49) - v31;
  v50.origin.x = v10;
  v50.origin.y = a4;
  v50.size.width = a5;
  v50.size.height = a6;
  MinY = CGRectGetMinY(v50);
  v51.origin.x = v10;
  v51.origin.y = a4;
  v51.size.width = a5;
  v51.size.height = a6;
  v34 = CGRectGetHeight(v51);
  v35 = sub_24EAECA2C(v17, a2, v31, MinY, v32, v34);

  sub_24EA0ABE0(v35);
  v36 = sub_24EAEBFA8(v46, 0, 1);

  return v36;
}

uint64_t sub_24EAEC5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040, &qword_24F947320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_24EAEC638(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  Width = CGRectGetWidth(*&a3);
  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  MinX = CGRectGetMinX(v75);
  v14 = *(a1 + 16);
  v53 = v6;
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  sub_24F9223B8();
  v16 = v15;
  v50 = a3;
  v51 = a4;
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v52 = a6;
  v76.size.height = a6;
  v17 = CGRectGetWidth(v76);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = v14 + -1.0;
  if (v18 <= 0.0)
  {
    v18 = 0.0;
  }

  v47 = v14;
  v48 = v16;
  v19 = (v17 - v18 * v16) / v14;
  v20 = a1 + 32;
  v21 = MEMORY[0x277D84F90];
  v49 = 0.0;
  do
  {
    sub_24EAEC5C8(v20, v65);
    v24 = v68;
    v25 = v69;
    v26 = v70;
    v27 = v71;
    v28 = v72;
    v29 = v73;
    v30 = v74;
    v54[0] = v65[0];
    v54[1] = v65[1];
    v55 = v66;
    sub_24E612E28(&v67, v56);
    v58 = v24;
    v59 = v25;
    v60 = v26;
    v61 = v27;
    v62 = v28;
    v63 = v29;
    v64 = v30;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    sub_24F9222A8();
    v32 = v31;
    v34 = v33;
    v77.origin.x = v50;
    v77.origin.y = v51;
    v77.size.width = a5;
    v77.size.height = v52;
    MinY = CGRectGetMinY(v77);
    __swift_project_boxed_opaque_existential_1((v53 + 144), *(v53 + 168));
    sub_24F9223B8();
    if (Width > 0.0)
    {
      v39 = v36;
      if (v32 >= v19)
      {
        v32 = v19;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24E617B8C(0, *(v21 + 2) + 1, 1, v21);
      }

      v41 = *(v21 + 2);
      v40 = *(v21 + 3);
      if (v41 >= v40 >> 1)
      {
        v21 = sub_24E617B8C((v40 > 1), v41 + 1, 1, v21);
      }

      v42 = MinY + v39;
      *(v21 + 2) = v41 + 1;
      v43 = &v21[32 * v41];
      v43[4] = MinX;
      v43[5] = v42;
      v43[6] = v32;
      v43[7] = v34;
      v78.origin.x = MinX;
      v78.origin.y = v42;
      v78.size.width = v32;
      v78.size.height = v34;
      v44 = MinX + v48 + CGRectGetWidth(v78);
      v79.origin.x = MinX;
      v79.origin.y = v42;
      v79.size.width = v32;
      v79.size.height = v34;
      v23 = Width - (v48 + CGRectGetWidth(v79));
      v49 = v49 + 1.0;
      v45 = v47 - v49 + -1.0;
      if (v45 <= 0.0)
      {
        v45 = 0.0;
      }

      v19 = (v23 - v48 * v45) / (v47 - v49);
      MinX = v44;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24E617B8C(0, *(v21 + 2) + 1, 1, v21);
      }

      v38 = *(v21 + 2);
      v37 = *(v21 + 3);
      if (v38 >= v37 >> 1)
      {
        v21 = sub_24E617B8C((v37 > 1), v38 + 1, 1, v21);
      }

      *(v21 + 2) = v38 + 1;
      v22 = &v21[32 * v38];
      *(v22 + 2) = 0u;
      *(v22 + 3) = 0u;
      v23 = Width;
    }

    __swift_project_boxed_opaque_existential_1(v56, v57);
    sub_24F922248();
    sub_24E601704(v54, &qword_27F228040, &qword_24F947320);
    v20 += 120;
    Width = v23;
    --v14;
  }

  while (v14);
  return v21;
}

char *sub_24EAECA2C(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  Width = CGRectGetWidth(*&a3);
  v45 = a3;
  v46 = a4;
  v74.origin.x = a3;
  v74.origin.y = a4;
  v74.size.width = a5;
  v44 = a6;
  v74.size.height = a6;
  MinX = CGRectGetMinX(v74);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + 32;
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      v49 = v14;
      sub_24EAEC5C8(v13, v64);
      v15 = v67;
      v16 = v68;
      v17 = v69;
      v18 = v70;
      v19 = v71;
      v20 = v72;
      v21 = v73;
      v53[0] = v64[0];
      v53[1] = v64[1];
      v54 = v65;
      sub_24E612E28(&v66, v55);
      v57 = v15;
      v58 = v16;
      v59 = v17;
      v60 = v18;
      v61 = v19;
      v62 = v20;
      v63 = v21;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      sub_24F9222A8();
      v23 = v22;
      v25 = v24;
      sub_24EAEC5C8(v53, v50);
      v26 = v52;
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_24E6585F8(v50);
      v75.origin.x = v45;
      v75.origin.y = v46;
      v75.size.width = a5;
      v75.size.height = v44;
      MinY = CGRectGetMinY(v75);
      __swift_project_boxed_opaque_existential_1((v47 + 144), *(v47 + 168));
      sub_24F9223B8();
      v29 = MinY + v28;
      v76.origin.x = v45;
      v76.origin.y = v46;
      v76.size.width = a5;
      v76.size.height = v44;
      CGRectGetWidth(v76);
      v30 = v17;
      if (v23 < v17)
      {
        v31 = 1;
      }

      else
      {
        v31 = v18;
      }

      if (v31)
      {
        v30 = v23;
      }

      if (v30 <= Width)
      {
        v32 = Width;
        v34 = MinX;
        v35 = v29;
        v36 = v30;
        v37 = v25;
      }

      else
      {
        v32 = Width;
        if (Width < v19)
        {
          v33 = 1;
        }

        else
        {
          v33 = v20;
        }

        v34 = 0.0;
        v35 = 0.0;
        v36 = 0.0;
        v37 = 0.0;
        if (v33 != 1)
        {
          v14 = v49;
          if (v26)
          {
            if (v30 >= v32)
            {
              v36 = v32;
            }

            else
            {
              v36 = v30;
            }

            v34 = MinX;
            v35 = v29;
            v37 = v25;
          }

          goto LABEL_22;
        }
      }

      v14 = v49;
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_24E617B8C(0, *(v14 + 2) + 1, 1, v14);
      }

      v39 = *(v14 + 2);
      v38 = *(v14 + 3);
      if (v39 >= v38 >> 1)
      {
        v14 = sub_24E617B8C((v38 > 1), v39 + 1, 1, v14);
      }

      *(v14 + 2) = v39 + 1;
      v40 = &v14[32 * v39];
      v40[4] = v34;
      v40[5] = v35;
      v40[6] = v36;
      v40[7] = v37;
      if (v36 <= 0.0)
      {
        Width = v32;
      }

      else
      {
        if (v58 == 10 || (sub_24F0CCE3C(v58, 8u) & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1((v47 + 16), *(v47 + 40));
          sub_24F9223B8();
          v41 = v42;
        }

        else
        {
          v41 = *(v47 + 240);
        }

        v77.origin.x = v34;
        v77.origin.y = v35;
        v77.size.width = v36;
        v77.size.height = v37;
        MinX = MinX + v41 + CGRectGetWidth(v77);
        v78.origin.x = v34;
        v78.origin.y = v35;
        v78.size.width = v36;
        v78.size.height = v37;
        Width = v32 - (v41 + CGRectGetWidth(v78));
      }

      __swift_project_boxed_opaque_existential_1(v55, v56);
      sub_24F922248();
      sub_24E601704(v53, &qword_27F228040, &qword_24F947320);
      v13 += 120;
      if (!--v12)
      {
        return v14;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_24EAECE0C(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  Width = CGRectGetWidth(*&a3);
  v45 = a3;
  v46 = a4;
  v69.origin.x = a3;
  v69.origin.y = a4;
  v69.size.width = a5;
  v69.size.height = a6;
  MinX = CGRectGetMinX(v69);
  v47 = v6;
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  sub_24F9223B8();
  v44 = v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = a1 + 32;
  v17 = MEMORY[0x277D84F90];
  v43 = a6;
  do
  {
    sub_24EAEC5C8(v16, v59);
    v20 = v62;
    v21 = v63;
    v22 = v64;
    v23 = v65;
    v24 = v66;
    v25 = v67;
    v26 = v68;
    v48[0] = v59[0];
    v48[1] = v59[1];
    v49 = v60;
    sub_24E612E28(&v61, v50);
    v52 = v20;
    v53 = v21;
    v54 = v22;
    v55 = v23;
    v56 = v24;
    v57 = v25;
    v58 = v26;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_24F9222A8();
    v28 = v27;
    v30 = v29;
    v70.origin.x = v45;
    v70.origin.y = v46;
    v70.size.width = a5;
    v70.size.height = a6;
    MinY = CGRectGetMinY(v70);
    __swift_project_boxed_opaque_existential_1((v47 + 144), *(v47 + 168));
    sub_24F9223B8();
    v33 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (Width > 0.0)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_24E617B8C(0, *(v17 + 2) + 1, 1, v17);
      }

      v38 = *(v17 + 2);
      v37 = *(v17 + 3);
      if (v38 >= v37 >> 1)
      {
        v17 = sub_24E617B8C((v37 > 1), v38 + 1, 1, v17);
      }

      v39 = MinY + v33;
      *(v17 + 2) = v38 + 1;
      v40 = &v17[32 * v38];
      v40[4] = MinX;
      v40[5] = v39;
      v40[6] = v28;
      v40[7] = v30;
      v71.origin.x = MinX;
      v71.origin.y = v39;
      v71.size.width = v28;
      v71.size.height = v30;
      v41 = MinX + v44 + CGRectGetWidth(v71);
      v72.origin.x = MinX;
      v72.origin.y = v39;
      v72.size.width = v28;
      v72.size.height = v30;
      v19 = Width - (v44 + CGRectGetWidth(v72));
      MinX = v41;
      a6 = v43;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_24E617B8C(0, *(v17 + 2) + 1, 1, v17);
      }

      v36 = *(v17 + 2);
      v35 = *(v17 + 3);
      if (v36 >= v35 >> 1)
      {
        v17 = sub_24E617B8C((v35 > 1), v36 + 1, 1, v17);
      }

      *(v17 + 2) = v36 + 1;
      v18 = &v17[32 * v36];
      *(v18 + 2) = 0u;
      *(v18 + 3) = 0u;
      v19 = Width;
    }

    __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_24F922248();
    sub_24E601704(v48, &qword_27F228040, &qword_24F947320);
    v16 += 120;
    Width = v19;
    --v15;
  }

  while (v15);
  return v17;
}

char *sub_24EAED174(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v44.origin.x = a4;
  v44.origin.y = a5;
  v44.size.width = a6;
  v44.size.height = a7;
  MinX = CGRectGetMinX(v44);
  sub_24EAED428(a1, a2, a4, a5, a6, a7);
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_24F45824C(0, v17, 0);
    v18 = v42;
    v19 = (v16 + 32);
    v20 = *(v42 + 16);
    v21 = v17;
    do
    {
      v22 = *v19;
      v43 = v18;
      v23 = *(v18 + 24);
      v24 = v20 + 1;
      if (v20 >= v23 >> 1)
      {
        sub_24F45824C((v23 > 1), v20 + 1, 1);
        v18 = v43;
      }

      *(v18 + 16) = v24;
      *(v18 + 8 * v20 + 32) = v22;
      v19 += 4;
      ++v20;
      --v21;
    }

    while (v21);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (!v24)
    {
      v26 = 0.0;
      goto LABEL_15;
    }
  }

  if (v24 <= 3)
  {
    v25 = 0;
    v26 = 0.0;
LABEL_13:
    v29 = v24 - v25;
    v30 = 8 * v25 + 32;
    do
    {
      v26 = v26 + *(v18 + v30);
      v30 += 8;
      --v29;
    }

    while (v29);
    goto LABEL_15;
  }

  v25 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = (v18 + 48);
  v26 = 0.0;
  v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v26 = v26 + *(v27 - 2) + *(v27 - 1) + *v27 + v27[1];
    v27 += 4;
    v28 -= 4;
  }

  while (v28);
  if (v24 != v25)
  {
    goto LABEL_13;
  }

LABEL_15:

  v45.origin.x = a4;
  v45.origin.y = a5;
  v45.size.width = a6;
  v45.size.height = a7;
  Width = CGRectGetWidth(v45);
  v32 = *(v16 + 16);
  if (v32)
  {
    v33 = (Width - v26) / (v17 - 1);
    v34 = (v16 + 40);
    v35 = MEMORY[0x277D84F90];
    do
    {
      v36 = *(v34 - 1);
      v37 = *v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_24E617B8C(0, *(v35 + 2) + 1, 1, v35);
      }

      v39 = *(v35 + 2);
      v38 = *(v35 + 3);
      if (v39 >= v38 >> 1)
      {
        v35 = sub_24E617B8C((v38 > 1), v39 + 1, 1, v35);
      }

      *(v35 + 2) = v39 + 1;
      v40 = &v35[32 * v39];
      v40[4] = MinX;
      v40[5] = a3;
      v40[6] = v36;
      v40[7] = v37;
      v46.origin.x = MinX;
      v46.origin.y = a3;
      v46.size.width = v36;
      v46.size.height = v37;
      MinX = v33 + CGRectGetMaxX(v46);
      v34 += 4;
      --v32;
    }

    while (v32);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  return v35;
}

void sub_24EAED428(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = *(a1 + 16);
  Width = CGRectGetWidth(*&a3);
  __swift_project_boxed_opaque_existential_1((v6 + 256), *(v6 + 280));
  sub_24F9223B8();
  v16 = Width - v15 * (v13 - 1);
  v186.origin.x = a3;
  v186.origin.y = a4;
  v186.size.width = a5;
  v186.size.height = a6;
  CGRectGetHeight(v186);
  if ((*(v6 + 304) & 1) == 0)
  {
    v17 = [a2 preferredContentSizeCategory];
    sub_24F92C138();
  }

  v18 = sub_24E60BDD0(MEMORY[0x277D84F90]);
  *&v175 = a1;

  v19 = 0;
  sub_24EAEACA4(&v175);
  v20 = v175;
  v138 = v175;
  v139 = v13;
  v136 = a1;
  v137 = *(v175 + 16);
  if (!v137)
  {
LABEL_20:
    if (v16 > 0.0 && v13 == v18[2])
    {
      v143 = *(v20 + 16);
      if (v143)
      {
        v54 = 0;
        v55 = v20 + 32;
        while (1)
        {
          if (v54 >= *(v20 + 16))
          {
            goto LABEL_90;
          }

          v56 = v18;
          sub_24EAEC5C8(v55, &v175);
          v57 = v179;
          v58 = v180;
          v19 = v181;
          v59 = v182;
          v60 = v183;
          v61 = v184;
          v62 = v185;
          v163 = v175;
          v164 = v176;
          v165 = v177;
          sub_24E612E28(v178, &v166);
          v168 = v57;
          v169 = v58;
          v170 = v19;
          v171 = v59;
          v172 = v60;
          v173 = v61;
          v174 = v62;
          if (v16 <= 0.0)
          {
            break;
          }

          sub_24EAEC5C8(&v163, &v152);
          v18 = v56;
          if (!v56[2] || (v63 = sub_24E76D934(&v152), (v64 & 1) == 0))
          {
            __swift_destroy_boxed_opaque_existential_1(v155);
            sub_24E6585F8(&v152);
            goto LABEL_25;
          }

          v65 = *(v56[7] + 32 * v63);
          __swift_destroy_boxed_opaque_existential_1(v155);
          sub_24E6585F8(&v152);
          v19 = v56;
          __swift_project_boxed_opaque_existential_1(&v166, v167);
          sub_24F9222A8();
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;
          v13 = v139;
          if ((JUMeasurementsEqual() & 1) == 0)
          {
            sub_24EAEC5C8(&v163, &v152);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v148 = v19;
            v75 = sub_24E76D934(&v152);
            v77 = *(v19 + 2);
            v78 = (v76 & 1) == 0;
            v44 = __OFADD__(v77, v78);
            v79 = v77 + v78;
            if (v44)
            {
              goto LABEL_93;
            }

            v80 = v76;
            if (*(v19 + 3) >= v79)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_39;
              }

              v83 = v75;
              sub_24E8AFFC4();
              v75 = v83;
              v18 = v148;
              if ((v80 & 1) == 0)
              {
                goto LABEL_42;
              }

LABEL_40:
              v82 = v18[7] + 32 * v75;
              *v82 = v67;
              *(v82 + 8) = v69;
              *(v82 + 16) = v73;
              *(v82 + 24) = v71;
            }

            else
            {
              sub_24E89CD10(v79, isUniquelyReferenced_nonNull_native);
              v75 = sub_24E76D934(&v152);
              if ((v80 & 1) != (v81 & 1))
              {
                goto LABEL_95;
              }

LABEL_39:
              v18 = v148;
              if (v80)
              {
                goto LABEL_40;
              }

LABEL_42:
              v18[(v75 >> 6) + 8] |= 1 << v75;
              v84 = v75;
              sub_24E65864C(&v152, v18[6] + 40 * v75);
              v85 = v18[7] + 32 * v84;
              *v85 = v67;
              *(v85 + 8) = v69;
              *(v85 + 16) = v73;
              *(v85 + 24) = v71;
              v86 = v18[2];
              v44 = __OFADD__(v86, 1);
              v87 = v86 + 1;
              if (v44)
              {
                goto LABEL_94;
              }

              v18[2] = v87;
            }

            sub_24E6585F8(&v152);
            __swift_destroy_boxed_opaque_existential_1(v155);
            v16 = v16 + v65 - v67;
            goto LABEL_26;
          }

          v18 = v19;
LABEL_26:
          ++v54;
          sub_24E601704(&v163, &qword_27F228040, &qword_24F947320);
          v55 += 120;
          v20 = v138;
          if (v143 == v54)
          {
            goto LABEL_65;
          }
        }

        v18 = v56;
LABEL_25:
        v13 = v139;
        goto LABEL_26;
      }

LABEL_65:

      v19 = MEMORY[0x277D84F90];
      if (v13)
      {
        v146 = v18;
        v151 = MEMORY[0x277D84F90];
        sub_24F457B3C(0, v13, 0);
        v19 = v151;
        v112 = v136 + 32;
        do
        {
          sub_24EAEC5C8(v112, &v175);
          sub_24EAEC5C8(&v175, &v163);
          v113 = v168;
          v114 = v169;
          v115 = v170;
          v116 = v171;
          v117 = v172;
          v118 = v173;
          v119 = v174;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          sub_24E612E28(&v166, v155);
          v156 = v113;
          v157 = v114;
          v158 = v115;
          v159 = v116;
          v160 = v117;
          v161 = v118;
          v162 = v119;
          sub_24E65864C(&v152, &v148);
          sub_24E601704(&v152, &qword_27F228040, &qword_24F947320);
          sub_24E601704(&v175, &qword_27F228040, &qword_24F947320);
          v151 = v19;
          v121 = *(v19 + 2);
          v120 = *(v19 + 3);
          if (v121 >= v120 >> 1)
          {
            sub_24F457B3C((v120 > 1), v121 + 1, 1);
            v19 = v151;
          }

          *(v19 + 2) = v121 + 1;
          v122 = v19 + 5 * v121;
          v123 = v148;
          v124 = v149;
          v122[8] = v150;
          *(v122 + 2) = v123;
          *(v122 + 3) = v124;
          v112 += 120;
          --v13;
        }

        while (v13);
        v18 = v146;
      }

      v125 = *(v19 + 2);
      if (v125)
      {
        v126 = 0;
        v127 = MEMORY[0x277D84F90];
LABEL_73:
        v128 = v19 + 40 * v126 + 32;
        v129 = v126;
        while (v129 < v125)
        {
          v126 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            goto LABEL_92;
          }

          if (v18[2])
          {
            v130 = sub_24E76D934(v128);
            if (v131)
            {
              v132 = (v18[7] + 32 * v130);
              v142 = v132[1];
              v147 = *v132;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v127 = sub_24E617C90(0, *(v127 + 2) + 1, 1, v127);
              }

              v134 = *(v127 + 2);
              v133 = *(v127 + 3);
              if (v134 >= v133 >> 1)
              {
                v127 = sub_24E617C90((v133 > 1), v134 + 1, 1, v127);
              }

              *(v127 + 2) = v134 + 1;
              v135 = &v127[32 * v134];
              *(v135 + 2) = v147;
              *(v135 + 3) = v142;
              if (v126 != v125)
              {
                goto LABEL_73;
              }

              goto LABEL_84;
            }
          }

          ++v129;
          v128 += 40;
          if (v126 == v125)
          {
            goto LABEL_84;
          }
        }

        goto LABEL_91;
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
      if (v13)
      {
        v144 = v18;
        v151 = MEMORY[0x277D84F90];
        sub_24F457B3C(0, v13, 0);
        v19 = v151;
        v88 = v136 + 32;
        do
        {
          sub_24EAEC5C8(v88, &v175);
          sub_24EAEC5C8(&v175, &v163);
          v89 = v168;
          v90 = v169;
          v91 = v170;
          v92 = v171;
          v93 = v172;
          v94 = v173;
          v95 = v174;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          sub_24E612E28(&v166, v155);
          v156 = v89;
          v157 = v90;
          v158 = v91;
          v159 = v92;
          v160 = v93;
          v161 = v94;
          v162 = v95;
          sub_24E65864C(&v152, &v148);
          sub_24E601704(&v152, &qword_27F228040, &qword_24F947320);
          sub_24E601704(&v175, &qword_27F228040, &qword_24F947320);
          v151 = v19;
          v97 = *(v19 + 2);
          v96 = *(v19 + 3);
          if (v97 >= v96 >> 1)
          {
            sub_24F457B3C((v96 > 1), v97 + 1, 1);
            v19 = v151;
          }

          *(v19 + 2) = v97 + 1;
          v98 = v19 + 5 * v97;
          v99 = v148;
          v100 = v149;
          v98[8] = v150;
          *(v98 + 2) = v99;
          *(v98 + 3) = v100;
          v88 += 120;
          --v13;
        }

        while (v13);
        v18 = v144;
      }

      v101 = *(v19 + 2);
      if (v101)
      {
        v102 = 0;
        v103 = MEMORY[0x277D84F90];
        do
        {
          v104 = v19 + 40 * v102 + 32;
          v105 = v102;
          while (1)
          {
            if (v105 >= v101)
            {
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            v102 = v105 + 1;
            if (__OFADD__(v105, 1))
            {
              goto LABEL_86;
            }

            if (v18[2])
            {
              v106 = sub_24E76D934(v104);
              if (v107)
              {
                break;
              }
            }

            ++v105;
            v104 += 40;
            if (v102 == v101)
            {
              goto LABEL_84;
            }
          }

          v108 = (v18[7] + 32 * v106);
          v141 = v108[1];
          v145 = *v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_24E617C90(0, *(v103 + 2) + 1, 1, v103);
          }

          v110 = *(v103 + 2);
          v109 = *(v103 + 3);
          if (v110 >= v109 >> 1)
          {
            v103 = sub_24E617C90((v109 > 1), v110 + 1, 1, v103);
          }

          *(v103 + 2) = v110 + 1;
          v111 = &v103[32 * v110];
          *(v111 + 2) = v145;
          *(v111 + 3) = v141;
        }

        while (v102 != v101);
      }
    }

LABEL_84:

    return;
  }

  v21 = 0;
  v22 = v175 + 32;
  while (v21 < *(v20 + 16))
  {
    v140 = v22;
    sub_24EAEC5C8(v22, &v175);
    v23 = a2;
    v24 = v179;
    v25 = v180;
    v26 = v181;
    v27 = v182;
    v28 = v183;
    v29 = v184;
    v30 = v185;
    v163 = v175;
    v164 = v176;
    v165 = v177;
    sub_24E612E28(v178, &v166);
    v168 = v24;
    a2 = v23;
    v169 = v25;
    v170 = v26;
    v171 = v27;
    v19 = &v152;
    v172 = v28;
    v173 = v29;
    v174 = v30;
    sub_24EAEC5C8(&v163, &v152);
    __swift_destroy_boxed_opaque_existential_1(v155);
    sub_24E6585F8(&v152);
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    sub_24F9222A8();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_24EAEC5C8(&v163, &v152);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v148 = v18;
    v40 = sub_24E76D934(&v152);
    v42 = v18[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_88;
    }

    v46 = v41;
    if (v18[3] < v45)
    {
      sub_24E89CD10(v45, v39);
      v40 = sub_24E76D934(&v152);
      v13 = v139;
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_95;
      }

LABEL_11:
      v18 = v148;
      if (v46)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v13 = v139;
    if (v39)
    {
      goto LABEL_11;
    }

    v49 = v40;
    sub_24E8AFFC4();
    v40 = v49;
    v18 = v148;
    if (v46)
    {
LABEL_12:
      v48 = v18[7] + 32 * v40;
      *v48 = v32;
      *(v48 + 8) = v34;
      *(v48 + 16) = v36;
      *(v48 + 24) = v38;
      goto LABEL_16;
    }

LABEL_14:
    v18[(v40 >> 6) + 8] |= 1 << v40;
    v50 = v40;
    sub_24E65864C(&v152, v18[6] + 40 * v40);
    v51 = v18[7] + 32 * v50;
    *v51 = v32;
    *(v51 + 8) = v34;
    *(v51 + 16) = v36;
    *(v51 + 24) = v38;
    v52 = v18[2];
    v44 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v44)
    {
      goto LABEL_89;
    }

    v18[2] = v53;
LABEL_16:
    sub_24E6585F8(&v152);
    __swift_destroy_boxed_opaque_existential_1(v155);
    v16 = v16 - v32;
    if (v13 - v18[2] < 1)
    {
      sub_24E601704(&v163, &qword_27F228040, &qword_24F947320);
      v20 = v138;
      goto LABEL_20;
    }

    ++v21;
    sub_24E601704(&v163, &qword_27F228040, &qword_24F947320);
    v22 = v140 + 120;
    v20 = v138;
    if (v137 == v21)
    {
      goto LABEL_20;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
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
  __break(1u);
LABEL_95:
  sub_24F92CF88();
  __break(1u);

  __break(1u);
}

uint64_t sub_24EAEE040(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 != sub_24F92B0D8() || v4 != v5)
  {
    v7 = sub_24F92CE08();
    v8 = v1;

    if (v7)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v9 = v1;

LABEL_8:
  v10 = sub_24F92C178();

  if (v10)
  {

    return 1;
  }

  else
  {
    v12 = sub_24F92C138();

    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24EAEE14C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040, &qword_24F947320);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24EAEE3F0(v7, v8, a1, v4);
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
    return sub_24EAEE254(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24EAEE254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 120 * a3;
    v6 = result - a3;
LABEL_5:
    v35 = a3;
    v24 = v6;
    v25 = v5;
    while (1)
    {
      sub_24EAEC5C8(v5, &v27);
      v7 = (v5 - 120);
      sub_24EAEC5C8(v5 - 120, v26);
      v8 = v32;
      v9 = v26[80];
      sub_24E601704(v26, &qword_27F228040, &qword_24F947320);
      result = sub_24E601704(&v27, &qword_27F228040, &qword_24F947320);
      if ((v8 & 1) == 0 && v9)
      {
LABEL_4:
        a3 = v35 + 1;
        v5 = v25 + 120;
        v6 = v24 - 1;
        if (v35 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v31 = *(v5 + 64);
      v32 = *(v5 + 80);
      v33 = *(v5 + 96);
      v34 = *(v5 + 112);
      v27 = *v5;
      v28 = *(v5 + 16);
      v29 = *(v5 + 32);
      v30 = *(v5 + 48);
      v10 = *v7;
      v11 = *(v5 - 104);
      v12 = *(v5 - 72);
      *(v5 + 32) = *(v5 - 88);
      *(v5 + 48) = v12;
      *v5 = v10;
      *(v5 + 16) = v11;
      v13 = *(v5 - 56);
      v14 = *(v5 - 40);
      v15 = *(v5 - 24);
      *(v5 + 112) = *(v5 - 8);
      *(v5 + 80) = v14;
      *(v5 + 96) = v15;
      *(v5 + 64) = v13;
      v16 = v27;
      v17 = v28;
      v18 = v30;
      *(v5 - 88) = v29;
      *(v5 - 72) = v18;
      *v7 = v16;
      *(v5 - 104) = v17;
      v19 = v31;
      v20 = v32;
      v21 = v33;
      *(v5 - 8) = v34;
      *(v5 - 40) = v20;
      *(v5 - 24) = v21;
      *(v5 - 56) = v19;
      v5 -= 120;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EAEE3F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v106 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v10 = *v106;
    if (!*v106)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_24E86164C(v9);
      v9 = result;
    }

    v98 = v5;
    v123 = v9;
    v99 = *(v9 + 2);
    if (v99 >= 2)
    {
      while (1)
      {
        v100 = *v6;
        if (!*v6)
        {
          goto LABEL_129;
        }

        v6 = *&v9[16 * v99];
        v5 = *&v9[16 * v99 + 24];
        sub_24EAEEC08((v100 + 120 * v6), (v100 + 120 * *&v9[16 * v99 + 16]), (v100 + 120 * v5), v10);
        if (v98)
        {
        }

        if (v5 < v6)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v99 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v101 = &v9[16 * v99];
        *v101 = v6;
        *(v101 + 1) = v5;
        v123 = v9;
        result = sub_24E8615C0(v99 - 1);
        v9 = v123;
        v99 = *(v123 + 2);
        v6 = a3;
        if (v99 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &v115;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    if (v12 >= v7)
    {
      v18 = v12;
      goto LABEL_21;
    }

    v124 = v7;
    v13 = *v6;
    sub_24EAEC5C8(*v6 + 120 * v12, &v115);
    v14 = v11;
    v15 = 120 * v11;
    sub_24EAEC5C8(v13 + v15, v113);
    v111 = v120 | v114 ^ 1;
    sub_24E601704(v113, &qword_27F228040, &qword_24F947320);
    result = sub_24E601704(&v115, &qword_27F228040, &qword_24F947320);
    v104 = v14;
    v16 = v14 + 2;
    v17 = v13 + v15 + 240;
    while (1)
    {
      v18 = v124;
      if (v124 == v16)
      {
        break;
      }

      sub_24EAEC5C8(v17, &v115);
      sub_24EAEC5C8(v17 - 120, v113);
      v19 = v120 & 1 | ((v114 & 1) == 0);
      sub_24E601704(v113, &qword_27F228040, &qword_24F947320);
      result = sub_24E601704(&v115, &qword_27F228040, &qword_24F947320);
      ++v16;
      v17 += 120;
      if ((v111 & 1) != v19)
      {
        v18 = v16 - 1;
        break;
      }
    }

    v6 = a3;
    if (v111)
    {
      if (v18 < v104)
      {
        goto LABEL_122;
      }

      if (v104 >= v18)
      {
        v11 = v104;
        goto LABEL_21;
      }

      v20 = v9;
      v21 = v5;
      v22 = 120 * v18 - 120;
      v23 = v18;
      v24 = v104;
      do
      {
        if (v24 != --v23)
        {
          v25 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v26 = v25 + v22;
          v119 = *(v25 + v15 + 64);
          v120 = *(v25 + v15 + 80);
          v121 = *(v25 + v15 + 96);
          v122 = *(v25 + v15 + 112);
          v115 = *(v25 + v15);
          v116 = *(v25 + v15 + 16);
          v117 = *(v25 + v15 + 32);
          v118 = *(v25 + v15 + 48);
          result = memmove((v25 + v15), (v25 + v22), 0x78uLL);
          *(v26 + 64) = v119;
          *(v26 + 80) = v120;
          *(v26 + 96) = v121;
          *(v26 + 112) = v122;
          *v26 = v115;
          *(v26 + 16) = v116;
          *(v26 + 32) = v117;
          *(v26 + 48) = v118;
        }

        ++v24;
        v22 -= 120;
        v15 += 120;
      }

      while (v24 < v23);
      v5 = v21;
      v6 = a3;
      v9 = v20;
    }

    v11 = v104;
LABEL_21:
    v27 = *(v6 + 8);
    if (v18 < v27)
    {
      if (__OFSUB__(v18, v11))
      {
        goto LABEL_121;
      }

      if (v18 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v27)
        {
          v28 = *(v6 + 8);
        }

        else
        {
          v28 = v11 + a4;
        }

        if (v28 < v11)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v18 != v28)
        {
          break;
        }
      }
    }

    v29 = v18;
    if (v18 < v11)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_24E615ED8((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v11;
    *(v33 + 5) = v29;
    v108 = v29;
    v34 = *v106;
    if (!*v106)
    {
      goto LABEL_130;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_50:
          if (v39)
          {
            goto LABEL_109;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_112;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_116;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_64:
        if (v57)
        {
          goto LABEL_111;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_114;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_71:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_127;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_24EAEEC08((*v6 + 120 * v74), (*v6 + 120 * *&v9[16 * v35 + 32]), (*v6 + 120 * v75), v34);
        if (v5)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        v123 = v9;
        result = sub_24E8615C0(v35);
        v9 = v123;
        v32 = *(v123 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_107;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_108;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_110;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_113;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_117;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = *(v6 + 8);
    v8 = v108;
    if (v108 >= v7)
    {
      goto LABEL_92;
    }
  }

  v102 = v9;
  v77 = v18;
  v78 = *v6;
  v79 = *v6 + 120 * v77;
  v105 = v11;
  v124 = v77;
  v80 = v11 - v77;
  v109 = v28;
LABEL_82:
  v110 = v80;
  v112 = v79;
  v81 = v79;
  while (1)
  {
    sub_24EAEC5C8(v81, &v115);
    v82 = (v81 - 120);
    sub_24EAEC5C8(v81 - 120, v113);
    v83 = v120;
    v84 = v114;
    sub_24E601704(v113, &qword_27F228040, &qword_24F947320);
    result = sub_24E601704(&v115, &qword_27F228040, &qword_24F947320);
    if ((v83 & 1) == 0 && v84)
    {
LABEL_81:
      v79 = v112 + 120;
      v80 = v110 - 1;
      v29 = v109;
      if (++v124 != v109)
      {
        goto LABEL_82;
      }

      v9 = v102;
      v6 = a3;
      v11 = v105;
      if (v109 < v105)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v78)
    {
      break;
    }

    v119 = *(v81 + 64);
    v120 = *(v81 + 80);
    v121 = *(v81 + 96);
    v122 = *(v81 + 112);
    v115 = *v81;
    v116 = *(v81 + 16);
    v117 = *(v81 + 32);
    v118 = *(v81 + 48);
    v85 = *v82;
    v86 = *(v81 - 104);
    v87 = *(v81 - 72);
    *(v81 + 32) = *(v81 - 88);
    *(v81 + 48) = v87;
    *v81 = v85;
    *(v81 + 16) = v86;
    v88 = *(v81 - 56);
    v89 = *(v81 - 40);
    v90 = *(v81 - 24);
    *(v81 + 112) = *(v81 - 8);
    *(v81 + 80) = v89;
    *(v81 + 96) = v90;
    *(v81 + 64) = v88;
    v91 = v115;
    v92 = v116;
    v93 = v118;
    *(v81 - 88) = v117;
    *(v81 - 72) = v93;
    *v82 = v91;
    *(v81 - 104) = v92;
    v94 = v119;
    v95 = v120;
    v96 = v121;
    *(v81 - 8) = v122;
    *(v81 - 40) = v95;
    *(v81 - 24) = v96;
    *(v81 - 56) = v94;
    v81 -= 120;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_24EAEEC08(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 120;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 120;
  if (v9 >= v11)
  {
    v19 = 120 * v11;
    if (a4 != __src || &__src[v19] <= a4)
    {
      memmove(a4, __src, 120 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 120 || v6 <= v7)
    {
      v18 = v6;
    }

    else
    {
      v30 = v4;
      do
      {
        v20 = (v6 - 120);
        v21 = v13 - 120;
        v5 -= 120;
        while (1)
        {
          v35 = v21 + 120;
          v24 = v5 + 120;
          sub_24EAEC5C8(v21, v33);
          v25 = v20;
          sub_24EAEC5C8(v20, v31);
          v26 = v34;
          v27 = v32;
          sub_24E601704(v31, &qword_27F228040, &qword_24F947320);
          sub_24E601704(v33, &qword_27F228040, &qword_24F947320);
          if ((v26 & 1) != 0 || !v27)
          {
            break;
          }

          if (v24 != v35)
          {
            memmove(v5, v21, 0x78uLL);
          }

          v22 = v21 - 120;
          v5 -= 120;
          v23 = v21 > v30;
          v21 -= 120;
          v20 = v25;
          if (!v23)
          {
            v13 = v22 + 120;
            v18 = v6;
            v4 = v30;
            goto LABEL_36;
          }
        }

        v18 = v25;
        if (v24 != v6)
        {
          memmove(v5, v25, 0x78uLL);
        }

        v4 = v30;
        v13 = v35;
        if (v35 <= v30)
        {
          break;
        }

        v6 = v18;
      }

      while (v18 > v7);
      v13 = v21 + 120;
    }
  }

  else
  {
    v12 = 120 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 120 && v6 < v5)
    {
      while (1)
      {
        sub_24EAEC5C8(v6, v33);
        sub_24EAEC5C8(v4, v31);
        v14 = v34;
        v15 = v32;
        sub_24E601704(v31, &qword_27F228040, &qword_24F947320);
        sub_24E601704(v33, &qword_27F228040, &qword_24F947320);
        if ((v14 & 1) != 0 || !v15)
        {
          break;
        }

        v16 = v4;
        v17 = v7 == v4;
        v4 += 120;
        if (!v17)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 120;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 120;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v7, v16, 0x78uLL);
      goto LABEL_14;
    }

LABEL_16:
    v18 = v7;
  }

LABEL_36:
  v28 = 120 * ((v13 - v4) / 120);
  if (v18 != v4 || v18 >= &v4[v28])
  {
    memmove(v18, v4, v28);
  }

  return 1;
}

void sub_24EAEEF3C(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v35 = MEMORY[0x277D84F90];
  sub_24F45826C(0, v9, 0);
  v34 = v7;
  if (v9)
  {
    v13 = a5[2];
    v14 = a4;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_58;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_59;
      }

      if (v8 < 0)
      {
        goto LABEL_60;
      }

      if (v13 == v18)
      {

        v19 = a5;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BF8, &qword_24F947328);
            v19 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v19);
            v19[2] = v18;
            v19[3] = 2 * ((v22 - 32) / 120);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040, &qword_24F947320);
          swift_arrayInitWithCopy();
          v14 = a4;
        }
      }

      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24F45826C((v20 > 1), v21 + 1, 1);
        v14 = a4;
      }

      *(v35 + 16) = v21 + 1;
      *(v35 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = v34;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v16 = v8;
  v14 = a4;
LABEL_34:
  v23 = v16 <= v7;
  if (a3 > 0)
  {
    v23 = v16 >= v7;
  }

  if (!v23)
  {
    while (1)
    {
      v24 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v25 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v26 = a5[2];
      if (v26 < v25)
      {
        v25 = a5[2];
      }

      v27 = v25 - v16;
      if (v25 < v16)
      {
        goto LABEL_62;
      }

      if (v16 < 0)
      {
        goto LABEL_63;
      }

      if (v26 == v27)
      {

        v28 = a5;
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
        if (v25 != v16)
        {
          if (v27 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BF8, &qword_24F947328);
            v28 = swift_allocObject();
            v32 = _swift_stdlib_malloc_size(v28);
            v28[2] = v27;
            v28[3] = 2 * ((v32 - 32) / 120);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040, &qword_24F947320);
          swift_arrayInitWithCopy();
          v14 = a4;
        }
      }

      v30 = *(v35 + 16);
      v29 = *(v35 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_24F45826C((v29 > 1), v30 + 1, 1);
        v14 = a4;
      }

      *(v35 + 16) = v30 + 1;
      *(v35 + 8 * v30 + 32) = v28;
      v31 = v24 <= v34;
      if (a3 > 0)
      {
        v31 = v24 >= v34;
      }

      v16 = v24;
      if (v31)
      {
        return;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

uint64_t sub_24EAEF314(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v92 = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  if (!v12)
  {
LABEL_11:
    v17 = a1;

    v18 = MEMORY[0x277D84F90];
    v19 = a2;
    goto LABEL_20;
  }

  v13 = 0;
  v14 = a1 + 32;
  v64 = a1 + 32;
  while (1)
  {
    sub_24EAEC5C8(v14, v82);
    if (v86 >= 8u && v86 != 9)
    {
      break;
    }

    v15 = sub_24F92CE08();

    result = sub_24E601704(v82, &qword_27F228040, &qword_24F947320);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_5:
    ++v13;
    v14 += 120;
    if (v12 == v13)
    {
      goto LABEL_11;
    }
  }

  if (v86 == 10)
  {
    sub_24E601704(v82, &qword_27F228040, &qword_24F947320);
    goto LABEL_5;
  }

  swift_bridgeObjectRelease_n();
  result = sub_24E601704(v82, &qword_27F228040, &qword_24F947320);
LABEL_13:
  v20 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v20 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v12 < v20)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  if (v12 == v20)
  {

    v18 = a1;
  }

  else
  {
    sub_24E6B8A14(a1, v64, 0, (2 * v20) | 1);
    v18 = v21;
  }

  v19 = a2;
  sub_24E6B8A14(a1, v64, v20, (2 * v12) | 1);
  v17 = v22;
LABEL_20:
  v23 = *(v18 + 16);

  if (v23)
  {
    v24 = sub_24EAECE0C(v18, v19, a3, a4, a5, a6);

    sub_24EA0ABE0(v24);
  }

  else
  {
  }

  v25 = *(v17 + 16);

  if (v25)
  {
    if (*(v92 + 16))
    {
      MaxY = CGRectGetMaxY(*(v92 + 32));
    }

    else
    {
      MaxY = 0.0;
    }

    v93.origin.x = a3;
    v93.origin.y = a4;
    v93.size.width = a5;
    v93.size.height = a6;
    MinX = CGRectGetMinX(v93);
    v94.origin.x = a3;
    v94.origin.y = a4;
    v94.size.width = a5;
    v94.size.height = a6;
    Width = CGRectGetWidth(v94);
    v95.origin.x = a3;
    v29 = Width;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    Height = CGRectGetHeight(v95);
    v81 = MEMORY[0x277D84F90];
    v96.origin.x = MinX;
    v96.origin.y = MaxY;
    v96.size.width = v29;
    v96.size.height = Height;
    CGRectGetMinX(v96);
    v65 = MinX;
    v97.origin.x = MinX;
    v97.origin.y = MaxY;
    v97.size.width = v29;
    v97.size.height = Height;
    MinY = CGRectGetMinY(v97);
    v32 = *(v17 + 16);
    if (v32)
    {
      v67 = MinY;
      v63 = MaxY;
      v33 = a7 + -1.0;
      v34 = v17 + 32;
      v35 = MEMORY[0x277D84F90];
      LOBYTE(v36) = 1;
      v37 = 0.0;
      v62 = a7 + -1.0;
      do
      {
        v69 = v32;
        sub_24EAEC5C8(v34, v82);
        v49 = v85;
        v50 = v86;
        v51 = v87;
        v52 = v88;
        v53 = v89;
        v54 = v90;
        v55 = v91;
        v70[0] = v82[0];
        v70[1] = v82[1];
        v71 = v83;
        sub_24E612E28(&v84, v72);
        v74 = v49;
        v75 = v50;
        v76 = v51;
        v77 = v52;
        v78 = v53;
        v79 = v54;
        v80 = v55;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        sub_24F9222A8();
        v36 = v36 & (v37 < v33);
        if (v36 == 1)
        {
          v38 = v56;
          v39 = v57;
          sub_24EA0ABE0(v35);
          __swift_project_boxed_opaque_existential_1((v66 + 104), *(v66 + 128));
          sub_24F9223B8();
          v41 = v40;
          v98.origin.y = v63;
          v98.origin.x = v65;
          v98.size.height = Height;
          v42 = v29;
          v98.size.width = v29;
          v43 = CGRectGetMinX(v98);
          v35 = sub_24E617B8C(0, 1, 1, MEMORY[0x277D84F90]);
          v45 = *(v35 + 2);
          v44 = *(v35 + 3);
          if (v45 >= v44 >> 1)
          {
            v35 = sub_24E617B8C((v44 > 1), v45 + 1, 1, v35);
          }

          v46 = v67;
          v99.origin.y = v67 + v41;
          *(v35 + 2) = v45 + 1;
          v47 = &v35[32 * v45];
          v47[4] = v43;
          v47[5] = v67 + v41;
          v47[6] = v38;
          v47[7] = v39;
          v99.origin.x = v43;
          v99.size.width = v38;
          v99.size.height = v39;
          v48 = CGRectGetMaxY(v99);
          if (v48 > v67)
          {
            v46 = v48;
          }

          v67 = v46;
          v37 = v37 + 1.0;
          v33 = v62;
          v29 = v42;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_24E617B8C(0, *(v35 + 2) + 1, 1, v35);
          }

          v59 = *(v35 + 2);
          v58 = *(v35 + 3);
          if (v59 >= v58 >> 1)
          {
            v35 = sub_24E617B8C((v58 > 1), v59 + 1, 1, v35);
          }

          *(v35 + 2) = v59 + 1;
          v60 = &v35[32 * v59];
          *(v60 + 2) = 0u;
          *(v60 + 3) = 0u;
        }

        __swift_project_boxed_opaque_existential_1(v72, v73);
        sub_24F922248();
        sub_24E601704(v70, &qword_27F228040, &qword_24F947320);
        v34 += 120;
        v32 = v69 - 1;
      }

      while (v69 != 1);
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    sub_24EA0ABE0(v35);
    sub_24EA0ABE0(v81);
  }

  else
  {
  }

  return v92;
}

uint64_t sub_24EAEFA44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 306))
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

uint64_t sub_24EAEFA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 306) = 1;
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

    *(result + 306) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAEFB38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 297))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAEFB80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24EAEFC20(void *a1, void *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v12 = a3;
  MinY = CGRectGetMinY(*&a3);
  __swift_project_boxed_opaque_existential_1((v6 + 144), *(v6 + 168));
  sub_24F9223B8();
  v16 = v15;
  v75 = a2;
  v17 = sub_24EAEE040(a2);
  if (v17)
  {
    v18 = v17;
    v19 = a1[2];

    sub_24EAEEF3C(0, v19, v18, v18, a1);
    v21 = v20;

    v74 = *(v21 + 16);
    if (!v74)
    {
LABEL_52:

      return;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228050, &unk_24F980F30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24F93DE60;
    *(v21 + 32) = a1;

    v74 = 1;
  }

  v22 = 0;
  v23 = MinY + v16;
  v73 = v12;
  while (v22 < *(v21 + 16))
  {
    v25 = *(v21 + 32 + 8 * v22);

    v78.origin.x = v12;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    MinX = CGRectGetMinX(v78);
    sub_24EAED428(v25, v75, v12, a4, a5, a6);
    v28 = v27;

    v29 = *(v28 + 16);
    if (v29)
    {
      v76 = MEMORY[0x277D84F90];
      sub_24F45824C(0, v29, 0);
      v30 = v76;
      v31 = (v28 + 32);
      v32 = *(v76 + 16);
      v33 = v29;
      do
      {
        v34 = *v31;
        v77 = v30;
        v35 = *(v30 + 24);
        v36 = v32 + 1;
        if (v32 >= v35 >> 1)
        {
          sub_24F45824C((v35 > 1), v32 + 1, 1);
          v30 = v77;
        }

        *(v30 + 16) = v36;
        *(v30 + 8 * v32 + 32) = v34;
        v31 += 4;
        ++v32;
        --v33;
      }

      while (v33);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
      v36 = *(MEMORY[0x277D84F90] + 16);
      if (!v36)
      {
        v38 = 0.0;
        goto LABEL_24;
      }
    }

    if (v36 <= 3)
    {
      v37 = 0;
      v38 = 0.0;
LABEL_22:
      v41 = v36 - v37;
      v42 = 8 * v37 + 32;
      do
      {
        v38 = v38 + *(v30 + v42);
        v42 += 8;
        --v41;
      }

      while (v41);
      goto LABEL_24;
    }

    v37 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (v30 + 48);
    v38 = 0.0;
    v40 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v38 = v38 + *(v39 - 2) + *(v39 - 1) + *v39 + v39[1];
      v39 += 4;
      v40 -= 4;
    }

    while (v40);
    if (v36 != v37)
    {
      goto LABEL_22;
    }

LABEL_24:

    v79.origin.x = v12;
    v43 = a4;
    v79.origin.y = a4;
    v44 = a5;
    v79.size.width = a5;
    v45 = a6;
    v79.size.height = a6;
    Width = CGRectGetWidth(v79);
    v47 = *(v28 + 16);
    if (v47)
    {
      v48 = (Width - v38) / (v29 - 1);
      v49 = (v28 + 40);
      v50 = MEMORY[0x277D84F90];
      v51 = MEMORY[0x277D84F90];
      do
      {
        v52 = *(v49 - 1);
        v53 = *v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_24E617B8C(0, *(v51 + 2) + 1, 1, v51);
        }

        v55 = *(v51 + 2);
        v54 = *(v51 + 3);
        if (v55 >= v54 >> 1)
        {
          v51 = sub_24E617B8C((v54 > 1), v55 + 1, 1, v51);
        }

        *(v51 + 2) = v55 + 1;
        v56 = &v51[32 * v55];
        v56[4] = MinX;
        v56[5] = v23;
        v56[6] = v52;
        v56[7] = v53;
        v80.origin.x = MinX;
        v80.origin.y = v23;
        v80.size.width = v52;
        v80.size.height = v53;
        MinX = v48 + CGRectGetMaxX(v80);
        v49 += 4;
        --v47;
      }

      while (v47);
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
      v51 = MEMORY[0x277D84F90];
    }

    sub_24EA0ABE0(v57);
    v58 = *(v51 + 2);
    if (v58)
    {
      sub_24F45824C(0, v58, 0);
      v59 = v51 + 56;
      do
      {
        MaxY = CGRectGetMaxY(*(v59 - 24));
        v62 = *(v50 + 16);
        v61 = *(v50 + 24);
        v63 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          v64 = MaxY;
          sub_24F45824C((v61 > 1), v62 + 1, 1);
          MaxY = v64;
        }

        *(v50 + 16) = v63;
        *(v50 + 8 * v62 + 32) = MaxY;
        v59 += 32;
        --v58;
      }

      while (v58);
    }

    else
    {
      v63 = *(v50 + 16);
      if (!v63)
      {

        if (!*(v51 + 2))
        {
          goto LABEL_57;
        }

        v69 = *(v51 + 4);
        v70 = *(v51 + 5);
        v71 = *(v51 + 6);
        v72 = *(v51 + 7);

        v81.origin.x = v69;
        v81.origin.y = v70;
        v81.size.width = v71;
        v81.size.height = v72;
        v66 = CGRectGetMaxY(v81);
        a6 = v45;
        a5 = v44;
        goto LABEL_7;
      }
    }

    a6 = v45;

    v65 = *(v50 + 16);
    if (!v65)
    {
      goto LABEL_54;
    }

    a5 = v44;
    v66 = *(v50 + 32);
    v67 = v63 - 1;
    if (v63 == 1)
    {

LABEL_7:
      a4 = v43;
      goto LABEL_8;
    }

    if (v65 == 1)
    {
      goto LABEL_55;
    }

    if (v63 > v65)
    {
      goto LABEL_56;
    }

    a4 = v43;
    v68 = 40;
    do
    {
      if (v66 < *(v50 + v68))
      {
        v66 = *(v50 + v68);
      }

      v68 += 8;
      --v67;
    }

    while (v67);

LABEL_8:
    v12 = v73;
    ++v22;
    __swift_project_boxed_opaque_existential_1((v7 + 104), *(v7 + 128));
    sub_24F9223B8();
    v23 = v66 + v24;
    if (v22 == v74)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_24EAF01E8(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_24EAF1884(v5, v7) & 1;
}

double FlowPreviewOfferPresenter.init(displayProperties:offerAction:asPartOf:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a4@<X8>)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 1u && !*(a1 + 16))
  {
    goto LABEL_9;
  }

  v7 = sub_24F92CE08();

  if (v7)
  {
    goto LABEL_10;
  }

  if (*(a1 + 16) > 2u)
  {
LABEL_9:

    goto LABEL_10;
  }

  v8 = sub_24F92CE08();

  if ((v8 & 1) == 0)
  {

LABEL_8:

    result = 0.0;
    a4[3] = 0u;
    a4[4] = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    return result;
  }

LABEL_10:
  *&v21 = a2;
  *(&v21 + 1) = a1;
  *(&v23 + 1) = type metadata accessor for Restrictions();
  *&v24 = &protocol witness table for Restrictions;
  sub_24F928FD8();

  sub_24F92A758();
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F92A758();
  *(&v25 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F92A758();
  v10 = v20;
  ObjectType = swift_getObjectType();
  v12 = *(a1 + 32);
  v19 = *(a1 + 24);
  v20 = v12;
  v13 = *(v10 + 56);

  v14 = v13(&v19, ObjectType, v10);
  v16 = v15;
  swift_unknownObjectRelease();

  *(&v24 + 1) = v14;
  *&v25 = v16;
  v17 = v22;
  *a4 = v21;
  a4[1] = v17;
  v18 = v24;
  a4[2] = v23;
  a4[3] = v18;
  result = *&v25;
  a4[4] = v25;
  return result;
}

uint64_t FlowPreviewOfferPresenter.offerTitles.getter()
{
  if (*(*(v0 + 8) + 16) > 2u)
  {
  }

  else
  {
    v1 = sub_24F92CE08();

    if ((v1 & 1) == 0)
    {
      return sub_24EAF0790();
    }
  }

  v2 = *(v0 + 72) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  v3 = swift_beginAccess();
  if ((*(v2 + 8) & 0xC0) == 0x80)
  {
    return sub_24EAF0790();
  }

  return sub_24EAF0614(v3);
}

uint64_t sub_24EAF0614(uint64_t a1)
{
  v2 = v1[1];
  if (*(v2 + 122) == 1)
  {
    v3 = v1[8];
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v10, ObjectType, v3);
    if ((v10[6] >> 60) < 2)
    {
      return 0;
    }

    sub_24E88D2AC(v10);
  }

  v5 = sub_24EAF1160();
  v6 = (v1[9] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState);
  swift_beginAccess();
  v7 = v6[8] >> 6;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (*(*(v2 + 88) + 16))
      {

        sub_24E76DB58(10);
        if (v9)
        {
        }
      }

      return v5;
    }

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_8:

    return 0;
  }

  sub_24EAF1440(*v6 == 1);
  return v5;
}

uint64_t sub_24EAF0790()
{
  sub_24EAF0C28(*(v0 + 64), &v6);
  if (!sub_24EAF08AC())
  {
    sub_24EAF176C(&v6);
    return 0;
  }

  result = v6;
  if (!v10)
  {
    v4 = v6;

    sub_24EAF176C(&v6);
    return v4;
  }

  if (v10 == 1)
  {
    return result;
  }

  if (!(v8 | v7 | v6 | v9))
  {
    v3 = 0xD000000000000022;
    v2 = 0x800000024FA52880;
    goto LABEL_12;
  }

  if (v6 != 1 || v8 | v7 | v9)
  {
    return 0;
  }

  v2 = 0x800000024FA52860;
  v3 = 0xD00000000000001ELL;
LABEL_12:
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  return localizedString(_:comment:)(*&v3, v5)._countAndFlagsBits;
}

BOOL sub_24EAF08AC()
{
  v1 = v0[1];
  if (*(v1 + 96) == 5)
  {
    return 0;
  }

  if (*(v1 + 16) > 2u)
  {
  }

  else
  {
    v3 = sub_24F92CE08();

    if ((v3 & 1) == 0)
    {
LABEL_11:
      sub_24EAF0C28(v0[8], &v11);
      if (!v15)
      {
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v10 = 0;
        v8 = RestrictionsProtocol.doesAllow(_:properties:)(&v10, v1);
        sub_24EAF176C(&v11);
        return v8;
      }

      if (v15 == 2)
      {
        if (!(v13 | v14 | v11 | v12))
        {
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          v6 = 1;
          goto LABEL_21;
        }

        if (v11 == 1 && !(v13 | v14 | v12))
        {
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          v6 = 2;
LABEL_21:
          v10 = v6;
          v7 = &v10;
          return RestrictionsProtocol.doesAllow(_:properties:)(v7, v1);
        }
      }

      sub_24EAF176C(&v11);
      return 1;
    }
  }

  v4 = v0[9] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v5 = *(v4 + 8) >> 6;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_11;
    }

LABEL_17:
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    LOBYTE(v11) = 0;
    v7 = &v11;
    return RestrictionsProtocol.doesAllow(_:properties:)(v7, v1);
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_24EAF0AE0()
{
  if (*(v0[1] + 16) > 2u)
  {
  }

  else
  {
    v1 = sub_24F92CE08();

    if ((v1 & 1) == 0)
    {
    }
  }

  v2 = v0[9] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  if ((*(v2 + 8) & 0xC0) == 0x80)
  {
  }

  if (!*v0)
  {
    return 0;
  }

  type metadata accessor for OfferStateAction(0);
  result = swift_dynamicCastClass();
  if (result)
  {
  }

  return result;
}

uint64_t sub_24EAF0C28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(a1 + 16))(&v18, ObjectType, a1);
  v6 = *(v2 + 8);
  v7 = v24 >> 60;
  if ((v24 >> 60) <= 3)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v8 = 2;
        result = v24 >> 60;
        v11 = v24 >> 60;
LABEL_14:
        v12 = 2;
        goto LABEL_35;
      }

      if (v18)
      {
        v7 = 0;
        result = 0;
        v11 = 0;
        if (*(v6 + 122))
        {
          v8 = 7;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_14;
      }

      goto LABEL_34;
    }

    if (v7 == 2)
    {
      sub_24E88D2AC(&v18);
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 1;
      goto LABEL_35;
    }

LABEL_12:
    sub_24E88D2AC(&v18);
LABEL_13:
    v8 = 0;
    v7 = 0;
    result = 0;
    v11 = 0;
    goto LABEL_14;
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      sub_24E88D2AC(&v18);
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 3;
      goto LABEL_35;
    }

    goto LABEL_12;
  }

  if (v7 == 6)
  {
    sub_24E88D2AC(&v18);
    v7 = 0;
    result = 0;
    v11 = 0;
    v12 = 2;
    v8 = 4;
    goto LABEL_35;
  }

  if (v7 != 7)
  {
    v13 = *(v6 + 120);
    v14 = (*(&v18 + 1) << 8) | ((*(&v18 + 5) | (HIBYTE(v18) << 16)) << 40) | v18;
    v15 = v22 | v23;
    if (v24 == 0x8000000000000000 && !(v15 | v25 | v21 | v20 | v19 | v14))
    {
      goto LABEL_22;
    }

    v17 = v15 | v21 | v20 | v19;
    if (!v25 && v24 == 0x8000000000000000 && v14 == 1 && !v17)
    {
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 5;
      goto LABEL_35;
    }

    if (v25 || v24 != 0x8000000000000000 || v14 != 2 || v17)
    {
      if (!v25 && v24 == 0x8000000000000000 && v14 == 3 && !v17)
      {
        v7 = 0;
        result = 0;
        v11 = 0;
        v12 = 2;
        v8 = 8;
        goto LABEL_35;
      }

LABEL_22:
      if ((v13 & 1) == 0)
      {
        v8 = sub_24EAF0EDC();
        v7 = v16;
        result = sub_24EAF1040();
        v12 = 0;
        goto LABEL_35;
      }

      goto LABEL_13;
    }

LABEL_34:
    v7 = 0;
    result = 0;
    v11 = 0;
    v12 = 2;
    v8 = 6;
    goto LABEL_35;
  }

  v8 = sub_24EAF10C4();
  v7 = v9;
  sub_24E88D2AC(&v18);
  result = 0;
  v11 = 0;
  v12 = 1;
LABEL_35:
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = result;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_24EAF0EDC()
{
  v1 = *(v0 + 8);
  if (*(v1 + 122) == 1)
  {
    v2 = *(v1 + 97);
    v3 = v2 > 0xC;
    v4 = (1 << v2) & 0x1380;
    if (!v3 && v4 != 0)
    {
      v6 = *(v1 + 72);
      if (!*(v6 + 16))
      {
LABEL_9:
        v9._countAndFlagsBits = 0xD000000000000031;
        v9._object = 0x800000024FA52790;
        v10._countAndFlagsBits = 0;
        v10._object = 0xE000000000000000;
        return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
      }

      v7 = sub_24E76DB58(13);
      if ((v8 & 1) == 0)
      {

        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  v6 = *(v1 + 72);
  if (*(v6 + 16))
  {

    v7 = sub_24E76DB58(0);
    if (v12)
    {
LABEL_12:
      countAndFlagsBits = *(*(v6 + 56) + 16 * v7);

LABEL_17:

      return countAndFlagsBits;
    }
  }

  v13 = sub_24EAF0AE0();
  if (!v13 || (countAndFlagsBits = *(v13 + 16), v14 = *(v13 + 24), , , !v14))
  {
    v15._object = 0x800000024FA52770;
    v15._countAndFlagsBits = 0xD00000000000001BLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v15, v16)._countAndFlagsBits;
    goto LABEL_17;
  }

  return countAndFlagsBits;
}

uint64_t sub_24EAF1040()
{
  v1 = *(*(v0 + 8) + 88);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_24E76DB58(0);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 16 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_24EAF10C4()
{
  v1 = *(*(v0 + 8) + 72);
  if (*(v1 + 16))
  {

    v2 = sub_24E76DB58(4);
    if (v3)
    {
      v4 = *(*(v1 + 56) + 16 * v2);

      return v4;
    }
  }

  v6._object = 0x800000024FA527D0;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
}

uint64_t sub_24EAF1160()
{
  v1 = (*(v0 + 72) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState);
  swift_beginAccess();
  v2 = v1[8] >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v5 = *(*(v0 + 8) + 72);
      if (*(v5 + 16))
      {

        v6 = sub_24E76DB58(4);
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v8 = "OfferButton.FlowPreview.Open";
      v9 = 0xD000000000000023;
      goto LABEL_20;
    }

    v12 = *(*(v0 + 8) + 72);
    if (*(v12 + 16))
    {

      v13 = sub_24E76DB58(10);
      if (v14)
      {
        countAndFlagsBits = *(*(v12 + 56) + 16 * v13);

        goto LABEL_25;
      }
    }

    v22 = sub_24EAF0AE0();
    if (v22)
    {
      countAndFlagsBits = *(v22 + 16);
      v23 = *(v22 + 24);

      if (v23)
      {
        return countAndFlagsBits;
      }
    }

    v24._object = 0x800000024FA52770;
    v24._countAndFlagsBits = 0xD00000000000001BLL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v24, v25)._countAndFlagsBits;
LABEL_25:

    return countAndFlagsBits;
  }

  result = 0;
  if (v2)
  {
    return result;
  }

  v4 = *(v0 + 8);
  if (*(v4 + 122) == 1)
  {
    v5 = *(v4 + 72);
    if (!*(v5 + 16))
    {
LABEL_7:
      v8 = "Preview.Arcade.Open";
      v9 = 0xD000000000000034;
LABEL_20:
      v20 = v8 | 0x8000000000000000;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      return localizedString(_:comment:)(*&v9, v21)._countAndFlagsBits;
    }

    v6 = sub_24E76DB58(14);
    if ((v7 & 1) == 0)
    {

      goto LABEL_7;
    }

LABEL_11:
    v11 = *(*(v5 + 56) + 16 * v6);

    return v11;
  }

  v16 = *v1;
  v17 = *(v4 + 72);
  v18 = *(v17 + 16);
  if (v16 == 1)
  {
    if (v18)
    {

      v19 = 9;
      goto LABEL_29;
    }

LABEL_32:
    v29 = sub_24EAF0AE0();
    if (!v29 || (v28 = *(v29 + 16), v30 = *(v29 + 24), , , !v30))
    {
      v31._object = 0x800000024FA52770;
      v31._countAndFlagsBits = 0xD00000000000001BLL;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v28 = localizedString(_:comment:)(v31, v32)._countAndFlagsBits;
    }

    return v28;
  }

  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = 10;
LABEL_29:
  v26 = sub_24E76DB58(v19);
  if ((v27 & 1) == 0)
  {

    goto LABEL_32;
  }

  v28 = *(*(v17 + 56) + 16 * v26);

  return v28;
}

uint64_t sub_24EAF1440(char a1)
{
  v2 = *(*(v1 + 8) + 88);
  v3 = *(v2 + 16);
  if ((a1 & 1) == 0)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = sub_24E76DB58(10);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (v3)
  {

    v4 = sub_24E76DB58(9);
    if ((v5 & 1) == 0)
    {
LABEL_4:

      return 0;
    }

LABEL_7:
    v7 = *(*(v2 + 56) + 16 * v4);

    return v7;
  }

  return 0;
}

double FlowPreviewOfferPresenter.performAction(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  if (*(v3 + 96) != 5)
  {
    v6 = sub_24EAF0AE0();
    if (v6)
    {
      v8 = v6;
      if (*(v3 + 16) > 2u)
      {
      }

      else
      {
        v9 = sub_24F92CE08();

        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v10 = v2[9] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
      swift_beginAccess();
      if ((*(v10 + 8) & 0xC0) != 0x80)
      {
        if (a1)
        {
          ObjectType = swift_getObjectType();
          v21 = swift_getObjectType();
          v18 = a1;
          v16 = *(a2 + 8);
          swift_unknownObjectRetain();
          v16(v8, &v18, ObjectType, a2);

          v14 = &v18;
          goto LABEL_18;
        }

        goto LABEL_19;
      }

LABEL_8:
      v11 = v2[7];
      sub_24EAF0C28(v2[8], &v18);
      if (v22 >= 2u)
      {
        if (v20 | v21 | v18 | v19 && ((v18 - 1) > 3 || v20 | v21 | v19))
        {
LABEL_19:

          return result;
        }
      }

      else
      {
        sub_24EAF176C(&v18);
      }

      type metadata accessor for OfferConfirmationAction(0);
      if (!swift_dynamicCastClass() && a1)
      {
        v12 = swift_getObjectType();
        v17[3] = swift_getObjectType();
        v17[0] = v11;
        v13 = *(a2 + 8);
        swift_unknownObjectRetain();
        v13(v8, v17, v12, a2);

        v14 = v17;
LABEL_18:
        sub_24E857CC8(v14);
        return result;
      }

      goto LABEL_19;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit29FlowPreviewStandardOfferStateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t getEnumTagSinglePayload for CardLeaderboardView.LayoutMetrics.BarWidthMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for CardLeaderboardView.LayoutMetrics.BarWidthMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_24EAF1858(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_24EAF1884(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v7 == 1)
    {
      if (a2[2].i8[0] == 1)
      {
        if (v3 != a2->i64[0] || v4 != a2->i64[1])
        {

          return sub_24F92CE08();
        }

        return 1;
      }
    }

    else
    {
      v14 = v5 | v4;
      if (v14 | v3 | v6)
      {
        v15 = v14 | v6;
        if (v3 == 1 && v15 == 0)
        {
          if (a2[2].i8[0] != 2 || a2->i64[0] != 1)
          {
            return 0;
          }
        }

        else if (v3 != 2 || v15)
        {
          if (v3 != 3 || v15)
          {
            if (v3 != 4 || v15)
            {
              if (v3 != 5 || v15)
              {
                if (v3 != 6 || v15)
                {
                  if (v3 != 7 || v15)
                  {
                    if (a2[2].i8[0] != 2 || a2->i64[0] != 8)
                    {
                      return 0;
                    }
                  }

                  else if (a2[2].i8[0] != 2 || a2->i64[0] != 7)
                  {
                    return 0;
                  }
                }

                else if (a2[2].i8[0] != 2 || a2->i64[0] != 6)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 2 || a2->i64[0] != 5)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 2 || a2->i64[0] != 4)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 2 || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 2 || a2->i64[0] != 2)
        {
          return 0;
        }

        if (!(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
        {
          return 1;
        }
      }

      else if (a2[2].i8[0] == 2)
      {
        v17 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  v11 = a2[1].i64[0];
  v10 = a2[1].i64[1];
  v12 = v3 == a2->i64[0] && v4 == a2->i64[1];
  if (v12 || (v13 = sub_24F92CE08(), result = 0, (v13 & 1) != 0))
  {
    if (v6)
    {
      if (v10 && (v5 == v11 && v6 == v10 || (sub_24F92CE08() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v10)
    {
      return 1;
    }

    return 0;
  }

  return result;
}