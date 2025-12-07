_BYTE *storeEnumTagSinglePayload for IntentPerson.ParameterMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents12IntentPersonV10IdentifierO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_10AppIntents12IntentPersonV6HandleV5LabelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F4039FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF5 && *(a1 + 40))
    {
      v2 = *a1 + 2147483637;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 10;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F403A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483638;
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_18F403ABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 16))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 9;
  if (v4 >= 0xB)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F403B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_18F403B7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 154))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F403BD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentPerson.Handle._CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentPerson._CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F403E58()
{
  result = qword_1EACD8EA0;
  if (!qword_1EACD8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EA0);
  }

  return result;
}

unint64_t sub_18F403EB0()
{
  result = qword_1EACD8EA8;
  if (!qword_1EACD8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EA8);
  }

  return result;
}

unint64_t sub_18F403F08()
{
  result = qword_1EACD8EB0;
  if (!qword_1EACD8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EB0);
  }

  return result;
}

unint64_t sub_18F403F60()
{
  result = qword_1EACD8EB8;
  if (!qword_1EACD8EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EB8);
  }

  return result;
}

unint64_t sub_18F403FB8()
{
  result = qword_1EACD8EC0;
  if (!qword_1EACD8EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EC0);
  }

  return result;
}

unint64_t sub_18F404010()
{
  result = qword_1EACD8EC8;
  if (!qword_1EACD8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EC8);
  }

  return result;
}

unint64_t sub_18F404068()
{
  result = qword_1EACD8ED0;
  if (!qword_1EACD8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8ED0);
  }

  return result;
}

unint64_t sub_18F4040C0()
{
  result = qword_1EACD8ED8;
  if (!qword_1EACD8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8ED8);
  }

  return result;
}

unint64_t sub_18F404118()
{
  result = qword_1EACD8EE0;
  if (!qword_1EACD8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EE0);
  }

  return result;
}

unint64_t sub_18F404170()
{
  result = qword_1EACD8EE8;
  if (!qword_1EACD8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EE8);
  }

  return result;
}

unint64_t sub_18F4041C8()
{
  result = qword_1EACD8EF0;
  if (!qword_1EACD8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EF0);
  }

  return result;
}

unint64_t sub_18F404220()
{
  result = qword_1EACD8EF8;
  if (!qword_1EACD8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8EF8);
  }

  return result;
}

unint64_t sub_18F404278()
{
  result = qword_1EACD8F00;
  if (!qword_1EACD8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F00);
  }

  return result;
}

unint64_t sub_18F4042D0()
{
  result = qword_1EACD8F08;
  if (!qword_1EACD8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F08);
  }

  return result;
}

unint64_t sub_18F404328()
{
  result = qword_1EACD8F10;
  if (!qword_1EACD8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F10);
  }

  return result;
}

unint64_t sub_18F404380()
{
  result = qword_1EACD8F18;
  if (!qword_1EACD8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F18);
  }

  return result;
}

unint64_t sub_18F4043D8()
{
  result = qword_1EACD8F20;
  if (!qword_1EACD8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F20);
  }

  return result;
}

unint64_t sub_18F404430()
{
  result = qword_1EACD8F28;
  if (!qword_1EACD8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F28);
  }

  return result;
}

unint64_t sub_18F404484()
{
  result = qword_1EACD8F38;
  if (!qword_1EACD8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F38);
  }

  return result;
}

unint64_t sub_18F4044D8()
{
  result = qword_1EACD8F40;
  if (!qword_1EACD8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F40);
  }

  return result;
}

uint64_t sub_18F40452C(void *a1)
{
  v1 = [a1 aliases];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_18F0F21A8(0, &qword_1EACD8D08, 0x1E696E948);
  v3 = sub_18F521CAC();

  return v3;
}

unint64_t sub_18F40459C()
{
  result = qword_1EACD8F48;
  if (!qword_1EACD8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F48);
  }

  return result;
}

_BYTE *sub_18F4045F0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentPerson.PersonNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F40478C()
{
  result = qword_1EACD8F50;
  if (!qword_1EACD8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F50);
  }

  return result;
}

unint64_t sub_18F4047E4()
{
  result = qword_1EACD8F58;
  if (!qword_1EACD8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F58);
  }

  return result;
}

unint64_t sub_18F40483C()
{
  result = qword_1EACD8F60;
  if (!qword_1EACD8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F60);
  }

  return result;
}

unint64_t sub_18F404894()
{
  result = qword_1EACD8F68;
  if (!qword_1EACD8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F68);
  }

  return result;
}

unint64_t sub_18F4048E8()
{
  result = qword_1EACD8F78;
  if (!qword_1EACD8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F78);
  }

  return result;
}

_BYTE *sub_18F40493C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F404A1C()
{
  result = qword_1EACD8F80;
  if (!qword_1EACD8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F80);
  }

  return result;
}

unint64_t sub_18F404A74()
{
  result = qword_1EACD8F88;
  if (!qword_1EACD8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F88);
  }

  return result;
}

unint64_t sub_18F404ACC()
{
  result = qword_1EACD8F90;
  if (!qword_1EACD8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8F90);
  }

  return result;
}

void sub_18F404B4C()
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0, 0x1E696B0B8);
  v1 = sub_18F5218DC();
  v3 = sub_18F10051C(v1, v2, 0);
  v4 = LNDaemonApplicationXPCInterface();
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  OUTLINED_FUNCTION_1_107();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  aBlock[4] = sub_18F2AA030;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_65();
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_10_0;
  v8 = _Block_copy(aBlock);

  v9 = [v3 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v10 = *v6;
  if (v10)
  {
    swift_willThrow();
    v11 = v10;
LABEL_7:

    __swift_destroy_boxed_opaque_existential_1Tm(v15);

    return;
  }

  sub_18F0FECD4(v15, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8, &unk_18F560710);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_18F4054E8();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  sub_18F4051AC(v13, aBlock);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v15);

    swift_unknownObjectRelease();
  }

  else
  {
    [v3 invalidate];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

void sub_18F404DE0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_18F0F21A8(0, &qword_1ED6FE6F0, 0x1E696B0B8);
  v4 = sub_18F5218DC();
  v6 = sub_18F10051C(v4, v5, 0);
  v7 = LNDaemonApplicationXPCInterface();
  [v6 setRemoteObjectInterface_];

  [v6 resume];
  OUTLINED_FUNCTION_1_107();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v26 = sub_18F21F2D8;
  v27 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  OUTLINED_FUNCTION_0_65();
  v24 = v10;
  v25 = &block_descriptor_16;
  v11 = _Block_copy(&aBlock);

  v12 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_18F52261C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v13 = *v9;
  if (!v13)
  {
    sub_18F0FECD4(v28, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DA8, &unk_18F560710);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_1_107();
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = sub_18F5218AC();
      v26 = sub_18F40553C;
      v27 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = sub_18F2A881C;
      v25 = &block_descriptor_5;
      v17 = _Block_copy(&aBlock);

      [v21 persistIntentEnablementForIntent:v16 enablement:a3 reply:v17];
      _Block_release(v17);

      swift_beginAccess();
      v18 = *(v15 + 16);
      if (v18)
      {
        swift_willThrow();
        v19 = v18;

        __swift_destroy_boxed_opaque_existential_1Tm(v28);

        swift_unknownObjectRelease();

        goto LABEL_9;
      }

      [v6 invalidate];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_18F4054E8();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v28);

    goto LABEL_9;
  }

  swift_willThrow();
  v14 = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(v28);

LABEL_9:
}

uint64_t sub_18F4051AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_18F405544;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18F405434;
  aBlock[3] = &block_descriptor_20;
  v7 = _Block_copy(aBlock);

  [a1 retrievePersistedIntentEnablementsWithReply_];
  _Block_release(v7);
  swift_beginAccess();
  v8 = *(v4 + 16);
  if (v8)
  {
    goto LABEL_2;
  }

  swift_beginAccess();
  v11 = *(v5 + 16);
  if (!v11)
  {
    sub_18F4054E8();
    swift_allocError();
    v8 = 0;
    *v12 = 1;
LABEL_2:
    swift_willThrow();
    v9 = v8;
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  *a2 = v11;
  return result;
}

void sub_18F405398(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    v6 = *(a3 + 16);
    *(a3 + 16) = a2;
    v7 = a2;
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = a1;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

uint64_t sub_18F405434(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_18F0F21A8(0, &qword_1EACD8FA8, 0x1E69ACF48);
    v4 = sub_18F5216BC();
  }

  v6 = a3;
  v5(v4, a3);
}

unint64_t sub_18F4054E8()
{
  result = qword_1EACD8FA0;
  if (!qword_1EACD8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8FA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentStatePersistenceClient.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F40562C()
{
  result = qword_1EACD8FB0;
  if (!qword_1EACD8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD8FB0);
  }

  return result;
}

uint64_t AppContext.fetchAppShortcutsParameters(appShortcutProviderMangledName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F4056B8, 0, 0);
}

uint64_t sub_18F4056B8()
{
  OUTLINED_FUNCTION_69();
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = off_1ED6FF6C8;

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_18F405794;

  return sub_18F3E2D94();
}

uint64_t sub_18F405794()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  v2[6] = v3;
  v2[7] = v4;
  v2[8] = v5;
  v2[9] = v0;

  if (v0)
  {
    v6 = sub_18F405ADC;
  }

  else
  {

    v6 = sub_18F4058B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F4058B0()
{
  v2 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8FC0, &qword_18F564B38);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18F549D20;
  if (v2 >> 62)
  {
    OUTLINED_FUNCTION_0_132();
    sub_18F522A4C();
    OUTLINED_FUNCTION_1_108();
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F522DAC();
    if (swift_dynamicCastMetatype() || (v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:

      v0 = v1[6];
    }

    else
    {
      v12 = (v4 + 32);
      while (*v12)
      {
        ++v12;
        if (!--v11)
        {
          goto LABEL_3;
        }
      }

      v0 = v4 | 1;
    }
  }

  v5 = v1[7];
  *(v3 + 32) = v0;
  if (v5 >> 62)
  {
    OUTLINED_FUNCTION_0_132();
    sub_18F522A4C();
    OUTLINED_FUNCTION_1_108();
  }

  else
  {
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F522DAC();
    if (swift_dynamicCastMetatype() || (v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_6:

      v0 = v1[7];
    }

    else
    {
      v14 = (v6 + 32);
      while (*v14)
      {
        ++v14;
        if (!--v13)
        {
          goto LABEL_6;
        }
      }

      v0 = v6 | 1;
    }
  }

  v7 = v1[8];
  *(v3 + 40) = v0;
  if (v7 >> 62)
  {
    OUTLINED_FUNCTION_0_132();
    sub_18F522A4C();
    OUTLINED_FUNCTION_1_108();
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F522DAC();
    if (swift_dynamicCastMetatype() || (v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_9:

      v0 = v1[8];
    }

    else
    {
      v16 = (v8 + 32);
      while (*v16)
      {
        ++v16;
        if (!--v15)
        {
          goto LABEL_9;
        }
      }

      v0 = v8 | 1;
    }
  }

  *(v3 + 48) = v0;
  v9 = v1[1];

  return v9(v3);
}

uint64_t sub_18F405ADC()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F405BC4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_18F5218DC();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_18F405CA0;

  return AppContext.fetchAppShortcutsParameters(appShortcutProviderMangledName:)(a1, v7);
}

uint64_t sub_18F405CA0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_18F520A7C();

    v8 = 0;
    v9 = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD8FC8, &qword_18F564B50);
    v8 = sub_18F521C8C();

    v7 = 0;
    v9 = v8;
  }

  v10 = *(v4 + 24);
  v10[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v6 + 8);

  return v11();
}

uint64_t sub_18F405E5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18F0FB5F8;

  return sub_18F405BC4(v2, v3, v4);
}

uint64_t AppContext.fetchValueForProperty(identifier:entity:auditToken:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F405F3C, 0, 0);
}

uint64_t sub_18F405F3C()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = *(v0 + 104);
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_18F406048;

  return sub_18F270AB0(&unk_18F564B68, v5);
}

uint64_t sub_18F406048()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F40618C, 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(v3);
  }
}

uint64_t sub_18F40618C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F4061E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[61] = a3;
  v4[62] = a4;
  v4[59] = a1;
  v4[60] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F40620C, 0, 0);
}

uint64_t sub_18F40620C()
{
  v1 = *(v0 + 480);
  ObjectType = swift_getObjectType();
  result = [v1 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v4 = *(v0 + 480);
  sub_18F328378();
  v5 = [v4 identifier];
  v6 = [v5 typeIdentifier];

  v7 = sub_18F5218DC();
  v9 = v8;

  v10 = sub_18F14199C(v7, v9);
  *(v0 + 400) = ObjectType;
  *(v0 + 376) = v4;
  swift_unknownObjectRetain();
  sub_18F3319C0(v0 + 376, 1);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
  if (*(v0 + 80))
  {
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    sub_18F0FD724(v0 + 16, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540, &qword_18F547E80);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4((v0 + 136), v0 + 296);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 296), *(v0 + 320));
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 504) = v11;
      *v11 = v12;
      v11[1] = sub_18F40658C;
      OUTLINED_FUNCTION_6_80();

      return sub_18F1E1508(v13, v14, v15, v16, v17);
    }

    if (swift_dynamicCast())
    {
      v20 = *(v0 + 408);
      v19 = *(v0 + 416);
      *(v0 + 520) = v20;
      *(v0 + 528) = v19;
      v21 = *(v0 + 424);
      v22 = *(v0 + 432);
      *(v0 + 536) = v22;
      *(v0 + 440) = v20;
      *(v0 + 448) = v19;
      *(v0 + 456) = v21;
      *(v0 + 464) = v22;
      v23 = sub_18F52254C();
      *(v0 + 544) = v23;
      *(v0 + 552) = *(v23 - 8);
      *(v0 + 560) = swift_task_alloc();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 568) = v24;
      *v24 = v25;
      v24[1] = sub_18F40674C;

      return sub_18F27FF4C();
    }

    v26 = *(v0 + 472);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    *v26 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  else
  {
    v18 = *(v0 + 472);
    sub_18F0EF148(v0 + 56, &qword_1EACD0620, &unk_18F541850);
    *v18 = 0;
  }

  OUTLINED_FUNCTION_71();

  return v27();
}

uint64_t sub_18F40658C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 512) = v0;

  if (v0)
  {
    v7 = sub_18F406C2C;
  }

  else
  {
    v7 = sub_18F40668C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F40668C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 360);
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + 336), *(v0 + 360));
    v1 = OUTLINED_FUNCTION_8_62();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    sub_18F0EF148(v0 + 336, &qword_1EACD0620, &unk_18F541850);
  }

  **(v0 + 472) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F40674C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 576) = v0;

  if (v0)
  {
    v7 = sub_18F406CC0;
  }

  else
  {
    v7 = sub_18F40684C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F40684C()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 560);
  v2 = *(v0 + 520);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 552);
    v4 = *(v0 + 544);

    (*(v3 + 8))(v1, v4);

    *(v0 + 208) = 0;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
  }

  else
  {
    v5 = *(v0 + 528);
    *(v0 + 200) = v2;
    *(v0 + 208) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    (*(*(v2 - 8) + 32))(boxed_opaque_existential_1, v1, v2);
  }

  sub_18F1E25D0(v0 + 176, v0 + 256);
  if (*(v0 + 280))
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + 256), *(v0 + 280));
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 584) = v7;
    *v7 = v8;
    v7[1] = sub_18F406A3C;
    OUTLINED_FUNCTION_6_80();

    return sub_18F1E1508(v9, v10, v11, v12, v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    sub_18F0EF148(v0 + 256, &qword_1EACCFCF8, &unk_18F548C10);
    **(v0 + 472) = 0;
    sub_18F0EF148(v0 + 176, &qword_1EACCFCF8, &unk_18F548C10);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    OUTLINED_FUNCTION_71();

    return v15();
  }
}

uint64_t sub_18F406A3C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 592) = v0;

  if (v0)
  {
    v7 = sub_18F406D60;
  }

  else
  {
    v7 = sub_18F406B3C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F406B3C()
{
  OUTLINED_FUNCTION_21();
  if (v0[30])
  {
    v1 = v0[59];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 27, v0[30]);
    v2 = OUTLINED_FUNCTION_8_62();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    *v1 = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
    sub_18F0EF148((v0 + 27), &qword_1EACD0620, &unk_18F541850);
    *v0[59] = 0;
  }

  sub_18F0EF148((v0 + 22), &qword_1EACCFCF8, &unk_18F548C10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F406C2C()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  v1 = v0[64];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  sub_18F2D94A8(v1);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F406CC0()
{
  OUTLINED_FUNCTION_21();

  v1 = v0[72];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  sub_18F2D94A8(v1);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F406D60()
{
  OUTLINED_FUNCTION_21();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  sub_18F0EF148((v0 + 22), &qword_1EACCFCF8, &unk_18F548C10);
  v1 = v0[74];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  sub_18F2D94A8(v1);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F406E0C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_18F0FC874;

  return sub_18F4061E8(v3, v4, v5, v6);
}

uint64_t sub_18F406F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v8[2] = a2;
  v8[3] = v22;
  v8[4] = _Block_copy(aBlock);
  v14 = sub_18F5218DC();
  v16 = v15;
  v8[5] = v15;
  swift_unknownObjectRetain();
  v17 = v22;
  v18 = swift_task_alloc();
  v8[6] = v18;
  *v18 = v8;
  v18[1] = sub_18F407098;

  return AppContext.fetchValueForProperty(identifier:entity:auditToken:connectionIdentifier:)(v14, v16, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18F407098(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  swift_unknownObjectRelease();

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_18F520A7C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    v9[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  v11 = *(v7 + 8);

  return v11();
}

void sub_18F407274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  JUMPOUT(0x18F406F74);
}

uint64_t sub_18F407370()
{
  v0 = static IntentContext.connectionIdentifier.getter();
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_18F10C01C(v0);

  return v1;
}

void sub_18F4074E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v6[2] = a2;
  v6[3] = a3;
  v6[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18F407574(sub_18F4079E4, v6, v4, AssociatedTypeWitness);
}

void sub_18F407574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_18F10D49C(sub_18F407A04, v4, a3, MEMORY[0x1E69E7CA8] + 8, a4);
}

void sub_18F4075C4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_18F407C58((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_18F40765C()
{

  return v0;
}

uint64_t sub_18F40768C()
{
  sub_18F40765C();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F4076C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v24 - v12;
  v30[6] = a2;
  sub_18F5227DC();
  v27 = v9;
  swift_getAssociatedConformanceWitness();
  sub_18F522B2C();
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  swift_beginAccess();
  v14 = swift_unknownObjectRetain();
  v28 = a3;
  sub_18F407A2C(v14, v30, (a1 + 32), a3, a4);
  sub_18F0EF654(v30);
  swift_endAccess();
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v15 = sub_18F52165C();
  __swift_project_value_buffer(v15, qword_1ED7077A8);
  swift_unknownObjectRetain();

  v16 = sub_18F52163C();
  v17 = sub_18F52220C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30[0] = v25;
    *v18 = 134218242;
    *(v18 + 4) = *(a1 + 16);

    *(v18 + 12) = 2080;
    v29 = a2;
    sub_18F5227DC();
    v19 = sub_18F52194C();
    v21 = sub_18F11897C(v19, v20, v30);

    *(v18 + 14) = v21;
    _os_log_impl(&dword_18F0E9000, v16, v17, "ConnectionContext[%ld]: stored %s", v18, 0x16u);
    v22 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x193ADD350](v22, -1, -1);
    MEMORY[0x193ADD350](v18, -1, -1);
  }

  else
  {
  }

  v30[0] = a2;
  return sub_18F5227DC();
}

unint64_t sub_18F407A2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a3;
  result = sub_18F407AA8(a1, a2, isUniquelyReferenced_nonNull_native, &v12, a4, a5);
  *a3 = v12;
  return result;
}

unint64_t sub_18F407AA8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = sub_18F181EC0(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4878, &unk_18F564BE0);
  if ((sub_18F5229DC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_18F181EC0(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_18F522E2C();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *a4;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_18F10CBFC(a2, v21);
    return sub_18F407BFC(v14, v21, a1, v18, a5, a6);
  }
}

unint64_t sub_18F407BFC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = a4[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a4[7] + 16 * result);
  *v8 = a3;
  v8[1] = a6;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_18F407C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F20, &qword_18F564C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _AppIntentConstraint.init(_:if:otherwise:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18();
  v13 = v12;
  v15 = v14;
  sub_18F407DF8();
  v16 = sub_18F5221AC();

  *v15 = v16;
  if (v13)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v17 = sub_18F5221AC();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v17 = 0;
  }

  v15[1] = v17;
  v18 = OUTLINED_FUNCTION_1_109();
  type metadata accessor for _AppIntentConstraint(v18, v19, v20, v21);
  v22 = OUTLINED_FUNCTION_1_109();
  type metadata accessor for _AppIntentConstraint.Behavior(v22, v23, v24, v25);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

unint64_t sub_18F407DF8()
{
  result = qword_1EACD8FD8[0];
  if (!qword_1EACD8FD8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EACD8FD8);
  }

  return result;
}

uint64_t _AppIntentConstraint.init(requires:when:otherwise:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_18F407DF8();
  *a6 = sub_18F5221AC();
  type metadata accessor for _AppIntentConstraint.AppState(255, a4, a5, v12);
  v13 = sub_18F52100C();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v13) != 1)
  {
    v14 = sub_18F5221AC();
  }

  (*(*(v13 - 8) + 8))(a1, v13);
  sub_18F52254C();
  OUTLINED_FUNCTION_10_0();
  (*(v15 + 8))(a2);
  *(a6 + 1) = v14;
  v16 = OUTLINED_FUNCTION_1_109();
  v20 = *(type metadata accessor for _AppIntentConstraint(v16, v17, v18, v19) + 40);
  v21 = OUTLINED_FUNCTION_1_109();
  type metadata accessor for _AppIntentConstraint.Behavior(v21, v22, v23, v24);
  OUTLINED_FUNCTION_10_0();
  return (*(v25 + 32))(&a6[v20], a3);
}

void AppIntentConstraintBuilder.Discoverable.init(if:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = type metadata accessor for _AppIntentConstraint.Behavior(0, v2, v0, v8);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v14 = type metadata accessor for _AppIntentConstraint.AppState(255, v3, v1, v13);
  v15 = OUTLINED_FUNCTION_5_80(v14);
  v16 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v25 - v21;
  v25[2] = v3;
  v25[3] = v1;
  v25[4] = v5;
  sub_18F52101C();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v15);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD3300, &qword_18F564CA0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v23);
  _AppIntentConstraint.init(requires:when:otherwise:)(v22, v19, v12, v3, v1, v7);
  v25[5] = v14;
  sub_18F52100C();
  OUTLINED_FUNCTION_10_0();
  (*(v24 + 8))(v5);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F408284@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = type metadata accessor for _AppIntentConstraint.AppState(255, a3, a4, a4);
  v7 = sub_18F520A3C();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v28[2] = v6;
  sub_18F52100C();
  v10 = sub_18F520A2C();
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  sub_18F520A4C();
  WitnessTable = swift_getWitnessTable();
  sub_18F520A5C();
  v28[0] = v7;
  v28[1] = v9;
  v14 = swift_getWitnessTable();
  v26[0] = 1;
  v26[1] = v10;
  v26[2] = v28;
  v26[3] = v14;
  v26[4] = &v27;
  v27 = WitnessTable;
  a5[3] = sub_18F520A0C();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v24 = v15;
  v25 = v16;
  v17 = swift_getWitnessTable();
  v26[0] = swift_getWitnessTable();
  v22 = v17;
  v23 = v26;
  a5[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a5);
  v21 = WitnessTable;
  sub_18F520A1C();
  (*(v19 + 8))(v12, v10);
  return (*(v20 + 8))(v9, v7);
}

uint64_t AppIntentConstraintBuilder.Discoverable.init(if:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _AppIntentConstraint.Behavior(0, a3, a4, a4);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD3300, &qword_18F564CA0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  return _AppIntentConstraint.init(_:if:otherwise:)(a1, a2, 0, 0, v11, a3, a4, v13, v15[0], v15[1], v15[2], v15[3]);
}

uint64_t _s10AppIntents0A23IntentConstraintBuilderO12DiscoverableV10constraintAA01_acD0VyxGvg_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for _AppIntentConstraint(0, *(a1 + 16), *(a1 + 24), a2);
  OUTLINED_FUNCTION_10_0();
  v7 = *(v6 + 16);

  return v7(a3, v3, v5);
}

void AppIntentConstraintBuilder.Enabled.init(if:when:otherwise:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v31 = v6;
  v32 = v8;
  v9 = v8;
  v34 = v0;
  v35 = v10;
  v33 = v2;
  v11 = type metadata accessor for _AppIntentConstraint.Behavior(0, v2, v0, v2);
  OUTLINED_FUNCTION_10(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v16 = type metadata accessor for _AppIntentConstraint.AppState(255, v3, v1, v15);
  v17 = OUTLINED_FUNCTION_5_80(v16);
  v18 = sub_18F52254C();
  v19 = *(v18 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  v23 = *(v17 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v30 - v25;
  (*(v23 + 16))(&v30 - v25, v9, v17);
  (*(v19 + 16))(v22, v7, v18);
  v27 = sub_18F520B3C();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v14, v5, v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD3300, &qword_18F564CA0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v29);
  _AppIntentConstraint.init(requires:when:otherwise:)(v26, v22, v14, v33, v34, v35);
  (*(v28 + 8))(v5, v27);
  (*(v19 + 8))(v31, v18);
  (*(v23 + 8))(v32, v17);
  OUTLINED_FUNCTION_16();
}

void sub_18F408ACC(uint64_t a1)
{
  sub_18F407DF8();
  if (v2 <= 0x3F)
  {
    sub_18F408B94(319);
    if (v4 <= 0x3F)
    {
      type metadata accessor for _AppIntentConstraint.Behavior(319, *(a1 + 16), *(a1 + 24), v3);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18F408B94(uint64_t a1)
{
  if (!qword_1EACD9060[0])
  {
    sub_18F407DF8();
    v1 = sub_18F52254C();
    if (!v2)
    {
      atomic_store(v1, qword_1EACD9060);
    }
  }
}

uint64_t sub_18F408BEC(uint64_t a1)
{
  sub_18F408C6C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_18F408C6C()
{
  if (!qword_1EACD9168[0])
  {
    v0 = sub_18F520B3C();
    if (!v1)
    {
      atomic_store(v0, qword_1EACD9168);
    }
  }
}

_BYTE *sub_18F408CC8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18F408DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _AppIntentConstraint(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_27Tm()
{
  OUTLINED_FUNCTION_79();
  v4 = type metadata accessor for _AppIntentConstraint(0, *(v2 + 16), *(v2 + 24), v3);

  return __swift_getEnumTagSinglePayload(v1, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_28Tm()
{
  OUTLINED_FUNCTION_79();
  v3 = type metadata accessor for _AppIntentConstraint(0, *(v2 + 16), *(v2 + 24), v2);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v3);
}

uint64_t AppContext.exportTransientEntities(_:with:connectionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F408F48, 0, 0);
}

uint64_t sub_18F408F48()
{
  if (sub_18F111F70(*(v0 + 64)))
  {
    v1 = *(v0 + 64) & 0xC000000000000001;
    sub_18F1C3ED4();
    v2 = *(v0 + 64);
    if (v1)
    {
      v3 = MEMORY[0x193ADBE10](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    *(v0 + 88) = v3;
    v5 = sub_18F1EA970(0, 0);
    if (v5)
    {
      v6 = dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for TransientAppEntity);
      if (v6)
      {
        v8 = v6;
        v9 = v7;
        v10 = *(v0 + 80);
        if (v10)
        {
          v11 = [v10 integerValue];
        }

        else
        {
          v11 = -1;
        }

        v21 = *(v0 + 64);
        v20 = *(v0 + 72);
        [v20 auditToken];
        *(v0 + 16) = v24;
        *(v0 + 32) = v25;
        *(v0 + 48) = 0;
        *(v0 + 56) = v11;
        v22 = swift_task_alloc();
        *(v0 + 96) = v22;
        v22[2] = v8;
        v22[3] = v9;
        v22[4] = v21;
        v22[5] = v20;
        v23 = swift_task_alloc();
        *(v0 + 104) = v23;
        *v23 = v0;
        v23[1] = sub_18F4091E8;

        return sub_18F270BB4(&unk_18F564E40, v22);
      }

      v14 = 0x800000018F52BD80;
      sub_18F21786C();
      swift_allocError();
      OUTLINED_FUNCTION_9_60();
      v16 = v17 + 8;
    }

    else
    {
      v14 = 0x800000018F52BD60;
      sub_18F21786C();
      swift_allocError();
      OUTLINED_FUNCTION_9_60();
    }

    *v15 = v16;
    v15[1] = v14;
    swift_willThrow();
  }

  else
  {
    sub_18F21786C();
    swift_allocError();
    OUTLINED_FUNCTION_9_60();
    *v13 = v12 | 2;
    v13[1] = 0x800000018F52BDB0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_71();

  return v18();
}

uint64_t sub_18F4091E8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 112) = v0;

  if (v0)
  {
    v9 = sub_18F409368;
  }

  else
  {
    *(v5 + 120) = v3;

    v9 = sub_18F409304;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_18F409304()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);

  return v1(v2);
}

uint64_t sub_18F409368()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F4093CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_18F409488;

  return sub_18F4095F0(a2, a5, a4, a2, a3);
}

uint64_t sub_18F409488()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x1EEE6DFA0](sub_18F4095C0, 0, 0);
  }
}

uint64_t sub_18F4095C0()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_71();
  return v1();
}

uint64_t sub_18F4095F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v6 = *(a4 - 8);
  v5[11] = v6;
  v5[12] = *(v6 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F4096AC, 0, 0);
}

uint64_t sub_18F4096AC()
{
  v1 = v0[9];
  v2 = *(v0[10] + 8);
  v0[14] = v2;
  v3 = static AppEntity.valueType.getter(v1, v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
  }

  v0[15] = v4;
  v0[2] = v0[8];
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 9);
  *(v5 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0628, &unk_18F541860);
  sub_18F40A794();
  v0[16] = sub_18F521B3C();

  v6 = sub_18F521CBC();
  v0[3] = v6;
  if (v6 == sub_18F521D7C())
  {
    OUTLINED_FUNCTION_10_55();
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_14_50(v7);
    OUTLINED_FUNCTION_3_84(v8);
    MEMORY[0] = v0;
    v9 = OUTLINED_FUNCTION_2_103();

    return sub_18F2102C4(v9, v10, v11);
  }

  else
  {
    v13 = sub_18F521D4C();
    sub_18F521CEC();
    if (v13)
    {
      OUTLINED_FUNCTION_5_81();
      OUTLINED_FUNCTION_7_68();
      v14();
    }

    else
    {
      v16 = v0[12];
      result = sub_18F52281C();
      if (v16 != 8)
      {
        __break(1u);
        return result;
      }

      v17 = result;
      v18 = OUTLINED_FUNCTION_5_81();
      v0[4] = v17;
      (*(v19 + 16))(v18, v0 + 4);
      swift_unknownObjectRelease();
    }

    sub_18F521DAC();
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_1_110(v15);

    return sub_18F35EB98();
  }
}

uint64_t sub_18F40991C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[18] = v0;

  if (v0)
  {
    v7 = v3[13];
    v8 = v3[11];
    v9 = v3[9];

    (*(v8 + 8))(v7, v9);
    v10 = sub_18F409D94;
  }

  else
  {
    (*(v3[11] + 8))(v3[13], v3[9]);
    v10 = sub_18F409A6C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_18F409A6C()
{
  v2 = v1[3];
  if (v2 == sub_18F521D7C())
  {
    OUTLINED_FUNCTION_10_55();
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_14_50(v3);
    OUTLINED_FUNCTION_3_84(v4);
    *v0 = v1;
    v5 = OUTLINED_FUNCTION_2_103();

    return sub_18F2102C4(v5, v6, v7);
  }

  else
  {
    v9 = sub_18F521D4C();
    sub_18F521CEC();
    if (v9)
    {
      OUTLINED_FUNCTION_5_81();
      OUTLINED_FUNCTION_7_68();
      v10();
    }

    else
    {
      v12 = v1[12];
      result = sub_18F52281C();
      if (v12 != 8)
      {
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = OUTLINED_FUNCTION_5_81();
      v1[4] = v13;
      (*(v15 + 16))(v14, v1 + 4);
      swift_unknownObjectRelease();
    }

    sub_18F521DAC();
    v11 = swift_task_alloc();
    v1[17] = v11;
    *v11 = v1;
    OUTLINED_FUNCTION_1_110(v11);

    return sub_18F35EB98();
  }
}

uint64_t sub_18F409C08()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 160) = v0;

  if (v0)
  {
    v9 = sub_18F409DF8;
  }

  else
  {

    *(v5 + 168) = v3;
    v9 = sub_18F409D24;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_18F409D24()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1(v2);
}

uint64_t sub_18F409D94()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F409DF8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F409F04(uint64_t a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  sub_18F40A730();
  v9 = sub_18F521CAC();
  v5[6] = v9;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_18F40A000;

  return AppContext.exportTransientEntities(_:with:connectionIdentifier:)(v9, v10, a3);
}

uint64_t sub_18F40A000(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;
  OUTLINED_FUNCTION_39();
  *v10 = v9;

  v11 = *(v5 + 40);
  if (v3)
  {
    v12 = sub_18F520A7C();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_18F40A1F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 10001;
  }

  else
  {
    return 10000;
  }
}

uint64_t sub_18F40A200(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350, &unk_18F5407B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    *(inited + 32) = sub_18F5218DC();
    *(inited + 40) = v5;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350, &unk_18F5407B0);
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_18F53F800;
    v7 = sub_18F5218DC();
    v8 = MEMORY[0x1E69E6158];
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    *(v6 + 72) = v8;
    strcpy((v6 + 48), "Unknown error");
    *(v6 + 62) = -4864;
  }

  return sub_18F5216CC();
}

uint64_t sub_18F40A328(uint64_t a1)
{
  v2 = sub_18F40A620();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F40A364(uint64_t a1)
{
  v2 = sub_18F40A620();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_18F40A3B4@<X0>(id a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = [a1 bundleIdentifier];
    v6 = sub_18F5218DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_18F1EA280(v11, v6, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCF8, &unk_18F548C10);
  v9 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v9 ^ 1u, 1, a2);
}

uint64_t sub_18F40A49C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_13_52();

  return sub_18F4093CC(v2, v3, v4, v5, v6);
}

uint64_t sub_18F40A550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_18F40A5A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_18F40A5F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_18F40A620()
{
  result = qword_1EACD92F0;
  if (!qword_1EACD92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD92F0);
  }

  return result;
}

uint64_t sub_18F40A674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_13_52();

  return v2();
}

unint64_t sub_18F40A730()
{
  result = qword_1ED6FE640;
  if (!qword_1ED6FE640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FE640);
  }

  return result;
}

unint64_t sub_18F40A794()
{
  result = qword_1EACD0630;
  if (!qword_1EACD0630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0628, &unk_18F541860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0630);
  }

  return result;
}

void IntentParameter<>.init(title:description:displayStyle:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v29 = v2;
  v30 = v1;
  v4 = v3;
  v6 = v5;
  v28 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_39_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  LOBYTE(v4) = *v4;
  v20 = OUTLINED_FUNCTION_40_7();
  v21(v20, v6, v16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
  v31 = v4;
  sub_18F127F18(&v31);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v29, v0, &qword_1EACCF7A0, &unk_18F53E6F0);
  v25 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v11, v26, v27, v25);
  OUTLINED_FUNCTION_37_4();
  sub_18F116B3C();
  sub_18F0EF148(v29, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v30, &qword_1EACCF7A8, &qword_18F540440);
  (*(v18 + 8))(v28, v16);
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:displayStyle:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v20;
  a20 = v21;
  v52 = v23;
  v53 = v22;
  v25 = v24;
  v54 = v26;
  v28 = v27;
  v50 = v27;
  OUTLINED_FUNCTION_23_10();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3();
  v51 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_33();
  v36 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  LOBYTE(v25) = *v25;
  v40 = OUTLINED_FUNCTION_23_15();
  v41(v40, v28, v36);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, AssociatedTypeWitness);
  v55[0] = v25;
  sub_18F127F18(v55);
  OUTLINED_FUNCTION_22_0(&a17);
  v52();
  OUTLINED_FUNCTION_8();
  v45 = OUTLINED_FUNCTION_37_4();
  sub_18F116908(v45, v46, &qword_1EACCF7A0, &unk_18F53E6F0);
  v47 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v51, v48, v49, v47);
  sub_18F116B3C();

  sub_18F0EF148(v53, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v54, &qword_1EACCF7A8, &qword_18F540440);
  (*(v38 + 8))(v50, v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:displayStyle:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v37 = v3;
  v38 = v2;
  v5 = v4;
  v7 = v6;
  v39 = v8;
  v10 = v9;
  v36 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_31_2();
  v35 = v17;
  OUTLINED_FUNCTION_11_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  LOBYTE(v7) = *v7;
  v21 = OUTLINED_FUNCTION_23_15();
  v22(v21, v10);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, AssociatedTypeWitness);
  v41[0] = v7;
  v26 = sub_18F127F18(v41);
  OUTLINED_FUNCTION_44_1(v26);
  OUTLINED_FUNCTION_2_0();
  v27 = OUTLINED_FUNCTION_37_4();
  sub_18F116908(v27, v28, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v40[3] = v37;
  v40[4] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v34 = *(v37 - 8);
  (*(v34 + 16))(boxed_opaque_existential_1, v38, v37);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v34 + 8))(v38, v37);
  sub_18F0EF148(v5, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v39, &qword_1EACCF7A8, &qword_18F540440);
  (*(v19 + 8))(v36, v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:displayStyle:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v57 = v27;
  v61 = v29;
  v62 = v28;
  v58 = v30;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_44_1(v33);
  v60 = a24;
  v59 = a22;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v36 = OUTLINED_FUNCTION_10(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v38);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  v42 = OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();
  LOBYTE(v32) = *v32;
  (*(v44 + 16))(v24, v34, v42);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, AssociatedTypeWitness);
  v64[0] = v32;
  sub_18F127F18(v64);
  OUTLINED_FUNCTION_22_0(&a15);
  v57();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v58, v55, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v63[3] = v59;
  v63[4] = v60;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v54 = *(v59 - 8);
  (*(v54 + 16))(boxed_opaque_existential_1, v61, v59);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v54 + 8))(v61, v59);
  sub_18F0EF148(v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F0EF148(v62, &qword_1EACCF7A8, &qword_18F540440);
  (*(v44 + 8))(v56, v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:displayStyle:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v30 = v9;
  v31 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3();
  v29 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v16 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_2();
  v28 = v18;
  OUTLINED_FUNCTION_11_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();
  LOBYTE(v5) = *v5;
  v22 = OUTLINED_FUNCTION_23_15();
  v23(v22, v31);
  (*(v16 + 16))(v0, v7, v27);
  v32[0] = v5;
  sub_18F127F18(v32);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v3, v1, &qword_1EACCF7A0, &unk_18F53E6F0);
  v24 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v29, v25, v26, v24);
  sub_18F116B3C();
  sub_18F0EF148(v3, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v16 + 8))(v7, v27);
  sub_18F0EF148(v30, &qword_1EACCF7A8, &qword_18F540440);
  (*(v20 + 8))(v31, v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:displayStyle:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v57 = v24;
  v58 = v23;
  v26 = v25;
  v55 = v27;
  v59 = v28;
  v30 = v29;
  v54 = v29;
  OUTLINED_FUNCTION_23_10();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v56 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v35);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_31_2();
  v53 = v40;
  OUTLINED_FUNCTION_11_0();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();
  v44 = *v26;
  (*(v42 + 16))(v20, v30);
  v45 = OUTLINED_FUNCTION_23_15();
  v46(v45, v55, v52);
  v60[0] = v44;
  sub_18F127F18(v60);
  OUTLINED_FUNCTION_22_0(&a18);
  v57();
  OUTLINED_FUNCTION_8();
  v47 = OUTLINED_FUNCTION_38_5();
  sub_18F116908(v47, v48, &qword_1EACCF7A0, &unk_18F53E6F0);
  v49 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v56, v50, v51, v49);
  sub_18F116B3C();

  sub_18F0EF148(v58, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v38 + 8))(v55, v52);
  sub_18F0EF148(v59, &qword_1EACCF7A8, &qword_18F540440);
  (*(v42 + 8))(v54, v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:displayStyle:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  v56 = v23;
  v57 = v22;
  v55 = v24;
  v26 = v25;
  v58 = v27;
  v59 = v28;
  v30 = v29;
  OUTLINED_FUNCTION_44_1(v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_39_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v36 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_31_2();
  v53 = v38;
  OUTLINED_FUNCTION_11_0();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  LOBYTE(v26) = *v26;
  v42 = OUTLINED_FUNCTION_40_7();
  v43(v42, v30);
  v44 = OUTLINED_FUNCTION_23_15();
  v45(v44, v59, v52);
  v61[0] = v26;
  sub_18F127F18(v61);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v55, v21, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v60[3] = v56;
  v60[4] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  v51 = *(v56 - 8);
  (*(v51 + 16))(boxed_opaque_existential_1, v57, v56);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v51 + 8))(v57, v56);
  sub_18F0EF148(v55, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v36 + 8))(v59, v52);
  sub_18F0EF148(v58, &qword_1EACCF7A8, &qword_18F540440);
  (*(v40 + 8))(v54, v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:displayStyle:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v63 = v28;
  v67 = v29;
  v64 = v30;
  v32 = v31;
  v68 = v33;
  v69 = v34;
  v36 = v35;
  v62 = v35;
  v65 = a23;
  v66 = a25;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v60 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_67();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v61 = v43;
  OUTLINED_FUNCTION_11_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  LOBYTE(v32) = *v32;
  (*(v45 + 16))(v48 - v47, v36);
  v49 = OUTLINED_FUNCTION_40_7();
  v50(v49, v69, v59);
  v71[0] = v32;
  sub_18F127F18(v71);
  v51 = OUTLINED_FUNCTION_22_0(&a13);
  v63(v51, v52);
  OUTLINED_FUNCTION_8();
  sub_18F116908(v64, v25, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  v70[3] = v65;
  v70[4] = v66;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  v58 = *(v65 - 8);
  (*(v58 + 16))(boxed_opaque_existential_1, v67, v65);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v58 + 8))(v67, v65);
  sub_18F0EF148(v64, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v60 + 8))(v69, v59);
  sub_18F0EF148(v68, &qword_1EACCF7A8, &qword_18F540440);
  (*(v45 + 8))(v62, v61);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:displayStyle:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  v23 = v22;
  v49 = v25;
  v50 = v24;
  v27 = v26;
  v29 = v28;
  v47 = v28;
  v51 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v48 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v38 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v39);
  v40 = OUTLINED_FUNCTION_35_0();
  v41 = OUTLINED_FUNCTION_10(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  LOBYTE(v27) = *v27;
  OUTLINED_FUNCTION_25_0();
  (*(v38 + 16))(v21, v29, v36);
  LOBYTE(v52[0]) = v27;
  sub_18F127F18(v52);
  v52[3] = v23;
  v52[4] = a21;
  __swift_allocate_boxed_opaque_existential_1(v52);
  v49();
  OUTLINED_FUNCTION_8();
  v42 = OUTLINED_FUNCTION_37_4();
  sub_18F116908(v42, v43, &qword_1EACCF7A0, &unk_18F53E6F0);
  v44 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v48, v45, v46, v44);
  sub_18F116B3C();

  sub_18F0EF148(v50, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v38 + 8))(v47, v36);
  sub_18F0EF148(v51, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:displayStyle:requestValueDialog:inputConnectionBehavior:optionsProvider:)()
{
  OUTLINED_FUNCTION_18();
  v31 = v3;
  v32 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v30 = v10;
  v33 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  v18 = v17;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_43_0();
  v21 = OUTLINED_FUNCTION_10(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  LOBYTE(v9) = *v9;
  OUTLINED_FUNCTION_25_0();
  (*(v18 + 16))(v0, v11, v29);
  v35 = v9;
  v22 = sub_18F127F18(&v35);
  OUTLINED_FUNCTION_44_1(v22);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v7, v1, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v34[3] = v5;
  v34[4] = v31;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v28 = *(v5 - 8);
  (*(v28 + 16))(boxed_opaque_existential_1, v32, v5);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v28 + 8))(v32, v5);
  sub_18F0EF148(v7, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v18 + 8))(v30, v29);
  sub_18F0EF148(v33, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(description:default:displayStyle:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18();
  a19 = v25;
  a20 = v26;
  v57[1] = v27;
  v62 = v29;
  v63 = v28;
  v65 = v30;
  v32 = v31;
  v34 = v33;
  v59 = v33;
  v66 = v35;
  v64 = a24;
  v61 = a23;
  v36 = a22;
  v60 = a21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v38 = OUTLINED_FUNCTION_10(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v57 - v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  v58 = v43;
  OUTLINED_FUNCTION_11_0();
  v45 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_33();
  v47 = sub_18F520B3C();
  v48 = OUTLINED_FUNCTION_10(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_8();
  LOBYTE(v32) = *v32;
  OUTLINED_FUNCTION_25_0();
  (*(v45 + 16))(v24, v34, v43);
  v68[0] = v32;
  v57[2] = sub_18F127F18(v68);
  OUTLINED_FUNCTION_22_0(&a17);
  v62();
  OUTLINED_FUNCTION_8();
  v49 = v63;
  sub_18F116908(v63, v41, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v67[3] = v36;
  v67[4] = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v55 = *(v36 - 8);
  v56 = v65;
  (*(v55 + 16))(boxed_opaque_existential_1, v65, v36);
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v55 + 8))(v56, v36);
  sub_18F0EF148(v49, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v45 + 8))(v59, v58);
  sub_18F0EF148(v66, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init(title:description:default:capabilities:displayStyle:requestValueDialog:inputConnectionBehavior:)()
{
  OUTLINED_FUNCTION_18();
  v32 = v3;
  v33 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_28_0();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33_8();
  v20 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();

  v24 = *v5;
  sub_18F116908(v7, v1, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v1, 1, v20);
  if (v25)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v1, 1, v20);
    if (!v25)
    {
      sub_18F0EF148(v1, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v22 + 32))(v0, v1, v20);
  }

  (*(v14 + 16))(v17, v33, v29);
  v34[0] = v24;
  sub_18F127F18(v34);
  OUTLINED_FUNCTION_2_0();
  sub_18F116908(v32, v30, &qword_1EACCF7A0, &unk_18F53E6F0);
  v26 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v31, v27, v28, v26);
  sub_18F116B3C();
  sub_18F0EF148(v32, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v14 + 8))(v33, v29);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0(v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:displayStyle:requestValueDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v53 = v24;
  v56 = v26;
  v57 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v34);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v37 = v36;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_28_0();
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v41);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_67();
  v43 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19_0();

  v47 = *v28;
  sub_18F116908(v30, v21, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v21, 1, v43);
  if (v48)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v21, 1, v43);
    if (!v48)
    {
      sub_18F0EF148(v21, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v45 + 32))(v20, v21, v43);
  }

  (*(v37 + 16))(v40, v57, v52);
  v58[0] = v47;
  sub_18F127F18(v58);
  OUTLINED_FUNCTION_22_0(&a13);
  OUTLINED_FUNCTION_41_5();
  v53();
  OUTLINED_FUNCTION_8();
  sub_18F116908(v56, v54, &qword_1EACCF7A0, &unk_18F53E6F0);
  v49 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_1_4(v55, v50, v51, v49);
  sub_18F116B3C();

  sub_18F0EF148(v56, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v37 + 8))(v57, v52);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0(v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(title:description:default:capabilities:displayStyle:requestValueDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  v70 = v23;
  v71 = v25;
  v72 = v24;
  v27 = v26;
  v73 = v28;
  v75 = v29;
  v31 = v30;
  v68 = a22;
  OUTLINED_FUNCTION_23_10();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v33 = OUTLINED_FUNCTION_10(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v35);
  v67 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v39 = v38;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_28_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v41);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v66 - v43;
  v45 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_42_0(v49);
  v50 = *v27;
  v73 = v31;
  sub_18F116908(v31, v44, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v44, 1, v45);
  if (v51)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v44, 1, v45);
    if (!v51)
    {
      sub_18F0EF148(v44, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v47 + 32))(v74, v44, v45);
  }

  v52 = OUTLINED_FUNCTION_23_15();
  v53(v52, v75, v37);
  v77[0] = v50;
  v66[1] = sub_18F127F18(v77);
  OUTLINED_FUNCTION_2_0();
  v54 = v71;
  v55 = OUTLINED_FUNCTION_38_5();
  sub_18F116908(v55, v56, v57, v58);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  v63 = v69;
  v76[3] = v69;
  v76[4] = v68;
  __swift_allocate_boxed_opaque_existential_1(v76);
  v64 = *(v63 - 8);
  OUTLINED_FUNCTION_32_11();
  v65();
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();
  (*(v64 + 8))(v50, v63);
  sub_18F0EF148(v54, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v39 + 8))(v75, v37);
  OUTLINED_FUNCTION_27_0(v72);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:capabilities:displayStyle:requestValueDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_18();
  a19 = v27;
  a20 = v28;
  v78 = v29;
  v79 = v31;
  v80 = v30;
  v33 = v32;
  v81 = v34;
  v83 = v35;
  v37 = v36;
  v74 = a26;
  v71 = a25;
  v77 = a24;
  v70 = a23;
  v76 = a22;
  v72 = a21;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_10_1(v41);
  v73 = v26;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0();
  v45 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_28_0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_10(v47);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v68 - v49;
  v51 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_42_0(v55);
  v56 = *v33;
  v81 = v37;
  sub_18F116908(v37, v50, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_106(v50, 1, v51);
  if (v57)
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_106(v50, 1, v51);
    if (!v57)
    {
      sub_18F0EF148(v50, &qword_1EACCF7A8, &qword_18F540440);
    }
  }

  else
  {
    (*(v53 + 32))(v82, v50, v51);
  }

  v58 = OUTLINED_FUNCTION_40_7();
  v69 = v43;
  v59(v58, v83, v43);
  v85[0] = v56;
  v68 = sub_18F127F18(v85);
  OUTLINED_FUNCTION_22_0(&a10);
  OUTLINED_FUNCTION_41_5();
  v72();
  OUTLINED_FUNCTION_8();
  v60 = v79;
  sub_18F116908(v79, v75, &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = v77;
  v84[3] = v77;
  v84[4] = v74;
  __swift_allocate_boxed_opaque_existential_1(v84);
  v66 = *(v65 - 8);
  OUTLINED_FUNCTION_32_11();
  v67();
  OUTLINED_FUNCTION_7_1();
  sub_18F116B3C();

  (*(v66 + 8))(v51, v65);
  sub_18F0EF148(v60, &qword_1EACCF7A0, &unk_18F53E6F0);
  (*(v45 + 8))(v83, v69);
  OUTLINED_FUNCTION_27_0(v80);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F40D6A0@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *(a5 + 48) = 0;
  *a5 = *(a1 + v9[14]);
  *(a5 + 32) = type metadata accessor for IntentParameter(0, v9[10], v9[11], a4);
  *(a5 + 40) = swift_getWitnessTable();
  *(a5 + 8) = a1;
  v10 = v9[17];
  v12 = type metadata accessor for IntentParameterContext(0, a2, a3, v11);
  sub_18F116908(a1 + v10, a5 + *(v12 + 44), &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F116908(a1 + (*a1)[18], a5 + *(v12 + 48), &qword_1EACCF7A0, &unk_18F53E6F0);

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F40D7F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F40D808()
{
  v1 = v0[4];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 1, v2);
  v8 = (OUTLINED_FUNCTION_55() + 40);
  v9 = (*v8 + **v8);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_18F40D934;
  v6 = v0[2];
  v5 = v0[3];

  return v9(v6, v5, v2, v3);
}

uint64_t sub_18F40D934()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F40DA14()
{
  v0 = OUTLINED_FUNCTION_1_111();
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  v2 = OUTLINED_FUNCTION_55();
  return v3(v2);
}

uint64_t IntentParameterContext.isOptional.getter()
{
  OUTLINED_FUNCTION_6_81();
  v0 = OUTLINED_FUNCTION_46();
  return v1(v0) & 1;
}

uint64_t IntentParameterContext.title.getter()
{
  v0 = OUTLINED_FUNCTION_1_111();
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  v2 = OUTLINED_FUNCTION_55();
  return v3(v2);
}

uint64_t sub_18F40DB04()
{
  OUTLINED_FUNCTION_6_81();
  v0 = OUTLINED_FUNCTION_46();
  return v1(v0);
}

uint64_t sub_18F40DB48(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_7_69();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  return (*(*(v3 + 8) + 24))(a1, a2, v2);
}

uint64_t sub_18F40DBB4()
{
  OUTLINED_FUNCTION_6_81();
  v0 = OUTLINED_FUNCTION_46();
  return v1(v0);
}

uint64_t sub_18F40DBF8(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_7_69();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  return (*(*(v3 + 8) + 48))(a1, a2, v2);
}

uint64_t sub_18F40DC5C@<X0>(uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_7_69();
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  (*(*(v3 + 8) + 72))(v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v7 = swift_dynamicCast();
  return OUTLINED_FUNCTION_53_0(a2, v7 ^ 1u);
}

uint64_t sub_18F40DD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F40DD18()
{
  v1 = v0[8];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1Tm((v0[9] + 8), *(v0[9] + 32));
  v3 = OUTLINED_FUNCTION_55();
  v4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v5 = *(v1 + 16);
  v6 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v2, v6 ^ 1u, 1, v5);
  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t sub_18F40DDF4(uint64_t a1)
{
  sub_18F116908(a1, v7, &qword_1EACD0620, &unk_18F541850);
  v4 = OUTLINED_FUNCTION_1_111();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(*(v2 + 8) + 80))(v7, v1);
  return sub_18F10095C(a1);
}

uint64_t sub_18F40DE70(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F40DE88()
{
  v1 = v0[9];
  v2 = v1[4];
  v0[10] = v2;
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 1, v2);
  v4 = *(OUTLINED_FUNCTION_55() + 72);
  v0[11] = *(*(v3 + 8) + 8);
  v0[12] = swift_getAssociatedTypeWitness();
  v5 = sub_18F52254C();
  v0[13] = v5;
  v0[14] = *(v5 - 8);
  v6 = swift_task_alloc();
  v0[15] = v6;
  v9 = (v4 + *v4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_18F40E058;

  return v9(v6, v2, v3);
}

uint64_t sub_18F40E058()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_18F40E144, 0, 0);
}

uint64_t sub_18F40E144()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 112) + 8))(v1, *(v0 + 104));

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    *(v0 + 40) = v2;
    *(v0 + 48) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v2 - 8) + 32))(boxed_opaque_existential_1, v1, v2);
  }

  v4 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3218, &unk_18F565080);
  v5 = swift_dynamicCast();
  OUTLINED_FUNCTION_53_0(v4, v5 ^ 1u);
  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F40E288()
{
  sub_18F40DA14();
  sub_18F116908(v5, &v3, &qword_1EACD0620, &unk_18F541850);
  if (v4)
  {
    sub_18F0FD0B4(&v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    sub_18F52299C();
    v0 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_18F10095C(v5);
  }

  else
  {
    sub_18F10095C(v5);
    return 7104878;
  }

  return v0;
}

uint64_t sub_18F40E354()
{
  OUTLINED_FUNCTION_6_81();
  v1 = OUTLINED_FUNCTION_46();
  return v2(v1, v0) & 1;
}

uint64_t sub_18F40E39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F52254C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_18F0FD724(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E0, &qword_18F53FEA0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_53_0(v8, 0);
    (*(v9 + 32))(v11, v8, a2);
    v12 = OUTLINED_FUNCTION_1_111();
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    v14 = (*(v8 + 8))(v11 + 8, v4, v8);
    (*(v9 + 8))(v11, a2);
  }

  else
  {
    OUTLINED_FUNCTION_53_0(v8, 1);
    (*(v5 + 8))(v8, v4);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_18F40E5AC(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_111();
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v3 = OUTLINED_FUNCTION_55();
  v7 = v4(v3);
  MEMORY[0x193ADB000](544432416, 0xE400000000000000);
  v5 = sub_18F52307C();
  MEMORY[0x193ADB000](v5);

  return v7;
}

uint64_t sub_18F40E650()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 1, v2);
  v6 = (OUTLINED_FUNCTION_55() + 48);
  v7 = (*v6 + **v6);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_18F1320E0;

  return v7(v2, v3);
}

uint64_t sub_18F40E774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[4];
  v9 = v4[5];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v8);
  return (*(v9 + 56))(a1, a3, a4, v8, v9);
}

uint64_t sub_18F40E7F8()
{
  v1 = OUTLINED_FUNCTION_1_111();
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v3 = OUTLINED_FUNCTION_55();
  return v4(v3, v0);
}

uint64_t sub_18F40E850(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F0FC870;

  return sub_18F40D7F0(a1, a2);
}

uint64_t sub_18F40E8F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC870;

  return sub_18F40E63C();
}

uint64_t sub_18F40E990(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F0FC874;

  return sub_18F40DE70(a1, a2);
}

uint64_t sub_18F40EA3C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F40EAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F0FC874;

  return sub_18F40DD00(a1, v6, a3);
}

uint64_t sub_18F40EB58(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_18F40EB94(uint64_t a1)
{
  sub_18F40EC8C(319);
  if (v2 <= 0x3F)
  {
    sub_18F40ECF4();
    if (v4 <= 0x3F)
    {
      type metadata accessor for IntentParameterContext.ResolutionSource(319, *(a1 + 16), *(a1 + 24), v3);
      if (v5 <= 0x3F)
      {
        sub_18F0FDE68(319);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18F40EC8C(uint64_t a1)
{
  if (!qword_1EACCEB28)
  {
    sub_18F1168B4();
    v1 = sub_18F52172C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EACCEB28);
    }
  }
}

unint64_t sub_18F40ECF4()
{
  result = qword_1ED6FC300;
  if (!qword_1ED6FC300)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED6FC300);
  }

  return result;
}

_BYTE *sub_18F40ED68(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t _IntentUpdatableEntityProperty.title.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = qword_1ED707730;
  OUTLINED_FUNCTION_16_8(a1);
  v6 = sub_18F520B3C();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t _IntentUpdatableEntityProperty.wrappedValue.getter()
{

  sub_18F10887C();
}

uint64_t sub_18F40EF48(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return _IntentUpdatableEntityProperty.wrappedValue.setter(v2);
}

uint64_t _IntentUpdatableEntityProperty.wrappedValue.setter(uint64_t a1)
{
  v3 = *(*v1 + 88);
  OUTLINED_FUNCTION_11_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, v3);

  sub_18F102A0C(v8);

  return (*(v5 + 8))(a1, v3);
}

void (*_IntentUpdatableEntityProperty.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v3[1] = *(*v1 + 88);
  OUTLINED_FUNCTION_11_0();
  *(v4 + 16) = v5;
  v7 = *(v6 + 64);
  v3[3] = __swift_coroFrameAllocStub(v7);
  v3[4] = __swift_coroFrameAllocStub(v7);
  _IntentUpdatableEntityProperty.wrappedValue.getter();
  return sub_18F40F1DC;
}

void sub_18F40F1DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    _IntentUpdatableEntityProperty.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    _IntentUpdatableEntityProperty.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _s10AppIntents30_IntentUpdatableEntityPropertyCAA10Foundation16AttributedStringV9ValueTypeRt_rlE5title6intentACyxq_q0_GAD09LocalizedI8ResourceV_q0_mtcfC_0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_18F40F2D0(a1, v3, v4, v5);
  return v2;
}

void *sub_18F40F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for _EntityPropertyContainer(0, *(*v5 + 88), *(*v5 + 112), a4);
  v5[2] = sub_18F102E90(a1);
  return v5;
}

uint64_t sub_18F40F340(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v2;
}

uint64_t sub_18F40F37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = qword_1ED707718;
  OUTLINED_FUNCTION_16_8(a1);
  return sub_18F102F54(v4 + v5, a2);
}

uint64_t _IntentUpdatableEntityProperty.__deallocating_deinit()
{
  _IntentUpdatableEntityProperty.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t sub_18F40F46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*v3 + 88);
  v4[11] = v5;
  v6 = sub_18F52254C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F40F59C, 0, 0);
}

uint64_t sub_18F40F59C(uint64_t a1)
{
  sub_18F40F37C(a1, (v1 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v2 = swift_dynamicCast();
  v3 = v1[11];
  if (v2)
  {
    v4 = v1[9];
    __swift_storeEnumTagSinglePayload(v1[14], 0, 1, v1[11]);
    v5 = OUTLINED_FUNCTION_45();
    v6(v5);
    v7 = (*(v4 + 64))(v3, v4);
    v1[17] = v8;
    v18 = (v7 + *v7);
    v9 = swift_task_alloc();
    v1[18] = v9;
    *v9 = v1;
    v9[1] = sub_18F245164;
    v10 = v1[7];
    v11 = v1[8];

    return v18(v10, v11);
  }

  else
  {
    v14 = v1[13];
    v13 = v1[14];
    v15 = OUTLINED_FUNCTION_8_24();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v3);
    (*(v14 + 8))(v13, v1);
    return sub_18F522A3C();
  }
}

uint64_t sub_18F40F7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*v3 + 88);
  v4[11] = v5;
  v6 = sub_18F52254C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F40F8F0, 0, 0);
}

uint64_t sub_18F40F8F0(uint64_t a1)
{
  sub_18F40F37C(a1, (v1 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v2 = swift_dynamicCast();
  v3 = v1[11];
  if (!v2)
  {
    v15 = v1[13];
    v14 = v1[14];
    v16 = OUTLINED_FUNCTION_8_24();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
    (*(v15 + 8))(v14, v1);
    return sub_18F522A3C();
  }

  v5 = v1[15];
  v4 = v1[16];
  v6 = v1[14];
  v7 = v1[9];
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v1[11]);
  (*(v5 + 32))(v4, v6, v3);
  v8 = (*(v7 + 72))(v3, v7);
  v1[17] = v8;
  v1[18] = v9;
  if (!v8)
  {
    return sub_18F522A3C();
  }

  v19 = (v8 + *v8);
  v10 = swift_task_alloc();
  v1[19] = v10;
  *v10 = v1;
  v10[1] = sub_18F40FB40;
  v11 = v1[7];
  v12 = v1[8];

  return v19(v12, v11);
}

uint64_t sub_18F40FB40()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = sub_18F40FCD8;
  }

  else
  {
    v7 = sub_18F40FC40;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F40FC40()
{
  sub_18F0F689C(*(v0 + 136), *(v0 + 144));
  v1 = OUTLINED_FUNCTION_45();
  v2(v1);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F40FCD8()
{
  sub_18F0F689C(*(v0 + 136), *(v0 + 144));
  v1 = OUTLINED_FUNCTION_45();
  v2(v1);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t AppEntity._value<A, B>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_5_5(sub_18F40FD8C);
}

uint64_t sub_18F40FD8C()
{
  OUTLINED_FUNCTION_69();
  swift_getAtKeyPath();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18F2459AC;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return sub_18F40F46C(v4, v2, v3);
}

uint64_t AppEntity._setValue<A, B, C>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a2;
  return OUTLINED_FUNCTION_5_5(sub_18F40FE54);
}

uint64_t sub_18F40FE54()
{
  OUTLINED_FUNCTION_69();
  swift_getAtKeyPath();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_18F245BF0;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];

  return sub_18F40F7C0(v4, v2, v3);
}

uint64_t sub_18F40FF08()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return AssociatedTypeWitness;
}

uint64_t sub_18F40FFA4(uint64_t a1)
{
  sub_18F40F37C(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v2 = swift_dynamicCast();
  return OUTLINED_FUNCTION_14_2(v2);
}

uint64_t sub_18F410024(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return OUTLINED_FUNCTION_5_5(sub_18F410064);
}

uint64_t sub_18F410064(uint64_t a1)
{
  sub_18F40F37C(a1, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620, &unk_18F541850);
  v2 = swift_dynamicCast();
  OUTLINED_FUNCTION_14_2(v2);
  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F410108()
{
  v0 = 7104878;
  v21 = 0;
  v22 = 0xE000000000000000;
  v1 = sub_18F40F340(&qword_1ED707728);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 7104878;
    v3 = 0xE300000000000000;
  }

  MEMORY[0x193ADB000](v1, v3);

  MEMORY[0x193ADB000](1008745760, 0xE400000000000000);
  v4 = sub_18F52307C();
  MEMORY[0x193ADB000](v4);

  v5 = MEMORY[0x193ADB000](10302, 0xE200000000000000);
  sub_18F40F37C(v5, v18);
  v6 = v19;
  if (v19)
  {
    v7 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    OUTLINED_FUNCTION_11_0();
    v9 = v8;
    MEMORY[0x1EEE9AC00](v10);
    (*(v9 + 16))(&v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_18F10095C(v18);
    v0 = sub_18F238088(v6, v7);
    v13 = v12;
    v14 = OUTLINED_FUNCTION_45();
    v15(v14);
  }

  else
  {
    sub_18F10095C(v18);
    v13 = 0xE300000000000000;
  }

  MEMORY[0x193ADB000](v0, v13);

  MEMORY[0x193ADB000](41, 0xE100000000000000);
  return v21;
}

uint64_t sub_18F4103CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F0FC874;

  return sub_18F410024(a1);
}

uint64_t sub_18F410468(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t DisplayRepresentation.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F522FAC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v17, v17[3]);
    sub_18F174C08();
    sub_18F522D7C();
    v9 = v16[1];
    v8 = v16[2];
    sub_18F0F21A8(0, &qword_1EACD0540, 0x1E696ACD0);
    sub_18F0F21A8(0, &qword_1ED6FBDF0, 0x1E69AC878);
    v10 = sub_18F5222FC();
    if (v10)
    {
      v12 = v10;
      sub_18F455468(v12, v7);
      v13 = type metadata accessor for DisplayRepresentation.Image(0);
      if (__swift_getEnumTagSinglePayload(v7, 1, v13) != 1)
      {
        sub_18F123A1C(v9, v8);

        sub_18F11CF40(v7, a2);
        goto LABEL_5;
      }

      sub_18F410758(v7);
      sub_18F410704();
      swift_allocError();
      *v14 = 2;
      swift_willThrow();
    }

    else
    {
      sub_18F410704();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
    }

    sub_18F123A1C(v9, v8);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_18F410704()
{
  result = qword_1EACD92F8;
  if (!qword_1EACD92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD92F8);
  }

  return result;
}

uint64_t sub_18F410758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270, &unk_18F5407C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void DisplayRepresentation.Image.encode(to:)(void *a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v2 = sub_18F11D1B0();
  if (v2)
  {
    v3 = v2;
    v11[0] = 0;
    v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v11];
    v5 = v11[0];
    if (v4)
    {
      v6 = sub_18F520D4C();
      v8 = v7;

      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      sub_18F522FDC();
      __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
      sub_18F175084();
      sub_18F522D9C();

      sub_18F123A1C(v6, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
      v10 = v5;
      sub_18F520A8C();

      swift_willThrow();
    }
  }

  else
  {
    sub_18F410704();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }
}

_BYTE *_s18ImageEncodingErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F410A70()
{
  result = qword_1EACD9300;
  if (!qword_1EACD9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD9300);
  }

  return result;
}

uint64_t dispatch thunk of Resolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_14_6();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_18F23FEAC;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_18F410C04(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return AssociatedTypeWitness;
}

uint64_t sub_18F410C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[23] = AssociatedTypeWitness;
  v6[24] = sub_18F52254C();
  OUTLINED_FUNCTION_14_6();
  v6[25] = v8;
  v6[26] = swift_task_alloc();
  v6[27] = *(AssociatedTypeWitness - 8);
  v6[28] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[29] = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[30] = AssociatedConformanceWitness;
  v6[31] = type metadata accessor for IntentParameterContext(0, v9, AssociatedConformanceWitness, v11);
  OUTLINED_FUNCTION_14_6();
  v6[32] = v12;
  v6[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F410E70, 0, 0);
}

uint64_t sub_18F410E70()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v5);
  (*(v6 + 56))(v2, v2, v1, v5, v6);
  sub_18F102F54(v4, v0 + 56);
  if (*(v0 + 80))
  {
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    sub_18F0FD724(v0 + 16, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(*(v0 + 208), 0, 1, *(v0 + 184));
      v7 = OUTLINED_FUNCTION_22();
      v8(v7);
      OUTLINED_FUNCTION_14_6();
      v29 = (v9 + *v9);
      v10 = swift_task_alloc();
      *(v0 + 272) = v10;
      *v10 = v0;
      v10[1] = sub_18F4111A0;
      v11 = *(v0 + 264);
      v12 = *(v0 + 224);
      v13 = *(v0 + 168);
      v14 = *(v0 + 160);
      v15 = *(v0 + 136);

      return v29(v15, v12, v11, v14, v13);
    }

    v21 = *(v0 + 232);
    v23 = *(v0 + 200);
    v22 = *(v0 + 208);
    v24 = *(v0 + 192);
    v25 = *(v0 + 136);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, *(v0 + 184));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v26 = OUTLINED_FUNCTION_22();
    v27(v26);
    (*(v23 + 8))(v22, v24);
    v19 = v25;
    v20 = v21;
  }

  else
  {
    v17 = *(v0 + 232);
    v18 = *(v0 + 136);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    sub_18F10095C(v0 + 56);
    v19 = v18;
    v20 = v17;
  }

  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);

  OUTLINED_FUNCTION_71();

  return v28();
}

uint64_t sub_18F4111A0()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_18F411370;
  }

  else
  {
    v2 = sub_18F4112B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F4112B4()
{
  (*(v0[27] + 8))(v0[28], v0[23]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OUTLINED_FUNCTION_22();
  v2(v1);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F411370()
{
  (*(v0[27] + 8))(v0[28], v0[23]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OUTLINED_FUNCTION_22();
  v2(v1);

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F411434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F41144C()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55_17(v2);
  v4[1] = v3;
  v4[2].n128_u64[0] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_67_14(v5);
  OUTLINED_FUNCTION_52_17();
  OUTLINED_FUNCTION_46_23();

  return sub_18F412768(v7, v8, v9, v10);
}

uint64_t sub_18F411518()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F411634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[71] = a4;
  v4[70] = a3;
  v4[69] = a2;
  v4[68] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v4[72] = swift_task_alloc();
  v4[73] = type metadata accessor for IntentContext(0);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v4[76] = swift_task_alloc();
  v5 = sub_18F520E6C();
  v4[77] = v5;
  v4[78] = *(v5 - 8);
  v4[79] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F4117AC, 0, 0);
}

uint64_t sub_18F4117AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v5 = OUTLINED_FUNCTION_17_45();
  v8 = sub_18F4122C8(v5, v6, v7);
  v10 = v9;
  sub_18F116970(*(v4 + 560), *(v4 + 608), &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  v11 = OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_77_11(v11, v12, v13);
  if (v14 == 1)
  {
    sub_18F0EF1A8(*(v4 + 608), &qword_1EACCF7A0, &unk_18F53E6F0);
    v15 = 0;
  }

  else
  {
    v15 = sub_18F412488();
    OUTLINED_FUNCTION_2_104();
    sub_18F419B94(v16, v17);
  }

  v18 = *(v4 + 632);
  v19 = *(v4 + 600);
  v20 = *(v4 + 568);
  objc_allocWithZone(MEMORY[0x1E69ACF68]);
  v21 = v20;
  v22 = sub_18F418FDC(v18, v8, v10, v15, v20);
  *(v4 + 640) = v22;
  OUTLINED_FUNCTION_78_13();
  *(v4 + 648) = v19;
  if (v19)
  {

LABEL_6:

    OUTLINED_FUNCTION_27_4();

    return v23();
  }

  v25 = *(v4 + 600);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 656) = Strong;
  OUTLINED_FUNCTION_0_133();
  sub_18F419B94(v25, v27);
  if (!Strong)
  {
    v33 = *(v4 + 640);
    OUTLINED_FUNCTION_7_70(10);
    sub_18F412588(v4 + 144, v4 + 288);
    v34 = sub_18F133EDC();
    v35 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v34);
    OUTLINED_FUNCTION_24_48(*(v4 + 313), *(v4 + 304), *(v4 + 288), v35, v36);

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_47_22();
  *(v4 + 16) = v28;
  OUTLINED_FUNCTION_39_26(v4 + 536);
  v29 = OUTLINED_FUNCTION_36_31();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9308, &qword_18F565310);
  OUTLINED_FUNCTION_5_82(v30);
  OUTLINED_FUNCTION_4_82(COERCE_DOUBLE(1107296256));
  *(v4 + 96) = v31;
  *(v4 + 104) = &block_descriptor_61;
  *(v4 + 112) = v29;
  v32 = v22;
  OUTLINED_FUNCTION_64_12(v32, sel_requestParameterNeedsValue_completionHandler_, v32);

  return MEMORY[0x1EEE6DEC8](v25);
}

uint64_t sub_18F411AC8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 664) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_18F411BC4()
{
  v2 = *(v0 + 640);
  swift_unknownObjectRelease();

  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    v7 = *(v0 + 640);
    OUTLINED_FUNCTION_7_70(10);
    sub_18F412588(v0 + 144, v0 + 288);
    v8 = sub_18F133EDC();
    v9 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v8);
    OUTLINED_FUNCTION_24_48(*(v0 + 313), *(v0 + 304), *(v0 + 288), v9, v10);
    goto LABEL_37;
  }

  v4 = v3;
  v5 = *(v0 + 648);
  static IntentContext.current.getter(*(v0 + 576));
  if (v5)
  {
    v6 = *(v0 + 576);

    OUTLINED_FUNCTION_27_42();
    sub_18F0EF1A8(v6, qword_1EACD2898, &qword_18F5492F0);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 576), 0, 1, *(v0 + 584));
    OUTLINED_FUNCTION_1_112();
    v11 = OUTLINED_FUNCTION_56();
    sub_18F419B38(v11, v12, v13);
    v14 = [v4 context];
    if (v14)
    {
      v14 = sub_18F419810(v14);
    }

    v15 = *(v0 + 592);
    OUTLINED_FUNCTION_48_23(v14);

    OUTLINED_FUNCTION_0_133();
    sub_18F419B94(v15, v16);
  }

  v17 = sub_18F4199C4(v4);
  if (!v17)
  {
    v56 = [v4 value];
    if (v56)
    {
      v57 = v56;
      LNValue.asPropertyType.getter();

      if (*(v0 + 400))
      {
        v58 = *(v0 + 544);

        swift_unknownObjectRelease_n();
        sub_18F0FD0B4((v0 + 376), v0 + 336);
        sub_18F0FD0B4((v0 + 336), v58);
        *(v58 + 40) = 0;
LABEL_31:

        OUTLINED_FUNCTION_6();
LABEL_38:
        OUTLINED_FUNCTION_47_1();

        __asm { BRAA            X1, X16 }
      }
    }

    else
    {
      *(v0 + 408) = 0;
      *(v0 + 376) = 0u;
      *(v0 + 392) = 0u;
    }

    v7 = *(v0 + 640);
    sub_18F0EF1A8(v0 + 376, &qword_1EACD0620, &unk_18F541850);
    OUTLINED_FUNCTION_40_24();
    sub_18F412588(v0 + 192, v0 + 240);
    swift_unknownObjectRelease();
    v59 = sub_18F133EDC();
    v60 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v59);
    OUTLINED_FUNCTION_24_48(*(v0 + 265), *(v0 + 256), *(v0 + 240), v60, v61);
    swift_unknownObjectRelease();
LABEL_37:
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_61_18();

    OUTLINED_FUNCTION_71();
    goto LABEL_38;
  }

  v18 = v17;
  v65 = v0 + 456;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  v19 = sub_18F5216CC();
  v20 = v18 + 64;
  OUTLINED_FUNCTION_14_51();
  OUTLINED_FUNCTION_54_19();
  v22 = v21 >> 6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v23 = 0;
  v68 = v18 + 64;
  v69 = v22;
  v66 = v18;
  v67 = v0;
  if (v1)
  {
    goto LABEL_14;
  }

LABEL_10:
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      v55 = *(v0 + 544);

      swift_unknownObjectRelease();

      *v55 = v19;
      *(v55 + 40) = 1;
      goto LABEL_31;
    }

    v1 = *(v20 + 8 * v24);
    ++v23;
    if (v1)
    {
      v23 = v24;
      while (1)
      {
LABEL_14:
        OUTLINED_FUNCTION_51_17();
        v26 = (*(v18 + 48) + 16 * v25);
        v28 = *v26;
        v27 = v26[1];
        v29 = *(*(v18 + 56) + 8 * v25);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v30 = v29;
        LNValue.asPropertyType.getter();
        if (*(v0 + 440))
        {
          sub_18F0FD0B4((v0 + 416), v0 + 496);
          swift_isUniquelyReferenced_nonNull_native();
          v31 = v28;
          v32 = v28;
          v33 = v27;
          sub_18F0F713C(v32, v27);
          OUTLINED_FUNCTION_33_30();
          if (v36)
          {
            goto LABEL_45;
          }

          v37 = v34;
          v38 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
          OUTLINED_FUNCTION_65_17();
          if (sub_18F5229DC())
          {
            v39 = sub_18F0F713C(v31, v33);
            if ((v38 & 1) != (v40 & 1))
            {
              OUTLINED_FUNCTION_47_1();

              sub_18F522E2C();
              return;
            }

            v37 = v39;
          }

          if (v38)
          {
            OUTLINED_FUNCTION_32_39();
            v43 = (v41 + v37 * v42);
            __swift_destroy_boxed_opaque_existential_1Tm(v43);
            v0 = v67;
            sub_18F0FD0B4((v67 + 496), v43);
          }

          else
          {
            OUTLINED_FUNCTION_15_48();
            *v50 = v31;
            v50[1] = v33;
            OUTLINED_FUNCTION_32_39();
            v0 = v67;
            sub_18F0FD0B4((v67 + 496), v51 + v37 * v52);

            v53 = *(v19 + 16);
            v36 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v36)
            {
              goto LABEL_46;
            }

            *(v19 + 16) = v54;
          }

          v18 = v66;
          v20 = v68;
          v22 = v69;
        }

        else
        {
          sub_18F0EF1A8(v0 + 416, &qword_1EACD0620, &unk_18F541850);
          v44 = sub_18F0F713C(v28, v27);
          if (v45)
          {
            v46 = v44;
            swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
            OUTLINED_FUNCTION_65_17();
            sub_18F5229DC();

            OUTLINED_FUNCTION_32_39();
            sub_18F0FD0B4((v47 + v46 * v48), v65);
            sub_18F5229FC();

            v20 = v68;
            v49 = v65;
          }

          else
          {

            OUTLINED_FUNCTION_38_25(v65);
          }

          v22 = v69;
          sub_18F0EF1A8(v49, &qword_1EACD0620, &unk_18F541850);
        }

        v1 &= v1 - 1;
        if (!v1)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_18F412228()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 640);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_61_18();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F4122C8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v6);
  result = (*(*(v5 + 8) + 16))(v6);
  if (!v8)
  {
    if (qword_1ED6FEFE8 != -1)
    {
      swift_once();
    }

    v9 = sub_18F52165C();
    __swift_project_value_buffer(v9, qword_1ED7077A8);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v10 = sub_18F52163C();
    v11 = sub_18F52221C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_18F11897C(a2, a3, &v15);
      _os_log_impl(&dword_18F0E9000, v10, v11, "%s failed, missing parameter identifier", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x193ADD350](v13, -1, -1);
      MEMORY[0x193ADD350](v12, -1, -1);
    }

    sub_18F133EDC();
    swift_allocError();
    *v14 = 7;
    *(v14 + 8) = 0u;
    *(v14 + 24) = 0u;
    *(v14 + 40) = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_18F412488()
{
  v2 = type metadata accessor for IntentContext(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IntentContext.current.getter(v4);
  if (!v1)
  {
    v5 = [v4[1] localeIdentifier];
    sub_18F5218DC();

    sub_18F2E9CD0();
    v0 = v6;

    sub_18F419B94(v4, type metadata accessor for IntentContext);
  }

  return v0;
}

__n128 sub_18F412588@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v5 = sub_18F52165C();
  __swift_project_value_buffer(v5, qword_1ED7077A8);
  swift_unknownObjectRetain();
  v6 = sub_18F52163C();
  v7 = sub_18F52221C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_18F11897C(0xD000000000000019, 0x800000018F52BED0, v15);
    *(v8 + 12) = 2080;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD7BB0, &qword_18F54D848);
    v10 = sub_18F52194C();
    v12 = sub_18F11897C(v10, v11, v15);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_18F0E9000, v6, v7, "%s failed, invalid response: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v9, -1, -1);
    MEMORY[0x193ADD350](v8, -1, -1);
  }

  sub_18F419880(a2, v15);
  v13 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v13;
  result = *(a2 + 25);
  *(a3 + 25) = result;
  return result;
}

uint64_t sub_18F412768(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = v4;
  v6[2] = a2;
  v6[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v6[4] = swift_task_alloc();
  v6[5] = type metadata accessor for IntentContext(0);
  v6[6] = swift_task_alloc();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_18F4128D8;

  return v10(a1);
}

uint64_t sub_18F4128D8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_63_15();

    OUTLINED_FUNCTION_6();

    return v10();
  }
}

uint64_t sub_18F4129F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
  }

  v13 = v12[8];
  v14 = sub_18F52165C();
  __swift_project_value_buffer(v14, qword_1ED7077A8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v15 = v13;
  v16 = sub_18F52163C();
  v17 = sub_18F5221FC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_73_10(4.8151e-34);
    v21 = OUTLINED_FUNCTION_72_14(v20);
    *(v18 + 14) = v21;
    *v19 = v21;
    OUTLINED_FUNCTION_69_0(&dword_18F0E9000, v22, v23, "%s: %@");
    sub_18F0EF1A8(v19, &qword_1EACD0578, &unk_18F541870);
    OUTLINED_FUNCTION_32();
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v24 = sub_18F520A7C();
  v25 = [v24 responseContext];

  if (v25)
  {
    static IntentContext.current.getter(v12[4]);
    __swift_storeEnumTagSinglePayload(v12[4], 0, 1, v12[5]);
    OUTLINED_FUNCTION_1_112();
    v26 = OUTLINED_FUNCTION_53();
    sub_18F419B38(v26, v27, v28);
    v29 = [v25 identifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_18F5218DC();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = v12[6];
    OUTLINED_FUNCTION_68_16();
    sub_18F21974C(v31, v33);

    OUTLINED_FUNCTION_0_133();
    sub_18F419B94(v34, v35);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_176();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_18F412C94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = v4;
  v6[2] = a2;
  v6[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v6[4] = swift_task_alloc();
  v6[5] = type metadata accessor for IntentContext(0);
  v6[6] = swift_task_alloc();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_18F412E04;

  return v10(a1);
}

uint64_t sub_18F412E04()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_63_15();

    OUTLINED_FUNCTION_6();

    return v10();
  }
}

uint64_t sub_18F412F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v10[5] = a5;
  v10[6] = a6;
  v10[3] = a3;
  v10[4] = a4;
  v10[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v10[7] = swift_task_alloc();
  v10[8] = type metadata accessor for IntentContext(0);
  v10[9] = swift_task_alloc();
  v12 = swift_task_alloc();
  v10[10] = v12;
  *v12 = v10;
  v12[1] = sub_18F413054;

  return sub_18F4167A0(a1, a4, a5, a6);
}

uint64_t sub_18F413054()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F41314C()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F4131CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
  }

  v13 = v12[11];
  v14 = sub_18F52165C();
  __swift_project_value_buffer(v14, qword_1ED7077A8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v15 = v13;
  v16 = sub_18F52163C();
  v17 = sub_18F5221FC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_73_10(4.8151e-34);
    v21 = OUTLINED_FUNCTION_72_14(v20);
    *(v18 + 14) = v21;
    *v19 = v21;
    OUTLINED_FUNCTION_69_0(&dword_18F0E9000, v22, v23, "%s: %@");
    sub_18F0EF1A8(v19, &qword_1EACD0578, &unk_18F541870);
    OUTLINED_FUNCTION_32();
    __swift_destroy_boxed_opaque_existential_1Tm(a9);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_32();
  }

  v24 = sub_18F520A7C();
  v25 = [v24 responseContext];

  if (v25)
  {
    static IntentContext.current.getter(v12[7]);
    __swift_storeEnumTagSinglePayload(v12[7], 0, 1, v12[8]);
    OUTLINED_FUNCTION_1_112();
    v26 = OUTLINED_FUNCTION_53();
    sub_18F419B38(v26, v27, v28);
    v29 = [v25 identifier];
    if (v29)
    {
      v30 = v29;
      v31 = sub_18F5218DC();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = v12[9];
    OUTLINED_FUNCTION_68_16();
    sub_18F21974C(v31, v33);

    OUTLINED_FUNCTION_0_133();
    sub_18F419B94(v34, v35);
  }

  v36 = v12[6];
  v38 = v12[4];
  v37 = v12[5];
  swift_willThrow();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_176();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_18F413478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F413490()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55_17(v2);
  v4[1] = vextq_s8(v3, v3, 8uLL);
  v4[2].i64[0] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_67_14(v5);
  OUTLINED_FUNCTION_52_17();
  OUTLINED_FUNCTION_46_23();

  return sub_18F412C94(v7, v8, v9, v10);
}

uint64_t sub_18F413560()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F41367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[88] = a4;
  v4[87] = a3;
  v4[86] = a2;
  v4[85] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v4[89] = swift_task_alloc();
  v4[90] = type metadata accessor for IntentContext(0);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v4[93] = swift_task_alloc();
  v5 = sub_18F520E6C();
  v4[94] = v5;
  v4[95] = *(v5 - 8);
  v4[96] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F4137F4, 0, 0);
}

uint64_t sub_18F4137F4()
{
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0 + 688);
  v2 = *(v1 + 16);
  *(v0 + 776) = v2;
  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v3 = v1 + 32;
    do
    {
      sub_18F0FD724(v3, v0 + 432);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 432), *(v0 + 456));
      v4 = OUTLINED_FUNCTION_43_20();
      sub_18F142A38(v4);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v3 += 40;
      --v2;
    }

    while (v2);
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    v5 = OUTLINED_FUNCTION_17_45();
    v10 = sub_18F4122C8(v5, v6, v7);
    v12 = v11;
    sub_18F116970(*(v0 + 704), *(v0 + 744), &qword_1EACCF7A0, &unk_18F53E6F0);
    type metadata accessor for IntentDialog(0);
    v13 = OUTLINED_FUNCTION_43_20();
    OUTLINED_FUNCTION_77_11(v13, v14, v15);
    if (v16 == 1)
    {
      sub_18F0EF1A8(*(v0 + 744), &qword_1EACCF7A0, &unk_18F53E6F0);
      v17 = 0;
    }

    else
    {
      v17 = sub_18F412488();
      OUTLINED_FUNCTION_2_104();
      sub_18F419B94(v18, v19);
    }

    v20 = *(v0 + 768);
    v21 = *(v0 + 736);
    v22 = objc_allocWithZone(MEMORY[0x1E69ACEA8]);
    v23 = sub_18F4190B8(v20, v10, v12, v36, v17);
    *(v0 + 784) = v23;
    static IntentContext.current.getter(v21);
    *(v0 + 792) = 0;
    v26 = *(v0 + 736);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 800) = Strong;
    OUTLINED_FUNCTION_0_133();
    sub_18F419B94(v26, v28);
    if (Strong)
    {
      *(v0 + 16) = v0;
      OUTLINED_FUNCTION_39_26(v0 + 672);
      *(v0 + 24) = sub_18F413C00;
      v29 = swift_continuation_init();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9308, &qword_18F565310);
      OUTLINED_FUNCTION_5_82(v30);
      OUTLINED_FUNCTION_4_82(COERCE_DOUBLE(1107296256));
      *(v0 + 96) = v31;
      *(v0 + 104) = &block_descriptor_51;
      *(v0 + 112) = v29;
      [Strong requestParameterDisambiguation:v23 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v32 = *(v0 + 784);
    OUTLINED_FUNCTION_6_82();
    sub_18F412588(v0 + 144, v0 + 384);
    v33 = sub_18F133EDC();
    v34 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v33);
    OUTLINED_FUNCTION_24_48(*(v0 + 409), *(v0 + 400), *(v0 + 384), v34, v35);
  }

  else
  {
    v8 = sub_18F133EDC();
    OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v8);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0;
    *(v9 + 40) = 7;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_35_27();

  OUTLINED_FUNCTION_71();

  return v24();
}

uint64_t sub_18F413C00()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 808) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_18F413CFC()
{
  v1 = *(v0 + 784);
  *(v0 + 816) = *(v0 + 672);
  swift_unknownObjectRelease();

  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    v6 = *(v0 + 784);
    OUTLINED_FUNCTION_6_82();
    sub_18F412588(v0 + 144, v0 + 384);
    v7 = sub_18F133EDC();
    v8 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v7);
    OUTLINED_FUNCTION_24_48(*(v0 + 409), *(v0 + 400), *(v0 + 384), v8, v9);
LABEL_46:
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_34_32();

    OUTLINED_FUNCTION_71();
    goto LABEL_47;
  }

  v3 = v2;
  v4 = *(v0 + 792);
  static IntentContext.current.getter(*(v0 + 712));
  if (v4)
  {
    v5 = *(v0 + 712);

    OUTLINED_FUNCTION_6_0(v5);
    sub_18F0EF1A8(v5, qword_1EACD2898, &qword_18F5492F0);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 712), 0, 1, *(v0 + 720));
    OUTLINED_FUNCTION_1_112();
    v10 = OUTLINED_FUNCTION_53();
    sub_18F419B38(v10, v11, v12);
    v13 = [v3 context];
    if (v13)
    {
      sub_18F419810(v13);
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v0 + 728);
    OUTLINED_FUNCTION_68_16();
    sub_18F21974C(v17, v15);

    OUTLINED_FUNCTION_0_133();
    sub_18F419B94(v16, v18);
  }

  v19 = [v3 selectedIndex];
  v20 = v19;
  if (v19)
  {
    v21 = *(v0 + 776);
    v22 = [v19 integerValue];

    v6 = *(v0 + 784);
    if (v22 < v21)
    {
      v23 = *(v0 + 688);
      v24 = *(v0 + 680);
      swift_unknownObjectRelease();
      sub_18F0FD724(v23 + 40 * v22 + 32, v24);

      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    *(v0 + 248) = 0u;
    *(v0 + 240) = 4;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 7;
    swift_unknownObjectRetain();
    sub_18F412588(v0 + 240, v0 + 336);
    swift_unknownObjectRelease();
    v57 = sub_18F133EDC();
    v58 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v57);
    v60 = *(v0 + 361);
    v62 = *(v0 + 336);
    v61 = *(v0 + 352);
    goto LABEL_45;
  }

  v25 = sub_18F4199C4(v3);
  if (!v25)
  {
    v63 = [v3 value];
    if (v63)
    {
      v64 = v63;
      LNValue.asPropertyType.getter();

      if (*(v0 + 536))
      {
        v65 = *(v0 + 696);
        v66 = *(v0 + 680);
        sub_18F0FD0B4((v0 + 512), v0 + 472);
        __swift_project_boxed_opaque_existential_1Tm(v65, v65[3]);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        v66[3] = swift_getAssociatedTypeWitness();
        v66[4] = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1(v66);
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        *(v0 + 824) = v67;
        *v67 = v68;
        v67[1] = sub_18F4145C8;
        OUTLINED_FUNCTION_68_2();

        sub_18F265C8C();
        return;
      }
    }

    else
    {
      *(v0 + 544) = 0;
      *(v0 + 512) = 0u;
      *(v0 + 528) = 0u;
    }

    v6 = *(v0 + 784);
    sub_18F0EF1A8(v0 + 512, &qword_1EACD0620, &unk_18F541850);
    OUTLINED_FUNCTION_40_24();
    sub_18F412588(v0 + 192, v0 + 288);
    swift_unknownObjectRelease();
    v70 = sub_18F133EDC();
    v58 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v70);
    v60 = *(v0 + 313);
    v62 = *(v0 + 288);
    v61 = *(v0 + 304);
LABEL_45:
    OUTLINED_FUNCTION_24_48(v60, v61, v62, v58, v59);
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v26 = v25;
  v80 = v0;
  v75 = v0 + 592;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  v27 = sub_18F5216CC();
  v28 = v26 + 64;
  OUTLINED_FUNCTION_14_51();
  v31 = v30 & v29;
  v33 = (63 - v32) >> 6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v34 = 0;
  v76 = v33;
  v77 = v26 + 64;
  v74 = v26;
  if (!v31)
  {
    goto LABEL_15;
  }

  while (2)
  {
    v79 = v27;
LABEL_19:
    v36 = __clz(__rbit64(v31)) | (v34 << 6);
    v37 = (*(v26 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = *(*(v26 + 56) + 8 * v36);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v41 = v40;
    LNValue.asPropertyType.getter();
    if (*(v80 + 576))
    {
      sub_18F0FD0B4((v80 + 552), v80 + 632);
      swift_isUniquelyReferenced_nonNull_native();
      v78 = v38;
      v42 = sub_18F0F713C(v39, v38);
      if (__OFADD__(v79[2], (v43 & 1) == 0))
      {
        goto LABEL_54;
      }

      v44 = v42;
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
      v27 = v79;
      if (sub_18F5229DC())
      {
        v46 = sub_18F0F713C(v39, v78);
        if ((v45 & 1) != (v47 & 1))
        {
          OUTLINED_FUNCTION_68_2();

          sub_18F522E2C();
          return;
        }

        v44 = v46;
      }

      if (v45)
      {
        v48 = (v79[7] + 40 * v44);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        sub_18F0FD0B4((v80 + 632), v48);
      }

      else
      {
        v79[(v44 >> 6) + 8] |= 1 << v44;
        v53 = (v79[6] + 16 * v44);
        *v53 = v39;
        v53[1] = v78;
        sub_18F0FD0B4((v80 + 632), v79[7] + 40 * v44);

        v54 = v79[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_55;
        }

        v79[2] = v56;
      }

      v33 = v76;
      v28 = v77;
    }

    else
    {
      sub_18F0EF1A8(v80 + 552, &qword_1EACD0620, &unk_18F541850);
      v27 = v79;
      v49 = sub_18F0F713C(v39, v38);
      if (v50)
      {
        v51 = v49;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
        v26 = v74;
        v28 = v77;
        sub_18F5229DC();

        sub_18F0FD0B4((v79[7] + 40 * v51), v75);
        OUTLINED_FUNCTION_53();
        sub_18F5229FC();

        v33 = v76;
        v52 = v75;
      }

      else
      {

        v26 = v74;
        OUTLINED_FUNCTION_38_25(v75);
      }

      sub_18F0EF1A8(v52, &qword_1EACD0620, &unk_18F541850);
    }

    v31 &= v31 - 1;
    if (v31)
    {
      continue;
    }

    break;
  }

LABEL_15:
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {
      v24 = *(v80 + 680);

      swift_unknownObjectRelease();

      *v24 = v27;
      v20 = 0;
LABEL_37:
      *(v24 + 40) = v20 == 0;
      OUTLINED_FUNCTION_35_27();

      OUTLINED_FUNCTION_6();
LABEL_47:
      OUTLINED_FUNCTION_68_2();

      __asm { BRAA            X1, X16 }
    }

    v31 = *(v28 + 8 * v35);
    ++v34;
    if (v31)
    {
      v79 = v27;
      v34 = v35;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_18F4145C8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 832) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F4146C0()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 680);

  swift_unknownObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  *(v1 + 40) = 0;
  OUTLINED_FUNCTION_35_27();

  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_18F41476C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 784);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_34_32();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F41480C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 680);

  swift_unknownObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
  __swift_deallocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_34_32();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F4148B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F4148D4()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_67_14(v4);
  OUTLINED_FUNCTION_46_23();

  return sub_18F412C94(v6, v7, v8, v9);
}

uint64_t sub_18F4149B0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F414ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[49] = a4;
  v5[50] = a5;
  v5[47] = a2;
  v5[48] = a3;
  v5[46] = a1;
  sub_18F5205FC();
  v5[51] = swift_task_alloc();
  v6 = sub_18F52060C();
  v5[52] = v6;
  v5[53] = *(v6 - 8);
  v5[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v5[55] = swift_task_alloc();
  v5[56] = type metadata accessor for IntentContext(0);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v5[59] = swift_task_alloc();
  v7 = sub_18F520E6C();
  v5[60] = v7;
  v5[61] = *(v7 - 8);
  v5[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F414CC8, 0, 0);
}

uint64_t sub_18F414CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v13 = OUTLINED_FUNCTION_17_45();
  v16 = sub_18F4122C8(v13, v14, v15);
  v18 = v17;
  v19 = *(v12 + 472);
  v20 = *(v12 + 392);
  __swift_project_boxed_opaque_existential_1Tm(*(v12 + 384), *(*(v12 + 384) + 24));
  v21 = OUTLINED_FUNCTION_43_20();
  v22 = sub_18F142A38(v21);
  sub_18F116970(v20, v19, &qword_1EACCF7A0, &unk_18F53E6F0);
  v23 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_77_11(v19, v24, v23);
  if (v25 == 1)
  {
    sub_18F0EF1A8(*(v12 + 472), &qword_1EACCF7A0, &unk_18F53E6F0);
    v26 = 0;
  }

  else
  {
    v26 = sub_18F412488();
    OUTLINED_FUNCTION_2_104();
    sub_18F419B94(v27, v28);
  }

  v29 = *(v12 + 496);
  v30 = *(v12 + 464);
  v31 = *(v12 + 400);
  objc_allocWithZone(MEMORY[0x1E69ACE20]);
  v32 = v31;
  v33 = sub_18F4191C4(v29, v16, v18, v22, v26, v31);
  *(v12 + 504) = v33;
  OUTLINED_FUNCTION_78_13();
  *(v12 + 512) = v30;
  if (v30)
  {
LABEL_5:

    OUTLINED_FUNCTION_62_14(*(v12 + 496));

    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_176();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
  }

  v43 = *(v12 + 464);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v12 + 520) = Strong;
  OUTLINED_FUNCTION_0_133();
  sub_18F419B94(v43, v45);
  if (!Strong)
  {
    v33 = *(v12 + 504);
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v53, v54);
    v55 = sub_18F133EDC();
    v56 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v55);
    OUTLINED_FUNCTION_9_61(v56, v57);
    swift_willThrow();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_47_22();
  *(v12 + 16) = v46;
  OUTLINED_FUNCTION_39_26(v12 + 360);
  v47 = OUTLINED_FUNCTION_36_31();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9308, &qword_18F565310);
  OUTLINED_FUNCTION_5_82(v48);
  OUTLINED_FUNCTION_4_82(COERCE_DOUBLE(1107296256));
  *(v12 + 96) = v49;
  *(v12 + 104) = &block_descriptor_42;
  *(v12 + 112) = v47;
  v50 = v33;
  OUTLINED_FUNCTION_64_12(v50, sel_requestParameterConfirmation_completionHandler_, v50);
  OUTLINED_FUNCTION_176();

  return MEMORY[0x1EEE6DEC8](v51);
}

uint64_t sub_18F414FDC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_18F4150D8()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 360);
  swift_unknownObjectRelease();

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v7 = *(v0 + 504);
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v8, v9);
    v10 = sub_18F133EDC();
    v11 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v10);
    OUTLINED_FUNCTION_9_61(v11, v12);
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_35;
  }

  v4 = v3;
  v5 = *(v0 + 512);
  static IntentContext.current.getter(*(v0 + 440));
  if (v5)
  {
    v6 = *(v0 + 440);

    OUTLINED_FUNCTION_27_42();
    sub_18F0EF1A8(v6, qword_1EACD2898, &qword_18F5492F0);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 440), 0, 1, *(v0 + 448));
    OUTLINED_FUNCTION_1_112();
    v13 = OUTLINED_FUNCTION_56();
    sub_18F419B38(v13, v14, v15);
    v16 = [v4 context];
    if (v16)
    {
      v16 = sub_18F419810(v16);
    }

    v17 = *(v0 + 456);
    OUTLINED_FUNCTION_48_23(v16);

    OUTLINED_FUNCTION_0_133();
    sub_18F419B94(v17, v18);
  }

  v19 = sub_18F4199C4(v4);
  v69 = v0;
  if (!v19)
  {
    v55 = [v4 isConfirmed];
    v56 = *(v0 + 504);
    if (v55)
    {
      v57 = *(v0 + 368);

      swift_unknownObjectRelease();
      *(v57 + 25) = 0u;
      *v57 = 0u;
      v57[1] = 0u;
LABEL_33:

      OUTLINED_FUNCTION_6();
LABEL_36:
      OUTLINED_FUNCTION_47_1();

      __asm { BRAA            X1, X16 }
    }

    v58 = *(v0 + 432);
    v59 = *(v0 + 424);
    v60 = *(v0 + 416);
    sub_18F5205DC();
    sub_18F419644(MEMORY[0x1E69E7CC0]);
    sub_18F419C88();
    sub_18F520A6C();
    sub_18F5205CC();
    (*(v59 + 8))(v58, v60);
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_35:
    OUTLINED_FUNCTION_62_14(*(v0 + 496));

    OUTLINED_FUNCTION_71();
    goto LABEL_36;
  }

  v20 = v19;
  v64 = v0 + 280;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  v21 = sub_18F5216CC();
  v22 = v20 + 64;
  OUTLINED_FUNCTION_14_51();
  OUTLINED_FUNCTION_54_19();
  v24 = v23 >> 6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v25 = 0;
  v65 = v20 + 64;
  v66 = v20;
  v67 = v24;
  if (v2)
  {
    goto LABEL_14;
  }

LABEL_10:
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v54 = *(v0 + 368);

      swift_unknownObjectRelease();

      *v54 = v21;
      *(v54 + 40) = 1;
      goto LABEL_33;
    }

    v2 = *(v22 + 8 * v26);
    ++v25;
    if (v2)
    {
      v25 = v26;
      while (1)
      {
LABEL_14:
        OUTLINED_FUNCTION_51_17();
        v28 = (*(v20 + 48) + 16 * v27);
        v30 = *v28;
        v29 = v28[1];
        v31 = *(*(v20 + 56) + 8 * v27);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v32 = v31;
        LNValue.asPropertyType.getter();
        if (*(v0 + 264))
        {
          sub_18F0FD0B4((v0 + 240), v0 + 320);
          swift_isUniquelyReferenced_nonNull_native();
          v68 = v29;
          OUTLINED_FUNCTION_79_8(v30);
          OUTLINED_FUNCTION_33_30();
          if (v35)
          {
            goto LABEL_43;
          }

          v36 = v33;
          v37 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
          OUTLINED_FUNCTION_65_17();
          if (sub_18F5229DC())
          {
            v38 = sub_18F0F713C(v30, v68);
            if ((v37 & 1) != (v39 & 1))
            {
              OUTLINED_FUNCTION_47_1();

              sub_18F522E2C();
              return;
            }

            v36 = v38;
          }

          if (v37)
          {
            OUTLINED_FUNCTION_32_39();
            v42 = (v40 + v36 * v41);
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            v0 = v69;
            sub_18F0FD0B4((v69 + 320), v42);
          }

          else
          {
            OUTLINED_FUNCTION_15_48();
            *v49 = v30;
            v49[1] = v68;
            OUTLINED_FUNCTION_32_39();
            v0 = v69;
            sub_18F0FD0B4((v69 + 320), v50 + v36 * v51);

            v52 = *(v21 + 16);
            v35 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v35)
            {
              goto LABEL_44;
            }

            *(v21 + 16) = v53;
          }

          v22 = v65;
          v20 = v66;
          v24 = v67;
        }

        else
        {
          sub_18F0EF1A8(v0 + 240, &qword_1EACD0620, &unk_18F541850);
          v43 = OUTLINED_FUNCTION_79_8(v30);
          if (v44)
          {
            v45 = v43;
            swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
            OUTLINED_FUNCTION_65_17();
            v20 = v66;
            sub_18F5229DC();

            OUTLINED_FUNCTION_32_39();
            sub_18F0FD0B4((v46 + v45 * v47), v64);
            sub_18F5229FC();

            v22 = v65;
            v48 = v64;
          }

          else
          {

            OUTLINED_FUNCTION_38_25(v64);
          }

          v24 = v67;
          sub_18F0EF1A8(v48, &qword_1EACD0620, &unk_18F541850);
          v0 = v69;
        }

        v2 &= v2 - 1;
        if (!v2)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_18F41570C(uint64_t a1)
{
  v2 = *(v1 + 504);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_62_14(*(v1 + 496));

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F4157D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F4157F0()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55_17(v2);
  v4[1] = v3;
  v4[2].n128_u64[0] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v5;
  *v5 = v6;
  OUTLINED_FUNCTION_67_14(v5);
  OUTLINED_FUNCTION_52_17();
  OUTLINED_FUNCTION_46_23();

  return sub_18F412C94(v7, v8, v9, v10);
}

uint64_t sub_18F4158BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[43] = a3;
  v4[44] = a4;
  v4[41] = a1;
  v4[42] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v4[45] = swift_task_alloc();
  v4[46] = type metadata accessor for IntentContext(0);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v5 = type metadata accessor for IntentChoiceOption(0);
  v4[49] = v5;
  v4[50] = *(v5 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v4[54] = swift_task_alloc();
  v6 = sub_18F520E6C();
  v4[55] = v6;
  v4[56] = *(v6 - 8);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F415AB8, 0, 0);
}

void sub_18F415AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[42];
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v6 = *(v5 + 16);
  v4[60] = v6;
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    goto LABEL_6;
  }

  v9 = v4[49];
  v8 = v4[50];
  v10 = v4[42];
  v48 = MEMORY[0x1E69E7CC0];
  sub_18F5228CC();
  v11 = v10 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12 = *(v8 + 72);
  do
  {
    sub_18F419AD4(v11, v4[53]);
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    sub_18F520AAC();
    sub_18F0F21A8(0, &qword_1ED6FEEC0, 0x1E696B100);
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_66_16();
      OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_28_2();
      return;
    }

    v13 = v4[58];
    v14 = v4[53];
    v15 = v4[38];
    v16 = [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

    v17 = *(v14 + *(v9 + 20));
    v18 = objc_allocWithZone(MEMORY[0x1E69ACDE8]);
    sub_18F418E78(v13, v16, v17);
    OUTLINED_FUNCTION_13_53();
    sub_18F419B94(v14, v19);
    sub_18F52289C();
    sub_18F5228DC();
    sub_18F5228EC();
    sub_18F5228AC();
    v11 += v12;
    --v6;
  }

  while (v6);
  v7 = v48;
LABEL_6:
  sub_18F116970(v4[43], v4[54], &qword_1EACCF7A0, &unk_18F53E6F0);
  type metadata accessor for IntentDialog(0);
  v20 = OUTLINED_FUNCTION_43_20();
  OUTLINED_FUNCTION_77_11(v20, v21, v22);
  if (v23 == 1)
  {
    sub_18F0EF1A8(v4[54], &qword_1EACCF7A0, &unk_18F53E6F0);
    v24 = 0;
  }

  else
  {
    v24 = sub_18F412488();
    OUTLINED_FUNCTION_2_104();
    sub_18F419B94(v25, v26);
  }

  v27 = v4[59];
  v28 = v4[48];
  v29 = v4[44];
  objc_allocWithZone(MEMORY[0x1E69ACDF0]);
  v30 = v29;
  v31 = sub_18F4192AC(v27, v7, v24, v29);
  v4[61] = v31;
  OUTLINED_FUNCTION_78_13();
  v4[62] = v28;
  if (v28)
  {
LABEL_11:

    OUTLINED_FUNCTION_26_45();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_28_2();

    __asm { BRAA            X1, X16 }
  }

  v34 = v4[48];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4[63] = Strong;
  OUTLINED_FUNCTION_0_133();
  sub_18F419B94(v34, v36);
  if (!Strong)
  {
    v31 = v4[61];
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v43, v44);
    v45 = sub_18F133EDC();
    v46 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v45);
    OUTLINED_FUNCTION_9_61(v46, v47);
    swift_willThrow();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_47_22();
  v4[2] = v37;
  OUTLINED_FUNCTION_39_26((v4 + 39));
  v38 = OUTLINED_FUNCTION_36_31();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9308, &qword_18F565310);
  OUTLINED_FUNCTION_5_82(v39);
  OUTLINED_FUNCTION_4_82(COERCE_DOUBLE(1107296256));
  v4[12] = v40;
  v4[13] = &block_descriptor_33_0;
  v4[14] = v38;
  [Strong requestChoice:v31 completionHandler:v4 + 10];
  OUTLINED_FUNCTION_28_2();

  MEMORY[0x1EEE6DEC8](v41);
}

uint64_t sub_18F415F20()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 512) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_18F41601C()
{
  v1 = v0[61];
  swift_unknownObjectRelease();

  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
LABEL_7:
    swift_unknownObjectRelease();
    v17 = v0[61];
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v18, v19);
    v20 = sub_18F133EDC();
    v21 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v20);
    OUTLINED_FUNCTION_9_61(v21, v22);
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  v3 = v2;
  v4 = 0;
  v5 = v0[49];
  v6 = v0[50];
  while (1)
  {
    if (v4 == v0[60])
    {
      goto LABEL_7;
    }

    sub_18F419AD4(v0[42] + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, v0[51]);
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    sub_18F520AAC();
    sub_18F0F21A8(0, &qword_1ED6FEEC0, 0x1E696B100);
    if (!swift_dynamicCast())
    {
      break;
    }

    v7 = v0[57];
    v8 = v0[51];
    sub_18F0F21A8(0, &qword_1EACCE798, 0x1E69E58C0);
    v9 = v0[40];
    v10 = [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

    v11 = *(v8 + *(v5 + 20));
    v12 = objc_allocWithZone(MEMORY[0x1E69ACDE8]);
    v13 = sub_18F418E78(v7, v10, v11);
    v14 = [v3 selectedOption];
    LOBYTE(v7) = sub_18F52243C();

    if (v7)
    {
      v25 = v0[62];
      v26 = v0[52];
      v27 = v0[45];
      v28 = v0[41];
      sub_18F419B38(v0[51], v26, type metadata accessor for IntentChoiceOption);
      sub_18F419B38(v26, v28, type metadata accessor for IntentChoiceOption);
      static IntentContext.current.getter(v27);
      if (v25)
      {
        v29 = v0[45];

        OUTLINED_FUNCTION_27_42();
        sub_18F0EF1A8(v29, qword_1EACD2898, &qword_18F5492F0);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v0[45], 0, 1, v0[46]);
        OUTLINED_FUNCTION_1_112();
        v30 = OUTLINED_FUNCTION_56();
        sub_18F419B38(v30, v31, v32);
        v33 = [v3 context];
        if (v33)
        {
          v33 = sub_18F419810(v33);
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        v36 = v0[47];
        sub_18F21974C(v33, v35);

        OUTLINED_FUNCTION_0_133();
        sub_18F419B94(v36, v37);
      }

      v38 = v0[41];
      v39 = v0[61];
      if (*(v38 + *(v5 + 20)) == 1)
      {
        v40 = sub_18F5218DC();
        v42 = v41;
        v43 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        sub_18F322C68(v40, v42, 3072, 0);
        swift_willThrow();

        swift_unknownObjectRelease_n();
        OUTLINED_FUNCTION_13_53();
        sub_18F419B94(v38, v44);
LABEL_8:
        OUTLINED_FUNCTION_26_45();

        OUTLINED_FUNCTION_71();
      }

      else
      {
        swift_unknownObjectRelease_n();

        OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_68_1();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_13_53();
    sub_18F419B94(v15, v16);
    ++v4;
  }

  OUTLINED_FUNCTION_66_16();
  OUTLINED_FUNCTION_0_79();
  OUTLINED_FUNCTION_68_1();
}

uint64_t sub_18F4164F0(uint64_t a1)
{
  v2 = *(v1 + 488);
  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_26_45();

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F4165E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F4165F8()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = v2;
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v6;
  *v6 = v7;
  v6[1] = sub_18F4166C0;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  return sub_18F412F24(v10, 0xD000000000000018, 0x800000018F52BF20, v8, v11, v9);
}

uint64_t sub_18F4166C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F4167A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[48] = a3;
  v4[49] = a4;
  v4[46] = a1;
  v4[47] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v4[50] = swift_task_alloc();
  v4[51] = type metadata accessor for IntentContext(0);
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  sub_18F520E6C();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F4168B4, 0, 0);
}

uint64_t sub_18F4168B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[49];
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v6 = v4[49];
  if (v5)
  {
    v7 = v4[49];
  }

  else
  {
    _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
    v8 = objc_allocWithZone(MEMORY[0x1E69ACD48]);
    OUTLINED_FUNCTION_13_0();
    v7 = sub_18F316A78(v9, v10, v11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0);
  }

  v12 = v4[55];
  v13 = v4[53];
  v14 = v4[47];
  v15 = v4[48];
  v16 = objc_allocWithZone(MEMORY[0x1E69AD038]);
  v17 = v6;
  v18 = v15;
  v19 = sub_18F25512C(v18, v7, 0, MEMORY[0x1E69E7CC0]);
  objc_allocWithZone(MEMORY[0x1E69ACD20]);
  v20 = v14;
  v21 = sub_18F41939C(v12, v14, v19);
  v4[56] = v21;
  OUTLINED_FUNCTION_78_13();
  v4[57] = v13;
  if (v13)
  {
LABEL_5:

    OUTLINED_FUNCTION_27_4();

    return v22();
  }

  v24 = v4[53];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4[58] = Strong;
  OUTLINED_FUNCTION_0_133();
  sub_18F419B94(v24, v26);
  if (!Strong)
  {
    v21 = v4[56];
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v32, v33);
    v34 = sub_18F133EDC();
    v35 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v34);
    OUTLINED_FUNCTION_9_61(v35, v36);
    swift_willThrow();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_47_22();
  v4[2] = v27;
  OUTLINED_FUNCTION_39_26((v4 + 45));
  v28 = OUTLINED_FUNCTION_36_31();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9308, &qword_18F565310);
  OUTLINED_FUNCTION_5_82(v29);
  OUTLINED_FUNCTION_4_82(COERCE_DOUBLE(1107296256));
  v4[12] = v30;
  v4[13] = &block_descriptor_24;
  v4[14] = v28;
  v31 = v21;
  OUTLINED_FUNCTION_64_12(v31, sel_requestActionConfirmation_completionHandler_, v31);

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_18F416B68()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 472) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_18F416C64()
{
  v2 = *(v0 + 448);
  swift_unknownObjectRelease();

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v7 = *(v0 + 448);
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v8, v9);
    v10 = sub_18F133EDC();
    v11 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v10);
    OUTLINED_FUNCTION_9_61(v11, v12);
    swift_willThrow();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_71();
LABEL_36:

    v13();
    return;
  }

  v4 = v3;
  v5 = *(v0 + 456);
  static IntentContext.current.getter(*(v0 + 400));
  if (v5)
  {
    v6 = *(v0 + 400);

    OUTLINED_FUNCTION_27_42();
    sub_18F0EF1A8(v6, qword_1EACD2898, &qword_18F5492F0);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 400), 0, 1, *(v0 + 408));
    OUTLINED_FUNCTION_1_112();
    v14 = OUTLINED_FUNCTION_56();
    sub_18F419B38(v14, v15, v16);
    v17 = [v4 context];
    if (v17)
    {
      v17 = sub_18F419810(v17);
    }

    v18 = *(v0 + 416);
    OUTLINED_FUNCTION_48_23(v17);

    OUTLINED_FUNCTION_0_133();
    sub_18F419B94(v18, v19);
  }

  v20 = sub_18F4199C4(v4);
  if (!v20)
  {
    v59 = [v4 value];
    v60 = *(v0 + 448);
    v61 = *(v0 + 368);
    if (v59)
    {
      v62 = v59;
      LNValue.asPropertyType.getter();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      *(v61 + 32) = 0;
      *v61 = 0u;
      *(v61 + 16) = 0u;
    }

    v20 = 0;
LABEL_35:
    *(*(v0 + 368) + 40) = v20 != 0;

    OUTLINED_FUNCTION_6();
    goto LABEL_36;
  }

  v63 = v0 + 280;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490, &qword_18F543C50);
  v21 = sub_18F5216CC();
  v22 = v20 + 64;
  OUTLINED_FUNCTION_14_51();
  OUTLINED_FUNCTION_54_19();
  v24 = v23 >> 6;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v25 = 0;
  v65 = v20 + 64;
  v66 = v20;
  v64 = v24;
  if (v1)
  {
    goto LABEL_14;
  }

LABEL_10:
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v58 = *(v0 + 368);

      swift_unknownObjectRelease();

      *v58 = v21;
      goto LABEL_35;
    }

    v1 = *(v22 + 8 * v26);
    ++v25;
    if (v1)
    {
      v25 = v26;
      while (1)
      {
LABEL_14:
        OUTLINED_FUNCTION_51_17();
        v27 = *(v20 + 56);
        v29 = (*(v20 + 48) + 16 * v28);
        v31 = *v29;
        v30 = v29[1];
        v32 = *(v27 + 8 * v28);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v33 = v32;
        LNValue.asPropertyType.getter();
        if (!*(v0 + 264))
        {
          sub_18F0EF1A8(v0 + 240, &qword_1EACD0620, &unk_18F541850);
          v49 = OUTLINED_FUNCTION_79_8(v31);
          if (v50)
          {
            v51 = v49;
            swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
            v22 = v65;
            sub_18F5229DC();

            OUTLINED_FUNCTION_32_39();
            sub_18F0FD0B4((v52 + v51 * v53), v63);
            sub_18F5229FC();

            v54 = v0 + 280;
          }

          else
          {

            OUTLINED_FUNCTION_38_25(v63);
          }

          sub_18F0EF1A8(v54, &qword_1EACD0620, &unk_18F541850);
          v20 = v66;
          goto LABEL_28;
        }

        v67 = v33;
        sub_18F0FD0B4((v0 + 240), v0 + 320);
        swift_isUniquelyReferenced_nonNull_native();
        v34 = v31;
        v35 = v31;
        v36 = v30;
        OUTLINED_FUNCTION_79_8(v35);
        OUTLINED_FUNCTION_33_30();
        if (v39)
        {
          goto LABEL_43;
        }

        v40 = v37;
        v41 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD4728, &qword_18F550900);
        if (sub_18F5229DC())
        {
          v42 = sub_18F0F713C(v34, v36);
          v22 = v65;
          if ((v41 & 1) != (v43 & 1))
          {

            sub_18F522E2C();
            return;
          }

          v40 = v42;
          if ((v41 & 1) == 0)
          {
LABEL_19:
            OUTLINED_FUNCTION_15_48();
            *v44 = v34;
            v44[1] = v36;
            OUTLINED_FUNCTION_32_39();
            sub_18F0FD0B4((v0 + 320), v45 + v40 * v46);

            v47 = *(v21 + 16);
            v39 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v39)
            {
              goto LABEL_44;
            }

            *(v21 + 16) = v48;
            goto LABEL_25;
          }
        }

        else
        {
          v22 = v65;
          if ((v41 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_32_39();
        v57 = (v55 + v40 * v56);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        sub_18F0FD0B4((v0 + 320), v57);

LABEL_25:
        v20 = v66;
        v24 = v64;
LABEL_28:
        v1 &= v1 - 1;
        if (!v1)
        {
          goto LABEL_10;
        }
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_18F417234()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 448);
  swift_willThrow();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F4172DC()
{
  OUTLINED_FUNCTION_69();
  type metadata accessor for IntentContext(0);
  *(v0 + 152) = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_18F417360()
{
  OUTLINED_FUNCTION_31();
  static IntentContext.current.getter(v0[19]);
  v8 = v0[19];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  OUTLINED_FUNCTION_0_133();
  sub_18F419B94(v8, v10);
  if (Strong)
  {
    v0[2] = v0;
    OUTLINED_FUNCTION_39_26((v0 + 18));
    v0[3] = sub_18F417580;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9310, &qword_18F565338);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18F417784;
    v0[13] = &block_descriptor_17_0;
    v0[14] = v11;
    [Strong requestViewSnippetEnvironmentWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1ED6FEFE8 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
    }

    v1 = sub_18F52165C();
    __swift_project_value_buffer(v1, qword_1ED7077A8);
    v2 = sub_18F52163C();
    v3 = sub_18F5221FC();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v4, v5, "Unable to request snippet size. Using the default size instead.");
      OUTLINED_FUNCTION_32();
    }

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_18F417580()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F417650()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1ED6FEFE8);
  }

  v4 = sub_18F52165C();
  __swift_project_value_buffer(v4, qword_1ED7077A8);
  v5 = sub_18F52163C();
  v6 = sub_18F5221FC();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_42(&dword_18F0E9000, v7, v8, "Unable to request snippet size. Using the default size instead.");
    OUTLINED_FUNCTION_32();
  }

  v3 = 0;
LABEL_10:

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_18F417784(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  swift_unknownObjectRetain();

  return sub_18F4177D4(v3, a2);
}

uint64_t sub_18F4177F4(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a4;
  *(v8 + 72) = a6;
  *(v8 + 121) = a3;
  *(v8 + 120) = a2;
  v9 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 56) = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F417824()
{
  OUTLINED_FUNCTION_20_2();
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0 + 88);
  v13 = *(v0 + 72);
  v2 = *(v0 + 121);
  v3 = *(v0 + 120);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  *(v6 + 25) = v2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v0 + 16;
  *(v6 + 48) = v13;
  *(v6 + 64) = v1;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_18F417928;
  OUTLINED_FUNCTION_46_23();
  OUTLINED_FUNCTION_176();

  return sub_18F412C94(v8, v9, v10, v11);
}

uint64_t sub_18F417928()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F417A28()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F417A84(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 320) = a8;
  *(v8 + 328) = v12;
  *(v8 + 304) = a6;
  *(v8 + 312) = a7;
  *(v8 + 186) = a4;
  *(v8 + 185) = a3;
  *(v8 + 288) = a2;
  *(v8 + 296) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = type metadata accessor for IntentContext(0);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v9 = sub_18F520E6C();
  *(v8 + 368) = v9;
  *(v8 + 376) = *(v9 - 8);
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F417BD0, 0, 0);
}

uint64_t sub_18F417BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  v5 = sub_18F412488();
  v6 = *(v4 + 384);
  v7 = v5;
  v8 = *(v4 + 320);
  v37 = *(v4 + 328);
  v9 = *(v4 + 304);
  v41 = *(v4 + 312);
  v42 = *(v4 + 360);
  v40 = *(v4 + 296);
  v38 = *(v4 + 185);
  v39 = *(v4 + 186);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  v12 = *(v9 + 32);
  v13 = objc_allocWithZone(MEMORY[0x1E69ACE90]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v14 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v15 = sub_18F418F20(v14, v10, v11, v12);
  v16 = *(v37 + 16) != 0;
  objc_allocWithZone(MEMORY[0x1E69ACE88]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v17 = sub_18F419448(v6, v7, v38, v39, v40, v15, v41, v8, v16);
  *(v4 + 392) = v17;
  static IntentContext.current.getter(v42);
  *(v4 + 400) = 0;
  v20 = *(v4 + 360);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 408) = Strong;
  OUTLINED_FUNCTION_0_133();
  sub_18F419B94(v20, v22);
  if (!Strong)
  {
    v30 = *(v4 + 392);
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v31, v32);
    v33 = sub_18F133EDC();
    v34 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v33);
    OUTLINED_FUNCTION_9_61(v34, v35);
    swift_willThrow();

    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_68_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_47_22();
  *(v4 + 16) = v23;
  OUTLINED_FUNCTION_39_26(v4 + 280);
  v24 = OUTLINED_FUNCTION_36_31();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9308, &qword_18F565310);
  OUTLINED_FUNCTION_5_82(v25);
  OUTLINED_FUNCTION_4_82(COERCE_DOUBLE(1107296256));
  *(v4 + 96) = v26;
  *(v4 + 104) = &block_descriptor_12_2;
  *(v4 + 112) = v24;
  v27 = v17;
  OUTLINED_FUNCTION_64_12(v27, sel_requestContinueInApp_completionHandler_, v27);
  OUTLINED_FUNCTION_68_1();

  return MEMORY[0x1EEE6DEC8](v28);
}

uint64_t sub_18F417E84()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F417F80()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 392);
  *(v0 + 424) = *(v0 + 280);
  swift_unknownObjectRelease();

  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 400);
    static IntentContext.current.getter(*(v0 + 336));
    if (v4)
    {
      v5 = *(v0 + 336);

      OUTLINED_FUNCTION_27_42();
      sub_18F0EF1A8(v5, qword_1EACD2898, &qword_18F5492F0);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(*(v0 + 336), 0, 1, *(v0 + 344));
      OUTLINED_FUNCTION_1_112();
      v12 = OUTLINED_FUNCTION_53();
      sub_18F419B38(v12, v13, v14);
      v15 = [v3 context];
      if (v15)
      {
        v15 = sub_18F419810(v15);
      }

      v16 = *(v0 + 352);
      OUTLINED_FUNCTION_48_23(v15);

      OUTLINED_FUNCTION_0_133();
      sub_18F419B94(v16, v17);
    }

    v18 = *(v0 + 304);
    v19 = *(v18 + 32);
    v20 = *(v18 + 16);
    *(v0 + 240) = *v18;
    *(v0 + 256) = v20;
    *(v0 + 272) = v19;
    v21 = swift_task_alloc();
    *(v0 + 432) = v21;
    *v21 = v0;
    v21[1] = sub_18F4181E0;

    return SceneActionsProvider.completed()();
  }

  else
  {
    swift_unknownObjectRelease();
    *(v0 + 144) = 4;
    v6 = *(v0 + 392);
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 7;
    sub_18F412588(v0 + 144, v0 + 192);
    v7 = sub_18F133EDC();
    v8 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v7);
    OUTLINED_FUNCTION_9_61(v8, v9);
    swift_willThrow();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_27_4();

    return v10();
  }
}

uint64_t sub_18F4181E0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F4182E0()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 392);
  swift_unknownObjectRelease_n();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F418374()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 392);
  swift_willThrow();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F41841C()
{
  OUTLINED_FUNCTION_21();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F4184C8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_18F41859C;
  OUTLINED_FUNCTION_46_23();

  return sub_18F412C94(v4, v5, v6, v7);
}

uint64_t sub_18F41859C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F41869C(uint64_t a1, uint64_t a2)
{
  v2[31] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898, &qword_18F5492F0);
  v2[32] = swift_task_alloc();
  v2[33] = type metadata accessor for IntentContext(0);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v3 = sub_18F520C8C();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  sub_18F520E6C();
  v2[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F4187FC, 0, 0);
}

uint64_t sub_18F4187FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[38];
  v6 = v4[36];
  v7 = v4[37];
  v8 = v4[35];
  v9 = v4[31];
  _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
  (*(v7 + 16))(v5, v9, v6);
  v10 = objc_allocWithZone(MEMORY[0x1E69ACF80]);
  v11 = OUTLINED_FUNCTION_43_20();
  v12 = sub_18F41955C(v11, v5);
  v4[40] = v12;
  static IntentContext.current.getter(v8);
  v4[41] = 0;
  v15 = v4[35];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4[42] = Strong;
  OUTLINED_FUNCTION_0_133();
  sub_18F419B94(v15, v17);
  if (Strong)
  {
    OUTLINED_FUNCTION_47_22();
    v4[2] = v18;
    OUTLINED_FUNCTION_39_26((v4 + 30));
    v19 = OUTLINED_FUNCTION_36_31();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9308, &qword_18F565310);
    OUTLINED_FUNCTION_5_82(v20);
    OUTLINED_FUNCTION_4_82(COERCE_DOUBLE(1107296256));
    v4[12] = v21;
    v4[13] = &block_descriptor_17;
    v4[14] = v19;
    v22 = v12;
    OUTLINED_FUNCTION_64_12(v22, sel_requestOpenURL_completionHandler_, v22);

    return MEMORY[0x1EEE6DEC8](v15);
  }

  else
  {
    v23 = v4[40];
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v24, v25);
    v26 = sub_18F133EDC();
    v27 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v26);
    OUTLINED_FUNCTION_9_61(v27, v28);
    swift_willThrow();

    OUTLINED_FUNCTION_27_4();

    return v13();
  }
}

uint64_t sub_18F418A1C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F418B18()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = v0[40];
  swift_unknownObjectRelease();

  swift_unknownObjectRetain();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0[41];
    static IntentContext.current.getter(v0[32]);
    if (v4)
    {
      v5 = v0[40];
      v6 = v0[32];

      swift_unknownObjectRelease_n();
      OUTLINED_FUNCTION_6_0(v6);
      sub_18F0EF1A8(v6, qword_1EACD2898, &qword_18F5492F0);
    }

    else
    {
      v13 = v0[34];
      v14 = v0[32];
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v0[33]);
      OUTLINED_FUNCTION_1_112();
      sub_18F419B38(v14, v13, v15);
      v16 = [v3 context];
      if (v16)
      {
        sub_18F419810(v16);
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v0[40];
      v20 = v0[34];
      OUTLINED_FUNCTION_68_16();
      sub_18F21974C(v21, v18);

      swift_unknownObjectRelease_n();

      OUTLINED_FUNCTION_0_133();
      sub_18F419B94(v20, v22);
    }

    OUTLINED_FUNCTION_6();
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = v0[40];
    OUTLINED_FUNCTION_3_85();
    sub_18F412588(v8, v9);
    v10 = sub_18F133EDC();
    v11 = OUTLINED_FUNCTION_28(&type metadata for PerformIntentError, v10);
    OUTLINED_FUNCTION_9_61(v11, v12);
    swift_willThrow();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_71();
  }

  OUTLINED_FUNCTION_31_9();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_18F418D3C()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 320);
  swift_willThrow();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_31_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F418DE4()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_6(v4);
  *v5 = v6;
  v5[1] = sub_18F0FC870;

  return sub_18F41869C(v2, v3);
}

id sub_18F418E78(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_18F520E2C();
  v9 = [v4 initWithIdentifier:v8 title:a2 style:a3];

  v10 = sub_18F520E6C();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

id sub_18F418F20(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_18F0F21A8(0, &qword_1EACCDCE8, 0x1E698E5F0);
  v7 = sub_18F521C8C();

  if (a4)
  {
    v8 = sub_18F5218AC();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithActions:v7 supportsNotices:a2 & 1 targetContentIdentifier:v8];

  return v9;
}

id sub_18F418FDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v10 = sub_18F520E2C();
  v11 = sub_18F5218AC();

  v12 = [v6 initWithIdentifier:v10 parameterName:v11 dialog:a4 viewSnippet:a5];

  v13 = sub_18F520E6C();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_18F4190B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = sub_18F520E2C();
  v10 = sub_18F5218AC();

  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  v11 = sub_18F521C8C();

  v12 = [v6 initWithIdentifier:v9 parameterName:v10 providedValues:v11 dialog:a5];

  v13 = sub_18F520E6C();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_18F4191C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v12 = sub_18F520E2C();
  v13 = sub_18F5218AC();

  v14 = [v7 initWithIdentifier:v12 parameterName:v13 value:a4 dialog:a5 viewSnippet:a6];

  v15 = sub_18F520E6C();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id sub_18F4192AC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v9 = sub_18F520E2C();
  sub_18F0F21A8(0, &qword_1EACD9318, 0x1E69ACDE8);
  v10 = sub_18F521C8C();

  v11 = [v5 initWithIdentifier:v9 options:v10 dialog:a3 viewSnippet:a4];

  v12 = sub_18F520E6C();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

id sub_18F41939C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_18F520E2C();
  v9 = [v4 initWithIdentifier:v8 systemStyle:a2 result:a3];

  v10 = sub_18F520E6C();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

id sub_18F419448(uint64_t a1, void *a2, char a3, char a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v17 = sub_18F520E2C();
  if (a8)
  {
    v18 = sub_18F5218AC();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v10 initWithIdentifier:v17 dialog:a2 throwing:a3 & 1 requestConfirmation:a4 & 1 type:a5 sceneOptions:a6 bundleIdentifier:v18 options:a9];

  v20 = sub_18F520E6C();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v19;
}

id sub_18F41955C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18F520E2C();
  v7 = sub_18F520BEC();
  v8 = [v3 initWithIdentifier:v6 url:v7];

  v9 = sub_18F520C8C();
  (*(*(v9 - 8) + 8))(a2, v9);
  v10 = sub_18F520E6C();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v8;
}

unint64_t sub_18F419644(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6110, &unk_18F556E98);
  v2 = sub_18F522AEC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_18F116970(v6, &v15, &qword_1EACD9328, &qword_18F565398);
    v7 = v15;
    v8 = v16;
    result = sub_18F419798(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_18F118710(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_18F419798(uint64_t a1, uint64_t a2)
{
  sub_18F522EFC();
  sub_18F5219CC();
  v4 = sub_18F522F4C();

  return sub_18F0F7418(a1, a2, v4);
}

uint64_t sub_18F419810(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F4198DC()
{
  OUTLINED_FUNCTION_24_4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  *v11 = v12;
  v11[1] = sub_18F0FC874;

  return sub_18F417A84(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F4199C4(void *a1)
{
  v1 = [a1 updates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_18F0F21A8(0, &unk_1ED6FE390, 0x1E69ACA88);
  v3 = sub_18F5216BC();

  return v3;
}

uint64_t sub_18F419A44()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_6(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_47(v2);

  return sub_18F4158BC(v4, v5, v6, v0);
}

uint64_t sub_18F419AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentChoiceOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F419B38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F419B94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F419BEC()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_47(v1);
  OUTLINED_FUNCTION_31_9();

  return sub_18F414ACC(v3, v4, v5, v6, v7);
}

unint64_t sub_18F419C88()
{
  result = qword_1EACD9320;
  if (!qword_1EACD9320)
  {
    sub_18F52060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD9320);
  }

  return result;
}

uint64_t sub_18F419CE0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_6(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_47(v2);

  return sub_18F41367C(v4, v5, v6, v0);
}

uint64_t sub_18F419D70()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_6(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_47(v2);

  return sub_18F411634(v4, v5, v6, v0);
}

void sub_18F419E50()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_18F5218AC();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_18F419F04()
{
  v0 = sub_18F520B3C();
  __swift_allocate_value_buffer(v0, qword_1EACD9330);
  __swift_project_value_buffer(v0, qword_1EACD9330);
  return sub_18F520ACC();
}

uint64_t sub_18F419F58()
{
  if (qword_1EACCF5E8 != -1)
  {
    OUTLINED_FUNCTION_0_134(&qword_1EACCF5E8);
  }

  v0 = sub_18F520B3C();

  return __swift_project_value_buffer(v0, qword_1EACD9330);
}

uint64_t static EmptySnippetIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EACCF5E8 != -1)
  {
    OUTLINED_FUNCTION_0_134(&qword_1EACCF5E8);
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1EACD9330);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EmptySnippetIntent.title.setter(uint64_t a1)
{
  if (qword_1EACCF5E8 != -1)
  {
    OUTLINED_FUNCTION_0_134(&qword_1EACCF5E8);
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1EACD9330);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EmptySnippetIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EACCF5E8 != -1)
  {
    OUTLINED_FUNCTION_0_134(&qword_1EACCF5E8);
  }

  v1 = sub_18F520B3C();
  __swift_project_value_buffer(v1, qword_1EACD9330);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_18F41A1C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18F419F58();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18F41A240(uint64_t a1)
{
  v2 = sub_18F419F58();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

void sub_18F41A3F4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_1EACD9348 = v1;
}

unint64_t sub_18F41A4E4(uint64_t a1)
{
  result = sub_18F41A50C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F41A50C()
{
  result = qword_1EACD9350;
  if (!qword_1EACD9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD9350);
  }

  return result;
}

unint64_t sub_18F41A57C(uint64_t a1)
{
  result = sub_18F41A5A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F41A5A4()
{
  result = qword_1EACD9358;
  if (!qword_1EACD9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD9358);
  }

  return result;
}

uint64_t sub_18F41A684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F10DF80;

  return EmptySnippetIntent.perform()();
}

_BYTE *storeEnumTagSinglePayload for EmptySnippetIntent(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F41A7BC()
{
  result = qword_1EACD9360;
  if (!qword_1EACD9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD9360);
  }

  return result;
}

void IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v60 = v26;
  v28 = v27;
  v58 = v29;
  v63 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v32 = OUTLINED_FUNCTION_10(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3();
  v61 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v57 - v35;
  v62 = v21;
  v37 = *(v21 + 80);
  v38 = *(v21 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v40, &a18);
  v59 = v41;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_22_13();
  v57[0] = v20;
  v43 = sub_18F520B3C();
  v44 = OUTLINED_FUNCTION_10(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_104_10();
  v45();
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_104();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  sub_18F120FCC(v37, v46, v37, v25, v38);
  sub_18F116908(v28, v36, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_93();
  sub_18F116908(v47, v48, v49, &unk_18F53E6F0);
  OUTLINED_FUNCTION_66_17();
  sub_18F12310C(v25, v50);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();
  OUTLINED_FUNCTION_241();
  sub_18F0EF148(v51, v52, v53);
  OUTLINED_FUNCTION_241();
  sub_18F0EF148(v54, v55, v56);
  (*(v59 + 8))(v58, v57[1]);
  sub_18F0EF148(v63, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v62 = v26;
  v57[1] = v27;
  v63 = v28;
  v65 = v29;
  v60 = v30;
  OUTLINED_FUNCTION_59_12(v31, v32, &a15);
  v33 = a22;
  v61 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v35 = OUTLINED_FUNCTION_10(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3();
  v64 = v36;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v57 - v38;
  v66 = v22;
  v40 = *(v22 + 80);
  v41 = *(v22 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v43, &a14);
  v59 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_26_10();
  v58 = v23;
  v46 = sub_18F520B3C();
  v47 = OUTLINED_FUNCTION_10(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_93();
  v48();
  OUTLINED_FUNCTION_22_0(&a18);
  v63();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_26_19();
  sub_18F120FCC(v40, v49, v40, v33, v41);
  v50 = OUTLINED_FUNCTION_80_9();
  sub_18F116908(v50, v39, &qword_1EACCF7A0, &unk_18F53E6F0);
  v51 = v65;
  sub_18F116908(v65, v64, &qword_1EACCF7A0, &unk_18F53E6F0);
  sub_18F12310C(v33, v68);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  sub_18F0EF148(v51, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v52, v53, v54);
  OUTLINED_FUNCTION_23_1();
  v55 = OUTLINED_FUNCTION_122_6();
  v56(v55);
  sub_18F0EF148(v67, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A>(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v66 = v29;
  v67 = v28;
  v31 = v30;
  v68 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_59_12(v35, v33, &a16);
  v65 = a21;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v64 - v39;
  v64[1] = v64 - v39;
  v41 = v22;
  v69 = v22;
  v42 = *(v22 + 88);
  v43 = *(v41 + 80);
  OUTLINED_FUNCTION_70();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_91_10();
  OUTLINED_FUNCTION_2_2(v45, &a15);
  v64[4] = v46;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_34_1();
  v48 = sub_18F520B3C();
  v49 = OUTLINED_FUNCTION_10(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_19_21();
  v50(v23, v34, v21);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_70();
  swift_getAssociatedTypeWitness();
  v51 = OUTLINED_FUNCTION_47_23();
  v52 = v66;
  sub_18F12A88C(v51, v31, v53, v43, v66, v65, v42, v27);
  sub_18F116908(v67, v40, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_107_7();
  OUTLINED_FUNCTION_93();
  sub_18F116908(v54, v55, v56, &unk_18F53E6F0);
  v71[3] = v52;
  v71[4] = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  v58 = *(v52 - 8);
  (*(v58 + 16))(boxed_opaque_existential_1, v31, v52);
  OUTLINED_FUNCTION_4_0();
  sub_18F116B3C();
  (*(v58 + 8))(v31, v52);
  sub_18F0EF148(v40, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v59, v60, v61);
  v62 = OUTLINED_FUNCTION_12_62();
  v63(v62);
  sub_18F0EF148(v70, &qword_1EACCF7A8, &qword_18F540440);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void IntentParameter<>.init<A, B>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:resolvers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_18();
  a19 = v27;
  a20 = v28;
  v66 = v29;
  v68 = v31;
  v69 = v30;
  v70 = v32;
  v34 = v33;
  v67 = a26;
  v65 = a25;
  v35 = a23;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0, &unk_18F53E6F0);
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_68(v39);
  v40 = *(v26 + 80);
  v41 = *(v26 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_1(AssociatedTypeWitness);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_2_2(v43, &a10);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_67();
  sub_18F520B3C();
  OUTLINED_FUNCTION_31_2();
  v46 = OUTLINED_FUNCTION_2_2(v45, &a15);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33();
  v47 = OUTLINED_FUNCTION_83_9();
  v48(v47, v34);
  OUTLINED_FUNCTION_88_12();
  v49();
  OUTLINED_FUNCTION_22_0(&v72);
  v66();
  swift_getAssociatedTypeWitness();
  v50 = OUTLINED_FUNCTION_47_23();
  sub_18F12A88C(v50, v68, v51, v40, v35, v67, v41, v65);
  sub_18F116908(v69, v64, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_117_7();
  OUTLINED_FUNCTION_25_1();
  sub_18F116908(v52, v53, v54, &unk_18F53E6F0);
  v71[3] = v35;
  v71[4] = v65;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  v56 = *(v35 - 8);
  (*(v56 + 16))(boxed_opaque_existential_1, v68, v35);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20_6();
  sub_18F116B3C();

  (*(v56 + 8))(v68, v35);
  sub_18F0EF148(v41, &qword_1EACCF7A0, &unk_18F53E6F0);
  OUTLINED_FUNCTION_26_1();
  sub_18F0EF148(v57, v58, v59);
  OUTLINED_FUNCTION_23_1();
  v60 = OUTLINED_FUNCTION_102_10();
  v61(v60);
  sub_18F0EF148(v70, &qword_1EACCF7A8, &qword_18F540440);
  v62 = OUTLINED_FUNCTION_12_62();
  v63(v62);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}