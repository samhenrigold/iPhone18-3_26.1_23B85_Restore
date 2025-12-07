void sub_24E2A01D8(uint64_t a1)
{
  sub_24DF9D480(v1, &v15);
  v2 = v16;
  switch(v20)
  {
    case 1:
      v3 = 1;
      goto LABEL_16;
    case 2:
      v4 = *&v17;
      MEMORY[0x25303F880](2);
      OUTLINED_FUNCTION_2_117();

      sub_24E348638();
      v5 = 0.0;
      if (v4 != 0.0)
      {
        v5 = v4;
      }

      MEMORY[0x25303F8B0](*&v5);

      return;
    case 3:
      v3 = 6;
      goto LABEL_16;
    case 4:
      v3 = 7;
      goto LABEL_16;
    case 5:
      v3 = 8;
LABEL_16:
      MEMORY[0x25303F880](v3);
      if (!v2)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_4_97();
      OUTLINED_FUNCTION_2_117();

      return;
    case 6:
      v13[0] = v16;
      v13[1] = v17;
      v13[2] = v18;
      v14 = v19;
      MEMORY[0x25303F880](9);
      sub_24E348D38();
      sub_24E012B70(v13, v11);
      if (*&v11[0])
      {
        v9[0] = v11[0];
        v9[1] = v11[1];
        v9[2] = v11[2];
        v10 = v12;
        OUTLINED_FUNCTION_4_97();
        sub_24E348908();
        sub_24E012CA4(v9);
      }

      else
      {
        sub_24E348D38();
      }

      sub_24DF8C95C(v13, &qword_27F1E0AF8, qword_24E36EDF8);
      return;
    case 7:
      v6 = *(&v18 + 1) | v18 | *(&v17 + 1);
      if (*(&v16 + 1) | v16 | v15 | v19 | v6 | v17)
      {
        if (v15 != 1 || *(&v16 + 1) | v16 | v19 | v6 | v17)
        {
          v7 = 5;
        }

        else
        {
          v7 = 4;
        }
      }

      else
      {
        v7 = 3;
      }

      MEMORY[0x25303F880](v7);
      return;
    default:
      MEMORY[0x25303F880](0);
      if (v2)
      {
        OUTLINED_FUNCTION_4_97();
        OUTLINED_FUNCTION_2_117();

        if (!*(&v2 + 1))
        {
          goto LABEL_23;
        }

LABEL_22:
        OUTLINED_FUNCTION_4_97();
        v8 = *(&v2 + 1);
        sub_24E348638();

        return;
      }

      sub_24E348D38();
      if (*(&v2 + 1))
      {
        goto LABEL_22;
      }

LABEL_23:
      sub_24E348D38();
      return;
  }
}

uint64_t sub_24E2A0450()
{
  sub_24E348D18();
  sub_24E2A01D8(v1);
  return sub_24E348D68();
}

uint64_t sub_24E2A049C(uint64_t a1)
{
  sub_24E348D18();
  sub_24E348908();
  return sub_24E348D68();
}

uint64_t sub_24E2A04E8(uint64_t a1)
{
  sub_24E348D18();
  sub_24E2A01D8(v2);
  return sub_24E348D68();
}

unint64_t sub_24E2A0528()
{
  result = qword_27F1E9AD8;
  if (!qword_27F1E9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9AD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_135(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return sub_24DF9D480(v22 - 208, va);
}

uint64_t OUTLINED_FUNCTION_2_117()
{

  return sub_24E347DC8();
}

uint64_t OUTLINED_FUNCTION_4_97()
{

  return sub_24E348D38();
}

uint64_t type metadata accessor for DashboardSidebarItemData(uint64_t a1)
{
  result = qword_27F1E9AF0;
  if (!qword_27F1E9AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2A0648(uint64_t a1)
{
  sub_24DF9E030(319, &qword_280BE0128, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24DF9E07C(319);
    if (v2 <= 0x3F)
    {
      sub_24DF9E030(319, &qword_27F1E3970, &type metadata for Highlight);
      if (v3 <= 0x3F)
      {
        sub_24DF9E0E0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI11SidebarItemO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_24E2A0750(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 9))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E2A0790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_24E2A07D4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

BOOL sub_24E2A08FC(void *a1, char a2, void *a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      goto LABEL_17;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      goto LABEL_17;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

LABEL_17:
      sub_24DF88A8C(0, &qword_27F1E2630, 0x277D82BB8);
      return sub_24E348628() & 1;
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

      if (!a1)
      {
        return !a3;
      }

      if (!a3)
      {
        return 0;
      }

      sub_24DF88A8C(0, &qword_27F1DF108, 0x277D0C068);
      sub_24DF959BC(a3, 4u);
      sub_24DF959BC(a1, 4u);
      v6 = sub_24E348628();
      sub_24DF959D0(a1, 4u);
      v7 = a3;
      v8 = 4;
      goto LABEL_10;
    case 5:
      return a4 == 5 && a3 == 0;
    default:
      if (a4)
      {
        return 0;
      }

      if (a1)
      {
        if (!a3)
        {
          return 0;
        }

        sub_24DF88A8C(0, &unk_27F1DFCF0, 0x277D0C048);
        sub_24DF959BC(a3, 0);
        sub_24DF959BC(a1, 0);
        v6 = sub_24E348628();
        sub_24DF959D0(a1, 0);
        v7 = a3;
        v8 = 0;
LABEL_10:
        sub_24DF959D0(v7, v8);
        return (v6 & 1) != 0;
      }

      return !a3;
  }
}

unint64_t sub_24E2A0AC8()
{
  result = qword_27F1E9B00;
  if (!qword_27F1E9B00)
  {
    type metadata accessor for DashboardSidebarItemData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9B00);
  }

  return result;
}

double sub_24E2A0B20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E369990;
  if (qword_27F1DDEF8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27F20B938;
  qword_27F20B3F8 = v0;

  return result;
}

double sub_24E2A0BC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E38ABE0;
  if (qword_27F1DDE78 != -1)
  {
    OUTLINED_FUNCTION_0_171(&qword_27F1DDE78);
  }

  *(v0 + 32) = qword_27F20B8B8;
  v1 = qword_27F1DDE80;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_7_67(&qword_27F1DDE80);
  }

  *(v0 + 40) = qword_27F20B8C0;
  v2 = qword_27F1DDE88;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_27F20B8C8;
  v3 = qword_27F1DDED8;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_5_102(&qword_27F1DDED8);
  }

  *(v0 + 56) = qword_27F20B918;
  v4 = qword_27F1DDEE0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_4_98(&qword_27F1DDEE0);
  }

  *(v0 + 64) = qword_27F20B920;
  v5 = qword_27F1DDF10;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_3_114(&qword_27F1DDF10);
  }

  *(v0 + 72) = qword_27F20B950;
  v6 = qword_27F1DDF18;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_2_118(&qword_27F1DDF18);
  }

  *(v0 + 80) = qword_27F20B958;
  v7 = qword_27F1DDEA0;

  if (v7 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_27F20B8E0;
  v8 = qword_27F1DDEB0;

  if (v8 != -1)
  {
    swift_once();
  }

  *(v0 + 96) = qword_27F20B8F0;
  v9 = qword_27F1DDEB8;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_6_91(&qword_27F1DDEB8);
  }

  *(v0 + 104) = qword_27F20B8F8;
  v10 = qword_27F1DDEF0;

  if (v10 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = qword_27F20B930;
  qword_27F20B400 = v0;

  return result;
}

double sub_24E2A0E70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E36CB10;
  if (qword_27F1DDE78 != -1)
  {
    OUTLINED_FUNCTION_0_171(&qword_27F1DDE78);
  }

  *(v0 + 32) = qword_27F20B8B8;
  v1 = qword_27F1DDE80;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_7_67(&qword_27F1DDE80);
  }

  *(v0 + 40) = qword_27F20B8C0;
  v2 = qword_27F1DDED8;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_5_102(&qword_27F1DDED8);
  }

  *(v0 + 48) = qword_27F20B918;
  v3 = qword_27F1DDEE0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_4_98(&qword_27F1DDEE0);
  }

  *(v0 + 56) = qword_27F20B920;
  v4 = qword_27F1DDF10;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_3_114(&qword_27F1DDF10);
  }

  *(v0 + 64) = qword_27F20B950;
  v5 = qword_27F1DDF18;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_2_118(&qword_27F1DDF18);
  }

  *(v0 + 72) = qword_27F20B958;
  v6 = qword_27F1DDEB8;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_6_91(&qword_27F1DDEB8);
  }

  *(v0 + 80) = qword_27F20B8F8;
  v7 = qword_27F1DDEE8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_1_136(&qword_27F1DDEE8);
  }

  *(v0 + 88) = qword_27F20B928;
  qword_27F20B408 = v0;

  return result;
}

double sub_24E2A1050()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E370DD0;
  if (qword_27F1DDE78 != -1)
  {
    OUTLINED_FUNCTION_0_171(&qword_27F1DDE78);
  }

  *(v0 + 32) = qword_27F20B8B8;
  v1 = qword_27F1DDED0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27F20B910;
  v2 = qword_27F1DDEE8;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_1_136(&qword_27F1DDEE8);
  }

  *(v0 + 48) = qword_27F20B928;
  qword_27F20B410 = v0;

  return result;
}

double sub_24E2A1150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24E36D5F0;
  if (qword_27F1DDF08 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27F20B948;
  v1 = qword_27F1DDEC0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27F20B900;
  v2 = qword_27F1DDEC8;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_27F20B908;
  v3 = qword_27F1DDF00;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_27F20B940;
  qword_27F20B418 = v0;

  return result;
}

uint64_t sub_24E2A12B0(uint64_t a1, uint64_t a2)
{
  result = sub_24E2A12D0(a1, a2);
  qword_27F20B420 = result;
  return result;
}

uint64_t sub_24E2A12D0(uint64_t a1, uint64_t a2)
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  if (ShouldUsePadUI)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24E36BFC0;
    if (qword_27F1DDE90 != -1)
    {
      swift_once();
    }

    *(v3 + 32) = qword_27F20B8D0;
    v4 = (v3 + 40);
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_24E36D5F0;
    if (qword_27F1DDEB0 != -1)
    {
      swift_once();
    }

    *(v3 + 32) = qword_27F20B8F0;
    v5 = qword_27F1DDEA8;

    if (v5 != -1)
    {
      swift_once();
    }

    *(v3 + 40) = qword_27F20B8E8;
    v6 = qword_27F1DDE98;

    if (v6 != -1)
    {
      swift_once();
    }

    *(v3 + 48) = qword_27F20B8D8;
    v4 = (v3 + 56);
  }

  v7 = qword_27F1DDEA0;

  if (v7 != -1)
  {
    swift_once();
  }

  *v4 = qword_27F20B8E0;

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_171(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_136(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_118(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_114(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_98(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_102(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_91(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_67(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_24E2A15EC(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = sub_24E2A4130(0, result, v5);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      sub_24E2A1B74(0, v7, a2, a3);
      OUTLINED_FUNCTION_4_88();

      return OUTLINED_FUNCTION_2_106();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E2A1670(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_24E2A4130(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_24E2A1C1C(0, v5, a2);
      OUTLINED_FUNCTION_4_88();

      return OUTLINED_FUNCTION_2_106();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24E2A1728(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, uint64_t), unint64_t *a5, void *a6)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v17 = sub_24E348B38();

    return v17;
  }

  v11 = a3(a2);
  v12 = sub_24E2A4130(0, a1, v11);
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14 < 0)
  {
    goto LABEL_16;
  }

  a4(0, a2);
  a4(v14, a2);
  if ((a2 & 0xC000000000000001) != 0 && v14)
  {
    sub_24DF88A8C(0, a5, a6);

    v15 = 0;
    do
    {
      v16 = v15 + 1;
      sub_24E3489E8();
      v15 = v16;
    }

    while (v14 != v16);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_24E2A1880(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a5 >> 1;
    result = sub_24E2A4130(a4, result, a5 >> 1);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = result;
    }

    if (v11 >= a4)
    {
      sub_24E2A42F0(a4, v11, a2, a3, a4, a5);
      OUTLINED_FUNCTION_4_88();
      swift_unknownObjectRelease();
      return OUTLINED_FUNCTION_2_106();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E2A1924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24E347208();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v8 = sub_24E347238();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  sub_24E3471C8();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  sub_24E347228();
  sub_24E3471C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B08, &unk_24E38AC30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24E36A270;
  *(v16 + 56) = type metadata accessor for RemoveFriendAction(0);
  *(v16 + 64) = sub_24E2A424C(&qword_27F1DFC28, type metadata accessor for RemoveFriendAction, &unk_24E377800);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  sub_24E2A4294(v3, boxed_opaque_existential_1, type metadata accessor for RemoveFriendAction);
  v18 = MEMORY[0x277D21CB8];
  *(v16 + 96) = v8;
  *(v16 + 104) = v18;
  v19 = __swift_allocate_boxed_opaque_existential_1((v16 + 72));
  (*(v10 + 16))(v19, v14, v8);
  sub_24E347268();
  return (*(v10 + 8))(v14, v8);
}

unint64_t sub_24E2A1B74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    OUTLINED_FUNCTION_4_5(v6);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_24E2A1C1C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24E2A1C88()
{
  result = swift_allocObject();
  *(result + 16) = 1033;
  return result;
}

uint64_t sub_24E2A1CB4(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v132 = v2;
  v131 = v4;
  v5 = sub_24E347478();
  v6 = OUTLINED_FUNCTION_4_5(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v110 - v12;
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v123 = v15;
  v124 = v14;
  MEMORY[0x28223BE20](v14);
  v121 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v122 = &v110 - v18;
  v19 = OUTLINED_FUNCTION_18_1();
  v20 = type metadata accessor for DetailData(v19);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_1();
  v24 = v23 - v22;
  v120 = type metadata accessor for FriendsListAction(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_1();
  v28 = v27 - v26;
  v29 = sub_24E347458();
  v30 = OUTLINED_FUNCTION_4_5(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_1();
  v125 = v32 - v31;
  OUTLINED_FUNCTION_18_1();
  sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v118 = v34;
  v119 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_1();
  v117 = v36 - v35;
  OUTLINED_FUNCTION_18_1();
  sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v127 = v38;
  v128 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_1();
  v126 = v40 - v39;
  v41 = OUTLINED_FUNCTION_18_1();
  v42 = type metadata accessor for SmallFriendLockupData(v41);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42 - 8);
  OUTLINED_FUNCTION_7_1();
  v46 = v45 - v44;
  memcpy(v140, a1, sizeof(v140));
  if (sub_24DF8BF80(v140) == 1)
  {
    return 0;
  }

  memcpy(__dst, v140, 0x90uLL);
  v47 = __dst[2];
  if (__dst[2] >> 62)
  {
    goto LABEL_35;
  }

  if (!*((__dst[2] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  while (1)
  {
    v111 = v13;
    v112 = v24;
    v48 = v47;
    sub_24DF95B98(a1, &v135, &qword_27F1DEEA0, qword_24E369EA0);

    v113 = v48;
    *&v135 = sub_24E0833B4(v49);
    v24 = 0;
    sub_24E1D4198(&v135);
    v116 = a1;
    v13 = v135;
    v50 = sub_24DFD8654();
    v114 = v28;
    v115 = v20;
    v110 = v9;
    if (!v50)
    {
      break;
    }

    v51 = v50;
    *&v135 = MEMORY[0x277D84F90];
    sub_24E12F5B8(0, v50 & ~(v50 >> 63), 0);
    if (v51 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v9 = 0;
    a1 = v135;
    v129 = v51;
    *&v130 = v13 & 0xC000000000000001;
    while (1)
    {
      v28 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v130)
      {
        v52 = MEMORY[0x25303F560](v9, v13);
      }

      else
      {
        if (v9 >= *(v13 + 16))
        {
          goto LABEL_34;
        }

        v52 = *(v13 + 8 * v9 + 32);
      }

      v53 = v52;
      v134[0] = v52;
      sub_24E2A2A60(v134, __dst, v132, v131, v46);

      *&v135 = a1;
      v20 = a1[2];
      v54 = a1[3];
      if (v20 >= v54 >> 1)
      {
        sub_24E12F5B8(v54 > 1, v20 + 1, 1);
        a1 = v135;
      }

      a1[2] = v20 + 1;
      sub_24E2A417C(v46, a1 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v20, type metadata accessor for SmallFriendLockupData);
      ++v9;
      if (v28 == v129)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v105 = v47;
    v106 = sub_24E348878();
    v47 = v105;
    if (!v106)
    {
      return 0;
    }
  }

  a1 = MEMORY[0x277D84F90];
LABEL_17:
  sub_24E2A15EC(20, a1, type metadata accessor for SmallFriendLockupData);
  OUTLINED_FUNCTION_4_88();
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_24E348C28();
  swift_unknownObjectRetain_n();
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
    v59 = MEMORY[0x277D84F90];
  }

  v60 = *(v59 + 16);

  if (__OFSUB__(v28 >> 1, v20))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_27;
  }

  if (v60 != (v28 >> 1) - v20)
  {
    swift_unknownObjectRelease();
LABEL_18:
    v55 = OUTLINED_FUNCTION_2_106();
    sub_24E09C624(v55, v56, v57, v58);
    goto LABEL_25;
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }

LABEL_25:
  sub_24E0797C8();
  v24 = v61;

  if (sub_24DFD8654() < 21)
  {
    swift_unknownObjectRelease();
    sub_24DF8BFF4(v116, &qword_27F1DEEA0, qword_24E369EA0);
    return v24;
  }

  v132 = a1;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v130 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v63 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v63;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  v20 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    goto LABEL_40;
  }

LABEL_27:
  v64 = sub_24E347058();
  v65 = __swift_project_value_buffer(v64, qword_27F20AE00);
  v66 = v117;
  MEMORY[0x25303DB90](0x6C6C41656573, 0xE600000000000000, 0x6E6F74747562, 0xE600000000000000, v20, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v67 = v118;
  v68 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = v130;
  v70 = v119;
  (*(v67 + 16))(v69 + v68, v66, v119);
  sub_24E347448();
  v71 = v126;
  sub_24E3471D8();
  (*(v67 + 8))(v66, v70);
  v72 = [__dst[0] playerID];
  v73 = sub_24E347CF8();
  v75 = v74;

  v76 = v120;
  v77 = v114;
  (*(v127 + 16))(v114 + *(v120 + 28), v71, v128);
  *v77 = v73;
  *(v77 + 8) = v75;
  *(v77 + 16) = 1;
  *(v77 + v76[8]) = 0;
  *(v77 + 17) = 1;
  v78 = sub_24E347CB8();
  v79 = GKGameCenterUIFrameworkBundle();
  v80 = GKGetLocalizedStringFromTableInBundle();

  v81 = sub_24E347CF8();
  v83 = v82;

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v139 = -1;
  v134[3] = v76;
  v134[4] = sub_24E2A424C(&qword_27F1DEEA8, type metadata accessor for FriendsListAction, &unk_24E369D84);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v134);
  sub_24E2A4294(v77, boxed_opaque_existential_1, type metadata accessor for FriendsListAction);
  v85 = v122;
  sub_24E343398();
  v87 = v123;
  v86 = v124;
  (*(v123 + 16))(v121, v85, v124);
  sub_24E2A424C(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v87 + 8))(v85, v86);
  v88 = v112;
  *(v112 + 216) = 0;
  *(v88 + 200) = 0u;
  *(v88 + 184) = 0u;
  v89 = v115;
  v90 = *(v115 + 56);
  v91 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
  v95 = v88 + *(v89 + 60);
  sub_24DF8BD34(v133, v88);
  *(v88 + 40) = 1;
  *(v88 + 48) = v81;
  *(v88 + 56) = v83;
  *(v88 + 72) = 0;
  *(v88 + 80) = 0;
  *(v88 + 64) = 0;
  sub_24DF95B98(&v135, v88 + 88, &qword_27F1DEE88, &unk_24E36BF90);
  *(v88 + 160) = 0;
  *(v88 + 168) = 0;
  *(v88 + 176) = 256;
  *v95 = 0;
  *(v95 + 8) = 0;

  sub_24DF95B4C(v134, v88 + 184, &qword_27F1DEE90, &unk_24E369E90);
  v96 = swift_initStackObject();
  v97 = OUTLINED_FUNCTION_3_41(v96, xmmword_24E369E30);
  v97[3].n128_u64[0] = 0x74656C63696863;
  v97[3].n128_u64[1] = 0xE700000000000000;
  v98 = MEMORY[0x277D837D0];
  v97[4].n128_u64[1] = MEMORY[0x277D837D0];
  v97[5].n128_u64[0] = v99;
  v100 = MEMORY[0x277D83B88];
  v97[5].n128_u64[1] = 0xEF7865646E496E6FLL;
  v97[6].n128_u64[0] = 0;
  v97[7].n128_u64[1] = v100;
  v97[8].n128_u64[0] = 0x657079546469;
  v97[8].n128_u64[1] = 0xE600000000000000;
  v97[9].n128_u64[0] = 0x636974617473;
  v97[9].n128_u64[1] = 0xE600000000000000;
  v97[10].n128_u64[1] = v98;
  v97[11].n128_u64[0] = 1701667182;
  v97[13].n128_u64[1] = v98;
  v97[11].n128_u64[1] = 0xE400000000000000;
  v97[12].n128_u64[0] = v81;
  v97[12].n128_u64[1] = v83;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v101 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v101);
  v102 = v111;
  sub_24E347488();
  sub_24DF8BE60(v133);
  sub_24DF8BFF4(&v135, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DF8BFF4(v134, &qword_27F1DEE90, &unk_24E369E90);
  __swift_storeEnumTagSinglePayload(v102, 0, 1, v91);
  sub_24DF95BE4(v102, v88 + v90, &qword_27F1E58A0, &unk_24E36BF80);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_24E076EE4();
    v24 = v108;
  }

  v103 = *(v24 + 16);
  if (v103 >= *(v24 + 24) >> 1)
  {
    sub_24E076EE4();
    v24 = v109;
  }

  sub_24DF8BFF4(v116, &qword_27F1DEEA0, qword_24E369EA0);
  swift_unknownObjectRelease();
  sub_24E2A41D8(v114, type metadata accessor for FriendsListAction);
  (*(v127 + 8))(v126, v128);
  *(&v136 + 1) = v115;
  *&v137 = sub_24E2A424C(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
  v104 = __swift_allocate_boxed_opaque_existential_1(&v135);
  sub_24E2A4294(v88, v104, type metadata accessor for DetailData);
  *(v24 + 16) = v103 + 1;
  sub_24DE56CE8(&v135, v24 + 40 * v103 + 32);
  sub_24E2A41D8(v88, type metadata accessor for DetailData);
  return v24;
}

id sub_24E2A2A60@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a4;
  v118 = a3;
  v116 = type metadata accessor for RemoveFriendAction(0);
  MEMORY[0x28223BE20](v116);
  *&v119 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24E347458();
  MEMORY[0x28223BE20](v9 - 8);
  v124 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24E347088();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24E347208();
  v125 = *(v15 - 8);
  v126 = v15;
  MEMORY[0x28223BE20](v15);
  v128 = v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = v104 - v18;
  MEMORY[0x28223BE20](v19);
  v121 = v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E40, &unk_24E374268);
  MEMORY[0x28223BE20](v21 - 8);
  v127 = v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v104 - v24;
  v26 = *a1;
  v27 = type metadata accessor for ReportFriendAction(0);
  v129 = v25;
  v123 = v27;
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v27);
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v28 = *(a2 + 8);
  v29 = MEMORY[0x277D837D0];
  v141 = v26;
  v122 = a5;
  if (v28)
  {
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for PlayerCardTheme(0);
    if ((*__swift_project_value_buffer(v30, qword_27F20BF00) & 1) == 0)
    {
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      v115 = xmmword_24E367D20;
      *(inited + 16) = xmmword_24E367D20;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 72) = v29;
      *(inited + 48) = 0x74726F706572;
      *(inited + 56) = 0xE600000000000000;
      v32 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        swift_once();
      }

      v33 = sub_24E347058();
      v113 = __swift_project_value_buffer(v33, qword_27F20AE00);
      MEMORY[0x25303DB90](0x464174726F706572, 0xED0000646E656972, 0x6E6F74747562, 0xE600000000000000, v32);

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
      v35 = *(v12 + 72);
      v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v109 = *(v12 + 80);
      v110 = v35;
      v111 = v34;
      v37 = swift_allocObject();
      *(v37 + 16) = v115;
      v38 = *(v12 + 16);
      v112 = v36;
      v107 = v38;
      v108 = v12 + 16;
      v38(v37 + v36, v14, v11);
      sub_24E347448();
      v39 = v121;
      sub_24E3471D8();
      v105 = *(v12 + 8);
      v106 = v12 + 8;
      v105(v14, v11);
      v40 = v129;
      sub_24DF8BFF4(v129, &qword_27F1E2E40, &unk_24E374268);
      v41 = v123;
      v42 = v40 + *(v123 + 20);
      v104[0] = *(v125 + 16);
      v104[1] = v125 + 16;
      (v104[0])(v42, v39, v126);
      v43 = v141;
      *v40 = v141;
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
      v44 = objc_opt_self();
      v45 = v43;
      result = [v44 shared];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v47 = result;
      v48 = [result isAccountModificationRestricted];

      v29 = MEMORY[0x277D837D0];
      if (v48)
      {
        (*(v125 + 8))(v121, v126);
      }

      else
      {
        v49 = swift_initStackObject();
        *(v49 + 16) = v115;
        *(v49 + 32) = 0x79546E6F69746361;
        *(v49 + 40) = 0xEA00000000006570;
        *(v49 + 72) = v29;
        *(v49 + 48) = 0x65766F6D6572;
        *(v49 + 56) = 0xE600000000000000;
        v50 = sub_24E347C28();
        v114 = v45;
        MEMORY[0x25303DB90](0x724665766F6D6572, 0xEC000000646E6569, 0x6E6F74747562, 0xE600000000000000, v50, v113);

        v51 = v112;
        v52 = swift_allocObject();
        *(v52 + 16) = v115;
        v107(v52 + v51, v14, v11);
        sub_24E347448();
        v53 = v120;
        sub_24E3471D8();
        v105(v14, v11);
        v54 = sub_24E32C0B8();
        v55 = v119;
        v56 = v126;
        (v104[0])(v119 + *(v116 + 28), v53, v126);
        v57 = v114;
        *v55 = v54;
        *(v55 + 8) = v57;
        *(v55 + 16) = 0;
        swift_weakInit();
        *(&v136 + 1) = sub_24E347278();
        v137 = MEMORY[0x277D21D10];
        __swift_allocate_boxed_opaque_existential_1(&v135);
        v58 = v57;
        sub_24E2A1924(CGSizeMake, 0);
        swift_weakDestroy();
        sub_24E2A41D8(v55, type metadata accessor for RemoveFriendAction);
        v59 = *(v125 + 8);
        v59(v120, v56);
        v59(v121, v56);
        sub_24DF8BFF4(&v138, &qword_27F1DEE90, &unk_24E369E90);
        v138 = v135;
        v139 = v136;
        v140 = v137;
      }

      v26 = v141;
    }
  }

  v60 = [v26 contact];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 _gkCompositeName];

    v63 = sub_24E347CF8();
    v120 = v64;
    v121 = v63;
  }

  else
  {
    v120 = 0;
    v121 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  v65 = swift_initStackObject();
  v119 = xmmword_24E367D20;
  *(v65 + 16) = xmmword_24E367D20;
  *(v65 + 32) = 0x79546E6F69746361;
  *(v65 + 40) = 0xEA00000000006570;
  *(v65 + 72) = v29;
  *(v65 + 48) = 0x657461676976616ELL;
  *(v65 + 56) = 0xE800000000000000;
  v66 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v67 = sub_24E347058();
  v68 = __swift_project_value_buffer(v67, qword_27F20AE00);
  MEMORY[0x25303DB90](0x7250646E65697266, 0xED0000656C69666FLL, 0x6E6F74747562, 0xE600000000000000, v66, v68);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
  v69 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v119;
  (*(v12 + 16))(v70 + v69, v14, v11);
  sub_24E347448();
  sub_24E3471D8();
  (*(v12 + 8))(v14, v11);
  v71 = v141;
  v72 = [v141 playerID];
  v73 = sub_24E347CF8();
  v75 = v74;

  *&v132 = v73;
  *(&v132 + 1) = v75;
  sub_24E348918();
  v76 = [v71 displayNameWithOptions_];
  v124 = sub_24E347CF8();
  *&v119 = v77;

  v78 = v127;
  sub_24DF95B98(v129, v127, &qword_27F1E2E40, &unk_24E374268);
  v79 = v78;
  v80 = v123;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v123);
  v82 = v122;
  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v127, &qword_27F1E2E40, &unk_24E374268);
    v132 = 0u;
    v133 = 0u;
    v134 = 0;
  }

  else
  {
    *(&v133 + 1) = v80;
    v134 = sub_24E2A424C(&qword_27F1E0AD0, type metadata accessor for ReportFriendAction, &unk_24E383B30);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v132);
    sub_24E2A417C(v127, boxed_opaque_existential_1, type metadata accessor for ReportFriendAction);
  }

  sub_24DF95B98(&v138, v131, &qword_27F1DEE90, &unk_24E369E90);
  v84 = [v71 playerID];
  v85 = sub_24E347CF8();
  v87 = v86;

  v88 = type metadata accessor for PlayerProfileAction(0);
  v130[3] = v88;
  v130[4] = sub_24E2A424C(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction, &unk_24E38C764);
  v89 = __swift_allocate_boxed_opaque_existential_1(v130);
  v91 = v125;
  v90 = v126;
  v92 = v128;
  (*(v125 + 16))(v89 + *(v88 + 24), v128, v126);
  *v89 = v85;
  v89[1] = v87;
  *(v89 + 16) = 1;
  *(v89 + *(v88 + 28)) = 0;
  v93 = objc_allocWithZone(MEMORY[0x277D0C170]);
  v94 = [v93 initWithInternalRepresentation_];
  (*(v91 + 8))(v92, v90);
  sub_24DF8BFF4(&v138, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF8BFF4(v129, &qword_27F1E2E40, &unk_24E374268);
  v95 = type metadata accessor for SmallFriendLockupData(0);
  *(v82 + 160) = 0u;
  *(v82 + 176) = 0;
  *(v82 + 144) = 0u;
  *(v82 + 256) = 0u;
  *(v82 + 272) = 0;
  *(v82 + 240) = 0u;
  v96 = *(v95 + 56);
  v97 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v82 + v96, 1, 1, v97);
  v98 = *(v95 + 60);
  v99 = v136;
  *v82 = v135;
  *(v82 + 16) = v99;
  v100 = v133;
  *(v82 + 104) = v132;
  v101 = v124;
  *(v82 + 32) = v137;
  *(v82 + 40) = v101;
  v102 = v120;
  v103 = v121;
  *(v82 + 48) = v119;
  *(v82 + 56) = v103;
  *(v82 + 64) = v102;
  *(v82 + 72) = 0;
  *(v82 + 80) = -1;
  *(v82 + 88) = 0;
  *(v82 + 120) = v100;
  *(v82 + 136) = v134;
  sub_24DF95BE4(v131, v82 + 144, &qword_27F1DEE90, &unk_24E369E90);
  *(v82 + 184) = 0u;
  *(v82 + 200) = 0u;
  *(v82 + 216) = 0u;
  *(v82 + 232) = 2;
  result = sub_24DF95BE4(v130, v82 + 240, &qword_27F1DEE90, &unk_24E369E90);
  *(v82 + v98) = v94;
  *(v82 + 96) = 0;
  return result;
}

uint64_t sub_24E2A3800@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v107 = a1;
  v105 = a2;
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v103 = v5 - v4;
  OUTLINED_FUNCTION_18_1();
  v6 = sub_24E347478();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v102 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v104 = &v95 - v12;
  OUTLINED_FUNCTION_18_1();
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v100 = v14;
  v101 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v99 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF050, &unk_24E36B8D0);
  v18 = OUTLINED_FUNCTION_4_5(v17);
  MEMORY[0x28223BE20](v18);
  v108 = &v95 - v19;
  v20 = OUTLINED_FUNCTION_18_1();
  v21 = type metadata accessor for HeaderData(v20);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v25 = v24 - v23;
  v26 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v27);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = (&v95 - v31);
  v33 = sub_24E347CB8();
  v34 = GKGameCenterUIFrameworkBundle();
  v35 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24E367D20;
  memcpy(__dst, v107, 0x90uLL);
  v37 = sub_24DF8BF80(__dst);
  v38 = 0;
  if (v37 != 1)
  {
    v38 = sub_24DFD8654();
  }

  v39 = MEMORY[0x277D83C10];
  *(v36 + 56) = MEMORY[0x277D83B88];
  *(v36 + 64) = v39;
  *(v36 + 32) = v38;
  v40 = sub_24E347CC8();
  v42 = v41;

  v114[0] = v40;
  v114[1] = v42;
  sub_24DF90C4C();
  v43 = sub_24E348708();
  v97 = v44;
  v98 = v43;

  sub_24E09984C();
  type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for PlayerCardTheme(0);
  v50 = *(__swift_project_value_buffer(v49, qword_27F20BF00) + *(v49 + 40));
  v51 = v26[8];
  *(v32 + v26[6]) = 0;
  *(v32 + v26[7]) = 0;
  *(v32 + v51) = 0;
  *(v32 + v26[9]) = 0;
  *(v32 + v26[11]) = 0;
  *(v32 + v26[13]) = v50;
  *(v32 + v26[10]) = 1;
  *(v32 + v26[12]) = 1;
  v107 = type metadata accessor for TitleHeaderView.Style;
  sub_24E2A4294(v32, v29, type metadata accessor for TitleHeaderView.Style);
  memset(v114, 0, sizeof(v114));
  v106 = v29;
  v115 = -1;
  memset(v113, 0, 64);
  v113[64] = -1;
  sub_24E3444F8();
  memset(v111, 0, sizeof(v111));
  v112 = 0;
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v56 = v50;
  v57 = v99;
  sub_24E343398();
  v58 = sub_24E343378();
  v60 = v59;
  v100[1](v57, v101);
  v61 = v25 + v21[7];
  *(v61 + 32) = 0u;
  *(v61 + 48) = 0u;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  *(v61 + 64) = -1;
  v62 = v25 + v21[9];
  *(v62 + 32) = 0u;
  *(v62 + 48) = 0u;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  *(v62 + 64) = -1;
  v63 = (v25 + v21[10]);
  v64 = v25 + v21[11];
  *(v64 + 32) = 0;
  *v64 = 0u;
  *(v64 + 16) = 0u;
  v65 = v21[13];
  v96 = v21[12];
  v66 = v25 + v65;
  *(v66 + 32) = 0;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  v100 = v32;
  v101 = v21[14];
  v99 = sub_24E3474B8();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  v109 = v58;
  v110 = v60;
  sub_24E348918();
  sub_24E2A4294(v106, v25 + v21[5], v107);
  v71 = (v25 + v21[6]);
  v72 = v97;
  v73 = v98;
  *v71 = v98;
  v71[1] = v72;

  sub_24DF95B4C(v114, v61, &qword_27F1DEE88, &unk_24E36BF90);
  v74 = (v25 + v21[8]);
  *v74 = 0;
  v74[1] = 0;
  sub_24DF95B4C(v113, v62, &qword_27F1DEE88, &unk_24E36BF90);
  *(v25 + v96) = 0;
  *v63 = 0;
  v63[1] = 0;
  sub_24DF95B4C(v111, v64, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF95B98(v108, v25 + v21[17], &qword_27F1DF050, &unk_24E36B8D0);
  v75 = v25 + v21[16];
  *v75 = 0;
  *(v75 + 8) = 0;
  *(v25 + v21[15]) = xmmword_24E3699A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  inited = swift_initStackObject();
  v77 = OUTLINED_FUNCTION_3_41(inited, xmmword_24E369E30);
  v77[3].n128_u64[0] = 0x666C656873;
  v77[3].n128_u64[1] = 0xE500000000000000;
  v78 = MEMORY[0x277D837D0];
  v77[4].n128_u64[1] = MEMORY[0x277D837D0];
  v77[5].n128_u64[0] = v79;
  v77[5].n128_u64[1] = 0xEF7865646E496E6FLL;
  v77[6].n128_u64[0] = 0;
  v77[7].n128_u64[1] = MEMORY[0x277D83B88];
  v77[8].n128_u64[0] = 0x657079546469;
  v77[8].n128_u64[1] = 0xE600000000000000;
  v77[9].n128_u64[0] = 0x636974617473;
  v77[9].n128_u64[1] = 0xE600000000000000;
  v77[10].n128_u64[1] = v78;
  v77[11].n128_u64[0] = 1701667182;
  v77[13].n128_u64[1] = v78;
  v77[11].n128_u64[1] = 0xE400000000000000;
  v77[12].n128_u64[0] = v73;
  v77[12].n128_u64[1] = v72;
  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v80 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v80);
  v81 = v104;
  sub_24E347488();
  sub_24DF8BFF4(v108, &qword_27F1DF050, &unk_24E36B8D0);
  sub_24DF8BFF4(v111, &qword_27F1DEE90, &unk_24E369E90);
  sub_24DF8BFF4(v113, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DF8BFF4(v114, &qword_27F1DEE88, &unk_24E36BF90);
  v82 = v107;
  sub_24E2A41D8(v106, v107);
  sub_24E2A41D8(v100, v82);
  __swift_storeEnumTagSinglePayload(v81, 0, 1, v99);
  sub_24DF95BE4(v81, v25 + v101, &qword_27F1E58A0, &unk_24E36BF80);
  v83 = v105;
  sub_24E2A4294(v25, v105, type metadata accessor for HeaderData);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v21);
  v84 = type metadata accessor for Shelf.Presentation(0);
  type metadata accessor for FooterData(0);
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  v89 = v83 + v84[11];
  *v89 = 0u;
  *(v89 + 16) = 0u;
  *(v89 + 32) = 1;
  v90 = v83 + v84[12];
  *v90 = 0;
  *(v90 + 8) = 1;
  v91 = (v83 + v84[13]);
  v92 = (v83 + v84[14]);
  v93 = (v83 + v84[15]);
  *(v83 + v84[6]) = 1;
  *v91 = 0;
  v91[1] = 0;
  *v92 = 0;
  v92[1] = 0;
  *v93 = 0;
  v93[1] = 0;
  *(v83 + v84[7]) = 1;
  *(v83 + v84[8]) = 1;
  *(v83 + v84[9]) = 1;
  *(v83 + v84[10]) = 0;
  return sub_24E2A41D8(v25, type metadata accessor for HeaderData);
}

uint64_t sub_24E2A4130(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_24E2A417C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E2A41D8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E2A424C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E2A4294(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

void sub_24E2A42F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    return;
  }

LABEL_12:
  __break(1u);
}

_BYTE *storeEnumTagSinglePayload for ProfileCreationOnboardingView.FocusAreas(_BYTE *result, int a2, int a3)
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

uint64_t type metadata accessor for ProfileCreationOnboardingView(uint64_t a1)
{
  result = qword_27F1E9B10;
  if (!qword_27F1E9B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E2A4498(uint64_t a1)
{
  type metadata accessor for GKPlayerAgeCategory(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for GKProfilePrivacyVisibility(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v2 = sub_24DF88A8C(319, &qword_27F1DF758, off_279666F68);
      if (v6 <= 0x3F)
      {
        v2 = sub_24DFA1058();
        if (v7 <= 0x3F)
        {
          sub_24E2A46BC(319, &qword_27F1E9B20, &qword_27F1E0288, &qword_24E36D9F0, MEMORY[0x277CE10B8]);
          v2 = v8;
          if (v9 <= 0x3F)
          {
            sub_24E02FD6C();
            v2 = v10;
            if (v11 <= 0x3F)
            {
              sub_24E2A4720(319, &qword_27F1DF778, type metadata accessor for ProfileEditorData);
              if (v13 > 0x3F)
              {
                return v12;
              }

              sub_24E2A46BC(319, &qword_27F1DF760, &qword_27F1DF338, qword_24E36F580, MEMORY[0x277CDF468]);
              if (v14 > 0x3F)
              {
                return v12;
              }

              sub_24E2A4720(319, &qword_27F1DF770, MEMORY[0x277CDFA28]);
              if (v15 > 0x3F)
              {
                return v12;
              }

              sub_24E2A4774(319);
              if (v16 > 0x3F)
              {
                return v12;
              }

              else
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_24E2A46BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_24E2A4720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24E345278();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24E2A4774(uint64_t a1)
{
  if (!qword_27F1E9B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9B30, &qword_24E38AC80);
    sub_24E2A47E4();
    v1 = sub_24E3451F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E9B28);
    }
  }
}

unint64_t sub_24E2A47E4()
{
  result = qword_27F1E9B38;
  if (!qword_27F1E9B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9B30, &qword_24E38AC80);
    sub_24E2A4868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9B38);
  }

  return result;
}

unint64_t sub_24E2A4868()
{
  result = qword_27F1E9B40;
  if (!qword_27F1E9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9B40);
  }

  return result;
}

void sub_24E2A48BC()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v4 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_22_9(*(v9 + 52));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E04B898(v1, v3, &qword_27F1DF338, qword_24E36F580);
  }

  else
  {
    sub_24E348268();
    v10 = sub_24E346198();
    OUTLINED_FUNCTION_6_12(v10, &dword_24DE53000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E2A4A40()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v4 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_22_9(*(v9 + 56));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E04B898(v1, v3, &qword_27F1DF338, qword_24E36F580);
  }

  else
  {
    sub_24E348268();
    v10 = sub_24E346198();
    OUTLINED_FUNCTION_6_12(v10, &dword_24DE53000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v12, v13, MEMORY[0x277D84F90]);

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E2A4BC4()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v4 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_22_9(*(v9 + 60));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_5_2();
    (*(v10 + 32))(v3, v1);
  }

  else
  {
    sub_24E348268();
    v11 = sub_24E346198();
    OUTLINED_FUNCTION_6_12(v11, &dword_24DE53000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v13, v14, MEMORY[0x277D84F90]);

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E2A4D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for ProfileCreationOnboardingView(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  sub_24E2A4F28(v24);
  sub_24E2AD3EC(v20, &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationOnboardingView);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = swift_allocObject();
  sub_24E2AC168(&a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v30 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B50, &qword_24E38AD50) + 36));
  sub_24E345528();
  sub_24E348078();
  *v30 = &unk_24E38AD48;
  v30[1] = v29;
  sub_24E2AD3EC(v20, &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationOnboardingView);
  v31 = swift_allocObject();
  sub_24E2AC168(&a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v28);
  v32 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B58, &qword_24E38AD58) + 36));
  *v32 = sub_24E2AC288;
  v32[1] = v31;
  v32[2] = 0;
  v32[3] = 0;
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E2A4F28@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = type metadata accessor for ProfileCreationOnboardingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v20 = type metadata accessor for ProfileCreationOnboardingView;
  sub_24E2AD3EC(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationOnboardingView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_24E2AC168(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v6);
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B68, &qword_24E38AD68);
  sub_24E348428();

  v10 = v21;
  sub_24E2AD3EC(v21, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationOnboardingView);
  v11 = swift_allocObject();
  sub_24E2AC168(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v6);
  v12 = v22;
  *a1 = sub_24E2AC2DC;
  a1[1] = v12;
  v13 = (a1 + *(v9 + 56));
  *v13 = sub_24E2AC354;
  v13[1] = v11;
  v14 = [v7 defaultCenter];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B70, &unk_24E38AD70);
  sub_24E348428();

  sub_24E2AD3EC(v10, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v16 = swift_allocObject();
  result = sub_24E2AC168(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v6);
  v18 = (a1 + *(v15 + 56));
  *v18 = sub_24E2AC36C;
  v18[1] = v16;
  return result;
}

uint64_t sub_24E2A51B8(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_24E348068();
  *(v1 + 40) = sub_24E348058();
  v3 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E2A5250, v3, v2);
}

uint64_t sub_24E2A5250()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 32);

  v2 = *(v1 + 8);
  v3 = *(v1 + 44);
  v4 = *(v1 + 48);
  *(v0 + 16) = *(v1 + 40);
  *(v0 + 20) = v3;
  *(v0 + 24) = v4;
  *(v0 + 48) = v2;
  *(v0 + 52) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B60, &qword_24E38AD60);
  sub_24E346B98();
  OUTLINED_FUNCTION_12_5();

  return v5();
}

uint64_t sub_24E2A52F4()
{
  v1 = sub_24E347638();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E345B68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);

  if ((v10 & 1) == 0)
  {
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v21 = v6;
  v12 = sub_24E1AE84C();

  if (v12 != 12)
  {
    v20 = v4;

    if ((v10 & 1) == 0)
    {
      sub_24E348268();
      v14 = sub_24E346198();
      sub_24E343EA8();

      sub_24E345B58();
      swift_getAtKeyPath();

      (*(v21 + 8))(v8, v5);
    }

    v15 = sub_24E1AE860();

    v16 = v20;
    if (v15 != 20)
    {
      if (qword_27F1DDF20 != -1)
      {
        swift_once();
      }

      v17 = qword_27F20B960;

      if ((v10 & 1) == 0)
      {
        sub_24E348268();
        v19 = v17;
        v18 = sub_24E346198();
        sub_24E343EA8();

        sub_24E345B58();
        swift_getAtKeyPath();

        (*(v21 + 8))(v8, v5);
        v9 = v22;
      }

      (*(v2 + 16))(v16, v9 + OBJC_IVAR____TtC12GameCenterUI17ProfileEditorData_metricsContext, v1);

      sub_24E32E770(v12, v15, 3u, 0, v16, 0);
      return (*(v2 + 8))(v16, v1);
    }
  }

  return result;
}

uint64_t sub_24E2A56D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E3461C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B78, &qword_24E38AD80);
  sub_24DFB4C28(&qword_27F1E9B80, &qword_27F1E9B78, &qword_24E38AD80, MEMORY[0x277CE1198]);
  sub_24E345218();
  v7 = sub_24E345CF8();
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B88, &qword_24E38AD88) + 36);
  sub_24E2A8058(a2, a1, v8);
  v9 = sub_24E345398();
  LOBYTE(a1) = MEMORY[0x25303CDB0]((2 * v9));
  v10 = sub_24E345728();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B90, &qword_24E38AD90);
  v12 = v8 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  *(v12 + 17) = a1;
  *(v12 + 24) = v7;
  return result;
}

uint64_t sub_24E2A5824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24E345CF8();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C48, &qword_24E38AE88);
  return sub_24E2A588C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_24E2A588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v78 = a3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B98, &qword_24E38AD98);
  v72 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = v68 - v4;
  v71 = sub_24E345658();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C50, &qword_24E38AE90);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C58, &qword_24E38AE98);
  MEMORY[0x28223BE20](v11);
  v13 = v68 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C60, &qword_24E38AEA0);
  MEMORY[0x28223BE20](v75);
  v15 = v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C68, &qword_24E38AEA8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v68 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C70, &qword_24E38AEB0);
  MEMORY[0x28223BE20](v74);
  v20 = v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C78, &qword_24E38AEB8);
  MEMORY[0x28223BE20](v21 - 8);
  v76 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v68 - v24;
  if (sub_24E2A60D8())
  {
    *v20 = sub_24E345BF8();
    *(v20 + 1) = 0x4038000000000000;
    v20[16] = 0;
    sub_24E2A85AC(a1, v18);
    sub_24E346E28();
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9CD8, &qword_24E38AEE8) + 44);
    v68[1] = v11;
    v27 = &v20[v26];
    sub_24E3457F8();
    sub_24E04B898(v18, v27, &qword_27F1E9C68, &qword_24E38AEA8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9CE0, &qword_24E38AEF0);
    memcpy((v27 + *(v28 + 36)), __src, 0x70uLL);
    v29 = sub_24E3461D8();
    sub_24E3451B8();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C90, &qword_24E38AEC0) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = sub_24E3461F8();
    sub_24E3451B8();
    v40 = &v20[*(v74 + 36)];
    *v40 = v39;
    *(v40 + 1) = v41;
    *(v40 + 2) = v42;
    *(v40 + 3) = v43;
    *(v40 + 4) = v44;
    v40[40] = 0;
    sub_24DF95B98(v20, v15, &qword_27F1E9C70, &qword_24E38AEB0);
    swift_storeEnumTagMultiPayload();
    sub_24E2AD164();
    sub_24E2AD2A8();
    v45 = v25;
    sub_24E345E38();
    sub_24DF8BFF4(v20, &qword_27F1E9C70, &qword_24E38AEB0);
  }

  else
  {
    sub_24E345488();
    sub_24E2A65A8(v13, v46);
    v47 = sub_24E3461F8();
    sub_24E2A6840();
    sub_24E3451B8();
    v48 = &v13[*(v11 + 36)];
    *v48 = v47;
    *(v48 + 1) = v49;
    *(v48 + 2) = v50;
    *(v48 + 3) = v51;
    *(v48 + 4) = v52;
    v48[40] = 0;
    sub_24DF95B98(v13, v15, &qword_27F1E9C58, &qword_24E38AE98);
    swift_storeEnumTagMultiPayload();
    sub_24E2AD164();
    sub_24E2AD2A8();
    v45 = v25;
    sub_24E345E38();
    sub_24DF8BFF4(v13, &qword_27F1E9C58, &qword_24E38AE98);
  }

  v53 = (a1 + *(type metadata accessor for ProfileCreationOnboardingView(0) + 68));
  v54 = *v53;
  v55 = *(v53 + 1);
  v82 = v54;
  v83 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v81 & 1) != 0 || (v56 = v69, sub_24E2A4BC4(), v57 = sub_24E345638(), (*(v70 + 8))(v56, v71), (v57))
  {
    sub_24E345488();
    v58 = v73;
    sub_24E2A6F3C(v73);
    (*(v72 + 32))(v10, v58, v80);
    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = v45;
  __swift_storeEnumTagSinglePayload(v10, v59, 1, v80);
  v61 = v45;
  v62 = v76;
  sub_24DF95B98(v61, v76, &qword_27F1E9C78, &qword_24E38AEB8);
  v63 = v77;
  sub_24DF95B98(v10, v77, &qword_27F1E9C50, &qword_24E38AE90);
  v64 = v78;
  sub_24DF95B98(v62, v78, &qword_27F1E9C78, &qword_24E38AEB8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9CD0, &qword_24E38AEE0);
  sub_24DF95B98(v63, v64 + *(v65 + 48), &qword_27F1E9C50, &qword_24E38AE90);
  v66 = v64 + *(v65 + 64);
  *v66 = 0;
  *(v66 + 8) = 1;
  sub_24DF8BFF4(v10, &qword_27F1E9C50, &qword_24E38AE90);
  sub_24DF8BFF4(v60, &qword_27F1E9C78, &qword_24E38AEB8);
  sub_24DF8BFF4(v63, &qword_27F1E9C50, &qword_24E38AE90);
  return sub_24DF8BFF4(v62, &qword_27F1E9C78, &qword_24E38AEB8);
}

uint64_t sub_24E2A60D8()
{
  v1 = sub_24E345658();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24E345F38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF890, &qword_24E3714C0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338, qword_24E36F580);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v31 = v0;
  sub_24E2A48BC();
  v19 = v4;
  (*(v4 + 104))(v15, *MEMORY[0x277CE0558], v3);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_24DF95B98(v18, v9, &qword_27F1DF338, qword_24E36F580);
  sub_24DF95B98(v15, &v9[v20], &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_24DF8BFF4(v15, &qword_27F1DF338, qword_24E36F580);
    sub_24DF8BFF4(v18, &qword_27F1DF338, qword_24E36F580);
    if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v3) == 1)
    {
      sub_24DF8BFF4(v9, &qword_27F1DF338, qword_24E36F580);
LABEL_9:
      v25 = v30;
      sub_24E2A4BC4();
      v26 = sub_24E345638();
      (*(v32 + 8))(v25, v33);
      v21 = v26 ^ 1;
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_24DF95B98(v9, v12, &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(&v9[v20], 1, v3) == 1)
  {
    sub_24DF8BFF4(v15, &qword_27F1DF338, qword_24E36F580);
    sub_24DF8BFF4(v18, &qword_27F1DF338, qword_24E36F580);
    (*(v19 + 8))(v12, v3);
LABEL_6:
    sub_24DF8BFF4(v9, &unk_27F1DF890, &qword_24E3714C0);
    goto LABEL_7;
  }

  v22 = v29;
  (*(v19 + 32))(v29, &v9[v20], v3);
  sub_24E2AD6CC(&qword_27F1DF3C8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v23 = sub_24E347CA8();
  v24 = *(v19 + 8);
  v24(v22, v3);
  sub_24DF8BFF4(v15, &qword_27F1DF338, qword_24E36F580);
  sub_24DF8BFF4(v18, &qword_27F1DF338, qword_24E36F580);
  v24(v12, v3);
  sub_24DF8BFF4(v9, &qword_27F1DF338, qword_24E36F580);
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_24E2A65A8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = v3;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9CC8, &qword_24E38AED8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_24E345658();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v34 = *(v3 + *(type metadata accessor for ProfileCreationOnboardingView(0) + 72) + 24);
  sub_24E2A4BC4();
  v16 = sub_24E345638();
  v17 = *(v10 + 8);
  v17(v15, v9);
  sub_24E2A4BC4();
  v18 = sub_24E345638();
  v17(v12, v9);
  if (v18)
  {
    v19 = sub_24E345D08();
  }

  else
  {
    v19 = sub_24E345CF8();
  }

  if ((a2 <= 436.0) | v16 & 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v34;
  }

  *v8 = v19;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D28, &qword_24E38AFC8);
  sub_24E2A8F08(v4, v20, (a2 <= 436.0) | v16 & 1, &v8[*(v21 + 44)]);
  v22 = sub_24E3461D8();
  sub_24E3451B8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v35;
  sub_24E04B898(v8, v35, &qword_27F1E9CC8, &qword_24E38AED8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9CB8, &qword_24E38AED0);
  v33 = v31 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

double sub_24E2A6840()
{
  v1 = sub_24E345F38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF890, &qword_24E3714C0);
  MEMORY[0x28223BE20](v4);
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338, qword_24E36F580);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v44 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v45 = &v37 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - v22;
  v43 = v0;
  sub_24E2A48BC();
  v24 = *MEMORY[0x277CE0560];
  v47 = v2;
  v41 = *(v2 + 104);
  v41(v20, v24, v1);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v1);
  v42 = v4;
  v25 = *(v4 + 48);
  sub_24DF95B98(v23, v8, &qword_27F1DF338, qword_24E36F580);
  sub_24DF95B98(v20, &v8[v25], &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    v38 = v24;
    sub_24DF8BFF4(v20, &qword_27F1DF338, qword_24E36F580);
    sub_24DF8BFF4(v23, &qword_27F1DF338, qword_24E36F580);
    if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v1) != 1)
    {
LABEL_11:
      sub_24DF8BFF4(v8, &unk_27F1DF890, &qword_24E3714C0);
      return 74.0;
    }

    sub_24DF8BFF4(v8, &qword_27F1DF338, qword_24E36F580);
  }

  else
  {
    sub_24DF95B98(v8, v17, &qword_27F1DF338, qword_24E36F580);
    if (__swift_getEnumTagSinglePayload(&v8[v25], 1, v1) == 1)
    {
LABEL_10:
      sub_24DF8BFF4(v20, &qword_27F1DF338, qword_24E36F580);
      sub_24DF8BFF4(v23, &qword_27F1DF338, qword_24E36F580);
      (*(v47 + 8))(v17, v1);
      goto LABEL_11;
    }

    v38 = v24;
    v26 = v47;
    v27 = v40;
    (*(v47 + 32))(v40, &v8[v25], v1);
    sub_24E2AD6CC(&qword_27F1DF3C8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v37 = sub_24E347CA8();
    v28 = *(v26 + 8);
    v28(v27, v1);
    sub_24DF8BFF4(v20, &qword_27F1DF338, qword_24E36F580);
    sub_24DF8BFF4(v23, &qword_27F1DF338, qword_24E36F580);
    v28(v17, v1);
    sub_24DF8BFF4(v8, &qword_27F1DF338, qword_24E36F580);
    if ((v37 & 1) == 0)
    {
      return 74.0;
    }
  }

  v23 = v45;
  sub_24E2A4A40();
  v20 = v44;
  v41(v44, v38, v1);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v1);
  v29 = *(v42 + 48);
  v8 = v46;
  sub_24DF95B98(v23, v46, &qword_27F1DF338, qword_24E36F580);
  sub_24DF95B98(v20, &v8[v29], &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) != 1)
  {
    v17 = v39;
    sub_24DF95B98(v8, v39, &qword_27F1DF338, qword_24E36F580);
    if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v1) == 1)
    {
      goto LABEL_10;
    }

    v31 = v20;
    v32 = v23;
    v33 = v47;
    v34 = v40;
    (*(v47 + 32))(v40, &v8[v29], v1);
    sub_24E2AD6CC(&qword_27F1DF3C8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v35 = sub_24E347CA8();
    v36 = *(v33 + 8);
    v36(v34, v1);
    sub_24DF8BFF4(v31, &qword_27F1DF338, qword_24E36F580);
    sub_24DF8BFF4(v32, &qword_27F1DF338, qword_24E36F580);
    v36(v17, v1);
    sub_24DF8BFF4(v8, &qword_27F1DF338, qword_24E36F580);
    if (v35)
    {
      return 120.0;
    }

    return 74.0;
  }

  sub_24DF8BFF4(v20, &qword_27F1DF338, qword_24E36F580);
  sub_24DF8BFF4(v23, &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v1) != 1)
  {
    goto LABEL_11;
  }

  sub_24DF8BFF4(v8, &qword_27F1DF338, qword_24E36F580);
  return 120.0;
}

uint64_t sub_24E2A6F3C@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v4 = sub_24E345658();
  v118 = *(v4 - 8);
  v119 = v4;
  MEMORY[0x28223BE20](v4);
  v117 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_24E345F38();
  v132 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v110 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DF890, &qword_24E3714C0);
  MEMORY[0x28223BE20](v129);
  v109 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v113 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF338, qword_24E36F580);
  MEMORY[0x28223BE20](v10 - 8);
  v106 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v125 = &v105 - v13;
  MEMORY[0x28223BE20](v14);
  v111 = &v105 - v15;
  MEMORY[0x28223BE20](v16);
  v115 = &v105 - v17;
  MEMORY[0x28223BE20](v18);
  v131 = &v105 - v19;
  MEMORY[0x28223BE20](v20);
  v126 = &v105 - v21;
  v124 = type metadata accessor for ProfileCreationOnboardingView(0);
  v22 = *(v124 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v124);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BB0, &qword_24E38ADB8);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v105 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BB8, &qword_24E38ADC0);
  v29 = v28 - 8;
  MEMORY[0x28223BE20](v28);
  v127 = &v105 - v30;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BC0, &qword_24E38ADC8);
  MEMORY[0x28223BE20](v116);
  v130 = &v105 - v31;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BC8, &qword_24E38ADD0);
  MEMORY[0x28223BE20](v120);
  v122 = &v105 - v32;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BD0, &qword_24E38ADD8);
  MEMORY[0x28223BE20](v133);
  v134 = &v105 - v33;
  sub_24E2AD3EC(v3, &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationOnboardingView);
  v34 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v35 = swift_allocObject();
  sub_24E2AC168(&v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
  v135 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BD8, &qword_24E38ADE0);
  sub_24E2AC464();
  v36 = v128;
  sub_24E346BD8();
  sub_24E16A8AC(v142);
  sub_24DFB4C28(&qword_27F1E9C08, &qword_27F1E9BB0, &qword_24E38ADB8, MEMORY[0x277CDF028]);
  sub_24E04B194();
  v37 = v127;
  sub_24E346598();
  memcpy(__dst, v142, 0x48uLL);
  sub_24E04B1E8(__dst);
  (*(v25 + 8))(v27, v24);
  v38 = v3;
  v39 = *(v3 + 64);
  LOBYTE(v142[0]) = *(v3 + 56);
  v142[1] = v39;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  LOBYTE(v34) = v136;
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v34;
  v42 = v37;
  v43 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C10, &unk_24E38AE28) + 36)];
  *v43 = KeyPath;
  v43[1] = sub_24DFEB7E4;
  v43[2] = v41;
  LOBYTE(KeyPath) = sub_24E3461F8();
  sub_24E3451B8();
  v44 = *(v29 + 44);
  v45 = v126;
  v46 = &v37[v44];
  *v46 = KeyPath;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  v112 = sub_24E3461D8();
  v114 = v38;
  v51 = v113;
  sub_24E2A4A40();
  v52 = v131;
  v53 = v132[13];
  v108 = *MEMORY[0x277CE0560];
  v107 = v53;
  v53(v131);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v36);
  v54 = *(v129 + 48);
  sub_24DF95B98(v45, v51, &qword_27F1DF338, qword_24E36F580);
  sub_24DF95B98(v52, v51 + v54, &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(v51, 1, v36) != 1)
  {
    sub_24DF95B98(v51, v115, &qword_27F1DF338, qword_24E36F580);
    if (__swift_getEnumTagSinglePayload(v51 + v54, 1, v36) != 1)
    {
      v58 = v132;
      v59 = v110;
      (v132[4])(v110, v51 + v54, v36);
      sub_24E2AD6CC(&qword_27F1DF3C8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v60 = v115;
      sub_24E347CA8();
      v61 = v58[1];
      v61(v59, v36);
      sub_24DF8BFF4(v131, &qword_27F1DF338, qword_24E36F580);
      sub_24DF8BFF4(v126, &qword_27F1DF338, qword_24E36F580);
      v61(v60, v36);
      v42 = v127;
      sub_24DF8BFF4(v51, &qword_27F1DF338, qword_24E36F580);
      v55 = v114;
      v56 = v125;
      v57 = v130;
      goto LABEL_8;
    }

    sub_24DF8BFF4(v131, &qword_27F1DF338, qword_24E36F580);
    sub_24DF8BFF4(v45, &qword_27F1DF338, qword_24E36F580);
    (v132[1])(v115, v36);
    goto LABEL_6;
  }

  sub_24DF8BFF4(v52, &qword_27F1DF338, qword_24E36F580);
  sub_24DF8BFF4(v45, &qword_27F1DF338, qword_24E36F580);
  if (__swift_getEnumTagSinglePayload(v51 + v54, 1, v36) != 1)
  {
LABEL_6:
    sub_24DF8BFF4(v51, &unk_27F1DF890, &qword_24E3714C0);
    v55 = v114;
    v56 = v125;
    v57 = v130;
    goto LABEL_8;
  }

  sub_24DF8BFF4(v51, &qword_27F1DF338, qword_24E36F580);
  v55 = v114;
  v56 = v125;
  v57 = v130;
LABEL_8:
  sub_24E3451B8();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  sub_24E04B898(v42, v57, &qword_27F1E9BB8, &qword_24E38ADC0);
  v70 = v57 + *(v116 + 36);
  *v70 = v112;
  *(v70 + 8) = v63;
  *(v70 + 16) = v65;
  *(v70 + 24) = v67;
  *(v70 + 32) = v69;
  *(v70 + 40) = 0;
  v71 = sub_24E346208();
  v72 = v117;
  sub_24E2A4BC4();
  v73 = sub_24E345638();
  (*(v118 + 8))(v72, v119);
  if ((v73 & 1) == 0 && (sub_24E2A60D8() & 1) == 0)
  {
    LODWORD(v131) = v71;
    v75 = v111;
    sub_24E2A4A40();
    v76 = v128;
    v107(v56, v108, v128);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v76);
    v77 = *(v129 + 48);
    v78 = v109;
    sub_24DF95B98(v75, v109, &qword_27F1DF338, qword_24E36F580);
    sub_24DF95B98(v56, v78 + v77, &qword_27F1DF338, qword_24E36F580);
    if (__swift_getEnumTagSinglePayload(v78, 1, v76) == 1)
    {
      sub_24DF8BFF4(v56, &qword_27F1DF338, qword_24E36F580);
      sub_24DF8BFF4(v75, &qword_27F1DF338, qword_24E36F580);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78 + v77, 1, v76);
      v74 = v122;
      if (EnumTagSinglePayload == 1)
      {
        sub_24DF8BFF4(v78, &qword_27F1DF338, qword_24E36F580);
LABEL_18:
        v57 = v130;
        LOBYTE(v71) = v131;
        goto LABEL_19;
      }
    }

    else
    {
      v80 = v106;
      sub_24DF95B98(v78, v106, &qword_27F1DF338, qword_24E36F580);
      v81 = __swift_getEnumTagSinglePayload(v78 + v77, 1, v76);
      v74 = v122;
      if (v81 != 1)
      {
        v82 = v132;
        v83 = v110;
        (v132[4])(v110, v78 + v77, v76);
        sub_24E2AD6CC(&qword_27F1DF3C8, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        sub_24E347CA8();
        v84 = v82[1];
        v84(v83, v76);
        sub_24DF8BFF4(v125, &qword_27F1DF338, qword_24E36F580);
        sub_24DF8BFF4(v111, &qword_27F1DF338, qword_24E36F580);
        v84(v106, v76);
        sub_24DF8BFF4(v78, &qword_27F1DF338, qword_24E36F580);
        goto LABEL_18;
      }

      sub_24DF8BFF4(v125, &qword_27F1DF338, qword_24E36F580);
      sub_24DF8BFF4(v111, &qword_27F1DF338, qword_24E36F580);
      (v132[1])(v80, v76);
    }

    sub_24DF8BFF4(v78, &unk_27F1DF890, &qword_24E3714C0);
    goto LABEL_18;
  }

  v74 = v122;
LABEL_19:
  sub_24E3451B8();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  sub_24E04B898(v57, v74, &qword_27F1E9BC0, &qword_24E38ADC8);
  v93 = v74 + *(v120 + 36);
  *v93 = v71;
  *(v93 + 8) = v86;
  *(v93 + 16) = v88;
  *(v93 + 24) = v90;
  *(v93 + 32) = v92;
  *(v93 + 40) = 0;
  sub_24E2A60D8();
  sub_24E346E28();
  sub_24E3457F8();
  v94 = v134;
  sub_24E04B898(v74, v134, &qword_27F1E9BC8, &qword_24E38ADD0);
  memcpy((v94 + *(v133 + 36)), v142, 0x70uLL);
  v95 = sub_24E347CB8();
  v96 = GKGameCenterUIFrameworkBundle();
  v97 = GKGetLocalizedStringFromTableInBundle();

  v98 = sub_24E347CF8();
  v100 = v99;

  v140 = v98;
  v141 = v100;
  v101 = *(v55 + 80);
  v138 = *(v55 + 72);
  v139 = v101;
  v102 = sub_24E346BA8();
  v132 = &v105;
  LODWORD(v131) = v137;
  MEMORY[0x28223BE20](v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830, &qword_24E36BC10);
  sub_24E2AC5A8();
  sub_24DF90C4C();
  sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830, &qword_24E36BC10, MEMORY[0x277CDF028]);
  v103 = v134;
  sub_24E346838();

  return sub_24DF8BFF4(v103, &qword_27F1E9BD0, &qword_24E38ADD8);
}

uint64_t sub_24E2A8058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[1] = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B98, &qword_24E38AD98);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BA0, &qword_24E38ADA0);
  MEMORY[0x28223BE20](v31);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BA8, &unk_24E38ADA8);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v15 = sub_24E345658();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (a1 + *(type metadata accessor for ProfileCreationOnboardingView(0) + 68));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(__src[0]) = v20;
  __src[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v35)
  {
    v22 = 1;
    v23 = v34;
  }

  else
  {
    sub_24E2A4BC4();
    v24 = sub_24E345638();
    (*(v16 + 8))(v18, v15);
    v22 = 1;
    v23 = v34;
    if ((v24 & 1) == 0)
    {
      sub_24E345488();
      sub_24E2A6F3C(v6);
      sub_24E346E28();
      sub_24E3457F8();
      (*(v32 + 32))(v8, v6, v33);
      memcpy(&v8[*(v31 + 36)], __src, 0x70uLL);
      v25 = sub_24E346E28();
      v27 = v26;
      sub_24E04B898(v8, v11, &qword_27F1E9BA0, &qword_24E38ADA0);
      v28 = &v11[*(v9 + 36)];
      *v28 = v25;
      v28[1] = v27;
      sub_24E04B898(v11, v14, &qword_27F1E9BA8, &unk_24E38ADA8);
      sub_24E04B898(v14, v23, &qword_27F1E9BA8, &unk_24E38ADA8);
      v22 = 0;
    }
  }

  return __swift_storeEnumTagSinglePayload(v23, v22, 1, v9);
}

uint64_t sub_24E2A840C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProfileCreationOnboardingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  return sub_24E346B98();
}

uint64_t sub_24E2A8480(uint64_t a1, uint64_t a2)
{
  v3 = sub_24E345658();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E2A4BC4();
  v7 = sub_24E345638();
  (*(v4 + 8))(v6, v3);
  v8 = (a2 + *(type metadata accessor for ProfileCreationOnboardingView(0) + 68));
  v9 = *v8;
  v10 = *(v8 + 1);
  v12[16] = v9;
  v13 = v10;
  v12[15] = v7 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  return sub_24E346B98();
}

uint64_t sub_24E2A85AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9CE8, &qword_24E38AEF8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9CF0, &qword_24E38AF00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  *v14 = sub_24E345CF8();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9CF8, &qword_24E38AF08);
  sub_24E2A87F0(&v14[*(v15 + 44)]);
  *v8 = sub_24E345CF8();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D00, &qword_24E38AF10);
  sub_24E2A8A18(v20, &v8[*(v16 + 44)]);
  sub_24DF95B98(v14, v11, &qword_27F1E9CF0, &qword_24E38AF00);
  sub_24DF95B98(v8, v5, &qword_27F1E9CE8, &qword_24E38AEF8);
  sub_24DF95B98(v11, a2, &qword_27F1E9CF0, &qword_24E38AF00);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D08, &qword_24E38AF18);
  sub_24DF95B98(v5, a2 + *(v17 + 48), &qword_27F1E9CE8, &qword_24E38AEF8);
  sub_24DF8BFF4(v8, &qword_27F1E9CE8, &qword_24E38AEF8);
  sub_24DF8BFF4(v14, &qword_27F1E9CF0, &qword_24E38AF00);
  sub_24DF8BFF4(v5, &qword_27F1E9CE8, &qword_24E38AEF8);
  return sub_24DF8BFF4(v11, &qword_27F1E9CF0, &qword_24E38AF00);
}

uint64_t sub_24E2A87F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OnboardingHeaderView(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v25 - v7);
  sub_24E343AA8();
  v9 = sub_24E3436B8();
  v11 = v10;
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  v12 = (v8 + v3[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v8 + v3[8]);
  *v13 = v9;
  v13[1] = v11;
  v14 = (v8 + v3[9]);
  *v14 = 0;
  v14[1] = 0;
  sub_24E149DF4(&v26, 140.0);
  sub_24E2AD3EC(v8, v5, type metadata accessor for OnboardingHeaderView);
  v15 = v26.n128_u64[0];
  v16 = v26.n128_u8[8];
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  sub_24E2AD3EC(v5, a1, type metadata accessor for OnboardingHeaderView);
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D20, &qword_24E38AFC0) + 48);
  *v22 = v15;
  *(v22 + 8) = v16 & 1;
  *(v22 + 16) = v17 & 1;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(v22 + 40) = v20;
  *(v22 + 48) = v21;

  v23 = v19;
  sub_24E2AD448();

  return sub_24E2AD448();
}

uint64_t sub_24E2A8A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D10, &qword_24E38AF20) - 8;
  MEMORY[0x28223BE20](v47);
  v48 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v45 - v5;
  v7 = type metadata accessor for EditNicknameSection(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 4);
  *&v12[v8[9]] = swift_getKeyPath();
  v45[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  swift_storeEnumTagMultiPayload();
  *&v12[v8[10]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v12[v8[11]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  *v12 = v13;
  v12[8] = v14;
  v12[9] = 0;
  v15 = &v12[v8[12]];
  type metadata accessor for ProfileEditorData(0);
  v45[1] = sub_24E2AD6CC(&qword_27F1DF920, type metadata accessor for ProfileEditorData, &unk_24E381858);
  v16 = v13;
  *v15 = sub_24E345298();
  v15[8] = v17 & 1;
  v18 = &v12[v8[13]];
  sub_24E343AA8();
  v50 = sub_24E3436E8();
  v51 = v19;
  sub_24E346B78();
  v20 = v53;
  *v18 = v52;
  *(v18 + 2) = v20;
  v21 = &v12[v8[14]];
  LOBYTE(v50) = 0;
  sub_24E346B78();
  v22 = *(&v52 + 1);
  *v21 = v52;
  *(v21 + 1) = v22;
  v23 = &v12[v8[15]];
  LOBYTE(v50) = 0;
  sub_24E346B78();
  v24 = *(&v52 + 1);
  *v23 = v52;
  *(v23 + 1) = v24;
  v25 = &v12[v8[16]];
  LOBYTE(v50) = 0;
  sub_24E346B78();
  v26 = *(&v52 + 1);
  *v25 = v52;
  *(v25 + 1) = v26;
  LODWORD(v23) = *a1;
  LOBYTE(v26) = *(a1 + 44);
  v27 = *(a1 + 48);
  LODWORD(v50) = *(a1 + 40);
  BYTE4(v50) = v26;
  v51 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B60, &qword_24E38AD60);
  sub_24E346BA8();
  v28 = v52;
  v29 = v53;
  v30 = BYTE4(v53);
  KeyPath = swift_getKeyPath();
  v32 = type metadata accessor for ActivitySharingSection(0);
  *&v6[*(v32 + 28)] = KeyPath;
  swift_storeEnumTagMultiPayload();
  *&v6[*(v32 + 32)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v6 = v23;
  *(v6 + 8) = v28;
  *(v6 + 6) = v29;
  v6[28] = v30;
  *(v6 + 4) = sub_24E345298();
  v6[40] = v33 & 1;
  v34 = sub_24E3461F8();
  sub_24E3451B8();
  v35 = v46;
  v36 = &v6[*(v47 + 44)];
  *v36 = v34;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  sub_24E2AD3EC(v12, v35, type metadata accessor for EditNicknameSection);
  v41 = v48;
  sub_24DF95B98(v6, v48, &qword_27F1E9D10, &qword_24E38AF20);
  v42 = v49;
  sub_24E2AD3EC(v35, v49, type metadata accessor for EditNicknameSection);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D18, &qword_24E38AFB8);
  sub_24DF95B98(v41, v42 + *(v43 + 48), &qword_27F1E9D10, &qword_24E38AF20);
  sub_24DF8BFF4(v6, &qword_27F1E9D10, &qword_24E38AF20);
  sub_24E2AD448();
  sub_24DF8BFF4(v41, &qword_27F1E9D10, &qword_24E38AF20);
  return sub_24E2AD448();
}

uint64_t sub_24E2A8F08@<X0>(int *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v116 = a2;
  v111 = a4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D10, &qword_24E38AF20);
  MEMORY[0x28223BE20](v104);
  v94 = &v93 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D30, &unk_24E38AFD0);
  MEMORY[0x28223BE20](v107);
  v110 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v106 = &v93 - v8;
  MEMORY[0x28223BE20](v9);
  v109 = &v93 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5328, &qword_24E37BE40);
  MEMORY[0x28223BE20](v98);
  v12 = &v93 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D38, &qword_24E38AFE0);
  v102 = *(v13 - 8);
  v103 = v13;
  MEMORY[0x28223BE20](v13);
  v95 = &v93 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D40, &qword_24E38AFE8);
  MEMORY[0x28223BE20](v101);
  v108 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v100 = &v93 - v17;
  MEMORY[0x28223BE20](v18);
  v115 = &v93 - v19;
  v20 = type metadata accessor for OnboardingHeaderView(0);
  v21 = (v20 - 8);
  MEMORY[0x28223BE20](v20);
  v113 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v93 - v24);
  sub_24E343AA8();
  v26 = sub_24E3436B8();
  v28 = v27;
  *v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  swift_storeEnumTagMultiPayload();
  v29 = (v25 + v21[7]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v25 + v21[8]);
  *v30 = v26;
  v30[1] = v28;
  v31 = v21[9];
  v112 = v25;
  v32 = (v25 + v31);
  *v32 = 0;
  v32[1] = 0;
  sub_24E149DF4(&v131, 150.0);
  v105 = sub_24E3461F8();
  sub_24E3451B8();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v135 = 0;
  sub_24E346E28();
  sub_24E3457F8();
  memcpy(&v136[7], v137, 0x70uLL);
  v41 = *(a1 + 2);
  LOBYTE(v28) = *(a1 + 4);
  KeyPath = swift_getKeyPath();
  v43 = type metadata accessor for EditNicknameSection(0);
  *&v12[v43[7]] = KeyPath;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  swift_storeEnumTagMultiPayload();
  *&v12[v43[8]] = swift_getKeyPath();
  v99 = v44;
  swift_storeEnumTagMultiPayload();
  *&v12[v43[9]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v12 = v41;
  v12[8] = v28;
  v12[9] = 0;
  v45 = &v12[v43[10]];
  v46 = type metadata accessor for ProfileEditorData(0);
  v47 = sub_24E2AD6CC(&qword_27F1DF920, type metadata accessor for ProfileEditorData, &unk_24E381858);
  v48 = v41;
  v96 = v47;
  v97 = v46;
  *v45 = sub_24E345298();
  v45[8] = v49 & 1;
  v50 = &v12[v43[11]];
  *&v117[0] = sub_24E3436E8();
  *(&v117[0] + 1) = v51;
  sub_24E346B78();
  v52 = v119;
  *v50 = v118;
  v50[1].n128_u64[0] = v52;
  v53 = &v12[v43[12]];
  LOBYTE(v117[0]) = 0;
  sub_24E346B78();
  v54 = v118.n128_u64[1];
  *v53 = v118.n128_u8[0];
  *(v53 + 1) = v54;
  v55 = &v12[v43[13]];
  LOBYTE(v117[0]) = 0;
  sub_24E346B78();
  v56 = v118.n128_u64[1];
  *v55 = v118.n128_u8[0];
  *(v55 + 1) = v56;
  v57 = &v12[v43[14]];
  LOBYTE(v117[0]) = 0;
  sub_24E346B78();
  v58 = v118.n128_u64[1];
  *v57 = v118.n128_u8[0];
  *(v57 + 1) = v58;
  v59 = v95;
  v60 = sub_24E3461F8();
  sub_24E3451B8();
  v61 = &v12[*(v98 + 36)];
  *v61 = v60;
  *(v61 + 1) = v62;
  *(v61 + 2) = v63;
  *(v61 + 3) = v64;
  *(v61 + 4) = v65;
  v61[40] = 0;
  v66 = a1 + *(type metadata accessor for ProfileCreationOnboardingView(0) + 64);
  v67 = *v66;
  v68 = *(v66 + 8);
  LOBYTE(v66) = *(v66 + 16);
  v118.n128_u8[0] = v67;
  v118.n128_u64[1] = v68;
  LOBYTE(v119) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C40, &qword_24E38AE80);
  sub_24E3451D8();
  v118 = v117[0];
  LOBYTE(v119) = v117[1];
  LOBYTE(v117[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B30, &qword_24E38AC80);
  sub_24E2AD49C();
  sub_24E2A47E4();
  sub_24E346888();

  sub_24DF8BFF4(v12, &qword_27F1E5328, &qword_24E37BE40);
  sub_24E346E28();
  LOBYTE(v41) = v114 | 1;
  sub_24E3457F8();
  v69 = v100;
  (*(v102 + 32))(v100, v59, v103);
  memcpy((v69 + *(v101 + 36)), v138, 0x70uLL);
  sub_24E04B898(v69, v115, &qword_27F1E9D40, &qword_24E38AFE8);
  v70 = *a1;
  v71 = *(a1 + 44);
  v72 = *(a1 + 6);
  LODWORD(v117[0]) = a1[10];
  BYTE4(v117[0]) = v71;
  *(&v117[0] + 1) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B60, &qword_24E38AD60);
  sub_24E346BA8();
  v73 = v118;
  LODWORD(v46) = v119;
  LOBYTE(v47) = BYTE4(v119);
  v74 = swift_getKeyPath();
  v75 = type metadata accessor for ActivitySharingSection(0);
  v76 = v94;
  *&v94[*(v75 + 28)] = v74;
  swift_storeEnumTagMultiPayload();
  *(v76 + *(v75 + 32)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v76 = v70;
  *(v76 + 8) = v73;
  *(v76 + 24) = v46;
  *(v76 + 28) = v47;
  *(v76 + 32) = sub_24E345298();
  *(v76 + 40) = v77 & 1;
  LOBYTE(v74) = sub_24E3461F8();
  sub_24E3451B8();
  v78 = v76 + *(v104 + 36);
  *v78 = v74;
  *(v78 + 8) = v79;
  *(v78 + 16) = v80;
  *(v78 + 24) = v81;
  *(v78 + 32) = v82;
  *(v78 + 40) = 0;
  sub_24E346E28();
  if ((v41 & 1) == 0)
  {
    sub_24E348268();
    v83 = sub_24E346198();
    sub_24E343EA8();
  }

  sub_24E3457F8();
  v84 = v106;
  sub_24E04B898(v76, v106, &qword_27F1E9D10, &qword_24E38AF20);
  memcpy((v84 + *(v107 + 36)), __src, 0x70uLL);
  v85 = v109;
  sub_24E04B898(v84, v109, &qword_27F1E9D30, &unk_24E38AFD0);
  v86 = v113;
  sub_24E2AD3EC(v112, v113, type metadata accessor for OnboardingHeaderView);
  v87 = v108;
  sub_24DF95B98(v115, v108, &qword_27F1E9D40, &qword_24E38AFE8);
  v88 = v110;
  sub_24DF95B98(v85, v110, &qword_27F1E9D30, &unk_24E38AFD0);
  v89 = v111;
  sub_24E2AD3EC(v86, v111, type metadata accessor for OnboardingHeaderView);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9D58, &qword_24E38AFF0);
  v91 = v90[12];
  *&v117[3] = v134;
  v117[0] = v131;
  v117[1] = v132;
  v117[2] = v133;
  LOBYTE(v86) = v105;
  BYTE8(v117[3]) = v105;
  *(&v117[3] + 9) = *v130;
  HIDWORD(v117[3]) = *&v130[3];
  *&v117[4] = v34;
  *(&v117[4] + 1) = v36;
  *&v117[5] = v38;
  *(&v117[5] + 1) = v40;
  LOBYTE(v117[6]) = 0;
  memcpy(&v117[6] + 1, v136, 0x77uLL);
  memcpy((v89 + v91), v117, 0xD8uLL);
  sub_24DF95B98(v87, v89 + v90[16], &qword_27F1E9D40, &qword_24E38AFE8);
  sub_24DF95B98(v88, v89 + v90[20], &qword_27F1E9D30, &unk_24E38AFD0);
  sub_24DF95B98(v117, &v118, &qword_27F1E9D60, qword_24E38AFF8);
  sub_24DF8BFF4(v85, &qword_27F1E9D30, &unk_24E38AFD0);
  sub_24DF8BFF4(v115, &qword_27F1E9D40, &qword_24E38AFE8);
  sub_24E2AD448();
  sub_24DF8BFF4(v88, &qword_27F1E9D30, &unk_24E38AFD0);
  sub_24DF8BFF4(v87, &qword_27F1E9D40, &qword_24E38AFE8);
  v118 = v131;
  v119 = v132;
  v120 = v133;
  v121 = v134;
  v122 = v86;
  *v123 = *v130;
  *&v123[3] = *&v130[3];
  v124 = v34;
  v125 = v36;
  v126 = v38;
  v127 = v40;
  v128 = 0;
  memcpy(v129, v136, sizeof(v129));
  sub_24DF8BFF4(&v118, &qword_27F1E9D60, qword_24E38AFF8);
  return sub_24E2AD448();
}

uint64_t sub_24E2A9B74(uint64_t a1)
{
  v2 = type metadata accessor for ProfileCreationOnboardingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7];
  sub_24E2A9D64();
  v9 = *(a1 + 64);
  v16[16] = *(a1 + 56);
  v17 = v9;
  v16[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B98();
  v10 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  sub_24E2AD3EC(a1, v5, type metadata accessor for ProfileCreationOnboardingView);
  sub_24E348068();
  v11 = sub_24E348058();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_24E2AC168(v5, v13 + v12);
  sub_24DFC8700(0, 0, v8, &unk_24E38AE40, v13);
}

uint64_t sub_24E2A9D64()
{
  v1 = sub_24E347638();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24E345B68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);

  if ((v10 & 1) == 0)
  {
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v21 = v6;
  v12 = sub_24E1AE84C();

  if (v12 != 12)
  {
    v20 = v4;

    if ((v10 & 1) == 0)
    {
      sub_24E348268();
      v14 = sub_24E346198();
      sub_24E343EA8();

      sub_24E345B58();
      swift_getAtKeyPath();

      (*(v21 + 8))(v8, v5);
    }

    v15 = sub_24E1AE860();

    v16 = v20;
    if (v15 != 20)
    {
      if (qword_27F1DDF20 != -1)
      {
        swift_once();
      }

      v17 = qword_27F20B960;

      if ((v10 & 1) == 0)
      {
        sub_24E348268();
        v19 = v17;
        v18 = sub_24E346198();
        sub_24E343EA8();

        sub_24E345B58();
        swift_getAtKeyPath();

        (*(v21 + 8))(v8, v5);
        v9 = v22;
      }

      (*(v2 + 16))(v16, v9 + OBJC_IVAR____TtC12GameCenterUI17ProfileEditorData_metricsContext, v1);

      sub_24E32E900(v12, v15, 1, 10, 0, v16);
      return (*(v2 + 8))(v16, v1);
    }
  }

  return result;
}

uint64_t sub_24E2AA148()
{
  v0[2] = sub_24E348068();
  v0[3] = sub_24E348058();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E2AA1F4;

  return sub_24E2AA324();
}

uint64_t sub_24E2AA1F4()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;

  v4 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24DFC9F94, v4, v3);
}

uint64_t sub_24E2AA324()
{
  v1[22] = v0;
  v2 = *(type metadata accessor for ProfileCreationOnboardingView(0) - 8);
  v1[23] = v2;
  v1[24] = *(v2 + 64);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  v1[26] = swift_task_alloc();
  v3 = sub_24E343F88();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = sub_24E348068();
  v1[32] = sub_24E348058();
  v5 = sub_24E347FF8();
  v1[33] = v5;
  v1[34] = v4;

  return MEMORY[0x2822009F8](sub_24E2AA4C0, v5, v4);
}

uint64_t sub_24E2AA4C0()
{
  OUTLINED_FUNCTION_29_5();
  v1 = sub_24E2AB504();
  v2 = *(v0 + 176);
  if (v1)
  {
    v3 = *(v2 + 16);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_24E2AA708;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E02C0, &unk_24E36BB30);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24DFECA10;
    *(v0 + 104) = &block_descriptor_93;
    *(v0 + 112) = v4;
    [v3 commitNicknameChangesWithCompletion_];
    OUTLINED_FUNCTION_42_11();

    return MEMORY[0x282200938](v5);
  }

  else
  {
    v7 = *(v2 + 40);
    v8 = *(v2 + 44);
    v9 = *(v2 + 48);
    *(v0 + 144) = v7;
    *(v0 + 148) = v8;
    *(v0 + 152) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B60, &qword_24E38AD60);
    sub_24E346B88();
    if (*(v0 + 308) == 1)
    {

      OUTLINED_FUNCTION_7_68();
      v10 = sub_24E348098();
      OUTLINED_FUNCTION_0_172(v10);
      sub_24E348058();
      OUTLINED_FUNCTION_15_41();
      v11 = OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_32_19(v11, MEMORY[0x277D85700]);
      OUTLINED_FUNCTION_2_119();

      OUTLINED_FUNCTION_37_11();

      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_42_11();

      __asm { BRAA            X1, X16 }
    }

    v14 = swift_task_alloc();
    *(v0 + 288) = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_5_103(v14);
    OUTLINED_FUNCTION_42_11();

    return sub_24E2AB614(v15);
  }
}

uint64_t sub_24E2AA708()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 280) = v4;
  v5 = v3[34];
  v6 = v3[33];
  if (v4)
  {
    v7 = sub_24E2AAC9C;
  }

  else
  {
    v7 = sub_24E2AA82C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24E2AA82C()
{
  OUTLINED_FUNCTION_29_5();
  sub_24E343C58();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24DE53000, v1, v2, "ProfileCreationOnboardingView: Nickname saved.", v3, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 176);
  v8 = *(v7 + 40);
  v9 = *(v7 + 44);
  v10 = *(v7 + 48);
  *(v0 + 144) = v8;
  *(v0 + 148) = v9;
  *(v0 + 152) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9B60, &qword_24E38AD60);
  sub_24E346B88();
  if (*(v0 + 308) == 1)
  {

    OUTLINED_FUNCTION_7_68();
    v11 = sub_24E348098();
    OUTLINED_FUNCTION_0_172(v11);
    sub_24E348058();
    OUTLINED_FUNCTION_15_41();
    v12 = OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_32_19(v12, MEMORY[0x277D85700]);
    OUTLINED_FUNCTION_2_119();

    OUTLINED_FUNCTION_37_11();

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_42_11();

    __asm { BRAA            X1, X16 }
  }

  v15 = swift_task_alloc();
  *(v0 + 288) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_5_103(v15);
  OUTLINED_FUNCTION_42_11();

  return sub_24E2AB614(v16);
}

uint64_t sub_24E2AAA14()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 296) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 264);
  if (v0)
  {
    v7 = sub_24E2AADF8;
  }

  else
  {
    v7 = sub_24E2AAB4C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

void sub_24E2AAB4C()
{
  OUTLINED_FUNCTION_29_5();

  sub_24E343C58();
  v1 = sub_24E343F78();
  v2 = sub_24E348238();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24DE53000, v1, v2, "ProfileCreationOnboardingView: Activity Sharing setting saved.", v7, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v5 + 8))(v4, v6);
  OUTLINED_FUNCTION_7_68();
  v8 = sub_24E348098();
  OUTLINED_FUNCTION_0_172(v8);
  sub_24E348058();
  OUTLINED_FUNCTION_15_41();
  v9 = OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_32_19(v9, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_2_119();

  OUTLINED_FUNCTION_37_11();

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_42_11();

  __asm { BRAA            X1, X16 }
}

void sub_24E2AAC9C()
{

  swift_willThrow();
  *(v0 + 160) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30, &unk_24E36E840);
  v1 = sub_24DF88A8C(0, &qword_27F1DFD38, 0x277CCA9B8);
  if (OUTLINED_FUNCTION_33_13(v1))
  {
    OUTLINED_FUNCTION_7_68();
    v2 = *(v0 + 168);
    v3 = sub_24E348098();
    OUTLINED_FUNCTION_0_172(v3);
    v4 = v2;
    sub_24E348058();
    OUTLINED_FUNCTION_40_12();
    v5 = OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_41_13(v5, MEMORY[0x277D85700]);
    v6 = OUTLINED_FUNCTION_10_38();
    sub_24DFC8700(v6, v7, v8, v9, v5);

    OUTLINED_FUNCTION_37_11();

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_36_13();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_36_13();
}

void sub_24E2AADF8()
{

  *(v0 + 160) = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30, &unk_24E36E840);
  v1 = sub_24DF88A8C(0, &qword_27F1DFD38, 0x277CCA9B8);
  if (OUTLINED_FUNCTION_33_13(v1))
  {
    OUTLINED_FUNCTION_7_68();
    v2 = *(v0 + 168);
    v3 = sub_24E348098();
    OUTLINED_FUNCTION_0_172(v3);
    v4 = v2;
    sub_24E348058();
    OUTLINED_FUNCTION_40_12();
    v5 = OUTLINED_FUNCTION_38_11();
    OUTLINED_FUNCTION_41_13(v5, MEMORY[0x277D85700]);
    v6 = OUTLINED_FUNCTION_10_38();
    sub_24DFC8700(v6, v7, v8, v9, v5);

    OUTLINED_FUNCTION_37_11();

    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_36_13();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_36_13();
}

uint64_t sub_24E2AAF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E347CB8();
  v5 = GKGameCenterUIFrameworkBundle();
  v6 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  v7 = sub_24E3464E8();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v21)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0;
  }

  v15 = sub_24E346E28();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9BD8, &qword_24E38ADE0) + 36);
  sub_24E2AB0E8(a1, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C00, &qword_24E38ADF0);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_24E2AB0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230, &qword_24E37C830);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6];
  v8 = *(a1 + 64);
  v11[16] = *(a1 + 56);
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v11[15] == 1)
  {
    sub_24E345348();
    (*(v5 + 32))(a2, v7, v4);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v9, 1, v4);
}

uint64_t sub_24E2AB220(uint64_t a1)
{
  v2 = type metadata accessor for ProfileCreationOnboardingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A8, &qword_24E37A270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_24E347CB8();
  v9 = GKGameCenterUIFrameworkBundle();
  v10 = GKGetLocalizedStringFromTableInBundle();

  v11 = sub_24E347CF8();
  v13 = v12;

  v18[0] = v11;
  v18[1] = v13;
  sub_24E345188();
  v14 = sub_24E345198();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
  sub_24E2AD3EC(a1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProfileCreationOnboardingView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_24E2AC168(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_24DF90C4C();
  return sub_24E346BF8();
}

uint64_t sub_24E2AB440@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24E2AB504()
{
  v1 = sub_24DFFA658([*(v0 + 16) nickname]);
  v3 = v2;
  v4 = [objc_opt_self() local];
  v5 = [v4 alias];

  v6 = sub_24E347CF8();
  v8 = v7;

  if (v3)
  {
    if (v1 == v6 && v3 == v8)
    {

      v11 = 0;
    }

    else
    {
      v10 = sub_24E348C08();

      v11 = v10 ^ 1;
    }
  }

  else
  {

    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_24E2AB614(int a1)
{
  *(v1 + 80) = a1;
  *(v1 + 16) = sub_24E348068();
  *(v1 + 24) = sub_24E348058();
  v3 = sub_24E347FF8();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  return MEMORY[0x2822009F8](sub_24E2AB6B0, v3, v2);
}

uint64_t sub_24E2AB6B0()
{
  v1 = [objc_opt_self() currentDevice];
  if (v1)
  {
    sub_24E1A3838(v1);
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 proxyForLocalPlayer];
    v6 = [v5 accountService];

    if (v3)
    {

      OUTLINED_FUNCTION_19_1();
      v7 = sub_24E347CB8();
    }

    else
    {
      v7 = 0;
    }

    [v6 setLastPersonalizationVersionDisplayedForSignedInPlayer_];

    swift_unknownObjectRelease();
    v8 = [v4 proxyForLocalPlayer];
    v9 = [v8 accountService];

    if (v3)
    {
      OUTLINED_FUNCTION_19_1();
      v10 = sub_24E347CB8();
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 80);
    [v9 setLastProfilePrivacyVersionDisplayedForSignedInPlayer_];

    swift_unknownObjectRelease();
    *(v0 + 48) = sub_24E348058();
    v12 = swift_task_alloc();
    *(v0 + 56) = v12;
    *(v12 + 16) = v11;
    v13 = swift_task_alloc();
    *(v0 + 64) = v13;
    *v13 = v0;
    v13[1] = sub_24E2AB8F0;
    OUTLINED_FUNCTION_36_13();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v1);
}

uint64_t sub_24E2AB8F0()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v3 = v2;
  OUTLINED_FUNCTION_9_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    v7 = v3[4];
    v8 = v3[5];
    v9 = sub_24E04A108;
  }

  else
  {

    v7 = v3[4];
    v8 = v3[5];
    v9 = sub_24E04A0AC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24E2ABA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  sub_24E348068();
  *(v4 + 40) = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E2ABA9C, v6, v5);
}

uint64_t sub_24E2ABA9C()
{
  v1 = *(v0 + 32);

  v2 = *(v1 + 64);
  *(v0 + 16) = *(v1 + 56);
  *(v0 + 24) = v2;
  *(v0 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  v3 = sub_24E346B98();
  (*(v1 + 24))(v3);
  OUTLINED_FUNCTION_12_5();

  return v4();
}

uint64_t sub_24E2ABB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_24E343F88();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  sub_24E348068();
  v5[18] = sub_24E348058();
  v8 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E2ABC3C, v8, v7);
}

void sub_24E2ABC3C()
{
  OUTLINED_FUNCTION_29_5();
  v1 = *(v0 + 104);

  sub_24E343C58();
  v2 = v1;
  v3 = sub_24E343F78();
  v4 = sub_24E348258();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_24DE53000, v3, v4, "ProfileCreationOnboardingView: Failed with error: %@", v6, 0xCu);
    sub_24DF8BFF4(v7, &unk_27F1DF730, &qword_24E36DA40);
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_22_4();
  }

  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = *(v0 + 104);

  (*(v10 + 8))(v9, v11);
  v14 = *(v12 + 64);
  *(v0 + 72) = *(v12 + 56);
  *(v0 + 80) = v14;
  *(v0 + 65) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B98();
  v15 = [v13 userInfo];
  v16 = sub_24E347C08();

  sub_24E12CAE8(0x54726573556B7361, v16, (v0 + 16));

  if (*(v0 + 40))
  {
    if (swift_dynamicCast() && (*(v0 + 67) & 1) != 0)
    {
      v17 = *(v0 + 112);
      v18 = (v17 + *(type metadata accessor for ProfileCreationOnboardingView(0) + 64));
      v19 = *v18;
      v20 = *(v18 + 1);
      LOBYTE(v18) = v18[16];
      *(v0 + 48) = v19;
      *(v0 + 56) = v20;
      *(v0 + 64) = v18;
      *(v0 + 68) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9C40, &qword_24E38AE80);
      sub_24E3451C8();
      goto LABEL_9;
    }
  }

  else
  {
    sub_24DF8BFF4(v0 + 16, &qword_27F1E0370, &unk_24E369A10);
  }

  v21 = *(v0 + 112);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  *(v0 + 88) = v22;
  *(v0 + 96) = v23;
  *(v0 + 66) = 1;
  sub_24E346B98();
LABEL_9:

  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_42_11();

  __asm { BRAA            X1, X16 }
}

double sub_24E2ABF10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 profileServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_24E2AD0D8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_50;
  v12 = _Block_copy(aBlock);

  [v9 setProfilePrivacy:a2 handler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
  return result;
}

unint64_t sub_24E2AC114()
{
  result = qword_27F1E9B48;
  if (!qword_27F1E9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9B48);
  }

  return result;
}

uint64_t sub_24E2AC168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileCreationOnboardingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2AC1CC()
{
  OUTLINED_FUNCTION_9_7();
  v1 = type metadata accessor for ProfileCreationOnboardingView(0);
  OUTLINED_FUNCTION_4_5(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_4(v4);
  *v5 = v6;
  v5[1] = sub_24E2AD714;

  return sub_24E2A51B8(v0 + v3);
}

uint64_t sub_24E2AC288()
{
  v0 = type metadata accessor for ProfileCreationOnboardingView(0);
  OUTLINED_FUNCTION_4_5(v0);
  OUTLINED_FUNCTION_28_6();
  return sub_24E2A52F4();
}

uint64_t sub_24E2AC2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ProfileCreationOnboardingView(0);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_28_6();

  return sub_24E2A56D8(a1, v2 + v6, a2);
}

uint64_t sub_24E2AC384(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_27_5();
  v5 = type metadata accessor for ProfileCreationOnboardingView(v4);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_28_6();

  return a2(v2, v3 + v6);
}

uint64_t sub_24E2AC404()
{
  v1 = type metadata accessor for ProfileCreationOnboardingView(0);
  OUTLINED_FUNCTION_4_5(v1);
  OUTLINED_FUNCTION_28_6();

  return sub_24E2A9B74(v0 + v2);
}

unint64_t sub_24E2AC464()
{
  result = qword_27F1E9BE0;
  if (!qword_27F1E9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9BD8, &qword_24E38ADE0);
    sub_24E2AC51C();
    sub_24DFB4C28(&qword_27F1E9BF8, &qword_27F1E9C00, &qword_24E38ADF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9BE0);
  }

  return result;
}

unint64_t sub_24E2AC51C()
{
  result = qword_27F1E9BE8;
  if (!qword_27F1E9BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9BF0, &qword_24E38ADE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9BE8);
  }

  return result;
}

unint64_t sub_24E2AC5A8()
{
  result = qword_27F1E9C18;
  if (!qword_27F1E9C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9BD0, &qword_24E38ADD8);
    sub_24E2AC634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9C18);
  }

  return result;
}

unint64_t sub_24E2AC634()
{
  result = qword_27F1E9C20;
  if (!qword_27F1E9C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9BC8, &qword_24E38ADD0);
    sub_24E2AC6C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9C20);
  }

  return result;
}

unint64_t sub_24E2AC6C0()
{
  result = qword_27F1E9C28;
  if (!qword_27F1E9C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9BC0, &qword_24E38ADC8);
    sub_24E2AC74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9C28);
  }

  return result;
}

unint64_t sub_24E2AC74C()
{
  result = qword_27F1E9C30;
  if (!qword_27F1E9C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9BB8, &qword_24E38ADC0);
    sub_24E2AC7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9C30);
  }

  return result;
}

unint64_t sub_24E2AC7D8()
{
  result = qword_27F1E9C38;
  if (!qword_27F1E9C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9C10, &unk_24E38AE28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9BB0, &qword_24E38ADB8);
    sub_24DFB4C28(&qword_27F1E9C08, &qword_27F1E9BB0, &qword_24E38ADB8, MEMORY[0x277CDF028]);
    sub_24E04B194();
    swift_getOpaqueTypeConformance2();
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168, &unk_24E37BF60, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9C38);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for ProfileCreationOnboardingView(0);
  OUTLINED_FUNCTION_3_13();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = *(v0 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  if (OUTLINED_FUNCTION_31_14() == 1)
  {
    v6 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_18_11(v6))
    {
      OUTLINED_FUNCTION_22_0();
      (*(v7 + 8))(v4 + v5, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_13();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_20_11(v8))
    {
      OUTLINED_FUNCTION_22_0();
      v9 = OUTLINED_FUNCTION_16_13();
      v10(v9);
    }
  }

  else
  {
  }

  v11 = *(v0 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_5_2();
    (*(v12 + 8))(v4 + v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_35_13();
  OUTLINED_FUNCTION_34_15();
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_24E2ACB08()
{
  v1 = type metadata accessor for ProfileCreationOnboardingView(0);
  OUTLINED_FUNCTION_4_5(v1);
  OUTLINED_FUNCTION_28_6();
  return (*(v0 + v2 + 24))();
}

uint64_t sub_24E2ACB64()
{
  OUTLINED_FUNCTION_29_5();
  v0 = OUTLINED_FUNCTION_27_5();
  v1 = type metadata accessor for ProfileCreationOnboardingView(v0);
  OUTLINED_FUNCTION_4_5(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_4(v2);
  *v3 = v4;
  v3[1] = sub_24E2AD714;
  OUTLINED_FUNCTION_23_22();

  return sub_24E2AA148();
}

uint64_t objectdestroy_30Tm_0()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for ProfileCreationOnboardingView(0);
  OUTLINED_FUNCTION_3_13();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;

  v6 = *(v0 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  if (OUTLINED_FUNCTION_31_14() == 1)
  {
    v7 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_18_11(v7))
    {
      OUTLINED_FUNCTION_22_0();
      (*(v8 + 8))(v5 + v6, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_13();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_20_11(v9))
    {
      OUTLINED_FUNCTION_22_0();
      v10 = OUTLINED_FUNCTION_16_13();
      v11(v10);
    }
  }

  else
  {
  }

  v12 = *(v0 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_5_2();
    (*(v13 + 8))(v5 + v12);
  }

  else
  {
  }

  OUTLINED_FUNCTION_35_13();
  OUTLINED_FUNCTION_34_15();
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_24E2ACE30()
{
  OUTLINED_FUNCTION_29_5();
  v0 = OUTLINED_FUNCTION_27_5();
  v1 = type metadata accessor for ProfileCreationOnboardingView(v0);
  OUTLINED_FUNCTION_4_5(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_4(v2);
  *v3 = v4;
  v3[1] = sub_24E2AD714;
  v5 = OUTLINED_FUNCTION_23_22();

  return sub_24E2ABA04(v5, v6, v7, v8);
}

uint64_t sub_24E2ACF00()
{
  OUTLINED_FUNCTION_29_5();
  v0 = OUTLINED_FUNCTION_27_5();
  v1 = type metadata accessor for ProfileCreationOnboardingView(v0);
  OUTLINED_FUNCTION_4_5(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_4(v2);
  *v3 = v4;
  v3[1] = sub_24E2ACFD4;
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_42_11();

  return sub_24E2ABB48(v5, v6, v7, v8, v9);
}

uint64_t sub_24E2ACFD4()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_13_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;

  OUTLINED_FUNCTION_12_5();

  return v3();
}

uint64_t sub_24E2AD0D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_28_6();

  return sub_24E04A9CC(a1);
}

unint64_t sub_24E2AD164()
{
  result = qword_27F1E9C80;
  if (!qword_27F1E9C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9C70, &qword_24E38AEB0);
    sub_24E2AD1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9C80);
  }

  return result;
}

unint64_t sub_24E2AD1F0()
{
  result = qword_27F1E9C88;
  if (!qword_27F1E9C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9C90, &qword_24E38AEC0);
    sub_24DFB4C28(&qword_27F1E9C98, &qword_27F1E9CA0, &qword_24E38AEC8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9C88);
  }

  return result;
}

unint64_t sub_24E2AD2A8()
{
  result = qword_27F1E9CA8;
  if (!qword_27F1E9CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9C58, &qword_24E38AE98);
    sub_24E2AD334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9CA8);
  }

  return result;
}

unint64_t sub_24E2AD334()
{
  result = qword_27F1E9CB0;
  if (!qword_27F1E9CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9CB8, &qword_24E38AED0);
    sub_24DFB4C28(&qword_27F1E9CC0, &qword_27F1E9CC8, &qword_24E38AED8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9CB0);
  }

  return result;
}

uint64_t sub_24E2AD3EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E2AD448()
{
  v1 = OUTLINED_FUNCTION_27_5();
  v2(v1);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_24E2AD49C()
{
  result = qword_27F1E9D48;
  if (!qword_27F1E9D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E5328, &qword_24E37BE40);
    sub_24E2AD6CC(&qword_27F1E9D50, type metadata accessor for EditNicknameSection, &unk_24E36BB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9D48);
  }

  return result;
}

unint64_t sub_24E2AD558()
{
  result = qword_27F1E9D68;
  if (!qword_27F1E9D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9B58, &qword_24E38AD58);
    sub_24E2AD5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9D68);
  }

  return result;
}

unint64_t sub_24E2AD5E4()
{
  result = qword_27F1E9D70;
  if (!qword_27F1E9D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9B50, &qword_24E38AD50);
    sub_24DFB4C28(&qword_27F1E9D78, &qword_27F1E9B70, &unk_24E38AD70, MEMORY[0x277CDDB50]);
    sub_24E2AD6CC(&qword_27F1DE1E0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9D70);
  }

  return result;
}

uint64_t sub_24E2AD6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_172(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_24E2AD3EC(v3, v2, type metadata accessor for ProfileCreationOnboardingView);
}

uint64_t OUTLINED_FUNCTION_2_119()
{

  return sub_24DFC8700(0, 0, v0, &unk_24E38AE58, v1);
}

uint64_t OUTLINED_FUNCTION_22_29()
{

  return type metadata accessor for ProfileCreationOnboardingView(0);
}

uint64_t OUTLINED_FUNCTION_31_14()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_32_19@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;

  return sub_24E2AC168(v3, a1 + v4);
}

uint64_t OUTLINED_FUNCTION_33_13(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_34_15()
{
}

uint64_t OUTLINED_FUNCTION_35_13()
{
}

uint64_t OUTLINED_FUNCTION_37_11()
{
}

uint64_t OUTLINED_FUNCTION_38_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_13@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = v2;
  a1[3] = a2;
  a1[4] = v4;

  return sub_24E2AC168(v3, a1 + v5);
}

id sub_24E2AD940(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24E343368();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v43 - v15;
  if (a2)
  {
    if (!a1)
    {
      v28 = *(v3 + 24);
      v29 = sub_24E347CF8();
      v31 = v30;
      v32 = sub_24E347CF8();
      sub_24E08FD58(v29, v31, v32, v33, v28);
      sub_24E343358();
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
      v34 = OBJC_IVAR____TtC12GameCenterUI28AuthenticationMetricsHandler_authStartDate;
      swift_beginAccess();
      sub_24E2AE410(v16, v3 + v34);
      return swift_endAccess();
    }

    if (a1 == 1)
    {
      v17 = *(v3 + 24);
      v18 = sub_24E347CF8();
      v20 = v19;
      v21 = sub_24E347CF8();
      sub_24E08FD58(v18, v20, v21, v22, v17);
      v23 = OBJC_IVAR____TtC12GameCenterUI28AuthenticationMetricsHandler_authStartDate;
      swift_beginAccess();
      sub_24E1578C4(v3 + v23, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v6) == 1)
      {
        return sub_24E1ACE18(v12);
      }

      (*(v7 + 32))(v9, v12, v6);
      v35 = sub_24E347CF8();
      v37 = v36;
      v38 = sub_24E347CF8();
      v40 = v39;
      v41 = sub_24E3432E8();
      v42 = sub_24E347CB8();
      sub_24E2AE35C(v35, v37, v38, v40, v41, v42, v17);

      return (*(v7 + 8))(v9, v6);
    }

    v27 = *(v3 + 16);
    v26 = sel_onboardingDidBegin;
  }

  else
  {
    v25 = *(v3 + 16);
    [v25 reportEventForOnboardingFlowAction_];
    v26 = sel_onboardingDidEnd;
    v27 = v25;
  }

  return [v27 v26];
}

void sub_24E2ADCBC(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = *(v2 + 16);
      [v4 reportEventForOnboardingFlowAction_];

      [v4 onboardingDidEnd];
    }

    else
    {
      v8 = *(v2 + 24);
      v9 = sub_24E347CF8();
      v11 = v10;
      v13 = sub_24E347CF8();

      sub_24E08FD58(v9, v11, v13, v12, v8);
    }
  }

  else if (a1)
  {
    v5 = *(v2 + 24);
    v6 = a1;
    v7 = sub_24E3431A8();
    [v5 reportPlayerAuthenticationFailure_];

    sub_24E2AE34C(a1, 0);
  }
}

void sub_24E2ADDEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (!a2)
  {
    v6 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = sub_24E347CB8();
  if (v5)
  {
LABEL_3:
    v5 = sub_24E347CB8();
  }

LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80, &qword_24E37B8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  sub_24E347CF8();
  v8 = MEMORY[0x277D837D0];
  sub_24E348918();
  v10 = *&v4[OBJC_IVAR____TtC12GameCenterUIP33_5352B16A5002CB36501838DE2FD945EE18ReporterWithRefApp_refApp];
  v9 = *&v4[OBJC_IVAR____TtC12GameCenterUIP33_5352B16A5002CB36501838DE2FD945EE18ReporterWithRefApp_refApp + 8];
  *(inited + 96) = v8;
  *(inited + 72) = v10;
  *(inited + 80) = v9;

  v11 = sub_24E347C28();
  sub_24DFD8E4C(v6, v5, v11, v4);
}

uint64_t sub_24E2AE048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12GameCenterUI28AuthenticationMetricsHandler_authStartDate;
  v7 = sub_24E343368();
  __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  v8 = (v3 + OBJC_IVAR____TtC12GameCenterUI28AuthenticationMetricsHandler_refApp);
  *v8 = a1;
  v8[1] = a2;
  v9 = type metadata accessor for ReporterWithRefApp();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC12GameCenterUIP33_5352B16A5002CB36501838DE2FD945EE18ReporterWithRefApp_refApp];
  *v11 = a1;
  *(v11 + 1) = a2;
  v14.receiver = v10;
  v14.super_class = v9;
  swift_bridgeObjectRetain_n();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  *(v3 + 24) = v12;
  objc_allocWithZone(GKOnboardingMetricsHandler);
  *(v3 + 16) = sub_24E2AE2D4(v12, a1, a2);
  return v3;
}

uint64_t sub_24E2AE134()
{
  sub_24E1ACE18(v0 + OBJC_IVAR____TtC12GameCenterUI28AuthenticationMetricsHandler_authStartDate);

  return v0;
}

uint64_t sub_24E2AE180()
{
  sub_24E2AE134();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AuthenticationMetricsHandler(uint64_t a1)
{
  result = qword_27F1E9D98;
  if (!qword_27F1E9D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2AE22C(uint64_t a1)
{
  sub_24E16C844(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_24E2AE2D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithReporter:a1 refApp:v5];

  return v6;
}

void sub_24E2AE34C(id a1, char a2)
{
  if (!a2)
  {
  }
}

void sub_24E2AE35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_24E347CB8();

  v11 = sub_24E347CB8();

  [a7 reportEvent:v10 type:v11 startTime:a5 refApp:a6];
}

uint64_t sub_24E2AE410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890, qword_24E377010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_24E2AE4E4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlayerProfileInfoBarCollectionViewCell(0);
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  v1 = *&v0[qword_280BE0C10];
  sub_24E15DE38(MEMORY[0x277D84F90]);
  sub_24E15ED0C();
  return [v1 setNeedsLayout];
}

void sub_24E2AE554(void *a1)
{
  v1 = a1;
  sub_24E2AE4E4();
}

id sub_24E2AE59C()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = objc_opt_self();
  v4 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v5 = [objc_opt_self() itemWithLayoutSize_];
  v6 = [v4 widthDimension];
  v7 = [v4 heightDimension];
  v8 = [v3 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24E369990;
  *(v10 + 32) = v5;
  sub_24E1698C0();
  v11 = v5;
  v12 = sub_24E347EE8();

  v13 = [v9 verticalGroupWithLayoutSize:v8 subitems:v12];

  v14 = [objc_opt_self() sectionWithGroup_];
  return v14;
}

double sub_24E2AE7AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_24E348BC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  sub_24E120A58(a2, &v20 - v13);
  sub_24E120A58(a3, &v14[*(v12 + 56)]);
  if (qword_27F1DDC48 != -1)
  {
    swift_once();
  }

  v15 = sub_24E3444F8();
  __swift_project_value_buffer(v15, qword_27F20B4E8);
  v16 = [a4 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();
  v18 = v17;

  (*(v8 + 8))(v10, v7);
  sub_24E120AC8(v14);
  return v18;
}

id sub_24E2AE984(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PlayerProfileInfoBarCollectionViewCell(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_24E2AEA10(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlayerProfileInfoBarCollectionViewCell(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E2AEAA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerProfileInfoBarCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PlayerProfileInfoBarCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E9DA8;
  if (!qword_27F1E9DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E2AEB60(uint64_t a1)
{
  result = sub_24E2AECA0(&qword_27F1E9DB8, type metadata accessor for PlayerProfileInfoBarCollectionViewCell, &unk_24E38B0E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E2AEC48(uint64_t a1)
{
  result = sub_24E2AECA0(&qword_27F1E6438, type metadata accessor for PlayerProfileInfoBarCollectionViewCell, &unk_24E38B118);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E2AECA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24E2AECE8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8, &qword_24E38B1D0);
  OUTLINED_FUNCTION_0_14();
  v28 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for SmallPlayerCardData(0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9DE8, &qword_24E38B1D8);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_12_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C0, &unk_24E37E500);
  sub_24E347128();

  if (v30 >= 1)
  {
    swift_getKeyPath();
    sub_24E347128();

    v21 = v30;
    if (sub_24DFD8654())
    {
      sub_24DFFA844();
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25303F560](0, v21);
      }

      else
      {
        v22 = *(v21 + 32);
      }

      v23 = v22;

      SmallPlayerCardData.init(suggestedFriend:)(v23, v20);
      v24 = 0;
    }

    else
    {

      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v20, v24, 1, v7);
    sub_24E2AFDB4(v20, v17);
    if (__swift_getEnumTagSinglePayload(v17, 1, v7) == 1)
    {
      sub_24E2AFE24(v20);
      v20 = v17;
    }

    else
    {
      sub_24E025A08(v17, v13);
      type metadata accessor for SmallPlayerCardView();
      sub_24E2AFE8C(v13, v10);
      OUTLINED_FUNCTION_0_173();
      sub_24E2AFEF0(v25, v26, &protocol conformance descriptor for SmallPlayerCardData);
      sub_24E347158();
      OUTLINED_FUNCTION_1_16();
      static SmallPlayerCardView.size(fitting:component:layoutEnvironment:)();
      (*(v28 + 8))(v6, v2);
      sub_24E20DB48(v13);
    }

    sub_24E2AFE24(v20);
  }

  OUTLINED_FUNCTION_1_16();
}

void sub_24E2AF058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7EC8, &qword_24E38B1D0);
  OUTLINED_FUNCTION_0_14();
  v45 = v3;
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - v5;
  v51 = type metadata accessor for SmallPlayerCardData(0);
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v50 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v49 = &v44 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E60C0, &unk_24E37E500);
  sub_24E347128();

  v16 = v57;
  v17 = sub_24DFD8654();
  v18 = 0;
  v56 = (v16 & 0xC000000000000001);
  v19 = MEMORY[0x277D84F90];
  while (v17 != v18)
  {
    if (v56)
    {
      v20 = MEMORY[0x25303F560](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v20 = *(v16 + 8 * v18 + 32);
    }

    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v21 = v20;
    SmallPlayerCardData.init(suggestedFriend:)(v21, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E078860();
      v19 = v25;
    }

    v22 = *(v19 + 16);
    if (v22 >= *(v19 + 24) >> 1)
    {
      sub_24E078860();
      v19 = v26;
    }

    *(v19 + 16) = v22 + 1;
    OUTLINED_FUNCTION_3_115();
    sub_24E025A08(v15, v23 + v24 * v22);

    ++v18;
  }

  v27 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_smallPlayerCards;
  v28 = v46;
  swift_beginAccess();
  v29 = *&v28[v27];
  v30 = sub_24DFD8654();
  v31 = v29 & 0xC000000000000001;
  v32 = v29 & 0xFFFFFFFFFFFFFF8;
  v56 = (v45 + 8);

  v33 = 0;
  v47 = v30;
  v48 = v7;
  v34 = v52;
  while (v30 != v33)
  {
    if (v31)
    {
      v35 = MEMORY[0x25303F560](v33, v29);
    }

    else
    {
      if (v33 >= *(v32 + 16))
      {
        goto LABEL_28;
      }

      v35 = *(v29 + 8 * v33 + 32);
    }

    v36 = v35;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_27;
    }

    if (v33 >= *(v19 + 16))
    {
      [v35 setHidden_];
    }

    else
    {
      OUTLINED_FUNCTION_3_115();
      v39 = v32;
      v40 = v31;
      v41 = v49;
      sub_24E2AFE8C(v37 + v38 * v33, v49);
      [v36 setHidden_];
      sub_24E2AFE8C(v41, v50);
      OUTLINED_FUNCTION_0_173();
      sub_24E2AFEF0(&qword_27F1E2640, v42, &protocol conformance descriptor for SmallPlayerCardData);
      sub_24E347158();
      sub_24E20D060(v34, v54, v55);

      (*v56)(v34, v53);
      v43 = v41;
      v31 = v40;
      v32 = v39;
      v30 = v47;
      sub_24E20DB48(v43);
    }

    ++v33;
  }

  [v46 setNeedsLayout];
}

uint64_t sub_24E2AF4C0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_smallPlayerCards;
  result = OUTLINED_FUNCTION_9_16(a1);
  v4 = *(v1 + v2);
  if (v4 >> 62)
  {
    result = sub_24E348878();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25303F560](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      sub_24DFD7988();
    }
  }

  return result;
}

void sub_24E2AF590(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_scrollView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v11 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_stackView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *&v4[OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_smallPlayerCards] = MEMORY[0x277D84F90];
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OUTLINED_FUNCTION_1_16();
  [v14 v15];
  v16 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_scrollView;
  [v12 addSubview_];
  v17 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_stackView;
  [*&v12[OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_stackView] setAxis_];
  [*&v12[v17] setSpacing_];
  [*&v12[v16] addSubview_];
  [*&v12[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  [objc_opt_self() _gkInstallEdgeConstraintsForView_containedWithinParentView_];
  v18 = qword_27F1E9DC8;
  if (qword_27F1E9DC8 < 1)
  {
LABEL_10:
    __break(1u);
  }

  else
  {
    type metadata accessor for SmallPlayerCardView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_smallPlayerCards;
    v21 = 1;
    while (1)
    {
      v22 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      swift_beginAccess();
      v23 = v22;
      MEMORY[0x25303EA30]();
      if (*((*&v12[v20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v12[v20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      swift_endAccess();
      [*&v12[v17] addArrangedSubview_];

      if (v18 == v21)
      {
        break;
      }

      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }
  }
}

void sub_24E2AF84C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_scrollView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_stackView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_smallPlayerCards) = MEMORY[0x277D84F90];
  sub_24E348AE8();
  __break(1u);
}

void sub_24E2AF924(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_smallPlayerCards;
  OUTLINED_FUNCTION_9_16(a1);
  v3 = *(v1 + v2);
  v13 = MEMORY[0x277D84F90];
  v4 = sub_24DFD8654();

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25303F560](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v8 = MEMORY[0x25303F560](0, v3);
      goto LABEL_15;
    }

    if ([v6 isHidden])
    {
    }

    else
    {
      sub_24E348A48();
      sub_24E348A78();
      sub_24E348A88();
      sub_24E348A58();
    }
  }

  v3 = v13;
  if (sub_24DFD8654())
  {
    sub_24DFFA844();
    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_20;
    }

    v8 = *(v13 + 32);
LABEL_15:
    v9 = v8;

    v10 = OUTLINED_FUNCTION_1_16();
    [v11 v12];

    goto LABEL_17;
  }

LABEL_17:
  OUTLINED_FUNCTION_1_16();
}

id sub_24E2AFB30()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI35ActivityFeedAddFriendSuggestionView_scrollView];
  [v0 bounds];
  return [v1 setFrame_];
}

uint64_t sub_24E2AFC08(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC12GameCenterUI26ActivityFeedAddFriendsData_suggestedFriends) = *a1;
}

uint64_t sub_24E2AFDB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9DE8, &qword_24E38B1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2AFE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9DE8, &qword_24E38B1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E2AFE8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallPlayerCardData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2AFEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E2AFF68()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F1E9DF0);
  __swift_project_value_buffer(v4, qword_27F1E9DF0);
  if (qword_27F1DDFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_24E344158();
  v6 = __swift_project_value_buffer(v5, &unk_27F20BB10);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

char *sub_24E2B013C()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = v38 - v4;
  v6 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v7 = type metadata accessor for PlayerCardTheme(0);
  v8 = __swift_project_value_buffer(v7, qword_27F20BF00);
  v9 = *(v7 + 32);
  v10 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  (*(v11 + 16))(v5, v8 + v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  v12 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel(0));
  *(v1 + v6) = OUTLINED_FUNCTION_13_55();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_tapGestureRecognizer) = 0;
  v13 = (v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_style);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *(v13 + 41) = 0u;
  v14 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachment;
  v15 = type metadata accessor for FooterData.Attachment(0);
  OUTLINED_FUNCTION_4_12(v1 + v14, v16, v17, v15);
  v18 = (v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentTapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_separator;
  type metadata accessor for SeparatorView();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = type metadata accessor for SectionFooterView(0);
  v38[4] = v1;
  v38[5] = v21;
  v22 = OUTLINED_FUNCTION_28();
  v25 = objc_msgSendSuper2(v23, v24, v22);
  v26 = OUTLINED_FUNCTION_1_16();
  [v27 v28];
  v38[3] = v21;
  v38[0] = v25;
  v29 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v30 = sub_24E2BE570(v38, sel_handleTapWithGestureRecognizer_);
  v31 = *&v25[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_tapGestureRecognizer];
  *&v25[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_tapGestureRecognizer] = v30;
  v32 = v30;

  [v25 addGestureRecognizer_];
  v33 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel;
  v34 = [*&v25[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel] layer];
  if (*(v8 + *(v7 + 56) + 8))
  {
    v35 = sub_24E347CB8();
  }

  else
  {
    v35 = 0;
  }

  [v34 setCompositingFilter_];

  swift_unknownObjectRelease();
  [v25 addSubview_];
  v36 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_separator;
  [*&v25[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_separator] setHidden_];
  [v25 addSubview_];

  return v25;
}

void sub_24E2B04A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v7 = type metadata accessor for PlayerCardTheme(0);
  v8 = __swift_project_value_buffer(v7, qword_27F20BF00);
  v9 = *(v7 + 32);
  v10 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  (*(v11 + 16))(v5, v8 + v9, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  v12 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel(0));
  *(v1 + v6) = OUTLINED_FUNCTION_13_55();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_tapGestureRecognizer) = 0;
  v13 = (v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_style);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  *(v13 + 41) = 0u;
  v14 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachment;
  v15 = type metadata accessor for FooterData.Attachment(0);
  OUTLINED_FUNCTION_4_12(v1 + v14, v16, v17, v15);
  v18 = (v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentTapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_separator;
  type metadata accessor for SeparatorView();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_24E348AE8();
  __break(1u);
}

id sub_24E2B06D0(void *a1)
{
  result = [a1 removeFromSuperview];
  if (*&v1[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView])
  {

    return [v1 insertSubview_below_];
  }

  return result;
}

void sub_24E2B0730(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView) = a1;
  v2 = a1;
  sub_24E2B06D0(v3);
}

id sub_24E2B07EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionFooterView(0);
  return objc_msgSendSuper2(&v2, sel_layoutMargins);
}

void sub_24E2B089C()
{
  OUTLINED_FUNCTION_29();
  v4 = type metadata accessor for SectionFooterView(0);
  v1 = OUTLINED_FUNCTION_28();
  objc_msgSendSuper2(v2, v3, v1, v0, v4);
  sub_24E2B08F0();
}

void sub_24E2B08F0()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView];
  if (v1)
  {
    v2 = v1;
    [v0 layoutMargins];
    [v2 setLayoutMargins_];
  }
}

double sub_24E2B096C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  [v1 layoutMargins];
  if (qword_27F1DDBF8 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_27F1DDBF8);
  }

  v11 = sub_24E3444F8();
  __swift_project_value_buffer(v11, qword_27F1E9DF0);
  sub_24E343F98();
  sub_24E344198();
  (*(v6 + 8))(v10, v4);
  v12 = *&v1[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel];
  v13 = OUTLINED_FUNCTION_1_16();
  [v14 v15];
  v17 = v16;
  v18 = [v12 text];
  if (v18)
  {
    v19 = v18;
    sub_24E347CF8();
  }

  if (*&v2[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView])
  {
    v20 = OUTLINED_FUNCTION_1_16();
    [v21 v22];
  }

  [v2 layoutMargins];
  return v17 + v23 + v24;
}

void sub_24E2B0C34()
{
  OUTLINED_FUNCTION_12_19();
  v2 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v6 = OUTLINED_FUNCTION_12_20();
  v38.receiver = v0;
  v38.super_class = type metadata accessor for SectionFooterView(v6);
  objc_msgSendSuper2(&v38, sel_layoutSubviews);
  v7 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView;
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView];
  if (v8)
  {
    v9 = v8;
    OUTLINED_FUNCTION_15_42();
    [v9 measurementsWithFitting:v0 in:{v10, v11}];
    OUTLINED_FUNCTION_15_42();
    CGRectGetMinX(v39);
    OUTLINED_FUNCTION_15_42();
    CGRectGetMinY(v40);
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_14_44();
    OUTLINED_FUNCTION_4_99(v12, v13);
    [v9 setFrame_];
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_20_2();
      swift_once();
    }

    v14 = type metadata accessor for PlayerCardTheme(0);
    __swift_project_value_buffer(v14, qword_27F20BF00);
    v15 = [v0 traitCollection];
    v17 = sub_24E336558(v15, v16);

    [v9 _setCornerRadius_];
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_24_20();
    OUTLINED_FUNCTION_0_33();
    CGRectGetMinX(v41);
    OUTLINED_FUNCTION_15_42();
    CGRectGetMinY(v42);
    OUTLINED_FUNCTION_15_42();
    CGRectGetWidth(v43);
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_24_20();
    OUTLINED_FUNCTION_0_33();
    CGRectGetMinX(v44);
    if (qword_27F1DDA08 != -1)
    {
      swift_once();
    }

    v18 = OUTLINED_FUNCTION_1_16();
    [v19 v20];
  }

  v21 = *&v0[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel];
  OUTLINED_FUNCTION_15_42();
  v23 = v22;
  v25 = v24;
  OUTLINED_FUNCTION_24_20();
  [v21 measurementsWithFitting:v0 in:{v23 - v26 - v27, v25 - v28 - v29}];
  if (qword_27F1DDBF8 != -1)
  {
    OUTLINED_FUNCTION_3_116(&qword_27F1DDBF8);
  }

  v30 = sub_24E3444F8();
  __swift_project_value_buffer(v30, qword_27F1E9DF0);
  sub_24E343F98();
  sub_24E344198();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15_42();
  OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_0_33();
  CGRectGetMinX(v45);
  v31 = *&v0[v7];
  if (v31)
  {
    [v31 frame];
    CGRectGetMaxY(v46);
  }

  else
  {
    OUTLINED_FUNCTION_15_42();
    OUTLINED_FUNCTION_14_44();
    v47.origin.x = OUTLINED_FUNCTION_4_99(v32, v33);
    v47.origin.y = v34;
    v47.size.width = v35;
    CGRectGetMinY(v47);
  }

  OUTLINED_FUNCTION_15_42();
  OUTLINED_FUNCTION_14_44();
  OUTLINED_FUNCTION_4_99(v36, v37);
  [v21 setFrame_];
  OUTLINED_FUNCTION_11_18();
}

void sub_24E2B1084(void *a1)
{
  [a1 locationInView_];
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView);
  if (v4 && (v5 = v2, v6 = v3, [v4 frame], v8.x = v5, v8.y = v6, v4 = CGRectContainsPoint(v9, v8), v4))
  {

    sub_24E2B1184(v4);
  }

  else
  {

    sub_24E2B1178(v4);
  }
}

void sub_24E2B1190(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  if (v3)
  {

    v3(v4);
    v5 = OUTLINED_FUNCTION_19_1();

    sub_24DE73FA0(v5, v6);
  }
}

uint64_t sub_24E2B11F0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v28[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70, &unk_24E369E70);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_12_20();
  v9 = type metadata accessor for SectionFooterView(v8);
  v30.receiver = v0;
  v30.super_class = v9;
  objc_msgSendSuper2(&v30, sel_prepareForReuse);
  memset(v29, 0, 57);
  v10 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_style;
  OUTLINED_FUNCTION_37_12(&v0[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_style], v28);
  sub_24E2B369C(v29, &v0[v10]);
  swift_endAccess();
  [*&v0[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel] setText_];
  sub_24E2B0730(0);
  v11 = type metadata accessor for FooterData.Attachment(0);
  OUTLINED_FUNCTION_4_12(v1, v12, v13, v11);
  v14 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachment;
  OUTLINED_FUNCTION_37_12(&v0[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachment], v29);
  sub_24E2B36F8(v1, &v0[v14]);
  swift_endAccess();
  [*&v0[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_separator] setHidden_];
  v15 = OUTLINED_FUNCTION_32_20(OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentTapAction);
  *v16 = 0;
  v16[1] = 0;
  sub_24DE73FA0(v15, v17);
  v18 = OUTLINED_FUNCTION_32_20(OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction);
  *v19 = 0;
  v19[1] = 0;
  sub_24DE73FA0(v18, v20);
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_20_2();
    swift_once();
  }

  v21 = type metadata accessor for PlayerCardTheme(0);
  v22 = __swift_project_value_buffer(v21, qword_27F20BF00);
  v23 = *(v21 + 32);
  v24 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  (*(v25 + 16))(v5, v22 + v23, v24);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v24);
  return sub_24E0AED24(v5);
}

void sub_24E2B1484()
{
  OUTLINED_FUNCTION_12_19();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v92 = v13;
  v93 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v91 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFFA8, &qword_24E387320);
  OUTLINED_FUNCTION_0_14();
  v88 = v17;
  v89 = v16;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_3();
  v87 = v19;
  v85 = type metadata accessor for AchievementsLinkData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_21_20();
  v86 = v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E50C0, &qword_24E3855F0);
  OUTLINED_FUNCTION_0_14();
  v82 = v23;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v25);
  v81[0] = type metadata accessor for DetailData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v81 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70, &unk_24E369E70);
  OUTLINED_FUNCTION_4_5(v33);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v34);
  v36 = v81 - v35;
  v37 = type metadata accessor for FooterData.Attachment(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_1();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v81 - v43;
  ObjectType = swift_getObjectType();
  v95 = v1;
  v45 = [v1 traitCollection];
  v46 = v11 - v5 - v3;
  v97 = v46;
  v98 = 0.0;
  v47 = *(type metadata accessor for FooterData(0) + 28);
  v94 = v7;
  sub_24E0E8958(v7 + v47, v36, &qword_27F1DEE70, &unk_24E369E70);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_24DF8BFF4(v36, &qword_27F1DEE70, &unk_24E369E70);
    v48 = 0.0;
  }

  else
  {
    v49 = OUTLINED_FUNCTION_7_69();
    sub_24E2B3640(v49, v44, v50);
    OUTLINED_FUNCTION_9_63();
    v51 = OUTLINED_FUNCTION_19_1();
    sub_24E2B35E4(v51, v52, v53);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = v86;
      sub_24E2B3640(v41, v86, type metadata accessor for AchievementsLinkData);
      type metadata accessor for AchievementsLinkView();
      sub_24E2B35E4(v54, v83, type metadata accessor for AchievementsLinkData);
      sub_24E2B38A0(&qword_27F1DFFA0, type metadata accessor for AchievementsLinkData, &unk_24E376678);
      v55 = v87;
      sub_24E347158();
      v56 = sub_24DFD9D9C(v11, v9);
      v58 = v57;
      (*(v88 + 8))(v55, v89, v56);
      v59 = type metadata accessor for AchievementsLinkData;
      v60 = v54;
    }

    else
    {
      sub_24E2B3640(v41, v32, type metadata accessor for DetailData);
      type metadata accessor for DetailView();
      sub_24E2B35E4(v32, v29, type metadata accessor for DetailData);
      sub_24E2B38A0(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
      v61 = v81[1];
      sub_24E347158();
      v62 = sub_24E15AF68(v46, v61, v95);
      v58 = v63;
      (*(v82 + 8))(v61, v84, v62);
      v59 = type metadata accessor for DetailData;
      v60 = v32;
    }

    sub_24E2B3774(v60, v59);
    OUTLINED_FUNCTION_8_79();
    sub_24E2B3774(v44, v64);
    v48 = v58 + 0.0;
    v98 = v58 + 0.0;
  }

  v65 = v94[1];
  if (v65)
  {
    v66 = *v94;
    sub_24DF88A8C(0, &qword_27F1DEE28, 0x277D74300);
    v67 = qword_27F1DDFB0;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = sub_24E344158();
    v69 = __swift_project_value_buffer(v68, &unk_27F20BB10);
    v70 = v45;
    v71 = MEMORY[0x25303F0C0](v69, v45);
    sub_24E1AE614(v66, v65);
    v72 = MEMORY[0x25303F0C0](v69, v70);
    v73 = v71;
    sub_24E344398();
    sub_24E3443A8();
    sub_24E344868();
    swift_allocObject();
    v74 = sub_24E344858();
    sub_24DFC1764();
    v96 = v74;
    sub_24E3440D8(v46, 1.79769313e308);
    v76 = v75;
    swift_unknownObjectRelease();
    if (qword_27F1DDBF8 != -1)
    {
      OUTLINED_FUNCTION_3_116(&qword_27F1DDBF8);
    }

    v77 = sub_24E3444F8();
    __swift_project_value_buffer(v77, qword_27F1E9DF0);
    v78 = v91;
    sub_24E343F98();
    sub_24E3444C8();
    v80 = v79;

    (*(v92 + 8))(v78, v93);
    v98 = v76 + v48 + v80;
    v45 = v70;
  }

  sub_24E348548();

  OUTLINED_FUNCTION_11_18();
}

uint64_t sub_24E2B1C50(uint64_t a1, uint64_t a2)
{
  v138 = a2;
  v3 = type metadata accessor for AchievementsLinkData(0);
  v133 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_23(v4);
  v134 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v7);
  v8 = type metadata accessor for DetailData(0);
  v129 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_29_16();
  OUTLINED_FUNCTION_23(v9);
  v130 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v12);
  v140 = type metadata accessor for FooterData.Attachment(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E26C0, &unk_24E372F30);
  OUTLINED_FUNCTION_4_5(v16);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  OUTLINED_FUNCTION_4_5(v19);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70, &unk_24E369E70);
  v23 = OUTLINED_FUNCTION_4_5(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v24);
  v26 = v126 - v25;
  v27 = &qword_27F1E6058;
  v28 = &unk_24E38CB30;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6058, &unk_24E38CB30);
  OUTLINED_FUNCTION_4_5(v29);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v30);
  v32 = v126 - v31;
  v33 = type metadata accessor for Shelf.Presentation(0);
  v34 = v33 - 8;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_1();
  v35 = OUTLINED_FUNCTION_12_20();
  v36 = type metadata accessor for FooterData(v35);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_1();
  v40 = (v39 - v38);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  sub_24E0E8958(v2 + *(v34 + 28), v32, &qword_27F1E6058, &unk_24E38CB30);
  sub_24E2B3774(v2, type metadata accessor for Shelf.Presentation);
  if (__swift_getEnumTagSinglePayload(v32, 1, v36) == 1)
  {
    return sub_24DF8BFF4(v32, &qword_27F1E6058, &unk_24E38CB30);
  }

  sub_24E2B3640(v32, v40, type metadata accessor for FooterData);
  sub_24DF8BBD0((v40 + 3), v147);
  v42 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_style;
  v43 = v141;
  OUTLINED_FUNCTION_37_12(&v141[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_style], &v146);
  sub_24E2B369C(v147, &v43[v42]);
  swift_endAccess();
  v44 = *(v36 + 28);
  sub_24E0E8958(v40 + v44, v26, &qword_27F1DEE70, &unk_24E369E70);
  v45 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachment;
  OUTLINED_FUNCTION_37_12(&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachment], v147);
  sub_24E2B36F8(v26, &v43[v45]);
  swift_endAccess();
  sub_24DF8BBD0(&v43[v42], v147);
  if (v149 == 1)
  {
    v46 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel];
    v52 = [objc_opt_self() systemRedColor];
    v53 = OUTLINED_FUNCTION_20_20();
    [v53 v54];

    [v46 setNumberOfLines_];
    OUTLINED_FUNCTION_12_51();
    if (v55)
    {
      v56 = sub_24E347CB8();
    }

    else
    {
      v56 = 0;
    }

    v76 = OUTLINED_FUNCTION_20_20();
    [v76 v77];

    v78 = &v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction];
    v79 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction];
    v80 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction + 8];
    *v78 = 0;
    *(v78 + 1) = 0;
    sub_24DE73FA0(v79, v80);
    if (qword_27F1DDFB8 != -1)
    {
      swift_once();
    }

    v81 = sub_24E344158();
    v82 = __swift_project_value_buffer(v81, &unk_27F20BB28);
    v83 = v136;
    (*(*(v81 - 8) + 16))(v136, v82, v81);
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v81);
    sub_24E0AED24(v83);
    goto LABEL_27;
  }

  if (!v149)
  {
    v46 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel];
    v47 = [objc_opt_self() secondaryLabelColor];
    v48 = OUTLINED_FUNCTION_20_20();
    [v48 v49];

    [v46 setNumberOfLines_];
    OUTLINED_FUNCTION_12_51();
    if (v50)
    {
      v51 = sub_24E347CB8();
    }

    else
    {
      v51 = 0;
    }

    v71 = OUTLINED_FUNCTION_20_20();
    [v71 v72];

    v73 = &v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction];
    v74 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction];
    v75 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction + 8];
    *v73 = 0;
    *(v73 + 1) = 0;
    sub_24DE73FA0(v74, v75);
    goto LABEL_27;
  }

  v57 = v147[0];
  v58 = v147[1];
  sub_24DE56CE8(&v148, &v146);
  v59 = *v40;
  v60 = v40[1];
  if (!v60)
  {

    goto LABEL_20;
  }

  if (!v58)
  {
LABEL_20:
    v61 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel];
    v84 = [objc_opt_self() systemBlueColor];
    [v61 setTextColor_];

    [v61 setAttributedText_];
    if (v60)
    {
      v70 = sub_24E347CB8();
    }

    else
    {
      v70 = 0;
    }

    v26 = v142;
    v27 = v139;
    [v61 setText_];
    goto LABEL_26;
  }

  v61 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_footerLabel];
  v62 = v40[2];

  [v61 setTextColor_];
  sub_24DF88A8C(0, &qword_27F1E2410, 0x277CCAB48);

  v136 = sub_24E079130();
  *&v145 = v59;
  *(&v145 + 1) = v60;
  v143 = v57;
  v144 = v58;
  v63 = sub_24E343428();
  v64 = v127;
  OUTLINED_FUNCTION_4_12(v127, v65, v66, v63);
  v126[1] = sub_24DF90C4C();
  v67 = sub_24E348768();
  v126[0] = v68;
  LOBYTE(v62) = v69;
  sub_24DF8BFF4(v64, &qword_27F1E26C0, &unk_24E372F30);

  if (v62)
  {

    v26 = v142;
    v70 = v136;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680, qword_24E36E390);
    inited = swift_initStackObject();
    v86 = MEMORY[0x277D740C0];
    *(inited + 16) = xmmword_24E367D20;
    v87 = *v86;
    *(inited + 32) = *v86;
    v88 = objc_opt_self();
    v127 = v59;
    v89 = v88;
    v90 = v87;
    v91 = [v89 systemBlueColor];
    *(inited + 64) = sub_24DF88A8C(0, &qword_27F1E5FD0, 0x277D75348);
    *(inited + 40) = v91;
    type metadata accessor for Key(0);
    sub_24E2B38A0(&qword_27F1DE5D0, type metadata accessor for Key, &unk_24E3690F8);
    sub_24E347C28();
    v92 = sub_24E347BE8();

    *&v145 = v67;
    *(&v145 + 1) = v126[0];
    v143 = v127;
    v144 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9E08, &qword_24E38B2D0);
    sub_24E2B38E8();
    sub_24E348678();
    v70 = v136;
    v93 = OUTLINED_FUNCTION_20_20();
    [v93 v94];

    v26 = v142;
  }

  [v61 setText_];
  [v61 setAttributedText_];
  v27 = v139;
LABEL_26:

  [v61 setNumberOfLines_];
  OUTLINED_FUNCTION_21_2();
  v95 = swift_allocObject();
  swift_weakInit();
  sub_24DE56CE8(&v146, &v145);
  v46 = swift_allocObject();
  v46[2] = v95;
  sub_24DE56CE8(&v145, (v46 + 3));
  v96 = &v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction];
  v97 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction];
  v98 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction + 8];
  *v96 = sub_24E2B3768;
  v96[1] = v46;

  sub_24DE73FA0(v97, v98);

  v28 = v140;
LABEL_27:
  sub_24E0E8958(v40 + v44, v27, &qword_27F1DEE70, &unk_24E369E70);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_24DF8BFF4(v27, &qword_27F1DEE70, &unk_24E369E70);
  }

  else
  {
    v99 = OUTLINED_FUNCTION_7_69();
    v100 = v137;
    sub_24E2B3640(v99, v137, v101);
    [*&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_separator] setHidden_];
    OUTLINED_FUNCTION_9_63();
    sub_24E2B35E4(v100, v26, v102);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v103 = v26;
      v104 = v132;
      sub_24E2B3640(v103, v132, type metadata accessor for AchievementsLinkData);
      type metadata accessor for AchievementsLinkView();
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v105 = OUTLINED_FUNCTION_20_30();
      sub_24DFD9D28(v105);
      v106 = v46;
      sub_24E2B0730(v46);

      OUTLINED_FUNCTION_21_2();
      swift_allocObject();
      swift_weakInit();
      sub_24E2B3640(v104, v135, type metadata accessor for AchievementsLinkData);
      OUTLINED_FUNCTION_34_16();
      v107 = swift_allocObject();
      OUTLINED_FUNCTION_25_24(v107);
      v108 = sub_24E2B37CC;
    }

    else
    {
      v109 = v26;
      v110 = v128;
      sub_24E2B3640(v109, v128, type metadata accessor for DetailData);
      type metadata accessor for DetailView();
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v111 = OUTLINED_FUNCTION_20_30();
      sub_24E15A630(v111, v112);
      v106 = v46;
      sub_24E2B0730(v46);

      OUTLINED_FUNCTION_21_2();
      swift_allocObject();
      swift_weakInit();
      sub_24E2B3640(v110, v131, type metadata accessor for DetailData);
      OUTLINED_FUNCTION_34_16();
      v113 = swift_allocObject();
      OUTLINED_FUNCTION_25_24(v113);
      v108 = sub_24E2B37F8;
    }

    v114 = &v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentTapAction];
    v115 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentTapAction];
    v116 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentTapAction + 8];
    *v114 = v108;
    v114[1] = v106;

    sub_24DE73FA0(v115, v116);

    v117 = OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView;
    v118 = *&v43[OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentView];
    if (v118)
    {
      v119 = qword_27F1DE118;
      v120 = v118;
      if (v119 != -1)
      {
        OUTLINED_FUNCTION_20_2();
        swift_once();
      }

      v121 = type metadata accessor for PlayerCardTheme(0);
      [v120 setBackgroundColor_];

      v122 = *&v43[v117];
      if (v122)
      {
        [v122 setClipsToBounds_];
        v123 = *&v43[v117];
        if (v123)
        {
          v124 = [v123 layer];
          [v124 setMaskedCorners_];
        }
      }
    }

    OUTLINED_FUNCTION_8_79();
    sub_24E2B3774(v100, v125);
  }

  [v43 setNeedsLayout];
  return sub_24E2B3774(v40, type metadata accessor for FooterData);
}

uint64_t sub_24E2B2B04(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
    sub_24E347328();
    if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
    {

      return sub_24DF8BFF4(v8, &unk_27F1EAC90, &unk_24E36E890);
    }

    else
    {
      (*(v3 + 104))(v5, *MEMORY[0x277D21E18], v2);
      sub_24E3473B8();

      (*(v3 + 8))(v5, v2);
      return (*(*(v10 - 8) + 8))(v8, v10);
    }
  }

  return result;
}

uint64_t sub_24E2B2D38(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v15 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E0E8958(a2 + 184, &v16, &qword_27F1DEE90, &unk_24E369E90);
    if (!v17)
    {

      v12 = &qword_27F1DEE90;
      v13 = &unk_24E369E90;
      v14 = &v16;
      return sub_24DF8BFF4(v14, v12, v13);
    }

    sub_24DE56CE8(&v16, v18);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
    sub_24E347328();
    if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v18);

      v12 = &unk_27F1EAC90;
      v13 = &unk_24E36E890;
      v14 = v9;
      return sub_24DF8BFF4(v14, v12, v13);
    }

    (*(v4 + 104))(v6, *MEMORY[0x277D21E18], v3);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return (*(*(v11 - 8) + 8))(v9, v11);
  }

  return result;
}

uint64_t sub_24E2B2FCC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0, &unk_24E36CD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90, &unk_24E36E890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v15 - v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E0E8958(a2 + 88, &v16, &qword_27F1DEE90, &unk_24E369E90);
    if (!v17)
    {

      v12 = &qword_27F1DEE90;
      v13 = &unk_24E369E90;
      v14 = &v16;
      return sub_24DF8BFF4(v14, v12, v13);
    }

    sub_24DE56CE8(&v16, v18);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0, &unk_24E36CD40);
    sub_24E347328();
    if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(v18);

      v12 = &unk_27F1EAC90;
      v13 = &unk_24E36E890;
      v14 = v9;
      return sub_24DF8BFF4(v14, v12, v13);
    }

    (*(v4 + 104))(v6, *MEMORY[0x277D21E18], v3);
    sub_24E3473B8();

    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return (*(*(v11 - 8) + 8))(v9, v11);
  }

  return result;
}

void sub_24E2B3324()
{
  sub_24DF8BC2C(v0 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_style);
  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachment, &qword_27F1DEE70, &unk_24E369E70);
  v1 = OUTLINED_FUNCTION_32_20(OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_labelTapAction);
  sub_24DE73FA0(v1, v2);
  v3 = OUTLINED_FUNCTION_32_20(OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_attachmentTapAction);
  sub_24DE73FA0(v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17SectionFooterView_separator);
}

id sub_24E2B33D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionFooterView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SectionFooterView(uint64_t a1)
{
  result = qword_280BE0828;
  if (!qword_280BE0828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2B3524(uint64_t a1)
{
  sub_24E2457DC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24E2B35E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E2B3640(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E2B36F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE70, &unk_24E369E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2B3774(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E2B3824(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_4_5(v3);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(v5, v6);
}

uint64_t sub_24E2B38A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E2B38E8()
{
  result = qword_27F1E9E10;
  if (!qword_27F1E9E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9E08, &qword_24E38B2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9E10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_116(uint64_t a1)
{

  return swift_once();
}

char *OUTLINED_FUNCTION_13_55()
{

  return sub_24E0AEF24(v0, 0, 2, 0, 1, 1);
}

id OUTLINED_FUNCTION_14_44()
{

  return [v0 (v1 + 3448)];
}

id OUTLINED_FUNCTION_15_42()
{

  return [v0 (v1 + 3832)];
}

id OUTLINED_FUNCTION_24_20()
{

  return [v0 (v1 + 3448)];
}

uint64_t OUTLINED_FUNCTION_25_24(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_24E2B3640(v4, a1 + v3, v2);
}

uint64_t OUTLINED_FUNCTION_35_14(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_37_12(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_24E2B3B54()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DE008 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, &unk_27F20BC18);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1E9E30 = sub_24E3444F8();
  unk_27F1E9E38 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1E9E18);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

char *sub_24E2B3D1C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textLabel;
  if (qword_27F1DE008 != -1)
  {
    OUTLINED_FUNCTION_4_14();
    swift_once();
  }

  v14 = sub_24E344158();
  v15 = __swift_project_value_buffer(v14, &unk_27F20BC18);
  (*(*(v14 - 8) + 16))(v12, v15, v14);
  v16 = objc_allocWithZone(OUTLINED_FUNCTION_7_70());
  *&v5[v13] = OUTLINED_FUNCTION_1_137();
  *&v5[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_percentComplete] = 0;
  v5[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textPosition] = 0;
  v17 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressFillView;
  type metadata accessor for ShadowView();
  *&v5[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressTrackView;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v19 = type metadata accessor for ProgressBarView();
  v43.receiver = v5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = OUTLINED_FUNCTION_7_2();
  [v22 v23];
  v24 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textLabel;
  v25 = *&v20[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textLabel];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 labelColor];
  [v27 setTextColor_];

  [v20 addSubview_];
  v29 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressTrackView;
  v30 = *&v20[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressTrackView];
  v31 = [v26 lightGrayColor];
  [v30 setBackgroundColor_];

  [v20 addSubview_];
  v32 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressFillView;
  v33 = qword_27F1DD8D0;
  v34 = *&v20[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressFillView];
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = qword_27F20AF50;
  v36 = *algn_27F20AF58;
  v37 = qword_27F20AF60;
  v38 = qword_27F20AF68;
  v39 = qword_27F20AF50;
  sub_24E30A46C(v35, v36, v37, v38);

  v40 = *&v20[v32];
  v41 = [v26 blackColor];
  [v40 setBackgroundColor_];

  [v20 addSubview_];
  return v20;
}

void sub_24E2B40B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textLabel;
  if (qword_27F1DE008 != -1)
  {
    OUTLINED_FUNCTION_4_14();
    swift_once();
  }

  v6 = sub_24E344158();
  v7 = __swift_project_value_buffer(v6, &unk_27F20BC18);
  (*(*(v6 - 8) + 16))(v4, v7, v6);
  v8 = objc_allocWithZone(OUTLINED_FUNCTION_7_70());
  *(v1 + v5) = OUTLINED_FUNCTION_1_137();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_percentComplete) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textPosition) = 0;
  v9 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressFillView;
  type metadata accessor for ShadowView();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressTrackView;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_24E348AE8();
  __break(1u);
}

void sub_24E2B42CC(double a1, double a2)
{
  v5 = v2[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textPosition];
  v31 = MEMORY[0x277D839F8];
  v32 = MEMORY[0x277D22A30];
  v30 = 0x4018000000000000;
  v34 = MEMORY[0x277D839F8];
  v35 = MEMORY[0x277D22A30];
  v33 = 0x4014000000000000;
  v37 = MEMORY[0x277D839F8];
  v38 = MEMORY[0x277D22A30];
  v36 = 0x4014000000000000;
  if (qword_27F1DDC00 != -1)
  {
    OUTLINED_FUNCTION_0_174(&qword_27F1DDC00);
  }

  sub_24DF89628(qword_27F1E9E18, v39);
  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_percentComplete];
  [v2 layoutMargins];
  v29[0] = v5;
  v39[5] = v6;
  v39[6] = v7;
  v39[7] = v8;
  v39[8] = v9;
  v39[9] = v10;
  sub_24E2B490C(v29, v19);
  v11 = *&v2[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textLabel];
  v21 = type metadata accessor for EmphasizedLabel(0);
  v22 = MEMORY[0x277D22A68];
  v20 = v11;
  v12 = *&v2[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressTrackView];
  v13 = sub_24E0C7D5C();
  v14 = MEMORY[0x277D22A58];
  v24 = v13;
  v25 = MEMORY[0x277D22A58];
  v23 = v12;
  v15 = *&v2[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressFillView];
  v27 = type metadata accessor for ShadowView();
  v28 = v14;
  v26 = v15;
  v16 = v11;
  v17 = v12;
  v18 = v15;
  sub_24E2B4A10(v2, v19, a1, a2);
  sub_24E2B4968(v19);
  sub_24E2B49BC(v29);
  OUTLINED_FUNCTION_7_2();
}

uint64_t sub_24E2B44F0()
{
  v1 = v0;
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v36 = v3;
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProgressBarView();
  v50.receiver = v0;
  v50.super_class = v12;
  objc_msgSendSuper2(&v50, sel_layoutSubviews);
  v13 = v0[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textPosition];
  v41 = MEMORY[0x277D839F8];
  v42 = MEMORY[0x277D22A30];
  v40 = 0x4018000000000000;
  v44 = MEMORY[0x277D839F8];
  v45 = MEMORY[0x277D22A30];
  v43 = 0x4014000000000000;
  v47 = MEMORY[0x277D839F8];
  v48 = MEMORY[0x277D22A30];
  v46 = 0x4014000000000000;
  if (qword_27F1DDC00 != -1)
  {
    OUTLINED_FUNCTION_0_174(&qword_27F1DDC00);
  }

  sub_24DF89628(qword_27F1E9E18, v49);
  v14 = *&v1[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_percentComplete];
  [v1 layoutMargins];
  v39[0] = v13;
  v49[5] = v14;
  v49[6] = v15;
  v49[7] = v16;
  v49[8] = v17;
  v49[9] = v18;
  sub_24E2B490C(v39, v38);
  v19 = *&v1[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_textLabel];
  v38[29] = type metadata accessor for EmphasizedLabel(0);
  v38[30] = MEMORY[0x277D22A68];
  v38[26] = v19;
  v20 = *&v1[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressTrackView];
  v21 = sub_24E0C7D5C();
  v22 = MEMORY[0x277D22A58];
  v38[34] = v21;
  v38[35] = MEMORY[0x277D22A58];
  v38[31] = v20;
  v23 = *&v1[OBJC_IVAR____TtC12GameCenterUI15ProgressBarView_progressFillView];
  v38[39] = type metadata accessor for ShadowView();
  v38[40] = v22;
  v38[36] = v23;
  v24 = v19;
  v34 = v20;
  v35 = v23;
  [v1 bounds];
  sub_24DF9833C(v1, v25, v26, v27, v28);
  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_3_117();
  v29 = OUTLINED_FUNCTION_10_7();
  v30 = v37;
  v31 = *(v36 + 8);
  v31(v5, v37);
  [v34 _setCornerRadius_];
  OUTLINED_FUNCTION_3_117();
  v32 = OUTLINED_FUNCTION_10_7();
  v31(v5, v30);
  [v35 _setCornerRadius_];
  sub_24E2B4968(v38);
  return sub_24E2B49BC(v39);
}

id sub_24E2B4858(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProgressBarView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_24E2B4A10(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = sub_24E348BC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E348538();
  v11 = v10;
  v13 = v12;
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  __swift_project_boxed_opaque_existential_1((a2 + 8), v14);
  sub_24E2548A0(v14, v15);
  sub_24E344198();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v17);
  sub_24E2548A0(v17, v18);
  sub_24E344198();
  v16(v9, v6);
  sub_24DF98AC8(a2 + 208, v21);
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_24E3440D8(v11, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (*a2)
    {
      __swift_project_boxed_opaque_existential_1((a2 + 128), *(a2 + 152));
      sub_24E3441B8();
    }
  }

  else
  {
    sub_24DF98B38(v21);
  }

  return a3;
}

uint64_t OUTLINED_FUNCTION_0_174(uint64_t a1)
{

  return swift_once();
}

char *OUTLINED_FUNCTION_1_137()
{

  return sub_24E3272CC();
}

uint64_t OUTLINED_FUNCTION_3_117()
{
  v1 = v0[49];
  v2 = v0[50];
  __swift_project_boxed_opaque_existential_1(v0 + 46, v1);

  return sub_24E2548A0(v1, v2);
}

uint64_t OUTLINED_FUNCTION_7_70()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return type metadata accessor for EmphasizedLabel(0);
}

uint64_t sub_24E2B4D78(uint64_t a1, void (*a2)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_24E041928(a1, &v9 - v5);
  v7 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  a2(v6);
  return sub_24DF8BFF4(v6, &qword_27F1DF018, &qword_24E372030);
}

unint64_t sub_24E2B4E74(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_sections;
  OUTLINED_FUNCTION_5_16(v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_sections, v16);
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24E348878())
  {

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x25303F560](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = 0xEA0000000000676ELL;
      v9 = 0x6979616C50776F6ELL;
      switch(*(v7 + 16))
      {
        case 1:
          v9 = 0x65756E69746E6F63;
          v8 = 0xEF676E6979616C50;
          break;
        case 2:
          v9 = 0x7974697669746361;
          v8 = 0xEC00000064656546;
          break;
        case 3:
          v9 = 0xD000000000000011;
          v8 = 0x800000024E39CC10;
          break;
        case 4:
          v8 = 0xE700000000000000;
          v9 = 0x72616265646973;
          break;
        case 5:
          v8 = 0xE700000000000000;
          v9 = 0x73646E65697266;
          break;
        default:
          break;
      }

      v10 = 0x6979616C50776F6ELL;
      v11 = 0xEA0000000000676ELL;
      switch(a1)
      {
        case 1:
          v10 = 0x65756E69746E6F63;
          v11 = 0xEF676E6979616C50;
          break;
        case 2:
          v10 = 0x7974697669746361;
          v11 = 0xEC00000064656546;
          break;
        case 3:
          v10 = 0xD000000000000011;
          v11 = 0x800000024E39CC10;
          break;
        case 4:
          v11 = 0xE700000000000000;
          v10 = 0x72616265646973;
          break;
        case 5:
          v11 = 0xE700000000000000;
          v10 = 0x73646E65697266;
          break;
        default:
          break;
      }

      if (v9 == v10 && v8 == v11)
      {

LABEL_30:

        return v6;
      }

      v13 = sub_24E348C08();

      if (v13)
      {
        goto LABEL_30;
      }

      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      ++v6;
      if (v14 == i)
      {
        v6 = -1;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return -1;
}

uint64_t sub_24E2B5160()
{
  v0 = sub_24E347CB8();
  v1 = GKGameCenterUIFrameworkBundle();
  v2 = GKGetLocalizedStringFromTableInBundle();

  v3 = sub_24E347CF8();
  return v3;
}

void sub_24E2B51F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  sub_24E287A3C(a1);
  sub_24E2B5E5C(v4);
  v5 = sub_24E347118();
  OUTLINED_FUNCTION_5_104(v5);
  sub_24E347698();
  sub_24E2B6D44(0);
}

uint64_t sub_24E2B52B0()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredDataPresenter))
  {

    sub_24E1C6FE0();
  }

  return result;
}

char *sub_24E2B5324(uint64_t *a1, uint64_t a2)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40, &unk_24E375E80);
  OUTLINED_FUNCTION_0_14();
  v25 = v6;
  v26 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v24 = v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1760, &qword_24E370F90);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  v15 = *a1;
  v16 = sub_24E343518();
  OUTLINED_FUNCTION_4_100(v16);
  *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_didScrollToIndexPath) = 0;
  v17 = v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToActivityInfo;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *v17 = 0;
  *(v17 + 24) = 0;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_sections) = MEMORY[0x277D84F90];
  v18 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_4_100(v18);
  *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredDataPresenter) = 0;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_dashboardDisplayMode) = v15;
  v23[1] = a2;
  *(v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_pageMetricsPresenter) = a2;

  v19 = sub_24E287888(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1768, &unk_24E388A80);
  sub_24E041D60(&qword_27F1E1770, &qword_27F1E1768, &unk_24E388A80);
  v20 = v19;

  sub_24E347198();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v27);
  (*(v11 + 8))(v14, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0, &unk_24E36FA60);
  sub_24E041D60(&unk_27F1E1C50, &unk_27F1E6CC0, &unk_24E36FA60);

  sub_24E347198();
  v21 = v24;
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v27);
  (*(v25 + 8))(v21, v26);
  return v20;
}

void (*sub_24E2B56B4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2B800C;
}

uint64_t (*sub_24E2B5750(void *a1))(uint64_t a1)
{
  v1 = sub_24E2B56B4(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E0418F4;
}

uint64_t (*sub_24E2B57A8(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2B7FE8;
}

uint64_t sub_24E2B580C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  return sub_24E2B584C(&v3);
}

uint64_t sub_24E2B584C(uint64_t result)
{
  v1 = *result;
  if ((*result - 1) >= 2)
  {
    v3 = *(result + 8);
    v2 = *(result + 16);
    v4 = v1;
    sub_24DF88BEC(v3, v2);
    sub_24DE73FA0(v3, v2);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = v1;

    sub_24E346F78();

    sub_24E024148(v1, sub_24E2B7FF0, v5);
  }

  return result;
}

uint64_t sub_24E2B5AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToIndexPath;
  OUTLINED_FUNCTION_5_16(v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToIndexPath, v5);
  return sub_24DFAE87C(v1 + v3, a1, &unk_27F1E6C80, qword_24E3715F0);
}

uint64_t sub_24E2B5BD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToIndexPath;
  swift_beginAccess();
  sub_24DFB8804(a1, v1 + v3, &unk_27F1E6C80, qword_24E3715F0);
  return swift_endAccess();
}

void *sub_24E2B5CB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_dashboardDisplayMode);
  v2 = v1;
  return v1;
}

uint64_t sub_24E2B5CE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2778, &unk_24E37AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E369B70;
  *(inited + 32) = sub_24E347CF8();
  *(inited + 40) = v1;
  *(inited + 48) = 0x676E69646E616CLL;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 64) = sub_24E347CF8();
  *(inited + 72) = v2;
  strcpy((inited + 80), "activityFeed");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = sub_24E347CF8();
  *(inited + 104) = v3;
  *(inited + 112) = 0x72616F6268736164;
  *(inited + 120) = 0xE900000000000064;
  v4 = sub_24E347C28();
  sub_24E347CF8();
  sub_24E347CF8();
  swift_isUniquelyReferenced_nonNull_native();
  sub_24E058434();

  return v4;
}

uint64_t sub_24E2B5E5C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_24E347458();
  MEMORY[0x28223BE20](v1 - 8);
  v24 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24E3479D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_24E347088();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = sub_24E347C28();
  sub_24E0A7788(v15);

  sub_24E3479B8();
  v16 = sub_24E347068();
  sub_24E1C3144();
  (*(v4 + 8))(v7, v3);
  v16(v26, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2740, &qword_24E374260);
  sub_24E3470B8();
  v17 = swift_allocObject();
  v21 = xmmword_24E36A270;
  *(v17 + 16) = xmmword_24E36A270;
  v22 = v9;
  v23 = v8;
  (*(v9 + 16))(v11, v14, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2748, &unk_24E372FA0);
  sub_24E347108();
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E3470F8();
  sub_24E1AD060();
  sub_24E3470A8();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v18 = sub_24E347058();
  __swift_project_value_buffer(v18, qword_27F20AE00);
  sub_24E347028();
  *(swift_allocObject() + 16) = v21;
  sub_24E3470E8();
  sub_24E3470D8();
  sub_24E1AD060();
  sub_24E3470A8();
  v19 = sub_24E2B5CE8();
  sub_24E335A58(v19);

  sub_24E347448();
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E3470C8();
  return (*(v22 + 8))(v14, v23);
}

uint64_t sub_24E2B631C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16A0, &unk_24E370EF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16A8, &unk_24E372020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16B0, &unk_24E370F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-1] - v12;
  v14 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  v15 = 1;
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredData;
  swift_beginAccess();
  sub_24DFB8804(v13, v1 + v16, &qword_27F1DF018, &qword_24E372030);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredDataPresenter;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredDataPresenter))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16B8, &unk_24E382800);
    sub_24E041D60(&qword_27F1E16C0, &qword_27F1E16B8, &unk_24E382800);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v25);
    v15 = 0;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16C8, &qword_24E370F10);
  v19 = 1;
  __swift_storeEnumTagSinglePayload(v10, v15, 1, v18);
  sub_24DF8BFF4(v10, &qword_27F1E16B0, &unk_24E370F00);
  if (*(v1 + v17))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16D0, &qword_24E370F18);
    sub_24E041D60(&qword_27F1E16D8, &qword_27F1E16D0, &qword_24E370F18);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v25);
    v19 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16E0, &unk_24E370F20);
  v21 = 1;
  __swift_storeEnumTagSinglePayload(v7, v19, 1, v20);
  sub_24DF8BFF4(v7, &qword_27F1E16A8, &unk_24E372020);
  if (*(v1 + v17))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16E8, qword_24E382810);
    sub_24E041D60(&qword_27F1E16F0, &qword_27F1E16E8, qword_24E382810);

    sub_24E347198();
    sub_24E3471A8();

    __swift_destroy_boxed_opaque_existential_1(v25);
    v21 = 0;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E16F8, &qword_24E370F30);
  __swift_storeEnumTagSinglePayload(v4, v21, 1, v22);
  return sub_24DF8BFF4(v4, &qword_27F1E16A0, &unk_24E370EF0);
}

void (*sub_24E2B67F8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2B7FC4;
}

void sub_24E2B685C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredData;
  swift_beginAccess();
  sub_24E041B5C(a1, v1 + v3);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24E2B6D44(0);
}

uint64_t (*sub_24E2B68D4(void *a1))(uint64_t a1)
{
  v1 = sub_24E2B67F8(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E041AC0;
}

uint64_t (*sub_24E2B692C(void *a1))(char a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2B7FA0;
}

uint64_t sub_24E2B6990(char a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24E041A6C();
  v3 = swift_allocError();
  *v4 = a1;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24E346F78();

  sub_24E024148(v3, sub_24E2B8014, v5);
}

uint64_t (*sub_24E2B6A78(void *a1))(unsigned __int8 *a1)
{
  v1 = sub_24E2B692C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E2B7F74;
}

uint64_t (*sub_24E2B6AD0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E2B7E10;
}

uint64_t sub_24E2B6B34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DashboardRequiredDataPresenter.Update(0);
  sub_24E041928(a1 + *(v9 + 20), v8);
  v10 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  v11 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredData;
  swift_beginAccess();
  sub_24DFB8804(v8, v1 + v11, &qword_27F1DF018, &qword_24E372030);
  swift_endAccess();
  v12 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  v14 = v1;
  sub_24DFC8700(0, 0, v5, &unk_24E38B408, v13);
}

uint64_t sub_24E2B6CE4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredDataPresenter) = a1;

  sub_24E2B631C();
}

void sub_24E2B6D44(char a1)
{
  v2 = OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating;
  if ((*(v1 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) & 1) == 0)
  {
    v3 = v1;
    v5 = [objc_opt_self() local];
    v6 = sub_24E287BD0();
    [v5 updateFromLocalPlayer_];

    *(v3 + v2) = 1;
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = 1;

    sub_24E346F78();

    if (sub_24E287CE4())
    {
      sub_24E20EA5C();
    }

    else if (sub_24E287C88() & 1) != 0 && ((v7 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredDataPresenter, !*(v3 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredDataPresenter)) || (a1))
    {
      sub_24E287BD0();
      if (!*(v3 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_playerId + 8))
      {
        v9 = sub_24E287BD0();
        v10 = [v9 internal];

        v11 = [v10 playerID];
        sub_24E347CF8();
      }

      sub_24E2B5CB8();
      type metadata accessor for DashboardRequiredDataPresenter(0);
      swift_allocObject();

      sub_24E1C74F8();
      sub_24E2B6CE4(v12);
      if (*(v3 + v7))
      {

        sub_24E1C6D2C();
      }
    }

    else
    {
      v13[0] = *(v3 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_dashboardDisplayMode);
      v8 = v13[0];
      sub_24E2B7194(v13);
    }
  }
}

void sub_24E2B6F84(uint64_t a1)
{
  OUTLINED_FUNCTION_5_16(a1 + 16, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_24E2B6D44(1);
  }
}

uint64_t sub_24E2B6FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E2B7070, 0, 0);
}

uint64_t sub_24E2B7070()
{
  v12 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v11 = *&v2[OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_dashboardDisplayMode];
  v3 = v11;
  sub_24E2B7194(&v11);

  v4 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  sub_24E348068();
  v5 = v2;
  v6 = sub_24E348058();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_24DFC8700(0, 0, v1, &unk_24E38B418, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24E2B7194(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6850, qword_24E38B420);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_sections;
  swift_beginAccess();
  *(v2 + v8) = MEMORY[0x277D84F90];

  if (!v7)
  {
    v9 = v2 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredData;
    swift_beginAccess();
    v10 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10))
    {
      v11 = type metadata accessor for ContinuePlayingData(0);
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    }

    else
    {
      sub_24DFAE87C(v9 + *(v10 + 24), v6, &qword_27F1E6850, qword_24E38B420);
      v12 = type metadata accessor for ContinuePlayingData(0);
      if (__swift_getEnumTagSinglePayload(v6, 1, v12) != 1)
      {
        sub_24DF8BFF4(v6, &qword_27F1E6850, qword_24E38B420);
        type metadata accessor for ContinuePlayingSection();
        *(swift_allocObject() + 16) = 4353;
        swift_beginAccess();

        MEMORY[0x25303EA30](v16);
        sub_24E12448C();
        sub_24E347F88();
        swift_endAccess();

        goto LABEL_6;
      }
    }

    sub_24DF8BFF4(v6, &qword_27F1E6850, qword_24E38B420);
  }

LABEL_6:
  v13 = sub_24E2B5CB8();
  type metadata accessor for ActivityFeedDashboardSection();
  swift_allocObject();
  sub_24E0EE5FC(2, 18, v13);
  v14 = swift_beginAccess();
  MEMORY[0x25303EA30](v14);
  sub_24E12448C();
  sub_24E347F88();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC12GameCenterUI13BasePresenter_isUpdating) = 0;
  sub_24E2B7644();
  v17[5] = 0;
  v17[6] = 0;
  v17[4] = 2;

  sub_24E346F78();
}

uint64_t sub_24E2B7478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80, qword_24E3715F0);
  v4[6] = swift_task_alloc();
  sub_24E348068();
  v4[7] = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E2B7548, v6, v5);
}

uint64_t sub_24E2B7548()
{
  v1 = v0[5];

  v2 = v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToActivityInfo;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToActivityInfo + 8) && (*(v2 + 24) & 1) == 0)
  {
    v3 = *(v2 + 16);
    v4 = v0[5];
    v5 = v0[6];
    v6 = sub_24E2B4E74(2);
    MEMORY[0x25303A010](v3, v6);
    v7 = sub_24E343518();
    OUTLINED_FUNCTION_5_104(v7);
    v8 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToIndexPath;
    swift_beginAccess();
    sub_24DFB8804(v5, v4 + v8, &unk_27F1E6C80, qword_24E3715F0);
    swift_endAccess();
  }

  v9 = v0[1];

  return v9();
}

void sub_24E2B7644()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1720, &unk_24E370F70);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - v2;
  v4 = type metadata accessor for Shelf(0);
  OUTLINED_FUNCTION_0_14();
  v24 = v5;
  MEMORY[0x28223BE20](v6);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v23 = &v22 - v9;
  v10 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_sections;
  OUTLINED_FUNCTION_5_16(&v0[OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_sections], v27);
  v11 = *&v0[v10];
  v12 = sub_24DFD8654();
  v13 = v0;

  v14 = 0;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v12 == v14)
    {

      sub_24E19A4A0();

      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25303F560](v14, v11);
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    sub_24E2B7928(v3);

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      sub_24DF8BFF4(v3, &qword_27F1E1720, &unk_24E370F70);
      ++v14;
    }

    else
    {
      v16 = v23;
      sub_24E0646EC(v3, v23);
      sub_24E0646EC(v16, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076D5C();
        v26 = v20;
      }

      v17 = *(v26 + 16);
      if (v17 >= *(v26 + 24) >> 1)
      {
        sub_24E076D5C();
        v26 = v21;
      }

      v18 = v25;
      v19 = v26;
      *(v26 + 16) = v17 + 1;
      sub_24E0646EC(v18, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v17);
      v14 = v15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_24E2B7928@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredData;
  swift_beginAccess();
  sub_24DFAE87C(v1 + v6, v5, &qword_27F1DF018, &qword_24E372030);
  sub_24E316520(v5, v1, a1);
  return sub_24DF8BFF4(v5, &qword_27F1DF018, &qword_24E372030);
}

uint64_t sub_24E2B7B10()
{
  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_scrollToIndexPath, &unk_27F1E6C80, qword_24E3715F0);

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI30DashboardActivityFeedPresenter_requiredData, &qword_27F1DF018, &qword_24E372030);
}

uint64_t type metadata accessor for DashboardActivityFeedPresenter(uint64_t a1)
{
  result = qword_27F1E9E90;
  if (!qword_27F1E9E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2B7CD8(uint64_t a1)
{
  sub_24E2689A0(319, &qword_27F1E8E50, MEMORY[0x277CC9AF8]);
  if (v1 <= 0x3F)
  {
    sub_24E2689A0(319, &qword_27F1DF008, type metadata accessor for DashboardRequiredDataPresenter.Data);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24E2B7E34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_21(v1);

  return sub_24E2B6FD4(v2, v3, v4, v5);
}

uint64_t sub_24E2B7ED4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_21(v1);

  return sub_24E2B7478(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_4_100(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_5_104(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void sub_24E2B8058(double a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel__setCornerRadius_, a1);
  sub_24E2B8470();
}

id sub_24E2B80A4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isEnabled);
}

void sub_24E2B80DC(char a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setEnabled_, a1 & 1);
  sub_24E2B8584();
}

double sub_24E2B8128(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_24E348BC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_sizeThatFits_, a1, a2);
  v11 = v10;
  v12 = *&v2[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_height + 24];
  v13 = *&v2[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_height + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_height], v12);
  sub_24E2548A0(v12, v13);
  sub_24E344198();
  (*(v7 + 8))(v9, v6);
  return v11;
}

void sub_24E2B82D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler + 8);

    v1(v3);

    sub_24DE73FA0(v1, v2);
  }
}

id sub_24E2B83E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel__cornerRadius);
}

void sub_24E2B8470()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView];
  if (v1)
  {
    ObjectType = swift_getObjectType();
    v3 = [v1 layer];
    v4.receiver = v0;
    v4.super_class = ObjectType;
    objc_msgSendSuper2(&v4, sel__cornerRadius);
    [v3 setCornerRadius_];
  }
}

void sub_24E2B8584()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v8, sel_isEnabled);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView];
  if (v1)
  {
    if (!v2)
    {
      return;
    }

    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 _gkGameLayerButtonVisualEffect];
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v6 = objc_opt_self();
    v4 = v2;
    v5 = [v6 _gkGameLayerDisabledButtonVisualEffect];
  }

  v7 = v5;
  if (!v7)
  {
    sub_24DFEC928();
    sub_24E347F08();
    v7 = sub_24E347EE8();
  }

  [v4 setBackgroundEffects_];
}

double sub_24E2B8694(uint64_t a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_measurementsWithFitting_in_, a1, a2, a3);
  v8 = v7;
  v9 = &v3[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_horizontalOutsets];
  if ((v3[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_horizontalOutsets + 32] & 1) == 0)
  {
    v11 = v9[2];
    v10 = v9[3];
    v13 = *v9;
    v12 = v9[1];
    swift_getObjectType();
    sub_24E0B7968(v13, v12, v11, v10);
    return v8 + v14 + v15;
  }

  return v8;
}

void sub_24E2B8804()
{
  ObjectType = swift_getObjectType();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView];
  if (v2)
  {
    v3 = v2;
    [v0 frame];
    Width = CGRectGetWidth(v8);
    [v0 frame];
    [v3 setFrame_];
  }

  if (v0[OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_usesCapsuleRounding] == 1)
  {
    [v0 frame];
    Height = CGRectGetHeight(v10);
    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, sel__setCornerRadius_, Height * 0.5);
    sub_24E2B8470();
  }
}

void sub_24E2B8988()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_height));
  sub_24DE73FA0(*(v0 + OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler), *(v0 + OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_tapHandler + 8));
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI19RoundedTitledButton_visualEffectView);
}

uint64_t type metadata accessor for RoundedTitledButton(uint64_t a1)
{
  result = qword_27F1E9EB8;
  if (!qword_27F1E9EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for GameAchievementsAction(uint64_t a1)
{
  result = qword_27F1E9EC8;
  if (!qword_27F1E9EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E2B8B80(uint64_t a1)
{
  sub_24E0005CC();
  if (v1 <= 0x3F)
  {
    sub_24E2B8C24();
    if (v2 <= 0x3F)
    {
      sub_24E347208();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E2B8C24()
{
  if (!qword_27F1E9ED8)
  {
    v0 = sub_24E347FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E9ED8);
    }
  }
}

uint64_t sub_24E2B8C74()
{
  type metadata accessor for HeaderProfileSection();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_24E2B8C9C(void *__src, uint64_t a2)
{
  v188 = a2;
  v182 = *v2;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6720, &qword_24E37FFA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v159 - v5;
  v7 = sub_24E347458();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_7_1();
  v181 = v9 - v8;
  OUTLINED_FUNCTION_18_1();
  v180 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v189 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v179 = v13 - v12;
  OUTLINED_FUNCTION_18_1();
  v14 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_38();
  v178 = v18;
  MEMORY[0x28223BE20](v19);
  v185 = v159 - v20;
  OUTLINED_FUNCTION_18_1();
  sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v194 = v21;
  v195 = v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_38();
  v193 = v23;
  MEMORY[0x28223BE20](v24);
  v192 = v159 - v25;
  v26 = OUTLINED_FUNCTION_18_1();
  v191 = type metadata accessor for PlayerProfileInfoBarData(v26);
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_7_1();
  v29 = v28 - v27;
  sub_24E343428();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_1();
  memcpy(v207, __src, sizeof(v207));
  v31 = 0;
  if (sub_24DF8BF80(v207) != 1)
  {
    v174 = v16;
    v175 = v14;
    v176 = v6;
    v177 = __src;
    OUTLINED_FUNCTION_3_118();
    v186 = v207[0];
    v187 = LOBYTE(v207[1]);
    v208 = BYTE1(v207[1]);
    v172 = v207[8];
    v173 = v207[7];
    v32 = v207[9];
    memcpy(v206, __dst, sizeof(v206));
    v33 = objc_opt_self();
    sub_24DF8BF98(v206, &v203);
    v184 = v33;
    v34 = [v33 currentLocale];
    sub_24E3433D8();

    v35 = sub_24E3433C8();
    v36 = OUTLINED_FUNCTION_60();
    v183 = v37;
    v37(v36);
    v38 = JECountFormatterMakeStringFromNumber();

    v190 = v29;
    if (v38)
    {
      v39 = sub_24E347CF8();
      v170 = v40;
      v171 = v39;

      v41 = sub_24E347CB8();
      v42 = GKGameCenterUIFrameworkBundle();
      v43 = OUTLINED_FUNCTION_23_4(v42);

      sub_24E347CF8();
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v45 = OUTLINED_FUNCTION_17_2(v44);
      *(v45 + 16) = xmmword_24E367D20;
      *(v45 + 56) = MEMORY[0x277D83B88];
      *(v45 + 64) = MEMORY[0x277D83C10];
      *(v45 + 32) = v32;
      v46 = sub_24E347D18();
      v48 = v47;

      sub_24E076E24();
      v50 = v49;
      if (*(v49 + 16) >= *(v49 + 24) >> 1)
      {
        OUTLINED_FUNCTION_1_138();
        v50 = v154;
      }

      OUTLINED_FUNCTION_6_92();
      *(v51 + 48) = v46;
      *(v51 + 56) = v48;
      v29 = v190;
      OUTLINED_FUNCTION_3_118();
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v52 = [v184 currentLocale];
    sub_24E3433D8();

    v53 = sub_24E3433C8();
    v54 = OUTLINED_FUNCTION_60();
    v183(v54);
    v55 = v172;
    v56 = JECountFormatterMakeStringFromNumber();

    if (v56)
    {
      v57 = sub_24E347CF8();
      v170 = v58;
      v171 = v57;

      v59 = sub_24E347CB8();
      v60 = GKGameCenterUIFrameworkBundle();
      v61 = OUTLINED_FUNCTION_23_4(v60);

      sub_24E347CF8();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v63 = OUTLINED_FUNCTION_17_2(v62);
      *(v63 + 16) = xmmword_24E367D20;
      *(v63 + 56) = MEMORY[0x277D83B88];
      *(v63 + 64) = MEMORY[0x277D83C10];
      *(v63 + 32) = v55;
      v64 = sub_24E347D18();
      v66 = v65;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_101();
        v50 = v155;
      }

      if (*(v50 + 16) >= *(v50 + 24) >> 1)
      {
        OUTLINED_FUNCTION_1_138();
        v50 = v156;
      }

      OUTLINED_FUNCTION_6_92();
      *(v67 + 48) = v64;
      *(v67 + 56) = v66;
      v29 = v190;
      OUTLINED_FUNCTION_3_118();
    }

    v68 = [v184 currentLocale];
    sub_24E3433D8();

    v69 = sub_24E3433C8();
    v70 = OUTLINED_FUNCTION_60();
    v183(v70);
    v71 = v173;
    v72 = JECountFormatterMakeStringFromNumber();

    if (v72)
    {
      v73 = sub_24E347CF8();
      v75 = v74;

      v76 = sub_24E347CB8();
      v77 = GKGameCenterUIFrameworkBundle();
      v78 = GKGetLocalizedStringFromTableInBundle();

      sub_24E347CF8();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
      v80 = OUTLINED_FUNCTION_17_2(v79);
      *(v80 + 16) = xmmword_24E367D20;
      *(v80 + 56) = MEMORY[0x277D83B88];
      *(v80 + 64) = MEMORY[0x277D83C10];
      *(v80 + 32) = v71;
      v81 = sub_24E347D18();
      v83 = v82;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_101();
        v50 = v157;
      }

      v84 = *(v50 + 16);
      if (v84 >= *(v50 + 24) >> 1)
      {
        OUTLINED_FUNCTION_1_138();
        v50 = v158;
      }

      *(v50 + 16) = v84 + 1;
      v85 = (v50 + 32 * v84);
      v85[4] = v73;
      v85[5] = v75;
      v85[6] = v81;
      v85[7] = v83;
      OUTLINED_FUNCTION_3_118();
    }

    *(v29 + 80) = 0;
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0u;
    v86 = *(v191 + 28);
    v87 = 1;
    v184 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(v29 + v86, 1, 1, v184);
    *(v29 + 40) = v50;
    v88 = v192;
    sub_24E343398();
    v89 = v194;
    v90 = v195;
    v91 = *(v195 + 16);
    v183 = (v195 + 16);
    v173 = v91;
    v91(v193, v88, v194);
    v172 = sub_24E2B9F60(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_24E348918();
    v92 = *(v90 + 8);
    v195 = v90 + 8;
    v171 = v92;
    v92(v88, v89);
    v93 = v187;
    v94 = v186;
    if ((v187 & 1) == 0 && [v186 achievementsVisibility])
    {
      if ([v94 achievementsVisibility] == 1)
      {
        v87 = v208;
      }

      else
      {
        v87 = 0;
      }
    }

    v95 = static PlayerProfileUtil.headerSubtitle(for:)(v94);
    v169 = v96;
    v170 = v95;
    v168 = v97;
    if (v93)
    {
      v98 = sub_24E32C0B8();
      v99 = [v98 displayNameWithOptions_];

      if (v99)
      {
        v166 = sub_24E347CF8();
        v164 = v100;

        v165 = 0;
      }

      else
      {
        v165 = 0;
        v166 = 0;
        v164 = 0xE000000000000000;
      }
    }

    else
    {
      v101 = [v94 displayNameWithOptions_];
      v166 = sub_24E347CF8();
      v164 = v102;

      v165 = v208;
    }

    v167 = v87;
    v205 = 0;
    v203 = 0u;
    v204 = 0u;
    v202 = 0;
    v200 = 0u;
    v201 = 0u;
    if ((v93 & 1) == 0)
    {
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      v163 = xmmword_24E367D20;
      *(inited + 16) = xmmword_24E367D20;
      v104 = MEMORY[0x277D837D0];
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 72) = v104;
      *(inited + 48) = 0x74726F706572;
      *(inited + 56) = 0xE600000000000000;
      v105 = sub_24E347C28();
      if (qword_27F1DD808 != -1)
      {
        swift_once();
      }

      v106 = sub_24E347058();
      v107 = __swift_project_value_buffer(v106, qword_27F20AE00);
      v108 = v179;
      v161 = v107;
      MEMORY[0x25303DB90](0x464174726F706572, 0xED0000646E656972, 0x6E6F74747562, 0xE600000000000000, v105);

      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960, &qword_24E36BFB0);
      v110 = v189;
      v111 = (*(v189 + 80) + 32) & ~*(v189 + 80);
      v159[1] = *(v189 + 72);
      v159[2] = v109;
      v112 = swift_allocObject();
      *(v112 + 16) = v163;
      v113 = *(v110 + 16);
      v160 = v111;
      v114 = v112 + v111;
      v115 = v180;
      v159[0] = v113;
      v113(v114, v108, v180);
      sub_24E347448();
      v116 = v185;
      sub_24E3471D8();
      v117 = v108;
      v118 = *(v110 + 8);
      v189 = v110 + 8;
      v118(v117, v115);
      sub_24DF8C95C(&v203, &qword_27F1DEE90, &unk_24E369E90);
      v119 = type metadata accessor for ReportFriendAction(0);
      *(&v204 + 1) = v119;
      v205 = sub_24E2B9F60(&qword_27F1E0AD0, type metadata accessor for ReportFriendAction, &unk_24E383B30);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v203);
      (*(v174 + 16))(boxed_opaque_existential_1 + *(v119 + 20), v116, v175);
      v121 = v186;
      *boxed_opaque_existential_1 = v186;
      v122 = qword_27F1DDE48;
      v123 = v121;
      if (v122 != -1)
      {
        swift_once();
      }

      if (byte_27F20B8B0 == 1 && (v208 & 1) != 0)
      {
        v124 = swift_allocObject();
        *(v124 + 16) = v163;
        *(v124 + 32) = 0x79546E6F69746361;
        *(v124 + 40) = 0xEA00000000006570;
        *(v124 + 72) = MEMORY[0x277D837D0];
        *(v124 + 48) = 0x65766F6D6572;
        *(v124 + 56) = 0xE600000000000000;
        v125 = sub_24E347C28();
        v126 = v179;
        MEMORY[0x25303DB90](0x724665766F6D6572, 0xEC000000646E6569, 0x6E6F74747562, 0xE600000000000000, v125, v161);

        v127 = v160;
        v128 = swift_allocObject();
        *(v128 + 16) = v163;
        v129 = v180;
        (v159[0])(v128 + v127, v126, v180);
        sub_24E347448();
        OUTLINED_FUNCTION_60();
        sub_24E3471D8();
        v118(v126, v129);
        v130 = sub_24E32C0B8();
        (*(v174 + 8))(v185, v175);
        sub_24DF8C95C(&v200, &qword_27F1DEE90, &unk_24E369E90);
        *(&v197 + 1) = type metadata accessor for RemoveFriendAction(0);
        v198 = sub_24E2B9F60(&qword_27F1DFC28, type metadata accessor for RemoveFriendAction, &unk_24E377800);
        v131 = __swift_allocate_boxed_opaque_existential_1(&v196);
        *v131 = v130;
        v131[1] = v123;
        *(v131 + 16) = 1;
        OUTLINED_FUNCTION_3_118();
        v132();
        v200 = v196;
        v201 = v197;
        v202 = v198;
        v133 = v123;
      }

      else
      {
        (*(v174 + 8))(v185, v175);
      }

      v94 = v186;
    }

    v134 = v188;
    swift_unknownObjectWeakInit();
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
    v31 = OUTLINED_FUNCTION_17_2(v135);
    *(v31 + 16) = xmmword_24E367D20;
    v199[0] = 0;
    v189 = sub_24E253E8C(v199, 300.0, 300.0);
    v136 = sub_24E347CB8();
    v137 = GKGameCenterUIFrameworkBundle();
    v138 = GKGetLocalizedStringFromTableInBundle();

    v186 = sub_24E347CF8();
    v140 = v139;

    LODWORD(v188) = *(v134 + OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView);
    v141 = [v94 isArcadeSubscriber];
    if (v167)
    {
      v142 = v29;
      v143 = v176;
      sub_24E2B9EFC(v142, v176);
      v144 = 0;
    }

    else
    {
      v144 = 1;
      v143 = v176;
    }

    __swift_storeEnumTagSinglePayload(v143, v144, 1, v191);
    v145 = type metadata accessor for ProfileHeaderData(0);
    *(v31 + 56) = v145;
    *(v31 + 64) = sub_24E2B9F60(&qword_27F1E5E68, type metadata accessor for ProfileHeaderData, &protocol conformance descriptor for ProfileHeaderData);
    v146 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
    sub_24E1AA0F0(&v203, v146 + v145[18]);
    sub_24E1AA0F0(&v200, v146 + v145[17]);
    v147 = v192;
    sub_24E343398();
    v148 = v194;
    v173(v193, v147, v194);
    sub_24E348918();
    v171(v147, v148);
    v149 = v146 + v145[19];
    *(v149 + 4) = 0;
    *v149 = 0u;
    *(v149 + 1) = 0u;
    __swift_storeEnumTagSinglePayload(v146 + v145[20], 1, 1, v184);
    v150 = v164;
    v146[5] = v166;
    v146[6] = v150;
    v151 = v169;
    v146[7] = v170;
    v146[8] = v151;
    v152 = v189;
    v146[9] = v168;
    v146[10] = v152;
    v146[11] = 0;
    *(v146 + 96) = 0;
    v146[13] = 0;
    v146[14] = 0;
    v146[15] = v186;
    v146[16] = v140;
    *(v146 + 136) = v187;
    *(v146 + 137) = v141;
    *(v146 + 138) = v165;
    sub_24E197254(v143, v146 + v145[16]);
    *(v146 + v145[21]) = v188;
    MEMORY[0x253040FB0](&v196);
    sub_24DF8C95C(v177, &qword_27F1DEEA0, qword_24E369EA0);
    sub_24DF8C95C(&v200, &qword_27F1DEE90, &unk_24E369E90);
    sub_24E2B9EA0(v190);
    sub_24DF8C95C(&v203, &qword_27F1DEE90, &unk_24E369E90);
  }

  return v31;
}

uint64_t sub_24E2B9EA0(uint64_t a1)
{
  v2 = type metadata accessor for PlayerProfileInfoBarData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E2B9EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerProfileInfoBarData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E2B9F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_1_138()
{

  sub_24E076E24();
}

void OUTLINED_FUNCTION_4_101()
{

  sub_24E076E24();
}

void OUTLINED_FUNCTION_6_92()
{
  *(v3 + 16) = v1;
  v4 = v3 + 32 * v2;
  v5 = *(v0 + 112);
  *(v4 + 32) = *(v0 + 120);
  *(v4 + 40) = v5;
}

uint64_t sub_24E2BA010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, char a6, uint64_t a7)
{
  v73 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  *&v15 = MEMORY[0x28223BE20](v14 - 8).n128_u64[0];
  v67 = v64 - v16;
  v17 = [a2 activityType];
  if (v17 == 5)
  {
    v18 = 1;
  }

  else
  {
    if (v17 != 6)
    {
      sub_24DF82D5C(a5);

      sub_24DF8C95C(v73, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(a1);
      swift_deallocPartialClassInstance();
      return 0;
    }

    v18 = 0;
  }

  *(v7 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardData_displayStyle) = v18;
  *(v7 + OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardData_leaderboardLinks) = MEMORY[0x277D84F90];
  sub_24DF8BD34(a1, v80);
  v19 = v73;
  sub_24E1AA0F0(v73, v77);
  v20 = a2;
  sub_24E0E32D0(v80, v20, a3, a4, a5, a6 & 1, v77);
  if (!v21)
  {

    sub_24DF8C95C(v19, &qword_27F1DEE90, &unk_24E369E90);
    sub_24DF8BE60(a1);
    return 0;
  }

  v22 = v21;
  v64[0] = a1;
  v68 = (v21 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v23 = *(v21 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships + 16);
  v76 = OBJC_IVAR____TtC12GameCenterUI27ActivityFeedLeaderboardData_leaderboardLinks;
  v74 = (v21 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_mainActionLink);

  v25 = 0;
  v26 = 32;
  v27 = v22;
  v75 = v22;
  v71 = v23;
  for (i = v20; ; v20 = i)
  {
    v28 = *(v23 + 16);
    if (v25 == v28)
    {

      sub_24DF8C95C(v19, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BE60(v64[0]);

      return v27;
    }

    if (v25 >= v28)
    {
      break;
    }

    memcpy(v78, (v23 + v26), sizeof(v78));
    memmove(__dst, (v23 + v26), 0x48uLL);
    type metadata accessor for ActivityFeedSharedView();
    v30 = __dst[0];
    v29 = __dst[1];
    sub_24E00F7A8(v78, v77);
    v31 = sub_24E00DFAC(v30, v29, v25);
    v33 = v32;
    v34 = v76;
    swift_beginAccess();
    v35 = *(v27 + v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v27 + v34) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24E076A08(0, *(v35 + 16) + 1, 1, v35);
      v35 = v62;
      *(v27 + v76) = v62;
    }

    v38 = *(v35 + 16);
    v37 = *(v35 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_24E076A08(v37 > 1, v38 + 1, 1, v35);
      v35 = v63;
    }

    *(v35 + 16) = v38 + 1;
    v39 = v35 + 16 * v38;
    *(v39 + 32) = v31;
    *(v39 + 40) = v33;
    v27 = v75;
    *(v75 + v76) = v35;
    swift_endAccess();
    if (!v74[1] && (v40 = v68[1], v40[2]) && (v41 = *v68, *(*v68 + 16)))
    {
      v42 = v40[11];
      v43 = v40[12];
      v44 = v40[9];
      v64[1] = v40[7];
      v64[2] = v44;
      v45 = v40[10];
      v48 = v40 + 4;
      v46 = v40[4];
      v47 = v48[1];
      v49 = v41[4];
      v50 = v41[5];
      v51 = v41[7];
      v53 = v41[9];
      v52 = v41[10];
      v69 = v53;
      v70 = v51;
      v65 = v52;
      v77[0] = v30;
      v77[1] = v29;
      v77[2] = __dst[2];
      v77[3] = __dst[3];
      v77[4] = v45;
      v77[5] = v42;
      v77[6] = v46;
      v77[7] = v47;
      v77[8] = v49;
      v77[9] = v50;
      memcpy(v80, v77, sizeof(v80));
      v81 = 1;
      v64[3] = v43;

      v66 = v50;
      swift_bridgeObjectRetain_n();

      v54 = v65;

      swift_bridgeObjectRetain_n();
      v65 = v47;
      swift_bridgeObjectRetain_n();

      v55 = v67;
      sub_24E18F520(v80, v67);
      sub_24DF8C95C(v77, &qword_27F1E9EF8, qword_24E38B6A0);
      v56 = sub_24E343288();
      if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
      {

        sub_24E00FC70(__dst);
        sub_24DF8C95C(v55, &qword_27F1DEFB8, &unk_24E36FFA0);
        v57 = 0;
        v58 = 0;
      }

      else
      {
        v57 = sub_24E343218();
        v59 = v54;
        v58 = v60;

        sub_24E00FC70(__dst);
        (*(*(v56 - 8) + 8))(v67, v56);
      }

      v19 = v73;
      v61 = v74;
      v27 = v75;
      v23 = v71;
      *v74 = v57;
      v61[1] = v58;
    }

    else
    {
      result = sub_24E00FC70(__dst);
      v19 = v73;
      v23 = v71;
    }

    v26 += 72;
    ++v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E2BA654()
{
  v0 = sub_24E0E7144();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ActivityFeedLeaderboardData(uint64_t a1)
{
  result = qword_27F1E9EE0;
  if (!qword_27F1E9EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityFeedLeaderboardData.DisplayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24E2BA84C()
{
  result = qword_27F1E9EF0;
  if (!qword_27F1E9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9EF0);
  }

  return result;
}

uint64_t type metadata accessor for LoadMoreAction(uint64_t a1)
{
  result = qword_27F1E9F00;
  if (!qword_27F1E9F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t linearInterpolate<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v20[1] = a1;
  v20[2] = a2;
  v20[3] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v20 - v16;
  swift_getAssociatedConformanceWitness();
  sub_24E348C68();
  sub_24E348BD8();
  sub_24E348B18();
  v18 = *(v8 + 8);
  v18(v14, a4);
  sub_24E348188();
  sub_24E348188();
  sub_24E348B08();
  v18(v11, a4);
  v18(v14, a4);
  return (v18)(v17, a4);
}

double static CGRect.solvedValue(between:and:forInput:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  MinX = CGRectGetMinX(*&a1);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  v16 = (1.0 - a9) * MinX + CGRectGetMinX(v21) * a9;
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMinY(v22);
  v23.origin.x = a5;
  v23.origin.y = a6;
  v23.size.width = a7;
  v23.size.height = a8;
  CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetWidth(v24);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  CGRectGetWidth(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetHeight(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetHeight(v27);
  return v16;
}

id sub_24E2BADC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GKExpandedGroupBaseViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for GKExpandedGroupBaseViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id GKExpandedGroupBaseViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GKExpandedGroupBaseViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_24E2BB040()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E2BB120()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E2BB200()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E2BB2E0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E2BB3C0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E2BB4A0()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

void sub_24E2BB580()
{
  OUTLINED_FUNCTION_3_27();
  swift_unknownObjectWeakAssign();
}

double sub_24E2BB6A0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_24E2BB72C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_24DFF87A4;
}

void sub_24E2BB7B0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    OUTLINED_FUNCTION_75();
    v1 = sub_24E347CB8();
    v2 = GKGameCenterUIFrameworkBundle();
    v3 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24E36A270;
    v5 = *(v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_selectedPlayerCount);
    v6 = MEMORY[0x277D83B88];
    v7 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v7;
    *(v4 + 32) = v5;
    v8 = *(v0 + OBJC_IVAR____TtC12GameCenterUI29GKExpandedGroupViewController_maxPlayerCount);
    *(v4 + 96) = v6;
    *(v4 + 104) = v7;
    *(v4 + 72) = v8;
    v9 = sub_24E347CC8();
    v11 = v10;

    sub_24DFA0B40(v9, v11, Strong);
  }

  else
  {
    __break(1u);
  }
}