unint64_t sub_2226B21E4()
{
  result = qword_27D013B48;
  if (!qword_27D013B48)
  {
    type metadata accessor for FBSOpenApplicationErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B48);
  }

  return result;
}

uint64_t JSONObject.intEnum<A>(or:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_22273971C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = sub_22273806C();
  if (v12)
  {
    return a1(v11);
  }

  v15[1] = v11;
  sub_22273934C();
  v13 = *(a2 - 8);
  if ((*(v13 + 48))(v10, 1, a2) == 1)
  {
    v11 = (*(v8 + 8))(v10, v7);
    return a1(v11);
  }

  return (*(v13 + 32))(a4, v10, a2);
}

uint64_t JSONObject.intEnumOrNil<A>()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_22273806C();
  if ((v5 & 1) == 0)
  {
    return sub_22273934C();
  }

  v6 = *(*(a1 - 8) + 56);

  return v6(a3, 1, 1, a1);
}

uint64_t JSONObject.intEnum<A>()@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22273971C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = sub_22273806C();
  if (v10)
  {
    v11 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v12 = MEMORY[0x277D84F90];
    *v13 = 0x65756C6156776172;
    v13[1] = 0xE800000000000000;
    v13[2] = a1;
    v13[3] = v12;
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D22540], v11);
    return swift_willThrow();
  }

  v14 = v9;
  v22 = v9;
  sub_22273934C();
  v15 = *(a1 - 8);
  if ((*(v15 + 48))(v8, 1, a1) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v16 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v18 = v17;
    v22 = v14;
    *v17 = sub_222739AFC();
    v18[1] = v19;
    v18[2] = a1;
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D22520], v16);
    return swift_willThrow();
  }

  return (*(v15 + 32))(a3, v8, a1);
}

uint64_t sub_2226B270C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2227381BC();
  MEMORY[0x28223BE20](v6 - 8);
  result = sub_2226B2C78(a1, a2, 25705, 0xE200000000000000);
  if (!v8)
  {
    v9 = sub_22273916C();
    v10 = [v3 valueForEntitlement_];

    if (v10)
    {
      sub_22273977C();
      swift_unknownObjectRelease();
      sub_22269457C(v13, v14);
      sub_22262BF70(v14, v13);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
        return v12;
      }

      if (qword_281312E28 != -1)
      {
        swift_once();
      }

      v11 = sub_222738F6C();
      __swift_project_value_buffer(v11, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      sub_22273817C();
      sub_22273819C();
      sub_2227381CC();
      sub_222738C6C();

      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2226B29BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2227381BC();
  MEMORY[0x28223BE20](v6 - 8);
  result = sub_2226B2C78(a1, a2, 0x6E6F6973726576, 0xE700000000000000);
  if (!v8)
  {
    v9 = sub_22273916C();
    v10 = [v3 valueForEntitlement_];

    if (v10)
    {
      sub_22273977C();
      swift_unknownObjectRelease();
      sub_22269457C(v13, v14);
      sub_22262BF70(v14, v13);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
        return v12;
      }

      if (qword_281312E28 != -1)
      {
        swift_once();
      }

      v11 = sub_222738F6C();
      __swift_project_value_buffer(v11, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      sub_22273817C();
      sub_22273819C();
      sub_2227381CC();
      sub_222738C6C();

      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2226B2C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2227381BC();
  MEMORY[0x28223BE20](v9 - 8);
  if (!a2)
  {
    return a1;
  }

  v10 = sub_22273916C();
  v11 = [v4 valueForEntitlement_];

  if (v11)
  {
    sub_22273977C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
    if (swift_dynamicCast())
    {
      if (!*(v19 + 16) || (v12 = sub_222688818(a1, a2), (v13 & 1) == 0))
      {
LABEL_14:

        goto LABEL_15;
      }

      sub_22262BF70(*(v19 + 56) + 32 * v12, &v22);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B50, &unk_2227452B0);
      if (swift_dynamicCast())
      {
        if (*(v20 + 16))
        {
          v14 = sub_222688818(a3, a4);
          if (v15)
          {
            a1 = *(*(v20 + 56) + 16 * v14);

            return a1;
          }
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    sub_222672BA0(&v22);
  }

LABEL_15:
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v16 = sub_222738F6C();
  __swift_project_value_buffer(v16, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  v17 = MEMORY[0x277D837D0];
  *(&v23 + 1) = MEMORY[0x277D837D0];
  *&v22 = a3;
  *(&v22 + 1) = a4;

  sub_22273816C();
  sub_222672BA0(&v22);
  sub_22273819C();
  *(&v23 + 1) = v17;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  sub_22273816C();
  sub_222672BA0(&v22);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  return 0;
}

uint64_t sub_2226B3064()
{
  v1 = sub_22273916C();
  v2 = [v0 valueForEntitlement_];

  if (v2)
  {
    sub_22273977C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_222672BA0(v7);
  }

  return 0;
}

uint64_t sub_2226B31E8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_2227381BC();
  MEMORY[0x28223BE20](v10 - 8);
  swift_getErrorValue();
  v11 = sub_2226B1280(v19, v20);
  a2();

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v12 = sub_222738F6C();
  __swift_project_value_buffer(v12, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v18 = MEMORY[0x277D840E8];
  v16[0] = a4;
  v16[1] = a5;
  v17 = a6;
  sub_22273816C();
  sub_222672BA0(v16);
  sub_22273819C();
  swift_getErrorValue();
  v18 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222672BA0(v16);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t sub_2226B34A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000025;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "failedToGetStore";
  }

  else
  {
    v4 = "as_restore_deeplink";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000025;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "as_restore_deeplink";
  }

  else
  {
    v7 = "failedToGetStore";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222739B4C();
  }

  return v9 & 1;
}

uint64_t sub_2226B354C()
{
  sub_222739C5C();
  sub_22273924C();

  return sub_222739C8C();
}

uint64_t sub_2226B35CC(uint64_t a1)
{
  sub_22273924C();
}

uint64_t sub_2226B3638()
{
  sub_222739C5C();
  sub_22273924C();

  return sub_222739C8C();
}

uint64_t sub_2226B36B4@<X0>(char *a2@<X8>)
{
  v3 = sub_222739A8C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2226B3714(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000025;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "as_restore_deeplink";
  }

  else
  {
    v3 = "failedToGetStore";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_2226B3758()
{
  result = qword_27D013B58;
  if (!qword_27D013B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B58);
  }

  return result;
}

const char *sub_2226B37C0()
{
  if (*v0)
  {
    return "pause_resume_offer_button_label_2024E";
  }

  else
  {
    return "as_restore_deeplink";
  }
}

uint64_t sub_2226B37F0()
{
  v0 = sub_22273902C();
  if (*(v0 + 16) && (v1 = sub_222688818(0xD000000000000012, 0x8000000222749F70), (v2 & 1) != 0))
  {
    sub_22262BF70(*(v0 + 56) + 32 * v1, v5);

    sub_22269457C(v5, v6);
    sub_22262BF70(v6, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v6);
      return v4;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
  }

  return MEMORY[0x277D84FA0];
}

JSValue __swiftcall NSHTTPCookie.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = sub_2227373BC();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  result.super.isa = [v11 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_15;
  }

  isa = result.super.isa;
  v14 = [v2 name];
  v15 = sub_22273919C();
  v17 = v16;

  v49 = v15;
  v50 = v17;
  v18 = [v11 valueWithObject:sub_222739B6C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2227396AC();
  v19 = [v2 value];
  v20 = sub_22273919C();
  v22 = v21;

  v49 = v20;
  v50 = v22;
  v23 = [v11 valueWithObject:sub_222739B6C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v23)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v11;
  sub_2227396AC();
  v25 = [v2 expiresDate];
  v27 = v47;
  v26 = v48;
  if (v25)
  {
    v28 = v25;
    sub_22273739C();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v26 + 56))(v27, v29, 1, v9);
  sub_2226B3DD0(v27, v8);
  if ((*(v26 + 48))(v8, 1, v9) == 1)
  {
    sub_2226B3E40(v8);
    v30 = in.super.isa;
    v31 = 0;
  }

  else
  {
    v32 = v46;
    (*(v26 + 32))(v46, v8, v9);
    v33 = in.super.isa;
    v31 = sub_222739B2C();
    (*(v26 + 8))(v32, v9);
  }

  v34 = [v24 valueWithObject:v31 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v34)
  {
    goto LABEL_17;
  }

  sub_2227396AC();
  v35 = [v2 domain];
  v36 = sub_22273919C();
  v38 = v37;

  v49 = v36;
  v50 = v38;
  v39 = [v24 valueWithObject:sub_222739B6C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v39)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2227396AC();
  v40 = [v2 path];
  v41 = sub_22273919C();
  v43 = v42;

  v49 = v41;
  v50 = v43;
  v44 = [v24 valueWithObject:sub_222739B6C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v44)
  {
    sub_2227396AC();
    return isa;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2226B3DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226B3E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2226B3EFC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22273993C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_2226B4644(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_2226B41FC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22273993C();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_2226B4BD0(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2226B44FC()
{
  v3 = sub_222739AFC();
  MEMORY[0x223DBE5D0](46, 0xE100000000000000);
  v0 = sub_222739AFC();
  MEMORY[0x223DBE5D0](v0);

  MEMORY[0x223DBE5D0](46, 0xE100000000000000);
  v1 = sub_222739AFC();
  MEMORY[0x223DBE5D0](v1);

  return v3;
}

unsigned __int8 *sub_2226B4610@<X0>(uint64_t *a1@<X0>, unsigned __int8 **a2@<X8>)
{
  result = sub_2226B563C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

unsigned __int8 *sub_2226B4644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22273931C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2226B5154(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22273993C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_2226B4BD0(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_22273931C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2226B5154(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22273993C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2226B5154(uint64_t a1, unint64_t a2)
{
  v2 = sub_22273932C();
  v6 = sub_2226B51D4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2226B51D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22273973C();
    if (!v9 || (v10 = v9, v11 = sub_2226B532C(v9, 0), v12 = sub_2226B53A0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22273923C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22273923C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22273993C();
LABEL_4:

  return sub_22273923C();
}

void *sub_2226B532C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B68, &qword_2227432E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_2226B53A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2226B55C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2227392DC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22273993C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2226B55C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2227392AC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2226B55C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2227392EC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DBE600](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_2226B563C(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  sub_2226B1104();
  v3 = sub_22273975C();

  v5 = v3[2];
  if (v5 == 2)
  {
    v6 = v3[4];
    v15 = v3[5];

    v16 = sub_2226B3EFC(v6, v15);
    if (v3[2] < 2uLL)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v17)
    {
      v6 = 0;
    }

    else
    {
      v6 = v16;
    }

    v18 = v3[6];
    v19 = v3[7];

    sub_2226B3EFC(v18, v19);
    return v6;
  }

  if (v5 != 3)
  {

    return 0;
  }

  v6 = v3[4];
  v2 = v3[5];
  v7 = HIBYTE(v2) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v6 = 0;
    goto LABEL_74;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_82;
    }

    for (result = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_22273993C())
    {
      v10 = *result;
      if (v10 == 43)
      {
        if (v8 < 1)
        {
          goto LABEL_85;
        }

        v11 = v8 - 1;
        if (v8 != 1)
        {
          v6 = 0;
          if (!result)
          {
            goto LABEL_68;
          }

          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v11)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v10 == 45)
      {
        if (v8 < 1)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v11 = v8 - 1;
        if (v8 != 1)
        {
          v6 = 0;
          if (!result)
          {
            goto LABEL_68;
          }

          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v11)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else if (v8)
      {
        v6 = 0;
        if (!result)
        {
LABEL_68:
          LOBYTE(v11) = 0;
          goto LABEL_70;
        }

        while (1)
        {
          v29 = *result - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v6;
          if ((v6 * 10) >> 64 != (10 * v6) >> 63)
          {
            break;
          }

          v6 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          ++result;
          if (!--v8)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_69:
      v6 = 0;
      LOBYTE(v11) = 1;
LABEL_70:
      v34 = v11;
      while (1)
      {
        if (v34)
        {
          v6 = 0;
        }

        if (v3[2] >= 2uLL)
        {
          break;
        }

LABEL_79:
        __break(1u);
LABEL_80:

        v6 = sub_2226B4644(v6, v2, 10);
        v34 = v38;
      }

LABEL_74:
      v35 = v3[6];
      v2 = v3[7];

      sub_2226B3EFC(v35, v2);
      if (v3[2] >= 3uLL)
      {
        v36 = v3[8];
        v37 = v3[9];

        sub_2226B3EFC(v36, v37);
        return v6;
      }

      __break(1u);
LABEL_82:
      ;
    }
  }

  v39 = v3[4];
  v40 = v2 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (!v7)
      {
        goto LABEL_69;
      }

      v6 = 0;
      v31 = &v39;
      do
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          goto LABEL_69;
        }

        v33 = 10 * v6;
        if ((v6 * 10) >> 64 != (10 * v6) >> 63)
        {
          goto LABEL_69;
        }

        v6 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          goto LABEL_69;
        }

        v31 = (v31 + 1);
        --v7;
      }

      while (v7);
      goto LABEL_68;
    }

    if (v7)
    {
      v11 = v7 - 1;
      if (v7 != 1)
      {
        v6 = 0;
        v20 = &v39 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v6;
          if ((v6 * 10) >> 64 != (10 * v6) >> 63)
          {
            break;
          }

          v6 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v11)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_69;
    }

    goto LABEL_84;
  }

  if (v7)
  {
    v11 = v7 - 1;
    if (v7 != 1)
    {
      v6 = 0;
      v26 = &v39 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v6;
        if ((v6 * 10) >> 64 != (10 * v6) >> 63)
        {
          break;
        }

        v6 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v11)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_86:
  __break(1u);
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2226B5A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2226B5ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSClientFeature.OSVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JSClientFeature.OSVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_2226B5BA0()
{
  result = qword_27D013B70;
  if (!qword_27D013B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B70);
  }

  return result;
}

unint64_t sub_2226B5C04()
{
  result = qword_27D013B78;
  if (!qword_27D013B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013B78);
  }

  return result;
}

uint64_t sub_2226B5C68()
{
  v0 = [objc_opt_self() processInfo];
  v1 = sub_2226B563C(908998705, 0xE400000000000000);
  v3 = v2;
  v5 = v4;
  sub_2226B563C(908997937, 0xE400000000000000);
  sub_2226B563C(3550770, 0xE300000000000000);
  sub_2226B563C(908998705, 0xE400000000000000);
  sub_2226B563C(908996913, 0xE400000000000000);
  v16[0] = 0xD000000000000017;
  v16[1] = 0x8000000222749F90;
  v16[2] = v1;
  v16[3] = v3;
  v16[4] = v5;
  v6 = MEMORY[0x277D84F90];
  if (v1 != -1 || v3 != -1 || v5 != -1)
  {

    v15[0] = v1;
    v15[1] = v3;
    v15[2] = v5;
    if ([v0 isOperatingSystemAtLeastVersion_])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15[0] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2226AE82C(0, *(v6 + 16) + 1, 1);
        v6 = v15[0];
      }

      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v10 = v8 + 1;
      if (v8 >= v9 >> 1)
      {
        v13 = *(v6 + 16);
        v14 = v8 + 1;
        sub_2226AE82C((v9 > 1), v8 + 1, 1);
        v8 = v13;
        v10 = v14;
        v6 = v15[0];
      }

      *(v6 + 16) = v10;
      v11 = (v6 + 40 * v8);
      v11[4] = 0xD000000000000017;
      v11[5] = 0x8000000222749F90;
      v11[6] = v1;
      v11[7] = v3;
      v11[8] = v5;
    }

    else
    {
    }
  }

  sub_2226B6050(v16);
  return v6;
}

uint64_t sub_2226B5E2C(uint64_t a1)
{
  v1 = sub_2226B5C68();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F98];
LABEL_17:

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B80, &unk_222743460);
    *&v27 = v6;
    sub_22269457C(&v27, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BC94(v26, 0x6546746E65696C63, 0xEE00736572757461, isUniquelyReferenced_nonNull_native);
    return a1;
  }

  v4 = 0;
  v5 = (v1 + 40);
  v6 = MEMORY[0x277D84F98];
  while (v4 < *(v2 + 16))
  {
    v9 = *(v5 - 1);
    v8 = *v5;

    v10 = swift_isUniquelyReferenced_nonNull_native();
    *&v27 = v6;
    v11 = sub_222688818(v9, v8);
    v13 = v6[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v6[3] < v16)
    {
      sub_22268A60C(v16, v10);
      v11 = sub_222688818(v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (v10)
    {
      goto LABEL_11;
    }

    v22 = v11;
    sub_22268CF2C();
    v11 = v22;
    if (v17)
    {
LABEL_3:
      v7 = v11;

      v6 = v27;
      *(*(v27 + 56) + v7) = 1;
      goto LABEL_4;
    }

LABEL_12:
    v6 = v27;
    *(v27 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v6[6] + 16 * v11);
    *v19 = v9;
    v19[1] = v8;
    *(v6[7] + v11) = 1;
    v20 = v6[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_20;
    }

    v6[2] = v21;
LABEL_4:
    ++v4;
    v5 += 5;
    if (v3 == v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_222739B8C();
  __break(1u);
  return result;
}

char *sub_2226B61F4(void *a1, void *a2)
{
  v5 = sub_222738FDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v9 = MEMORY[0x223DBDAF0]();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 2) = a2;
    *(v11 + 3) = v10;
    v12 = a1;
    v13 = a2;

    sub_222738FBC();
    if (v2)
    {
    }

    else
    {
      v11 = sub_222738FCC();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    v11 = "solve fetch promise, reason: ";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_2226B63D8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v31 = a1;
  v32 = a5;
  v30 = a3;
  v7 = sub_222737FDC();
  v8 = *(v7 - 8);
  v29 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B98, &qword_2227434B8);
  v15 = a4;
  v16 = sub_222738F2C();
  v17 = sub_22273946C();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2227434B0;
  v18[5] = v14;
  v28 = v16;
  v18[6] = v16;

  sub_2226D4E54(0, 0, v13, &unk_2227434C0, v18);

  v19 = *(v8 + 16);
  v19(v10, a2, v7);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = v20 + v29;
  v29 = swift_allocObject();
  v22 = *(v8 + 32);
  v22(v29 + v20, v10, v7);
  v19(v10, v30, v7);
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v22(v24 + v20, v10, v7);
  v25 = v31;
  *(v24 + v23) = v31;
  v33[3] = sub_2227387BC();
  v33[4] = MEMORY[0x277D22078];
  v33[0] = v32;
  v26 = v25;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_2226B6748(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2226B6768, 0, 0);
}

uint64_t sub_2226B6768()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution), *(*(v0 + 24) + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2226B6810;

  return sub_2226A18B0();
}

uint64_t sub_2226B6810(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2226B6910, 0, 0);
}

void sub_2226B6934(uint64_t *a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227412F0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  *(v4 + 32) = v3;

  v5 = sub_222737FCC();
}

char *sub_2226B6C14(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_222738FDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v11 = MEMORY[0x223DBDAF0]();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v12;
    v14 = a1;
    v15 = a2;

    sub_222738FBC();
    if (v3)
    {
    }

    else
    {
      v13 = sub_222738FCC();

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    v13 = "pDistributionObject";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_2226B6E10(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v34 = a3;
  v35 = a6;
  v33 = a1;
  v9 = sub_222737FDC();
  v10 = *(v9 - 8);
  v32 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B90, &qword_222743498);
  v17 = a4;

  v18 = sub_222738F2C();
  v19 = sub_22273946C();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_222743490;
  v20[5] = v16;
  v31 = v18;
  v20[6] = v18;

  sub_2226D4E54(0, 0, v15, &unk_2227434A0, v20);

  v30 = *(v10 + 16);
  v30(v12, a2, v9);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = (v32 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v29 = *(v10 + 32);
  v32 = v23;
  v29(v23 + v21, v12, v9);
  v25 = v33;
  v24 = v34;
  *(v23 + v22) = v33;
  v30(v12, v24, v9);
  v26 = swift_allocObject();
  v29(v26 + v21, v12, v9);
  *(v26 + v22) = v25;
  v36[3] = sub_2227387BC();
  v36[4] = MEMORY[0x277D22078];
  v36[0] = v35;
  v27 = v25;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_2226B71A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2226B71C8, 0, 0);
}

uint64_t sub_2226B71C8()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution), *(v0[3] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution + 24));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_2226B7278;
  v2 = v0[4];

  return sub_2226A1DA8(v2);
}

uint64_t sub_2226B7278(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2226B7378, 0, 0);
}

void sub_2226B739C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_2227381BC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2227412F0;
  v8 = *(v6 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v15 = MEMORY[0x277D84F90];
    sub_22273997C();
    v10 = (v6 + 48);
    do
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      v10 += 3;

      sub_2226A10E4(a3, v11, v12, v13);

      sub_22273995C();
      sub_22273998C();
      sub_22273999C();
      sub_22273996C();
      --v8;
    }

    while (v8);
    v9 = v15;
  }

  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A18, &unk_222742D00);
  *(v7 + 32) = v9;
  v14 = sub_222737FCC();
}

void sub_2226B7720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_222738D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v8 = swift_allocObject();
  v13 = xmmword_2227412F0;
  *(v8 + 16) = xmmword_2227412F0;
  swift_getErrorValue();
  sub_222739BEC();
  sub_222738D3C();
  sub_222738D0C();
  (*(v5 + 8))(v7, v4);
  v9 = v15;
  v10 = __swift_project_boxed_opaque_existential_1(v14, v15);
  *(v8 + 56) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v10, v9);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v12 = sub_222737FCC();
}

unint64_t sub_2226B7C58()
{
  result = qword_281312B48;
  if (!qword_281312B48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312B48);
  }

  return result;
}

unint64_t sub_2226B7CC0()
{
  result = qword_27D013EE0;
  if (!qword_27D013EE0)
  {
    sub_222738D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013EE0);
  }

  return result;
}

uint64_t sub_2226B7D38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_2226B71A4(a1, v5, v4);
}

uint64_t sub_2226B7DE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

void sub_2226B7EC0(uint64_t *a1)
{
  v3 = *(sub_222737FDC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226B739C(a1, v1 + v4, v5);
}

uint64_t objectdestroy_4Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2226B7FE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22266BE24;

  return sub_2226B6748(a1, v4);
}

uint64_t sub_2226B8088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D2C38(a1, v4, v5, v6, v7, v8);
}

void sub_2226B8164(uint64_t *a1)
{
  sub_222737FDC();

  sub_2226B6934(a1);
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2226B8270(uint64_t a1)
{
  v3 = *(sub_222737FDC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_2226B7720(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2226B8334(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = &a1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSAppleSiliconObject_platform];
  v6 = *(v5 + 3);
  v7 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = a1;
  LOBYTE(a3) = a3(v6, v7);

  return a3 & 1;
}

uint64_t sub_2226B8450(void *a1)
{
  v2 = v1;
  v4 = sub_222738FDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_222738FBC();
  if (!v1)
  {
    v2 = sub_222738FCC();
    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

void sub_2226B855C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2227412F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014640, &qword_222745960);
  v4 = sub_222739B6C();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  if (v5)
  {
    *(v3 + 56) = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    *(v3 + 32) = v5;
    v6 = sub_222737FCC();
    if (v1)
    {

      if (qword_281312E28 != -1)
      {
        swift_once();
      }

      v7 = sub_222738F6C();
      __swift_project_value_buffer(v7, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_22273813C();
      sub_222738C6C();
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_2226B8AD0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v2 = type metadata accessor for MetricsTopicProvider(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222738BBC();
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_22273858C();
  sub_222738C9C();
  sub_2226B92B8();
  sub_222738C9C();
  v8 = v66[0];
  v57 = v66[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137B0, &unk_222742AD0);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132A0, &unk_222742690);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
  sub_222738C9C();
  v54 = v5;
  v55 = v7;
  sub_222738C9C();
  sub_222738C9C();
  v9 = v66[0];
  v10 = v66[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
  sub_222738C9C();
  v56 = [objc_allocWithZone(ASCJSClientObject) initWithAccountStore_];
  sub_22266BCCC(v75, v66);
  v11 = type metadata accessor for JSModernLocObject();
  v12 = objc_allocWithZone(v11);
  sub_22266BCCC(v66, v12 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer);
  v72.receiver = v12;
  v72.super_class = v11;
  v53 = objc_msgSendSuper2(&v72, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_22266BCCC(v77, v66);
  v13 = type metadata accessor for JSStoreMetricsObject();
  v14 = objc_allocWithZone(v13);
  sub_22266BCCC(v66, v14 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder);
  v71.receiver = v14;
  v71.super_class = v13;
  v51 = objc_msgSendSuper2(&v71, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v66);
  (*(v59 + 16))(v4, v7, v5);
  v15 = type metadata accessor for JSMetricsIdentifiersObject(0);
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsIdStore];
  *v17 = v9;
  *(v17 + 1) = v10;
  v50 = v10;
  sub_2226B9304(v4, &v16[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsTopicProvider]);
  v70.receiver = v16;
  v70.super_class = v15;
  v52 = v9;
  swift_unknownObjectRetain();
  v49 = objc_msgSendSuper2(&v70, sel_init);
  sub_2226B9368(v4);
  sub_22266BCCC(v78, v66);
  v18 = type metadata accessor for JSUserObject();
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_isFitnessAppInstallationAllowedCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C10, &unk_222743530);
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013548, &qword_2227425B0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v21 + 16) = v22;
  *(v21 + 24) = 2;
  *(v21 + 32) = sub_2226C2C78;
  *(v21 + 40) = 0;
  *&v19[v20] = v21;
  sub_22266BCCC(v66, &v19[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts]);
  v69.receiver = v19;
  v69.super_class = v18;
  v48 = objc_msgSendSuper2(&v69, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v47 = [objc_allocWithZone(type metadata accessor for JSClientOrderingObject()) init];
  v46 = [objc_allocWithZone(type metadata accessor for JSPersonalizationStoreObject()) init];
  v45 = [objc_allocWithZone(type metadata accessor for JSArcadeObject()) init];
  sub_22266BCCC(v76, v66);
  v23 = type metadata accessor for JSAppleSiliconObject();
  v24 = objc_allocWithZone(v23);
  sub_22266BCCC(v66, v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSAppleSiliconObject_platform);
  v68.receiver = v24;
  v68.super_class = v23;
  v44 = objc_msgSendSuper2(&v68, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v43 = [objc_allocWithZone(type metadata accessor for JSFeatureFlagsObject()) init];
  sub_22266BCCC(v74, v66);
  sub_22266BCCC(v73, &v67);
  v64 = &type metadata for DeviceAppDistribution;
  v65 = &off_2835C9118;
  v63[0] = swift_allocObject();
  sub_22269DCB0(v66, v63[0] + 16);
  v25 = type metadata accessor for JSAppDistributionObject();
  v26 = objc_allocWithZone(v25);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = (&v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v62[3] = &type metadata for DeviceAppDistribution;
  v62[4] = &off_2835C9118;
  v32 = swift_allocObject();
  v62[0] = v32;
  v33 = v30[3];
  v32[3] = v30[2];
  v32[4] = v33;
  v32[5] = v30[4];
  v34 = v30[1];
  v32[1] = *v30;
  v32[2] = v34;
  sub_22266BCCC(v62, v26 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit23JSAppDistributionObject_appDistribution);
  v61.receiver = v26;
  v61.super_class = v25;
  v35 = objc_msgSendSuper2(&v61, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_22269DD0C(v66);
  v36 = type metadata accessor for JSASKGlobalObject();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_client] = v56;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_loc] = v53;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_storeMetrics] = v51;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_metricsIdentifiers] = v49;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_props] = v58;
  v38 = v47;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_user] = v48;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_clientOrdering] = v38;
  v39 = v45;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_personalizationStore] = v46;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_arcade] = v39;
  v40 = v43;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_appleSilicon] = v44;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_featureFlags] = v40;
  *&v37[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSASKGlobalObject_appDistribution] = v35;
  v60.receiver = v37;
  v60.super_class = v36;
  v41 = objc_msgSendSuper2(&v60, sel_init);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v73);
  (*(v59 + 8))(v55, v54);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v78);
  return v41;
}

unint64_t sub_2226B92B8()
{
  result = qword_281312D68;
  if (!qword_281312D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312D68);
  }

  return result;
}

uint64_t sub_2226B9304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsTopicProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226B9368(uint64_t a1)
{
  v2 = type metadata accessor for MetricsTopicProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226B9404()
{
  sub_222738D8C();
  sub_2226B7CC0();
  swift_allocError();
  sub_222738D3C();
  return swift_willThrow();
}

uint64_t sub_2226B950C()
{
  sub_222738D8C();
  sub_2226B7CC0();
  swift_allocError();
  sub_222738D3C();
  return swift_willThrow();
}

id sub_2226B9638()
{
  ObjectType = swift_getObjectType();
  v6[3] = &type metadata for SystemFeatureFlagsStore;
  v6[4] = &off_2835C9778;
  v1 = objc_allocWithZone(ObjectType);
  __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for SystemFeatureFlagsStore);
  v5[3] = &type metadata for SystemFeatureFlagsStore;
  v5[4] = &off_2835C9778;
  sub_22266BCCC(v5, v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSFeatureFlagsObject_store);
  v4.receiver = v1;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

id sub_2226B9724(id a1, void *a2)
{
  sub_22273968C();
  if (!v4)
  {
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    v7 = a2;
    sub_222738D5C();
    swift_willThrow();
    return a1;
  }

  v5 = sub_222739A8C();
  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_9;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v10[3] = &type metadata for Feature;
  v10[4] = sub_222672C08();
  LOBYTE(v10[0]) = v6;
  v8 = sub_22273748C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  result = [objc_opt_self() valueWithBool:v8 & 1 inContext:a1];
  if (result)
  {
LABEL_10:
    a1 = result;

    return a1;
  }

  __break(1u);
LABEL_9:
  result = [objc_opt_self() valueWithBool:0 inContext:a1];
  if (result)
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_2226B9C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2226AE84C(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    do
    {
      v8 = *v4++;
      v7 = v8;
      v15 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2226AE84C((v9 > 1), v10 + 1, 1);
        v2 = v15;
      }

      v13 = v5;
      v14 = v6;
      *&v12 = v7;
      *(v2 + 16) = v10 + 1;
      sub_222634290(&v12, v2 + 40 * v10 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_2226B9F18(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = objc_allocWithZone(MEMORY[0x277CCABB8]);
    v5 = v3;
    v6 = [v4 init];
    [v6 setNumberStyle_];
    [v6 setFormatterBehavior_];
    v7 = sub_22273741C();
    [v6 setLocale_];

    [v6 setMinimumFractionDigits_];
    v8 = [v6 stringFromNumber_];
    if (v8)
    {
      v9 = v8;
      v10 = sub_22273919C();

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_2226BA180(void *a1)
{
  if (a1)
  {
    v1 = [a1 longLongValue];
    v2 = sub_22273741C();
    v3 = JECountFormatterMakeStringFromNumber();

    if (v3)
    {
      sub_22273919C();
LABEL_8:

      return;
    }

    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(MEMORY[0x277CCABB8]);
      v7 = v5;
      v3 = [v6 init];
      [v3 setNumberStyle_];
      [v3 setFormatterBehavior_];
      v8 = sub_22273741C();
      [v3 setLocale_];

      [v3 setMinimumFractionDigits_];
      v9 = [v3 stringFromNumber_];
      if (v9)
      {
        v10 = v9;
        sub_22273919C();

        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_2226BA3B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = sub_2227373BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  sub_2226BD5F4(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222660468(v12, &unk_27D0146D0, qword_222743270);
    return;
  }

  (*(v14 + 32))(v19, v12, v13);
  sub_2227373AC();
  sub_22273733C();
  v21 = floor(v20 / 31536000.0);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = v21;
  if (v21 >= 1)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
    sub_2227390BC();
    v46 = v16;
    v23 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
    v24 = sub_22273743C();
    v25 = v2;
    v26 = *(v24 - 8);
    (*(v26 + 16))(v6, v25 + v23, v24);
    (*(v26 + 56))(v6, 0, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D83B88];
    *(v27 + 16) = xmmword_2227412F0;
    v29 = MEMORY[0x277D83C10];
    *(v27 + 56) = v28;
    *(v27 + 64) = v29;
    *(v27 + 32) = v22;
LABEL_8:
    sub_2227391BC();

    sub_222660468(v6, &qword_27D013C58, &qword_222743620);
    v30 = *(v14 + 8);
    v30(v46, v13);
    v30(v19, v13);
    return;
  }

  v31 = floor(v20 / 86400.0);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v31 >= 7)
  {
    (*(v14 + 16))(v9, v19, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    v32 = 0x64204D4D4DLL;
    v33 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v31 < 1)
  {
    v35 = floor(v20 / 3600.0);
    if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v35 > -9.22337204e18)
      {
        if (v35 < 9.22337204e18)
        {
          v36 = v35;
          __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
          if (v36 >= 1)
          {
            v45 = sub_2227390BC();
            v37 = v2;
            v38 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
            v39 = sub_22273743C();
            v40 = *(v39 - 8);
            v46 = v16;
            v41 = v40;
            (*(v40 + 16))(v6, v37 + v38, v39);
            (*(v41 + 56))(v6, 0, 1, v39);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
            v42 = swift_allocObject();
            v43 = MEMORY[0x277D83B88];
            *(v42 + 16) = xmmword_2227412F0;
            v44 = MEMORY[0x277D83C10];
            *(v42 + 56) = v43;
            *(v42 + 64) = v44;
            *(v42 + 32) = v36;
            goto LABEL_8;
          }

          sub_2227390BC();
          goto LABEL_17;
        }

LABEL_33:
        __break(1u);
        return;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  (*(v14 + 16))(v9, v19, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v32 = 69;
  v33 = 0xE100000000000000;
LABEL_16:
  sub_2226BAAFC(v32, v33, v9);
  sub_222660468(v9, &unk_27D0146D0, qword_222743270);
LABEL_17:
  v34 = *(v14 + 8);
  v34(v16, v13);
  v34(v19, v13);
}

uint64_t sub_2226BAAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a2;
  v4 = sub_22273747C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_2227373BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226BD5F4(a3, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_222660468(v10, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v16 setFormattingContext_];
    sub_22273742C();
    v17 = sub_22273745C();
    (*(v5 + 8))(v7, v4);
    [v16 setCalendar_];

    v18 = sub_22273741C();
    [v16 setLocale_];

    v19 = sub_22273916C();
    [v16 setLocalizedDateFormatFromTemplate_];

    v20 = sub_22273734C();
    v21 = [v16 stringFromDate_];

    v22 = sub_22273919C();
    (*(v12 + 8))(v14, v11);
    return v22;
  }
}

uint64_t sub_2226BAFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a1;
  v7 = sub_22273747C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v30 - v12;
  v14 = sub_2227373BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226BD5F4(a5, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_222660468(v13, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v19 setFormattingContext_];
    v30[0] = a2;
    sub_22273742C();
    v20 = sub_22273745C();
    (*(v8 + 8))(v10, v7);
    [v19 setCalendar_];

    v21 = sub_22273741C();
    [v19 setLocale_];

    v22 = sub_22273916C();
    [v19 setLocalizedDateFormatFromTemplate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2227412F0;
    v24 = sub_22273734C();
    v25 = [v19 stringFromDate_];

    v26 = sub_22273919C();
    v28 = v27;

    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_2226BD664();
    *(v23 + 32) = v26;
    *(v23 + 40) = v28;
    v29 = sub_2227391CC();

    (*(v15 + 8))(v17, v14);
    return v29;
  }
}

uint64_t sub_2226BB3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C58, &qword_222743620);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v71 - v3;
  v5 = sub_22273747C();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x28223BE20](v5);
  v81 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273715C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v71 - v12;
  v14 = sub_2227373BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  sub_2226BD5F4(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_222660468(v13, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  v72 = v4;
  v75 = v7;
  v76 = v8;
  v77 = v14;
  v78 = v15;
  (*(v15 + 32))(v20, v13, v14);
  sub_2227373AC();
  v73 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localeWithCalendarWithBagFixUp;
  sub_22273742C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013C60, &qword_222743628);
  v22 = sub_22273746C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_222742E90;
  v27 = *(v23 + 104);
  v27(v26 + v25, *MEMORY[0x277CC9988], v22);
  v27(v26 + v25 + v24, *MEMORY[0x277CC9998], v22);
  v27(v26 + v25 + 2 * v24, *MEMORY[0x277CC9940], v22);
  v27(v26 + v25 + 3 * v24, *MEMORY[0x277CC9968], v22);
  v27(v26 + v25 + 4 * v24, *MEMORY[0x277CC9980], v22);
  v27(v26 + v25 + 5 * v24, *MEMORY[0x277CC99A8], v22);
  sub_2226DD7F0(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v74 = v17;
  v28 = v81;
  sub_22273744C();

  (*(v79 + 8))(v28, v80);
  v29 = sub_22273712C();
  if ((v30 & 1) == 0)
  {
    v31 = v29;
    if (v29 >= 1)
    {
      v32 = v82;
      __swift_project_boxed_opaque_existential_1((v82 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v82 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
      sub_2227390BC();
      v33 = sub_22273743C();
      v34 = *(v33 - 8);
      v35 = v72;
      (*(v34 + 16))(v72, v32 + v73, v33);
      (*(v34 + 56))(v35, 0, 1, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
      v36 = swift_allocObject();
      v37 = MEMORY[0x277D83B88];
      *(v36 + 16) = xmmword_2227412F0;
      v38 = MEMORY[0x277D83C10];
      *(v36 + 56) = v37;
      *(v36 + 64) = v38;
      *(v36 + 32) = v31;
      v39 = sub_2227391BC();

      sub_222660468(v35, &qword_27D013C58, &qword_222743620);
      (*(v76 + 8))(v10, v75);
LABEL_13:
      v53 = v77;
      v54 = *(v78 + 8);
      v54(v74, v77);
      v54(v20, v53);
      return v39;
    }
  }

  v40 = sub_22273713C();
  v41 = v75;
  if ((v42 & 1) == 0)
  {
    v43 = v40;
    if (v40 >= 1)
    {
      v44 = v82;
      __swift_project_boxed_opaque_existential_1((v82 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v82 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
LABEL_12:
      sub_2227390BC();
      v47 = sub_22273743C();
      v48 = *(v47 - 8);
      v49 = v72;
      (*(v48 + 16))(v72, v44 + v73, v47);
      (*(v48 + 56))(v49, 0, 1, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AF0, &unk_222743630);
      v50 = swift_allocObject();
      v51 = MEMORY[0x277D83B88];
      *(v50 + 16) = xmmword_2227412F0;
      v52 = MEMORY[0x277D83C10];
      *(v50 + 56) = v51;
      *(v50 + 64) = v52;
      *(v50 + 32) = v43;
      v39 = sub_2227391BC();

      sub_222660468(v49, &qword_27D013C58, &qword_222743620);
      (*(v76 + 8))(v10, v41);
      goto LABEL_13;
    }
  }

  v45 = sub_2227370FC();
  v44 = v82;
  if ((v46 & 1) == 0 && (v43 = v45, v45 >= 1) || (v55 = sub_22273710C(), (v56 & 1) == 0) && (v43 = v55, v55 >= 1) || (v57 = sub_22273711C(), (v58 & 1) == 0) && (v43 = v57, v57 >= 1))
  {
    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v44 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
    goto LABEL_12;
  }

  v59 = sub_22273714C();
  if ((v60 & 1) != 0 || v59 < 1)
  {
    v64 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v64 setDoesRelativeDateFormatting_];
    [v64 setDateStyle_];
    [v64 setTimeStyle_];
    v65 = sub_22273741C();
    [v64 setLocale_];

    v66 = sub_22273734C();
    v67 = [v64 stringFromDate_];

    v68 = sub_22273919C();
    (*(v76 + 8))(v10, v41);
    v69 = v77;
    v70 = *(v78 + 8);
    v70(v74, v77);
    v70(v20, v69);
    return v68;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer), *(v44 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSLegacyLocObject_localizer + 24));
    v61 = sub_2227390BC();
    (*(v76 + 8))(v10, v41);
    v62 = v77;
    v63 = *(v78 + 8);
    v63(v74, v77);
    v63(v20, v62);
    return v61;
  }
}

id sub_2226BBEA8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  if (a3)
  {
    sub_22273739C();
    v10 = sub_2227373BC();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_2227373BC();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  a4(v9);
  v14 = v13;

  sub_222660468(v9, &unk_27D0146D0, qword_222743270);
  if (v14)
  {
    v15 = sub_22273916C();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t type metadata accessor for JSLegacyLocObject(uint64_t a1)
{
  result = qword_27D013C40;
  if (!qword_27D013C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226BC180(uint64_t a1)
{
  result = sub_22273743C();
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

id sub_2226BC36C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22273919C();
  __swift_project_boxed_opaque_existential_1(&a1[*a4], *&a1[*a4 + 24]);
  v6 = a1;
  sub_2227390BC();

  v7 = sub_22273916C();

  return v7;
}

uint64_t sub_2226BCA14()
{
  sub_222738D8C();
  sub_2226B7CC0();
  swift_allocError();
  sub_222738D3C();
  return swift_willThrow();
}

uint64_t sub_2226BCF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_2227373BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226BD5F4(a5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_222660468(v9, &unk_27D0146D0, qword_222743270);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer), *(v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit17JSModernLocObject_localizer + 24));
    v15 = sub_22273904C();
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

id sub_2226BD11C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_22273919C();
  v14 = v13;
  v15 = sub_22273919C();
  v17 = v16;
  if (a5)
  {
    sub_22273739C();
    v18 = sub_2227373BC();
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  }

  else
  {
    v19 = sub_2227373BC();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  }

  v20 = a1;
  a6(v12, v14, v15, v17, v11);
  v22 = v21;

  sub_222660468(v11, &unk_27D0146D0, qword_222743270);
  if (v22)
  {
    v23 = sub_22273916C();
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t sub_2226BD5F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146D0, qword_222743270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2226BD664()
{
  result = qword_27D013C68;
  if (!qword_27D013C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013C68);
  }

  return result;
}

uint64_t sub_2226BD6C4()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222738F6C();
  __swift_allocate_value_buffer(v4, qword_27D013C70);
  __swift_project_value_buffer(v4, qword_27D013C70);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v3, v5, v0);
  return sub_222738F5C();
}

id sub_2226BD890(void *a1, uint64_t a2, void *a3)
{
  v57 = a1;
  v54 = a3;
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222738FDC();
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_22273823C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2227380FC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = v56;
  sub_22273967C();
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v56 = v10;
    v51 = v5;
    v52 = v7;
    (*(v15 + 16))(v17, v20, v14);
    sub_22273822C();
    v23 = v14;
    v24 = sub_2226E507C(v17, v13);
    v26 = v25;
    v28 = v27;
    v29 = swift_allocObject();
    v30 = v54;
    v29[2] = v54;
    v29[3] = v24;
    v29[4] = v26;
    v29[5] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CA0, &qword_2227436B8);
    v31 = v30;
    v32 = v24;
    v54 = v28;

    v33 = sub_222738F2C();
    v34 = sub_22273946C();
    v35 = v56;
    (*(*(v34 - 8) + 56))(v56, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = &unk_2227436B0;
    v36[5] = v29;
    v36[6] = v33;

    sub_2226D4E54(0, 0, v35, &unk_2227436C0, v36);

    sub_2227387BC();

    v38 = MEMORY[0x223DBDAF0](v37);
    if (v38)
    {
      v39 = v38;
      v56 = v32;
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 1;
      *(v40 + 32) = v39;
      *(v40 + 40) = sub_2226BF9BC;
      *(v40 + 48) = v33;
      v41 = v57;

      v42 = v52;
      sub_222738FBC();

      v50 = sub_222738FCC();

      (*(v53 + 8))(v42, v51);
      (*(v15 + 8))(v20, v23);
      return v50;
    }

    sub_2226BF75C();
    v22 = swift_allocError();
    *v43 = 0;
    swift_willThrow();

    (*(v15 + 8))(v20, v23);
  }

  v44 = v22;
  if (qword_27D0129C8 != -1)
  {
    swift_once();
  }

  v45 = sub_222738F6C();
  __swift_project_value_buffer(v45, qword_27D013C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v46 = v58;
  v47 = v59;
  v60[3] = v59;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  (*(*(v47 - 8) + 16))(boxed_opaque_existential_1, v46, v47);
  sub_22273815C();
  sub_222672BA0(v60);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v50 = result;

    return v50;
  }

  __break(1u);
  return result;
}

uint64_t sub_2226BE004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2226BE02C, 0, 0);
}

uint64_t sub_2226BE02C()
{
  v1 = v0[3] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsIdStore;
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = [*v1 ams_activeiTunesAccount];
  v0[7] = v4;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2226BE108;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];

  return sub_2226E2FD8(v3, v2, v4, v8, v6, v7);
}

uint64_t sub_2226BE108(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_2226BE2B4;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_2226BE23C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2226BE23C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);

  *v3 = v2;
  v3[1] = v1;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2226BE2B4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226BE318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;
  v9 = a1[1];

  v5 = sub_222739B6C();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:{a2, v8, v9}];
  result = swift_unknownObjectRelease();
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2226BE3CC(id a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22273823C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2227380FC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  sub_22273967C();
  if (v3)
  {
    return a1;
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_22273822C();
  v16 = sub_2226E507C(v12, v8);
  v36 = v17;
  v33 = v16;
  v34 = v18;
  v32 = *(a3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsIdStore);
  v19 = v32;
  v20 = [v32 ams_activeiTunesAccount];
  v21 = v20;
  if (!v20)
  {
    v21 = [v19 ams_activeiTunesAccount];
  }

  v35 = v32;
  v22 = v20;
  v23 = sub_2226E4344(v21, v34, v36);
  v34 = 0;
  v25 = v23;

  v26 = v33;
  v27 = [v25 identifierForKey_];

  v28 = sub_22273919C();
  v30 = v29;

  *&v35 = v28;
  *(&v35 + 1) = v30;

  v31 = sub_222739B6C();
  a1 = [objc_opt_self() valueWithObject:v31 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a1)
  {
    (*(v10 + 8))(v15, v9);

    return a1;
  }

  __break(1u);
  return result;
}

id sub_2226BE7BC(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v47 = a3;
  v49 = a1;
  v5 = sub_2227381BC();
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222738FDC();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_22273823C();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2227380FC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  sub_22273967C();
  if (!v3)
  {
    v43 = v9;
    v44 = v12;
    v21 = v47;
    (*(v15 + 16))(v17, v20, v14);
    sub_22273822C();
    sub_2226BF548();
    v22 = sub_2227393BC();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014660, &qword_222743690);
    v24 = v21;
    v25 = sub_222738F2C();
    v26 = sub_22273946C();
    v27 = v44;
    (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = &unk_222743688;
    v28[5] = v23;
    v28[6] = v25;

    sub_2226D4E54(0, 0, v27, &unk_222743698, v28);

    sub_2227387BC();

    v30 = MEMORY[0x223DBDAF0](v29);
    if (v30)
    {
      v31 = v30;
      v47 = v20;
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 1;
      *(v32 + 32) = v31;
      *(v32 + 40) = sub_2226BF724;
      *(v32 + 48) = v25;
      v33 = v49;

      v34 = v43;
      sub_222738FBC();

      v42 = sub_222738FCC();

      (*(v45 + 8))(v34, v46);
      (*(v15 + 8))(v47, v14);
      return v42;
    }

    sub_2226BF75C();
    v4 = swift_allocError();
    *v35 = 0;
    swift_willThrow();

    (*(v15 + 8))(v20, v14);
  }

  v36 = v4;
  if (qword_27D0129C8 != -1)
  {
    swift_once();
  }

  v37 = sub_222738F6C();
  __swift_project_value_buffer(v37, qword_27D013C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v38 = v50;
  v39 = v51;
  v52[3] = v51;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(v39 - 8) + 16))(boxed_opaque_existential_1, v38, v39);
  sub_22273815C();
  sub_222672BA0(v52);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v42 = result;

    return v42;
  }

  __break(1u);
  return result;
}

uint64_t sub_2226BEEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2226BEF14, 0, 0);
}

uint64_t sub_2226BEF14()
{
  v1 = v0[5] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject_metricsIdStore;
  v2 = *v1;
  v3 = *(v1 + 8);
  v0[2] = *v1;
  v0[3] = v3;
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2226BEFE4;
  v6 = v0[6];

  return sub_2226E2068(v6, 0);
}

uint64_t sub_2226BEFE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    swift_unknownObjectRelease();
    v5 = sub_2226BF14C;
  }

  else
  {
    *(v4 + 72) = a1;

    swift_unknownObjectRelease();
    v5 = sub_2226BF128;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2226BF164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a1;
  v8[3] = sub_22273872C();
  v8[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v8);
  v5 = a1;
  sub_22273871C();
  sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
  v6 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_2226BF238@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  v5 = sub_222739B6C();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:a2];
  result = swift_unknownObjectRelease();
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2226BF2FC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjectType();
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v6 = a3;
  v7 = a1;
  v8 = sub_2227396EC();
  v9 = sub_2227396FC();

  return v9;
}

uint64_t type metadata accessor for JSMetricsIdentifiersObject(uint64_t a1)
{
  result = qword_281313200;
  if (!qword_281313200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226BF48C(uint64_t a1)
{
  result = sub_222738BBC();
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

unint64_t sub_2226BF548()
{
  result = qword_27D013C90;
  if (!qword_27D013C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013C90);
  }

  return result;
}

uint64_t sub_2226BF59C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_2226BEEF0(a1, v5, v4);
}

uint64_t sub_2226BF648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D3714(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2226BF75C()
{
  result = qword_27D013C98;
  if (!qword_27D013C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013C98);
  }

  return result;
}

uint64_t sub_2226BF820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222660228;

  return sub_2226BE004(a1, v4, v5, v7, v6);
}

uint64_t sub_2226BF8E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D34A0(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2226BFAD0(void *a1)
{
  v2 = v1;
  v4 = sub_222738FDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_222738FBC();
  if (!v1)
  {
    v2 = sub_222738FCC();
    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

void sub_2226BFBDC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2227412F0;
  v4 = [objc_opt_self() valueWithNullInContext_];
  if (v4)
  {
    v5 = v4;
    *(v3 + 56) = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    *(v3 + 32) = v5;
    v6 = sub_222737FCC();
    if (v1)
    {

      if (qword_281312E28 != -1)
      {
        swift_once();
      }

      v7 = sub_222738F6C();
      __swift_project_value_buffer(v7, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      sub_2227381FC();
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_22273813C();
      sub_222738C6C();
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2226BFE90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{
  v48 = a7;
  v46 = a6;
  v47 = *&a4;
  v50 = a3;
  v51 = a1;
  v45 = sub_222737FDC();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v45);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22273878C();
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if ((a5 & 1) == 0 && v47 > COERCE_DOUBLE(1))
  {
    v18 = *(v11 + 16);
    v43 = a2;
    v19 = v45;
    v18(v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v45);
    v20 = *(v11 + 80);
    v42[1] = a8;
    v21 = (v20 + 32) & ~v20;
    v42[0] = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v23 = v47;
    *(v22 + 16) = v17;
    *(v22 + 24) = v23;
    v24 = v19;
    a2 = v43;
    (*(v11 + 32))(v22 + v21, v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
    v25 = v51;
    *(v22 + v42[0]) = v51;

    v26 = v25;
    sub_22273879C();

    (*(v44 + 8))(v16, v14);
  }

  v27 = v49;
  v49 = v48(v51);
  if (v27)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2227412F0;
    v29 = sub_2226C032C();
    v30 = MEMORY[0x223DBE9E0](v27, v51);
    *(v28 + 56) = v29;
    *(v28 + 32) = v30;
    v31 = sub_222737FCC();
  }

  else
  {
    v32 = *(v11 + 16);
    v33 = a2;
    v34 = v45;
    v32(v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v45);
    v48 = 0;
    v35 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    *&v36 = COERCE_DOUBLE(swift_allocObject());
    v47 = *&v36;
    *(v36 + 16) = v17;
    v44 = v17;
    v37 = *(v11 + 32);
    v37(v36 + v35, v13, v34);
    v32(v13, v50, v34);
    v38 = (v35 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = v44;
    v37(v39 + v35, v13, v34);
    v40 = v51;
    *(v39 + v38) = v51;
    v52[3] = sub_2227387BC();
    v52[4] = MEMORY[0x277D22078];
    v52[0] = v46;
    swift_retain_n();
    v41 = v40;

    sub_222738E8C();

    __swift_destroy_boxed_opaque_existential_1(v52);
  }
}

unint64_t sub_2226C032C()
{
  result = qword_27D013BA8;
  if (!qword_27D013BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D013BA8);
  }

  return result;
}

void sub_2226C0378(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    v14 = a4;
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v7 = sub_222738F6C();
    __swift_project_value_buffer(v7, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_222741CB0;
    sub_22273813C();
    sub_22273813C();
    v15[3] = MEMORY[0x277D839F8];
    *v15 = a2;
    sub_2227381DC();
    sub_222672BA0(v15);
    sub_222738C6C();

    swift_beginAccess();
    *(a1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2227412F0;
    v9 = sub_2226C032C();
    sub_2226BF75C();
    v10 = swift_allocError();
    *v11 = 1;
    v12 = MEMORY[0x223DBE9E0](v10, v14);

    *(v8 + 56) = v9;
    *(v8 + 32) = v12;
    v13 = sub_222737FCC();
  }
}

void sub_2226C0714(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2227412F0;
    *(v4 + 56) = sub_2226C032C();
    *(v4 + 32) = v3;
    v5 = v3;
    v6 = sub_222737FCC();
  }
}

void sub_2226C09B8(void **a1)
{
  sub_222737FDC();
  v3 = *(v1 + 16);

  sub_2226C0714(a1, v3);
}

void sub_2226C0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2227412F0;
    v8 = sub_2226C032C();
    v9 = MEMORY[0x223DBE9E0](a1, a4);
    *(v7 + 56) = v8;
    *(v7 + 32) = v9;
    v10 = sub_222737FCC();
  }
}

void sub_2226C0CE4(uint64_t a1)
{
  v3 = *(sub_222737FDC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226C0A2C(a1, v5, v1 + v4, v6);
}

void sub_2226C0D84()
{
  v1 = *(sub_222737FDC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226C0378(v3, v4, v0 + v2, v5);
}

unint64_t sub_2226C0E2C()
{
  result = qword_27D013CA8;
  if (!qword_27D013CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013CA8);
  }

  return result;
}

id sub_2226C0E80(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_22273875C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273968C();
  if (!v11)
  {
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    v17 = v20;
    v21 = a2;
    goto LABEL_8;
  }

  v23 = a1;
  v12 = [a3 toDictionary];
  if (!v12 || (v13 = v12, v14 = sub_22273910C(), v13, v15 = sub_2226C1140(v14), , !v15))
  {

    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    v17 = v18;
    v19 = a3;
LABEL_8:
    sub_222738D5C();
    swift_willThrow();
    return v17;
  }

  sub_22273873C();
  __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder), *(v24 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder + 24));

  sub_22273880C();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v17 = result;
    (*(v8 + 8))(v10, v7);

    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_2226C1140(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013520, &qword_222742590);
    v2 = sub_222739A6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_22269458C(*(a1 + 48) + 40 * v12, v27);
        sub_22262BF70(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_22269458C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_22262BF70(v25 + 8, v20);
        sub_222660468(v24, &unk_27D0140C0, &unk_2227437C8);
        v21 = v18;
        sub_22269457C(v20, v22);
        v13 = v21;
        sub_22269457C(v22, v23);
        sub_22269457C(v23, &v21);
        result = sub_222688818(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_22269457C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_22269457C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_222660468(v24, &unk_27D0140C0, &unk_2227437C8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

char *sub_2226C14E8(void *a1, void *a2)
{
  v5 = sub_222738FDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v9 = MEMORY[0x223DBDAF0]();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 2) = a2;
    *(v11 + 3) = v10;
    v12 = a1;
    v13 = a2;

    sub_222738FBC();
    if (v2)
    {
    }

    else
    {
      v11 = sub_222738FCC();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    v11 = "oreMetricsObject";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_2226C16CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a5;
  v21 = a3;
  v7 = sub_222737FDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder), *(a4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject_eventRecorder + 24));
  v22 = sub_2227387FC();
  v11 = *(v8 + 16);
  v11(v10, a2, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = v12 + v9;
  v20 = swift_allocObject();
  v14 = *(v8 + 32);
  v14(v20 + v12, v10, v7);
  v11(v10, v21, v7);
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v14(v16 + v12, v10, v7);
  v17 = v23;
  *(v16 + v15) = v23;
  v25[3] = sub_2227387BC();
  v25[4] = MEMORY[0x277D22078];
  v25[0] = v24;
  v18 = v17;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void sub_2226C1910(uint64_t *a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227412F0;
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 32) = v3;
  v5 = sub_222737FCC();
}

void sub_2226C1BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_222738D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v8 = swift_allocObject();
  v11 = xmmword_2227412F0;
  *(v8 + 16) = xmmword_2227412F0;
  swift_getErrorValue();
  sub_222739BEC();
  sub_222738D3C();
  v9 = sub_222738D6C();
  (*(v5 + 8))(v7, v4);
  *(v8 + 56) = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
  *(v8 + 32) = v9;
  v10 = sub_222737FCC();
}

id sub_2226C2060(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSStoreMetricsObject();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2226C2114(uint64_t *a1)
{
  sub_222737FDC();

  sub_2226C1910(a1);
}

void sub_2226C2184(uint64_t a1)
{
  v3 = *(sub_222737FDC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226C1BE8(a1, v1 + v4, v5);
}

uint64_t sub_2226C2258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  v5 = sub_222738CFC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_222660468(v4, &unk_27D013A90, &unk_222741DC0);
    return 0;
  }

  else
  {
    swift_getKeyPath();
    sub_222738CBC();

    v7 = v9;
    (*(v6 + 8))(v4, v5);
  }

  return v7;
}

id sub_2226C23D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_2226C2258(a3);
  v6 = v5;

  if (v6)
  {
    v7 = sub_22273916C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_2226C2458(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22273919C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2226C24BC(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_22273916C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_2226C25A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - v2;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  v4 = sub_222738CFC();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_222660468(v3, &unk_27D013A90, &unk_222741DC0);
  }

  else
  {
    swift_getKeyPath();
    sub_222738CBC();

    v6 = v10[1];
    (*(v5 + 8))(v3, v4);
    if (v6)
    {
      v7 = [v6 stringValue];

      v8 = sub_22273919C();
      return v8;
    }
  }

  return 0;
}

id sub_2226C2754@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_DSID];
  *a2 = result;
  return result;
}

uint64_t sub_2226C295C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = sub_222738CFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v8 = &unk_27D013A90;
    v9 = &unk_222741DC0;
    v10 = v3;
LABEL_7:
    sub_222660468(v10, v8, v9);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_222738CDC();
  (*(v5 + 8))(v7, v4);
  if (!v14)
  {
    v8 = &qword_27D0130C0;
    v9 = &unk_2227413B0;
    v10 = &v13;
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return v12[15];
  }

  return 0;
}

uint64_t sub_2226C2BA8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_isFitnessAppInstallationAllowedCache);
  v3 = *(v2 + 24);
  if (v3 == 2)
  {
    v4 = *(v2 + 16);
    MEMORY[0x28223BE20](a1);

    os_unfair_lock_lock(v4 + 4);
    sub_2226CA09C(&v6);
    os_unfair_lock_unlock(v4 + 4);

    LOBYTE(v3) = v6;
  }

  return v3 & 1;
}

uint64_t sub_2226C2C78@<X0>(_BYTE *a1@<X8>)
{
  v22 = a1;
  v21 = sub_222737C3C();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_222737CDC();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = dispatch_semaphore_create(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v19 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  aBlock[4] = sub_2226C8D34;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2226C2F8C;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);

  v14 = v10;

  [v19 fetchIsFitnessAvailableForDeviceWithCompletion_];
  _Block_release(v13);
  sub_222737CCC();
  *v3 = 5;
  v15 = v21;
  (*(v1 + 104))(v3, *MEMORY[0x277D85188], v21);
  MEMORY[0x223DBD070](v6, v3);
  (*(v1 + 8))(v3, v15);
  v16 = *(v4 + 8);
  v17 = v20;
  v16(v6, v20);
  sub_22273964C();

  v16(v9, v17);
  swift_beginAccess();
  *v22 = *(v11 + 16);
}

uint64_t sub_2226C2F8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2226C2FE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_22273731C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273730C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = &qword_27D013DC0;
    v14 = qword_222743950;
    v15 = v8;
LABEL_5:
    sub_222660468(v15, v13, v14);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v16 = sub_2227396EC();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  v17 = sub_222738CFC();
  v18 = v12;
  v19 = *(v17 - 8);
  if ((*(v19 + 48))(v5, 1, v17) == 1)
  {
    (*(v10 + 8))(v18, v9);

    v13 = &unk_27D013A90;
    v14 = &unk_222741DC0;
    v15 = v5;
    goto LABEL_5;
  }

  v27 = v18;
  v21 = sub_222738CEC();
  (*(v19 + 8))(v5, v17);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v27;
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_17:

    (*(v10 + 8))(v23, v9);
    return MEMORY[0x277D84F90];
  }

  v22 = sub_22273984C();
  v23 = v27;
  if (!v22)
  {
    goto LABEL_17;
  }

LABEL_9:
  v28 = MEMORY[0x277D84F90];
  result = sub_22273997C();
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x223DBEC70](v24, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      ++v24;
      NSHTTPCookie.makeValue(in:)(v16);

      sub_22273995C();
      sub_22273998C();
      sub_22273999C();
      sub_22273996C();
    }

    while (v22 != v24);
    (*(v10 + 8))(v27, v9);

    return v28;
  }

  return result;
}

Class sub_2226C3498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_22273731C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273730C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = &qword_27D013DC0;
    v16 = qword_222743950;
    v17 = v10;
LABEL_5:
    sub_222660468(v17, v15, v16);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v18 = sub_2227396EC();
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
  sub_2227384EC();
  v19 = sub_222738CFC();
  v20 = v12;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v7, 1, v19) == 1)
  {
    (*(v20 + 8))(v14, v11);

    v15 = &unk_27D013A90;
    v16 = &unk_222741DC0;
    v17 = v7;
    goto LABEL_5;
  }

  v38 = v20;
  v23 = sub_222738CEC();
  (*(v21 + 8))(v7, v19);
  v39 = v11;
  if (v23 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22273984C())
  {
    v25 = 0;
    v40 = v23 & 0xFFFFFFFFFFFFFF8;
    v41 = v23 & 0xC000000000000001;
    while (1)
    {
      if (v41)
      {
        v26 = MEMORY[0x223DBEC70](v25, v23);
      }

      else
      {
        if (v25 >= *(v40 + 16))
        {
          goto LABEL_26;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v29 = v18;
      v30 = v14;
      v31 = [v26 name];
      v32 = sub_22273919C();
      v34 = v33;

      if (v32 == v42 && v34 == v43)
      {

LABEL_24:

        isa = NSHTTPCookie.makeValue(in:)(v29).super.isa;

        (*(v38 + 8))(v30, v39);
        return isa;
      }

      v36 = sub_222739B4C();

      if (v36)
      {
        goto LABEL_24;
      }

      ++v25;
      v14 = v30;
      v18 = v29;
      if (v28 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  (*(v38 + 8))(v14, v39);
  return 0;
}

char *sub_2226C399C(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a1;
  v33 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = sub_222738FDC();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v17 = MEMORY[0x223DBDAF0]();
  if (v17)
  {
    v18 = v17;
    (*(v10 + 16))(v13, a2, v9);
    v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = a7;
    v21 = swift_allocObject();
    (*(v10 + 32))(&v21[v19], v13, v9);
    v22 = v32;
    v23 = v33;
    *&v21[v20] = v33;
    *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v18;
    v24 = v22;
    v25 = v23;

    v26 = v34;
    sub_222738FBC();
    if (v26)
    {
    }

    else
    {
      v21 = sub_222738FCC();

      (*(v28 + 8))(v16, v29);
    }
  }

  else
  {
    v21 = ": No account available.";
    sub_222738D8C();
    sub_2226C9638(&qword_27D013EE0, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v21;
}

uint64_t sub_2226C3C90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v44 = a1;
  v45 = a6;
  v42 = a2;
  v43 = a3;
  v41 = sub_222737FDC();
  v39 = *(v41 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D50, &qword_2227438F8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - v17;
  (*(v14 + 16))(v38 - v17, a4, v13, v16);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v18, v13);
  *(v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D58, &qword_222743910);
  v21 = a5;
  v22 = sub_222738F2C();
  v23 = sub_22273946C();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_222743908;
  v24[5] = v20;
  v38[1] = v22;
  v24[6] = v22;

  sub_2226D4E54(0, 0, v12, &unk_222743918, v24);

  v25 = v39;
  v26 = *(v39 + 16);
  v27 = v9;
  v28 = v9;
  v29 = v41;
  v26(v28, v42, v41);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = v30 + v40;
  v42 = swift_allocObject();
  v32 = *(v25 + 32);
  v32(v42 + v30, v27, v29);
  v26(v27, v43, v29);
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v32(v34 + v30, v27, v29);
  v35 = v44;
  *(v34 + v33) = v44;
  v46[3] = sub_2227387BC();
  v46[4] = MEMORY[0x277D22078];
  v46[0] = v45;
  v36 = v35;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2226C40E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v44 = a1;
  v45 = a6;
  v42 = a2;
  v43 = a3;
  v41 = sub_222737FDC();
  v39 = *(v41 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D10, &qword_2227438A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - v17;
  (*(v14 + 16))(v38 - v17, a4, v13, v16);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v18, v13);
  *(v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D18, &qword_2227438B8);
  v21 = a5;
  v22 = sub_222738F2C();
  v23 = sub_22273946C();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_2227438B0;
  v24[5] = v20;
  v38[1] = v22;
  v24[6] = v22;

  sub_2226D4E54(0, 0, v12, &unk_2227438C0, v24);

  v25 = v39;
  v26 = *(v39 + 16);
  v27 = v9;
  v28 = v9;
  v29 = v41;
  v26(v28, v42, v41);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = v30 + v40;
  v42 = swift_allocObject();
  v32 = *(v25 + 32);
  v32(v42 + v30, v27, v29);
  v26(v27, v43, v29);
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v32(v34 + v30, v27, v29);
  v35 = v44;
  *(v34 + v33) = v44;
  v46[3] = sub_2227387BC();
  v46[4] = MEMORY[0x277D22078];
  v46[0] = v45;
  v36 = v35;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2226C4538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v44 = a1;
  v45 = a6;
  v42 = a2;
  v43 = a3;
  v41 = sub_222737FDC();
  v39 = *(v41 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CC8, qword_2227437F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - v17;
  (*(v14 + 16))(v38 - v17, a4, v13, v16);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v20 = swift_allocObject();
  (*(v14 + 32))(v20 + v19, v18, v13);
  *(v20 + ((v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CD0, &qword_222743850);
  v21 = a5;
  v22 = sub_222738F2C();
  v23 = sub_22273946C();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_222743848;
  v24[5] = v20;
  v38[1] = v22;
  v24[6] = v22;

  sub_2226D4E54(0, 0, v12, &unk_222743858, v24);

  v25 = v39;
  v26 = *(v39 + 16);
  v27 = v9;
  v28 = v9;
  v29 = v41;
  v26(v28, v42, v41);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = v30 + v40;
  v42 = swift_allocObject();
  v32 = *(v25 + 32);
  v32(v42 + v30, v27, v29);
  v26(v27, v43, v29);
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v32(v34 + v30, v27, v29);
  v35 = v44;
  *(v34 + v33) = v44;
  v46[3] = sub_2227387BC();
  v46[4] = MEMORY[0x277D22078];
  v46[0] = v45;
  v36 = v35;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2226C498C(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  sub_2227381BC();
  v2[27] = swift_task_alloc();
  v3 = sub_22273757C();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D60, &qword_222743930);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D68, &qword_222743938);
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D70, &qword_222743940);
  v2[37] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D78, &qword_222743948);
  v2[38] = v6;
  v2[39] = *(v6 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226C4BE8, 0, 0);
}

uint64_t sub_2226C4BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D50, &qword_2227438F8);
  sub_22273752C();
  v1 = sub_2226C9FAC(&qword_27D013D80, &qword_27D013D78, &qword_222743948);
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_2226C4CCC;
  v3 = v0[37];
  v4 = v0[38];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2226C4CCC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2226C547C;
  }

  else
  {
    v2 = sub_2226C4DE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226C4DFC()
{
  v1 = v0[37];
  if ((*(v0[35] + 48))(v1, 1, v0[34]) == 1)
  {
    (*(v0[39] + 8))(v0[40], v0[38]);
    v2 = 0;
    v3 = 0;
LABEL_10:

    v24 = v0[1];

    return v24(v3, v2);
  }

  sub_2226CA000(v1, v0[36], &qword_27D013D68, &qword_222743938);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = v0[39];
    v18 = v0[40];
    v20 = v0[38];
    v22 = v0[32];
    v21 = v0[33];
    v23 = v0[31];
    (*(v22 + 32))(v21, v0[36], v23);
    sub_22273753C();
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v3 = v0[21];
    v2 = v0[22];
    goto LABEL_10;
  }

  (*(v0[29] + 32))(v0[30], v0[36], v0[28]);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v27 = v0[39];
  v28 = v0[38];
  v29 = v0[40];
  v4 = v0[29];
  v30 = v0[30];
  v5 = v0[28];
  v6 = v0[26];
  v31 = sub_222738F6C();
  __swift_project_value_buffer(v31, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_2227381AC();
  sub_22273819C();
  v26 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  v0[5] = v26;
  v0[2] = v6;
  v25 = v6;
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  v0[9] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  v8 = *(v4 + 16);
  v8(boxed_opaque_existential_1, v30, v5);
  sub_2227381DC();
  sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  sub_2226C9638(&qword_27D013D08, MEMORY[0x277CEE0C8], MEMORY[0x277CEE0D0]);
  v9 = swift_allocError();
  v8(v10, v30, v5);
  swift_willThrow();
  (*(v4 + 8))(v30, v5);
  (*(v27 + 8))(v29, v28);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  v11 = v9;
  sub_2227381AC();
  sub_22273819C();
  v0[13] = v26;
  v0[10] = v25;
  v12 = v25;
  sub_22273816C();
  sub_222660468((v0 + 10), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  swift_getErrorValue();
  v13 = v0[18];
  v14 = v0[19];
  v0[17] = v14;
  v15 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  (*(*(v14 - 8) + 16))(v15, v13, v14);
  sub_2227381DC();
  sub_222660468((v0 + 14), &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2226C547C()
{
  *(v0 + 184) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2226C5508(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  sub_2227381BC();
  v2[25] = swift_task_alloc();
  v3 = sub_22273757C();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D28, &qword_2227438D8);
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D30, &qword_2227438E0);
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D38, &qword_2227438E8);
  v2[35] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D40, &qword_2227438F0);
  v2[36] = v6;
  v2[37] = *(v6 - 8);
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226C5764, 0, 0);
}

uint64_t sub_2226C5764()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D10, &qword_2227438A0);
  sub_22273752C();
  v1 = sub_2226C9FAC(&qword_27D013D48, &qword_27D013D40, &qword_2227438F0);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_2226C5848;
  v3 = v0[35];
  v4 = v0[36];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2226C5848()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_2226C5FF0;
  }

  else
  {
    v2 = sub_2226C595C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226C5978()
{
  v1 = *(v0 + 280);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v2 = 2;
LABEL_10:

    v23 = *(v0 + 8);

    return v23(v2);
  }

  sub_2226CA000(v1, *(v0 + 272), &qword_27D013D30, &qword_2227438E0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v18 = *(v0 + 296);
    v17 = *(v0 + 304);
    v19 = *(v0 + 288);
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v22 = *(v0 + 232);
    (*(v21 + 32))(v20, *(v0 + 272), v22);
    sub_22273753C();
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    v2 = *(v0 + 328);
    goto LABEL_10;
  }

  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 272), *(v0 + 208));
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 296);
  v27 = *(v0 + 288);
  v28 = *(v0 + 304);
  v3 = *(v0 + 216);
  v29 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v30 = sub_222738F6C();
  __swift_project_value_buffer(v30, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_2227381AC();
  sub_22273819C();
  v25 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  *(v0 + 40) = v25;
  *(v0 + 16) = v5;
  v24 = v5;
  sub_22273816C();
  sub_222660468(v0 + 16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  *(v0 + 72) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  v7 = *(v3 + 16);
  v7(boxed_opaque_existential_1, v29, v4);
  sub_2227381DC();
  sub_222660468(v0 + 48, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  sub_2226C9638(&qword_27D013D08, MEMORY[0x277CEE0C8], MEMORY[0x277CEE0D0]);
  v8 = swift_allocError();
  v7(v9, v29, v4);
  swift_willThrow();
  (*(v3 + 8))(v29, v4);
  (*(v26 + 8))(v28, v27);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  v10 = v8;
  sub_2227381AC();
  sub_22273819C();
  *(v0 + 104) = v25;
  *(v0 + 80) = v24;
  v11 = v24;
  sub_22273816C();
  sub_222660468(v0 + 80, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  swift_getErrorValue();
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  *(v0 + 136) = v13;
  v14 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_2227381DC();
  sub_222660468(v0 + 112, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2226C5FF0()
{
  *(v0 + 168) = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2226C607C(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  sub_2227381BC();
  v2[27] = swift_task_alloc();
  v3 = sub_22273757C();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CE0, &qword_222743878);
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CE8, &qword_222743880);
  v2[34] = v5;
  v2[35] = *(v5 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CF0, &qword_222743888);
  v2[37] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CF8, &unk_222743890);
  v2[38] = v6;
  v2[39] = *(v6 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226C62D8, 0, 0);
}

uint64_t sub_2226C62D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CC8, qword_2227437F0);
  sub_22273752C();
  v1 = sub_2226C9FAC(&qword_27D013D00, &qword_27D013CF8, &unk_222743890);
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_2226C63BC;
  v3 = v0[37];
  v4 = v0[38];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2226C63BC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2226CA11C;
  }

  else
  {
    v2 = sub_2226C64D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226C64EC()
{
  v1 = *(v0 + 296);
  if ((*(*(v0 + 280) + 48))(v1, 1, *(v0 + 272)) == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    v2 = 0;
    v3 = 1;
LABEL_10:

    v24 = *(v0 + 8);

    return v24(v2, v3);
  }

  sub_2226CA000(v1, *(v0 + 288), &qword_27D013CE8, &qword_222743880);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = *(v0 + 304);
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);
    v23 = *(v0 + 248);
    (*(v22 + 32))(v21, *(v0 + 288), v23);
    sub_22273753C();
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    goto LABEL_10;
  }

  (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 288), *(v0 + 224));
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 312);
  v28 = *(v0 + 304);
  v29 = *(v0 + 320);
  v4 = *(v0 + 232);
  v30 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v31 = sub_222738F6C();
  __swift_project_value_buffer(v31, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_2227381AC();
  sub_22273819C();
  v26 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  *(v0 + 40) = v26;
  *(v0 + 16) = v6;
  v25 = v6;
  sub_22273816C();
  sub_222660468(v0 + 16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  *(v0 + 72) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  v8 = *(v4 + 16);
  v8(boxed_opaque_existential_1, v30, v5);
  sub_2227381DC();
  sub_222660468(v0 + 48, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  sub_2226C9638(&qword_27D013D08, MEMORY[0x277CEE0C8], MEMORY[0x277CEE0D0]);
  v9 = swift_allocError();
  v8(v10, v30, v5);
  swift_willThrow();
  (*(v4 + 8))(v30, v5);
  (*(v27 + 8))(v29, v28);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  v11 = v9;
  sub_2227381AC();
  sub_22273819C();
  *(v0 + 104) = v26;
  *(v0 + 80) = v25;
  v12 = v25;
  sub_22273816C();
  sub_222660468(v0 + 80, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  swift_getErrorValue();
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  *(v0 + 136) = v14;
  v15 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  (*(*(v14 - 8) + 16))(v15, v13, v14);
  sub_2227381DC();
  sub_222660468(v0 + 112, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

void sub_2226C6B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2227412F0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EB0, &qword_222743920);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_222737FCC();
}

void sub_2226C6E60(char a1)
{
  v2 = sub_2227381BC();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2227412F0;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D20, &qword_2227438C8);
  *(v3 + 32) = a1;
  v4 = sub_222737FCC();
}

void sub_2226C7144(uint64_t a1, char a2)
{
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2227412F0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CD8, &qword_222743868);
  *(v5 + 32) = a1;
  *(v5 + 40) = a2 & 1;
  v6 = sub_222737FCC();
}

void sub_2226C7434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_222738D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v8 = swift_allocObject();
  v13 = xmmword_2227412F0;
  *(v8 + 16) = xmmword_2227412F0;
  swift_getErrorValue();
  sub_222739BEC();
  sub_222738D3C();
  sub_222738D0C();
  (*(v5 + 8))(v7, v4);
  v9 = v15;
  v10 = __swift_project_boxed_opaque_existential_1(v14, v15);
  *(v8 + 56) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v10, v9);
  __swift_destroy_boxed_opaque_existential_1(v14);
  v12 = sub_222737FCC();
}

uint64_t sub_2226C7848(void *a1)
{
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22273751C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D50, &qword_2227438F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = &v29 - v14;
  [a1 integerValue];
  v16 = sub_2227375BC();
  if (v17)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v18 = sub_222738F6C();
    __swift_project_value_buffer(v18, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v33[3] = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    v33[0] = a1;
    v19 = a1;
    sub_22273816C();
    sub_222660468(v33, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();
  }

  else
  {
    v30 = v5;
    v31 = v9;
    v32 = v16;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
    sub_2227384EC();
    v20 = sub_222738CFC();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {
      sub_222660468(v15, &unk_27D013A90, &unk_222741DC0);
    }

    else
    {
      swift_getKeyPath();
      sub_222738CCC();

      v22 = v33[0];
      (*(v21 + 8))(v15, v20);
      if (v22)
      {
        sub_2227375CC();
        v23 = sub_22273759C();
        v24 = v22;
        sub_22273750C();
        sub_22273756C();

        (*(v30 + 8))(v7, v4);
        sub_22262E364(0, &qword_281312B48, 0x277CD4640);
        v25 = sub_2227396EC();
        MEMORY[0x28223BE20](v25);
        *(&v29 - 2) = v11;
        *(&v29 - 1) = a1;
        v26 = sub_2227396FC();

        (*(v31 + 8))(v11, v8);
        return v26;
      }
    }

    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v28 = sub_222738F6C();
    __swift_project_value_buffer(v28, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();
  }

  return 0;
}

uint64_t sub_2226C7F0C(void *a1)
{
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22273751C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D10, &qword_2227438A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = &v29 - v14;
  [a1 integerValue];
  v16 = sub_2227375AC();
  if (v17)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v18 = sub_222738F6C();
    __swift_project_value_buffer(v18, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v33[3] = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    v33[0] = a1;
    v19 = a1;
    sub_22273816C();
    sub_222660468(v33, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();
  }

  else
  {
    v30 = v5;
    v31 = v9;
    v32 = v16;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
    sub_2227384EC();
    v20 = sub_222738CFC();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {
      sub_222660468(v15, &unk_27D013A90, &unk_222741DC0);
    }

    else
    {
      swift_getKeyPath();
      sub_222738CCC();

      v22 = v33[0];
      (*(v21 + 8))(v15, v20);
      if (v22)
      {
        sub_2227375CC();
        v23 = sub_22273759C();
        v24 = v22;
        sub_22273750C();
        sub_22273755C();

        (*(v30 + 8))(v7, v4);
        sub_22262E364(0, &qword_281312B48, 0x277CD4640);
        v25 = sub_2227396EC();
        MEMORY[0x28223BE20](v25);
        *(&v29 - 2) = v11;
        *(&v29 - 1) = a1;
        v26 = sub_2227396FC();

        (*(v31 + 8))(v11, v8);
        return v26;
      }
    }

    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v28 = sub_222738F6C();
    __swift_project_value_buffer(v28, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();
  }

  return 0;
}

uint64_t sub_2226C85D0(void *a1)
{
  v3 = sub_2227381BC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_22273751C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CC8, qword_2227437F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  *&v13 = MEMORY[0x28223BE20](v12 - 8).n128_u64[0];
  v15 = &v29 - v14;
  [a1 integerValue];
  v16 = sub_22273758C();
  if (v17)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v18 = sub_222738F6C();
    __swift_project_value_buffer(v18, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v33[3] = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    v33[0] = a1;
    v19 = a1;
    sub_22273816C();
    sub_222660468(v33, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();
  }

  else
  {
    v30 = v5;
    v31 = v9;
    v32 = v16;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
    sub_2227384EC();
    v20 = sub_222738CFC();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {
      sub_222660468(v15, &unk_27D013A90, &unk_222741DC0);
    }

    else
    {
      swift_getKeyPath();
      sub_222738CCC();

      v22 = v33[0];
      (*(v21 + 8))(v15, v20);
      if (v22)
      {
        sub_2227375CC();
        v23 = sub_22273759C();
        v24 = v22;
        sub_22273750C();
        sub_22273754C();

        (*(v30 + 8))(v7, v4);
        sub_22262E364(0, &qword_281312B48, 0x277CD4640);
        v25 = sub_2227396EC();
        MEMORY[0x28223BE20](v25);
        *(&v29 - 2) = v11;
        *(&v29 - 1) = a1;
        v26 = sub_2227396FC();

        (*(v31 + 8))(v11, v8);
        return v26;
      }
    }

    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v28 = sub_222738F6C();
    __swift_project_value_buffer(v28, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    sub_2227381FC();
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();
  }

  return 0;
}

uint64_t sub_2226C8D34(char a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *(v3 + 16) = a1;
  return sub_22273966C();
}

uint64_t sub_2226C8E14(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (v3 == 2)
  {
    *&v8[33] = v1;
    *&v8[41] = v2;
    v4 = *(a1 + 32);

    v4(v8, v6);

    LOBYTE(v3) = v8[0];
    *(a1 + 24) = v8[0];
  }

  return v3 & 1;
}

uint64_t sub_2226C8E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2226C8F28;

  return sub_2226C498C(a2, a3);
}

uint64_t sub_2226C8F28(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2226C9044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2226C90E4;

  return sub_2226C5508(a2, a3);
}

uint64_t sub_2226C90E4(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_2226C91F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2226C9294;

  return sub_2226C607C(a2, a3);
}

uint64_t sub_2226C9294(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    *(v8 + 8) = a2 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2226C93B8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CC8, qword_2227437F0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_2226C91F4(a1, v1 + v5, v6);
}

uint64_t sub_2226C94E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D3EDC(a1, v4, v5, v6, v7, v8);
}

void sub_2226C95C0(uint64_t a1)
{
  sub_222737FDC();
  v2 = *a1;
  v3 = *(a1 + 8);

  sub_2226C7144(v2, v3);
}

uint64_t sub_2226C9638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2226C9704(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D10, &qword_2227438A0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_2226C9044(a1, v1 + v5, v6);
}

uint64_t sub_2226C9830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D3C00(a1, v4, v5, v6, v7, v8);
}

void sub_2226C990C(char *a1)
{
  sub_222737FDC();
  v2 = *a1;

  sub_2226C6E60(v2);
}

uint64_t objectdestroy_7Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_2226C9AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, void, void))
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a6(a1, a2, a3, v6 + v12, *(v6 + v13), *(v6 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_10Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2226C9C10(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D50, &qword_2227438F8) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_2226C8E88(a1, v1 + v5, v6);
}

uint64_t sub_2226C9D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D3988(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_18Tm_0()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2226C9EA0(uint64_t *a1)
{
  sub_222737FDC();
  v2 = *a1;
  v3 = a1[1];

  sub_2226C6B70(v2, v3);
}

void sub_2226C9F10(uint64_t a1)
{
  v3 = *(sub_222737FDC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226C7434(a1, v1 + v4, v5);
}

uint64_t sub_2226C9FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2226CA000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2226CA068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2226C8E14(v1);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void *sub_2226CA09C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t type metadata accessor for JSDiagnostics(uint64_t a1)
{
  result = qword_281313DB8;
  if (!qword_281313DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226CA198(uint64_t a1)
{
  result = sub_22273842C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2226CA204(void *a1, uint64_t a2)
{
  v142 = sub_2227385BC();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_222738D8C();
  v126 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v133 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v129 = &v117 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D88, &unk_222743AA0);
  MEMORY[0x28223BE20](v8 - 8);
  v124 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v123 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v131 = &v117 - v13;
  v138 = sub_22273842C();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v139 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_222738FAC();
  v130 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2227381FC();
  v16 = *(v148 - 8);
  v17 = v16;
  MEMORY[0x28223BE20](v148);
  v120 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v118 = &v117 - v20;
  MEMORY[0x28223BE20](v21);
  v127 = &v117 - v22;
  MEMORY[0x28223BE20](v23);
  v117 = &v117 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v117 - v26;
  MEMORY[0x28223BE20](v27);
  v122 = &v117 - v28;
  MEMORY[0x28223BE20](v29);
  v121 = &v117 - v30;
  MEMORY[0x28223BE20](v31);
  v119 = &v117 - v32;
  MEMORY[0x28223BE20](v33);
  v128 = &v117 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v117 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v117 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v41 = *(v16 + 72);
  v42 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2227413C0;
  v145 = v42;
  sub_22273813C();
  v136 = a1;
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  *(&v155[0] + 1) = swift_getMetatypeMetadata();
  *&v154 = DynamicType;
  v146 = v41;
  sub_2227381DC();
  sub_222660468(&v154, &qword_27D0130C0, &unk_2227413B0);
  v45 = a2 + 64;
  v46 = 1 << *(a2 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a2 + 64);
  v49 = (v46 + 63) >> 6;
  v147 = (v17 + 32);
  v144 = a2;

  v50 = 0;
  if (!v48)
  {
LABEL_5:
    if (v49 <= v50 + 1)
    {
      v52 = v50 + 1;
    }

    else
    {
      v52 = v49;
    }

    v53 = v52 - 1;
    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v51 >= v49)
      {
        v48 = 0;
        v152 = 0u;
        v153 = 0u;
        v50 = v53;
        v151 = 0u;
        goto LABEL_14;
      }

      v48 = *(v45 + 8 * v51);
      ++v50;
      if (v48)
      {
        v50 = v51;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  while (1)
  {
    v51 = v50;
LABEL_13:
    v54 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v55 = v54 | (v51 << 6);
    v56 = (*(v144 + 48) + 16 * v55);
    v57 = *v56;
    v58 = v56[1];
    sub_22262BF70(*(v144 + 56) + 32 * v55, &v149);
    *&v151 = v57;
    *(&v151 + 1) = v58;
    sub_22269457C(&v149, &v152);

LABEL_14:
    v154 = v151;
    v155[0] = v152;
    v155[1] = v153;
    v59 = *(&v151 + 1);
    if (!*(&v151 + 1))
    {
      break;
    }

    v60 = v154;
    sub_22269457C(v155, &v151);
    v150 = MEMORY[0x277D837D0];
    *&v149 = v60;
    *(&v149 + 1) = v59;
    sub_2227381DC();
    sub_222660468(&v149, &qword_27D0130C0, &unk_2227413B0);
    v62 = *(v43 + 16);
    v61 = *(v43 + 24);
    if (v62 >= v61 >> 1)
    {
      v43 = sub_222694FCC((v61 > 1), v62 + 1, 1, v43);
    }

    *(v43 + 16) = v62 + 1;
    DynamicType = *v147;
    (*v147)(v43 + v145 + v62 * v146, v40, v148);
    sub_22262BF70(&v151, &v149);
    sub_2227381DC();
    sub_222660468(&v149, &qword_27D0130C0, &unk_2227413B0);
    v64 = *(v43 + 16);
    v63 = *(v43 + 24);
    if (v64 >= v63 >> 1)
    {
      v43 = sub_222694FCC((v63 > 1), v64 + 1, 1, v43);
    }

    __swift_destroy_boxed_opaque_existential_1(&v151);
    *(v43 + 16) = v64 + 1;
    DynamicType(v43 + v145 + v64 * v146, v37, v148);
    if (!v48)
    {
      goto LABEL_5;
    }
  }

  v65 = v136;
  *&v149 = v136;
  v66 = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  v67 = v134;
  v68 = v135;
  if (swift_dynamicCast())
  {
    (*(v137 + 16))(v139, v143, v138);
    sub_22273844C();
    swift_allocObject();
    sub_22273840C();
    swift_getErrorValue();

    v69 = sub_222739BEC();
    *(&v155[0] + 1) = MEMORY[0x277D837D0];
    *&v154 = v69;
    *(&v154 + 1) = v70;
    v71 = v128;
    sub_2227381DC();
    sub_222660468(&v154, &qword_27D0130C0, &unk_2227413B0);
    v72 = v131;
    (*v147)(v131, v71, v148);
    *&v151 = v43;
    v73 = *(v43 + 16);
    v74 = v141;
    v75 = v140;
    if (v73 >= *(v43 + 24) >> 1)
    {
      *&v151 = sub_222694FCC(1, v73 + 1, 1, v43);
    }

    v76 = v142;
    sub_2226CB778(0, 0, 1, v72);
    (*(v130 + 8))(v67, v68);

    goto LABEL_53;
  }

  *&v149 = v65;
  v77 = v65;
  v78 = v129;
  DynamicType = v132;
  if (swift_dynamicCast())
  {
    v50 = v126;
    v48 = v133;
    (*(v126 + 32))(v133, v78, DynamicType);
    (*(v137 + 16))(v139, v143, v138);
    sub_22273844C();
    swift_allocObject();
    sub_22273840C();

    v79 = sub_222738D4C();
    *(&v155[0] + 1) = MEMORY[0x277D837D0];
    *&v154 = v79;
    *(&v154 + 1) = v80;
    v81 = v119;
    sub_2227381DC();
    sub_222660468(&v154, &qword_27D0130C0, &unk_2227413B0);
    v82 = *v147;
    v83 = v123;
    (*v147)(v123, v81, v148);
    *&v151 = v43;
    v84 = *(v43 + 16);
    if (v84 >= *(v43 + 24) >> 1)
    {
      v43 = sub_222694FCC(1, v84 + 1, 1, v43);
      *&v151 = v43;
    }

    sub_2226CB778(0, 0, 1, v83);
    v85 = sub_222738D1C();
    if ((v86 & 1) == 0)
    {
      v87 = v85;
      sub_22273813C();
      v89 = *(v43 + 16);
      v88 = *(v43 + 24);
      if (v89 >= v88 >> 1)
      {
        v43 = sub_222694FCC((v88 > 1), v89 + 1, 1, v43);
      }

      *(v43 + 16) = v89 + 1;
      v82(v43 + v145 + v89 * v146, v121, v148);
      v90 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(&v155[0] + 1) = sub_2226CB914();
      *&v154 = v90;
      sub_2227381DC();
      sub_222660468(&v154, &qword_27D0130C0, &unk_2227413B0);
      v92 = *(v43 + 16);
      v91 = *(v43 + 24);
      if (v92 >= v91 >> 1)
      {
        v43 = sub_222694FCC((v91 > 1), v92 + 1, 1, v43);
      }

      v48 = v133;
      *(v43 + 16) = v92 + 1;
      v82(v43 + v145 + v92 * v146, v122, v148);
    }

    v93 = sub_222738D2C();
    if ((v94 & 1) == 0)
    {
      v95 = v93;
      sub_22273813C();
      v97 = *(v43 + 16);
      v96 = *(v43 + 24);
      if (v97 >= v96 >> 1)
      {
        v43 = sub_222694FCC((v96 > 1), v97 + 1, 1, v43);
      }

      *(v43 + 16) = v97 + 1;
      v82(v43 + v145 + v97 * v146, v125, v148);
      v98 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(&v155[0] + 1) = sub_2226CB914();
      *&v154 = v98;
      v99 = v117;
      sub_2227381DC();
      sub_222660468(&v154, &qword_27D0130C0, &unk_2227413B0);
      v101 = *(v43 + 16);
      v100 = *(v43 + 24);
      if (v101 >= v100 >> 1)
      {
        v43 = sub_222694FCC((v100 > 1), v101 + 1, 1, v43);
      }

      v48 = v133;
      *(v43 + 16) = v101 + 1;
      v82(v43 + v145 + v101 * v146, v99, v148);
    }

    v102 = sub_222738D7C();
    if (v103)
    {
      v104 = v102;
      v105 = v103;
      sub_22273813C();
      v107 = *(v43 + 16);
      v106 = *(v43 + 24);
      if (v107 >= v106 >> 1)
      {
        v43 = sub_222694FCC((v106 > 1), v107 + 1, 1, v43);
      }

      *(v43 + 16) = v107 + 1;
      v82(v43 + v145 + v107 * v146, v127, v148);
      *(&v155[0] + 1) = MEMORY[0x277D837D0];
      *&v154 = v104;
      *(&v154 + 1) = v105;
      v108 = v118;
      sub_2227381DC();
      sub_222660468(&v154, &qword_27D0130C0, &unk_2227413B0);
      v110 = *(v43 + 16);
      v109 = *(v43 + 24);
      if (v110 >= v109 >> 1)
      {
        v43 = sub_222694FCC((v109 > 1), v110 + 1, 1, v43);
      }

      (*(v50 + 8))(v48, DynamicType);
      *(v43 + 16) = v110 + 1;
      v82(v43 + v145 + v110 * v146, v108, v148);
      goto LABEL_52;
    }

LABEL_51:
    (*(v50 + 8))(v48, DynamicType);
LABEL_52:

    v76 = v142;
    v74 = v141;
    v75 = v140;
    goto LABEL_53;
  }

  (*(v137 + 16))(v139, v143, v138);
  sub_22273844C();
  swift_allocObject();
  sub_22273840C();
  swift_getErrorValue();

  v111 = sub_222739BEC();
  *(&v155[0] + 1) = MEMORY[0x277D837D0];
  *&v154 = v111;
  *(&v154 + 1) = v112;
  v113 = v120;
  sub_2227381DC();
  sub_222660468(&v154, &qword_27D0130C0, &unk_2227413B0);
  v114 = v124;
  (*v147)(v124, v113, v148);
  *&v151 = v43;
  v115 = *(v43 + 16);
  v74 = v141;
  v75 = v140;
  if (v115 >= *(v43 + 24) >> 1)
  {
    *&v151 = sub_222694FCC(1, v115 + 1, 1, v43);
  }

  v76 = v142;
  sub_2226CB778(0, 0, 1, v114);
LABEL_53:
  (*(v74 + 104))(v75, *MEMORY[0x277D21DE8], v76);
  sub_22273843C();

  return (*(v74 + 8))(v75, v76);
}

uint64_t sub_2226CB4A0(uint64_t a1)
{
  v3 = sub_22273842C();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v4);
  sub_22273844C();
  swift_allocObject();
  v7 = sub_22273840C();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(sub_22273800C() - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v24 = *(v9 + 72);
    v11 = *(sub_2227381FC() - 8);
    v12 = *(v11 + 72);
    v22 = *(v11 + 80);
    v23 = v12;
    v21 = (v22 + 32) & ~v22;
    v20 = v21 + 2 * v12;
    v19 = xmmword_2227413C0;
    v13 = MEMORY[0x277D837D0];
    do
    {
      v28 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      *(swift_allocObject() + 16) = v19;
      v14 = sub_222737FFC();
      v27 = v13;
      v25 = v14;
      v26 = v15;
      sub_2227381DC();
      sub_222660468(&v25, &qword_27D0130C0, &unk_2227413B0);
      v16 = sub_222737FEC();
      v27 = v13;
      v25 = v16;
      v26 = v17;
      sub_2227381DC();
      sub_222660468(&v25, &qword_27D0130C0, &unk_2227413B0);
      sub_222738C6C();

      v10 += v24;
      --v8;
    }

    while (v8);
  }
}

unint64_t sub_2226CB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_2227381FC();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_222660468(v25, &qword_27D013D88, &unk_222743AA0);
  }

  if (v18 < 1)
  {
    return sub_222660468(v25, &qword_27D013D88, &unk_222743AA0);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_222660468(v25, &qword_27D013D88, &unk_222743AA0);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_2226CB914()
{
  result = qword_281312B80;
  if (!qword_281312B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312B80);
  }

  return result;
}

unint64_t sub_2226CB960(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

uint64_t type metadata accessor for JSInitFailureObserver(uint64_t a1)
{
  result = qword_281313308;
  if (!qword_281313308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226CBA94(uint64_t a1)
{
  result = type metadata accessor for JSDiagnostics(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2226CBB00(uint64_t a1, void *a2)
{
  v4 = sub_2227381BC();
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v5 = sub_222738F6C();
  __swift_project_value_buffer(v5, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v13[0] = a1;
  sub_22273816C();
  sub_222660468(v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  MetatypeMetadata = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000022274C1B0;
  v13[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013D90, &unk_222743B00);
  v8 = sub_22273920C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = sub_222710688(inited);
  swift_setDeallocating();
  sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
  sub_2226CA204(a2, v10);
}

uint64_t sub_2226CBE6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (ASCSupportsPackageURLPreference())
  {
    v5 = [objc_opt_self() daemonDefaults];
    v6 = [v5 debugPackageURL];

    if (v6)
    {
      sub_22273919C();

      sub_22273730C();

      v7 = sub_22273731C();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v4, 1, v7) != 1)
      {
        (*(v8 + 32))(a1, v4, v7);
        return (*(v8 + 56))(a1, 0, 2, v7);
      }

      sub_222660468(v4, &qword_27D013DC0, qword_222743950);
    }
  }

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v9 = sub_222738F6C();
  __swift_project_value_buffer(v9, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  sub_2227381FC();
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v10 = sub_22273731C();
  return (*(*(v10 - 8) + 56))(a1, 2, 2, v10);
}

uint64_t sub_2226CC174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v20 = sub_22273729C();
  v21 = v19;
  if (v20 == 0xD000000000000034 && 0x800000022274C260 == v19 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v22 = sub_22273731C();
    v23 = *(v22 - 8);
    result = (*(v23 + 48))(v18, 1, v22);
    if (result != 1)
    {

      return (*(v23 + 32))(a2, v18, v22);
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v20 == 0xD000000000000036 && 0x800000022274C2A0 == v21 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v25 = sub_22273731C();
    v26 = *(v25 - 8);
    result = (*(v26 + 48))(v15, 1, v25);
    if (result != 1)
    {

      return (*(v26 + 32))(a2, v15, v25);
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (v20 == 0xD000000000000035 && 0x800000022274C2E0 == v21 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v27 = sub_22273731C();
    v28 = *(v27 - 8);
    result = (*(v28 + 48))(v12, 1, v27);
    if (result != 1)
    {

      return (*(v28 + 32))(a2, v12, v27);
    }

    goto LABEL_32;
  }

  if (v20 == 0xD000000000000038 && 0x800000022274C320 == v21 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v29 = sub_22273731C();
    v30 = *(v29 - 8);
    result = (*(v30 + 48))(v9, 1, v29);
    if (result != 1)
    {

      return (*(v30 + 32))(a2, v9, v29);
    }

    goto LABEL_33;
  }

  if (v20 == 0xD000000000000043 && 0x800000022274C360 == v21 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v31 = sub_22273731C();
    v32 = *(v31 - 8);
    result = (*(v32 + 48))(v6, 1, v31);
    if (result != 1)
    {

      return (*(v32 + 32))(a2, v6, v31);
    }

    goto LABEL_34;
  }

  v33 = sub_22273731C();
  v34 = *(*(v33 - 8) + 16);

  return v34(a2, a1, v33);
}

uint64_t sub_2226CC744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_22273728C() == 0x6B63617074656ALL && v4 == 0xE700000000000000)
  {

LABEL_5:
    v6 = sub_22273731C();
    v7 = *(*(v6 - 8) + 16);

    return v7(a2, a1, v6);
  }

  v5 = sub_222739B4C();

  if (v5)
  {
    goto LABEL_5;
  }

  v9 = sub_22273731C();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = ASCSupportsPackageURLPreference();
  if (v10)
  {
    v11 = [objc_opt_self() daemonDefaults];
    v12 = [v11 preferInternalJS];

    LOBYTE(v10) = v12;
  }

  sub_2226D09D8(v10);
  sub_2227372CC();
}

uint64_t sub_2226CC8C4@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v48 = a3;
  v49 = a2;
  v46 = a1;
  v5 = sub_222737F2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = sub_22273731C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226D02B4(v4, v23);
  v24 = (*(v12 + 48))(v23, 2, v11);
  if (v24)
  {
    if (v24 == 1)
    {
      v25 = [objc_opt_self() asc_frameworkBundle];
      v26 = [v25 bundleURL];

      sub_2227372FC();
      sub_2227372DC();
      v27 = *(v12 + 8);
      v46 = v27;
      v27(v14, v11);
      sub_2226CC744(v17, v20);
      v27(v17, v11);
      (*(v6 + 104))(v10, *MEMORY[0x277D21A70], v5);
      v45 = swift_allocObject();
      v28 = v5;
      v29 = v48;
      v30 = v49;
      *(v45 + 16) = v49;
      v29[3] = sub_222737DCC();
      v29[4] = sub_2226D0C9C(&unk_27D013E98, MEMORY[0x277D219B0], MEMORY[0x277D219A8]);
      __swift_allocate_boxed_opaque_existential_1(v29);
      (*(v12 + 16))(v17, v20, v11);
      (*(v6 + 16))(v47, v10, v28);
      v31 = v30;
      sub_222737DDC();
      (*(v6 + 8))(v10, v28);
      return v46(v20, v11);
    }

    else
    {
      sub_22273916C();
      v39 = swift_allocObject();
      v40 = v49;
      *(v39 + 16) = v49;
      v41 = sub_222737E0C();
      v42 = v48;
      v48[3] = v41;
      v42[4] = sub_2226D0C9C(&unk_281312FE0, MEMORY[0x277D219C8], MEMORY[0x277D219C0]);
      __swift_allocate_boxed_opaque_existential_1(v42);
      v43 = v40;
      swift_unknownObjectRetain();
      return sub_222737E1C();
    }
  }

  else
  {
    (*(v12 + 32))(v20, v23, v11);
    sub_2226CC744(v20, v17);
    v33 = swift_allocObject();
    v34 = v49;
    *(v33 + 16) = v49;
    v35 = sub_222737DCC();
    v36 = v48;
    v48[3] = v35;
    v36[4] = sub_2226D0C9C(&unk_27D013E98, MEMORY[0x277D219B0], MEMORY[0x277D219A8]);
    __swift_allocate_boxed_opaque_existential_1(v36);
    (*(v12 + 16))(v14, v17, v11);
    v37 = v34;
    sub_222737DEC();
    v38 = *(v12 + 8);
    v38(v17, v11);
    return (v38)(v20, v11);
  }
}

uint64_t sub_2226CCED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22273731C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226CC174(a1, v7);
  sub_2226CC744(v7, a2);
  return (*(v5 + 8))(v7, v4);
}

id sub_2226CCFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013EA8, &unk_222743BD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = [objc_opt_self() ams:a3 configurationWithProcessInfo:a1 bag:?];
  swift_unknownObjectRetain();
  sub_222738B1C();
  v9 = sub_222738BBC();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_222737F1C();
  sub_222660468(v7, &qword_27D013EA8, &unk_222743BD8);
  return v8;
}

uint64_t sub_2226CD100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v40 = sub_22273731C();
  MEMORY[0x28223BE20](v40);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v32 - v8;
  v37 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F98];
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v38 = (v7 + 48);
  v39 = (v7 + 56);
  v33 = v7;
  v34 = (v7 + 32);

  v14 = 0;
  while (1)
  {
    v15 = v14;
    if (!v11)
    {
      break;
    }

LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(a1 + 48) + 2 * (v16 | (v14 << 6)));

    sub_2227372AC();
    v18 = v40;
    (*v39)(v4, 0, 1, v40);

    if ((*v38)(v4, 1, v18) == 1)
    {
      result = sub_222660468(v4, &qword_27D013DC0, qword_222743950);
    }

    else
    {
      v19 = *v34;
      (*v34)(v36, v4, v40);
      v32 = v19;
      v19(v35, v36, v40);
      v20 = v37[2];
      if (v37[3] <= v20)
      {
        sub_22268A014(v20 + 1, 1);
      }

      v21 = v41;
      result = MEMORY[0x223DBEF80](*(v41 + 40), v17, 2);
      v22 = v21 + 64;
      v37 = v21;
      v23 = -1 << *(v21 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v21 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v21 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = v37;
      *(v37[6] + 2 * v26) = v17;
      result = (v32)(v31[7] + *(v33 + 72) * v26, v35, v40);
      ++v31[2];
    }
  }

  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return v37;
    }

    v11 = *(a1 + 64 + 8 * v14);
    ++v15;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2226CD4E4(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = a2;
  v73 = a1;
  v74 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC8, &qword_222743B40);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v55 - v5;
  v6 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  v60 = *(v6 - 8);
  v59 = *(v60 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DD0, &unk_222743B48);
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  MEMORY[0x28223BE20](v9);
  v72 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = &v55 - v13;
  v14 = sub_222737EAC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_222737D7C();
  v18 = *(v56 - 8);
  v57 = *(v18 + 64);
  MEMORY[0x28223BE20](v56);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher____lazy_storage___indexPipeline;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DB0, &unk_222743B30);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  (*(v15 + 104))(v17, *MEMORY[0x277D21A38], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DE0, &qword_222743B58);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2227413C0;
  v27 = sub_2227332C4(&unk_2835C7190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DE8, &unk_222743B60);
  swift_arrayDestroy();
  v28 = v61;
  sub_2226CD100(v27);
  v61 = v28;

  v29 = sub_222737EEC();
  v30 = MEMORY[0x277D21A48];
  *(v26 + 56) = v29;
  *(v26 + 64) = v30;
  __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  sub_222737EDC();
  v31 = sub_222737F0C();
  v32 = MEMORY[0x277D21A60];
  *(v26 + 96) = v31;
  *(v26 + 104) = v32;
  __swift_allocate_boxed_opaque_existential_1((v26 + 72));
  sub_222737EFC();
  v33 = v23;
  sub_222737D5C();
  v58 = v23;
  v34 = v56;
  sub_222738F7C();
  sub_2226D02B4(v74, v8);
  v35 = v18;
  v36 = *(v18 + 16);
  v37 = v20;
  v38 = v20;
  v39 = v34;
  v36(v38, v33, v34);
  v40 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v41 = (v59 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v35 + 80) + v42 + 8) & ~*(v35 + 80);
  v44 = swift_allocObject();
  sub_2226D0318(v8, v44 + v40);
  *(v44 + v41) = v73;
  v45 = v65;
  *(v44 + v42) = v65;
  (*(v35 + 32))(v44 + v43, v37, v39);
  swift_unknownObjectRetain();
  v65 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40);
  sub_22262BED4(&qword_281312F00, &unk_27D013DD0, &unk_222743B48, MEMORY[0x277D21FA8]);
  v46 = v62;
  v47 = v72;
  v48 = sub_22273836C();

  (*(v63 + 8))(v47, v46);
  v75 = v48;
  v49 = v67;
  sub_22273845C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013E58, &qword_222743B70);
  v50 = MEMORY[0x277D21DF8];
  sub_22262BED4(&unk_281312F10, &unk_27D013E58, &qword_222743B70, MEMORY[0x277D21DF8]);
  v51 = sub_22273838C();
  (*(v70 + 8))(v49, v71);

  v75 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E68, &unk_222743B78);
  sub_22262BED4(&qword_281312F20, &qword_27D013E68, &unk_222743B78, v50);
  v52 = v66;
  sub_22273835C();
  swift_unknownObjectRelease();

  sub_2226D0470(v74);

  (*(v35 + 8))(v58, v39);
  v53 = v64;
  (*(v68 + 32))(v64 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher_bundlePipeline, v52, v69);
  return v53;
}

uint64_t sub_2226CDC90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29 = a3;
  v30 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v28 - v8;
  v9 = sub_222737D7C();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226D02B4(a2, v15);
  (*(v10 + 16))(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v10 + 80) + v18 + 8) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_2226D0318(v15, v20 + v16);
  v21 = v30;
  *(v20 + v17) = v29;
  *(v20 + v18) = v21;
  (*(v10 + 32))(v20 + v19, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E70, &qword_222743B98);
  swift_unknownObjectRetain();
  v22 = v21;
  v23 = sub_222738F2C();
  v24 = sub_22273946C();
  v25 = v31;
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_222743B90;
  v26[5] = v20;
  v26[6] = v23;

  sub_2226D4E54(0, 0, v25, &unk_222743BA0, v26);

  return v23;
}

uint64_t sub_2226CDFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_22273731C();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E78, &qword_222743BA8);
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = sub_222737DAC();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  sub_222737E7C();
  v5[26] = swift_task_alloc();
  v9 = sub_222737E5C();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226CE1D8, 0, 0);
}

uint64_t sub_2226CE1D8()
{
  sub_2226CC8C4(*(v0 + 112), *(v0 + 120), (v0 + 16));
  sub_222737ECC();
  sub_222737EBC();
  v1 = *(v0 + 128);
  sub_222737E6C();
  sub_222737E9C();
  swift_allocObject();
  sub_222737E8C();
  sub_22266BCCC(v0 + 16, v0 + 56);
  swift_unknownObjectRetain();
  sub_222737E4C();
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_2226CE3E0;
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = MEMORY[0x277D21980];

  return MEMORY[0x28217E758](v4, &unk_222743BB8, v2, v5, v6);
}

uint64_t sub_2226CE3E0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_2226CE83C;
  }

  else
  {
    v2 = sub_2226CE514;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226CE514()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_222737E3C();
  (*(v2 + 8))(v1, v3);
  v4 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_2226CE5F8;
  v6 = v0[19];

  return sub_2226CEDD4(v6, v4);
}

uint64_t sub_2226CE5F8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_2226CE900;
  }

  else
  {
    v2 = sub_2226CE70C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226CE70C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  v7 = v0[12];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40) + 48);
  (*(v4 + 32))(v7, v5, v6);
  (*(v2 + 32))(v7 + v8, v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2226CE83C()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2226CE900()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2226CE9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_22273731C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226CEAA8, 0, 0);
}

uint64_t sub_2226CEAA8()
{
  sub_222737F6C();
  v1 = [objc_opt_self() defaultManager];
  v2 = [v1 temporaryDirectory];

  sub_2227372FC();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2226CEBB8;
  v4 = v0[12];
  v5 = v0[7];

  return MEMORY[0x28217E6A8](v5, v0 + 2, v4, 1);
}

uint64_t sub_2226CEBB8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *v1;
  *(v2 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2226CED70, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_2226CED70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2226CEDD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E80, &qword_222743BC8);
  v3[5] = swift_task_alloc();
  v5 = sub_222737E0C();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E88, &qword_222743BD0);
  v3[9] = swift_task_alloc();
  v3[10] = *(a2 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_222737DCC();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226CEFC4, 0, 0);
}

uint64_t sub_2226CEFC4()
{
  v1 = v0[14];
  v2 = *(v0[10] + 16);
  v2(v0[12], v0[4], v0[3]);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[9];
    v4(v8, 0, 1, v7);
    (*(v6 + 32))(v5, v8, v7);
    sub_222737DBC();
    (*(v6 + 8))(v0[15], v0[13]);

    v9 = v0[1];
LABEL_8:

    return v9();
  }

  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[3];
  v4(v11, 1, 1, v0[13]);
  sub_222660468(v11, &qword_27D013E88, &qword_222743BD0);
  v2(v10, v13, v14);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (!v15)
  {
    v23 = v0[5];
    v16(v23, 1, 1, v0[6]);
    sub_222660468(v23, &qword_27D013E80, &qword_222743BC8);
    sub_2226D097C();
    swift_allocError();
    swift_willThrow();

    v9 = v0[1];
    goto LABEL_8;
  }

  v18 = v0[7];
  v17 = v0[8];
  v20 = v0[5];
  v19 = v0[6];
  v16(v20, 0, 1, v19);
  (*(v18 + 32))(v17, v20, v19);
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_2226CF320;
  v22 = v0[2];

  return MEMORY[0x28217E740](v22);
}

uint64_t sub_2226CF320()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2226CF4F8;
  }

  else
  {
    v2 = sub_2226CF434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2226CF434()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2226CF4F8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2226CF5B8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EC0, &qword_222743BE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher____lazy_storage___indexPipeline;
  swift_beginAccess();
  sub_2226D0BBC(v1 + v9, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DB0, &unk_222743B30);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_222660468(v8, &unk_27D013EC0, &qword_222743BE8);
  v13[1] = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher_bundlePipeline;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  sub_2227384DC();
  sub_22262BED4(&qword_281312F68, &unk_27D0138C0, qword_222742B80, MEMORY[0x277D21D90]);
  v13[2] = sub_22273837C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013ED0, &unk_222743BF0);
  sub_22262BED4(&unk_281312F38, &unk_27D013ED0, &unk_222743BF0, MEMORY[0x277D21DF8]);
  sub_22273835C();

  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_2226D0C2C(v5, v1 + v9);
  return swift_endAccess();
}

void sub_2226CF8A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v3 = sub_22273731C();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22273823C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2227380FC();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_222737F4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222737F5C();
  v12 = sub_222737D9C();
  if (v2)
  {
    (*(v9 + 8))(v11, v8);
    return;
  }

  v14 = v13;
  v22 = v12;
  (*(v9 + 8))(v11, v8);
  if (v14 >> 60 == 15)
  {
    sub_222738D8C();
    sub_2226D0C9C(&qword_27D013EE0, MEMORY[0x277D22430], MEMORY[0x277D22438]);
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
    return;
  }

  sub_2226D0CE4(v22, v14);
  sub_22273804C();
  sub_22273822C();
  (*(v23 + 16))(v5, v24, v3);
  sub_2227384CC();
  if (!os_variant_has_internal_content())
  {
    sub_2226D0D38(v22, v14);
    return;
  }

  v15 = v14;
  v16 = [objc_opt_self() daemonDefaults];
  v17 = sub_2227384BC();
  if (!*(v17 + 16) || (v18 = sub_222688818(0x6E6F6973726576, 0xE700000000000000), (v19 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_22262BF70(*(v17 + 56) + 32 * v18, v25);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  v20 = sub_22273916C();

LABEL_13:
  [v16 setJsVersion_];
  sub_2226D0D38(v22, v15);
}

uint64_t sub_2226CFD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_222737F4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  v10 = sub_22273731C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_222737F3C();
  sub_222737D8C();
  (*(v4 + 8))(v6, v3);
  return sub_222660468(v9, &qword_27D013DC0, qword_222743950);
}

uint64_t sub_2226CFF14()
{
  v1 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher_bundlePipeline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_222660468(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher____lazy_storage___indexPipeline, &unk_27D013EC0, &qword_222743BE8);

  return swift_deallocClassInstance();
}

uint64_t sub_2226D0004(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273731C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EF0, &unk_222743D00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_2226D02B4(a1, &v21 - v12);
  sub_2226D02B4(a2, &v13[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_2226D02B4(v13, v10);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_2227372EC();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_2226D0470(v13);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_222660468(v13, &unk_27D013EF0, &unk_222743D00);
    v18 = 0;
    return v18 & 1;
  }

  sub_2226D0470(v13);
  v18 = 1;
  return v18 & 1;
}