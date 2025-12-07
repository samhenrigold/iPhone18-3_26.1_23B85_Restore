void sub_21CA91830(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x21CF15AC0](a1, a2, v7);
      sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
    if (sub_21CB85F84() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_21CB85F94();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_21CB85DC4();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_21CB85DD4();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_21CA91A54(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x21CF15AC0](a1, a2, v7);
      sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
    if (sub_21CB85F84() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_21CB85F94();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_21CB85DC4();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_21CB85DD4();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_21CA91C78@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = (*(a3 + 48) + 16 * result);
    v5 = v4[1];
    *a4 = *v4;
    a4[1] = v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CA91CD0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 48);
    v7 = _s24AccountContainerIdentityOMa(0);
    return sub_21CAA431C(v6 + *(*(v7 - 8) + 72) * v4, a4, _s24AccountContainerIdentityOMa);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CA91D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 32;
  do
  {
    v4 = *(v3 + 8 * v2);
    v5 = [v4 bundleIdentifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_21CB855C4();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        if (v7 == 0xD000000000000015 && 0x800000021CB986D0 == v9)
        {

          return v2;
        }
      }

      else
      {
      }
    }

    v12 = sub_21CB86344();

    if (v12)
    {
      return v2;
    }

    ++v2;
  }

  while (v1 != v2);
  return 0;
}

uint64_t sub_21CA91EC4()
{
  swift_getKeyPath(byte_21CBC45F8);
  swift_getKeyPath(byte_21CBC4620);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA91F38()
{
  swift_getKeyPath(asc_21CBC4688);
  swift_getKeyPath(asc_21CBC46B0);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CA91FAC(void *a1)
{
  v1 = [a1 localizedName];
  v2 = sub_21CB855C4();

  return v2;
}

uint64_t sub_21CA92000(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21CA920CC()
{
  swift_getKeyPath(aX_69);
  swift_getKeyPath(aX_70);
  sub_21CB81DB4();

  return v1;
}

id sub_21CA92140(void *a1)
{
  result = [a1 bundleIdentifier];
  if (result)
  {
    v2 = result;
    v3 = sub_21CB855C4();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21CA921C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21CB80BE4();
  __swift_allocate_value_buffer(v3, qword_27CDF7158);
  v4 = __swift_project_value_buffer(v3, qword_27CDF7158);
  sub_21CB80BD4();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA922F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21CB80BE4();
  __swift_allocate_value_buffer(v3, qword_27CDF7170);
  v4 = __swift_project_value_buffer(v3, qword_27CDF7170);
  sub_21CB80BD4();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void sub_21CA92428(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC45F8);
  swift_getKeyPath(byte_21CBC4620);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CA924A8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBC45F8);
  swift_getKeyPath(byte_21CBC4620);

  return sub_21CB81DC4();
}

void sub_21CA92524(void *a2@<X8>)
{
  swift_getKeyPath(asc_21CBC4688);
  swift_getKeyPath(asc_21CBC46B0);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CA925A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(asc_21CBC4688);
  swift_getKeyPath(asc_21CBC46B0);
  v3 = v2;

  return sub_21CB81DC4();
}

void sub_21CA9261C(void *a2@<X8>)
{
  swift_getKeyPath(aX_69);
  swift_getKeyPath(aX_70);
  sub_21CB81DB4();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_21CA9269C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aX_69);
  swift_getKeyPath(aX_70);

  return sub_21CB81DC4();
}

uint64_t sub_21CA92720()
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7230, &qword_21CBC46E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7238, &qword_21CBC46F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager__availableHandlers;
  v18 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6070, &unk_21CBC00B8);
  sub_21CB81D74();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager__selectedHandler;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF71C8, &qword_21CBC4420);
  sub_21CB81D74();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager__selectedHandlerBundleIdentifier;
  v18 = 0xD000000000000015;
  v19 = 0x800000021CB986D0;
  sub_21CB81D74();
  (*(v1 + 32))(v0 + v14, v3, v17);
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager_defaultHandlerWasSystemBeforeFiltering) = 0;
  sub_21CA929EC();
  return v0;
}

uint64_t sub_21CA929EC()
{
  v0 = MEMORY[0x277D84FA0];
  v85 = MEMORY[0x277D84FA0];
  v1 = 0x27CDEA000uLL;
  v2 = sub_21CAA228C(&qword_27CDEA440, qword_27CDF7158, sub_21CA921C0);
  v3 = 0;
  v47 = sub_21CAA2658(&qword_27CDEA440, qword_27CDF7158, sub_21CA921C0);
  v48 = [v47 bundleIdentifier];
  if (v48)
  {
    v49 = v48;
    v50 = sub_21CB855C4();
    v52 = v51;

    if (v50 == 0xD000000000000015 && 0x800000021CB986D0 == v52)
    {
      v54 = 1;
    }

    else
    {
      v54 = sub_21CB86344();
    }
  }

  else
  {
    v54 = 0;
  }

  *(v81 + OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager_defaultHandlerWasSystemBeforeFiltering) = v54 & 1;
  sub_21CAA21B4(v2);

  while (1)
  {
    v17 = sub_21CAA228C(&qword_27CDEA448, qword_27CDF7170, sub_21CA922F8);
    v80 = v47;
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
      sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
      swift_dynamicCast();
      v19 = v84;
      if (*(v1 + 1136) != -1)
      {
        swift_once();
      }

      v20 = sub_21CB81C84();
      __swift_project_value_buffer(v20, qword_27CE186E0);
      v21 = v19;
      v22 = sub_21CB81C64();
      v23 = sub_21CB85AF4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = v0;
        v26 = swift_slowAlloc();
        v83 = v26;
        *v24 = 136446210;
        v27 = [v21 safari_privacyPreservingDescription];
        v28 = sub_21CB855C4();
        v30 = v29;

        v31 = sub_21C98E004(v28, v30, &v83);

        *(v24 + 4) = v31;
        _os_log_impl(&dword_21C6E5000, v22, v23, "Failed to load otpauth-migration URL handlers: %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        v32 = v26;
        v0 = v25;
        MEMORY[0x21CF16D90](v32, -1, -1);
        MEMORY[0x21CF16D90](v24, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v18 = v17;
      v55 = sub_21CAA2658(&qword_27CDEA448, qword_27CDF7170, sub_21CA922F8);
      sub_21CAA21B4(v18);

      if (!v47)
      {

        v80 = 0;
        goto LABEL_14;
      }

      v56 = [v47 bundleIdentifier];
      if (!v56)
      {
        goto LABEL_70;
      }

      v57 = v56;
      v58 = sub_21CB855C4();
      v60 = v59;

      if (v58 == 0xD000000000000015 && 0x800000021CB986D0 == v60)
      {
      }

      else
      {
        v72 = sub_21CB86344();

        if ((v72 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      v73 = [v55 bundleIdentifier];
      if (v73)
      {
        v74 = v0;
        v75 = v73;
        v76 = sub_21CB855C4();
        v78 = v77;

        if (v76 == 0xD000000000000015 && 0x800000021CB986D0 == v78)
        {

          v0 = v74;
          goto LABEL_14;
        }

        v79 = sub_21CB86344();

        v0 = v74;
        if (v79)
        {
LABEL_70:

          goto LABEL_14;
        }
      }

      v80 = v55;
    }

LABEL_14:
    v84 = v0;
    v33 = sub_21CAA13C8(v85, &v84);
    v34 = sub_21CA91534(v33);

    v82 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF71D8, &qword_21CBC4568);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF71E0, &qword_21CBC4570);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21CBA15A0;
    swift_getKeyPath(byte_21CBC4578);
    sub_21CB80A24();
    swift_getKeyPath(byte_21CBC45A0);
    sub_21CB80A24();
    sub_21CB80A24();
    v83 = v35;
    v1 = &unk_21CBC00B8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6070, &unk_21CBC00B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF71E8, &qword_21CBC45F0);
    v0 = MEMORY[0x277D83970];
    sub_21C6EADEC(&qword_27CDF71F0, &qword_27CDF6070, &unk_21CBC00B8, MEMORY[0x277D83970]);
    sub_21C6EADEC(&qword_27CDF71F8, &qword_27CDF71E8, &qword_21CBC45F0, v0);
    sub_21C6EADEC(&qword_27CDF7200, &qword_27CDF71E0, &qword_21CBC4570, MEMORY[0x277CC8C98]);
    v36 = sub_21CB857C4();

    v83 = v36;
    sub_21CAA11A4(&v83);
    v3 = v83;
    v38 = v83[2];
    if (v37 > v38)
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v39 = v37;
    if (v37 < 0)
    {
      goto LABEL_73;
    }

    v36 = v37;
    if (!__OFADD__(v38, v37 - v38))
    {
      break;
    }

LABEL_74:
    __break(1u);
    swift_once();
    v4 = sub_21CB81C84();
    __swift_project_value_buffer(v4, qword_27CE186E0);
    v5 = v36;
    v6 = sub_21CB81C64();
    v7 = sub_21CB85AF4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v83 = v9;
      *v8 = 136446210;
      v10 = [v5 safari_privacyPreservingDescription];
      v11 = v0;
      v12 = sub_21CB855C4();
      v14 = v13;

      v15 = v12;
      v0 = v11;
      v1 = 0x27CDEA000;
      v16 = sub_21C98E004(v15, v14, &v83);

      *(v8 + 4) = v16;
      _os_log_impl(&dword_21C6E5000, v6, v7, "Failed to load otpauth URL handlers: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x21CF16D90](v9, -1, -1);
      MEMORY[0x21CF16D90](v8, -1, -1);
    }

    else
    {
    }

    v47 = 0;
  }

  if (!swift_isUniquelyReferenced_nonNull_native() || v36 > *(v3 + 24) >> 1)
  {
    v3 = sub_21CB860E4();
    v83 = v3;
  }

  sub_21CAA27F0(v39, v38, 0);
  if (*(v3 + 16) != 1)
  {
    goto LABEL_43;
  }

  v40 = *(v3 + 32);
  v41 = [v40 bundleIdentifier];
  if (!v41)
  {
LABEL_40:

    goto LABEL_41;
  }

  v42 = v41;
  v43 = sub_21CB855C4();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {

    goto LABEL_40;
  }

  if (v43 == 0xD000000000000015 && 0x800000021CB986D0 == v45)
  {

    goto LABEL_42;
  }

LABEL_41:
  v61 = sub_21CB86344();

  if (v61)
  {
LABEL_42:
    swift_getKeyPath(byte_21CBC45F8);
    swift_getKeyPath(byte_21CBC4620);

    sub_21CB81DC4();
    swift_getKeyPath(aX_69);
    swift_getKeyPath(aX_70);

    sub_21CB81DC4();
  }

LABEL_43:
  if (v80 && (v62 = [v80 bundleIdentifier]) != 0)
  {
    v63 = v62;
    sub_21CB855C4();
  }

  else if (*(v3 + 16))
  {
    v64 = *(v3 + 32);
    v65 = [v64 bundleIdentifier];
    if (v65)
    {
      v66 = v65;
      v67 = sub_21CB855C4();
      v69 = v68;

      v70 = HIBYTE(v69) & 0xF;
      if ((v69 & 0x2000000000000000) == 0)
      {
        v70 = v67 & 0xFFFFFFFFFFFFLL;
      }

      if (!v70)
      {
      }
    }
  }

  swift_getKeyPath(byte_21CBC45F8);
  swift_getKeyPath(byte_21CBC4620);

  sub_21CB81DC4();
  swift_getKeyPath(aX_69);
  swift_getKeyPath(aX_70);

  sub_21CB81DC4();
  if (v80)
  {
    swift_getKeyPath(asc_21CBC4688);
    swift_getKeyPath(asc_21CBC46B0);

    sub_21CB81DC4();
  }
}

uint64_t sub_21CA93650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = sub_21CB858B4();
  v6[4] = sub_21CB858A4();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_21CA93710;

  return sub_21CAA28B0(a5, a6);
}

uint64_t sub_21CA93710()
{

  v1 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA9384C, v1, v0);
}

uint64_t sub_21CA9384C()
{

  sub_21CA929EC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CA938B4(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21CB855C4();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      if (v3 == 0xD000000000000015 && 0x800000021CB986D0 == v5)
      {

        return 0;
      }
    }

    else
    {
    }
  }

  v9 = sub_21CB86344();

  return ~v9 & 1;
}

uint64_t sub_21CA93998@<X0>(void **a1@<X0>, _BOOL8 *a2@<X8>)
{
  if (sub_21CA92140(*a1) == 0xD000000000000015 && 0x800000021CB986D0 == v3)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CB86344();

    v7 = (v5 & 1) == 0;
  }

  *a2 = v7;
  return result;
}

void sub_21CA93A28(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedName];
  v4 = sub_21CB855C4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21CA93A80()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager__availableHandlers;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7238, &qword_21CBC46F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager__selectedHandler;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7230, &qword_21CBC46E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager__selectedHandlerBundleIdentifier;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

id sub_21CA93BC8@<X0>(void *a1@<X8>)
{
  result = sub_21CA92140(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21CA93BF8()
{
  result = qword_27CDF71D0;
  if (!qword_27CDF71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF71D0);
  }

  return result;
}

id sub_21CA93C4C(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21CB80B74();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_21CB80BE4();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_21CB80B14();

    swift_willThrow();
    v11 = sub_21CB80BE4();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_21CA93D98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  v33 = a2;
  v11 = sub_21CB85484();
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
      sub_21CAA44BC(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v21 = sub_21CB85574();
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
    sub_21CA9A490(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21CA94078(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21CB86484();
  sub_21CB854C4();
  v8 = sub_21CB864D4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21CB86344() & 1) != 0)
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

    sub_21CA9A758(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21CA941C8(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v66 - v10;
  v72 = *v2;
  sub_21CB86484();
  v12 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CAA44BC(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
  sub_21CB85494();
  v13 = *(a2 + *(v5 + 20));
  v70 = a1;
  v69 = v2;
  v68 = v11;
  v67 = v13;
  sub_21CB864A4();
  if (v13)
  {
    v14 = v13;
    sub_21CB85DE4();
  }

  v15 = sub_21CB864D4();
  v16 = v72;
  v17 = -1 << *(v72 + 32);
  v18 = v15 & ~v17;
  v71 = v72 + 56;
  if (((*(v72 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_116:
    v62 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v68;
    sub_21CAA431C(a2, v68, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    *v83 = *v62;
    sub_21CA9A8D8(v64, v18, isUniquelyReferenced_nonNull_native);
    *v62 = *v83;
    sub_21CAA43E4(a2, v70, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    return 1;
  }

  v66[1] = v12;
  v66[0] = v5;
  v80 = ~v17;
  v19 = *a2;
  v20 = *(a2 + 8);
  if (*a2)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20 == 0xC000000000000000;
  }

  v22 = !v21;
  v79 = v22;
  v81 = *(v6 + 72);
  v23 = v20 >> 62;
  v76 = 0;
  v77 = v19;
  v24 = HIDWORD(v19) - v19;
  v25 = __OFSUB__(HIDWORD(v19), v19);
  v75 = v25;
  v73 = v20;
  v74 = v24;
  v78 = BYTE6(v20);
  v26 = v71;
  while (1)
  {
    v27 = v81 * v18;
    sub_21CAA431C(*(v16 + 48) + v81 * v18, v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v28 = *v8;
    v29 = v8[1];
    v30 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      if (v28)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29 == 0xC000000000000000;
      }

      v33 = !v31 || v23 < 3;
      if (((v33 | v79) & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_36:
      v34 = 0;
      if (v23 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_36;
      }

      v36 = *(v28 + 16);
      v35 = *(v28 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (v37)
      {
        goto LABEL_120;
      }

      if (v23 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v30)
    {
      LODWORD(v34) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_121;
      }

      v34 = v34;
      if (v23 <= 1)
      {
LABEL_33:
        v38 = v78;
        if (v23)
        {
          v38 = v74;
          if (v75)
          {
            goto LABEL_119;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v34 = BYTE6(v29);
      if (v23 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v23 != 2)
    {
      if (v34)
      {
        goto LABEL_111;
      }

      goto LABEL_63;
    }

    v40 = *(v77 + 16);
    v39 = *(v77 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
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
    }

LABEL_39:
    if (v34 != v38)
    {
      goto LABEL_111;
    }

    if (v34 >= 1)
    {
      if (v30 > 1)
      {
        if (v30 != 2)
        {
          *&v83[6] = 0;
          *v83 = 0;
LABEL_62:
          v48 = v76;
          sub_21CA8FA10(v83, v77, v73, &v82);
          v76 = v48;
          if (!v82)
          {
            goto LABEL_111;
          }

          goto LABEL_63;
        }

        v42 = *(v28 + 16);
        v41 = *(v28 + 24);
        v43 = sub_21CB808C4();
        if (v43)
        {
          v44 = sub_21CB808F4();
          if (__OFSUB__(v42, v44))
          {
            goto LABEL_124;
          }

          v43 += v42 - v44;
        }

        if (__OFSUB__(v41, v42))
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (!v30)
        {
          *v83 = *v8;
          *&v83[8] = v29;
          v83[10] = BYTE2(v29);
          v83[11] = BYTE3(v29);
          v83[12] = BYTE4(v29);
          v83[13] = BYTE5(v29);
          goto LABEL_62;
        }

        v45 = v28;
        if (v28 >> 32 < v28)
        {
          goto LABEL_122;
        }

        v43 = sub_21CB808C4();
        if (v43)
        {
          v46 = sub_21CB808F4();
          if (__OFSUB__(v45, v46))
          {
            goto LABEL_125;
          }

          v43 += v45 - v46;
        }
      }

      sub_21CB808E4();
      v47 = v76;
      sub_21CA8FA10(v43, v77, v73, v83);
      v76 = v47;
      v16 = v72;
      v26 = v71;
      if ((v83[0] & 1) == 0)
      {
        goto LABEL_111;
      }
    }

LABEL_63:
    if ((v8[2] != *(a2 + 16) || v8[3] != *(a2 + 24)) && (sub_21CB86344() & 1) == 0 || (v8[4] != *(a2 + 32) || v8[5] != *(a2 + 40)) && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_111;
    }

    v49 = v8[6];
    v50 = *(a2 + 48);
    if (*(a2 + 56) == 1)
    {
      if (v50 <= 1)
      {
        if (v50)
        {
          if (v49 != 1)
          {
            goto LABEL_111;
          }
        }

        else if (v49)
        {
          goto LABEL_111;
        }
      }

      else if (v50 == 2)
      {
        if (v49 != 2)
        {
          goto LABEL_111;
        }
      }

      else if (v50 == 3)
      {
        if (v49 != 3)
        {
          goto LABEL_111;
        }
      }

      else if (v49 != 4)
      {
        goto LABEL_111;
      }
    }

    else if (v49 != v50)
    {
      goto LABEL_111;
    }

    v51 = v8[8];
    v52 = *(a2 + 64);
    if (*(a2 + 72) == 1)
    {
      if (v52)
      {
        if (v52 == 1)
        {
          if (v51 != 1)
          {
            goto LABEL_111;
          }
        }

        else if (v51 != 2)
        {
          goto LABEL_111;
        }
      }

      else if (v51)
      {
        goto LABEL_111;
      }
    }

    else if (v51 != v52)
    {
      goto LABEL_111;
    }

    v53 = v8[10];
    v54 = *(a2 + 80);
    if (*(a2 + 88) != 1)
    {
      if (v53 == v54)
      {
        goto LABEL_105;
      }

      goto LABEL_111;
    }

    if (v54)
    {
      break;
    }

    if (!v53)
    {
      goto LABEL_105;
    }

LABEL_111:
    sub_21CAA4384(v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
LABEL_112:
    v18 = (v18 + 1) & v80;
    if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_116;
    }
  }

  if (v54 == 1)
  {
    if (v53 == 1)
    {
      goto LABEL_105;
    }

    goto LABEL_111;
  }

  if (v53 != 2)
  {
    goto LABEL_111;
  }

LABEL_105:
  if (v8[12] != *(a2 + 96))
  {
    goto LABEL_111;
  }

  sub_21CB811C4();
  sub_21CAA44BC(&unk_27CDF8A70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if ((sub_21CB85574() & 1) == 0)
  {
    goto LABEL_111;
  }

  v55 = *(v8 + *(v66[0] + 20));
  if (v55)
  {
    v56 = v67;
    if (v67)
    {
      sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
      v57 = v56;
      v58 = v55;
      v59 = sub_21CB85DD4();
      sub_21CAA4384(v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);

      v26 = v71;
      if (v59)
      {
        goto LABEL_117;
      }

      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v60 = v67;
  v61 = v67;
  sub_21CAA4384(v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  if (v60)
  {

    goto LABEL_112;
  }

LABEL_117:
  sub_21CAA4384(a2, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  sub_21CAA431C(*(v16 + 48) + v27, v70, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  return 0;
}

uint64_t sub_21CA94A8C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_21CB85FB4();

    if (v9)
    {

      sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_21CB85FA4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21CA975DC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_21CA9832C(v20 + 1);
    }

    v18 = v8;
    sub_21CA9A0CC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
  v11 = sub_21CB85DC4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21CA9B1B4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21CB85DD4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_21CA94CC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21CB85BB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21CAA44BC(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
  v33 = a2;
  v11 = sub_21CB85484();
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
      sub_21CAA44BC(&qword_27CDEAF68, MEMORY[0x277D49948], MEMORY[0x277D49958]);
      v21 = sub_21CB85574();
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
    sub_21CA9B324(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21CA94FA4(__int128 *a1, uint64_t a2)
{
  v5 = *v2;
  sub_21CB86484();
  sub_21C9DC744(&v44);
  v6 = sub_21CB864D4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = *a2;
    v11 = *(a2 + 8);
    do
    {
      v12 = (*(v5 + 48) + 112 * v8);
      v14 = v12[1];
      v13 = v12[2];
      v44 = *v12;
      v45 = v14;
      v46 = v13;
      v15 = v12[3];
      v16 = v12[4];
      v17 = v12[6];
      *v49 = v12[5];
      *&v49[16] = v17;
      v47 = v15;
      v48 = v16;
      if (*(&v44 + 1))
      {
        if (!v11 || v44 != __PAIR128__(v11, v10) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v11)
      {
        goto LABEL_4;
      }

      v18 = *(a2 + 24);
      if (*(&v45 + 1))
      {
        if (!v18 || v45 != *(a2 + 16) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v18)
      {
        goto LABEL_4;
      }

      if (v46 != *(a2 + 32) && (sub_21CB86344() & 1) == 0 || v47 != *(a2 + 48) && (sub_21CB86344() & 1) == 0 || v48 != *(a2 + 64) && (sub_21CB86344() & 1) == 0 || v49[0] != (*(a2 + 80) & 1) || __PAIR64__(v49[2], v49[1]) != __PAIR64__(*(a2 + 82), *(a2 + 81)))
      {
        goto LABEL_4;
      }

      v19 = *(a2 + 96);
      if (*&v49[16])
      {
        if (!v19 || *&v49[8] != *(a2 + 88) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v19)
      {
        goto LABEL_4;
      }

      v20 = *(a2 + 104);
      if (*&v49[24])
      {
        if (v20)
        {
          v39 = *&v49[24];
          sub_21C6E8F4C(0, &qword_27CDF8A90, 0x277CBDA58);
          sub_21C7A33F0(&v44, v43);
          v38 = v20;
          v40 = v39;
          v21 = sub_21CB85DD4();
          sub_21C7A344C(&v44);

          if (v21)
          {
LABEL_34:
            sub_21C7A344C(a2);
            v22 = (*(v5 + 48) + 112 * v8);
            v23 = *v22;
            v24 = v22[2];
            v43[1] = v22[1];
            v43[2] = v24;
            v43[0] = v23;
            v25 = v22[3];
            v26 = v22[4];
            v27 = v22[6];
            v43[5] = v22[5];
            v43[6] = v27;
            v43[3] = v25;
            v43[4] = v26;
            v28 = v22[1];
            *a1 = *v22;
            a1[1] = v28;
            v29 = v22[2];
            v30 = v22[3];
            v31 = v22[6];
            a1[5] = v22[5];
            a1[6] = v31;
            v32 = v22[4];
            a1[3] = v30;
            a1[4] = v32;
            a1[2] = v29;
            sub_21C7A33F0(v43, v42);
            return 0;
          }
        }
      }

      else if (!v20)
      {
        goto LABEL_34;
      }

LABEL_4:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43[0] = *v41;
  sub_21C7A33F0(a2, &v44);
  sub_21CA9B5EC(a2, v8, isUniquelyReferenced_nonNull_native);
  *v41 = *&v43[0];
  v35 = *(a2 + 80);
  a1[4] = *(a2 + 64);
  a1[5] = v35;
  a1[6] = *(a2 + 96);
  v36 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v36;
  v37 = *(a2 + 48);
  result = 1;
  a1[2] = *(a2 + 32);
  a1[3] = v37;
  return result;
}

uint64_t sub_21CA95338(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21CB86484();
  sub_21CB854C4();
  v8 = sub_21CB864D4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21CB86344() & 1) != 0)
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

    sub_21CA9B96C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21CA95488(uint64_t a1, void *a2)
{
  v112 = a1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  MEMORY[0x28223BE20](v124);
  v123 = &v103 - v4;
  v5 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = (&v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = (&v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v9);
  v128 = (&v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v103 - v12);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  MEMORY[0x28223BE20](v130);
  v15 = &v103 - v14;
  v16 = type metadata accessor for PMAccount(0);
  v132 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = (&v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v110 = (&v103 - v20);
  v21 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v21 - 8);
  v108 = (&v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v133 = &v103 - v24;
  v25 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v25);
  v117 = (&v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v116 = (&v103 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = (&v103 - v30);
  v111 = v2;
  v135 = *v2;
  sub_21CB86484();
  v32 = a2[1];
  v136 = *a2;
  sub_21CB854C4();
  v129 = *(v16 + 20);
  sub_21C7CECE4(&v137);
  v134 = v16;
  v119 = *(v16 + 24);
  sub_21CAA431C(a2 + v119, v31, type metadata accessor for PMAccount.Storage);
  v120 = v25;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v133;
    sub_21CAA43E4(v31, v133, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(&v137);
    sub_21CAA4384(v33, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v34 = *v31;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  v35 = v134[7];
  v125 = a2;
  v36 = a2 + v35;
  v37 = *(v36 + 1);
  v107 = v36;
  sub_21CB864A4();
  if (v37)
  {
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  v38 = sub_21CB864D4();
  v39 = -1 << *(v135 + 32);
  v40 = v38 & ~v39;
  v133 = v135 + 56;
  if (((*(v135 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
  {
    v41 = v125;
LABEL_48:
    v99 = v111;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v110;
    sub_21CAA431C(v41, v110, type metadata accessor for PMAccount);
    v137 = *v99;
    sub_21CA9BAEC(v101, v40, isUniquelyReferenced_nonNull_native);
    *v99 = v137;
    sub_21CAA43E4(v41, v112, type metadata accessor for PMAccount);
    return 1;
  }

  v131 = ~v39;
  v132 = *(v132 + 72);
  v41 = v125;
  v126 = v13;
  v127 = v9;
  while (1)
  {
    v44 = v132 * v40;
    sub_21CAA431C(*(v135 + 48) + v132 * v40, v18, type metadata accessor for PMAccount);
    v45 = *v18 == v136 && v18[1] == v32;
    if (!v45 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_10;
    }

    v46 = *(v130 + 48);
    sub_21CAA431C(v18 + v134[5], v15, type metadata accessor for PMAccount.UniqueID);
    sub_21CAA431C(v41 + v129, &v15[v46], type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = v128;
      sub_21CAA431C(v15, v128, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = v122;
        sub_21CAA43E4(&v15[v46], v122, type metadata accessor for PMAccount.SIWAUniqueID);
        v49 = sub_21C7D1550(v47, v48);
        sub_21CAA4384(v48, type metadata accessor for PMAccount.SIWAUniqueID);
        sub_21CAA4384(v47, type metadata accessor for PMAccount.SIWAUniqueID);
        if (!v49)
        {
          goto LABEL_19;
        }

        goto LABEL_23;
      }

      v42 = type metadata accessor for PMAccount.SIWAUniqueID;
      v43 = v47;
LABEL_9:
      sub_21CAA4384(v43, v42);
      sub_21C6EA794(v15, &qword_27CDEB3C8, &unk_21CBB0010);
      goto LABEL_10;
    }

    sub_21CAA431C(v15, v13, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = type metadata accessor for PMAccount.CombinedUniqueID;
      v43 = v13;
      goto LABEL_9;
    }

    v50 = v121;
    sub_21CAA43E4(&v15[v46], v121, type metadata accessor for PMAccount.CombinedUniqueID);
    v51 = sub_21C7D1A58(v13, v50);
    sub_21CAA4384(v50, type metadata accessor for PMAccount.CombinedUniqueID);
    sub_21CAA4384(v13, type metadata accessor for PMAccount.CombinedUniqueID);
    if (!v51)
    {
LABEL_19:
      sub_21CAA4384(v15, type metadata accessor for PMAccount.UniqueID);
      goto LABEL_20;
    }

LABEL_23:
    sub_21CAA4384(v15, type metadata accessor for PMAccount.UniqueID);
    v52 = v41;
    v53 = *(v124 + 48);
    v54 = v123;
    sub_21CAA431C(v18 + v134[6], v123, type metadata accessor for PMAccount.Storage);
    sub_21CAA431C(v52 + v119, v54 + v53, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v58 = v116;
      sub_21CAA431C(v54, v116, type metadata accessor for PMAccount.Storage);
      v59 = *v58;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

LABEL_31:
        v41 = v125;
        sub_21C6EA794(v54, &unk_27CDF7680, &qword_21CBB4E30);
        v13 = v126;
        goto LABEL_10;
      }

      v60 = *(v54 + v53);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v61 = sub_21CB85DD4();

      if (v61)
      {
        goto LABEL_33;
      }

LABEL_26:
      sub_21CAA4384(v54, type metadata accessor for PMAccount.Storage);
      v41 = v125;
LABEL_20:
      v13 = v126;
      goto LABEL_10;
    }

    v55 = v117;
    sub_21CAA431C(v54, v117, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21CAA4384(v55, type metadata accessor for PMAccount.MockData);
      goto LABEL_31;
    }

    v56 = v108;
    sub_21CAA43E4(v54 + v53, v108, type metadata accessor for PMAccount.MockData);
    v57 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v55, v56);
    sub_21CAA4384(v56, type metadata accessor for PMAccount.MockData);
    sub_21CAA4384(v55, type metadata accessor for PMAccount.MockData);
    if (!v57)
    {
      goto LABEL_26;
    }

LABEL_33:
    sub_21CAA4384(v54, type metadata accessor for PMAccount.Storage);
    v62 = (v18 + v134[7]);
    v63 = *v62;
    v64 = v62[1];
    v65 = v62[3];
    v118 = v62[2];
    v66 = *v107;
    v67 = v107[1];
    v68 = v107[2];
    v69 = v107[3];
    v13 = v126;
    v113 = v69;
    v114 = v68;
    v115 = v66;
    v109 = v67;
    if (!v64)
    {
      break;
    }

    v105 = v64;
    if (!v67)
    {
      v89 = v66;
      v90 = v64;
      v91 = v118;
      v92 = v65;
      v87 = v63;
      sub_21C7D33AC(v63, v90, v118, v65);
      v93 = v89;
      v86 = v114;
      sub_21C7D33AC(v93, 0, v114, v113);
      v94 = v91;
      v64 = v105;
      sub_21C7D33AC(v87, v105, v94, v92);

      v88 = v92;
      v41 = v125;
      goto LABEL_43;
    }

    v104 = v65;
    v41 = v125;
    v106 = v63;
    if (v63 != v66 || v64 != v67) && (v70 = v67, v71 = sub_21CB86344(), v67 = v70, v63 = v106, (v71 & 1) == 0) || ((v118 ^ v114))
    {
      v72 = v64;
      v73 = v104;
      v74 = v63;
      v75 = v67;
      sub_21C7D33AC(v63, v72, v118, v104);
      v76 = v75;
      v77 = v113;
      sub_21C7D33AC(v115, v76, v114, v113);
      v78 = v74;
      v79 = v105;
      sub_21C7D33AC(v78, v105, v118, v73);
      sub_21C7D33F0(v115, v109, v114, v77);

      v80 = v106;
      v81 = v79;
      v82 = v118;
      v83 = v73;
LABEL_44:
      sub_21C7D33F0(v80, v81, v82, v83);
      goto LABEL_10;
    }

    v95 = v63;
    v103 = sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v96 = v95;
    v97 = v104;
    sub_21C7D33AC(v96, v64, v118, v104);
    sub_21C7D33AC(v115, v109, v114, v113);
    sub_21C7D33AC(v106, v105, v118, v97);
    LODWORD(v103) = sub_21CB85DD4();
    sub_21C7D33F0(v115, v109, v114, v113);

    v98 = v105;

    sub_21C7D33F0(v106, v98, v118, v97);
    if (v103)
    {
      goto LABEL_50;
    }

LABEL_10:
    sub_21CAA4384(v18, type metadata accessor for PMAccount);
    v40 = (v40 + 1) & v131;
    if (((*(v133 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  v106 = v63;
  v104 = v65;
  v84 = v67;
  sub_21C7D33AC(v63, 0, v118, v65);
  v85 = v84;
  v41 = v125;
  if (v85)
  {
    v86 = v114;
    sub_21C7D33AC(v115, v85, v114, v69);
    v87 = v106;
    v88 = v104;
LABEL_43:
    sub_21C7D33F0(v87, v64, v118, v88);
    v80 = v115;
    v81 = v109;
    v82 = v86;
    v83 = v113;
    goto LABEL_44;
  }

  sub_21C7D33AC(v115, 0, v114, v69);
  sub_21C7D33F0(v106, 0, v118, v104);
LABEL_50:
  sub_21CAA4384(v18, type metadata accessor for PMAccount);
  sub_21CAA4384(v41, type metadata accessor for PMAccount);
  sub_21CAA431C(*(v135 + 48) + v44, v112, type metadata accessor for PMAccount);
  return 0;
}

uint64_t sub_21CA963C8(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7260, &qword_21CBC4718);
  MEMORY[0x28223BE20](v46);
  v5 = &v41 - v4;
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = _s24AccountContainerIdentityOMa(0);
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v41 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  v42 = v2;
  v56 = *v2;
  sub_21CB86484();
  sub_21CAA431C(a2, v22, _s24AccountContainerIdentityOMa);
  v23 = v7 + 48;
  v55 = *(v7 + 48);
  if (v55(v22, 1, v6) == 1)
  {
    MEMORY[0x21CF15F90](0);
  }

  else
  {
    (*(v7 + 32))(v11, v22, v6);
    MEMORY[0x21CF15F90](1);
    sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    sub_21CB85494();
    (*(v7 + 8))(v11, v6);
  }

  v24 = sub_21CB864D4();
  v25 = -1 << *(v56 + 32);
  v26 = v24 & ~v25;
  v54 = v56 + 56;
  if (((*(v56 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_16:
    v36 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v41;
    sub_21CAA431C(a2, v41, _s24AccountContainerIdentityOMa);
    v59 = *v36;
    sub_21CA9C9C0(v38, v26, isUniquelyReferenced_nonNull_native);
    *v36 = v59;
    sub_21CAA43E4(a2, v43, _s24AccountContainerIdentityOMa);
    return 1;
  }

  v51 = v14;
  v52 = ~v25;
  v53 = *(v53 + 72);
  v44 = (v7 + 32);
  v48 = (v7 + 8);
  v27 = v46;
  v45 = a2;
  v47 = v23;
  v49 = v17;
  while (1)
  {
    v28 = v53 * v26;
    sub_21CAA431C(*(v56 + 48) + v53 * v26, v17, _s24AccountContainerIdentityOMa);
    v29 = *(v27 + 48);
    sub_21CAA431C(v17, v5, _s24AccountContainerIdentityOMa);
    sub_21CAA431C(a2, &v5[v29], _s24AccountContainerIdentityOMa);
    v30 = v55;
    if (v55(v5, 1, v6) == 1)
    {
      sub_21CAA4384(v17, _s24AccountContainerIdentityOMa);
      if (v30(&v5[v29], 1, v6) == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    v31 = v51;
    sub_21CAA431C(v5, v51, _s24AccountContainerIdentityOMa);
    if (v30(&v5[v29], 1, v6) == 1)
    {
      v32 = v49;
      sub_21CAA4384(v49, _s24AccountContainerIdentityOMa);
      v33 = v31;
      v17 = v32;
      (*v48)(v33, v6);
LABEL_7:
      sub_21C6EA794(v5, &qword_27CDF7260, &qword_21CBC4718);
      goto LABEL_8;
    }

    (*v44)(v50, &v5[v29], v6);
    sub_21CAA44BC(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v59 == v57 && v60 == v58)
    {
      break;
    }

    v34 = sub_21CB86344();
    v35 = *v48;
    (*v48)(v50, v6);
    v17 = v49;
    sub_21CAA4384(v49, _s24AccountContainerIdentityOMa);

    v35(v51, v6);
    a2 = v45;
    v27 = v46;
    if (v34)
    {
      goto LABEL_18;
    }

    sub_21CAA4384(v5, _s24AccountContainerIdentityOMa);
LABEL_8:
    v26 = (v26 + 1) & v52;
    if (((*(v54 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v40 = *v48;
  (*v48)(v50, v6);
  sub_21CAA4384(v49, _s24AccountContainerIdentityOMa);

  v40(v51, v6);
  a2 = v45;
LABEL_18:
  sub_21CAA4384(v5, _s24AccountContainerIdentityOMa);
  sub_21CAA4384(a2, _s24AccountContainerIdentityOMa);
  sub_21CAA431C(*(v56 + 48) + v28, v43, _s24AccountContainerIdentityOMa);
  return 0;
}

uint64_t sub_21CA96B80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21CB813C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21CAA44BC(&qword_27CDF0CC8, MEMORY[0x277CBA690], MEMORY[0x277CBA698]);
  v33 = a2;
  v11 = sub_21CB85484();
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
      sub_21CAA44BC(&qword_27CDF0CD0, MEMORY[0x277CBA690], MEMORY[0x277CBA6A0]);
      v21 = sub_21CB85574();
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
    sub_21CA9D110(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21CA96E60(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_21CB86484();
  sub_21CB864A4();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x21CF15F90](a2);
  }

  v8 = sub_21CB864D4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_12;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_12;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  sub_21CA9D3D8(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  result = 1;
  v14 = a3;
LABEL_12:
  *a1 = a2;
  *(a1 + 8) = v14 & 1;
  return result;
}

uint64_t sub_21CA96FB4(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  MEMORY[0x28223BE20](v52);
  v5 = &v38 - v4;
  v6 = sub_21CB80DD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v39 = &v38 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v40 = v2;
  v20 = *v2;
  sub_21CB86484();
  v21 = a2;
  sub_21CAA444C(a2, v19);
  v22 = *(v7 + 48);
  v53 = v7 + 48;
  v23 = v22(v19, 1, v6);
  v44 = v9;
  if (v23 == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    (*(v7 + 32))(v9, v19, v6);
    sub_21CB864A4();
    sub_21CAA44BC(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21CB85494();
    (*(v7 + 8))(v9, v6);
  }

  v24 = sub_21CB864D4();
  v25 = -1 << *(v20 + 32);
  v26 = v24 & ~v25;
  v50 = v20 + 56;
  if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_14:
    v34 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v39;
    sub_21CAA444C(v21, v39);
    v54 = *v34;
    sub_21CA9D57C(v36, v26, isUniquelyReferenced_nonNull_native);
    *v34 = v54;
    sub_21C6F1098(v21, v41);
    return 1;
  }

  v47 = ~v25;
  v42 = (v7 + 32);
  v43 = v14;
  v48 = *(v48 + 72);
  v49 = v22;
  v46 = (v7 + 8);
  while (1)
  {
    v27 = v48 * v26;
    sub_21CAA444C(*(v20 + 48) + v48 * v26, v14);
    v28 = *(v52 + 48);
    sub_21CAA444C(v14, v5);
    sub_21CAA444C(v21, &v5[v28]);
    v29 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    sub_21CAA444C(v5, v51);
    if (v29(&v5[v28], 1, v6) == 1)
    {
      sub_21C6EA794(v14, &unk_27CDED250, &qword_21CBA64C0);
      (*v46)(v51, v6);
      goto LABEL_7;
    }

    v30 = v44;
    (*v42)(v44, &v5[v28], v6);
    sub_21CAA44BC(&qword_27CDEB3E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v31 = v51;
    v45 = sub_21CB85574();
    v32 = *v46;
    v33 = v30;
    v14 = v43;
    (*v46)(v33, v6);
    sub_21C6EA794(v14, &unk_27CDED250, &qword_21CBA64C0);
    v32(v31, v6);
    sub_21C6EA794(v5, &unk_27CDED250, &qword_21CBA64C0);
    if (v45)
    {
      goto LABEL_16;
    }

LABEL_8:
    v26 = (v26 + 1) & v47;
    if (((*(v50 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_21C6EA794(v14, &unk_27CDED250, &qword_21CBA64C0);
  if (v29(&v5[v28], 1, v6) != 1)
  {
LABEL_7:
    sub_21C6EA794(v5, &qword_27CDEB3E0, &unk_21CBA1A70);
    goto LABEL_8;
  }

  sub_21C6EA794(v5, &unk_27CDED250, &qword_21CBA64C0);
LABEL_16:
  sub_21C6EA794(v21, &unk_27CDED250, &qword_21CBA64C0);
  sub_21CAA444C(*(v20 + 48) + v27, v41);
  return 0;
}

uint64_t sub_21CA975DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
    v2 = sub_21CB86064();
    v15 = v2;
    sub_21CB85F64();
    if (sub_21CB85FE4())
    {
      sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_21CA9832C(v9 + 1);
        }

        v2 = v15;
        result = sub_21CB85DC4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_21CB85FE4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21CA977CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7250, &qword_21CBC4708);
    v2 = sub_21CB86064();
    v15 = v2;
    sub_21CB85F64();
    for (; sub_21CB85FE4(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_21CA99764(v9 + 1);
        v2 = v15;
      }

      sub_21CB86484();
      MEMORY[0x21CF15F90]();
      result = sub_21CB864D4();
      v4 = v2 + 56;
      v5 = -1 << *(v2 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v2 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v2 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_21CA979D8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21CB85C44();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7240, &qword_21CBC46F8);
  v6 = sub_21CB86054();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      v21 = sub_21CB85484();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_21CA97D34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
  v4 = sub_21CB86054();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21CB86484();
      sub_21CB854C4();
      v21 = sub_21CB864D4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21CA97F94(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7278, &unk_21CBC4730);
  v7 = sub_21CB86054();
  v8 = v7;
  if (*(v6 + 16))
  {
    v34 = v1;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v36 + 72);
      sub_21CAA43E4(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      sub_21CB86484();
      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21CAA44BC(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
      sub_21CB85494();
      v22 = *&v5[*(v37 + 20)];
      sub_21CB864A4();
      if (v22)
      {
        v23 = v22;
        sub_21CB85DE4();
      }

      v24 = sub_21CB864D4();
      v25 = -1 << *(v8 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_21CAA43E4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v6 + 32);
    if (v32 >= 64)
    {
      bzero(v10, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    v2 = v34;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_21CA9832C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
  v4 = sub_21CB86054();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_21CB85DC4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21CA98554(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21CB85BB4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7270, &qword_21CBC4728);
  v6 = sub_21CB86054();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_21CAA44BC(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
      v21 = sub_21CB85484();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_21CA988B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF68, &qword_21CBC47C0);
  v4 = sub_21CB86054();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_21CB86484();
      sub_21CB854C4();
      v21 = sub_21CB864D4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21CA98B10(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7298, &qword_21CBC47C8);
  v3 = sub_21CB86054();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = (v2 + 56);
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = (*(v2 + 48) + 112 * (v10 | (v4 << 6)));
      v14 = v13[5];
      v28 = v13[4];
      v29 = v14;
      v30 = v13[6];
      v15 = v13[1];
      v24 = *v13;
      v25 = v15;
      v16 = v13[3];
      v26 = v13[2];
      v27 = v16;
      sub_21CB86484();
      sub_21C9DC744(v23);
      sub_21CB864D4();
      v17 = sub_21CB85F44();
      *(v3 + 56 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v3 + 48) + 112 * v17);
      v19 = v29;
      v18[4] = v28;
      v18[5] = v19;
      v18[6] = v30;
      v20 = v25;
      *v18 = v24;
      v18[1] = v20;
      v21 = v27;
      v18[2] = v26;
      v18[3] = v21;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= i)
      {
        break;
      }

      v12 = v5[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    v22 = 1 << *(v2 + 32);
    if (v22 >= 64)
    {
      bzero((v2 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v22;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v3;
}

void sub_21CA98D3C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7280, &unk_21CBC47A0);
  v8 = sub_21CB86054();
  if (*(v7 + 16))
  {
    v9 = 0;
    v10 = (v7 + 56);
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_21CAA43E4(*(v7 + 48) + *(v4 + 72) * (v15 | (v9 << 6)), v6, type metadata accessor for PMAccount);
      sub_21CA9A150(v6, v8);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    v18 = 1 << *(v7 + 32);
    if (v18 >= 64)
    {
      bzero((v7 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v18;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v8;
}

void sub_21CA98F44(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB85C44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s24AccountContainerIdentityOMa(0);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7268, &qword_21CBC4720);
  v12 = sub_21CB86054();
  v13 = v12;
  if (*(v11 + 16))
  {
    v46 = v3;
    v40 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v45 = (v4 + 48);
    v41 = (v4 + 8);
    v42 = (v4 + 32);
    v20 = v12 + 56;
    v21 = v48;
    v43 = v11;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v11 + 48);
      v49 = *(v47 + 72);
      sub_21CAA43E4(v26 + v49 * (v23 | (v14 << 6)), v10, _s24AccountContainerIdentityOMa);
      sub_21CB86484();
      v27 = v10;
      sub_21CAA431C(v10, v21, _s24AccountContainerIdentityOMa);
      v28 = v46;
      if ((*v45)(v21, 1, v46) == 1)
      {
        MEMORY[0x21CF15F90](0);
      }

      else
      {
        v29 = v44;
        (*v42)(v44, v21, v28);
        MEMORY[0x21CF15F90](1);
        sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
        sub_21CB85494();
        v30 = v29;
        v11 = v43;
        (*v41)(v30, v28);
      }

      v31 = sub_21CB864D4();
      v32 = -1 << *(v13 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v10 = v27;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v21 = v48;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_21CAA43E4(v27, *(v13 + 48) + v22 * v49, _s24AccountContainerIdentityOMa);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v39 = 1 << *(v11 + 32);
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    v2 = v40;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
}

void sub_21CA99408(uint64_t a1)
{
  v2 = v1;
  v37 = sub_21CB813C4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7248, &qword_21CBC4700);
  v6 = sub_21CB86054();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_21CAA44BC(&qword_27CDF0CC8, MEMORY[0x277CBA690], MEMORY[0x277CBA698]);
      v21 = sub_21CB85484();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_21CA99764(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7250, &qword_21CBC4708);
  v4 = sub_21CB86054();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_21CB86484();
      MEMORY[0x21CF15F90](v17);
      v18 = sub_21CB864D4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21CA999B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7288, &qword_21CBC47B0);
  v4 = sub_21CB86054();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_21CB86484();
      sub_21CB864A4();
      if (v20 != 1)
      {
        MEMORY[0x21CF15F90](v19);
      }

      v21 = sub_21CB864D4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_32;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21CA99C38(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB80DD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7290, &qword_21CBC47B8);
  v12 = sub_21CB86054();
  v13 = v12;
  if (*(v11 + 16))
  {
    v46 = v3;
    v40 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v45 = (v4 + 48);
    v41 = (v4 + 8);
    v42 = (v4 + 32);
    v20 = v12 + 56;
    v21 = v48;
    v43 = v11;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v11 + 48);
      v49 = *(v47 + 72);
      sub_21C6F1098(v26 + v49 * (v23 | (v14 << 6)), v10);
      sub_21CB86484();
      v27 = v10;
      sub_21CAA444C(v10, v21);
      v28 = v46;
      if ((*v45)(v21, 1, v46) == 1)
      {
        sub_21CB864A4();
      }

      else
      {
        v29 = v44;
        (*v42)(v44, v21, v28);
        sub_21CB864A4();
        sub_21CAA44BC(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_21CB85494();
        v30 = v29;
        v11 = v43;
        (*v41)(v30, v28);
      }

      v31 = sub_21CB864D4();
      v32 = -1 << *(v13 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v10 = v27;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v21 = v48;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v21 = v48;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_21C6F1098(v27, *(v13 + 48) + v22 * v49);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v39 = 1 << *(v11 + 32);
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    v2 = v40;
    *(v11 + 16) = 0;
  }

  *v2 = v13;
}

unint64_t sub_21CA9A0CC(uint64_t a1, uint64_t a2)
{
  sub_21CB85DC4();
  result = sub_21CB85F44();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_21CA9A150(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB86484();
  sub_21CB854C4();
  v10 = type metadata accessor for PMAccount(0);
  sub_21C7CECE4(v15);
  sub_21CAA431C(a1 + *(v10 + 24), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAA43E4(v9, v6, type metadata accessor for PMAccount.MockData);
    MEMORY[0x21CF15F90](1);
    PMAccount.MockData.hash(into:)(v15);
    sub_21CAA4384(v6, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v11 = *v9;
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }

  if (*(a1 + *(v10 + 28) + 8))
  {
    sub_21CB864A4();
    sub_21CB854C4();
    sub_21CB864A4();
    sub_21CB85DE4();
  }

  else
  {
    sub_21CB864A4();
  }

  sub_21CB864D4();
  v12 = sub_21CB85F44();
  *(a2 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  result = sub_21CAA43E4(a1, *(a2 + 48) + *(*(v10 - 8) + 72) * v12, type metadata accessor for PMAccount);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_21CA9A3EC(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](a1);
  sub_21CB864D4();
  result = sub_21CB85F44();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_21CA9A490(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21CB85C44();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA979D8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21CA9E77C(MEMORY[0x277D49978], &qword_27CDF7240, &qword_21CBC46F8);
      goto LABEL_12;
    }

    sub_21CA9EE44(v11 + 1);
  }

  v13 = *v3;
  sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  v14 = sub_21CB85484();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21CAA44BC(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v22 = sub_21CB85574();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

void sub_21CA9A758(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21CA97D34(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_21CA9DBC0();
      goto LABEL_16;
    }

    sub_21CA9F160(v8 + 1);
  }

  v10 = *v4;
  sub_21CB86484();
  sub_21CB854C4();
  v11 = sub_21CB864D4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_21CB86344() & 1) != 0)
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
  sub_21CB863A4();
  __break(1u);
}

uint64_t sub_21CA9A8D8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v81 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_126;
  }

  if (a3)
  {
    sub_21CA97F94(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_21CA9DD1C();
      goto LABEL_126;
    }

    sub_21CA9F398(v12 + 1);
  }

  v14 = *v4;
  sub_21CB86484();
  v15 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CAA44BC(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
  sub_21CB85494();
  v66 = *(a1 + *(v8 + 20));
  v16 = v66;
  sub_21CB864A4();
  if (v16)
  {
    v17 = v16;
    sub_21CB85DE4();
  }

  v18 = sub_21CB864D4();
  v19 = -1 << *(v14 + 32);
  a2 = v18 & ~v19;
  v78 = v14 + 56;
  if (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_126:
    v61 = *v4;
    *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    result = sub_21CAA43E4(a1, *(v61 + 48) + *(v9 + 72) * a2, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v63 = *(v61 + 16);
    v36 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (!v36)
    {
      *(v61 + 16) = v64;
      return result;
    }

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
  }

  v65[1] = v15;
  v65[0] = v8;
  v76 = ~v19;
  v20 = *a1;
  v21 = *(a1 + 8);
  if (*a1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21 == 0xC000000000000000;
  }

  v23 = !v22;
  v75 = v23;
  v77 = *(v9 + 72);
  v24 = v21 >> 62;
  v73 = v20;
  v25 = HIDWORD(v20) - v20;
  v26 = __OFSUB__(HIDWORD(v20), v20);
  v72 = v26;
  v70 = v21;
  v71 = v25;
  v74 = BYTE6(v21);
  v68 = v4;
  v67 = v9;
  v69 = v14;
  while (1)
  {
    sub_21CAA431C(*(v14 + 48) + v77 * a2, v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v27 = *v11;
    v28 = v11[1];
    v29 = v28 >> 62;
    if (v28 >> 62 == 3)
    {
      if (v27)
      {
        v30 = 0;
      }

      else
      {
        v30 = v28 == 0xC000000000000000;
      }

      v32 = !v30 || v24 < 3;
      if (((v32 | v75) & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_43:
      v33 = 0;
      if (v24 <= 1)
      {
        goto LABEL_40;
      }

      goto LABEL_44;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_43;
      }

      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      v36 = __OFSUB__(v34, v35);
      v33 = v34 - v35;
      if (v36)
      {
        goto LABEL_132;
      }

      if (v24 <= 1)
      {
        goto LABEL_40;
      }
    }

    else if (v29)
    {
      LODWORD(v33) = HIDWORD(v27) - v27;
      if (__OFSUB__(HIDWORD(v27), v27))
      {
        goto LABEL_131;
      }

      v33 = v33;
      if (v24 <= 1)
      {
LABEL_40:
        v37 = v74;
        if (v24)
        {
          v37 = v71;
          if (v72)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      v33 = BYTE6(v28);
      if (v24 <= 1)
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    if (v24 != 2)
    {
      if (v33)
      {
        goto LABEL_120;
      }

      goto LABEL_71;
    }

    v39 = *(v73 + 16);
    v38 = *(v73 + 24);
    v36 = __OFSUB__(v38, v39);
    v37 = v38 - v39;
    if (v36)
    {
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

LABEL_46:
    if (v33 != v37)
    {
      goto LABEL_120;
    }

    if (v33 >= 1)
    {
      if (v29 > 1)
      {
        if (v29 != 2)
        {
          *&v80[6] = 0;
          *v80 = 0;
LABEL_70:
          sub_21CA8FA10(v80, v73, v70, &v79);
          if (!v79)
          {
            goto LABEL_120;
          }

          goto LABEL_71;
        }

        v40 = *(v27 + 16);
        v41 = *(v27 + 24);
        v42 = sub_21CB808C4();
        if (v42)
        {
          v43 = sub_21CB808F4();
          if (__OFSUB__(v40, v43))
          {
            goto LABEL_135;
          }

          v42 += v40 - v43;
        }

        if (__OFSUB__(v41, v40))
        {
          goto LABEL_134;
        }

        sub_21CB808E4();
        sub_21CA8FA10(v42, v73, v70, v80);
        v44 = v80[0];
        v4 = v68;
        v9 = v67;
      }

      else
      {
        if (!v29)
        {
          *v80 = *v11;
          *&v80[8] = v28;
          v80[10] = BYTE2(v28);
          v80[11] = BYTE3(v28);
          v80[12] = BYTE4(v28);
          v80[13] = BYTE5(v28);
          goto LABEL_70;
        }

        v45 = v27;
        if (v27 >> 32 < v27)
        {
          goto LABEL_133;
        }

        v46 = sub_21CB808C4();
        if (v46)
        {
          v47 = sub_21CB808F4();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_136;
          }

          v46 += v45 - v47;
        }

        v9 = v67;
        sub_21CB808E4();
        sub_21CA8FA10(v46, v73, v70, v80);
        v44 = v80[0];
        v4 = v68;
      }

      v14 = v69;
      if ((v44 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

LABEL_71:
    if ((v11[2] != *(a1 + 16) || v11[3] != *(a1 + 24)) && (sub_21CB86344() & 1) == 0 || (v11[4] != *(a1 + 32) || v11[5] != *(a1 + 40)) && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_120;
    }

    v48 = v11[6];
    v49 = *(a1 + 48);
    if (*(a1 + 56) == 1)
    {
      if (v49 <= 1)
      {
        if (v49)
        {
          if (v48 != 1)
          {
            goto LABEL_120;
          }
        }

        else if (v48)
        {
          goto LABEL_120;
        }
      }

      else if (v49 == 2)
      {
        if (v48 != 2)
        {
          goto LABEL_120;
        }
      }

      else if (v49 == 3)
      {
        if (v48 != 3)
        {
          goto LABEL_120;
        }
      }

      else if (v48 != 4)
      {
        goto LABEL_120;
      }
    }

    else if (v48 != v49)
    {
      goto LABEL_120;
    }

    v50 = v11[8];
    v51 = *(a1 + 64);
    if (*(a1 + 72) == 1)
    {
      if (v51)
      {
        if (v51 == 1)
        {
          if (v50 != 1)
          {
            goto LABEL_120;
          }
        }

        else if (v50 != 2)
        {
          goto LABEL_120;
        }
      }

      else if (v50)
      {
        goto LABEL_120;
      }
    }

    else if (v50 != v51)
    {
      goto LABEL_120;
    }

    v52 = v11[10];
    v53 = *(a1 + 80);
    if (*(a1 + 88) != 1)
    {
      if (v52 != v53)
      {
        goto LABEL_120;
      }

      goto LABEL_113;
    }

    if (!v53)
    {
      if (!v52)
      {
        goto LABEL_113;
      }

      goto LABEL_120;
    }

    if (v53 == 1)
    {
      break;
    }

    if (v52 == 2)
    {
      goto LABEL_113;
    }

LABEL_120:
    sub_21CAA4384(v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
LABEL_121:
    a2 = (a2 + 1) & v76;
    if (((*(v78 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_126;
    }
  }

  if (v52 != 1)
  {
    goto LABEL_120;
  }

LABEL_113:
  if (v11[12] != *(a1 + 96))
  {
    goto LABEL_120;
  }

  sub_21CB811C4();
  sub_21CAA44BC(&unk_27CDF8A70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if ((sub_21CB85574() & 1) == 0)
  {
    v14 = v69;
    goto LABEL_120;
  }

  v54 = *(v11 + *(v65[0] + 20));
  if (v54)
  {
    v55 = v66;
    if (v66)
    {
      sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
      v56 = v55;
      v57 = v54;
      v58 = sub_21CB85DD4();
      sub_21CAA4384(v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);

      v14 = v69;
      if (v58)
      {
        goto LABEL_137;
      }
    }

    else
    {
      sub_21CAA4384(v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v14 = v69;
    }

    goto LABEL_121;
  }

  v59 = v66;
  v60 = v66;
  sub_21CAA4384(v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  v14 = v69;
  if (v59)
  {

    goto LABEL_121;
  }

LABEL_137:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

void sub_21CA9B1B4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA9832C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21CA9DF28();
      goto LABEL_12;
    }

    sub_21CA9F700(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_21CB85DC4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21CB85DD4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21CB863A4();
  __break(1u);
}

uint64_t sub_21CA9B324(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21CB85BB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA98554(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21CA9E77C(MEMORY[0x277D49948], &qword_27CDF7270, &qword_21CBC4728);
      goto LABEL_12;
    }

    sub_21CA9F914(v11 + 1);
  }

  v13 = *v3;
  sub_21CAA44BC(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
  v14 = sub_21CB85484();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21CAA44BC(&qword_27CDEAF68, MEMORY[0x277D49948], MEMORY[0x277D49958]);
      v22 = sub_21CB85574();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

void sub_21CA9B5EC(unint64_t *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_42;
  }

  if (a3)
  {
    sub_21CA98B10(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_21CA9E1D4();
      goto LABEL_42;
    }

    sub_21CA9FE68(v7 + 1);
  }

  v9 = *v3;
  sub_21CB86484();
  sub_21C9DC744(&v37);
  v10 = sub_21CB864D4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = *a1;
    v14 = a1[1];
    do
    {
      v15 = (*(v9 + 48) + 112 * a2);
      v17 = v15[1];
      v16 = v15[2];
      v37 = *v15;
      v38 = v17;
      v39 = v16;
      v18 = v15[3];
      v19 = v15[4];
      v20 = v15[6];
      *v42 = v15[5];
      *&v42[16] = v20;
      v40 = v18;
      v41 = v19;
      if (*(&v37 + 1))
      {
        if (!v14 || v37 != __PAIR128__(v14, v13) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v14)
      {
        goto LABEL_11;
      }

      v21 = a1[3];
      if (*(&v38 + 1))
      {
        if (!v21 || v38 != *(a1 + 1) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v21)
      {
        goto LABEL_11;
      }

      if (v39 != *(a1 + 2) && (sub_21CB86344() & 1) == 0 || v40 != *(a1 + 3) && (sub_21CB86344() & 1) == 0 || v41 != *(a1 + 4) && (sub_21CB86344() & 1) == 0 || v42[0] != (a1[10] & 1) || __PAIR64__(v42[2], v42[1]) != __PAIR64__(*(a1 + 82), *(a1 + 81)))
      {
        goto LABEL_11;
      }

      v22 = a1[12];
      if (*&v42[16])
      {
        if (!v22 || *&v42[8] != *(a1 + 11) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v22)
      {
        goto LABEL_11;
      }

      v23 = a1[13];
      if (*&v42[24])
      {
        if (v23)
        {
          v34 = *&v42[24];
          sub_21C6E8F4C(0, &qword_27CDF8A90, 0x277CBDA58);
          sub_21C7A33F0(&v37, v36);
          v33 = v23;
          v35 = v34;
          v24 = sub_21CB85DD4();
          sub_21C7A344C(&v37);

          if (v24)
          {
LABEL_41:
            sub_21CB863A4();
            __break(1u);
            break;
          }
        }
      }

      else if (!v23)
      {
        goto LABEL_41;
      }

LABEL_11:
      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_42:
  v25 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = (*(v25 + 48) + 112 * a2);
  v27 = *(a1 + 1);
  *v26 = *a1;
  v26[1] = v27;
  v28 = *(a1 + 6);
  v26[5] = *(a1 + 5);
  v26[6] = v28;
  v29 = *(a1 + 4);
  v26[3] = *(a1 + 3);
  v26[4] = v29;
  v26[2] = *(a1 + 2);
  v30 = *(v25 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v32;
  }
}

void sub_21CA9B96C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21CA988B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_21CA9E078();
      goto LABEL_16;
    }

    sub_21CA9FC30(v8 + 1);
  }

  v10 = *v4;
  sub_21CB86484();
  sub_21CB854C4();
  v11 = sub_21CB864D4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_21CB86344() & 1) != 0)
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
  sub_21CB863A4();
  __break(1u);
}

uint64_t sub_21CA9BAEC(void *a1, unint64_t a2, char a3)
{
  v117 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  MEMORY[0x28223BE20](v106);
  v105 = v86 - v6;
  v7 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = (v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = (v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v11);
  v111 = (v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v110 = (v86 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  MEMORY[0x28223BE20](v15);
  v17 = v86 - v16;
  v116 = type metadata accessor for PMAccount(0);
  v102 = *(v116 - 1);
  MEMORY[0x28223BE20](v116);
  v19 = (v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v86 - v24;
  v107 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v107);
  v99 = (v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v98 = (v86 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = (v86 - v30);
  v32 = *(*v3 + 16);
  v33 = *(*v3 + 24);
  v101 = v3;
  if (v33 <= v32 || (a3 & 1) == 0)
  {
    v109 = v15;
    if (a3)
    {
      v91 = v22;
      sub_21CA98D3C(v32 + 1);
    }

    else
    {
      if (v33 > v32)
      {
        sub_21CA9E364();
        goto LABEL_54;
      }

      v91 = v22;
      sub_21CAA0070(v32 + 1);
    }

    v22 = *v3;
    sub_21CB86484();
    v34 = v117;
    v35 = v117[1];
    v118 = *v117;
    sub_21CB854C4();
    v36 = v116;
    v112 = v116[5];
    sub_21C7CECE4(&v119);
    v100 = v36[6];
    sub_21CAA431C(v34 + v100, v31, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CAA43E4(v31, v25, type metadata accessor for PMAccount.MockData);
      MEMORY[0x21CF15F90](1);
      PMAccount.MockData.hash(into:)(&v119);
      sub_21CAA4384(v25, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v37 = *v31;
      MEMORY[0x21CF15F90](0);
      sub_21CB85DE4();
    }

    v38 = *(v117 + v116[7] + 8);
    v90 = (v117 + v116[7]);
    sub_21CB864A4();
    if (v38)
    {
      sub_21CB854C4();
      sub_21CB864A4();
      sub_21CB85DE4();
    }

    v39 = v109;
    v3 = &v119;
    v40 = sub_21CB864D4();
    v41 = -1 << v22[32];
    a2 = v40 & ~v41;
    v115 = v22 + 56;
    if ((*&v22[((a2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> a2))
    {
      v114 = ~v41;
      v113 = *(v102 + 72);
      v108 = v11;
      v94 = v22;
      do
      {
        sub_21CAA431C(*(v22 + 6) + v113 * a2, v19, type metadata accessor for PMAccount);
        v42 = *v19 == v118 && v19[1] == v35;
        if (!v42 && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_16;
        }

        v3 = *(v39 + 48);
        sub_21CAA431C(v19 + v116[5], v17, type metadata accessor for PMAccount.UniqueID);
        sub_21CAA431C(v117 + v112, &v17[v3], type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v43 = v111;
          sub_21CAA431C(v17, v111, type metadata accessor for PMAccount.UniqueID);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v46 = type metadata accessor for PMAccount.SIWAUniqueID;
            goto LABEL_29;
          }

          v44 = v104;
          sub_21CAA43E4(&v17[v3], v104, type metadata accessor for PMAccount.SIWAUniqueID);
          v45 = sub_21C7D1550(v43, v44);
          v3 = type metadata accessor for PMAccount.SIWAUniqueID;
          sub_21CAA4384(v44, type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21CAA4384(v43, type metadata accessor for PMAccount.SIWAUniqueID);
          if (!v45)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v43 = v110;
          sub_21CAA431C(v17, v110, type metadata accessor for PMAccount.UniqueID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v46 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_29:
            sub_21CAA4384(v43, v46);
            sub_21C6EA794(v17, &qword_27CDEB3C8, &unk_21CBB0010);
            goto LABEL_16;
          }

          v47 = v103;
          sub_21CAA43E4(&v17[v3], v103, type metadata accessor for PMAccount.CombinedUniqueID);
          v48 = v43;
          v49 = sub_21C7D1A58(v43, v47);
          v3 = type metadata accessor for PMAccount.CombinedUniqueID;
          sub_21CAA4384(v47, type metadata accessor for PMAccount.CombinedUniqueID);
          sub_21CAA4384(v48, type metadata accessor for PMAccount.CombinedUniqueID);
          if (!v49)
          {
LABEL_15:
            sub_21CAA4384(v17, type metadata accessor for PMAccount.UniqueID);
            v39 = v109;
            goto LABEL_16;
          }
        }

        sub_21CAA4384(v17, type metadata accessor for PMAccount.UniqueID);
        v3 = *(v106 + 48);
        v50 = v105;
        sub_21CAA431C(v19 + v116[6], v105, type metadata accessor for PMAccount.Storage);
        sub_21CAA431C(v117 + v100, v50 + v3, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v51 = v99;
          sub_21CAA431C(v50, v99, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_21CAA4384(v51, type metadata accessor for PMAccount.MockData);
            goto LABEL_38;
          }

          v52 = v91;
          sub_21CAA43E4(v50 + v3, v91, type metadata accessor for PMAccount.MockData);
          v53 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v51, v52);
          v3 = type metadata accessor for PMAccount.MockData;
          sub_21CAA4384(v52, type metadata accessor for PMAccount.MockData);
          sub_21CAA4384(v51, type metadata accessor for PMAccount.MockData);
          if (!v53)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v54 = v98;
          sub_21CAA431C(v50, v98, type metadata accessor for PMAccount.Storage);
          v55 = *v54;
          if (swift_getEnumCaseMultiPayload() == 1)
          {

LABEL_38:
            sub_21C6EA794(v50, &unk_27CDF7680, &qword_21CBB4E30);
            v39 = v109;
            goto LABEL_16;
          }

          v56 = *(v50 + v3);
          sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
          v3 = sub_21CB85DD4();

          if ((v3 & 1) == 0)
          {
LABEL_34:
            sub_21CAA4384(v50, type metadata accessor for PMAccount.Storage);
            v39 = v109;
            v22 = v94;
            goto LABEL_16;
          }
        }

        sub_21CAA4384(v50, type metadata accessor for PMAccount.Storage);
        v57 = (v19 + v116[7]);
        v58 = *v57;
        v59 = v57[1];
        v61 = v57[2];
        v60 = v57[3];
        v97 = v61;
        v95 = v60;
        v3 = *v90;
        v62 = v90[1];
        v22 = v90[2];
        v63 = v90[3];
        v96 = v22;
        v93 = v3;
        v92 = v62;
        if (!v59)
        {
          v89 = v58;
          v72 = v62;
          sub_21C7D33AC(v58, 0, v97, v95);
          v73 = v72;
          v39 = v109;
          if (!v73)
          {
            goto LABEL_57;
          }

          sub_21C7D33AC(v3, v73, v22, v63);
          v22 = v94;
          v3 = v89;
          goto LABEL_50;
        }

        v88 = v63;
        v39 = v109;
        if (!v62)
        {
          v74 = v95;
          v75 = v3;
          v3 = v58;
          sub_21C7D33AC(v58, v59, v97, v95);
          v76 = v75;
          v63 = v88;
          sub_21C7D33AC(v76, 0, v96, v88);
          sub_21C7D33AC(v3, v59, v97, v74);

          v22 = v94;
LABEL_50:
          sub_21C7D33F0(v3, v59, v97, v95);
          v69 = v93;
          v70 = v92;
          v71 = &v120;
          goto LABEL_51;
        }

        v22 = v94;
        v89 = v58;
        if (v58 != v3 || v59 != v62) && (v64 = v62, v65 = v58, v66 = sub_21CB86344(), v62 = v64, v58 = v65, v3 = v93, (v66 & 1) == 0) || ((v97 ^ v96))
        {
          v67 = v62;
          sub_21C7D33AC(v58, v59, v97, v95);
          v68 = v3;
          v3 = v88;
          sub_21C7D33AC(v68, v67, v96, v88);
          v63 = v95;
          sub_21C7D33AC(v89, v59, v97, v95);
          sub_21C7D33F0(v93, v92, v96, v3);

          v69 = v89;
          v70 = v59;
          v71 = &v121;
LABEL_51:
          sub_21C7D33F0(v69, v70, *(v71 - 32), v63);
          goto LABEL_16;
        }

        v87 = v59;
        v77 = v58;
        v86[1] = sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
        v78 = v77;
        v79 = v95;
        sub_21C7D33AC(v78, v59, v97, v95);
        v80 = v88;
        sub_21C7D33AC(v3, v92, v96, v88);
        sub_21C7D33AC(v89, v87, v97, v79);
        v3 = v79;
        LOBYTE(v79) = sub_21CB85DD4();
        sub_21C7D33F0(v93, v92, v96, v80);

        v81 = v87;

        sub_21C7D33F0(v89, v81, v97, v3);
        if (v79)
        {
          goto LABEL_58;
        }

LABEL_16:
        sub_21CAA4384(v19, type metadata accessor for PMAccount);
        a2 = (a2 + 1) & v114;
      }

      while (((*&v115[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) != 0);
    }
  }

LABEL_54:
  v63 = *v101;
  (*v101)[(a2 >> 6) + 7] |= 1 << a2;
  result = sub_21CAA43E4(v117, v63[6] + *(v102 + 72) * a2, type metadata accessor for PMAccount);
  v83 = v63[2];
  v84 = __OFADD__(v83, 1);
  v85 = v83 + 1;
  if (v84)
  {
    __break(1u);
LABEL_57:
    sub_21C7D33AC(v3, v73, v22, v63);
    sub_21C7D33F0(v89, 0, v97, v95);
LABEL_58:
    sub_21CAA4384(v19, type metadata accessor for PMAccount);
    result = sub_21CB863A4();
    __break(1u);
  }

  else
  {
    v63[2] = v85;
  }

  return result;
}

uint64_t sub_21CA9C9C0(uint64_t a1, unint64_t a2, char a3)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7260, &qword_21CBC4718);
  MEMORY[0x28223BE20](v53);
  v8 = &v40 - v7;
  v9 = sub_21CB85C44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = _s24AccountContainerIdentityOMa(0);
  v45 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v41 = v3;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    v48 = v21;
    if (a3)
    {
      v26 = v14;
      v40 = v20;
      sub_21CA98F44(v24 + 1);
    }

    else
    {
      if (v25 > v24)
      {
        sub_21CA9E570();
        goto LABEL_23;
      }

      v26 = v14;
      v40 = v20;
      sub_21CAA023C(v24 + 1);
    }

    v52 = *v3;
    sub_21CB86484();
    sub_21CAA431C(a1, v23, _s24AccountContainerIdentityOMa);
    v27 = *(v10 + 48);
    if (v27(v23, 1, v9) == 1)
    {
      MEMORY[0x21CF15F90](0);
    }

    else
    {
      (*(v10 + 32))(v26, v23, v9);
      MEMORY[0x21CF15F90](1);
      sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      sub_21CB85494();
      (*(v10 + 8))(v26, v9);
    }

    v28 = sub_21CB864D4();
    v29 = -1 << *(v52 + 32);
    a2 = v28 & ~v29;
    v51 = v52 + 56;
    if ((*(v52 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v50 = ~v29;
      v49 = *(v45 + 72);
      v42 = (v10 + 32);
      v46 = (v10 + 8);
      v44 = a1;
      v43 = v27;
      while (1)
      {
        sub_21CAA431C(*(v52 + 48) + v49 * a2, v18, _s24AccountContainerIdentityOMa);
        v30 = *(v53 + 48);
        sub_21CAA431C(v18, v8, _s24AccountContainerIdentityOMa);
        sub_21CAA431C(a1, &v8[v30], _s24AccountContainerIdentityOMa);
        if (v27(v8, 1, v9) == 1)
        {
          break;
        }

        v31 = v48;
        sub_21CAA431C(v8, v48, _s24AccountContainerIdentityOMa);
        if (v27(&v8[v30], 1, v9) == 1)
        {
          sub_21CAA4384(v18, _s24AccountContainerIdentityOMa);
          (*v46)(v31, v9);
LABEL_14:
          sub_21C6EA794(v8, &qword_27CDF7260, &qword_21CBC4718);
          goto LABEL_15;
        }

        (*v42)(v47, &v8[v30], v9);
        sub_21CAA44BC(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
        sub_21CB857F4();
        sub_21CB857F4();
        if (v56 == v54 && v57 == v55)
        {
          goto LABEL_26;
        }

        v32 = sub_21CB86344();
        v33 = *v46;
        (*v46)(v47, v9);
        sub_21CAA4384(v18, _s24AccountContainerIdentityOMa);

        v33(v48, v9);
        a1 = v44;
        v27 = v43;
        if (v32)
        {
          goto LABEL_27;
        }

        sub_21CAA4384(v8, _s24AccountContainerIdentityOMa);
LABEL_15:
        a2 = (a2 + 1) & v50;
        if (((*(v51 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_21CAA4384(v18, _s24AccountContainerIdentityOMa);
      if (v27(&v8[v30], 1, v9) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }
  }

LABEL_23:
  v34 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21CAA43E4(a1, *(v34 + 48) + *(v45 + 72) * a2, _s24AccountContainerIdentityOMa);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_26:
    v39 = *v46;
    (*v46)(v47, v9);
    sub_21CAA4384(v18, _s24AccountContainerIdentityOMa);

    v39(v48, v9);
LABEL_27:
    sub_21CAA4384(v8, _s24AccountContainerIdentityOMa);
    result = sub_21CB863A4();
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

uint64_t sub_21CA9D110(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_21CB813C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA99408(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_21CA9E77C(MEMORY[0x277CBA690], &qword_27CDF7248, &qword_21CBC4700);
      goto LABEL_12;
    }

    sub_21CAA06B4(v11 + 1);
  }

  v13 = *v3;
  sub_21CAA44BC(&qword_27CDF0CC8, MEMORY[0x277CBA690], MEMORY[0x277CBA698]);
  v14 = sub_21CB85484();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_21CAA44BC(&qword_27CDF0CD0, MEMORY[0x277CBA690], MEMORY[0x277CBA6A0]);
      v22 = sub_21CB85574();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

void sub_21CA9D3D8(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a4)
  {
    sub_21CA999B4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_21CA9EB04();
      a3 = v9;
      goto LABEL_18;
    }

    sub_21CAA09D0(v7 + 1);
  }

  v10 = *v4;
  sub_21CB86484();
  sub_21CB864A4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x21CF15F90](result);
  }

  v11 = sub_21CB864D4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 16 * a3;
      if (*(v14 + 8))
      {
        if (a2)
        {
          goto LABEL_17;
        }
      }

      else if ((a2 & 1) == 0 && *v14 == result)
      {
LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2200, &qword_21CBB3690);
        sub_21CB863A4();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_18:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = result;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }
}

uint64_t sub_21CA9D57C(uint64_t a1, unint64_t a2, char a3)
{
  v58 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3E0, &unk_21CBA1A70);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = sub_21CB80DD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v45 = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v44 = v18;
      sub_21CA99C38(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        sub_21CA9EC58();
        goto LABEL_21;
      }

      v44 = v18;
      sub_21CAA0C24(v21 + 1);
    }

    v56 = *v3;
    sub_21CB86484();
    sub_21CAA444C(v58, v20);
    v55 = *(v10 + 48);
    v48 = v10 + 48;
    if (v55(v20, 1, v9) == 1)
    {
      sub_21CB864A4();
    }

    else
    {
      v23 = v49;
      (*(v10 + 32))(v49, v20, v9);
      sub_21CB864A4();
      sub_21CAA44BC(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_21CB85494();
      (*(v10 + 8))(v23, v9);
    }

    v24 = sub_21CB864D4();
    v25 = -1 << *(v56 + 32);
    a2 = v24 & ~v25;
    v54 = v56 + 56;
    if ((*(v56 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v53 = ~v25;
      v46 = (v10 + 32);
      v26 = *(v47 + 72);
      v51 = (v10 + 8);
      v52 = v26;
      v27 = &qword_21CBA64C0;
      do
      {
        sub_21CAA444C(*(v56 + 48) + v52 * a2, v16);
        v36 = *(v6 + 48);
        sub_21CAA444C(v16, v8);
        sub_21CAA444C(v58, &v8[v36]);
        v37 = v55;
        if (v55(v8, 1, v9) == 1)
        {
          sub_21C6EA794(v16, &unk_27CDED250, v27);
          if (v37(&v8[v36], 1, v9) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_21CAA444C(v8, v57);
          if (v37(&v8[v36], 1, v9) != 1)
          {
            v28 = &v8[v36];
            v29 = v9;
            v30 = v27;
            v31 = v57;
            v32 = v16;
            v33 = v49;
            (*v46)(v49, v28, v29);
            sub_21CAA44BC(&qword_27CDEB3E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v50 = sub_21CB85574();
            v34 = *v51;
            (*v51)(v33, v29);
            sub_21C6EA794(v32, &unk_27CDED250, v30);
            v35 = v31;
            v27 = v30;
            v9 = v29;
            v34(v35, v29);
            v16 = v32;
            sub_21C6EA794(v8, &unk_27CDED250, v27);
            if (v50)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_21C6EA794(v16, &unk_27CDED250, v27);
          (*v51)(v57, v9);
        }

        sub_21C6EA794(v8, &qword_27CDEB3E0, &unk_21CBA1A70);
LABEL_14:
        a2 = (a2 + 1) & v53;
      }

      while (((*(v54 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v38 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_21C6F1098(v58, *(v38 + 48) + *(v47 + 72) * a2);
  v40 = *(v38 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_24:
    sub_21C6EA794(v8, &unk_27CDED250, &qword_21CBA64C0);
LABEL_25:
    result = sub_21CB863A4();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v42;
  }

  return result;
}

void sub_21CA9DBC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
  v2 = *v0;
  v3 = sub_21CB86044();
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

void sub_21CA9DD1C()
{
  v1 = v0;
  v2 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7278, &unk_21CBC4730);
  v6 = *v0;
  v7 = sub_21CB86044();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21CAA431C(*(v6 + 48) + v21, v5, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        sub_21CAA43E4(v5, *(v8 + 48) + v21, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_21CA9DF28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
  v2 = *v0;
  v3 = sub_21CB86044();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

void sub_21CA9E078()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF68, &qword_21CBC47C0);
  v2 = *v0;
  v3 = sub_21CB86044();
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

void sub_21CA9E1D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7298, &qword_21CBC47C8);
  v2 = *v0;
  v3 = sub_21CB86044();
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
        v17 = 112 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[6];
        v25[5] = v18[5];
        v25[6] = v21;
        v25[3] = v19;
        v25[4] = v20;
        v23 = v18[1];
        v22 = v18[2];
        v25[0] = *v18;
        v25[1] = v23;
        v25[2] = v22;
        memmove((*(v4 + 48) + v17), v18, 0x70uLL);
        sub_21C7A33F0(v25, &v24);
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

void sub_21CA9E364()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7280, &unk_21CBC47A0);
  v6 = *v0;
  v7 = sub_21CB86044();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21CAA431C(*(v6 + 48) + v21, v5, type metadata accessor for PMAccount);
        sub_21CAA43E4(v5, *(v8 + 48) + v21, type metadata accessor for PMAccount);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_21CA9E570()
{
  v1 = v0;
  v2 = _s24AccountContainerIdentityOMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7268, &qword_21CBC4720);
  v6 = *v0;
  v7 = sub_21CB86044();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21CAA431C(*(v6 + 48) + v21, v5, _s24AccountContainerIdentityOMa);
        sub_21CAA43E4(v5, *(v8 + 48) + v21, _s24AccountContainerIdentityOMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_21CA9E77C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_21CB86044();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_21CA9E9B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7250, &qword_21CBC4708);
  v2 = *v0;
  v3 = sub_21CB86044();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void sub_21CA9EB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7288, &qword_21CBC47B0);
  v2 = *v0;
  v3 = sub_21CB86044();
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
}

void sub_21CA9EC58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7290, &qword_21CBC47B8);
  v6 = *v0;
  v7 = sub_21CB86044();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21CAA444C(*(v6 + 48) + v21, v5);
        sub_21C6F1098(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_21CA9EE44(uint64_t a1)
{
  v2 = v1;
  v34 = sub_21CB85C44();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7240, &qword_21CBC46F8);
  v7 = sub_21CB86054();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      v21 = sub_21CB85484();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_21CA9F160(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
  v4 = sub_21CB86054();
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
      v18 = *v17;
      v19 = v17[1];
      sub_21CB86484();

      sub_21CB854C4();
      v20 = sub_21CB864D4();
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
}

void sub_21CA9F398(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7278, &unk_21CBC4730);
  v7 = sub_21CB86054();
  v8 = v7;
  if (*(v6 + 16))
  {
    v33 = v1;
    v34 = v6;
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v35 + 72);
      sub_21CAA431C(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      sub_21CB86484();
      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21CAA44BC(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
      sub_21CB85494();
      v22 = *&v5[*(v36 + 20)];
      sub_21CB864A4();
      if (v22)
      {
        v23 = v22;
        sub_21CB85DE4();
      }

      v24 = sub_21CB864D4();
      v25 = -1 << *(v8 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_21CAA43E4(v5, *(v8 + 48) + v16 * v21, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      ++*(v8 + 16);
      v6 = v34;
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

        v2 = v33;
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v8;
  }
}

void sub_21CA9F700(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
  v4 = sub_21CB86054();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_21CB85DC4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v25;
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_21CA9F914(uint64_t a1)
{
  v2 = v1;
  v34 = sub_21CB85BB4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7270, &qword_21CBC4728);
  v7 = sub_21CB86054();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_21CAA44BC(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
      v21 = sub_21CB85484();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_21CA9FC30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF68, &qword_21CBC47C0);
  v4 = sub_21CB86054();
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
      v18 = *v17;
      v19 = v17[1];
      sub_21CB86484();

      sub_21CB854C4();
      v20 = sub_21CB864D4();
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
}

void sub_21CA9FE68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7298, &qword_21CBC47C8);
  v4 = sub_21CB86054();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v3 + 56);
    for (i = (v6 + 63) >> 6; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = (*(v3 + 48) + 112 * (v10 | (v5 << 6)));
      v15 = *v13;
      v14 = v13[1];
      v30 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      v18 = v13[6];
      v33 = v13[5];
      v34 = v18;
      v31 = v16;
      v32 = v17;
      v28 = v15;
      v29 = v14;
      sub_21CB86484();
      sub_21C7A33F0(&v28, v26);
      sub_21C9DC744(v27);
      sub_21CB864D4();
      v19 = sub_21CB85F44();
      *(v4 + 56 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v4 + 48) + 112 * v19);
      v22 = v29;
      v21 = v30;
      *v20 = v28;
      v20[1] = v22;
      v20[2] = v21;
      v23 = v31;
      v24 = v32;
      v25 = v34;
      v20[5] = v33;
      v20[6] = v25;
      v20[3] = v23;
      v20[4] = v24;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {

        v2 = v1;
        goto LABEL_16;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v4;
  }
}

void sub_21CAA0070(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7280, &unk_21CBC47A0);
  v8 = sub_21CB86054();
  if (*(v7 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v7 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      sub_21CAA431C(*(v7 + 48) + *(v4 + 72) * (v14 | (v9 << 6)), v6, type metadata accessor for PMAccount);
      sub_21CA9A150(v6, v8);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_13;
      }

      v16 = *(v7 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v8;
  }
}

void sub_21CAA023C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB85C44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s24AccountContainerIdentityOMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7268, &qword_21CBC4720);
  v13 = sub_21CB86054();
  v14 = v13;
  if (*(v12 + 16))
  {
    v46 = v3;
    v39 = v1;
    v15 = 0;
    v16 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v44 = (v4 + 48);
    v45 = v12;
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v21 = v13 + 56;
    v42 = v7;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v47 = *(v7 + 72);
      v27 = v48;
      sub_21CAA431C(v26 + v47 * (v23 | (v15 << 6)), v48, _s24AccountContainerIdentityOMa);
      sub_21CB86484();
      sub_21CAA431C(v27, v9, _s24AccountContainerIdentityOMa);
      v28 = v46;
      if ((*v44)(v9, 1, v46) == 1)
      {
        MEMORY[0x21CF15F90](0);
      }

      else
      {
        v29 = v43;
        (*v41)(v43, v9, v28);
        MEMORY[0x21CF15F90](1);
        sub_21CAA44BC(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
        sub_21CB85494();
        v30 = v29;
        v7 = v42;
        (*v40)(v30, v28);
      }

      v31 = sub_21CB864D4();
      v32 = -1 << *(v14 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v12 = v45;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_21CAA43E4(v48, *(v14 + 48) + v22 * v47, _s24AccountContainerIdentityOMa);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v2 = v39;
        goto LABEL_29;
      }

      v25 = *(v16 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v14;
  }
}

void sub_21CAA06B4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_21CB813C4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7248, &qword_21CBC4700);
  v7 = sub_21CB86054();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_21CAA44BC(&qword_27CDF0CC8, MEMORY[0x277CBA690], MEMORY[0x277CBA698]);
      v21 = sub_21CB85484();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_21CAA09D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7288, &qword_21CBC47B0);
  v4 = sub_21CB86054();
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
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_21CB86484();
      sub_21CB864A4();
      if (v19 != 1)
      {
        MEMORY[0x21CF15F90](v18);
      }

      v20 = sub_21CB864D4();
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

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }
}

void sub_21CAA0C24(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB80DD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7290, &qword_21CBC47B8);
  v13 = sub_21CB86054();
  v14 = v13;
  if (*(v12 + 16))
  {
    v46 = v3;
    v39 = v1;
    v15 = 0;
    v16 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v44 = (v4 + 48);
    v45 = v12;
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v21 = v13 + 56;
    v42 = v7;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v47 = *(v7 + 72);
      v27 = v48;
      sub_21CAA444C(v26 + v47 * (v23 | (v15 << 6)), v48);
      sub_21CB86484();
      sub_21CAA444C(v27, v9);
      v28 = v46;
      if ((*v44)(v9, 1, v46) == 1)
      {
        sub_21CB864A4();
      }

      else
      {
        v29 = v43;
        (*v41)(v43, v9, v28);
        sub_21CB864A4();
        sub_21CAA44BC(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_21CB85494();
        v30 = v29;
        v7 = v42;
        (*v40)(v30, v28);
      }

      v31 = sub_21CB864D4();
      v32 = -1 << *(v14 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v12 = v45;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_21C6F1098(v48, *(v14 + 48) + v22 * v47);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v2 = v39;
        goto LABEL_29;
      }

      v25 = *(v16 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v14;
  }
}

uint64_t sub_21CAA10C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21CB85FA4();
  }

  return sub_21CB860E4();
}

void sub_21CAA11A4(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_21CA91D80(*a1);
  v5 = v3;
  if (!v1 && (v4 & 1) == 0)
  {
    if (__OFADD__(v3, 1))
    {
      goto LABEL_35;
    }

    v7 = (v2 + 16);
    v6 = *(v2 + 16);
    if (v3 + 1 != v6)
    {
      v8 = v3 + 5;
      do
      {
        v10 = v8 - 4;
        if (v8 - 4 >= v6)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }

        v11 = *(v2 + 8 * v8);
        v12 = [v11 bundleIdentifier];
        if (v12)
        {
          v13 = v12;
          v14 = sub_21CB855C4();
          v16 = v15;

          v17 = HIBYTE(v16) & 0xF;
          if ((v16 & 0x2000000000000000) == 0)
          {
            v17 = v14 & 0xFFFFFFFFFFFFLL;
          }

          if (v17)
          {
            if (v14 == 0xD000000000000015 && 0x800000021CB986D0 == v16)
            {

              goto LABEL_8;
            }
          }

          else
          {
          }
        }

        v19 = sub_21CB86344();

        if ((v19 & 1) == 0)
        {
          if (v10 != v5)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              goto LABEL_31;
            }

            if (v5 >= *v7)
            {
              goto LABEL_32;
            }

            if (v10 >= *v7)
            {
              goto LABEL_33;
            }

            v20 = *(v2 + 8 * v8);
            v21 = *(v2 + 32 + 8 * v5);
            v22 = v20;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_21CAA10A0(v2);
            }

            v23 = v2 + 8 * v5;
            v24 = *(v23 + 32);
            *(v23 + 32) = v22;

            if (v10 >= *(v2 + 16))
            {
              goto LABEL_34;
            }

            v25 = *(v2 + 8 * v8);
            *(v2 + 8 * v8) = v21;

            *a1 = v2;
          }

          ++v5;
        }

LABEL_8:
        v7 = (v2 + 16);
        v6 = *(v2 + 16);
        v9 = v8 - 3;
        ++v8;
      }

      while (v9 != v6);
    }
  }
}

uint64_t sub_21CAA13C8(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21CAA1614(a1, a2);
  }

  v2 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84FA0];
  sub_21CB85F64();
  v3 = sub_21CB85FE4();
  if (v3)
  {
    v4 = v3;
    sub_21C6E8F4C(0, &qword_27CDF7210, 0x277CC1E90);
    v5 = v4;
    do
    {
      v24 = v5;
      swift_dynamicCast();
      v6 = [v25 bundleIdentifier];
      if (v6)
      {
        v7 = v6;
        v8 = sub_21CB855C4();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0xE000000000000000;
      }

      v11 = sub_21CA94078(&v24, v8, v10);

      v12 = v25;
      if (v11)
      {
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_21CA9832C(v13 + 1);
        }

        v2 = v26;
        result = sub_21CB85DC4();
        v15 = v2 + 56;
        v16 = -1 << *(v2 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v2 + 56 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v2 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v15 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v2 + 48) + 8 * v19) = v12;
        ++*(v2 + 16);
      }

      else
      {
      }

      v5 = sub_21CB85FE4();
    }

    while (v5);
  }

  return v2;
}

unint64_t *sub_21CAA1614(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v5;
    v30 = v2;
    v28 = &v28;
    MEMORY[0x28223BE20](a1);
    v31 = &v28 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v6);
    v32 = 0;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v5 = v10 & *(v3 + 56);
    v11 = (v9 + 63) >> 6;
    v34 = v3;
    while (v5)
    {
      v15 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_14:
      v18 = v15 | (v7 << 6);
      v19 = *(v3 + 48);
      v33 = v18;
      v20 = *(v19 + 8 * v18);
      v21 = [v20 bundleIdentifier];
      if (v21)
      {
        v22 = v21;
        v12 = sub_21CB855C4();
        v13 = v23;
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = sub_21CA94078(v35, v12, v13);

      v3 = v34;
      if (v14)
      {
        *&v31[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
          return sub_21CAA1D24(v31, v29, v32, v3);
        }
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return sub_21CAA1D24(v31, v29, v32, v3);
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v5 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = sub_21CAA1A78(v26, v5, v3);

  MEMORY[0x21CF16D90](v26, -1, -1);
  return v27;
}

unint64_t *sub_21CAA18D0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v22 = result;
  v23 = 0;
  v3 = 0;
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v24 = v12 | (v3 << 6);
    v15 = *(*(v26 + 48) + 8 * v24);
    v16 = [v15 bundleIdentifier];
    if (v16)
    {
      v17 = v16;
      v9 = sub_21CB855C4();
      v10 = v18;
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = sub_21CA94078(&v25, v9, v10);

    if (v11)
    {
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_18:
        v20 = v26;

        return sub_21CAA1D24(v22, a2, v23, v20);
      }
    }
  }

  v13 = v3;
  while (1)
  {
    v3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v3);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v7 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21CAA1A78(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21CAA18D0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21CAA1B00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE78, &qword_21CBADAF8);
  result = sub_21CB86074();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21CB86484();

    sub_21CB854C4();
    result = sub_21CB864D4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21CAA1D24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7218, &qword_21CBC46D8);
  result = sub_21CB86074();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_21CB85DC4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_21CAA1F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = a6;
  v12 = *v6;
  v13 = (v12 + 32 + 24 * a1);
  swift_arrayDestroy();
  v14 = __OFSUB__(a3, v7);
  v15 = a3 - v7;
  if (v14)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = *(v12 + 16);
  v14 = __OFSUB__(v16, a2);
  v17 = v16 - a2;
  if (v14)
  {
    goto LABEL_21;
  }

  v18 = &v13[3 * a3];
  v19 = (v12 + 32 + 24 * a2);
  if (v18 != v19 || v18 >= &v19[24 * v17])
  {
    memmove(v18, v19, 24 * v17);
  }

  v21 = *(v12 + 16);
  v14 = __OFADD__(v21, v15);
  v22 = v21 + v15;
  if (v14)
  {
    goto LABEL_22;
  }

  *(v12 + 16) = v22;
LABEL_13:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    v13[2] = v24;
    if (a3 == 1)
    {
      return;
    }

LABEL_23:

    v23 = v24;
    __break(1u);
    return;
  }
}

uint64_t sub_21CAA206C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CAA20C0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 24 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21CAA211C(void *a1)
{
  v1 = [a1 bundleRecord];
  v2 = [v1 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CB855C4();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

void sub_21CAA21B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21CB85FA4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CF15BD0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21CA94A8C(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id sub_21CAA228C(void *a1, id *a2, id a3)
{
  v6 = v3;
  v38[1] = *MEMORY[0x277D85DE8];
  v7 = objc_opt_self();
  if (*a1 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v8 = sub_21CB80BE4();
    __swift_project_value_buffer(v8, a2);
    v9 = sub_21CB80B74();
    v38[0] = 0;
    v10 = [v7 claimBindingsWithURL:v9 error:v38];

    v11 = v38[0];
    if (!v10)
    {
      v27 = v38[0];
      sub_21CB80B14();

      return swift_willThrow();
    }

    sub_21C6E8F4C(0, &qword_27CDF7228, 0x277CC1E98);
    v12 = sub_21CB85824();
    v13 = v11;

    v38[0] = MEMORY[0x277D84F90];
    v7 = v12 >> 62 ? sub_21CB85FA4() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = MEMORY[0x277D84F90];
    v14 = &selRef_symbolForTypeIdentifier_error_;
    if (!v7)
    {
      break;
    }

    v34 = v6;
    v35 = v7;
    v15 = 0;
    v36 = v12 & 0xFFFFFFFFFFFFFF8;
    v37 = v12 & 0xC000000000000001;
    while (1)
    {
      if (v37)
      {
        v16 = MEMORY[0x21CF15BD0](v15, v12);
      }

      else
      {
        if (v15 >= *(v36 + 16))
        {
          goto LABEL_35;
        }

        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a2 = [v16 v14[274]];
      v19 = [a2 bundleIdentifier];
      if (v19)
      {
        v20 = v12;
        v6 = v14;
        v21 = v19;
        v22 = sub_21CB855C4();
        v24 = v23;

        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          sub_21CB86134();
          sub_21CB86164();
          sub_21CB86174();
          a2 = v38;
          sub_21CB86144();
        }

        else
        {
        }

        v14 = v6;
        v12 = v20;
        v7 = v35;
      }

      else
      {
      }

      ++v15;
      if (v18 == v7)
      {
        v26 = v38[0];
        a2 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v26 = MEMORY[0x277D84F90];
LABEL_24:

  if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
  {
    v29 = sub_21CB85FA4();
    if (v29)
    {
      goto LABEL_27;
    }

LABEL_39:

    return MEMORY[0x277D84F90];
  }

  v29 = *(v26 + 16);
  if (!v29)
  {
    goto LABEL_39;
  }

LABEL_27:
  v38[0] = a2;
  sub_21CB86154();
  if (v29 < 0)
  {
    __break(1u);
  }

  v30 = 0;
  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x21CF15BD0](v30, v26);
    }

    else
    {
      v31 = *(v26 + 8 * v30 + 32);
    }

    v32 = v31;
    ++v30;
    v33 = [v31 v14[274]];

    sub_21CB86134();
    sub_21CB86164();
    sub_21CB86174();
    sub_21CB86144();
  }

  while (v29 != v30);

  return v38[0];
}

id sub_21CAA2658(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB80BE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, a2);
  (*(v7 + 16))(v9, v10, v6);
  v11 = objc_allocWithZone(MEMORY[0x277CC1E98]);
  v12 = sub_21CA93C4C(v9);
  if (!v3)
  {
    v13 = v12;
    v14 = sub_21CAA211C(v12);
    v11 = [v13 bundleRecord];
    if ((v14 & 1) == 0)
    {
      sub_21CAA3ED0();
      swift_allocError();
      *v15 = v11;
      swift_willThrow();
    }
  }

  return v11;
}

unint64_t sub_21CAA27F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}