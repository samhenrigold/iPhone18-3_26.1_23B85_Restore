uint64_t sub_19164D414(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LODWORD(v5[0]);
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (*&v5[0] < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_43;
    }

    if (*&v5[0] <= 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOWORD(v5[0]);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (*&v5[0] < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (*&v5[0] <= 0x7FFFFFFF)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 31))
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOBYTE(v5[0]);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOWORD(v5[0]);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if ((LODWORD(v5[0]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 31))
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v5[0] <= -2147483650.0)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v5[0] >= 2147483650.0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_36:
    *&v1 = v3;
    goto LABEL_20;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -2147500000.0)
      {
        if (*v5 < 2147500000.0)
        {
          *&v1 = *v5;
          goto LABEL_20;
        }

        goto LABEL_61;
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_43:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v5[0] <= -2147483650.0)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v5[0] < 2147483650.0)
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_53:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v5[0] > -2147483650.0)
  {
    if (v5[0] < 2147483650.0)
    {
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_19164D878(uint64_t a1, uint64_t a2)
{
  sub_1915DFD18(a1, v7);
  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if (swift_dynamicCast())
  {
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    a2 = SLOBYTE(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = SLOWORD(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = SLODWORD(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
LABEL_5:
    a2 = *&v6[0];
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v7);
    return a2;
  }

  if (swift_dynamicCast())
  {
    a2 = *&v6[0];
    if ((*&v6[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = LOBYTE(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = LOWORD(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = LODWORD(v6[0]);
    goto LABEL_6;
  }

  if (swift_dynamicCast())
  {
    a2 = *&v6[0];
    if ((*&v6[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6[0];
    if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6[0] > -9.22337204e18)
    {
      if (v6[0] < 9.22337204e18)
      {
LABEL_31:
        a2 = v4;
        goto LABEL_6;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v6[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v6 > -9.2234e18)
      {
        if (*v6 < 9.2234e18)
        {
          a2 = *v6;
          goto LABEL_6;
        }

        goto LABEL_53;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6[0];
    if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v6[0] <= -9.22337204e18)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v6[0] < 9.22337204e18)
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_47:
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_1915DCC64();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    return a2;
  }

  v4 = v6[0];
  if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v6[0] > -9.22337204e18)
  {
    if (v6[0] < 9.22337204e18)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_19164DC94(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    if (*&v5[0] <= 0xFFuLL)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    if (SLOWORD(v5[0]) < 0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    *&v1 = LOWORD(v5[0]);
    if (LOWORD(v5[0]) <= 0xFFu)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    *&v1 = LODWORD(v5[0]);
    if ((LODWORD(v5[0]) & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_62;
    }

    if (LODWORD(v5[0]) <= 0xFF)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) == 0)
    {
      if (*&v5[0] <= 0xFFuLL)
      {
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_24:
  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (*&v5[0] <= 0xFFuLL)
    {
      goto LABEL_26;
    }

    goto LABEL_63;
  }

  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LOBYTE(v5[0]);
LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOWORD(v5[0]);
    if (LOWORD(v5[0]) <= 0xFFu)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if (LODWORD(v5[0]) <= 0xFF)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (*&v5[0] <= 0xFFuLL)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5[0] <= -1.0)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v5[0] >= 256.0)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_42:
    *&v1 = v3;
    goto LABEL_26;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -1.0)
      {
        if (*v5 < 256.0)
        {
          *&v1 = *v5;
          goto LABEL_26;
        }

        goto LABEL_69;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_49:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v5[0] <= -1.0)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if (v5[0] < 256.0)
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_60:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v5[0] > -1.0)
  {
    if (v5[0] < 256.0)
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_59;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_19164E0F8(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LOWORD(v5[0]);
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (!(*&v5[0] >> 16))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOWORD(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    *&v1 = LODWORD(v5[0]);
    if ((LODWORD(v5[0]) & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_59;
    }

    if (!HIWORD(LODWORD(v5[0])))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) == 0)
    {
      if (!(*&v5[0] >> 16))
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_23:
  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 16))
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOBYTE(v5[0]);
    goto LABEL_25;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if (!HIWORD(LODWORD(v5[0])))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (!(*&v5[0] >> 16))
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v5[0] <= -1.0)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v5[0] >= 65536.0)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_40:
    *&v1 = v3;
    goto LABEL_25;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -1.0)
      {
        if (*v5 < 65536.0)
        {
          *&v1 = *v5;
          goto LABEL_25;
        }

        goto LABEL_66;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_47:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v5[0] <= -1.0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v5[0] < 65536.0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_57:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v5[0] > -1.0)
  {
    if (v5[0] < 65536.0)
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_19164E544(uint64_t a1)
{
  sub_1915DFD18(a1, v6);
  v1 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
LABEL_2:
    *&v1 = LODWORD(v5[0]);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v6);
    return *&v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    if (!HIDWORD(*&v5[0]))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOBYTE(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = SLOWORD(v5[0]);
    if ((LODWORD(v1) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    *&v1 = LODWORD(v5[0]);
    if ((LODWORD(v5[0]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if ((*&v5[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (!HIDWORD(*&v5[0]))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v1 = v5[0];
    if (!HIDWORD(*&v5[0]))
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOBYTE(v5[0]);
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    *&v1 = LOWORD(v5[0]);
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  if (swift_dynamicCast())
  {
    v1 = v5[0];
    if (!HIDWORD(*&v5[0]))
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v5[0] <= -1.0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v5[0] >= 4294967300.0)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_38:
    *&v1 = v3;
    goto LABEL_24;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v5[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v5 > -1.0)
      {
        if (*v5 < 4295000000.0)
        {
          *&v1 = *v5;
          goto LABEL_24;
        }

        goto LABEL_63;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_45:
  result = swift_dynamicCast();
  if (result)
  {
    v3 = v5[0];
    if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5[0] <= -1.0)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v5[0] < 4294967300.0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_55:
    __swift_destroy_boxed_opaque_existential_1(v6);
    sub_1915DCC64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    return *&v1;
  }

  v3 = v5[0];
  if ((*&v5[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v5[0] > -1.0)
  {
    if (v5[0] < 4294967300.0)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_19164E97C(uint64_t a1, unint64_t a2)
{
  sub_1915DFD18(a1, v7);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if (swift_dynamicCast())
  {
    a2 = *&v6[0];
    if ((*&v6[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = SLOBYTE(v6[0]);
    if ((SLOBYTE(v6[0]) & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = SLOWORD(v6[0]);
    if ((SLOWORD(v6[0]) & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = LODWORD(v6[0]);
    if ((LODWORD(v6[0]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    a2 = *&v6[0];
    if ((*&v6[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  if (swift_dynamicCast())
  {
    a2 = LOBYTE(v6[0]);
    goto LABEL_38;
  }

  if (swift_dynamicCast())
  {
    a2 = LOWORD(v6[0]);
    goto LABEL_38;
  }

  if (swift_dynamicCast())
  {
    a2 = LODWORD(v6[0]);
    goto LABEL_38;
  }

  if (swift_dynamicCast())
  {
LABEL_2:
    a2 = *&v6[0];
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(v7);
    return a2;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6[0];
    if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6[0] > -1.0)
    {
      if (v6[0] < 1.84467441e19)
      {
LABEL_32:
        a2 = v4;
        goto LABEL_38;
      }

      goto LABEL_53;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = swift_dynamicCast();
  if (result)
  {
    if ((LODWORD(v6[0]) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*v6 > -1.0)
      {
        if (*v6 < 1.8447e19)
        {
          a2 = *v6;
          goto LABEL_38;
        }

        goto LABEL_56;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6[0];
    if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v6[0] <= -1.0)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v6[0] < 1.84467441e19)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_50:
    __swift_destroy_boxed_opaque_existential_1(v7);
    sub_1915DCC64();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    return a2;
  }

  v4 = v6[0];
  if ((*&v6[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v6[0] > -1.0)
  {
    if (v6[0] < 1.84467441e19)
    {
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_60:
  __break(1u);
  return result;
}

void *AXMigratingDecoder.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = sub_191653100(v1);
  v0[4] = 0xC000000000000000;
  return v0;
}

uint64_t sub_19164EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  swift_beginAccess();

  sub_1915ED2F8(a2, v6);
  swift_endAccess();

  if (!v4)
  {
    type metadata accessor for AXMigratingDecoder();
    sub_191653370(&qword_1EADAE8F0, v8, type metadata accessor for AXMigratingDecoder, &protocol conformance descriptor for AXMigratingDecoder);

    return sub_19166BCC8();
  }

  return result;
}

uint64_t sub_19164EF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1915E1F90(a2, v11);
  v8 = sub_1915EBC54(v11);
  swift_beginAccess();
  *(v4 + 32) = v8;

  swift_beginAccess();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];

  result = sub_19164EE08(v9, a3, a4);
  if (!v5)
  {
    *(v4 + 32) = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_19164F008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AXMigratingKeyedDecoding(0, a2, a3, a4);
  swift_beginAccess();
  v5 = *(v4 + 16);
  swift_beginAccess();
  v6 = *(v4 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  swift_getWitnessTable();
  return sub_19166C328();
}

uint64_t sub_19164F0E4(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_19164F124@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = type metadata accessor for AXMigratingUnKeyedDecoding();
  v6 = swift_allocObject();
  *(v6 + 32) = xmmword_191673920;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = sub_191653370(qword_1EADAE868, v7, type metadata accessor for AXMigratingUnKeyedDecoding, &protocol conformance descriptor for AXMigratingUnKeyedDecoding);
  *a1 = v6;
}

uint64_t sub_19164F20C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = type metadata accessor for AXMigratingSingleValueDecoding();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = sub_191653370(&qword_1EADAE860, 255, type metadata accessor for AXMigratingSingleValueDecoding, &unk_191675780);
  *a1 = v6;
}

void *AXMigratingDecoder.deinit()
{

  return v0;
}

uint64_t AXMigratingDecoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19164F440@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  swift_beginAccess();
  v5 = *(v3 + 32);
  v6 = type metadata accessor for AXMigratingSingleValueDecoding();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  a1[3] = v6;
  a1[4] = sub_191653370(&qword_1EADAE860, 255, type metadata accessor for AXMigratingSingleValueDecoding, &unk_191675780);
  *a1 = v7;
}

uint64_t sub_19164F528()
{
  v1 = *(v0 + 24);

  v3 = sub_1915EC548(v2, v1);

  if (v3 >> 62 == 1)
  {

    MEMORY[0x1EEE9AC00](v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0368, &qword_1916759C8);
    sub_1916540B8();
    v6 = sub_19166B968();

    return v6;
  }

  else
  {

    return sub_19166BA28();
  }
}

BOOL sub_19164F688(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v4 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = v2[3];

  v10 = sub_1915EC548(v5, v9);

  return v10 >> 62 != 3;
}

BOOL sub_19164F7C0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v4 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = v2[3];

  v10 = sub_1915EC548(v5, v9);

  return v10 >> 62 == 3;
}

uint64_t sub_19164F908(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = sub_19164B6C0(v5, v4);

  return v9 & 1;
}

uint64_t sub_19164FA3C(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = sub_19164B7CC(v5, v4);

  return v9;
}

double sub_19164FB78(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = sub_19164B8E0(v5, v4);

  return v9;
}

float sub_19164FCB4(uint64_t a1)
{
  v3 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = sub_19164B9F4(v5, v4);

  return v9;
}

uint64_t sub_19164FEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v6 = *v3;
  v8 = v3[2];
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v10 = *(v6 + 80);
  *(inited + 56) = v10;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a1, v10);

  sub_1915E3DB0(inited);
  v12 = sub_19164BE44(v8, v7, a2, a3);

  return v12;
}

uint64_t sub_191650088(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = *v2;
  v7 = v2[2];
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = sub_19164BB08(v7, v6, a2);

  return v11;
}

uint64_t sub_1916501F8(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = *v2;
  v7 = v2[2];
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = sub_19164BC1C(v7, v6, a2);

  return v11;
}

uint64_t sub_191650368(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = *v2;
  v7 = v2[2];
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = sub_19164BD30(v7, v6, a2);

  return v11;
}

uint64_t sub_1916504E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v12 = *(v9 + 80);
  *(inited + 56) = v12;
  *(inited + 64) = *(v9 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a2, v12);

  sub_1915E3DB0(inited);
  v14 = v10;
  v15 = v5[3];
  type metadata accessor for AXMigratingDecoder();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  v16[2] = MEMORY[0x1E69E7CC0];

  v16[3] = sub_191653100(v17);
  v16[4] = 0xC000000000000000;
  swift_beginAccess();
  v16[2] = v14;
  v18 = swift_beginAccess();
  v16[4] = v15;
  sub_19164EE08(v18, a3, a4);
}

uint64_t sub_191650690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  type metadata accessor for AXMigratingKeyedDecoding(0, a3, a4, a4);
  v8 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v10 = *(v7 + 80);
  *(inited + 56) = v10;
  *(inited + 64) = *(v7 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);

  sub_1915E3DB0(inited);
  v12 = v5[3];
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v12;

  swift_getWitnessTable();
  return sub_19166C328();
}

uint64_t sub_191650810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = v7;
  v12 = v3[3];
  v13 = type metadata accessor for AXMigratingUnKeyedDecoding();
  v14 = swift_allocObject();
  *(v14 + 32) = xmmword_191673920;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  a2[3] = v13;
  a2[4] = sub_191653370(qword_1EADAE868, v15, type metadata accessor for AXMigratingUnKeyedDecoding, &protocol conformance descriptor for AXMigratingUnKeyedDecoding);
  *a2 = v14;
}

uint64_t sub_19165098C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = sub_19166BF58();
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = v27 - v8 + 16;
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7, v11);
  v13 = v27 - v12 + 16;
  v14 = *(v3 + 88);
  sub_19166C838();
  result = (*(v10 + 48))(v9, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v9, v4);
    v16 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = v4;
    *(inited + 64) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(v10 + 16))(boxed_opaque_existential_0, v13, v4);
    v27[0] = v16;

    sub_1915E3DB0(inited);
    v19 = v27[0];
    v20 = v2[3];
    v21 = type metadata accessor for AXMigratingDecoder();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E7CC0];
    v22[2] = MEMORY[0x1E69E7CC0];

    v22[3] = sub_191653100(v23);
    v22[4] = 0xC000000000000000;
    swift_beginAccess();
    v22[2] = v19;
    swift_beginAccess();
    v22[4] = v20;
    v24 = v26;
    v26[3] = v21;
    v24[4] = sub_191653370(&qword_1EADAE8F0, v25, type metadata accessor for AXMigratingDecoder, &protocol conformance descriptor for AXMigratingDecoder);
    *v24 = v22;
    return (*(v10 + 8))(v13, v4);
  }

  return result;
}

uint64_t sub_191650C74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = v3[3];
  v12 = type metadata accessor for AXMigratingDecoder();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v13[2] = MEMORY[0x1E69E7CC0];

  v13[3] = sub_191653100(v14);
  v13[4] = 0xC000000000000000;
  swift_beginAccess();
  v13[2] = v7;
  swift_beginAccess();
  v13[4] = v11;
  a2[3] = v12;
  result = sub_191653370(&qword_1EADAE8F0, v15, type metadata accessor for AXMigratingDecoder, &protocol conformance descriptor for AXMigratingDecoder);
  a2[4] = result;
  *a2 = v13;
  return result;
}

uint64_t sub_191650E38()
{

  return swift_deallocClassInstance();
}

unint64_t sub_19165155C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for AXMigratingKeyedDecoding(0, *(a2 + 80), *(a2 + 88), a4);
  v8 = a4(a1, v7, a3);
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t sub_191651600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for AXMigratingKeyedDecoding(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_191651694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = type metadata accessor for AXMigratingKeyedDecoding(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_191651818()
{
  v1 = v0[4];
  v2 = v1;
  if (v1 == 1)
  {
    v3 = v0[2];
    v4 = v0[3];

    v5 = sub_1915EC548(v3, v4);

    if (v5 >> 62)
    {

      v2 = 0;
    }

    else
    {
      v2 = *(v5 + 16);
    }

    v6 = v0[4];
    v0[4] = v2;

    sub_19165383C(v6);
  }

  sub_19165411C(v1);
  return v2;
}

uint64_t sub_1916518C8()
{
  v0 = sub_191651818();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_191651944(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

BOOL sub_1916519D4()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = sub_191651818();
  if (v2 && (v3 = *(v2 + 16), , v1 == v3))
  {
    return 1;
  }

  else
  {
    return *(v0 + 32) == 0;
  }
}

uint64_t sub_191651A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = v3[5];
  sub_19163E698();
  result = sub_19166BFB8();
  v10 = v3[5];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    v4[5] = v12;
    v15 = v4[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v17 = swift_allocObject();
    *(inited + 32) = v17;
    *(v17 + 16) = v7;
    *(v17 + 24) = 0;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;

    sub_1915E3DB0(inited);
    v18 = v15;
    v19 = v4[3];
    type metadata accessor for AXMigratingDecoder();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E7CC0];
    v20[2] = MEMORY[0x1E69E7CC0];

    v20[3] = sub_191653100(v21);
    v20[4] = 0xC000000000000000;
    swift_beginAccess();
    v20[2] = v18;
    v22 = swift_beginAccess();
    v20[4] = v19;
    sub_19164EE08(v22, a2, a3);
  }

  return result;
}

uint64_t sub_191651C48()
{
  v1 = sub_191651818();
  if (!v1)
  {
    goto LABEL_4;
  }

  result = swift_beginAccess();
  v3 = *(v0 + 40);
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v1 + 16);

  if (v3 < v4)
  {
LABEL_4:
    result = swift_beginAccess();
    v5 = *(v0 + 40);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (!v6)
    {
      result = v1 == 0;
      *(v0 + 40) = v7;
      return result;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_191651CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v7 = v3[5];
  sub_19163E698();
  result = sub_19166BFB8();
  v10 = v3[5];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    v4[5] = v12;
    v15 = a3;
    v16 = v4[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v7;
    *(v18 + 24) = 0;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;

    sub_1915E3DB0(inited);
    type metadata accessor for AXMigratingKeyedDecoding(0, a2, v15, v19);
    v20 = v4[3];
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    *(v21 + 24) = v20;

    swift_getWitnessTable();
    return sub_19166C328();
  }

  return result;
}

uint64_t sub_191651E90@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[5];
  sub_19163E698();
  result = sub_19166BFB8();
  v7 = v1[5];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = v6;
    v2[5] = v9;
    v12 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v4;
    *(v14 + 24) = 0;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;

    sub_1915E3DB0(inited);
    v15 = v12;
    v16 = v2[3];
    v17 = type metadata accessor for AXMigratingUnKeyedDecoding();
    v18 = swift_allocObject();
    *(v18 + 32) = xmmword_191673920;
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    a1[3] = v17;
    a1[4] = sub_191653370(qword_1EADAE868, v19, type metadata accessor for AXMigratingUnKeyedDecoding, &protocol conformance descriptor for AXMigratingUnKeyedDecoding);
    *a1 = v18;
  }

  return result;
}

uint64_t sub_191652024@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[5];
  sub_19163E698();
  result = sub_19166BFB8();
  v7 = v1[5];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = v6;
    v2[5] = v9;
    v12 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_191672210;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v4;
    *(v14 + 24) = 0;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;

    sub_1915E3DB0(inited);
    v15 = v2[3];
    v16 = type metadata accessor for AXMigratingDecoder();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E7CC0];
    v17[2] = MEMORY[0x1E69E7CC0];

    v17[3] = sub_191653100(v18);
    v17[4] = 0xC000000000000000;
    swift_beginAccess();
    v17[2] = v12;
    swift_beginAccess();
    v17[4] = v15;
    a1[3] = v16;
    result = sub_191653370(&qword_1EADAE8F0, v19, type metadata accessor for AXMigratingDecoder, &protocol conformance descriptor for AXMigratingDecoder);
    a1[4] = result;
    *a1 = v17;
  }

  return result;
}

void *AXMigratingUnKeyedDecoding.deinit()
{

  sub_19165383C(*(v0 + 32));
  return v0;
}

uint64_t AXMigratingUnKeyedDecoding.__deallocating_deinit()
{

  sub_19165383C(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_191652280()
{
  v0 = sub_191651818();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1916522F4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_191652408()
{
  result = sub_19166C408();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_191652458()
{
  result = sub_19166C418();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_191652500()
{
  result = sub_19166C448();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_191652550()
{
  result = sub_19166C428();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_191652690()
{
  result = sub_19166C458();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1916526E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1916527A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for AXMigratingDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = MEMORY[0x1E69E7CC0];

  v8[3] = sub_191653100(v9);
  v8[4] = 0xC000000000000000;
  swift_beginAccess();
  v8[2] = v6;
  v10 = swift_beginAccess();
  v8[4] = v7;
  sub_19164EE08(v10, a2, a3);
}

BOOL sub_19165289C()
{
  v1 = *(*v0 + 24);

  v3 = sub_1915EC548(v2, v1);

  return v3 >> 62 == 3;
}

uint64_t sub_19165290C()
{
  v1 = *(*v0 + 24);

  v3 = sub_19164B6C0(v2, v1);

  return v3 & 1;
}

uint64_t sub_191652970()
{
  v1 = *(*v0 + 24);

  v3 = sub_19164B7CC(v2, v1);

  return v3;
}

double sub_1916529E4()
{
  v1 = *(*v0 + 24);

  v3 = sub_19164B8E0(v2, v1);

  return v3;
}

float sub_191652A50()
{
  v1 = *(*v0 + 24);

  v3 = sub_19164B9F4(v2, v1);

  return v3;
}

uint64_t sub_191652BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v7 = *(*v4 + 24);

  v9 = sub_19164BE44(v8, v7, a3, a4);

  return v9;
}

uint64_t sub_191652C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = *(*v3 + 24);

  v7 = sub_19164BB08(v6, v5, a3);

  return v7;
}

uint64_t sub_191652D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = *(*v3 + 24);

  v7 = sub_19164BC1C(v6, v5, a3);

  return v7;
}

uint64_t sub_191652DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = *(*v3 + 24);

  v7 = sub_19164BD30(v6, v5, a3);

  return v7;
}

unint64_t sub_191652EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0370, &qword_1916759E8);
    v3 = sub_19166C248();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1915DB0E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_191652FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB02D0, &qword_1916751A8);
    v3 = sub_19166C248();
    v4 = a1 + 32;

    while (1)
    {
      sub_1915E0A90(v4, &v16, &qword_1EADB0380, &qword_191675A00);
      v5 = v16;
      v6 = v17;
      result = sub_1915DB0E4(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_191653100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0388, &qword_191675A08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0390, &unk_191675A10);
    v8 = sub_19166C248();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1915E0A90(v10, v6, &qword_1EADB0388, &qword_191675A08);
      result = sub_1915DB3AC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_19166C1E8();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1915E4370(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_191653370(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1916533B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0298, &qword_1916759C0);
    v3 = sub_19166C248();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1915DB0E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1916534E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19166C248();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1915DB0E4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1916535F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19166C248();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1915DB0E4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1916536F0()
{
  v1 = sub_191651818();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  result = swift_beginAccess();
  v4 = *(v0 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);

    if (v4 < v5)
    {
LABEL_4:
      sub_1915DCC64();
      swift_allocError();
      *v6 = 2;
      return swift_willThrow();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191653794()
{
  v1 = sub_191651818();
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v1;
  result = swift_beginAccess();
  v4 = *(v0 + 40);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);

    if (v4 < v5)
    {
LABEL_4:
      sub_1915DCC64();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19165383C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t dispatch thunk of AXMigratingUnKeyedDecoding.decode(_:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

{
  return (*(*v0 + 240))();
}

{
  return (*(*v0 + 248))();
}

{
  return (*(*v0 + 256))();
}

{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

{
  return (*(*v0 + 280))();
}

{
  return (*(*v0 + 288))();
}

{
  return (*(*v0 + 296))();
}

{
  return (*(*v0 + 304))();
}

{
  return (*(*v0 + 312))();
}

{
  return (*(*v0 + 320))();
}

{
  return (*(*v0 + 336))() & 1;
}

unint64_t sub_1916540B8()
{
  result = qword_1EADAE6A8;
  if (!qword_1EADAE6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADB0368, &qword_1916759C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE6A8);
  }

  return result;
}

uint64_t sub_19165411C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void *AXMigratingEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v0[4] = 0xC000000000000000;
  v0[2] = v1;
  return v0;
}

void *AXMigratingEncoder.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v0[4] = 0xC000000000000000;
  v0[2] = v1;
  return v0;
}

uint64_t sub_1916541EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AXMigratingKeyedEncoding(0, a2, a3, a4);
  swift_beginAccess();
  v5 = *(v4 + 16);

  sub_191659680(v5, v4, v6, v7);

  swift_getWitnessTable();
  return sub_19166C3A8();
}

uint64_t sub_1916542B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = type metadata accessor for AXMigratingUnKeyedEncoding();
  swift_allocObject();

  v6 = sub_1916596F8(v4, v2);

  a1[3] = v5;
  result = sub_1916597F4(qword_1EADAE6C0, 255, type metadata accessor for AXMigratingUnKeyedEncoding, &unk_191675CAC);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_191654390@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = type metadata accessor for AXMigratingSingleValueEncoding();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  a1[3] = v4;
  a1[4] = sub_1916597F4(&qword_1EADAE6B8, 255, type metadata accessor for AXMigratingSingleValueEncoding, &unk_191675BF4);
  *a1 = v5;
}

uint64_t sub_191654454@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  swift_beginAccess();
  *(v3 + 32) = 0xC000000000000000;

  v11[3] = type metadata accessor for AXMigratingEncoder();
  v11[4] = sub_1916597F4(&qword_1EADAE748, v8, type metadata accessor for AXMigratingEncoder, &protocol conformance descriptor for AXMigratingEncoder);
  v11[0] = v3;

  sub_19166B6A8();
  result = __swift_destroy_boxed_opaque_existential_1(v11);
  if (!v4)
  {
    swift_beginAccess();
    sub_1915ECE5C(a1, MEMORY[0x1E69E7CC0]);
    swift_endAccess();
    v10 = *(v3 + 32);

    sub_1915EC0B8(v10, a3);

    *(v5 + 32) = 0xC000000000000000;
  }

  return result;
}

void *AXMigratingEncoder.deinit()
{

  return v0;
}

uint64_t AXMigratingEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_191654650@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = type metadata accessor for AXMigratingUnKeyedEncoding();
  swift_allocObject();

  v6 = sub_1916596F8(v4, v3);

  a1[3] = v5;
  result = sub_1916597F4(qword_1EADAE6C0, 255, type metadata accessor for AXMigratingUnKeyedEncoding, &unk_191675CAC);
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_191654730@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = type metadata accessor for AXMigratingSingleValueEncoding();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = sub_1916597F4(&qword_1EADAE6B8, 255, type metadata accessor for AXMigratingSingleValueEncoding, &unk_191675BF4);
  *a1 = v6;
}

uint64_t sub_1916547F8(char a1)
{
  v2 = *(v1 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v2);
  swift_endAccess();
}

uint64_t sub_1916548C8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v4 | 0x8000000000000000, v3);
  swift_endAccess();
}

uint64_t sub_1916549AC(double a1)
{
  v2 = *(v1 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v2);
  swift_endAccess();
}

uint64_t sub_191654A84(float a1)
{
  v2 = *(v1 + 24);
  v3 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v3 | 0x8000000000000000, v2);
  swift_endAccess();
}

uint64_t sub_191654C74(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v5 | 0x8000000000000000, v4);
  swift_endAccess();
}

uint64_t sub_191654D74(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v5 | 0x8000000000000000, v4);
  swift_endAccess();
}

uint64_t sub_191654E74(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v5 | 0x8000000000000000, v4);
  swift_endAccess();
}

uint64_t sub_191654F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v5 | 0x8000000000000000, v4);
  swift_endAccess();
}

uint64_t sub_19165504C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 16);
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v3 + 24);
  v9 = type metadata accessor for AXMigratingEncoder();
  v10 = swift_allocObject();

  v11 = sub_191653100(MEMORY[0x1E69E7CC0]);
  v10[4] = v7;
  v10[2] = v8;
  v10[3] = v11;
  v17[3] = v9;
  v17[4] = sub_1916597F4(&qword_1EADAE748, v12, type metadata accessor for AXMigratingEncoder, &protocol conformance descriptor for AXMigratingEncoder);
  v17[0] = v10;

  sub_19166B6A8();
  if (v17[9])
  {

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    v14 = *(v3 + 16);
    swift_beginAccess();
    v15 = v10[4];
    swift_beginAccess();
    *(v14 + 32) = v15;

    v16 = *(v4 + 24);
    swift_beginAccess();

    sub_1915ECE5C(a2, v16);
    swift_endAccess();
  }
}

uint64_t sub_191655274()
{
  v1 = *(*v0 + 24);
  swift_beginAccess();

  sub_1915EC78C(0xC000000000000000, v1);
  swift_endAccess();
}

double sub_191655548@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = xmmword_191673670;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_191655568@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19163E698();
  result = sub_19166BFB8();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t sub_1916555C0(uint64_t a1)
{
  v2 = sub_1915EED24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1916555FC(uint64_t a1)
{
  v2 = sub_1915EED24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191655638()
{
  v1 = v0;
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v4 = *(v0 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v7 = *(v0 + 32);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = v6;
    *(v1 + 32) = v9;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v12 = swift_allocObject();
    *(inited + 32) = v12;
    *(v12 + 16) = v4;
    *(v12 + 24) = 0;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_1915E3DB0(inited);
    swift_beginAccess();
    sub_1915EC78C(0xC000000000000000, v2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655778(char a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = *(v1 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = *(v1 + 32);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    *(v2 + 32) = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v6 = *(v2 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v9 = *(v2 + 32);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = v8;
    *(v3 + 32) = v11;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v6;
    *(v14 + 24) = 0;
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    sub_1915E3DB0(inited);
    v15 = swift_allocObject();

    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v15 | 0x8000000000000000, v4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655AA0(double a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = *(v1 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = *(v1 + 32);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    *(v2 + 32) = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655C2C(float a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v5 = *(v1 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v8 = *(v1 + 32);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = v7;
    *(v2 + 32) = v10;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = 0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_1915E3DB0(inited);
    v14 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v14 | 0x8000000000000000, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191655ED0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v10 = *(v3 + 32);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    *(v4 + 32) = v12;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    sub_1915E3DB0(inited);
    v16 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v16 | 0x8000000000000000, v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191656084(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v10 = *(v3 + 32);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    *(v4 + 32) = v12;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    sub_1915E3DB0(inited);
    v16 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v16 | 0x8000000000000000, v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191656238(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v10 = *(v3 + 32);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    *(v4 + 32) = v12;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    sub_1915E3DB0(inited);
    v16 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v16 | 0x8000000000000000, v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1916563EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v3 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v10 = *(v3 + 32);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    *(v4 + 32) = v12;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    sub_1915E3DB0(inited);
    v16 = swift_allocObject();
    sub_19166C058();
    swift_beginAccess();
    sub_1915EC78C(v16 | 0x8000000000000000, v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_191656578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v3 + 32);
  v23[0] = v8;
  sub_19163E698();

  result = sub_19166BFB8();
  v11 = *(v3 + 32);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = v10;
    *(v4 + 32) = v13;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v16 = swift_allocObject();
    *(inited + 32) = v16;
    *(v16 + 16) = v8;
    *(v16 + 24) = 0;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;
    v23[0] = v6;
    sub_1915E3DB0(inited);
    v17 = *(v4 + 16);
    swift_beginAccess();
    v18 = *(v17 + 32);
    v19 = type metadata accessor for AXMigratingEncoder();
    v20 = swift_allocObject();

    v21 = sub_191653100(MEMORY[0x1E69E7CC0]);
    v20[4] = v18;
    v20[2] = v6;
    v20[3] = v21;
    v23[3] = v19;
    v23[4] = sub_1916597F4(&qword_1EADAE748, v22, type metadata accessor for AXMigratingEncoder, &protocol conformance descriptor for AXMigratingEncoder);
    v23[0] = v20;

    sub_19166B6A8();
    if (v23[19])
    {

      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v23);
      swift_beginAccess();
      *(v17 + 32) = v20[4];

      swift_beginAccess();
      sub_1915ECE5C(a2, v6);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1916567F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for AXMigratingKeyedEncoding(0, a2, a3, a4);
  v6 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v4 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v11 = *(v4 + 32);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = v10;
    *(v5 + 32) = v13;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v16 = swift_allocObject();
    *(inited + 32) = v16;
    *(v16 + 16) = v8;
    *(v16 + 24) = 0;
    *(v16 + 32) = v14;
    *(v16 + 40) = v15;
    sub_1915E3DB0(inited);
    v17 = *(v5 + 16);

    sub_191659680(v6, v17, v18, v19);

    swift_getWitnessTable();
    return sub_19166C3A8();
  }

  return result;
}

uint64_t sub_191656978@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v6 = *(v1 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v9 = *(v1 + 32);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = v8;
    *(v2 + 32) = v11;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v6;
    *(v14 + 24) = 0;
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    sub_1915E3DB0(inited);
    v15 = v4;
    v16 = *(v2 + 16);
    v17 = type metadata accessor for AXMigratingUnKeyedEncoding();
    swift_allocObject();

    v18 = sub_1916596F8(v15, v16);

    a1[3] = v17;
    result = sub_1916597F4(qword_1EADAE6C0, 255, type metadata accessor for AXMigratingUnKeyedEncoding, &unk_191675CAC);
    a1[4] = result;
    *a1 = v18;
  }

  return result;
}

uint64_t sub_191656B08@<X0>(void *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for AXMigratingEncoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v6[4] = 0xC000000000000000;
  v6[2] = v7;
  v8 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v10 = *(v3 + 32);
  sub_19163E698();

  result = sub_19166BFB8();
  v13 = *(v3 + 32);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v17 = v12;
    *(v3 + 32) = v15;
    *(inited + 56) = &type metadata for AXCodingKey;
    *(inited + 64) = sub_1915EED24();
    v18 = swift_allocObject();
    *(inited + 32) = v18;
    *(v18 + 16) = v10;
    *(v18 + 24) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v17;
    sub_1915E3DB0(inited);
    swift_beginAccess();
    v6[2] = v8;

    a2[3] = v5;
    result = sub_1916597F4(&qword_1EADAE748, v19, type metadata accessor for AXMigratingEncoder, &protocol conformance descriptor for AXMigratingEncoder);
    a2[4] = result;
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1916572E8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v6 = *(v3 + 80);
  *(inited + 56) = v6;
  *(inited + 64) = *(v3 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, a1, v6);

  sub_1915E3DB0(inited);
  swift_beginAccess();
  sub_1915EC78C(0xC000000000000000, v4);
  swift_endAccess();
}

uint64_t sub_19165742C(char a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v4 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a2, v7);

  sub_1915E3DB0(inited);
  v9 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v9 | 0x8000000000000000, v5);
  swift_endAccess();
}

uint64_t sub_1916575BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v8 = *(v5 + 80);
  *(inited + 56) = v8;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a3, v8);

  sub_1915E3DB0(inited);
  v10 = swift_allocObject();

  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v10 | 0x8000000000000000, v6);
  swift_endAccess();
}

uint64_t sub_191657758(uint64_t a1, double a2)
{
  v4 = *v2;
  v5 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v4 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v9 | 0x8000000000000000, v5);
  swift_endAccess();
}

uint64_t sub_1916578E8(uint64_t a1, float a2)
{
  v4 = *v2;
  v5 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v7 = *(v4 + 80);
  *(inited + 56) = v7;
  *(inited + 64) = *(v4 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0, a1, v7);

  sub_1915E3DB0(inited);
  v9 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v9 | 0x8000000000000000, v5);
  swift_endAccess();
}

uint64_t sub_191657B90(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a2, v9);

  sub_1915E3DB0(inited);
  v11 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v11 | 0x8000000000000000, v7);
  swift_endAccess();
}

uint64_t sub_191657D48(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a2, v9);

  sub_1915E3DB0(inited);
  v11 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v11 | 0x8000000000000000, v7);
  swift_endAccess();
}

uint64_t sub_191657F00(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a2, v9);

  sub_1915E3DB0(inited);
  v11 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v11 | 0x8000000000000000, v7);
  swift_endAccess();
}

uint64_t sub_1916580B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a2, v9);

  sub_1915E3DB0(inited);
  v11 = swift_allocObject();
  sub_19166C058();
  swift_beginAccess();
  sub_1915EC78C(v11 | 0x8000000000000000, v7);
  swift_endAccess();
}

uint64_t sub_191658248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v12 = *(v9 + 80);
  *(inited + 56) = v12;
  *(inited + 64) = *(v9 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a2, v12);
  v25[0] = v10;

  sub_1915E3DB0(inited);
  v14 = v10;
  v15 = v5[3];
  swift_beginAccess();
  v16 = *(v15 + 32);
  v17 = type metadata accessor for AXMigratingEncoder();
  v18 = swift_allocObject();

  v19 = sub_191653100(MEMORY[0x1E69E7CC0]);
  v18[4] = v16;
  v18[2] = v14;
  v18[3] = v19;
  v25[3] = v17;
  v25[4] = sub_1916597F4(&qword_1EADAE748, v20, type metadata accessor for AXMigratingEncoder, &protocol conformance descriptor for AXMigratingEncoder);
  v25[0] = v18;

  v21 = v26;
  v26 = a4;
  sub_19166B6A8();
  if (v21)
  {

    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    v23 = v5[3];
    swift_beginAccess();
    v24 = v18[4];
    swift_beginAccess();
    *(v23 + 32) = v24;

    swift_beginAccess();

    sub_1915ECE5C(a3, v14);
    swift_endAccess();
  }
}

uint64_t sub_191658500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  type metadata accessor for AXMigratingKeyedEncoding(0, a3, a4, a4);
  v8 = v5[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v10 = *(v7 + 80);
  *(inited + 56) = v10;
  *(inited + 64) = *(v7 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a2, v10);

  sub_1915E3DB0(inited);
  v12 = v5[3];

  sub_191659680(v8, v12, v13, v14);

  swift_getWitnessTable();
  return sub_19166C3A8();
}

uint64_t sub_191658680@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = *(v6 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v6 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, a1, v9);

  sub_1915E3DB0(inited);
  v11 = v3[3];
  v12 = type metadata accessor for AXMigratingUnKeyedEncoding();
  swift_allocObject();

  v13 = sub_1916596F8(v7, v11);

  a2[3] = v12;
  result = sub_1916597F4(qword_1EADAE6C0, 255, type metadata accessor for AXMigratingUnKeyedEncoding, &unk_191675CAC);
  a2[4] = result;
  *a2 = v13;
  return result;
}

uint64_t sub_191658808@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_19166BF58();
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v14 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v14 - v11;
  sub_19166C838();
  result = (*(v9 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v8, v3);
    sub_1916589B4(v12, a1);
    return (*(v9 + 8))(v12, v3);
  }

  return result;
}

uint64_t sub_1916589B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for AXMigratingEncoder();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v7[4] = 0xC000000000000000;
  v7[2] = v8;
  v9 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v11 = *(v5 + 80);
  *(inited + 56) = v11;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, a1, v11);

  sub_1915E3DB0(inited);
  swift_beginAccess();
  v7[2] = v9;

  a2[3] = v6;
  result = sub_1916597F4(&qword_1EADAE748, v13, type metadata accessor for AXMigratingEncoder, &protocol conformance descriptor for AXMigratingEncoder);
  a2[4] = result;
  *a2 = v7;
  return result;
}

uint64_t sub_191658B80(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1916595CC(void *a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v4 = swift_allocObject();

  *(v4 + 16) = sub_1916533B8(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  sub_1915EC78C(v4 | 0x4000000000000000, a1);
  swift_endAccess();

  return v2;
}

uint64_t sub_191659680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AXMigratingKeyedEncoding(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_1916595CC(a1, a2);
}

void *sub_1916596F8(void *a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = 0;
  v2[2] = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();

  sub_1915EC78C(v4, a1);
  swift_endAccess();

  return v2;
}

uint64_t sub_1916597F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191659A38(uint64_t a1, int a2)
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

uint64_t sub_191659A80(uint64_t result, int a2, int a3)
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

unint64_t sub_191659AD4()
{
  result = qword_1EADAE8F8;
  if (!qword_1EADAE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE8F8);
  }

  return result;
}

unint64_t sub_191659B2C()
{
  result = qword_1EADAE900;
  if (!qword_1EADAE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE900);
  }

  return result;
}

uint64_t AXBaseSettings.forceNewSettingsUsage.getter()
{
  v1 = OBJC_IVAR___AXBaseSettings_forceNewSettingsUsage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXBaseSettings.forceNewSettingsUsage.setter(char a1)
{
  v3 = OBJC_IVAR___AXBaseSettings_forceNewSettingsUsage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXBaseSettings.shouldUseNewSettings.getter()
{
  if ([v0 forceNewSettingsUsage])
  {
    v1 = 1;
  }

  else
  {
    v3[3] = &type metadata for AccessibilityFeatureFlags;
    v3[4] = sub_19159DF0C();
    LOBYTE(v3[0]) = 14;
    v1 = sub_19166B458();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1 & 1;
}

uint64_t AXBaseSettings.store.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AXBaseSettings_store;
  swift_beginAccess();
  return sub_1915DB15C(v1 + v3, a1);
}

uint64_t AXBaseSettings.store.setter(__int128 *a1)
{
  v3 = OBJC_IVAR___AXBaseSettings_store;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1915A04D0(a1, v1 + v3);
  return swift_endAccess();
}

void __swiftcall AXBaseSettings.init()(AXBaseSettings *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id AXBaseSettings.init()()
{
  v1 = v0;
  v0[OBJC_IVAR___AXBaseSettings_forceNewSettingsUsage] = 0;
  v2 = OBJC_IVAR___AXBaseSettings_encoder;
  type metadata accessor for AXMigratingEncoder();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  v3[3] = sub_191653100(MEMORY[0x1E69E7CC0]);
  v3[4] = 0xC000000000000000;
  v3[2] = v4;
  *&v1[v2] = v3;
  v5 = OBJC_IVAR___AXBaseSettings_decoder;
  type metadata accessor for AXMigratingDecoder();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = sub_191653100(v4);
  v6[4] = 0xC000000000000000;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR___AXBaseSettings_listenerMap] = MEMORY[0x1E69E7CC8];
  v7 = OBJC_IVAR___AXBaseSettings_listenerLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4F8, &qword_191675FE0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v1[v7] = v8;
  *&v1[OBJC_IVAR___AXBaseSettings____lazy_storage___selectorToPrefGroups] = 0;
  if (qword_1ED5A8278 != -1)
  {
    swift_once();
  }

  sub_191641260(v11);

  sub_1915A04D0(v11, &v1[OBJC_IVAR___AXBaseSettings_store]);
  v10.receiver = v1;
  v10.super_class = AXBaseSettings;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t static AXBaseSettings.make(alternateStore:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_19165D73C(v4, v1, v2, v3);
}

id sub_19165A164@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [v2 setForceNewSettingsUsage_];
  *a1 = v2;
  return result;
}

uint64_t static AXBaseSettings.testSettings()()
{
  type metadata accessor for AXInMemorySettingsStore();
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  *(v1 + 24) = v2;
  v3 = sub_19165D644(v1, v0);

  return v3;
}

void AXBaseSettings.setValue(_:forPreferenceKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([v3 forceNewSettingsUsage] & 1) != 0 || (v35 = &type metadata for AccessibilityFeatureFlags, v36 = sub_19159DF0C(), LOBYTE(v34[0]) = 14, v7 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v34), (v7))
  {
    v8 = sub_19166B718();
    v9 = [v3 domainNameForPreferenceKey_];

    if (v9)
    {
      v10 = sub_19166B748();
      v12 = v11;

      v31 = &type metadata for AXConcreteKey;
      v32 = &protocol witness table for AXConcreteKey;
      v13 = swift_allocObject();
      *&v30 = v13;
      *(v13 + 16) = a2;
      *(v13 + 24) = a3;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 2;
      *(v13 + 88) = 0;
      sub_1915A04D0(&v30, v34);
      v14 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v3 + v14, &v30);
      v15 = v31;
      v16 = v32;
      __swift_project_boxed_opaque_existential_1(&v30, v31);
      sub_19159E224(a1, v25);
      v17 = v26;

      if (v17)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          v29 = 0;
          v27 = 0u;
          v28 = 0u;
        }
      }

      else
      {
        sub_19159E780(v25, &unk_1EADB0270, &unk_191672C20);
        v27 = 0u;
        v28 = 0u;
        v29 = 0;
      }

      (v16[2])(&v27, v34, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v34);
      sub_19159E780(&v27, &qword_1EADAF4A8, &qword_191672420);
      __swift_destroy_boxed_opaque_existential_1(&v30);
    }
  }

  else
  {
    sub_19159E224(a1, v34);
    v18 = v35;
    if (v35)
    {
      v19 = __swift_project_boxed_opaque_existential_1(v34, v35);
      Description = v18[-1].Description;
      MEMORY[0x1EEE9AC00](v19, v19);
      v22 = &v25[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
      Description[2](v22);
      v23 = sub_19166C5D8();
      (Description[1])(v22, v18);
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_19166B718();
    v33.receiver = v3;
    v33.super_class = AXBaseSettings;
    objc_msgSendSuper2(&v33, sel_setValue_forPreferenceKey_, v23, v24);
    swift_unknownObjectRelease();
  }
}

Swift::Int __swiftcall AXBaseSettings.integerValue(forPreferenceKey:defaultValue:)(Swift::String forPreferenceKey, Swift::Int defaultValue)
{
  v3 = v2;
  object = forPreferenceKey._object;
  countAndFlagsBits = forPreferenceKey._countAndFlagsBits;
  if ([v3 forceNewSettingsUsage] & 1) != 0 || (v26[3] = &type metadata for AccessibilityFeatureFlags, v26[4] = sub_19159DF0C(), LOBYTE(v26[0]) = 14, v7 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v26), (v7))
  {
    v8 = sub_19166B718();
    v9 = [v3 domainNameForPreferenceKey_];

    if (v9)
    {
      v10 = sub_19166B748();
      v12 = v11;

      v23 = &type metadata for AXConcreteKey;
      v24 = &protocol witness table for AXConcreteKey;
      v13 = swift_allocObject();
      *&v22 = v13;
      *(v13 + 16) = countAndFlagsBits;
      *(v13 + 24) = object;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 2;
      *(v13 + 88) = 0;
      sub_1915A04D0(&v22, v26);
      v14 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v3 + v14, &v22);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, v23);
      v17 = v16[1];

      v17(v21, v26, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      if (swift_dynamicCast())
      {
        defaultValue = v20;
      }

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }
  }

  else
  {
    v18 = sub_19166B718();
    v25.receiver = v3;
    v25.super_class = AXBaseSettings;
    defaultValue = objc_msgSendSuper2(&v25, sel_integerValueForPreferenceKey_defaultValue_, v18, defaultValue);
  }

  return defaultValue;
}

Swift::Double __swiftcall AXBaseSettings.doubleValue(forPreferenceKey:defaultValue:)(Swift::String forPreferenceKey, Swift::Double defaultValue)
{
  object = forPreferenceKey._object;
  countAndFlagsBits = forPreferenceKey._countAndFlagsBits;
  if ([v2 forceNewSettingsUsage] & 1) != 0 || (v26[3] = &type metadata for AccessibilityFeatureFlags, v26[4] = sub_19159DF0C(), LOBYTE(v26[0]) = 14, v6 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v26), (v6))
  {
    v7 = sub_19166B718();
    v8 = [v2 domainNameForPreferenceKey_];

    if (v8)
    {
      v9 = sub_19166B748();
      v11 = v10;

      v23 = &type metadata for AXConcreteKey;
      v24 = &protocol witness table for AXConcreteKey;
      v12 = swift_allocObject();
      *&v22 = v12;
      *(v12 + 16) = countAndFlagsBits;
      *(v12 + 24) = object;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 2;
      *(v12 + 88) = 0;
      sub_1915A04D0(&v22, v26);
      v13 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v2 + v13, &v22);
      v14 = v23;
      v15 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, v23);
      v16 = v15[1];

      v16(v21, v26, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      if (swift_dynamicCast())
      {
        defaultValue = v20;
      }

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }
  }

  else
  {
    v17 = sub_19166B718();
    v25.receiver = v2;
    v25.super_class = AXBaseSettings;
    objc_msgSendSuper2(&v25, sel_doubleValueForPreferenceKey_defaultValue_, v17, defaultValue);
    defaultValue = v18;
  }

  return defaultValue;
}

Swift::Float __swiftcall AXBaseSettings.floatValue(forPreferenceKey:defaultValue:)(Swift::String forPreferenceKey, Swift::Float defaultValue)
{
  object = forPreferenceKey._object;
  countAndFlagsBits = forPreferenceKey._countAndFlagsBits;
  if ([v2 forceNewSettingsUsage] & 1) != 0 || (v27[3] = &type metadata for AccessibilityFeatureFlags, v27[4] = sub_19159DF0C(), LOBYTE(v27[0]) = 14, v6 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v27), (v6))
  {
    v7 = sub_19166B718();
    v8 = [v2 domainNameForPreferenceKey_];

    if (v8)
    {
      v9 = sub_19166B748();
      v11 = v10;

      v24 = &type metadata for AXConcreteKey;
      v25 = &protocol witness table for AXConcreteKey;
      v12 = swift_allocObject();
      *&v23 = v12;
      *(v12 + 16) = countAndFlagsBits;
      *(v12 + 24) = object;
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      *(v12 + 48) = 0u;
      *(v12 + 64) = 0u;
      *(v12 + 80) = 2;
      *(v12 + 88) = 0;
      sub_1915A04D0(&v23, v27);
      v13 = OBJC_IVAR___AXBaseSettings_store;
      swift_beginAccess();
      sub_1915DB15C(v2 + v13, &v23);
      v14 = v24;
      v15 = v25;
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      v16 = v15[1];

      v16(v22, v27, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      if (swift_dynamicCast())
      {
        defaultValue = v21;
      }

      __swift_destroy_boxed_opaque_existential_1(&v23);
    }
  }

  else
  {
    v17 = sub_19166B718();
    v26.receiver = v2;
    v26.super_class = AXBaseSettings;
    *&v18 = defaultValue;
    objc_msgSendSuper2(&v26, sel_floatValueForPreferenceKey_defaultValue_, v17, v18);
    defaultValue = v19;
  }

  return defaultValue;
}

id AXBaseSettings.hasExistingValueForPreference(with:)(uint64_t a1)
{
  if ([v1 forceNewSettingsUsage] & 1) != 0 || (v23[3] = &type metadata for AccessibilityFeatureFlags, v23[4] = sub_19159DF0C(), LOBYTE(v23[0]) = 14, v3 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v23), (v3))
  {
    result = [v1 preferenceKeyForSelector_];
    if (result)
    {
      v5 = result;
      v6 = sub_19166B748();
      v8 = v7;
      v9 = [v1 domainNameForPreferenceKey_];

      if (v9)
      {
        v10 = sub_19166B748();
        v12 = v11;

        v20 = &type metadata for AXConcreteKey;
        v21 = &protocol witness table for AXConcreteKey;
        v13 = swift_allocObject();
        *&v19 = v13;
        *(v13 + 16) = v6;
        *(v13 + 24) = v8;
        *(v13 + 32) = v10;
        *(v13 + 40) = v12;
        *(v13 + 48) = 0u;
        *(v13 + 64) = 0u;
        *(v13 + 80) = 2;
        *(v13 + 88) = 0;
        sub_1915A04D0(&v19, v23);
        v14 = OBJC_IVAR___AXBaseSettings_store;
        swift_beginAccess();
        sub_1915DB15C(v1 + v14, &v19);
        v15 = v20;
        v16 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        (v16[1])(v18, v23, v15, v16);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v17 = v18[3] != 0;
        sub_19159E780(v18, &qword_1EADAF4A8, &qword_191672420);
        __swift_destroy_boxed_opaque_existential_1(&v19);
        return v17;
      }

      else
      {

        return 0;
      }
    }
  }

  else
  {
    v22.receiver = v1;
    v22.super_class = AXBaseSettings;
    return objc_msgSendSuper2(&v22, sel_hasExistingValueForPreferenceWithSelector_, a1);
  }

  return result;
}

id AXBaseSettings.clearExistingValueForPreference(with:)(uint64_t a1)
{
  if ([v1 forceNewSettingsUsage] & 1) != 0 || (v23[3] = &type metadata for AccessibilityFeatureFlags, v23[4] = sub_19159DF0C(), LOBYTE(v23[0]) = 14, v3 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(v23), (v3))
  {
    result = [v1 preferenceKeyForSelector_];
    if (result)
    {
      v5 = result;
      v6 = sub_19166B748();
      v8 = v7;
      v9 = [v1 domainNameForPreferenceKey_];

      if (v9)
      {
        v10 = sub_19166B748();
        v12 = v11;

        v20 = &type metadata for AXConcreteKey;
        v21 = &protocol witness table for AXConcreteKey;
        v13 = swift_allocObject();
        *&v19 = v13;
        *(v13 + 16) = v6;
        *(v13 + 24) = v8;
        *(v13 + 32) = v10;
        *(v13 + 40) = v12;
        *(v13 + 48) = 0u;
        *(v13 + 64) = 0u;
        *(v13 + 80) = 2;
        *(v13 + 88) = 0;
        sub_1915A04D0(&v19, v23);
        v14 = OBJC_IVAR___AXBaseSettings_store;
        swift_beginAccess();
        sub_1915DB15C(v1 + v14, &v19);
        v15 = v20;
        v16 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        v18 = 0;
        memset(v17, 0, sizeof(v17));
        (v16[2])(v17, v23, v15, v16);
        sub_19159E780(v17, &qword_1EADAF4A8, &qword_191672420);
        __swift_destroy_boxed_opaque_existential_1(v23);
        return __swift_destroy_boxed_opaque_existential_1(&v19);
      }

      else
      {
      }
    }
  }

  else
  {
    v22.receiver = v1;
    v22.super_class = AXBaseSettings;
    return objc_msgSendSuper2(&v22, sel_clearExistingValueForPreferenceWithSelector_, a1);
  }

  return result;
}

Swift::String_optional __swiftcall AXBaseSettings.notificationName(forPreferenceKey:)(Swift::String forPreferenceKey)
{
  MEMORY[0x193AFC710](forPreferenceKey._countAndFlagsBits, forPreferenceKey._object);
  v1 = 0xD000000000000010;
  v2 = 0x800000019167D6F0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_19165B41C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_19165B4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19166B588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19166B5B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DAA60(0, &qword_1EADAE7F0, 0x1E69E9610);
  v14 = sub_19166BDC8();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_1915E4118;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915EADB4;
  aBlock[3] = &block_descriptor_49;
  v16 = _Block_copy(aBlock);

  sub_19166B598();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19165E11C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
  sub_1915EB79C();
  sub_19166BFE8();
  MEMORY[0x193AFCC80](0, v13, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_19165B774(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a4;
  v7 = sub_19166B1C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___AXBaseSettings_listenerMap;
  swift_beginAccess();
  v56 = a2;
  v57 = a1;
  v55 = v12;
  v13 = *(a1 + v12);
  v14 = *(v13 + 16);
  v52 = v8;
  v53 = v7;
  v51 = v11;
  if (v14 && (v15 = sub_1915DB370(a2), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
    swift_endAccess();
    v60 = v17;
  }

  else
  {
    swift_endAccess();
    v17 = sub_1916535E0(MEMORY[0x1E69E7CC0]);
    v60 = v17;
  }

  v19 = a3[3];
  v18 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  v20 = *(v18 + 8);
  v54 = v20(v19, v18);
  v22 = v21;
  v23 = v20(v19, v18);
  if (*(v17 + 16))
  {
    v49 = v22;
    v25 = sub_1915DB0E4(v23, v24);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v17 + 56) + 8 * v25);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v22 = v49;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = v60;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59[0] = v29;
  sub_1915E2C98(v28, v54, v22, isUniquelyReferenced_nonNull_native);

  v60 = v59[0];
  v31 = v20(v19, v18);
  v34 = sub_1915E1B38(v59, v31, v32);
  if (*v33)
  {
    v35 = v33;
    v37 = v51;
    v36 = v52;
    v38 = v53;
    (*(v52 + 16))(v51, v50, v53);
    v39 = *v35;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v39;
    if ((v40 & 1) == 0)
    {
      v39 = sub_1915F49E8(0, v39[2] + 1, 1, v39);
      *v35 = v39;
    }

    v42 = v39[2];
    v41 = v39[3];
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1915F49E8((v41 > 1), v42 + 1, 1, v39);
      *v35 = v39;
    }

    v39[2] = v42 + 1;
    (*(v36 + 32))(v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v42, v37, v38);
    (v34)(v59, 0);
  }

  else
  {
    (v34)(v59, 0);
  }

  v43 = v60;
  v44 = v57;
  v45 = v55;
  swift_beginAccess();

  v46 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(v44 + v45);
  *(v44 + v45) = 0x8000000000000000;
  sub_1915E2B4C(v43, v56, v46);
  *(v44 + v45) = v58;
  swift_endAccess();
}

void sub_19165BB6C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    (*(v8 + 8))(v7, v8);
    v9 = sub_19166B718();

    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v6 unregisterUpdateBlockForPreferenceKey:v9 withListenerID:v10];
  }
}

void AXBaseSettings.registerUpdate(_:forPreferenceKey:withListener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([v5 forceNewSettingsUsage] & 1) != 0 || (*(&v31 + 1) = &type metadata for AccessibilityFeatureFlags, *&v32 = sub_19159DF0C(), LOBYTE(aBlock) = 14, v11 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(&aBlock), (v11))
  {
    v12 = sub_19166B718();
    v13 = [v5 domainNameForPreferenceKey_];

    if (v13)
    {
      v14 = sub_19166B748();
      v16 = v15;

      *(&v31 + 1) = &type metadata for AXConcreteKey;
      *&v32 = &protocol witness table for AXConcreteKey;
      v17 = swift_allocObject();
      *&aBlock = v17;
      *(v17 + 16) = a3;
      *(v17 + 24) = a4;
      *(v17 + 32) = v14;
      *(v17 + 40) = v16;
      *(v17 + 48) = 0u;
      *(v17 + 64) = 0u;
      *(v17 + 80) = 2;
      *(v17 + 88) = 0;
      sub_1915A04D0(&aBlock, v28);
      v18 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      v31 = v18[1];
      v32 = v18[2];
      v33 = v18[3];
      v34 = v18[4];
      aBlock = *v18;

      sub_19165D91C(a1, a2, &aBlock, a5, v5);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  else
  {
    *&v32 = a1;
    *(&v32 + 1) = a2;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_1915EADB4;
    *(&v31 + 1) = &block_descriptor_5;
    v19 = _Block_copy(&aBlock);

    v20 = sub_19166B718();
    sub_19159E224(a5, &aBlock);
    v21 = *(&v31 + 1);
    if (*(&v31 + 1))
    {
      v22 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v31 + 1));
      v23 = *(v21 - 8);
      MEMORY[0x1EEE9AC00](v22, v22);
      v25 = &v28[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v25);
      v26 = sub_19166C5D8();
      (*(v23 + 8))(v25, v21);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v26 = 0;
    }

    v29.receiver = v5;
    v29.super_class = AXBaseSettings;
    objc_msgSendSuper2(&v29, sel_registerUpdateBlock_forPreferenceKey_withListener_, v19, v20, v26);

    swift_unknownObjectRelease();
    _Block_release(v19);
  }
}

Swift::Void __swiftcall AXBaseSettings.unregisterUpdateBlock(forPreferenceKey:withListenerID:)(Swift::String forPreferenceKey, NSNumber withListenerID)
{
  if (([v2 forceNewSettingsUsage] & 1) == 0)
  {
    v14[3] = &type metadata for AccessibilityFeatureFlags;
    v14[4] = sub_19159DF0C();
    LOBYTE(v14[0]) = 14;
    v4 = sub_19166B458();
    __swift_destroy_boxed_opaque_existential_1(v14);
    if ((v4 & 1) == 0)
    {
      v5 = sub_19166B718();
      v13.receiver = v2;
      v13.super_class = AXBaseSettings;
      objc_msgSendSuper2(&v13, sel_unregisterUpdateBlockForPreferenceKey_withListenerID_, v5, withListenerID.super.super.isa);
    }
  }

  [(objc_class *)withListenerID.super.super.isa integerValue];
  v6 = OBJC_IVAR___AXBaseSettings_listenerLock;
  v7 = swift_beginAccess();
  v8 = *&v2[v6];
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  MEMORY[0x1EEE9AC00](v10, v11);

  os_unfair_lock_lock(v8 + 4);
  sub_19165DE58(v12);
  os_unfair_lock_unlock(v8 + 4);
}

uint64_t sub_19165C214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v8 = sub_19166B1C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___AXBaseSettings_listenerMap;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (*(v14 + 16))
  {
    v15 = sub_1915DB370(a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      result = swift_endAccess();
      if (!*(v17 + 16))
      {
        return result;
      }

      v19 = sub_1915DB0E4(v38, a4);
      if ((v20 & 1) == 0)
      {
      }

      v37 = v13;
      v21 = *(*(v17 + 56) + 8 * v19);

      v22 = v21;
      v23 = *(v21 + 16);
      if (v23)
      {
        v34 = a2;
        v35 = a4;
        v36 = v4;
        v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v25 = a1;
        v33[1] = v22;
        v26 = v22 + v24;
        v45 = v25;
        v41 = OBJC_IVAR___AXBaseSettings_store;
        swift_beginAccess();
        v28 = *(v9 + 16);
        v27 = v9 + 16;
        v39 = *(v27 + 56);
        v40 = v28;
        do
        {
          v40(v12, v26, v8);
          sub_1915DB15C(v45 + v41, v42);
          v30 = v43;
          v29 = v44;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          (*(v29 + 40))(v12, v30, v29);
          (*(v27 - 8))(v12, v8);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v26 += v39;
          --v23;
        }

        while (v23);

        a4 = v35;
        a2 = v34;
      }

      else
      {
      }

      swift_beginAccess();
      v31 = sub_1915E1BC0(v42, a2);
      if (*v32)
      {

        sub_1915E1144(0, v38, a4);
      }

      (v31)(v42, 0);
    }
  }

  return swift_endAccess();
}

void AXBaseSettings.registerUpdate(_:forRetrieveSelector:withListener:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = AXBaseSettings.selectorToPrefGroups.getter();
  if (v10[2] && (v11 = sub_19159EC10(a3), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + 16 * v11);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v15 = sub_1915DAA60(0, &qword_1EADAE640, 0x1E69E58C0);
    if (dynamic_cast_existential_1_superclass_conditional(v13, ObjectType, v15, &protocol descriptor for AXSelectorRoutable))
    {
      v17 = v16;
      v18 = swift_getObjectType();
      sub_191606C90(a3, a1, a2, a4, v18, v17);

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v5 forceNewSettingsUsage] & 1) != 0 || (v41 = &type metadata for AccessibilityFeatureFlags, v42 = sub_19159DF0C(), LOBYTE(aBlock) = 14, v19 = sub_19166B458(), __swift_destroy_boxed_opaque_existential_1(&aBlock), (v19))
  {
    v20 = [v5 preferenceKeyForSelector_];
    if (!v20)
    {
      return;
    }

    v21 = v20;
    v42 = a1;
    v43 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1915EADB4;
    v41 = &block_descriptor_18;
    v22 = _Block_copy(&aBlock);

    sub_19159E224(a4, &aBlock);
    v23 = v41;
    if (v41)
    {
      v24 = __swift_project_boxed_opaque_existential_1(&aBlock, v41);
      Description = v23[-1].Description;
      MEMORY[0x1EEE9AC00](v24, v24);
      v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      Description[2](v27);
      v28 = sub_19166C5D8();
      (Description[1])(v27, v23);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v28 = 0;
    }

    [v5 registerUpdateBlock:v22 forPreferenceKey:v21 withListener:v28];

    swift_unknownObjectRelease();
    v36 = v22;
  }

  else
  {
    v42 = a1;
    v43 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1915EADB4;
    v41 = &block_descriptor_15;
    v29 = _Block_copy(&aBlock);

    sub_19159E224(a4, &aBlock);
    v30 = v41;
    if (v41)
    {
      v31 = __swift_project_boxed_opaque_existential_1(&aBlock, v41);
      v32 = v30[-1].Description;
      MEMORY[0x1EEE9AC00](v31, v31);
      v34 = &v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v32[2](v34);
      v35 = sub_19166C5D8();
      (v32[1])(v34, v30);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      v35 = 0;
    }

    v37.receiver = v5;
    v37.super_class = AXBaseSettings;
    objc_msgSendSuper2(&v37, sel_registerUpdateBlock_forRetrieveSelector_withListener_, v29, a3, v35);
    swift_unknownObjectRelease();
    v36 = v29;
  }

  _Block_release(v36);
}

void AXBaseSettings.unregisterUpdateBlock(forRetrieveSelector:withListenerID:)(uint64_t a1, uint64_t a2)
{
  if (([v2 forceNewSettingsUsage] & 1) == 0)
  {
    v9[3] = &type metadata for AccessibilityFeatureFlags;
    v9[4] = sub_19159DF0C();
    LOBYTE(v9[0]) = 14;
    v5 = sub_19166B458();
    __swift_destroy_boxed_opaque_existential_1(v9);
    if ((v5 & 1) == 0)
    {
      v8.receiver = v2;
      v8.super_class = AXBaseSettings;
      objc_msgSendSuper2(&v8, sel_unregisterUpdateBlockForRetrieveSelector_withListenerID_, a1, a2);
    }
  }

  v6 = [v2 preferenceKeyForSelector_];
  if (v6)
  {
    v7 = v6;
    [v2 unregisterUpdateBlockForPreferenceKey:v6 withListenerID:a2];
  }
}

Swift::Void __swiftcall AXBaseSettings.postNotification(forPreferenceKey:)(Swift::String forPreferenceKey)
{
  MEMORY[0x193AFC710](forPreferenceKey._countAndFlagsBits, forPreferenceKey._object);
  v1 = sub_19166B7D8();

  notify_post((v1 + 32));
}

uint64_t AXBaseSettings.target(forKVOKey:)(uint64_t a1, uint64_t a2)
{

  if ([v2 forwardingTargetForSelector_])
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
    sub_1915E4370(&v11, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  if (swift_dynamicCast())
  {
    return v11;
  }

  *&v12[0] = 0;
  *(&v12[0] + 1) = 0xE000000000000000;
  sub_19166C0C8();

  *&v12[0] = 0xD00000000000002FLL;
  *(&v12[0] + 1) = 0x800000019167DE40;
  MEMORY[0x193AFC710](a1, a2);
  v6 = v12[0];
  v7 = *MEMORY[0x1E696AA00];
  v8 = objc_allocWithZone(MEMORY[0x1E695DF30]);

  v9 = sub_19166B718();
  v10 = [v8 initWithName:v7 reason:v9 userInfo:0];

  [v10 raise];
  result = sub_19166C218("Fatal error", 11, 2, v6, *(&v6 + 1), "AXCoreUtilities/AXBaseSettings.swift", 36, 2, 226, 0);
  __break(1u);
  return result;
}

double AXBaseSettings.value(forUndefinedKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = AXBaseSettings.target(forKVOKey:)(a1, a2);
  v5 = sub_19166B718();
  v6 = [v4 valueForKey_];

  swift_unknownObjectRelease();
  if (v6)
  {
    sub_19166BFC8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void AXBaseSettings.setValue(_:forUndefinedKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = AXBaseSettings.target(forKVOKey:)(a2, a3);
  sub_19159E224(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_19166C5D8();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_19166B718();
  [v4 setValue:v10 forKey:v11];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_19165D348(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(_OWORD *, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = a4;
    v9 = a1;
    swift_unknownObjectRetain();
    sub_19166BFC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v10 = a4;
    v11 = a1;
  }

  v12 = sub_19166B748();
  v14 = v13;

  a5(v16, v12, v14);

  return sub_19159E780(v16, &unk_1EADB0270, &unk_191672C20);
}

uint64_t (*AXBaseSettings.selectorToPrefGroups.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AXBaseSettings.selectorToPrefGroups.getter();
  return sub_19165D470;
}

id sub_19165D514()
{
  v1 = *&v0[OBJC_IVAR____TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock_block];

  v1(v2);

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DeallocaterBlock();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_19165D644(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for AXInMemorySettingsStore();
  v9[4] = &protocol witness table for AXInMemorySettingsStore;
  v9[0] = a1;
  v4 = qword_1ED5A8278;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a2;

  sub_191663CCC(sub_19165E174, v5, &v8);

  v6 = v8;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t sub_19165D73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  if (qword_1ED5A8278 != -1)
  {
    swift_once();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;

  sub_191663CCC(sub_19165E1B8, v8, &v11);

  v9 = v11;
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_19165D854(__int128 *a1, uint64_t *a2)
{
  v8 = *a1;
  v3 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1915F4BC0(0, v3[2] + 1, 1, v3);
    *a2 = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1915F4BC0((v5 > 1), v6 + 1, 1, v3);
    *a2 = v3;
  }

  v3[2] = v6 + 1;
  *&v3[2 * v6 + 4] = v8;

  return swift_unknownObjectRetain();
}

uint64_t sub_19165D91C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, char *a5)
{
  v49 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v46 - v11;
  v13 = sub_19166B1C8();
  v50 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v46 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v48 = &v46 - v18;
  v56[3] = &type metadata for AXConcreteKey;
  v56[4] = &protocol witness table for AXConcreteKey;
  v19 = swift_allocObject();
  v56[0] = v19;
  v20 = a3[3];
  v19[3] = a3[2];
  v19[4] = v20;
  v19[5] = a3[4];
  v21 = a3[1];
  v19[1] = *a3;
  v19[2] = v21;
  v22 = OBJC_IVAR___AXBaseSettings_store;
  swift_beginAccess();
  v47 = a5;
  sub_1915DB15C(&a5[v22], v53);
  v24 = v54;
  v23 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v26 = *(v23 + 32);
  v27 = a3;
  v28 = v13;
  v29 = v50;
  sub_19165E088(v27, &v51);

  v26(v56, sub_19165E080, v25, v24, v23);

  if ((*(v29 + 48))(v12, 1, v28) == 1)
  {
    sub_19159E780(v12, &qword_1EADAF4A0, &qword_191673940);
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {
    v30 = v48;
    (*(v29 + 32))(v48, v12, v28);
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_19159E224(v49, &v51);
    if (v52)
    {
      sub_1915DAA60(0, &qword_1EADAE640, 0x1E69E58C0);
      if (swift_dynamicCast())
      {
        v31 = v53[0];
        v32 = OBJC_IVAR___AXBaseSettings_listenerLock;
        v33 = v47;
        v34 = swift_beginAccess();
        v35 = *&v33[v32];
        v37 = MEMORY[0x1EEE9AC00](v34, v36);
        *(&v46 - 4) = v33;
        *(&v46 - 3) = v31;
        *(&v46 - 2) = v56;
        *(&v46 - 1) = v30;
        MEMORY[0x1EEE9AC00](v37, v38);
        *(&v46 - 2) = sub_19165E0E4;
        *(&v46 - 1) = v39;

        os_unfair_lock_lock(v35 + 4);
        sub_19165E198(v40);
        os_unfair_lock_unlock(v35 + 4);

        v41 = v46;
        (*(v29 + 16))(v46, v30, v28);
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1915DB15C(v56, &v51);
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        sub_1915A04D0(&v51, v43 + 24);
        *(v43 + 64) = v31;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_19165E104;
        *(v44 + 24) = v43;
        sub_19165DF40(sub_19165E114, v44, v41);
      }
    }

    else
    {
      sub_19159E780(&v51, &unk_1EADB0270, &unk_191672C20);
    }

    (*(v29 + 8))(v30, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19165DF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = 0x6F6C6C6165447861;
  v18 = 0xEA00000000005F63;
  v8 = sub_19166B178();
  MEMORY[0x193AFC710](v8);

  v9 = MEMORY[0x193AFC7B0](0x6F6C6C6165447861, 0xEA00000000005F63);

  if (v9)
  {
    if (a1)
    {
      v11 = type metadata accessor for DeallocaterBlock();
      v12 = objc_allocWithZone(v11);
      v13 = &v12[OBJC_IVAR____TtC15AXCoreUtilitiesP33_FFE50D56E52C4B9845E8BAA5274691DD16DeallocaterBlock_block];
      *v13 = a1;
      *(v13 + 1) = a2;
      v16.receiver = v12;
      v16.super_class = v11;

      v14 = objc_msgSendSuper2(&v16, sel_init);
    }

    else
    {
      v14 = 0;
    }

    objc_setAssociatedObject(v4, v9, v14, 1);
    swift_unknownObjectRelease();
    v15 = sub_19166B1C8();
    return (*(*(v15 - 8) + 8))(a3, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19165E11C()
{
  result = qword_1EADAE6B0;
  if (!qword_1EADAE6B0)
  {
    sub_19166B588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE6B0);
  }

  return result;
}

uint64_t AsyncSequence.assign<A>(to:on:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_19165EA18(a1, a2, a3, a4, &unk_1F0579400, &unk_191676070);
}

{
  return sub_19165EA18(a1, a2, a3, a4, &unk_1F0579428, &unk_191676080);
}

uint64_t sub_19165E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *(*a6 + *MEMORY[0x1E69E6F98] + 8);
  v8[7] = v10;
  v8[8] = *(v10 - 8);
  v8[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  sub_19166BF58();
  v8[14] = swift_task_alloc();
  v8[15] = *(a7 - 8);
  v8[16] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[17] = v12;
  v8[18] = *(v12 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19165E480, 0, 0);
}

uint64_t sub_19165E480()
{
  (*(v0[15] + 16))(v0[16], v0[2], v0[5]);
  sub_19166BC98();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[20] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_19165E594;
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_19165E594()
{

  if (v0)
  {
    v1 = sub_19165E878;
  }

  else
  {
    v1 = sub_19165E6A4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19165E6A4()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    swift_setAtReferenceWritableKeyPath();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[20] = AssociatedConformanceWitness;
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_19165E594;
    v8 = v0[17];
    v10 = v0[13];
    v9 = v0[14];

    return MEMORY[0x1EEE6D8D0](v9, 0, 0, v10, v8, AssociatedConformanceWitness);
  }
}

uint64_t sub_19165E878()
{
  v1 = *(v0[11] + 32);
  v1(v0[12], v0[13], v0[10]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_19166C5C8();
  v3 = v0[12];
  if (v2)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    v4 = v0[10];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_19165EA18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a1;
  v31 = a6;
  v28[2] = a5;
  v29 = a4;
  v8 = *(*a1 + *MEMORY[0x1E69E6F98]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v28 - v12;
  v28[0] = v28 - v12;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v11, v17);
  v18 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v28 - v21;
  v23 = sub_19166BB58();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v15 + 16))(v18, v28[1], a3);
  (*(v9 + 16))(v13, a2, v8);
  v24 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v25 = (v16 + v24 + *(v9 + 80)) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = a3;
  *(v26 + 5) = v8;
  *(v26 + 6) = v29;
  (*(v15 + 32))(&v26[v24], v18, a3);
  (*(v9 + 32))(&v26[v25], v28[0], v8);
  *&v26[(v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;

  return sub_1915D42EC(0, 0, v22, v31, v26);
}

uint64_t sub_19165ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[7] = AssociatedTypeWitness;
  v8[8] = *(AssociatedTypeWitness - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v8[11] = *(v10 + *MEMORY[0x1E69E6F98] + 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = *(a7 - 8);
  v8[15] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[16] = v12;
  v8[17] = *(v12 - 8);
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19165EF34, 0, 0);
}

uint64_t sub_19165EF34()
{
  (*(v0[14] + 16))(v0[15], v0[2], v0[5]);
  sub_19166BC98();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[19] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_19165F04C;
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0, v5, v3, AssociatedConformanceWitness);
}

uint64_t sub_19165F04C()
{

  if (v0)
  {
    v1 = sub_19165F39C;
  }

  else
  {
    v1 = sub_19165F15C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19165F15C()
{
  v1 = v0[13];
  v2 = *(v0[11] + 16);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[12];
    (*(v3 + 32))(v6, v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
    swift_setAtReferenceWritableKeyPath();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[19] = AssociatedConformanceWitness;
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_19165F04C;
    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[10];

    return MEMORY[0x1EEE6D8D0](v10, 0, 0, v11, v9, AssociatedConformanceWitness);
  }
}

uint64_t sub_19165F39C()
{
  v1 = *(v0[8] + 32);
  v1(v0[9], v0[10], v0[7]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_19166C5C8();
  v3 = v0[9];
  if (v2)
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  else
  {
    v4 = v0[7];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[17] + 8))(v0[18], v0[16]);

  v6 = v0[1];

  return v6();
}

uint64_t AsyncSequence.assignObject<A>(to:on:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *a1;
  v26 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = sub_19166BB58();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  sub_19166BB28();

  v15 = sub_19166BB18();
  v16 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 2) = v15;
  *(v18 + 3) = v19;
  *(v18 + 4) = a3;
  v20 = v24;
  v21 = v26;
  *(v18 + 5) = *(v25 + *MEMORY[0x1E69E6F98]);
  *(v18 + 6) = v21;
  (*(v7 + 32))(&v18[v16], v20, a3);
  *&v18[v17] = v14;
  *&v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8] = a1;

  return sub_1915D42EC(0, 0, v12, &unk_191676090, v18);
}

uint64_t sub_19165F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v10 = *(*(*a6 + *MEMORY[0x1E69E6F98] + 8) + 16);
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v8[15] = *(AssociatedTypeWitness - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = *(a7 - 8);
  v8[21] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = sub_19166BB28();
  v8[26] = sub_19166BB18();
  v14 = sub_19166BA78();
  v8[27] = v14;
  v8[28] = v13;

  return MEMORY[0x1EEE6DFA0](sub_19165FA6C, v14, v13);
}

uint64_t sub_19165FA6C()
{
  (*(v0[20] + 16))(v0[21], v0[6], v0[9]);
  sub_19166BC98();
  swift_beginAccess();
  v1 = sub_19166BB18();
  v0[29] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[30] = AssociatedConformanceWitness;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_19165FBC0;
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[17];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v5, v1, v7, v6, v4, AssociatedConformanceWitness);
}

uint64_t sub_19165FBC0()
{
  v2 = *v1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_191660010;
  }

  else
  {
    v5 = sub_19165FD14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19165FD14()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

LABEL_8:

    v23 = v0[1];

    return v23();
  }

  (*(v3 + 32))(v0[13], v1, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v18 = v0[23];
    v17 = v0[24];
    v19 = v0[22];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];

    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    goto LABEL_8;
  }

  v5 = Strong;
  v6 = v0[18];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  (*(v8 + 16))(v6, v7, v9);
  (*(v8 + 56))(v6, 0, 1, v9);
  v0[5] = v5;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease_n();
  (*(v8 + 8))(v7, v9);
  v10 = sub_19166BB18();
  v0[29] = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[30] = AssociatedConformanceWitness;
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_19165FBC0;
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[17];
  v16 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v14, v10, v16, v15, v13, AssociatedConformanceWitness);
}

uint64_t sub_191660010()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = sub_19166C5C8();
  v7 = v0[16];
  if (v6)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    v8 = v0[14];
    swift_allocError();
    v5(v9, v7, v8);
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1916601A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v43 = a3;
  v44 = a4;
  v40 = a1;
  v41 = a2;
  v8 = sub_19166BBC8();
  v36 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v38 = a5;
  v39 = &v35 - v12;
  v13 = a5;
  v14 = sub_19166BC08();
  v37 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v35 - v22;
  v24 = sub_19166BB58();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v15 + 16))(v19, v41, v14);
  v25 = v39;
  (*(v9 + 16))(v39, a1, v8);
  v26 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v27 = (v16 + *(v9 + 80) + v26) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = v13;
  v29 = v42;
  *(v28 + 5) = v42;
  (*(v15 + 32))(&v28[v26], v19, v37);
  (*(v9 + 32))(&v28[v27], v25, v36);
  v30 = &v28[(v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8];
  v31 = v44;
  *v30 = v43;
  v30[1] = v31;

  v32 = sub_1915D593C(0, 0, v23, &unk_1916760F0, v28);
  v33 = swift_allocObject();
  v33[2] = v38;
  v33[3] = v29;
  v33[4] = v32;
  return sub_19166BB88();
}

uint64_t sub_1916604FC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(v1[5] - 8);
  v9 = (v7 + *(*(v5 - 8) + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_19165E1F4(a1, v10, v11, v1 + v7, v1 + v9, v12, v5, v6);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  (*(v6 + 8))(v0 + v8, v2);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1916607D8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = v1[6];
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(v1[5] - 8);
  v9 = (v7 + *(*(v5 - 8) + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_19165ECF8(a1, v10, v11, v1 + v7, v1 + v9, v12, v5, v6);
}

uint64_t sub_191660964(uint64_t a1)
{
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[6];
  v7 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v8 = (*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1915D4F90;

  return sub_19165F7A8(a1, v9, v5, v1 + v7, v10, v11, v4, v6);
}

uint64_t sub_191660AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = swift_task_alloc();
  v10 = sub_19166BB78();
  v8[9] = v10;
  v8[10] = *(v10 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = *(a8 - 8);
  v8[13] = swift_task_alloc();
  sub_19166BF58();
  v8[14] = swift_task_alloc();
  v11 = sub_19166BBF8();
  v8[15] = v11;
  v8[16] = *(v11 - 8);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191660C90, 0, 0);
}

uint64_t sub_191660C90()
{
  sub_19166BC08();
  sub_19166BBD8();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_191660D50;
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_191660D50()
{

  return MEMORY[0x1EEE6DFA0](sub_191660E4C, 0, 0);
}

uint64_t sub_191660E4C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_19166BBC8();
    sub_19166BBB8();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[4];
    (*(v2 + 32))(v0[13], v1, v3);
    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_19166104C;
    v8 = v0[13];
    v9 = v0[8];

    return v10(v9, v8);
  }
}

uint64_t sub_19166104C()
{

  return MEMORY[0x1EEE6DFA0](sub_191661148, 0, 0);
}

uint64_t sub_191661148()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  sub_19166BBC8();
  sub_19166BBA8();
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_191660D50;
  v8 = v0[14];
  v9 = v0[15];

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v9);
}

uint64_t AsyncStream.asyncMap<A>(_:)(void *a1)
{
  v3 = sub_19166BB98();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8[-v5];
  v9 = v1;
  v10 = a1;
  nullsub_1();
  sub_1915D455C(v6);
  return sub_19166BC18();
}

uint64_t sub_191661360(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = a1;
  v35 = a2;
  v37 = a3;
  v4 = (*a3 + *MEMORY[0x1E69E77B0]);
  v36 = v4[1];
  v5 = sub_19166BBC8();
  v30 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v32 = *v4;
  v9 = v32;
  v33 = &v30 - v10;
  v11 = sub_19166BC08();
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v30 - v19;
  v21 = sub_19166BB58();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v12 + 16))(v16, v35, v11);
  v22 = v33;
  (*(v6 + 16))(v33, a1, v5);
  v23 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v24 = (v13 + *(v6 + 80) + v23) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v9;
  v26 = v36;
  *(v25 + 5) = v36;
  (*(v12 + 32))(&v25[v23], v16, v31);
  (*(v6 + 32))(&v25[v24], v22, v30);
  *&v25[(v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v37;

  v27 = sub_1915D593C(0, 0, v20, &unk_1916760E0, v25);
  v28 = swift_allocObject();
  v28[2] = v32;
  v28[3] = v26;
  v28[4] = v27;
  return sub_19166BB88();
}

uint64_t sub_1916616D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = (*a6 + *MEMORY[0x1E69E77B0]);
  v6[5] = v7[1];
  v6[6] = swift_task_alloc();
  v8 = *v7;
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  v9 = sub_19166BB78();
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();
  sub_19166BF58();
  v6[13] = swift_task_alloc();
  v10 = sub_19166BBF8();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1916618EC, 0, 0);
}

uint64_t sub_1916618EC()
{
  sub_19166BC08();
  sub_19166BBD8();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1916619AC;
  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1916619AC()
{

  return MEMORY[0x1EEE6DFA0](sub_191661AA8, 0, 0);
}

uint64_t sub_191661AA8()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    sub_19166BBC8();
    sub_19166BBB8();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v12 = v0[10];
    (*(v3 + 32))(v8, v1, v2);
    swift_getAtKeyPath();
    (*(v3 + 8))(v8, v2);
    sub_19166BBC8();
    sub_19166BBA8();
    (*(v7 + 8))(v6, v12);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1916619AC;
    v10 = v0[13];
    v11 = v0[14];

    return MEMORY[0x1EEE6D9C8](v10, 0, 0, v11);
  }
}

uint64_t sub_191661CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19166BB98();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v15[-v12];
  v16 = *(a3 + 16);
  v17 = a4;
  v18 = v5;
  v19 = a1;
  v20 = a2;
  nullsub_1();
  sub_1915D455C(v13);
  return sub_19166BC18();
}

uint64_t sub_191661DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v42 = a3;
  v43 = a4;
  v38 = a1;
  v39 = a2;
  v7 = sub_19166BBC8();
  v36 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v34 - v10;
  v37 = &v34 - v10;
  v12 = sub_19166BC08();
  v35 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v34 - v20;
  v22 = sub_19166BB58();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v13 + 16))(v17, v39, v12);
  (*(v8 + 16))(v11, a1, v7);
  v23 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v8 + 80) + v24 + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v28 = v40;
  v27 = v41;
  *(v26 + 4) = v40;
  *(v26 + 5) = v27;
  (*(v13 + 32))(&v26[v23], v17, v35);
  v29 = &v26[v24];
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;
  (*(v8 + 32))(&v26[v25], v37, v36);

  v31 = sub_1915D593C(0, 0, v21, &unk_1916760D0, v26);
  v32 = swift_allocObject();
  v32[2] = v28;
  v32[3] = v27;
  v32[4] = v31;
  return sub_19166BB88();
}

uint64_t sub_191662124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v15;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v10 = sub_19166BB78();
  v8[8] = v10;
  v8[9] = *(v10 - 8);
  v8[10] = swift_task_alloc();
  v11 = sub_19166BF58();
  v8[11] = v11;
  v8[12] = *(v11 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v15 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = *(a8 - 8);
  v8[18] = swift_task_alloc();
  sub_19166BF58();
  v8[19] = swift_task_alloc();
  v12 = sub_19166BBF8();
  v8[20] = v12;
  v8[21] = *(v12 - 8);
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19166239C, 0, 0);
}

uint64_t sub_19166239C()
{
  sub_19166BC08();
  sub_19166BBD8();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_19166245C;
  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_19166245C()
{

  return MEMORY[0x1EEE6DFA0](sub_191662558, 0, 0);
}

uint64_t sub_191662558()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_19166BBC8();
    sub_19166BBB8();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    (*(v2 + 32))(v0[18], v1, v3);
    v10 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_19166277C;
    v8 = v0[18];
    v9 = v0[13];

    return v10(v9, v8);
  }
}

uint64_t sub_19166277C()
{

  return MEMORY[0x1EEE6DFA0](sub_191662878, 0, 0);
}

uint64_t sub_191662878()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[7];
  v4 = (*(v1 + 48))(v2, 1, v3);
  v5 = v0[17];
  if (v4 == 1)
  {
    v7 = v0[11];
    v6 = v0[12];
    (*(v5 + 8))(v0[18], v0[6]);
    (*(v6 + 8))(v2, v7);
  }

  else
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[9];
    v11 = v0[10];
    v16 = v0[8];
    v17 = v0[18];
    v18 = v0[6];
    (*(v1 + 32))(v8, v2, v3);
    (*(v1 + 16))(v9, v8, v3);
    sub_19166BBC8();
    sub_19166BBA8();
    (*(v10 + 8))(v11, v16);
    (*(v1 + 8))(v8, v3);
    (*(v5 + 8))(v17, v18);
  }

  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_19166245C;
  v13 = v0[19];
  v14 = v0[20];

  return MEMORY[0x1EEE6D9C8](v13, 0, 0, v14);
}

uint64_t AsyncStream.first()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191662A84, 0, 0);
}

uint64_t sub_191662A84()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = *(v1 + 16);
  v3 = swift_task_alloc();
  v0[6] = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_191662B7C;
  v5 = v0[3];
  v6 = v0[2];

  return MEMORY[0x1EEE6DB20](v6, &unk_1916760A8, v2, v5, WitnessTable);
}

void sub_191662B7C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_191662CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_191662D68;

  return sub_191662CB0();
}

uint64_t sub_191662D68(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t AsyncStream.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = v3[2];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = v4;
  *(v9 + 3) = v3[3];
  *(v9 + 4) = v3[4];
  (*(v5 + 32))(&v9[v8], v7, v4);
  v10 = sub_19166BF58();
  AsyncStream.asyncMap<A>(_:)(&unk_1916760B8, v9, a2, v10);
}

uint64_t sub_191662FD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v6[2] = a1;
  v6[3] = a3;
  v7 = *a2;
  v6[6] = a6;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_191662FFC, 0, 0);
}

uint64_t sub_191662FFC()
{
  sub_19166B698();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_191663064(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1915D8338;

  return sub_191662FD0(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t sub_191663164(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(sub_19166BC08() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_19166BBC8() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 1);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1915D4F90;

  return sub_191662124(a1, v10, v11, v1 + v6, v13, v14, v1 + v9, v4);
}

uint64_t sub_19166331C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_19166BC08() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_19166BBC8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_1916616D4(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_1916634AC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(sub_19166BC08() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_19166BBC8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1915D8338;

  return sub_191660AAC(a1, v10, v11, v1 + v6, v1 + v9, v13, v14, v4);
}

uint64_t _accessibilityEncodeReturnType(class:selector:instanceMethod:)(uint64_t a1, const char *a2, char a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ((a3 & 1) == 0)
  {
    ClassMethod = class_getClassMethod(ObjCClassFromMetadata, a2);
    if (ClassMethod)
    {
      goto LABEL_3;
    }

    return 0;
  }

  ClassMethod = class_getInstanceMethod(ObjCClassFromMetadata, a2);
  if (!ClassMethod)
  {
    return 0;
  }

LABEL_3:
  v7 = method_copyReturnType(ClassMethod);
  v8 = sub_19166B6F8();
  MEMORY[0x193AFEC10](v7, -1, -1);
  return v8;
}

char *_accessibilityEncodeArgumentTypes(class:selector:instanceMethod:)(uint64_t a1, const char *a2, char a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (a3)
  {
    InstanceMethod = class_getInstanceMethod(ObjCClassFromMetadata, a2);
    if (!InstanceMethod)
    {
      return 0;
    }
  }

  else
  {
    InstanceMethod = class_getClassMethod(ObjCClassFromMetadata, a2);
    if (!InstanceMethod)
    {
      return 0;
    }
  }

  result = method_getNumberOfArguments(InstanceMethod);
  if (result < 3)
  {
    return 0;
  }

  v8 = result;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 2;
  while (v8 != v10)
  {
    result = method_copyArgumentType(InstanceMethod, v10);
    if (result)
    {
      v12 = result;
      v13 = sub_19166B6F8();
      if (v14)
      {
        v15 = v13;
        v16 = v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1915F47A8(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1915F47A8((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        v11 = &v9[16 * v18];
        *(v11 + 4) = v15;
        *(v11 + 5) = v16;
      }

      result = MEMORY[0x193AFEC10](v12, -1, -1);
    }

    if (v8 == ++v10)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall _accessibilityFailedSafeExpression()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  if (AXShouldLogValidationErrors(v0, v1) & 1) != 0 || (v2 = AXShouldCrashOnValidationErrors(), (v2))
  {
    v4 = sub_19166BD68();
    v5 = v4;
    v6 = AXLogValidations(v4);
    if (!v6)
    {
      __break(1u);
      goto LABEL_16;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, v5))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v10 = sub_191663A30(v0);
      v12 = sub_1915FB514(v10, v11, &v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_19159B000, v7, v5, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193AFEC10](v9, -1, -1);
      MEMORY[0x193AFEC10](v8, -1, -1);
    }
  }

  if (AXShouldLogValidationErrors(v2, v3))
  {
    v13 = [objc_opt_self() sharedInstance];
    if (v13)
    {
      v14 = v13;
      sub_191663A30(v0);
      v15 = sub_19166B718();

      [v14 sendExceptionForSafeBlock:v15 overrideProcessName:0];

      return;
    }

LABEL_16:
    __break(1u);
    return;
  }
}

uint64_t sub_191663A30(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    sub_19166C0C8();
    MEMORY[0x193AFC710](0xD00000000000005FLL, 0x800000019167E0B0);
    v3 = [objc_opt_self() callStackSymbols];
    v4 = MEMORY[0x1E69E6158];
    v5 = sub_19166BA08();

    v6 = MEMORY[0x193AFC8C0](v5, v4);
    v8 = v7;

    MEMORY[0x193AFC710](v6, v8);

    MEMORY[0x193AFC710](46, 0xE100000000000000);
    v2 = 0;
    swift_beginAccess();
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
  }

  return v2;
}

uint64_t AXThreadLocal.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AXThreadLocal.init(wrappedValue:)(a1);
  return v2;
}

uint64_t *AXThreadLocal.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  sub_19166B1B8();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t sub_191663CCC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 currentThread];
  v9 = [v8 threadDictionary];

  *&v23[0] = sub_19166B178();
  *(&v23[0] + 1) = v10;
  v11 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v11)
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  v12 = [v7 currentThread];
  v13 = [v12 threadDictionary];

  sub_19166B178();
  v14 = sub_19166C5D8();
  [v13 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v15 = swift_unknownObjectRelease();
  v20(v15);
  sub_191663ED4(v6, v23);
  return sub_1915DCBFC(v23);
}

uint64_t sub_191663ED4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() currentThread];
  v4 = [v3 threadDictionary];

  v5 = sub_19166B178();
  v7 = v6;
  sub_19159E224(a2, v15);
  v8 = v16;
  if (v16)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v9, v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_19166C5D8();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
  }

  v15[0] = v5;
  v15[1] = v7;
  [v4 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1916640AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = sub_19166BF58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - v8;
  v10 = [objc_opt_self() currentThread];
  v11 = [v10 threadDictionary];

  *&v19[0] = sub_19166B178();
  *(&v19[0] + 1) = v12;
  v13 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v13)
  {
    sub_19166BFC8();
    swift_unknownObjectRelease();
    sub_1915E4370(v18, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  v14 = swift_dynamicCast();
  v15 = *(v4 - 8);
  v16 = *(v15 + 56);
  if (v14)
  {
    v16(v9, 0, 1, v4);
    return (*(v15 + 32))(a1, v9, v4);
  }

  else
  {
    v16(v9, 1, 1, v4);
    (*(*(*(*v2 + 80) - 8) + 16))(a1, v2 + *(*v2 + 88));
    result = (*(v15 + 48))(v9, 1, v4);
    if (result != 1)
    {
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t AXThreadLocal.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  v2 = sub_19166B1C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AXThreadLocal.__deallocating_deinit()
{
  AXThreadLocal.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1916644C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_19166B1C8();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

int *AudioEffectConfiguration.init(id:effect:parameters:properties:enabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_19166B1C8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for AudioEffectConfiguration(0);
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + result[6]) = a4;
  *(a7 + result[8]) = a6;
  *(a7 + result[7]) = a5;
  return result;
}

uint64_t type metadata accessor for AudioEffectConfiguration(uint64_t a1)
{
  result = qword_1EADAE558;
  if (!qword_1EADAE558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioEffectConfiguration.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19166B1C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AudioEffectConfiguration.id.setter(uint64_t a1)
{
  v3 = sub_19166B1C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AudioEffectConfiguration.effect.getter()
{
  v1 = *(v0 + *(type metadata accessor for AudioEffectConfiguration(0) + 20));

  return v1;
}

uint64_t AudioEffectConfiguration.effect.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AudioEffectConfiguration(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AudioEffectConfiguration.parameters.getter()
{
  type metadata accessor for AudioEffectConfiguration(0);
}

uint64_t AudioEffectConfiguration.parameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEffectConfiguration(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioEffectConfiguration.properties.getter()
{
  type metadata accessor for AudioEffectConfiguration(0);
}

uint64_t AudioEffectConfiguration.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioEffectConfiguration(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

unint64_t AudioEffectConfiguration.enabled.setter(char a1)
{
  *(v1 + *(type metadata accessor for AudioEffectConfiguration(0) + 32)) = a1;

  return sub_191664AE8();
}

unint64_t sub_191664AE8()
{
  v1 = v0;
  v2 = type metadata accessor for AudioEffectConfiguration(0);
  v3 = *(v2 + 28);
  v4 = *(v0 + *(v2 + 32));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v3);
  result = sub_1915E26A4(v4 != 1, 0x737361707962, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *(v1 + v3) = v7;
  return result;
}

unint64_t (*AudioEffectConfiguration.enabled.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for AudioEffectConfiguration(0);
  return sub_191664BCC;
}

unint64_t sub_191664BCC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_191664AE8();
  }

  return result;
}

uint64_t sub_191664BFC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6574656D61726170;
  v4 = 0x69747265706F7270;
  if (v1 != 3)
  {
    v4 = 0x64656C62616E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746365666665;
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

uint64_t sub_191664C94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191665EB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191664CBC(uint64_t a1)
{
  v2 = sub_191665AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191664CF8(uint64_t a1)
{
  v2 = sub_191665AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioEffectConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB03E0, &unk_191676150);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_191665AB4();
  sub_19166C808();
  LOBYTE(v13) = 0;
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADB03F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_19166C398();
  if (!v2)
  {
    v10 = type metadata accessor for AudioEffectConfiguration(0);
    LOBYTE(v13) = 1;
    sub_19166C378();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
    sub_1916047D0(&qword_1EADAFC38, MEMORY[0x1E69E6160], MEMORY[0x1E69E6458], MEMORY[0x1E69E5E38]);
    sub_19166C398();
    v13 = *(v3 + *(v10 + 28));
    HIBYTE(v12) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB03F8, &qword_191676160);
    sub_191665B08(&qword_1EADB0400, MEMORY[0x1E69E6160], MEMORY[0x1E69E7670], MEMORY[0x1E69E5E38]);
    sub_19166C398();
    LOBYTE(v13) = 4;
    sub_19166C388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AudioEffectConfiguration.hash(into:)(uint64_t a1)
{
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_19166B6C8();
  v3 = type metadata accessor for AudioEffectConfiguration(0);
  sub_19166B828();
  sub_191603C10(a1, *(v1 + *(v3 + 24)));
  sub_191603AC4(a1, *(v1 + *(v3 + 28)));
  return sub_19166C798();
}

uint64_t AudioEffectConfiguration.hashValue.getter()
{
  sub_19166C778();
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_19166B6C8();
  v1 = type metadata accessor for AudioEffectConfiguration(0);
  sub_19166B828();
  sub_191603C10(v3, *(v0 + *(v1 + 24)));
  sub_191603AC4(v3, *(v0 + *(v1 + 28)));
  sub_19166C798();
  return sub_19166C7B8();
}

uint64_t AudioEffectConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_19166B1C8();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0408, &qword_191676168);
  v25 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for AudioEffectConfiguration(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_191665AB4();
  v28 = v9;
  sub_19166C7F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v13;
  v16 = v25;
  v15 = v26;
  LOBYTE(v31) = 0;
  sub_191665BC0(&qword_1EADB0410, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v17 = v27;
  sub_19166C308();
  (*(v15 + 32))(v14, v17, v4);
  LOBYTE(v31) = 1;
  v18 = sub_19166C2E8();
  v19 = (v14 + v10[5]);
  *v19 = v18;
  v19[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
  v30 = 2;
  sub_1916047D0(&qword_1EADAE508, MEMORY[0x1E69E6190], MEMORY[0x1E69E6478], MEMORY[0x1E69E5E58]);
  v27 = 0;
  sub_19166C308();
  *(v14 + v10[6]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB03F8, &qword_191676160);
  v30 = 3;
  sub_191665B08(&qword_1EADB0418, MEMORY[0x1E69E6190], MEMORY[0x1E69E7698], MEMORY[0x1E69E5E58]);
  sub_19166C308();
  *(v14 + v10[7]) = v31;
  LOBYTE(v31) = 4;
  v21 = sub_19166C2F8();
  (*(v16 + 8))(v28, v29);
  *(v14 + v10[8]) = v21 & 1;
  sub_1915EEE50(v14, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1915EEEB4(v14);
}

uint64_t sub_1916656F8(int *a1)
{
  sub_19166C778();
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_19166B6C8();
  sub_19166B828();
  sub_191603C10(v4, *(v1 + a1[6]));
  sub_191603AC4(v4, *(v1 + a1[7]));
  sub_19166C798();
  return sub_19166C7B8();
}

uint64_t sub_1916657D0(uint64_t a1, int *a2)
{
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_19166B6C8();
  sub_19166B828();
  sub_191603C10(a1, *(v2 + a2[6]));
  sub_191603AC4(a1, *(v2 + a2[7]));
  return sub_19166C798();
}

uint64_t sub_191665890(uint64_t a1, int *a2)
{
  sub_19166C778();
  sub_19166B1C8();
  sub_191665BC0(&qword_1EADAE9E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_19166B6C8();
  sub_19166B828();
  sub_191603C10(v5, *(v2 + a2[6]));
  sub_191603AC4(v5, *(v2 + a2[7]));
  sub_19166C798();
  return sub_19166C7B8();
}

uint64_t sub_191665964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19166B1C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s15AXCoreUtilities24AudioEffectConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_19166B198() & 1) != 0 && ((v4 = type metadata accessor for AudioEffectConfiguration(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_19166C5E8()) && (sub_1915ED59C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) != 0 && (sub_1915ED6D8(*(a1 + v4[7]), *(a2 + v4[7]))))
  {
    v10 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_191665AB4()
{
  result = qword_1EADB03E8;
  if (!qword_1EADB03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB03E8);
  }

  return result;
}

uint64_t sub_191665B08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADB03F8, &qword_191676160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191665BC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_191665C78(uint64_t a1)
{
  sub_19166B1C8();
  if (v1 <= 0x3F)
  {
    sub_191665D44(319, &qword_1EADAE510, MEMORY[0x1E69E6448]);
    if (v2 <= 0x3F)
    {
      sub_191665D44(319, &qword_1EADAE4F8, MEMORY[0x1E69E7668]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_191665D44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_19166B688();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_191665DB0()
{
  result = qword_1EADB0428;
  if (!qword_1EADB0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0428);
  }

  return result;
}

unint64_t sub_191665E08()
{
  result = qword_1EADB0430;
  if (!qword_1EADB0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0430);
  }

  return result;
}

unint64_t sub_191665E60()
{
  result = qword_1EADB0438;
  if (!qword_1EADB0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADB0438);
  }

  return result;
}

uint64_t sub_191665EB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_19166C5E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746365666665 && a2 == 0xE600000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_19166C5E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_19166C5E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_19166C5E8();

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

uint64_t SmartForceCast<A>(value:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DFD18(v8, v24);
  v11 = MEMORY[0x1E69E7CA0];
  if (swift_dynamicCast())
  {
    (*(v7 + 32))(a4, v10, a3);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0360, &qword_1916759B8);
  if (swift_dynamicCast())
  {
    sub_1915A04D0(&v23, v22);
    if (swift_dynamicCastMetatype())
    {
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      v21[0] = sub_19166C3C8();
      v21[1] = v12;
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v22);
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  if (swift_dynamicCast())
  {
    v10 = v23;
    if (swift_dynamicCastMetatype())
    {
LABEL_9:
      v22[0] = v10;
LABEL_92:
      swift_dynamicCast();
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }

    if (swift_dynamicCastMetatype())
    {
      if (v10 < -128)
      {
        __break(1u);
      }

      else if (v10 <= 127)
      {
LABEL_25:
        LOBYTE(v22[0]) = v10;
        goto LABEL_92;
      }

      __break(1u);
LABEL_239:
      if (swift_dynamicCastMetatype())
      {
        if (v10 >> 31)
        {
          __break(1u);
LABEL_242:
          if (swift_dynamicCastMetatype())
          {
            if ((v10 & 0x80000000) == 0)
            {
              goto LABEL_274;
            }

            __break(1u);
LABEL_245:
            if (swift_dynamicCastMetatype())
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v4 > -129.0)
                {
                  if (v4 >= 128.0)
                  {
                    __break(1u);
LABEL_250:
                    if (!swift_dynamicCastMetatype())
                    {
                      if (!swift_dynamicCastMetatype())
                      {
                        if (swift_dynamicCastMetatype())
                        {
                          if (v10 > 0xFF)
                          {
                            __break(1u);
LABEL_255:
                            if (swift_dynamicCastMetatype())
                            {
                              if ((v10 & 0x80000000) != 0)
                              {
                                __break(1u);
LABEL_258:
                                if (swift_dynamicCastMetatype())
                                {
                                  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                                  {
                                    __break(1u);
                                  }

                                  else if (*&v4 > -32769.0)
                                  {
                                    if (*&v4 < 32768.0)
                                    {
                                      LOWORD(v23) = *&v4;
                                      goto LABEL_92;
                                    }

                                    goto LABEL_557;
                                  }

                                  __break(1u);
LABEL_557:
                                  __break(1u);
                                  goto LABEL_558;
                                }

LABEL_299:
                                if (swift_dynamicCastMetatype())
                                {
                                  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                                  {
                                    __break(1u);
                                  }

                                  else if (*&v4 > -2147500000.0)
                                  {
                                    if (*&v4 < 2147500000.0)
                                    {
                                      LODWORD(v23) = *&v4;
                                      goto LABEL_92;
                                    }

                                    goto LABEL_582;
                                  }

                                  __break(1u);
LABEL_582:
                                  __break(1u);
                                  goto LABEL_583;
                                }

                                goto LABEL_345;
                              }

LABEL_315:
                              *&v23 = v10;
                              goto LABEL_92;
                            }

                            goto LABEL_316;
                          }

LABEL_190:
                          LOBYTE(v23) = v10;
                          goto LABEL_92;
                        }

LABEL_387:
                        if (!swift_dynamicCastMetatype())
                        {
                          goto LABEL_390;
                        }

                        if (WORD1(v10))
                        {
                          __break(1u);
                          goto LABEL_390;
                        }

                        goto LABEL_236;
                      }

LABEL_147:
                      *&v23 = v10;
                      goto LABEL_92;
                    }

LABEL_58:
                    *&v23 = v10;
                    goto LABEL_92;
                  }

LABEL_186:
                  LOBYTE(v22[0]) = v4;
                  goto LABEL_92;
                }

LABEL_552:
                __break(1u);
LABEL_553:
                if (!swift_dynamicCastMetatype())
                {
                  if (swift_dynamicCastMetatype())
                  {
                    LODWORD(v23) = LODWORD(v4);
                    goto LABEL_92;
                  }

LABEL_592:
                  if (swift_dynamicCastMetatype())
                  {
                    v19 = *&v4;
                    goto LABEL_372;
                  }

LABEL_594:
                  __swift_destroy_boxed_opaque_existential_1(v24);
                  sub_1915DCC64();
                  swift_allocError();
                  *v20 = 3;
                  return swift_willThrow();
                }

                v14 = *&v4;
LABEL_318:
                *&v23 = v14;
                goto LABEL_92;
              }

LABEL_551:
              __break(1u);
              goto LABEL_552;
            }

LABEL_290:
            if (swift_dynamicCastMetatype())
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v4 > -32769.0)
                {
                  if (v4 >= 32768.0)
                  {
                    __break(1u);
LABEL_295:
                    if (swift_dynamicCastMetatype())
                    {
                      if (v10 >> 16)
                      {
                        __break(1u);
                        goto LABEL_298;
                      }

LABEL_138:
                      LOWORD(v22[0]) = v10;
                      goto LABEL_92;
                    }

LABEL_342:
                    if (swift_dynamicCastMetatype())
                    {
                      if (HIDWORD(v10))
                      {
                        __break(1u);
LABEL_345:
                        result = swift_dynamicCastMetatype();
                        if (result)
                        {
                          if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
                          {
                            __break(1u);
                          }

                          else if (*&v4 > -9.2234e18)
                          {
                            if (*&v4 < 9.2234e18)
                            {
                              *&v23 = *&v4;
                              goto LABEL_92;
                            }

                            goto LABEL_597;
                          }

                          __break(1u);
LABEL_597:
                          __break(1u);
                          goto LABEL_598;
                        }

                        result = swift_dynamicCastMetatype();
                        if (result)
                        {
                          if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                          {
                            if (*&v4 > -1.0)
                            {
                              if (*&v4 < 1.8447e19)
                              {
                                *&v23 = *&v4;
                                goto LABEL_92;
                              }

                              goto LABEL_607;
                            }

LABEL_606:
                            __break(1u);
LABEL_607:
                            __break(1u);
                            goto LABEL_608;
                          }

LABEL_605:
                          __break(1u);
                          goto LABEL_606;
                        }

                        goto LABEL_422;
                      }

LABEL_181:
                      LODWORD(v22[0]) = v10;
                      goto LABEL_92;
                    }

LABEL_445:
                    if (!swift_dynamicCastMetatype())
                    {
                      if (swift_dynamicCastMetatype())
                      {
                        v16 = v10;
                        goto LABEL_355;
                      }

                      if (swift_dynamicCastMetatype())
                      {
                        v17 = v10;
                        goto LABEL_358;
                      }

                      goto LABEL_478;
                    }

LABEL_227:
                    v22[0] = v10;
                    goto LABEL_92;
                  }

LABEL_232:
                  LOWORD(v22[0]) = v4;
                  goto LABEL_92;
                }

LABEL_575:
                __break(1u);
LABEL_576:
                if (swift_dynamicCastMetatype())
                {
                  *v22 = v4;
                  goto LABEL_92;
                }

                goto LABEL_594;
              }

LABEL_574:
              __break(1u);
              goto LABEL_575;
            }

LABEL_337:
            if (swift_dynamicCastMetatype())
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_590:
                __break(1u);
                goto LABEL_591;
              }

              if (v4 <= -2147483650.0)
              {
LABEL_591:
                __break(1u);
                goto LABEL_592;
              }

              if (v4 >= 2147483650.0)
              {
                __break(1u);
                goto LABEL_342;
              }

LABEL_271:
              LODWORD(v22[0]) = v4;
              goto LABEL_92;
            }

LABEL_382:
            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_603:
                __break(1u);
                goto LABEL_604;
              }

              if (v4 <= -9.22337204e18)
              {
LABEL_604:
                __break(1u);
                goto LABEL_605;
              }

              if (v4 >= 9.22337204e18)
              {
                __break(1u);
                goto LABEL_387;
              }

LABEL_312:
              v22[0] = v4;
              goto LABEL_92;
            }

LABEL_417:
            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_613:
                __break(1u);
                goto LABEL_614;
              }

              if (v4 <= -1.0)
              {
LABEL_614:
                __break(1u);
                goto LABEL_615;
              }

              if (v4 >= 1.84467441e19)
              {
                __break(1u);
LABEL_422:
                result = swift_dynamicCastMetatype();
                if (result)
                {
                  if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                  {
                    if (*&v4 > -1.0)
                    {
                      if (*&v4 < 256.0)
                      {
                        LOBYTE(v23) = *&v4;
                        goto LABEL_92;
                      }

                      goto LABEL_617;
                    }

LABEL_616:
                    __break(1u);
LABEL_617:
                    __break(1u);
                    goto LABEL_618;
                  }

LABEL_615:
                  __break(1u);
                  goto LABEL_616;
                }

                goto LABEL_455;
              }

LABEL_369:
              v22[0] = v4;
              goto LABEL_92;
            }

            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_623:
                __break(1u);
                goto LABEL_624;
              }

              if (v4 <= -1.0)
              {
LABEL_624:
                __break(1u);
                goto LABEL_625;
              }

              if (v4 >= 256.0)
              {
                __break(1u);
LABEL_455:
                result = swift_dynamicCastMetatype();
                if (result)
                {
                  if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                  {
                    if (*&v4 > -1.0)
                    {
                      if (*&v4 < 65536.0)
                      {
                        LOWORD(v23) = *&v4;
                        goto LABEL_92;
                      }

                      goto LABEL_627;
                    }

LABEL_626:
                    __break(1u);
LABEL_627:
                    __break(1u);
                    goto LABEL_628;
                  }

LABEL_625:
                  __break(1u);
                  goto LABEL_626;
                }

                goto LABEL_488;
              }

LABEL_404:
              LOBYTE(v22[0]) = v4;
              goto LABEL_92;
            }

            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_633:
                __break(1u);
                goto LABEL_634;
              }

              if (v4 <= -1.0)
              {
LABEL_634:
                __break(1u);
                goto LABEL_635;
              }

              if (v4 >= 65536.0)
              {
                __break(1u);
                goto LABEL_485;
              }

LABEL_432:
              LOWORD(v22[0]) = v4;
              goto LABEL_92;
            }

LABEL_515:
            result = swift_dynamicCastMetatype();
            if (result)
            {
              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_643:
                __break(1u);
                goto LABEL_644;
              }

              if (v4 <= -1.0)
              {
LABEL_644:
                __break(1u);
                goto LABEL_645;
              }

              if (v4 >= 4294967300.0)
              {
                __break(1u);
LABEL_520:
                if (!swift_dynamicCastMetatype())
                {
                  goto LABEL_594;
                }

                v19 = v10;
                goto LABEL_372;
              }

LABEL_464:
              LODWORD(v22[0]) = v4;
              goto LABEL_92;
            }

LABEL_546:
            result = swift_dynamicCastMetatype();
            if (!result)
            {
              goto LABEL_564;
            }

            if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_650;
            }

            if (v4 <= -1.0)
            {
LABEL_651:
              __break(1u);
LABEL_652:
              __break(1u);
              goto LABEL_653;
            }

            if (v4 < 1.84467441e19)
            {
              goto LABEL_500;
            }

            __break(1u);
            goto LABEL_551;
          }

LABEL_287:
          if (!swift_dynamicCastMetatype())
          {
LABEL_316:
            if (swift_dynamicCastMetatype())
            {
              v14 = v10;
              goto LABEL_318;
            }

            if (swift_dynamicCastMetatype())
            {
              v15 = v10;
LABEL_321:
              *&v23 = v15;
              goto LABEL_92;
            }

            if (!swift_dynamicCastMetatype())
            {
              goto LABEL_594;
            }

            v19 = v10;
LABEL_372:
            *&v23 = v19;
            goto LABEL_92;
          }

          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_315;
          }

          __break(1u);
          goto LABEL_290;
        }

LABEL_50:
        LODWORD(v22[0]) = v10;
        goto LABEL_92;
      }

      if (swift_dynamicCastMetatype())
      {
        if (v10 < 0)
        {
          __break(1u);
          goto LABEL_287;
        }

LABEL_65:
        v22[0] = v10;
        goto LABEL_92;
      }

LABEL_333:
      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          if (v10 > 0xFF)
          {
            __break(1u);
            goto LABEL_337;
          }

LABEL_108:
          LOBYTE(v22[0]) = v10;
          goto LABEL_92;
        }

        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype())
          {
            if (!HIDWORD(v10))
            {
              goto LABEL_181;
            }

            __break(1u);
          }

          goto LABEL_445;
        }

        if (!(v10 >> 16))
        {
          goto LABEL_138;
        }

        __break(1u);
LABEL_416:
        __break(1u);
        goto LABEL_417;
      }

LABEL_89:
      v22[0] = v10;
      goto LABEL_92;
    }

    if (swift_dynamicCastMetatype())
    {
      if (v10 >= -32768)
      {
        if (v10 < 0x8000)
        {
          goto LABEL_32;
        }

        goto LABEL_281;
      }

LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      if (swift_dynamicCastMetatype())
      {
        LOBYTE(v23) = v10;
        goto LABEL_92;
      }

      goto LABEL_329;
    }

    goto LABEL_47;
  }

  if (swift_dynamicCast())
  {
    v10 = SLOBYTE(v22[0]);
    if (swift_dynamicCastMetatype())
    {
LABEL_21:
      *&v23 = v10;
      goto LABEL_92;
    }

    if (swift_dynamicCastMetatype())
    {
LABEL_54:
      LOBYTE(v23) = v10;
      goto LABEL_92;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_69;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_91;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_58;
    }

    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_125;
    }

    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_147;
    }

    __break(1u);
  }

  if (swift_dynamicCast())
  {
    v10 = SLOWORD(v22[0]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_21;
    }

LABEL_39:
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_69;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_91;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_58;
      }

      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_153;
      }

      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_147;
      }

      __break(1u);
LABEL_122:
      if (!swift_dynamicCastMetatype())
      {
LABEL_157:
        if (!swift_dynamicCastMetatype())
        {
LABEL_206:
          if (swift_dynamicCastMetatype())
          {
            goto LABEL_89;
          }

          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_295;
          }

          if (v10 <= 0xFF)
          {
            goto LABEL_108;
          }

          __break(1u);
          goto LABEL_210;
        }

        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_65;
        }

        __break(1u);
LABEL_160:
        if (!swift_dynamicCastMetatype())
        {
LABEL_210:
          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_250;
          }

          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_91;
          }

          __break(1u);
          goto LABEL_213;
        }

        if (v10 >> 15)
        {
          __break(1u);
          goto LABEL_163;
        }

LABEL_69:
        LOWORD(v23) = v10;
        goto LABEL_92;
      }

      if (!(v10 >> 31))
      {
        goto LABEL_50;
      }

      __break(1u);
LABEL_125:
      if (!swift_dynamicCastMetatype())
      {
LABEL_163:
        if (!swift_dynamicCastMetatype())
        {
LABEL_213:
          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_255;
          }

          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_274;
          }

          __break(1u);
LABEL_216:
          if (!swift_dynamicCastMetatype())
          {
            goto LABEL_258;
          }

          if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            __break(1u);
          }

          else if (*&v4 > -129.0)
          {
            if (*&v4 < 128.0)
            {
              LOBYTE(v23) = *&v4;
              goto LABEL_92;
            }

            goto LABEL_531;
          }

          __break(1u);
LABEL_531:
          __break(1u);
LABEL_532:
          __break(1u);
LABEL_533:
          result = swift_dynamicCastMetatype();
          if (!result)
          {
            goto LABEL_559;
          }

          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_648;
          }

          if (v4 <= -1.0)
          {
LABEL_649:
            __break(1u);
LABEL_650:
            __break(1u);
            goto LABEL_651;
          }

          if (v4 < 4294967300.0)
          {
            goto LABEL_464;
          }

          __break(1u);
          goto LABEL_538;
        }

        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_236;
        }

        __break(1u);
        goto LABEL_166;
      }

      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_190;
      }

      __break(1u);
      goto LABEL_128;
    }

    if (v10 < -128)
    {
LABEL_298:
      __break(1u);
      goto LABEL_299;
    }

    if (v10 <= 127)
    {
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    v10 = LODWORD(v22[0]);
    v11 = SLODWORD(v22[0]);
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        if (v10 < -128)
        {
          __break(1u);
        }

        else if (v10 <= 127)
        {
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_333;
      }

      if (swift_dynamicCastMetatype())
      {
        if (v10 < -32768)
        {
          __break(1u);
        }

        else if (v10 < 0x8000)
        {
          goto LABEL_69;
        }

        __break(1u);
        goto LABEL_382;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_91;
      }

      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_147;
          }

          goto LABEL_477;
        }

        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype())
          {
            if ((v10 & 0x80000000) == 0)
            {
              if (!WORD1(v10))
              {
                goto LABEL_236;
              }

              goto LABEL_543;
            }

LABEL_542:
            __break(1u);
LABEL_543:
            __break(1u);
            goto LABEL_544;
          }

          if (!swift_dynamicCastMetatype())
          {
            if (swift_dynamicCastMetatype())
            {
              if ((v10 & 0x80000000) != 0)
              {
LABEL_587:
                __break(1u);
                goto LABEL_588;
              }

              goto LABEL_315;
            }

            goto LABEL_316;
          }

          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_274;
          }

          goto LABEL_571;
        }

        if ((v10 & 0x80000000) == 0)
        {
          if (v10 <= 0xFF)
          {
            goto LABEL_190;
          }

          goto LABEL_514;
        }

LABEL_513:
        __break(1u);
LABEL_514:
        __break(1u);
        goto LABEL_515;
      }

LABEL_110:
      *&v23 = v11;
      goto LABEL_92;
    }

LABEL_28:
    *&v23 = v11;
    goto LABEL_92;
  }

  if (swift_dynamicCast())
  {
    v10 = v23;
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_9;
    }

    if (!swift_dynamicCastMetatype())
    {
LABEL_78:
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_101;
      }

      if (v10 < -32768)
      {
        __break(1u);
        goto LABEL_400;
      }

      if (v10 < 0x8000)
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v10 < -128)
    {
      __break(1u);
      goto LABEL_365;
    }

    if (v10 <= 127)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_43:
  if (swift_dynamicCast())
  {
    v10 = v23;
    if (swift_dynamicCastMetatype())
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      __break(1u);
LABEL_47:
      if (swift_dynamicCastMetatype())
      {
        if (v10 >= 0xFFFFFFFF80000000)
        {
          if (v10 <= 0x7FFFFFFF)
          {
            goto LABEL_50;
          }

          goto LABEL_328;
        }

LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        if (swift_dynamicCastMetatype())
        {
          LOWORD(v23) = v11;
          goto LABEL_92;
        }

LABEL_378:
        if (swift_dynamicCastMetatype())
        {
          LODWORD(v23) = v11;
          goto LABEL_92;
        }

        goto LABEL_411;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_65;
      }

LABEL_87:
      if (swift_dynamicCastMetatype())
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_410;
      }

LABEL_105:
      if (swift_dynamicCastMetatype())
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          if (v10 <= 0xFF)
          {
            goto LABEL_108;
          }

          goto LABEL_439;
        }

LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
        goto LABEL_440;
      }

LABEL_135:
      if (swift_dynamicCastMetatype())
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          if (!(v10 >> 16))
          {
            goto LABEL_138;
          }

          goto LABEL_471;
        }

LABEL_470:
        __break(1u);
LABEL_471:
        __break(1u);
        goto LABEL_472;
      }

LABEL_178:
      if (swift_dynamicCastMetatype())
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v10))
          {
            goto LABEL_181;
          }

          goto LABEL_507;
        }

LABEL_506:
        __break(1u);
LABEL_507:
        __break(1u);
LABEL_508:
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_594;
        }

        v19 = v10;
        goto LABEL_372;
      }

LABEL_225:
      if (swift_dynamicCastMetatype())
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_227;
        }

LABEL_538:
        __break(1u);
        goto LABEL_539;
      }

LABEL_353:
      if (swift_dynamicCastMetatype())
      {
        v16 = v10;
LABEL_355:
        *v22 = v16;
        goto LABEL_92;
      }

      if (swift_dynamicCastMetatype())
      {
        v17 = v10;
LABEL_358:
        *v22 = v17;
        goto LABEL_92;
      }

      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_594;
      }

      v18 = v10;
LABEL_361:
      *v22 = v18;
      goto LABEL_92;
    }

LABEL_75:
    if (swift_dynamicCastMetatype())
    {
      if (v10 <= 0x7F)
      {
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (swift_dynamicCastMetatype())
    {
      if (!(v10 >> 15))
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_97;
    }

    goto LABEL_122;
  }

  if (swift_dynamicCast())
  {
    v11 = LOBYTE(v22[0]);
    if (!swift_dynamicCastMetatype())
    {
      LODWORD(v10) = v11;
      if (swift_dynamicCastMetatype())
      {
        if ((v11 & 0x80000000) == 0)
        {
          LOBYTE(v23) = v11;
          goto LABEL_92;
        }

        goto LABEL_416;
      }

      if (swift_dynamicCastMetatype())
      {
        LOWORD(v23) = v11;
        goto LABEL_92;
      }

      if (swift_dynamicCastMetatype())
      {
        LODWORD(v23) = v11;
        goto LABEL_92;
      }

      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          *&v23 = v11;
          goto LABEL_92;
        }

        goto LABEL_282;
      }

      goto LABEL_110;
    }

    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v10 = LOWORD(v22[0]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_21;
    }

    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_132;
    }

    if (v10 <= 0x7F)
    {
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_75;
  }

LABEL_82:
  if (swift_dynamicCast())
  {
    v10 = LODWORD(v22[0]);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_21;
    }

    if (swift_dynamicCastMetatype())
    {
      if (v10 > 0x7F)
      {
        __break(1u);
        goto LABEL_87;
      }

      goto LABEL_54;
    }

    goto LABEL_160;
  }

LABEL_97:
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v4 = *&v23;
      if (swift_dynamicCastMetatype())
      {
        if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v4 > -9.22337204e18)
        {
          if (v4 < 9.22337204e18)
          {
            goto LABEL_118;
          }

          goto LABEL_476;
        }

        __break(1u);
LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
LABEL_478:
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_594;
        }

        v18 = v10;
        goto LABEL_361;
      }

      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v4 > -32769.0)
            {
              if (v4 < 32768.0)
              {
                goto LABEL_232;
              }

              goto LABEL_541;
            }

LABEL_540:
            __break(1u);
LABEL_541:
            __break(1u);
            goto LABEL_542;
          }

LABEL_539:
          __break(1u);
          goto LABEL_540;
        }

LABEL_267:
        if (swift_dynamicCastMetatype())
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v4 > -2147483650.0)
          {
            if (v4 < 2147483650.0)
            {
              goto LABEL_271;
            }

            goto LABEL_570;
          }

          __break(1u);
LABEL_570:
          __break(1u);
LABEL_571:
          __break(1u);
          goto LABEL_572;
        }

        goto LABEL_308;
      }

      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v4 > -129.0)
      {
        if (v4 < 128.0)
        {
          goto LABEL_186;
        }

        goto LABEL_512;
      }

      __break(1u);
LABEL_512:
      __break(1u);
      goto LABEL_513;
    }

    if (!swift_dynamicCast())
    {
LABEL_166:
      if (swift_dynamicCast())
      {
        v4 = *&v23;
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_245;
        }

        if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v4 > -9.22337204e18)
        {
          if (v4 >= 9.22337204e18)
          {
            __break(1u);
LABEL_172:
            if (!swift_dynamicCastMetatype())
            {
              if (swift_dynamicCastMetatype())
              {
                goto LABEL_58;
              }

              if (swift_dynamicCastMetatype())
              {
                goto LABEL_147;
              }

              if (!swift_dynamicCastMetatype())
              {
                if (!swift_dynamicCastMetatype())
                {
LABEL_390:
                  if (!swift_dynamicCastMetatype())
                  {
                    if (swift_dynamicCastMetatype())
                    {
                      goto LABEL_315;
                    }

                    if (swift_dynamicCastMetatype())
                    {
                      v14 = v10;
                      goto LABEL_318;
                    }

LABEL_485:
                    if (swift_dynamicCastMetatype())
                    {
                      v15 = v10;
                      goto LABEL_321;
                    }

                    goto LABEL_520;
                  }

LABEL_274:
                  LODWORD(v23) = v10;
                  goto LABEL_92;
                }

LABEL_236:
                LOWORD(v23) = v10;
                goto LABEL_92;
              }

              if (v10 <= 0xFF)
              {
                goto LABEL_190;
              }

              __break(1u);
              goto LABEL_178;
            }

LABEL_91:
            LODWORD(v23) = v10;
            goto LABEL_92;
          }

LABEL_118:
          v22[0] = v4;
          goto LABEL_92;
        }

        __break(1u);
LABEL_524:
        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (*&v4 > -1.0)
            {
              if (*&v4 < 1.8447e19)
              {
                *&v23 = *&v4;
                goto LABEL_92;
              }

              goto LABEL_647;
            }

LABEL_646:
            __break(1u);
LABEL_647:
            __break(1u);
LABEL_648:
            __break(1u);
            goto LABEL_649;
          }

LABEL_645:
          __break(1u);
          goto LABEL_646;
        }

        goto LABEL_553;
      }

LABEL_200:
      if (!swift_dynamicCast())
      {
        goto LABEL_594;
      }

      v4 = *&v23;
      if (swift_dynamicCastMetatype())
      {
        if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_544:
          __break(1u);
          goto LABEL_545;
        }

        if (v4 <= -9.22337204e18)
        {
LABEL_545:
          __break(1u);
          goto LABEL_546;
        }

        if (v4 < 9.22337204e18)
        {
          goto LABEL_118;
        }

        __break(1u);
        goto LABEL_206;
      }

      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_588:
            __break(1u);
            goto LABEL_589;
          }

          if (v4 <= -32769.0)
          {
LABEL_589:
            __break(1u);
            goto LABEL_590;
          }

          if (v4 < 32768.0)
          {
            goto LABEL_232;
          }

          __break(1u);
          goto LABEL_327;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_601:
            __break(1u);
            goto LABEL_602;
          }

          if (v4 <= -2147483650.0)
          {
LABEL_602:
            __break(1u);
            goto LABEL_603;
          }

          if (v4 < 2147483650.0)
          {
            goto LABEL_271;
          }

          __break(1u);
          goto LABEL_378;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_611:
            __break(1u);
            goto LABEL_612;
          }

          if (v4 <= -9.22337204e18)
          {
LABEL_612:
            __break(1u);
            goto LABEL_613;
          }

          if (v4 < 9.22337204e18)
          {
            goto LABEL_312;
          }

          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          if (swift_dynamicCastMetatype())
          {
            *&v23 = v11;
            goto LABEL_92;
          }

LABEL_440:
          if (swift_dynamicCastMetatype())
          {
            v14 = v10;
            goto LABEL_318;
          }

LABEL_472:
          if (swift_dynamicCastMetatype())
          {
            v15 = v10;
            goto LABEL_321;
          }

          goto LABEL_508;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_621:
            __break(1u);
            goto LABEL_622;
          }

          if (v4 <= -1.0)
          {
LABEL_622:
            __break(1u);
            goto LABEL_623;
          }

          if (v4 < 1.84467441e19)
          {
            goto LABEL_369;
          }

          __break(1u);
          goto LABEL_438;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_631:
            __break(1u);
            goto LABEL_632;
          }

          if (v4 <= -1.0)
          {
LABEL_632:
            __break(1u);
            goto LABEL_633;
          }

          if (v4 < 256.0)
          {
            goto LABEL_404;
          }

          __break(1u);
          goto LABEL_470;
        }

        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_641:
            __break(1u);
            goto LABEL_642;
          }

          if (v4 <= -1.0)
          {
LABEL_642:
            __break(1u);
            goto LABEL_643;
          }

          if (v4 < 65536.0)
          {
            goto LABEL_432;
          }

          __break(1u);
          goto LABEL_506;
        }

        goto LABEL_533;
      }

      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v4 > -129.0)
        {
          if (v4 < 128.0)
          {
            goto LABEL_186;
          }

          __break(1u);
          goto LABEL_280;
        }

LABEL_573:
        __break(1u);
        goto LABEL_574;
      }

LABEL_572:
      __break(1u);
      goto LABEL_573;
    }

    LODWORD(v4) = v22[0];
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_216;
    }

    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (*&v4 > -9.2234e18)
    {
      if (*&v4 < 9.2234e18)
      {
        *&v23 = *&v4;
        goto LABEL_92;
      }

      goto LABEL_495;
    }

    __break(1u);
LABEL_495:
    __break(1u);
    goto LABEL_496;
  }

  v10 = v23;
  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_239;
      }

      if (!(v10 >> 15))
      {
LABEL_32:
        LOWORD(v22[0]) = v10;
        goto LABEL_92;
      }

      __break(1u);
      goto LABEL_197;
    }

    if (v10 <= 0x7F)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_153:
    if (swift_dynamicCastMetatype())
    {
      if ((v10 & 0x80000000) != 0)
      {
        __break(1u);
LABEL_488:
        result = swift_dynamicCastMetatype();
        if (result)
        {
          if ((LODWORD(v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (*&v4 > -1.0)
            {
              if (*&v4 < 4295000000.0)
              {
                LODWORD(v23) = *&v4;
                goto LABEL_92;
              }

              goto LABEL_637;
            }

LABEL_636:
            __break(1u);
LABEL_637:
            __break(1u);
            goto LABEL_638;
          }

LABEL_635:
          __break(1u);
          goto LABEL_636;
        }

        goto LABEL_524;
      }

      if (v10 <= 0xFF)
      {
        goto LABEL_190;
      }

      __break(1u);
      goto LABEL_157;
    }

LABEL_197:
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_242;
    }

    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_236;
    }

    __break(1u);
    goto LABEL_200;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_101:
  if (swift_dynamicCastMetatype())
  {
    if (v10 >= 0xFFFFFFFF80000000)
    {
      if (v10 <= 0x7FFFFFFF)
      {
        goto LABEL_50;
      }

      __break(1u);
      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_428;
  }

LABEL_128:
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_65;
  }

  if (swift_dynamicCastMetatype())
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_89;
    }

    __break(1u);
LABEL_132:
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_172;
    }

    if ((v10 & 0x8000) != 0)
    {
      __break(1u);
      goto LABEL_135;
    }

    goto LABEL_69;
  }

  if (swift_dynamicCastMetatype())
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 <= 0xFF)
      {
        goto LABEL_108;
      }

      __break(1u);
      goto LABEL_225;
    }

    goto LABEL_532;
  }

  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_227;
        }

        __break(1u);
      }

      goto LABEL_353;
    }

    if (v10 < 0)
    {
LABEL_583:
      __break(1u);
      goto LABEL_584;
    }

    if (!HIDWORD(v10))
    {
      goto LABEL_181;
    }

    __break(1u);
LABEL_308:
    if (swift_dynamicCastMetatype())
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_584:
        __break(1u);
        goto LABEL_585;
      }

      if (v4 <= -9.22337204e18)
      {
LABEL_585:
        __break(1u);
        goto LABEL_586;
      }

      if (v4 >= 9.22337204e18)
      {
LABEL_586:
        __break(1u);
        goto LABEL_587;
      }

      goto LABEL_312;
    }

LABEL_365:
    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_598:
        __break(1u);
        goto LABEL_599;
      }

      if (v4 <= -1.0)
      {
LABEL_599:
        __break(1u);
        goto LABEL_600;
      }

      if (v4 >= 1.84467441e19)
      {
LABEL_600:
        __break(1u);
        goto LABEL_601;
      }

      goto LABEL_369;
    }

LABEL_400:
    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_608:
        __break(1u);
        goto LABEL_609;
      }

      if (v4 <= -1.0)
      {
LABEL_609:
        __break(1u);
        goto LABEL_610;
      }

      if (v4 >= 256.0)
      {
LABEL_610:
        __break(1u);
        goto LABEL_611;
      }

      goto LABEL_404;
    }

LABEL_428:
    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_618:
        __break(1u);
        goto LABEL_619;
      }

      if (v4 <= -1.0)
      {
LABEL_619:
        __break(1u);
        goto LABEL_620;
      }

      if (v4 >= 65536.0)
      {
LABEL_620:
        __break(1u);
        goto LABEL_621;
      }

      goto LABEL_432;
    }

    result = swift_dynamicCastMetatype();
    if (result)
    {
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_628:
        __break(1u);
        goto LABEL_629;
      }

      if (v4 <= -1.0)
      {
LABEL_629:
        __break(1u);
        goto LABEL_630;
      }

      if (v4 >= 4294967300.0)
      {
LABEL_630:
        __break(1u);
        goto LABEL_631;
      }

      goto LABEL_464;
    }

LABEL_496:
    result = swift_dynamicCastMetatype();
    if (!result)
    {
      goto LABEL_564;
    }

    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v4 > -1.0)
      {
        if (v4 < 1.84467441e19)
        {
          goto LABEL_500;
        }

        goto LABEL_640;
      }

LABEL_639:
      __break(1u);
LABEL_640:
      __break(1u);
      goto LABEL_641;
    }

LABEL_638:
    __break(1u);
    goto LABEL_639;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (!(v10 >> 16))
    {
      goto LABEL_138;
    }

    __break(1u);
    goto LABEL_267;
  }

LABEL_558:
  __break(1u);
LABEL_559:
  result = swift_dynamicCastMetatype();
  if (!result)
  {
    goto LABEL_564;
  }

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_652;
  }

  if (v4 > -1.0)
  {
    if (v4 >= 1.84467441e19)
    {
      __break(1u);
LABEL_564:
      if (swift_dynamicCastMetatype())
      {
        *v22 = v4;
        goto LABEL_92;
      }

      if (swift_dynamicCastMetatype())
      {
        v17 = v4;
        goto LABEL_358;
      }

      goto LABEL_576;
    }

LABEL_500:
    v22[0] = v4;
    goto LABEL_92;
  }

LABEL_653:
  __break(1u);
  return result;
}

void AXAppNameForBundleId_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_19159B000, v2, v3, "Error in getting app name: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void soft_AXSettingsLocalizedStringForKey_cold_1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  AXIsHiddenAppWithBundleId_cold_1(v1);
}

void AXIsHiddenAppWithBundleId_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_19159B000, v2, v3, "Error in getting protection mode: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void UIAXAppendValidationError_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_19159B000, log, OS_LOG_TYPE_ERROR, "%@ : %@", &v3, 0x16u);
}

void __UIAccessibilityHandleValidationErrorWithDescription_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19159B000, a2, OS_LOG_TYPE_ERROR, "validation error: %{public}@", &v2, 0xCu);
}

void UIAccessibilitySymbolWithName_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19159B000, a2, OS_LOG_TYPE_ERROR, "Error locating symbol %{public}@", &v2, 0xCu);
}

void AXPerformSafeBlockWithErrorHandler_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19159B000, log, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
}

void AXPerformSafeBlockWithErrorHandler_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_19159B000, log, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}