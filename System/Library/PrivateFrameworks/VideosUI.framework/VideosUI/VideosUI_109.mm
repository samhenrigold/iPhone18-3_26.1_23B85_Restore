void sub_1E3F349D0(uint64_t a1)
{
  if (!qword_1ECF3CC70)
  {
    type metadata accessor for SportsVoiceOverViewModel(255);
    sub_1E3F291A0(&qword_1ECF3CA18, type metadata accessor for SportsVoiceOverViewModel);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF3CC70);
    }
  }
}

void sub_1E3F34A64(uint64_t a1)
{
  if (!qword_1ECF3CC78)
  {
    type metadata accessor for SportsCanonicalBannerProxy(255);
    sub_1E3F291A0(&qword_1ECF3CA20, type metadata accessor for SportsCanonicalBannerProxy);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF3CC78);
    }
  }
}

void sub_1E3F34B68()
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_18_121();
    sub_1E3F35B20(319, v3, v4, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      _s20ScoreboardViewLayoutCMa();
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3F34C68()
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ViewModel();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_50_46();
      sub_1E3F35B20(319, v4, v5, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_32_5();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_68_31();
    return OUTLINED_FUNCTION_133_10(v7);
  }
}

void __swift_store_extra_inhabitant_index_27Tm()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_32_5();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_155_1();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

void sub_1E3F34EC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v7, v8, MEMORY[0x1E697DCC0]);
  if (v9 <= 0x3F)
  {
    sub_1E3F35B20(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_72();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_165();
    }
  }
}

unint64_t sub_1E3F34F8C()
{
  result = qword_1ECF3CC88;
  if (!qword_1ECF3CC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC90, &qword_1E42DEB58);
    sub_1E3F2C1A0();
    sub_1E3F2C310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CC88);
  }

  return result;
}

unint64_t sub_1E3F35018()
{
  result = qword_1ECF3CCA8;
  if (!qword_1ECF3CCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CB98, &qword_1E42DE880);
    sub_1E3F35D48(&qword_1ECF3CCB0, &qword_1ECF3CB90, &qword_1E42DE878, sub_1E3F350D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCA8);
  }

  return result;
}

unint64_t sub_1E3F350D0()
{
  result = qword_1ECF3CCB8;
  if (!qword_1ECF3CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CCC0, &qword_1E42DEB68);
    sub_1E3F291A0(qword_1EE27C190, type metadata accessor for BaseballClockView);
    sub_1E3F3518C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCB8);
  }

  return result;
}

unint64_t sub_1E3F3518C()
{
  result = qword_1ECF3CCC8;
  if (!qword_1ECF3CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CCD0, &qword_1E42DEB70);
    type metadata accessor for SportsClockView(255);
    sub_1E3F291A0(qword_1EE2800B8, type metadata accessor for SportsClockView);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E38678C0(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCC8);
  }

  return result;
}

unint64_t sub_1E3F35278()
{
  result = qword_1ECF3CCD8;
  if (!qword_1ECF3CCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CCE0, &qword_1E42DEB78);
    swift_getOpaqueTypeConformance2();
    sub_1E3F2D314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCD8);
  }

  return result;
}

unint64_t sub_1E3F3531C()
{
  result = qword_1ECF3CCE8;
  if (!qword_1ECF3CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CCF0, &qword_1E42DEB80);
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1ECF3CB60, &qword_1ECF3CB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCE8);
  }

  return result;
}

unint64_t sub_1E3F353EC()
{
  result = qword_1ECF3CCF8;
  if (!qword_1ECF3CCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD00, &qword_1E42DEB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CBE8, &qword_1E42DE8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CCF8);
  }

  return result;
}

unint64_t sub_1E3F35508()
{
  result = qword_1ECF3CD08;
  if (!qword_1ECF3CD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD10, &unk_1E42DEB90);
    sub_1E3F3558C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD08);
  }

  return result;
}

unint64_t sub_1E3F3558C()
{
  result = qword_1ECF3CD18;
  if (!qword_1ECF3CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC50, &qword_1E42DE918);
    sub_1E3F35618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD18);
  }

  return result;
}

unint64_t sub_1E3F35618()
{
  result = qword_1ECF3CD20;
  if (!qword_1ECF3CD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC68, &qword_1E42DE960);
    sub_1E3F356D0();
    sub_1E3A1558C(&qword_1EE2887C0, &qword_1ECF2A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD20);
  }

  return result;
}

unint64_t sub_1E3F356D0()
{
  result = qword_1ECF3CD28;
  if (!qword_1ECF3CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC60, &qword_1E42DE928);
    v3 = sub_1E3F3575C();
    sub_1E3F35840(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD28);
  }

  return result;
}

unint64_t sub_1E3F3575C()
{
  result = qword_1ECF3CD30;
  if (!qword_1ECF3CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CC58, &qword_1E42DE920);
    sub_1E3F357E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD30);
  }

  return result;
}

unint64_t sub_1E3F357E8()
{
  result = qword_1ECF688B0;
  if (!qword_1ECF688B0)
  {
    type metadata accessor for SportsBannerScoreboardView.BadgeView.BadgeLayoutModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF688B0);
  }

  return result;
}

unint64_t sub_1E3F35840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF688B8;
  if (!qword_1ECF688B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF688B8);
  }

  return result;
}

unint64_t sub_1E3F35894()
{
  result = qword_1ECF3CD38;
  if (!qword_1ECF3CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD40, &qword_1E42DEBA0);
    sub_1E3F35920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD38);
  }

  return result;
}

unint64_t sub_1E3F35920()
{
  result = qword_1ECF3CD48;
  if (!qword_1ECF3CD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD50, &qword_1E42DEBA8);
    sub_1E3A1558C(&qword_1ECF3CD58, &unk_1ECF3CD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CD48);
  }

  return result;
}

void sub_1E3F35A20()
{
  OUTLINED_FUNCTION_2_221();
  sub_1E3F35B20(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3F35B20(319, qword_1EE27EF08, type metadata accessor for TextBadgeLayout, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_50_46();
      sub_1E3F35B20(319, v4, v5, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3F35B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E3F35B84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      OUTLINED_FUNCTION_68_31();
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1E3F35C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF68A50;
  if (!qword_1ECF68A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF68A50);
  }

  return result;
}

unint64_t sub_1E3F35C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF68A58[0];
  if (!qword_1ECF68A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF68A58);
  }

  return result;
}

uint64_t sub_1E3F35D48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3F35DC0()
{
  result = qword_1ECF3CDC8;
  if (!qword_1ECF3CDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CDD0, &qword_1E42DEE98);
    sub_1E3F35E78();
    sub_1E3A1558C(&qword_1ECF3CDE8, &qword_1ECF3CDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CDC8);
  }

  return result;
}

unint64_t sub_1E3F35E78()
{
  result = qword_1ECF3CDD8;
  if (!qword_1ECF3CDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CDE0, &qword_1E42DEEA0);
    sub_1E3A1558C(&qword_1ECF3CDE8, &qword_1ECF3CDF0);
    sub_1E3F291A0(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CDD8);
  }

  return result;
}

unint64_t sub_1E3F35F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF68BE0[0];
  if (!qword_1ECF68BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF68BE0);
  }

  return result;
}

unint64_t sub_1E3F35FB4()
{
  result = qword_1ECF3CE18;
  if (!qword_1ECF3CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CE00, &qword_1E42DEEB8);
    sub_1E3F291A0(&qword_1ECF3CE10, type metadata accessor for SportsBannerScoreboardView.ScoreView);
    sub_1E3F291A0(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CE18);
  }

  return result;
}

void sub_1E3F360A0(unint64_t a1)
{
  v1 = a1;
  v2 = sub_1E32AE9B0(a1);
  v3 = 0;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (MEMORY[0x1E69E7CC0] + 32);
  v8 = v1 & 0xFFFFFFFFFFFFFF8;
  v25 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1;
  while (v2 != v3)
  {
    if (v5)
    {
      v9 = MEMORY[0x1E6911E60](v3, v1);
    }

    else
    {
      if (v3 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v4)
    {
      v10 = v6[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v11 = v2;
      v12 = v5;
      v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF00, &qword_1E42DEFD8);
      v15 = swift_allocObject();
      v16 = (_swift_stdlib_malloc_size(v15) - 32) / 16;
      v15[2] = v14;
      v15[3] = 2 * v16;
      v17 = (v15 + 4);
      v18 = v6[3];
      v19 = v18 >> 1;
      if (v6[2])
      {
        if (v15 != v6 || v17 >= &v6[2 * v19 + 4])
        {
          memmove(v15 + 4, v6 + 4, 16 * v19);
        }

        v6[2] = 0;
      }

      v7 = (v17 + 16 * v19);
      v4 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v18 >> 1);

      v6 = v15;
      v5 = v12;
      v2 = v11;
      v8 = v25;
      v1 = v26;
    }

    v21 = __OFSUB__(v4--, 1);
    if (v21)
    {
      goto LABEL_30;
    }

    *v7 = v3;
    v7[1] = v9;
    v7 += 2;
    ++v3;
  }

  v22 = v6[3];
  if (v22 < 2)
  {
    return;
  }

  v23 = v22 >> 1;
  v21 = __OFSUB__(v23, v4);
  v24 = v23 - v4;
  if (!v21)
  {
    v6[2] = v24;
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_1E3F3625C()
{
  v0 = type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_13_8();

  sub_1E3F306F8();
}

unint64_t sub_1E3F362DC()
{
  result = qword_1ECF3CEF0;
  if (!qword_1ECF3CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CEE0, &qword_1E42DEFB8);
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1ECF2E7A0, &qword_1ECF2E7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CEF0);
  }

  return result;
}

uint64_t sub_1E3F363AC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

uint64_t sub_1E3F36404()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1E3F36458(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E3F364B0()
{
  result = qword_1ECF3CFC8;
  if (!qword_1ECF3CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFB0, &qword_1E42DF090);
    sub_1E3F35278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CFC8);
  }

  return result;
}

unint64_t sub_1E3F3653C()
{
  result = qword_1ECF3CFD8;
  if (!qword_1ECF3CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFD0, &qword_1E42DF0A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFB0, &qword_1E42DF090);
    sub_1E3F364B0();
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE288890, &qword_1ECF2F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CFD8);
  }

  return result;
}

unint64_t sub_1E3F36630()
{
  result = qword_1ECF3CFE8;
  if (!qword_1ECF3CFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CF98, &qword_1E42DF078);
    sub_1E3F366BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CFE8);
  }

  return result;
}

unint64_t sub_1E3F366BC()
{
  result = qword_1ECF3CFF0;
  if (!qword_1ECF3CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFE0, &qword_1E42DF0B0);
    sub_1E3F3531C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3CFF0);
  }

  return result;
}

unint64_t sub_1E3F36750()
{
  result = qword_1ECF3D000;
  if (!qword_1ECF3D000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CFF8, &qword_1E42DF0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CF98, &qword_1E42DF078);
    sub_1E3F36630();
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE288890, &qword_1ECF2F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D000);
  }

  return result;
}

unint64_t sub_1E3F36844()
{
  result = qword_1ECF3D010;
  if (!qword_1ECF3D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CDB0, &qword_1E42DEE88);
    sub_1E3F368FC();
    sub_1E3A1558C(&qword_1ECF3D048, &unk_1ECF3D050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D010);
  }

  return result;
}

unint64_t sub_1E3F368FC()
{
  result = qword_1ECF3D018;
  if (!qword_1ECF3D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD98, &qword_1E42DEE78);
    sub_1E3F369B4();
    sub_1E3A1558C(&qword_1ECF3D038, &unk_1ECF3D040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D018);
  }

  return result;
}

unint64_t sub_1E3F369B4()
{
  result = qword_1ECF3D020;
  if (!qword_1ECF3D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD90, &qword_1E42DEE70);
    sub_1E3F36A6C();
    sub_1E3A1558C(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D020);
  }

  return result;
}

unint64_t sub_1E3F36A6C()
{
  result = qword_1ECF3D028;
  if (!qword_1ECF3D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD88, &qword_1E42DEE68);
    sub_1E3F36AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D028);
  }

  return result;
}

unint64_t sub_1E3F36AF8()
{
  result = qword_1ECF3D030;
  if (!qword_1ECF3D030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CD80, &qword_1E42DEE60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CDA0, &qword_1E42DEE80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
    sub_1E3A1558C(&qword_1ECF3CDA8, &qword_1ECF3CDA0);
    sub_1E3A1558C(&qword_1EE23ACD8, &qword_1ECF2A1F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D030);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP06VideosB0E23accessibilityIdentifier3key8locationQrAD019SportsAccessibilityF0V3KeyO_AI8LocationOtFQOyAA15ModifiedContentVyAcAE0E7Element8childrenQrAA0J13ChildBehaviorV_tFQOyAA6HStackVyAA05TupleC0VyAA6SpacerV_AA0C8ThatFitsVyAWyAUyAA7ForEachVySaySi6offset_AD04TextC5ModelC7elementtGA4_AWyAA012_ConditionalN0VyAOyAD11TextFactoryO08makeTextC09viewModel15preferredLayout15textLayoutStateQrA4__AD10TextLayoutCSgAD15TextLayoutStateOtFZQOy_Qo_AA21_TraitWritingModifierVyAA019LayoutPriorityTraitK0VGGA20_G_AcDE9tintColoryQrSo7UIColorCSgFQOyAA4TextV_Qo_SgtGGG_A20_tGGAWyA34__AcDE18applyingTextLayout_15dynamicTypeSize15layoutDirection11layoutState19colorSchemeContrast18reduceTransparencyQrA17__AA15DynamicTypeSizeOAA15LayoutDirectionOA19_AA19ColorSchemeContrastOSbtFQOyAUyAWyA20_Sg_AOyAOyAcDEA28_yQrA31_FQOyAD12ImageFactoryO9makeImage4from14builderContextA13_13isHighlighted11onImageLoadQrAD0C5ModelC_AD19ImageBuilderContextVAD11ImageLayoutCSgSbyAD20AsyncImageLoadResultVcSgtFZQOy_Qo__Qo_AA16_FixedSizeLayoutVGAA14_PaddingLayoutVGSgtGG_Qo_tGSgAYtGG_Qo_AA0J18AttachmentModifierVG_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_40_2(a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  v16 = a4();
  return OUTLINED_FUNCTION_53_44(v16, v8, v9, v10, v11, v12, v13, v14, v7);
}

uint64_t OUTLINED_FUNCTION_53_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getOpaqueTypeConformance2();
}

double OUTLINED_FUNCTION_83_18()
{

  return sub_1E3952BE0(v1, v2, v3, v4);
}

double OUTLINED_FUNCTION_128_11()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_133_10@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1E3F36DEC()
{
  v0 = sub_1E4207784();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3F36E38(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6F74617261706573;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3F36F58(char a1)
{
  sub_1E4207B44();
  sub_1E3F36E38(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3F36FC4(uint64_t a1, char a2)
{
  sub_1E3F36E38(a2);
  sub_1E4206014();
}

uint64_t sub_1E3F37020(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3F36E38(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3F37080@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F36DEC();
  *a1 = result;
  return result;
}

unint64_t sub_1E3F370B0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3F36E38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3F370DC(uint64_t a1)
{
  v157 = sub_1E3811878();
  v2 = *v157;
  v3 = v157[1];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x210);

  v5 = (v4)(v217);
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v7;
  sub_1E38C5C90(v2, v3, 0xD000000000000023, 0x80000001E4289250, isUniquelyReferenced_nonNull_native);
  *v7 = v206;
  v5(v217, 0);
  v9 = sub_1E40D7F48();
  v10 = *v9;
  v11 = v9[1];

  v20 = OUTLINED_FUNCTION_10_148(v12, v13, v14, v15, v16, v17, v18, v19, v138, v148, v157, a1, v177, "collection-header-element-kind", "etted-separator-element-kind", v206, v217[0]);
  v21 = (v4)(v20);
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v23;
  sub_1E38C5C90(v10, v11, 0xD00000000000001CLL, 0x80000001E42893B0, v24);
  *v23 = v207;
  v21(v217, 0);
  v25 = sub_1E3C5FE9C();
  v26 = *v25;
  v27 = v25[1];

  v36 = OUTLINED_FUNCTION_10_148(v28, v29, v30, v31, v32, v33, v34, v35, v139, v149, v158, v168, 0xD00000000000001CLL, v187, v196, v207, v217[0]);
  v37 = (v4)(v36);
  v39 = OUTLINED_FUNCTION_11_161(v37, v38);
  v208 = *v4;
  sub_1E38C5C90(v26, v27, 0xD00000000000001BLL, 0x80000001E42893D0, v39);
  OUTLINED_FUNCTION_2_222(v40, v41, v42, v43, v44, v45, v46, v47, v140, 0xD00000000000001BLL, v159, v169, v178, v188, v197, v208);
  ("etted-separator-element-kind")();
  type metadata accessor for CollectionRichHeaderView();
  swift_getObjCClassFromMetadata();
  v48 = sub_1E4205ED4();

  v49 = sub_1E4205ED4();

  OUTLINED_FUNCTION_9_161(v50, sel_vui_registerClass_forSupplementaryViewOfKind_withReuseIdentifier_);

  type metadata accessor for LeagueStandingsLegendFooter();
  swift_getObjCClassFromMetadata();
  v51 = sub_1E4205ED4();

  v52 = sub_1E4205ED4();

  OUTLINED_FUNCTION_9_161(v53, sel_vui_registerClass_forSupplementaryViewOfKind_withReuseIdentifier_);

  type metadata accessor for AskToBuyListHeader();
  swift_getObjCClassFromMetadata();
  v54 = v150;
  v55 = sub_1E4205ED4();

  v56 = sub_1E4205ED4();

  OUTLINED_FUNCTION_9_161(v57, &selRef_prewarmWithConfigCachePolicy_ + 2);

  v58 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0);
  v67 = OUTLINED_FUNCTION_10_148(v59, v60, v61, v62, v63, v64, v65, v66, v141, v150, v160, v170, v179, v189, v198, v209, v217[0]);
  v68 = v58(v67);
  OUTLINED_FUNCTION_11_161(v68, v69);
  OUTLINED_FUNCTION_14_156();
  v71 = sub_1E3E6C880(v54, 0x80000001E42893D0, 146, v70);
  OUTLINED_FUNCTION_2_222(v71, v72, v73, v74, v75, v76, v77, v78, v142, v151, v161, v171, v180, v190, v199, v210);
  v79 = (v55)();
  v87 = OUTLINED_FUNCTION_10_148(v79, v80, v81, v82, v83, v84, v85, v86, v143, v152, v162, v172, v181, v191, v200, v211, v217[0]);
  v88 = v58(v87);
  OUTLINED_FUNCTION_11_161(v88, v89);
  OUTLINED_FUNCTION_14_156();
  v90 = OUTLINED_FUNCTION_22_90();
  v93 = sub_1E3E6C880(v90, v91, 138, v92);
  OUTLINED_FUNCTION_2_222(v93, v94, v95, v96, v97, v98, v99, v100, v144, v153, v163, v173, v182, v192, v201, v212);
  v101 = (v55)();
  v109 = OUTLINED_FUNCTION_10_148(v101, v102, v103, v104, v105, v106, v107, v108, v145, v154, v164, v174, v183, v193, v202, v213, v217[0]);
  v110 = v58(v109);
  OUTLINED_FUNCTION_11_161(v110, v111);
  OUTLINED_FUNCTION_14_156();
  v112 = OUTLINED_FUNCTION_22_90();
  v115 = sub_1E3E6C880(v112, v113, 139, v114);
  OUTLINED_FUNCTION_2_222(v115, v116, v117, v118, v119, v120, v121, v122, v146, v155, v165, v175, v184, v194, v203, v214);
  v123 = (v55)();
  v131 = OUTLINED_FUNCTION_10_148(v123, v124, v125, v126, v127, v128, v129, v130, v147, v156, v166, v176, v185, v195, v204, v215, v217[0]);
  v133 = v132(v131);
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *v135;
  sub_1E3E6C880(v186, v205 | 0x8000000000000000, 77, v136);
  *v135 = v216;
  return v133(v217, 0);
}

void sub_1E3F3758C()
{
  type metadata accessor for GradientBackgroundDecorationView();
  swift_getObjCClassFromMetadata();
  v0 = sub_1E4205ED4();
  v1 = OUTLINED_FUNCTION_1_256();
  [v1 v2];

  type metadata accessor for ColorBackgroundDecorationView();
  swift_getObjCClassFromMetadata();
  v3 = sub_1E4205ED4();
  v4 = OUTLINED_FUNCTION_1_256();
  [v4 v5];

  type metadata accessor for ColorBackgroundSeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v6 = sub_1E4205ED4();
  v7 = OUTLINED_FUNCTION_1_256();
  [v7 v8];

  type metadata accessor for LeadingSeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v9 = sub_1E4205ED4();
  v10 = OUTLINED_FUNCTION_1_256();
  [v10 v11];

  type metadata accessor for InsettedSeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v12 = sub_1E4205ED4();
  v13 = OUTLINED_FUNCTION_1_256();
  [v13 v14];

  type metadata accessor for SeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v15 = sub_1E4205ED4();
  v16 = OUTLINED_FUNCTION_1_256();
  [v16 v17];

  type metadata accessor for BackgroundGradientWithTopSeparatorDecorationView();
  swift_getObjCClassFromMetadata();
  v20 = sub_1E4205ED4();
  v18 = OUTLINED_FUNCTION_1_256();
  [v18 v19];
}

void sub_1E3F3778C(const void *a1@<X1>, void *a2@<X2>, void *a4@<X8>)
{
  type metadata accessor for CollectionViewModel();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
  }

  memcpy(__dst, a1, sizeof(__dst));
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x440);
  sub_1E3F383E4(a1, v22);
  v10 = OUTLINED_FUNCTION_21_102();
  v11 = v9(v10);
  v12 = OUTLINED_FUNCTION_21_102();
  v14 = v13(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D058, &unk_1E42DF0E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = v11;
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v22[0] = MEMORY[0x1E69E7CC0];
  v16 = v14;
  v17 = v11;
  for (i = 0; ; ++i)
  {
    if (i == 4)
    {
      swift_setDeallocating();
      sub_1E3F38384();
      sub_1E3280A90(0, &qword_1EE23AEC0, 0x1E6995548);
      v21 = sub_1E42062A4();

      [a2 setBoundarySupplementaryItems_];

      sub_1E3F37A14(a2, v8);

      memcpy(a4, __dst, 0xB0uLL);
      return;
    }

    if (i > 3)
    {
      break;
    }

    v19 = *(inited + 8 * i + 32);
    if (v19)
    {
      v20 = v19;
      MEMORY[0x1E6910BF0]();
      if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
    }
  }

  __break(1u);
}

void sub_1E3F37A14(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v41 = 0u;
    v42 = 0u;
    goto LABEL_8;
  }

  LOBYTE(v40) = 13;
  (*(*a2 + 776))(&v41, &v40, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!*(&v42 + 1))
  {
LABEL_8:
    sub_1E325F748(&v41, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v4 = sub_1E3F36DEC();
  if (v4 == 8)
  {
    v4 = 0;
  }

LABEL_10:
  sub_1E3F36E38(v4);
  v6 = v5;
  OUTLINED_FUNCTION_13_158();
  if (v7 == 0xD000000000000016 && v9 == v8)
  {

    goto LABEL_18;
  }

  v11 = v7;
  sub_1E42079A4();
  OUTLINED_FUNCTION_64_1();
  if (v2 & 1) != 0 || (*sub_1E41C83E4())
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000023 && v20 == v6)
  {

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_174(v18, v19, 0xD000000000000023, v20);
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000012 && v24 == v6)
  {

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_174(v22, v23, 0xD000000000000012, v24);
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000010 && v28 == v6)
  {

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_174(v26, v27, 0xD000000000000010, v28);
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000011 && v32 == v6)
  {

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_174(v30, v31, 0xD000000000000011, v32);
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  if (v11 == 0x6F74617261706573 && v6 == 0xE900000000000072)
  {

    goto LABEL_18;
  }

  sub_1E42079A4();
  OUTLINED_FUNCTION_64_1();
  if (v2)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_13_158();
  if (v11 == 0xD000000000000022 && v37 == v6)
  {

    goto LABEL_18;
  }

  v39 = OUTLINED_FUNCTION_8_174(v35, v36, 0xD000000000000022, v37);

  if (v39)
  {
LABEL_18:
    v12 = objc_opt_self();
    v13 = sub_1E4205ED4();
    v14 = [v12 backgroundDecorationItemWithElementKind_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E4298880;
    *(v15 + 32) = v14;
    sub_1E3280A90(0, &qword_1EE23AF20, 0x1E6995550);
    v16 = v14;
    v17 = sub_1E42062A4();

    [a1 setDecorationItems_];
  }
}

id sub_1E3F37E24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CollectionViewModel();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v72 = a1;
  v10 = *(*v8 + 968);

  v12 = v10(v11);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  OUTLINED_FUNCTION_85();
  v16 = *(v15 + 98);
  v17 = (*(v14 + 464))();
  v19 = sub_1E3AE003C(v16, v17, v18);
  v21 = v20;

  if (!v21)
  {
LABEL_9:

LABEL_10:

    v24 = 0;
    goto LABEL_11;
  }

  if (v19 == a2 && v21 == a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_123_1();
    v23 = sub_1E42079A4();

    if ((v23 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_85();
  v40 = (*(v39 + 512))();
  v41 = OUTLINED_FUNCTION_123_1();
  sub_1E37D26AC(v41, v42, v40);
  v44 = v43;

  if (!v44)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_123_1();
  v45 = sub_1E4205ED4();
  v46 = sub_1E4205ED4();

  v47 = sub_1E41FE7E4();
  v24 = [v72 vui:v45 dequeueReusableSupplementaryViewOfKind:v46 withReuseIdentifier:v47 forIndexPath:?];

  v48 = v24;
  v49 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  memset(v74, 0, 40);
  v50 = v49;
  v51 = sub_1E393D9C4(v13, v24, v74, 0);

  sub_1E325F748(v74, &qword_1ECF296C0, &unk_1E429BBE0);
LABEL_11:
  v25 = *(*v9 + 992);

  v27 = v25(v26);
  if (v27)
  {
    v28 = v27;
    OUTLINED_FUNCTION_85();
    v31 = *(v30 + 98);
    v32 = (*(v29 + 488))();
    v34 = sub_1E3AE003C(v31, v32, v33);
    v36 = v35;

    if (v36)
    {
      if (v34 == a2 && v36 == a3)
      {
      }

      else
      {
        OUTLINED_FUNCTION_123_1();
        v38 = sub_1E42079A4();

        if ((v38 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_85();
      v53 = (*(v52 + 512))();
      v54 = OUTLINED_FUNCTION_123_1();
      sub_1E37D26AC(v54, v55, v53);
      v57 = v56;

      if (v57)
      {
        OUTLINED_FUNCTION_123_1();
        v58 = sub_1E4205ED4();
        v59 = sub_1E4205ED4();

        v60 = sub_1E41FE7E4();
        v61 = [v72 vui:v58 dequeueReusableSupplementaryViewOfKind:v59 withReuseIdentifier:v60 forIndexPath:?];

        v62 = v61;
        sub_1E38BAE74(v74);
        v63 = *v74;
        v64 = sub_1E407F528(v72);
        v66 = v65;
        v67 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v73[3] = &type metadata for CollectionViewCellContext;
        v73[4] = &off_1F5D621F8;
        v68 = swift_allocObject();
        v73[0] = v68;
        *(v68 + 16) = v63;
        *(v68 + 24) = v64;
        *(v68 + 32) = v66;
        *(v68 + 40) = *&v74[24];
        *(v68 + 55) = *&v74[39];
        v69 = v67;
        v70 = sub_1E393D9C4(v28, v61, v73, 0);

        sub_1E325F748(v73, &qword_1ECF296C0, &unk_1E429BBE0);
        return v61;
      }
    }

LABEL_18:
  }

  return v24;
}

uint64_t sub_1E3F38384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D060, &qword_1E42DF248);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3F383E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296A0, &qword_1E42DF0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DocumentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CollectionDecorationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3F38600()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3C2D4E8(4);
  sub_1E37BD068();
  v154[0] = 2;
  LOBYTE(v183) = 7;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_13_159();
  OUTLINED_FUNCTION_12_147();
  v2 = OUTLINED_FUNCTION_11_162();
  LOBYTE(v155) = v159;
  v10 = OUTLINED_FUNCTION_1_257(v2, v3, v4, v5, v6, v7, v8, v9, *v154);
  sub_1E3C2FCB8(v10, v11, v12, v13, v14, v15, &qword_1F5D549D8, v16);
  OUTLINED_FUNCTION_9_162();
  OUTLINED_FUNCTION_36();
  v25 = OUTLINED_FUNCTION_30_3(v17, v18, v19, v20, v21, v22, v23, v24, *v154);
  v26(v25, 48);

  OUTLINED_FUNCTION_0_36();
  v28 = *(v27 + 1792);

  v28(10);

  v29 = *(v1 + 104);

  v30 = *sub_1E3E5FD88();
  v31 = *(*v29 + 680);
  v32 = v30;
  v31(v30);

  v154[8] = 0;
  OUTLINED_FUNCTION_10_149();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_7_200();
  v33 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_4_222(v33, v34, v35, v36, v37, v38, v39, v40, 0x408E000000000000, *&v154[8], *&v154[16], *&v154[24], *&v154[32], *&v154[40], *&v154[48], *&v154[56], *&v154[64], *&v154[72], *&v154[80], *&v154[88], *&v154[96], *&v154[104], *&v154[112], *&v154[120], *&v154[128], *&v154[136], *&v154[144], *&v154[152], *&v154[160], *&v154[168], *&v154[176], *&v154[184], *&v154[192], *&v154[200], *&v154[208], *&v154[216], *&v154[224], *&v154[232], v155, *(&v155 + 1), v156, *(&v156 + 1), v157, v158, v159, SBYTE8(v159), v160, *(&v160 + 1), v161, v162, v163, SBYTE8(v163), v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, *(&v168 + 1), v169, v170, v171);
  memcpy(v154, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v49 = OUTLINED_FUNCTION_30_3(v41, v42, v43, v44, v45, v46, v47, v48, *v154);
  v50(v49, 4);

  OUTLINED_FUNCTION_0_36();
  v52 = *(v51 + 2056);

  v52(2, 0);

  OUTLINED_FUNCTION_0_36();
  v54 = *(v53 + 1984);

  v54(5);

  OUTLINED_FUNCTION_0_36();
  v56 = *(v55 + 464);

  v56(4);

  sub_1E3952C94();
  *v154 = v57;
  *&v154[8] = v58;
  *&v154[16] = v59;
  *&v154[24] = v60;
  v154[32] = 0;
  sub_1E3952C94();
  v183 = v61;
  v184 = v62;
  v185 = v63;
  v186 = v64;
  v187 = 0;
  type metadata accessor for UIEdgeInsets();
  v66 = v65;
  sub_1E3C2FC98();
  v177 = v180;
  v178 = v181;
  v179 = v182;
  sub_1E3C3DE00();
  v171 = v174;
  v172 = v175;
  v173 = v176;
  sub_1E3C3DE00();
  v163 = v167;
  v164 = v168;
  LOBYTE(v165) = v169;
  v67 = sub_1E3C3DE00();
  v155 = v159;
  v156 = v160;
  LOBYTE(v157) = v161;
  v75 = OUTLINED_FUNCTION_1_257(v67, v68, v69, v70, v71, v72, v73, v74, *v154);
  sub_1E3C2FCB8(v75, v76, v77, v78, v79, v80, v66, v81);
  memcpy(v154, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v90 = OUTLINED_FUNCTION_30_3(v82, v83, v84, v85, v86, v87, v88, v89, *v154);
  v91(v90, 0);

  OUTLINED_FUNCTION_0_36();
  v93 = *(v92 + 1720);

  v93(8);

  sub_1E374EA2C();
  v154[0] = 17;
  LOBYTE(v183) = 15;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_13_159();
  OUTLINED_FUNCTION_12_147();
  v94 = OUTLINED_FUNCTION_11_162();
  LOBYTE(v155) = v159;
  v102 = OUTLINED_FUNCTION_1_257(v94, v95, v96, v97, v98, v99, v100, v101, *v154);
  sub_1E3C2FCB8(v102, v103, v104, v105, v106, v107, &qword_1F5D549D8, v108);
  OUTLINED_FUNCTION_9_162();
  OUTLINED_FUNCTION_36();
  v117 = OUTLINED_FUNCTION_30_3(v109, v110, v111, v112, v113, v114, v115, v116, *v154);
  v118(v117, 48);

  OUTLINED_FUNCTION_3_1();
  v120 = *(v119 + 1792);

  v120(4);

  OUTLINED_FUNCTION_3_1();
  v122 = *(v121 + 680);

  v122(0);

  OUTLINED_FUNCTION_3_1();
  v124 = *(v123 + 704);

  v124(1);

  *v154 = 0x408E000000000000;
  v154[8] = 0;
  OUTLINED_FUNCTION_10_149();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_7_200();
  v125 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_4_222(v125, v126, v127, v128, v129, v130, v131, v132, *v154, *&v154[8], *&v154[16], *&v154[24], *&v154[32], *&v154[40], *&v154[48], *&v154[56], *&v154[64], *&v154[72], *&v154[80], *&v154[88], *&v154[96], *&v154[104], *&v154[112], *&v154[120], *&v154[128], *&v154[136], *&v154[144], *&v154[152], *&v154[160], *&v154[168], *&v154[176], *&v154[184], *&v154[192], *&v154[200], *&v154[208], *&v154[216], *&v154[224], *&v154[232], v155, *(&v155 + 1), v156, *(&v156 + 1), v157, v158, v159, SBYTE8(v159), v160, *(&v160 + 1), v161, v162, v163, SBYTE8(v163), v164, *(&v164 + 1), v165, v166, v167, *(&v167 + 1), v168, *(&v168 + 1), v169, v170, v171);
  memcpy(v154, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v141 = OUTLINED_FUNCTION_30_3(v133, v134, v135, v136, v137, v138, v139, v140, *v154);
  v142(v141, 4);

  OUTLINED_FUNCTION_3_1();
  v144 = *(v143 + 2056);

  v144(0, 0);

  OUTLINED_FUNCTION_3_1();
  v146 = *(v145 + 1984);

  v146(5);

  OUTLINED_FUNCTION_3_1();
  v148 = *(v147 + 464);

  v148(4);

  OUTLINED_FUNCTION_3_1();
  v150 = *(v149 + 1720);

  v150(8);

  v151 = sub_1E37BD068();
  sub_1E3C37CBC(v151, 23);

  v152 = sub_1E374EA2C();
  sub_1E3C37CBC(v152, 15);

  return v1;
}

double sub_1E3F38DE8(char a1)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E324FBDC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_1E323F000, v7, v8, "EmptyStateViewLayout: update layout isPortrait: %{BOOL}d", v9, 8u);
    MEMORY[0x1E69143B0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = (a1 & 1) == 0;
  if (a1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  if (v10)
  {
    v12 = 5;
  }

  else
  {
    v12 = 1;
  }

  sub_1E3C2D4E8(v11);
  v13 = *sub_1E37BD068();
  (*(v13 + 1984))(v12);

  OUTLINED_FUNCTION_0_36();
  v15 = *(v14 + 464);

  v15(v11);

  v16 = *sub_1E374EA2C();
  (*(v16 + 1984))(v12);

  OUTLINED_FUNCTION_3_1();
  v18 = *(v17 + 464);

  v18(v11);

  return result;
}

uint64_t sub_1E3F390FC()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1696))(5);

  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 2056);

  v4(2, 0);

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 2128);

  v6(0x3FE570A3D70A3D71, 0);

  OUTLINED_FUNCTION_36();
  v8 = *(v7 + 1792);

  v8(10);

  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 2032);

  v10(1);

  v11 = *(v1 + 104);

  v12 = sub_1E3E5FD88();
  v13 = *v12;
  v14 = *(*v11 + 680);
  v15 = *v12;
  v14(v13);

  sub_1E3952C58();
  v92[0] = v16;
  v92[1] = v17;
  v92[2] = v18;
  v92[3] = v19;
  LOBYTE(v92[4]) = 0;
  v102 = 0u;
  v103 = 0u;
  v104 = 1;
  memset(v99, 0, sizeof(v99));
  v100 = 1;
  memset(v97, 0, sizeof(v97));
  v98 = 1;
  sub_1E3952C58();
  v95[0] = v20;
  v95[1] = v21;
  v95[2] = v22;
  v95[3] = v23;
  v96 = 0;
  v93[0] = xmmword_1E42A9D20;
  v93[1] = xmmword_1E42DB1E0;
  v94 = 0;
  type metadata accessor for UIEdgeInsets();
  v25 = v24;
  sub_1E3C2FCB8(v92, &v102, v99, v97, v95, v93, v24, __src);
  memcpy(v92, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v26 + 1600))(v92, 0, v27 & 1, v25);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v28 + 2056))(2, 0);

  OUTLINED_FUNCTION_36();
  v30 = *(v29 + 2128);

  v30(0x3FE570A3D70A3D71, 0);

  v31 = objc_opt_self();

  v32 = [v31 systemGrayColor];
  OUTLINED_FUNCTION_36();
  (*(v33 + 680))();

  OUTLINED_FUNCTION_36();
  v35 = *(v34 + 1696);

  v35(17);

  sub_1E3952C58();
  __src[0] = v36;
  __src[1] = v37;
  __src[2] = v38;
  __src[3] = v39;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v40 + 160))(__src);

  sub_1E3A9C2A0();
  OUTLINED_FUNCTION_2_1();
  v42 = (*(v41 + 2048))();

  (*(*v42 + 1696))(15);

  sub_1E3952C58();
  v92[0] = v43;
  v92[1] = v44;
  v92[2] = v45;
  v92[3] = v46;
  LOBYTE(v92[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v47 + 160))(v92);

  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  (*(v48 + 360))(0x4035000000000000, 0);

  OUTLINED_FUNCTION_36();
  v50 = *(v49 + 1808);

  v50(1);

  sub_1E3952C58();
  *&v102 = v51;
  *(&v102 + 1) = v52;
  *&v103 = v53;
  *(&v103 + 1) = v54;
  v104 = 0;
  OUTLINED_FUNCTION_8();
  (*(v55 + 160))(&v102);

  v56.n128_u64[0] = 23.0;
  j__OUTLINED_FUNCTION_7_78(v56);
  OUTLINED_FUNCTION_3();
  v57 = *v12;
  OUTLINED_FUNCTION_8();
  v59 = *(v58 + 680);

  v60 = v57;
  v59(v57);

  type metadata accessor for RelationalLayout();
  v61 = sub_1E4177030();
  OUTLINED_FUNCTION_6();
  nullsub_1();
  OUTLINED_FUNCTION_3();
  sub_1E41776B0(23, v62, v63, v64, v65);
  v66 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v67, v66, v68, v69, v70);
  v71 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v72, v71, v73, v74, v75);
  v76 = OUTLINED_FUNCTION_6();
  sub_1E41776B0(v77, v76, v78, v79, v80);
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  v82 = *(v81 + 1424);
  v83 = swift_retain_n();
  v82(v83);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v84 + 1424))(v61);

  sub_1E3A9C2A0();
  OUTLINED_FUNCTION_2_1();
  (*(v85 + 1424))(v61);

  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  (*(v86 + 1424))(v61);

  v87 = sub_1E37BD068();
  sub_1E3C37CBC(v87, 23);

  v88 = sub_1E374EA2C();
  sub_1E3C37CBC(v88, 15);

  v89 = sub_1E37DAE10();
  sub_1E3C37CBC(v89, 39);

  v90 = sub_1E3A9C2A0();
  sub_1E3C37CBC(v90, 60);

  return v1;
}

void sub_1E3F39A24(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);
  sub_1E37DAE10();
  OUTLINED_FUNCTION_2_1();
  v3 = COERCE_DOUBLE((*(v2 + 352))());
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    v6 = sub_1E3C2F8E8();
    if (v6)
    {
      v7 = v6;
      [objc_opt_self() scaleContentSizeValue:v6 forTraitCollection:5 maximumContentSizeCategory:v3];
      v9 = v8;
      OUTLINED_FUNCTION_8();
      v11 = *(v10 + 360);

      v11(v9, 0);
    }
  }
}

uint64_t sub_1E3F39B84(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 99, a2);
  *(v2 + 99) = a1;
  return result;
}

uint64_t sub_1E3F39BB8()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39C20()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    _s16FooterViewLayoutCMa();
    v1 = sub_1E37D4C70();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39C88()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ChannelLogoViewLayout();
    v1 = sub_1E3E390C4();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39CF0()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(0, v3 & 1, v4, v5 & 1);
    *(v2 + 176) = v1;
  }

  return v1;
}

id sub_1E3F39D7C()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 184);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 184);
    *(v0 + 184) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1E3F39DEC()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(3, v3 & 1, v4, v5 & 1);
    *(v2 + 192) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39E78()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 200) = v1;
  }

  return v1;
}

uint64_t sub_1E3F39F08(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 208, a2);
  *(v2 + 208) = a1;
  return result;
}

void sub_1E3F39F78()
{
  OUTLINED_FUNCTION_41_5();
  *(v0 + 99) = 1;
  *(v0 + 104) = 0u;
  OUTLINED_FUNCTION_46_55(0);
  *(v0 + 98) = v1;
  v2 = sub_1E3C2F9A0();
  swift_beginAccess();
  switch(*(v2 + 98))
  {
    case 1:

      OUTLINED_FUNCTION_111();
      (*(v3 + 512))(18);
      v4 = *(MEMORY[0x1E69DDCE0] + 16);
      v1774 = *MEMORY[0x1E69DDCE0];
      v1775 = v4;
      LOBYTE(v1776) = 0;
      OUTLINED_FUNCTION_111();
      (*(v5 + 184))(&v1774);
      OUTLINED_FUNCTION_3_0(v2 + 99, &v1762);
      *(v2 + 99) = 0;
      if (TVAppFeature.isEnabled.getter(17, v6, v7))
      {
        memset(v1749, 0, 32);
        v1749[32] = 1;
        v10 = TVAppFeature.isEnabled.getter(10, v8, v9);
        v13 = TVAppFeature.isEnabled.getter(10, v11, v12);
        v16 = 0x402C000000000000;
        if (v10)
        {
          v17 = 0x4032000000000000;
        }

        else
        {
          v17 = 0x402C000000000000;
        }

        if (v13)
        {
          v16 = 0x4032000000000000;
        }

        v1735[0] = 0;
        v1735[1] = v17;
        *&v1736 = 0x4030000000000000;
        *(&v1736 + 1) = v16;
        LOBYTE(v1737) = 0;
        v18 = TVAppFeature.isEnabled.getter(10, v14, v15);
        v21 = TVAppFeature.isEnabled.getter(10, v19, v20);
        v24 = TVAppFeature.isEnabled.getter(10, v22, v23);
        v25 = 0x4034000000000000;
        if (v18)
        {
          v26 = 0x4032000000000000;
        }

        else
        {
          v26 = 0x4034000000000000;
        }

        *&__dst[0] = 0;
        *(&__dst[0] + 1) = v26;
        if (v21)
        {
          v27 = 0x4030000000000000;
        }

        else
        {
          v27 = 0x4034000000000000;
        }

        if (v24)
        {
          v25 = 0x4032000000000000;
        }

        *&__dst[1] = v27;
        *(&__dst[1] + 1) = v25;
        LOBYTE(__dst[2]) = 0;
        v1771 = xmmword_1E42CC340;
        v1772 = xmmword_1E42DF2E0;
        LOBYTE(v1773) = 0;
        __asm { FMOV            V1.2D, #20.0 }

        v1768 = xmmword_1E42AE100;
        v1769 = _Q1;
        LOBYTE(v1770) = 0;
        v1765 = xmmword_1E42AE100;
        v1766 = _Q1;
        LOBYTE(v1767) = 0;
        type metadata accessor for UIEdgeInsets();
        v34 = v33;
        v35 = v1749;
        v36 = v1735;
        v37 = __dst;
      }

      else
      {
        memset(__dst, 0, 32);
        LOBYTE(__dst[2]) = 1;
        *v1749 = xmmword_1E42A76C0;
        *&v1749[16] = xmmword_1E42CA400;
        v1749[32] = 0;
        *v1735 = xmmword_1E42B8850;
        v1736 = xmmword_1E4296D10;
        LOBYTE(v1737) = 0;
        v1771 = xmmword_1E42B8890;
        v1772 = xmmword_1E42DF2C0;
        LOBYTE(v1773) = 0;
        v1768 = xmmword_1E42B8850;
        v1769 = xmmword_1E429E560;
        LOBYTE(v1770) = 0;
        v1765 = xmmword_1E42CC3D0;
        v1766 = xmmword_1E42DF2D0;
        LOBYTE(v1767) = 0;
        type metadata accessor for UIEdgeInsets();
        v34 = v629;
        v35 = __dst;
        v36 = v1749;
        v37 = v1735;
      }

      sub_1E3C2FCB8(v35, v36, v37, &v1771, &v1768, &v1765, v34, __src);
      memcpy(__dst, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_12_148(v630, v631, v632, v633, v634, v635, v636, v637, v906, v948, v989, v1032, v1074, v1116, v1160, v1202, v1245, v1288, v1329, v1371, v1412, v1454, v1496, v1536, v1576, v1615, v1655, v1695, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_41_62();
      v638();
      *&v1768 = 0;
      BYTE8(v1768) = 1;
      *&v1765 = 0x4077C00000000000;
      BYTE8(v1765) = 0;
      *&v1759 = 0x4077C00000000000;
      BYTE8(v1759) = 0;
      v1778 = 0x4081800000000000;
      v1779 = 0;
      v1756 = 0x4077500000000000;
      LOBYTE(v1757) = 0;
      v641 = TVAppFeature.isEnabled.getter(17, v639, v640);
      v642 = 0x4075A00000000000;
      if (v641)
      {
        v642 = 0x4075300000000000;
      }

      *&__dst[0] = v642;
      BYTE8(__dst[0]) = 0;
      v643 = MEMORY[0x1E69E7DE0];
      sub_1E3C2FCB8(&v1768, &v1765, &v1759, &v1778, &v1756, __dst, MEMORY[0x1E69E7DE0], __src);
      OUTLINED_FUNCTION_18_122(v644, v645, v646, v647, v648, v649, v650, v651, v944, v985, v1028, v1070, v1112, v1156, v1198, v1241, v1284, v1326, v1367, v1408, v1450, v1492, v1532, v1572, v1611, v1651, v1691, v1731, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v653 = *(v652 + 1600);
      OUTLINED_FUNCTION_12_148(v654, v655, v656, v657, v658, v659, v660, v661, v945, v986, v1029, v1071, v1113, v1157, v1199, v1242, v1285, v1327, v1368, v1409, v1451, v1493, v1533, v1573, v1612, v1652, v1692, v1732, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_59_35();
      v653();
      *v1749 = 0;
      v1749[8] = 1;
      v1735[0] = 0x4074400000000000;
      LOBYTE(v1735[1]) = 0;
      OUTLINED_FUNCTION_38_63(0x4074400000000000uLL);
      v1754 = 0;
      LOBYTE(v1755) = 1;
      v1752 = v662;
      LOBYTE(v1753) = 0;
      v1750 = 0x4074B00000000000;
      LOBYTE(v1751) = 0;
      sub_1E3C2FCB8(v1749, v1735, &v1771, &v1754, &v1752, &v1750, v643, __dst);
      memcpy(v1749, __dst, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_58_36();
      v653();
      OUTLINED_FUNCTION_9_2();
      v664 = *(v663 + 2016);
      v664();
      OUTLINED_FUNCTION_30();
      (*(v665 + 184))(&v1774);

      v667 = (v664)(v666);
      OUTLINED_FUNCTION_111();
      v669 = (*(v668 + 248))();
      (*(*v667 + 208))(v669, v670 & 1);

      if (TVAppFeature.isEnabled.getter(17, v671, v672) & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v673, v674))
      {
        OUTLINED_FUNCTION_3_0(v2 + 208, &v1771);
        *(v2 + 208) = 1;
      }

      v675 = *sub_1E3E5FD88();
      v676 = *sub_1E3E5FDEC();
      v1494 = *sub_1E3E5F58C();
      v677 = *sub_1E3E5F6B8();
      v678 = (*v2 + 1872);
      v679 = *v678;
      v680 = v677;
      v679();
      OUTLINED_FUNCTION_2_1();
      (*(v681 + 2056))(1, 0);

      (v679)(v682);
      OUTLINED_FUNCTION_2_1();
      (*(v683 + 1936))(2);

      (v679)(v684);
      OUTLINED_FUNCTION_2_1();
      (*(v685 + 1792))(10);

      v1613 = v678;
      (v679)(v686);
      v1574 = v679;
      OUTLINED_FUNCTION_2_1();
      (*(v687 + 2008))(1);

      (v679)(v688);
      *v1749 = v680;
      v1735[0] = v676;
      v1754 = v676;
      v1369 = v676;
      v689 = v676;
      v690 = v680;
      if (TVAppFeature.isEnabled.getter(17, v691, v692))
      {
        v693 = v689;
      }

      else
      {
        v693 = v690;
      }

      v1752 = v693;
      v694 = v693;
      v1410 = v690;
      if (TVAppFeature.isEnabled.getter(17, v695, v696))
      {
        v697 = v689;
      }

      else
      {
        v697 = v690;
      }

      v1750 = v697;
      v698 = v697;
      v1534 = v675;
      v1452 = v689;
      if ((TVAppFeature.isEnabled.getter(17, v699, v700) & 1) == 0)
      {
        v689 = v675;
      }

      v1747 = v689;
      v701 = sub_1E3755B54();
      v702 = v689;
      sub_1E3C2FCB8(v1749, v1735, &v1754, &v1752, &v1750, &v1747, v701, __dst);
      v703 = __dst[0];
      v704 = __dst[1];
      v705 = __dst[2];
      *v1749 = __dst[0];
      *&v1749[16] = __dst[1];
      *&v1749[32] = __dst[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_131();
      v706();

      v679();
      OUTLINED_FUNCTION_30_77();
      v1749[0] = v707;
      LOBYTE(v1735[0]) = 19;
      TVAppFeature.isEnabled.getter(17, v708, v709);
      LOBYTE(v1754) = 19;
      TVAppFeature.isEnabled.getter(17, v710, v711);
      OUTLINED_FUNCTION_55_44();
      if (!_ZF)
      {
        v714 = 17;
      }

      LOBYTE(v1752) = v714;
      if (TVAppFeature.isEnabled.getter(17, v712, v713))
      {
        v715 = 19;
      }

      else
      {
        v715 = 21;
      }

      LOBYTE(v1750) = v715;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_19_131();
      sub_1E3C2FCB8(v716, v717, v718, v719, v720, v721, &qword_1F5D549D8, v722);
      OUTLINED_FUNCTION_53_45();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      (*(v723 + 1600))(v1749, 48, v724 & 1, &qword_1F5D549D8);

      (v679)(v725);
      OUTLINED_FUNCTION_2_1();
      (*(v726 + 1720))(7);

      (v679)(v727);
      v728 = sub_1E4205F14();
      v730 = v729;
      v731 = *MEMORY[0x1E6979CE8];
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v728, v730, v732, v733);
      OUTLINED_FUNCTION_36();
      (*(v734 + 1888))();

      if (TVAppFeature.isEnabled.getter(10, v735, v736))
      {
        sub_1E3F3EF78();
      }

      else
      {
        OUTLINED_FUNCTION_111();
        v737 += 237;
        v738 = *v737;
        v739 = v737;
        (*v737)();
        v1200 = v739;
        v1243 = v738;
        v1754 = 2;
        LOBYTE(v1755) = 0;
        if (TVAppFeature.isEnabled.getter(17, v740, v741))
        {
          v742 = 2;
        }

        else
        {
          v742 = 3;
        }

        *v1749 = v742;
        v1749[8] = 0;
        v743 = MEMORY[0x1E69E6810];
        sub_1E3C2FC98();
        v1752 = v1735[0];
        LOBYTE(v1753) = v1735[1];
        sub_1E3C3DE00();
        v1747 = v1750;
        LOBYTE(v1748) = v1751;
        sub_1E3C3DE00();
        v1743 = v1745;
        LOBYTE(v1744) = v1746;
        sub_1E3C3DE00();
        v1739 = v1741;
        LOBYTE(v1740) = v1742;
        sub_1E3C2FCB8(&v1754, &v1752, &v1747, v1749, &v1743, &v1739, v743, __dst);
        memcpy(v1749, __dst, 0x59uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_33_76();
        v744();

        (v738)(v745);
        v1735[0] = v1534;
        v1752 = 0;
        v1750 = 0;
        v746 = v1534;
        v749 = TVAppFeature.isEnabled.getter(17, v747, v748);
        v750 = v1494;
        if (v749)
        {
          v750 = v746;
        }

        v1747 = v750;
        v751 = v750;
        sub_1E3C3DE00();
        v1743 = v1745;
        v752 = sub_1E3C3DE00();
        v1739 = v1741;
        v760 = OUTLINED_FUNCTION_45_63(v752, v753, v754, v755, v756, v757, v758, v759, v946, v987, v1030, v1072, v1114, v1158, v1200, v1243, v1286, v701, v1369, v690, v1452, v1494, v1534, v1574, v1613, v1653, v1693, v1733, v1735[0]);
        sub_1E3C2FCB8(v760, v761, v762, v763, &v1743, &v1739, v701, v764);
        v1287 = v731;
        v765 = *v1749;
        v766 = *&v1749[8];
        v767 = *&v1749[16];
        v769 = *&v1749[32];
        v768 = *&v1749[40];
        v1735[0] = *v1749;
        v1735[1] = *&v1749[8];
        v1736 = *&v1749[16];
        v1737 = *&v1749[32];
        v1738 = *&v1749[40];
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_17_131();
        v770();

        v771 = v1244;
        v1244();
        OUTLINED_FUNCTION_30_77();
        LOBYTE(v1735[0]) = v772;
        LOBYTE(v1752) = 3;
        if (TVAppFeature.isEnabled.getter(17, v773, v774))
        {
          v777 = 3;
        }

        else
        {
          v777 = 2;
        }

        LOBYTE(v1750) = v777;
        TVAppFeature.isEnabled.getter(17, v775, v776);
        OUTLINED_FUNCTION_55_44();
        if (_ZF)
        {
          v780 = 2;
        }

        LOBYTE(v1747) = v780;
        v781 = TVAppFeature.isEnabled.getter(17, v778, v779);
        if (v781)
        {
          v789 = 2;
        }

        else
        {
          v789 = 6;
        }

        LOBYTE(v1745) = v789;
        LOBYTE(v1743) = 1;
        v790 = OUTLINED_FUNCTION_45_63(v781, v782, v783, v784, v785, v786, v787, v788, v947, v988, v1031, v1073, v1115, v1159, v1201, v1244, v1287, v1328, v1370, v1411, v1453, v1495, v1535, v1575, v1614, v1654, v1694, v1734, v1735[0]);
        sub_1E3C2FCB8(v790, v791, v792, v793, &v1745, &v1743, &qword_1F5D549D8, v794);
        LODWORD(v1735[0]) = *v1749;
        WORD2(v1735[0]) = *&v1749[4];
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_42_64();
        v795();

        (v771)(v796);
        OUTLINED_FUNCTION_2_1();
        (*(v797 + 1792))(10);

        (v771)(v798);
        OUTLINED_FUNCTION_2_1();
        (*(v799 + 1720))(7);

        (v771)(v800);
        OUTLINED_FUNCTION_2_1();
        (*(v801 + 2008))(1);
      }

      sub_1E3F3F2C0(0);
      sub_1E3F3FC68(0);
      OUTLINED_FUNCTION_111();
      v802 += 243;
      v803 = *v802;
      (*v802)();
      OUTLINED_FUNCTION_2_1();
      (*(v804 + 680))(v1369);

      (v803)(v805);
      v1749[0] = 21;
      LOBYTE(v1735[0]) = 22;
      LOBYTE(v1754) = 22;
      if (TVAppFeature.isEnabled.getter(17, v806, v807))
      {
        v810 = 15;
      }

      else
      {
        v810 = 21;
      }

      LOBYTE(v1752) = v810;
      if (TVAppFeature.isEnabled.getter(17, v808, v809))
      {
        v811 = 19;
      }

      else
      {
        v811 = 7;
      }

      LOBYTE(v1750) = v811;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_19_131();
      sub_1E3C2FCB8(v812, v813, v814, v815, v816, v817, &qword_1F5D549D8, v818);
      OUTLINED_FUNCTION_53_45();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_42_64();
      v819();

      (v803)(v820);
      v821 = sub_1E4205F14();
      v823 = v822;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v821, v823, v824, v825);
      OUTLINED_FUNCTION_36();
      (*(v826 + 1888))();

      (v803)(v827);
      OUTLINED_FUNCTION_2_1();
      (*(v828 + 1720))(7);

      (v803)(v829);
      OUTLINED_FUNCTION_2_1();
      (*(v830 + 2008))(1);

      sub_1E3F3ED28(0, v831, v832);
      OUTLINED_FUNCTION_9_2();
      v834 = *(v833 + 1992);
      v834();
      OUTLINED_FUNCTION_2_1();
      (*(v835 + 1808))(1);

      (v834)(v836);
      OUTLINED_FUNCTION_2_1();
      (*(v837 + 512))(4);

      sub_1E3F40548(0);
      v838.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v838);
      OUTLINED_FUNCTION_3();
      v839.n128_u64[0] = 26.0;
      j__OUTLINED_FUNCTION_7_78(v839);
      OUTLINED_FUNCTION_22_91();
      v840 = sub_1E4177030();
      OUTLINED_FUNCTION_50_12(v841, v842, v843, v844);
      sub_1E41776B0(5, v845, v846, v847, v848);
      OUTLINED_FUNCTION_35_68(v849, v850, v851, v852);
      sub_1E41776B0(23, v853, v854, v855, v856);
      v857.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v857);
      nullsub_1();
      sub_1E41776B0(39, v858, v859, v860, v861);
      v862.n128_u64[0] = 20.0;
      j__OUTLINED_FUNCTION_7_78(v862);
      nullsub_1();
      sub_1E41776B0(4, v863, v864, v865, v866);
      sub_1E4177030();
      v869 = TVAppFeature.isEnabled.getter(10, v867, v868);
      v870.n128_u64[0] = 10.0;
      if ((v869 & 1) == 0)
      {
        v870.n128_f64[0] = 24.0;
      }

      j__OUTLINED_FUNCTION_7_78(v870);
      nullsub_1();
      sub_1E41776B0(15, v871, v872, v873, v874);
      v875.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v875);
      nullsub_1();
      sub_1E41776B0(39, v876, v877, v878, v879);
      v880.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v880);
      nullsub_1();
      sub_1E41776B0(5, v881, v882, v883, v884);
      v885.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v885);
      nullsub_1();
      v890 = sub_1E41776B0(99, v886, v887, v888, v889);
      (v1574)(v890);
      OUTLINED_FUNCTION_2_1();
      v892 = *(v891 + 1424);
      v893 = swift_retain_n();
      v892(v893);

      OUTLINED_FUNCTION_9_2();
      (*(v894 + 1896))();
      OUTLINED_FUNCTION_2_1();
      (*(v895 + 1424))(v840);

      OUTLINED_FUNCTION_9_2();
      (*(v896 + 1920))();
      OUTLINED_FUNCTION_2_1();
      (*(v897 + 1424))(v840);

      OUTLINED_FUNCTION_9_2();
      (*(v898 + 1968))();
      OUTLINED_FUNCTION_2_1();
      v900 = *(v899 + 1424);

      v900(v901);

      (v803)(v902);
      OUTLINED_FUNCTION_2_1();
      (*(v903 + 1424))(v840);

      (v834)(v904);
      OUTLINED_FUNCTION_2_1();
      (*(v905 + 1424))(v840);

      sub_1E3F4110C();

      v628 = v1534;
      goto LABEL_66;
    case 2:

      v38 = *(MEMORY[0x1E69DDCE0] + 16);
      *v1749 = *MEMORY[0x1E69DDCE0];
      *&v1749[16] = v38;
      v1749[32] = 0;
      OUTLINED_FUNCTION_111();
      (*(v39 + 184))(v1749);
      OUTLINED_FUNCTION_3_0(v2 + 99, &v1778);
      *(v2 + 99) = 0;
      sub_1E3952C58();
      *&__dst[0] = v40;
      *(&__dst[0] + 1) = v41;
      *&__dst[1] = v42;
      *(&__dst[1] + 1) = v43;
      LOBYTE(__dst[2]) = 0;
      LOBYTE(v1737) = 1;
      v1774 = 0u;
      v1775 = 0u;
      LOBYTE(v1776) = 1;
      sub_1E3952C58();
      *&v1771 = v44;
      *(&v1771 + 1) = v45;
      *&v1772 = v46;
      *(&v1772 + 1) = v47;
      LOBYTE(v1773) = 0;
      type metadata accessor for UIEdgeInsets();
      v49 = v48;
      sub_1E3C3DE00();
      v1765 = v1768;
      v1766 = v1769;
      LOBYTE(v1767) = v1770;
      v50 = sub_1E3C3DE00();
      v1759 = v1762;
      v1760 = v1763;
      LOBYTE(v1761) = v1764;
      v58 = OUTLINED_FUNCTION_1_258(v50, v51, v52, v53, v54, v55, v56, v57, v906, v948, v989, v1032, v1074, v1116, v1160, v1202, v1245, v1288, v1329, v1371, v1412, v1454, v1496, v1536, v1576, v1615, v1655, v1695, 0, 0, 0, 0, v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v58, v59, v60, v61, &v1765, &v1759, v49, v62);
      memcpy(__dst, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v64 = *(v63 + 1600);
      OUTLINED_FUNCTION_12_148(v65, v66, v67, v68, v69, v70, v71, v72, v907, v949, v990, v1033, v1075, v1117, v1161, v1203, v1246, v1289, v1330, v1372, v1413, v1455, v1497, v1537, v1577, v1616, v1656, v1696, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_41_62();
      v64();
      OUTLINED_FUNCTION_60_33();
      *&v1774 = 0x4075900000000000;
      BYTE8(v1774) = 0;
      OUTLINED_FUNCTION_38_63(0x4081800000000000uLL);
      OUTLINED_FUNCTION_44_56(0x4077200000000000uLL);
      *&v1765 = 0x4076400000000000;
      BYTE8(v1765) = 0;
      v73 = MEMORY[0x1E69E7DE0];
      v82 = OUTLINED_FUNCTION_0_293(v74, v75, v76, v77, v78, v79, v80, v81, v908, v950, v991, v1034, v1076, v1118, v1162, v1204, v1247, v1290, v1331, v1373, v1414, v1456, v1498, v1538, v1578, v1617, v1657, v1697, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v82, v83, v84, v85, v86, &v1765, v73, v87);
      OUTLINED_FUNCTION_18_122(v88, v89, v90, v91, v92, v93, v94, v95, v909, v951, v992, v1035, v1077, v1119, v1163, v1205, v1248, v1291, v1332, v1374, v1415, v1457, v1499, v1539, v1579, v1618, v1658, v1698, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      v96 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_12_148(v96, v97, v98, v99, v100, v101, v102, v103, v910, v952, v993, v1036, v1078, v1120, v1164, v1206, v1249, v1292, v1333, v1375, v1416, v1458, v1500, v1540, v1580, v1619, v1659, v1699, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_59_35();
      v64();
      OUTLINED_FUNCTION_60_33();
      *&v1774 = 0x4074400000000000;
      BYTE8(v1774) = 0;
      OUTLINED_FUNCTION_38_63(0x4079000000000000uLL);
      sub_1E3C3DE00();
      *&v1765 = v1768;
      BYTE8(v1765) = BYTE8(v1768);
      v104 = sub_1E3C3DE00();
      *&v1759 = v1762;
      BYTE8(v1759) = BYTE8(v1762);
      v112 = OUTLINED_FUNCTION_1_258(v104, v105, v106, v107, v108, v109, v110, v111, v911, v953, v994, v1037, v1079, v1121, v1165, v1207, v1250, v1293, v1334, v1376, v1417, v1459, v1501, v1541, v1581, v1620, v1660, v1700, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v112, v113, v114, v115, &v1765, &v1759, v73, v116);
      OUTLINED_FUNCTION_18_122(v117, v118, v119, v120, v121, v122, v123, v124, v912, v954, v995, v1038, v1080, v1122, v1166, v1208, v1251, v1294, v1335, v1377, v1418, v1460, v1502, v1542, v1582, v1621, v1661, v1701, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      v125 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_12_148(v125, v126, v127, v128, v129, v130, v131, v132, v913, v955, v996, v1039, v1081, v1123, v1167, v1209, v1252, v1295, v1336, v1378, v1419, v1461, v1503, v1543, v1583, v1622, v1662, v1702, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_58_36();
      v64();
      OUTLINED_FUNCTION_9_2();
      v134 = *(v133 + 2016);
      v134();
      OUTLINED_FUNCTION_30();
      (*(v135 + 184))(v1749);

      v137 = (v134)(v136);
      OUTLINED_FUNCTION_111();
      v139 = (*(v138 + 248))();
      (*(*v137 + 208))(v139, v140 & 1);

      v141 = *sub_1E3E5FD88();
      v1379 = *sub_1E3E5F58C();
      v142 = *sub_1E3E5F6B8();
      v143 = *(*v2 + 2088);
      v144 = v142;
      v145 = *v143();
      v146 = (*(v145 + 1784))();

      if (v146 == 11 || (LOBYTE(__src[0]) = v146, LOBYTE(__dst[0]) = 1, sub_1E3751DB0(v147, v148, v149), (sub_1E4205E84() & 1) == 0))
      {
        type metadata accessor for ButtonLayout();
        v150 = j__OUTLINED_FUNCTION_18();
        v151 = sub_1E3B050E8();
        v152 = j__OUTLINED_FUNCTION_18();
        *(v2 + 176) = sub_1E3BBD964(1, v150 & 1, v151, v152 & 1);
      }

      OUTLINED_FUNCTION_111();
      v153 += 234;
      v154 = *v153;
      v155 = v153;
      (*v153)();
      OUTLINED_FUNCTION_30();
      (*(v156 + 1936))(2);

      v1544 = v155;
      (v154)(v157);
      OUTLINED_FUNCTION_2_1();
      (*(v158 + 1792))(10);

      (v154)(v159);
      v160 = v144;
      *&__dst[0] = v144;
      v161 = v160;
      v1735[0] = 0;
      *&v1774 = 0;
      *&v1771 = v144;
      v1253 = v161;
      v1462 = sub_1E3E5FDEC();
      *&v1768 = *v1462;
      v162 = v1768;
      *&v1765 = v141;
      v163 = sub_1E3755B54();
      v1210 = v141;
      v164 = v162;
      v172 = OUTLINED_FUNCTION_0_293(v164, v165, v166, v167, v168, v169, v170, v171, v914, v956, v997, v1040, v1082, v1124, v1168, v1210, v1253, v1296, v1337, v1379, v1420, v1462, v1504, v1544, v1584, v1623, v1663, v1703, 0, v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v172, v173, v174, v175, v176, &v1765, v163, v177);
      v178 = __src[0];
      v1125 = v141;
      v179 = *&__src[1];
      v1297 = v144;
      v180 = *(&__src[1] + 1);
      v181 = __src[2];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v190 = OUTLINED_FUNCTION_12_148(v182, v183, v184, v185, v186, v187, v188, v189, v915, v957, v998, v1041, v1083, v1125, v1169, v1211, v1254, v1297, v1338, v1380, v1421, v1463, v1505, v1545, v163, v1624, v1664, v1704, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      v191(v190, 21);

      v154();
      OUTLINED_FUNCTION_29_88();
      LOBYTE(v1768) = 14;
      LOBYTE(v1765) = 21;
      v200 = OUTLINED_FUNCTION_0_293(v192, v193, v194, v195, v196, v197, v198, v199, v916, v958, v999, v1042, v1084, v1126, v1170, v1212, v1255, v1298, v1339, v1381, v1422, v1464, v1506, v1546, v1585, v1625, v1665, v1705, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v200, v201, v202, v203, v204, &v1765, &qword_1F5D549D8, v205);
      OUTLINED_FUNCTION_47_51();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v206, v207, v208, v209, v210, v211, v212, v213, v917, v959, v1000, v1043, v1085, v1127, v1171, v1213, v1256, v1299, v1340, v1382, v1423, v1465, v1507, v1547, v1586, v1626, v1666, v1706, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_42_64();
      v214();

      (v154)(v215);
      v1341 = *MEMORY[0x1E6979CF8];
      v216 = sub_1E4205F14();
      v218 = v217;
      v1424 = *MEMORY[0x1E6979CE8];
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v216, v218, v219, v220);
      OUTLINED_FUNCTION_36();
      (*(v221 + 1888))();

      (v154)(v222);
      OUTLINED_FUNCTION_2_1();
      (*(v223 + 1720))(7);

      (v154)(v224);
      OUTLINED_FUNCTION_2_1();
      (*(v225 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v227 = v226 + 1896;
      v228 = *(v226 + 1896);
      v228();
      OUTLINED_FUNCTION_2_1();
      (*(v229 + 1792))(10);

      (v228)(v230);
      OUTLINED_FUNCTION_31_75();
      OUTLINED_FUNCTION_38_63(3uLL);
      OUTLINED_FUNCTION_44_56(v231);
      v232 = MEMORY[0x1E69E6810];
      v233 = sub_1E3C3DE00();
      *&v1762 = v1765;
      BYTE8(v1762) = BYTE8(v1765);
      v241 = OUTLINED_FUNCTION_0_293(v233, v234, v235, v236, v237, v238, v239, v240, v918, v960, v1001, v1044, v1086, v1128, v154, v1214, v1257, v1300, v1341, v1383, v1424, v1466, v228, v1548, v1587, v1627, v1667, v1707, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v241, v242, v243, v244, v245, &v1762, v232, v246);
      OUTLINED_FUNCTION_18_122(v247, v248, v249, v250, v251, v252, v253, v254, v919, v961, v1002, v1045, v1087, v1129, v1172, v1215, v1258, v1301, v1342, v1384, v1425, v1467, v1508, v1549, v1588, v1628, v1668, v1708, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v263 = OUTLINED_FUNCTION_12_148(v255, v256, v257, v258, v259, v260, v261, v262, v920, v962, v1003, v1046, v1088, v1130, v1173, v1216, v1259, v1302, v1343, v1385, v1426, v1468, v1509, v1550, v1589, v1629, v1669, v1709, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      v264(v263, 62);

      (v228)(v265);
      *&__dst[0] = v1131;
      *&v1774 = 0;
      *&v1771 = v1386;
      *&v1768 = 0;
      v1132 = v1386;
      v266 = v1590;
      v267 = sub_1E3C3DE00();
      *&v1762 = v1765;
      v275 = OUTLINED_FUNCTION_0_293(v267, v268, v269, v270, v271, v272, v273, v274, v921, v963, v1004, v1047, v1089, v1132, v1174, v1217, v1260, v1303, v1344, v1386, v1427, v1469, v1510, v1551, v1590, v1630, v1670, v1710, 0, v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v275, v276, v277, v278, v279, &v1762, v266, v280);
      v281 = __src[0];
      v282 = __src[1];
      v283 = __src[2];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v292 = OUTLINED_FUNCTION_12_148(v284, v285, v286, v287, v288, v289, v290, v291, v922, v964, v1005, v1048, v1090, v1133, v1175, v1218, v1261, v1304, v1345, v1387, v1428, v1470, v1511, v1552, v1591, v1631, v1671, v1711, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      v293(v292, 21);

      v1091 = v227;
      v294 = v1512;
      v295 = v1512();
      LOBYTE(__dst[0]) = 3;
      LOBYTE(v1735[0]) = 27;
      LOBYTE(v1774) = 2;
      LOBYTE(v1771) = 2;
      LOBYTE(v1768) = 6;
      LOBYTE(v1765) = 1;
      v303 = OUTLINED_FUNCTION_0_293(v295, v296, v297, v298, v299, v300, v301, v302, v923, v965, v1006, v1049, v1091, v1134, v1176, v1219, v1262, v1305, v1346, v1388, v1429, v1471, v1512, v1553, v1592, v1632, v1672, v1712, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v303, v304, v305, v306, v307, &v1765, &qword_1F5D549D8, v308);
      OUTLINED_FUNCTION_47_51();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v309, v310, v311, v312, v313, v314, v315, v316, v924, v966, v1007, v1050, v1092, v1135, v1177, v1220, v1263, v1306, v1347, v1389, v1430, v1472, v1513, v1554, v1593, v1633, v1673, v1713, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_42_64();
      v317();

      (v294)(v318);
      OUTLINED_FUNCTION_2_1();
      (*(v319 + 1720))(7);

      (v294)(v320);
      OUTLINED_FUNCTION_2_1();
      (*(v321 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v323 = v322 + 1920;
      v324 = *(v322 + 1920);
      v324();
      OUTLINED_FUNCTION_2_1();
      (*(v325 + 1792))(4);

      (v324)(v326);
      *&__dst[0] = 2;
      BYTE8(__dst[0]) = 0;
      LOBYTE(v1735[1]) = 0;
      *&v1774 = 0;
      BYTE8(v1774) = 1;
      *&v1771 = 3;
      BYTE8(v1771) = 0;
      OUTLINED_FUNCTION_44_56(3uLL);
      *&v1765 = 4;
      BYTE8(v1765) = 0;
      v335 = OUTLINED_FUNCTION_0_293(v327, v328, v329, v330, v331, v332, v333, v334, v925, v967, v1008, v1051, v1093, v1136, v1178, v1221, v1264, v1307, v1348, v323, v1431, v1473, v1514, v1555, v1594, v1634, v1674, v1714, 3, v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v335, v336, v337, v338, v339, &v1765, MEMORY[0x1E69E6810], v340);
      OUTLINED_FUNCTION_18_122(v341, v342, v343, v344, v345, v346, v347, v348, v926, v968, v1009, v1052, v1094, v1137, v1179, v1222, v1265, v1308, v1349, v1390, v1432, v1474, v1515, v1556, v1595, v1635, v1675, v1715, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v357 = OUTLINED_FUNCTION_12_148(v349, v350, v351, v352, v353, v354, v355, v356, v927, v969, v1010, v1053, v1095, v1138, v1180, v1223, v1266, v1309, v1350, v1391, v1433, v1475, v1516, v1557, v1596, v1636, v1676, v1716, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      v358(v357, 62);

      v359 = sub_1E4206F24();
      v360 = sub_1E4206F24();
      v361 = v1597;
      v362 = sub_1E3E5F2F8(v359, v360);

      v324();
      *&__dst[0] = 0;
      *&v1774 = v1310;
      v363 = OUTLINED_FUNCTION_50_47(v1310, v928, v970, v1011, v1054, v1096, v1139, v1181, v1224, v1267, v1310, v1351, v1392, v1434, v1476);
      v364 = v362;
      v372 = OUTLINED_FUNCTION_0_293(v364, v365, v366, v367, v368, v369, v370, v371, v929, v971, v1012, v364, v1097, v1140, v1182, v1225, v1268, v1311, v1352, v1393, v1435, v1477, v1517, v1558, v1597, v1637, v1677, v1717, v362, v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v372, v373, v374, v375, v376, &v1765, v361, v377);
      v378 = __src[0];
      v379 = __src[1];
      v380 = __src[2];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v389 = OUTLINED_FUNCTION_12_148(v381, v382, v383, v384, v385, v386, v387, v388, v930, v972, v1013, v1055, v1098, v1141, v1183, v1226, v1269, v1312, v1353, v1394, v1436, v1478, v1518, v1559, v1598, v1638, v1678, v1718, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      v390(v389, 21);

      v391 = (v324)();
      LOBYTE(__dst[0]) = 17;
      LOBYTE(v1735[0]) = 27;
      LOBYTE(v1774) = 15;
      LOBYTE(v1771) = 15;
      LOBYTE(v1768) = 2;
      LOBYTE(v1765) = 15;
      v399 = OUTLINED_FUNCTION_0_293(v391, v392, v393, v394, v395, v396, v397, v398, v931, v973, v1014, v1056, v1099, v1142, v1184, v1227, v1270, v1313, v1354, v1395, v1437, v1479, v1519, v1560, v1599, v1639, v1679, v1719, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v399, v400, v401, v402, v403, &v1765, &qword_1F5D549D8, v404);
      OUTLINED_FUNCTION_9_163();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_175();
      v405();

      (v324)(v406);
      v407 = sub_1E4205F14();
      v409 = v408;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v407, v409, v410, v411);
      OUTLINED_FUNCTION_36();
      (*(v412 + 1888))();

      v1015 = v324;
      (v324)(v413);
      OUTLINED_FUNCTION_2_1();
      (*(v414 + 1720))(7);

      (v324)(v415);
      OUTLINED_FUNCTION_2_1();
      (*(v416 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v418 = *(v417 + 1944);
      v418();
      OUTLINED_FUNCTION_2_1();
      (*(v419 + 2056))(2, 0);

      (v418)(v420);
      OUTLINED_FUNCTION_2_1();
      (*(v421 + 1720))(7);

      (v418)(v422);
      OUTLINED_FUNCTION_29_88();
      LOBYTE(v1768) = 17;
      v423 = sub_1E3C3DE00();
      LOBYTE(v1762) = v1765;
      v431 = OUTLINED_FUNCTION_0_293(v423, v424, v425, v426, v427, v428, v429, v430, v932, v418, v1015, v1057, v1100, v1143, v1185, v1228, v1271, v1314, v1355, v1396, v1438, v1480, v1520, v1561, v1600, v1640, v1680, v1720, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v431, v432, v433, v434, v435, &v1762, &qword_1F5D549D8, v436);
      OUTLINED_FUNCTION_9_163();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_175();
      v437();

      (v418)(v438);
      *&__dst[0] = v1315;
      *&v1774 = 0;
      v439 = OUTLINED_FUNCTION_50_47(v1315, v933, v974, v1016, v1058, v1101, v1144, v1186, v1229, v1272, v1315, v1356, v1397, v1439, v1481);
      v447 = OUTLINED_FUNCTION_0_293(v439, v440, v441, v442, v443, v444, v445, v446, v934, v975, v1017, v1059, v1102, v1145, v1187, v1230, v1273, v1316, v1357, v1398, v1440, v1482, v1521, v1562, v1601, v1641, v1681, v1721, 0, v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v447, v448, v449, v450, v451, &v1765, v1602, v452);
      v453 = __src[0];
      v454 = __src[1];
      v455 = __src[2];
      __dst[0] = __src[0];
      __dst[1] = __src[1];
      __dst[2] = __src[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v464 = OUTLINED_FUNCTION_12_148(v456, v457, v458, v459, v460, v461, v462, v463, v935, v976, v1018, v1060, v1103, v1146, v1188, v1231, v1274, v1317, v1358, v1399, v1441, v1483, v1522, v1563, v1602, v1642, v1682, v1722, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      v465(v464, 21);

      v977();
      v466 = sub_1E4205F14();
      v468 = v467;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v466, v468, v469, v470);
      OUTLINED_FUNCTION_36();
      (*(v471 + 1888))();

      (v977)(v472);
      v473 = v977;
      OUTLINED_FUNCTION_2_1();
      (*(v474 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v476 = *(v475 + 1992);
      v476();
      OUTLINED_FUNCTION_2_1();
      (*(v477 + 1808))(1);

      (v476)(v478);
      OUTLINED_FUNCTION_2_1();
      (*(v479 + 512))(4);

      (v476)(v480);
      OUTLINED_FUNCTION_31_75();
      OUTLINED_FUNCTION_38_63(0x4081300000000000uLL);
      OUTLINED_FUNCTION_44_56(0x4075A00000000000uLL);
      v481 = MEMORY[0x1E69E7DE0];
      v482 = sub_1E3C3DE00();
      *&v1762 = v1765;
      BYTE8(v1762) = BYTE8(v1765);
      v490 = OUTLINED_FUNCTION_1_258(v482, v483, v484, v485, v486, v487, v488, v489, v936, v977, v1019, v1061, v1104, v1147, v1189, v1232, v1275, v1318, v1359, v1400, v1442, v1484, v1523, v1564, v1603, v1643, v1683, v1723, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v490, v491, v492, v493, &v1762, &v1768, v481, v494);
      OUTLINED_FUNCTION_18_122(v495, v496, v497, v498, v499, v500, v501, v502, v937, v978, v1020, v1062, v1105, v1148, v1190, v1233, v1276, v1319, v1360, v1401, v1443, v1485, v1524, v1565, v1604, v1644, v1684, v1724, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v503, v504, v505, v506, v507, v508, v509, v510, v938, v979, v1021, v1063, v1106, v1149, v1191, v1234, v1277, v1320, v1361, v1402, v1444, v1486, v1525, v1566, v1605, v1645, v1685, v1725, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_59_35();
      v511();

      (v476)(v512);
      *&__dst[0] = 0x404E000000000000;
      BYTE8(__dst[0]) = 0;
      LOBYTE(v1735[1]) = 1;
      *&v1774 = 0;
      BYTE8(v1774) = 1;
      OUTLINED_FUNCTION_38_63(0x4064A00000000000uLL);
      OUTLINED_FUNCTION_44_56(0x4054000000000000uLL);
      v513 = sub_1E3C3DE00();
      *&v1762 = v1765;
      BYTE8(v1762) = BYTE8(v1765);
      v521 = OUTLINED_FUNCTION_1_258(v513, v514, v515, v516, v517, v518, v519, v520, v939, v980, v1022, v1064, v1107, v1150, v1192, v1235, v1278, v1321, v1362, v1403, v1445, v1487, v1526, v1567, v1606, v1646, v1686, v1726, 0, v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v521, v522, v523, v524, &v1762, &v1768, v481, v525);
      OUTLINED_FUNCTION_18_122(v526, v527, v528, v529, v530, v531, v532, v533, v940, v981, v1023, v1065, v1108, v1151, v1193, v1236, v1279, v1322, v1363, v1404, v1446, v1488, v1527, v1568, v1607, v1647, v1687, v1727, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v534, v535, v536, v537, v538, v539, v540, v541, v941, v982, v1024, v1066, v1109, v1152, v1194, v1237, v1280, v1323, v1364, v1405, v1447, v1489, v1528, v1569, v1608, v1648, v1688, v1728, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_58_36();
      v542();

      OUTLINED_FUNCTION_9_2();
      v544 = *(v543 + 2136);
      v545 = *v544();
      (*(v545 + 2048))();

      LOBYTE(__dst[0]) = 27;
      LOBYTE(v1735[0]) = 17;
      LOBYTE(v1774) = 7;
      LOBYTE(v1771) = 27;
      LOBYTE(v1768) = 27;
      v546 = sub_1E3C3DE00();
      LOBYTE(v1762) = v1765;
      v554 = OUTLINED_FUNCTION_0_293(v546, v547, v548, v549, v550, v551, v552, v553, v942, v983, v1025, v1067, v1110, v1153, v1195, v1238, v1281, v1324, v1365, v1406, v1448, v1490, v1529, v1570, v1609, v1649, v1689, v1729, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      sub_1E3C2FCB8(v554, v555, v556, v557, v558, &v1762, &qword_1F5D549D8, v559);
      OUTLINED_FUNCTION_9_163();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_12_148(v560, v561, v562, v563, v564, v565, v566, v567, v943, v984, v1026, v1068, v1111, v1154, v1196, v1239, v1282, v1325, v1366, v1407, v1449, v1491, v1530, v1571, v1610, v1650, v1690, v1730, v1735[0], v1735[1], v1736, *(&v1736 + 1), v1737, v1738, v1739, v1740, v1741, v1742, v1743, v1744, v1745, v1746, v1747, v1748, *v1749, *&v1749[8], *&v1749[16], *&v1749[24], *&v1749[32], *&v1749[40], *&v1749[48], *&v1749[56], *&v1749[64], *&v1749[72], *&v1749[80], *&v1749[88], v1750, v1751, v1752, v1753, v1754, v1755, v1756);
      OUTLINED_FUNCTION_42_64();
      v568();

      (v544)(v569);
      OUTLINED_FUNCTION_2_1();
      (*(v570 + 2048))();

      OUTLINED_FUNCTION_13();
      (*(v571 + 1792))(10);

      (v544)(v572);
      OUTLINED_FUNCTION_2_1();
      (*(v573 + 2048))();

      OUTLINED_FUNCTION_13();
      (*(v574 + 1720))(7);

      v575.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v575);
      OUTLINED_FUNCTION_3();
      v576.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v576);
      OUTLINED_FUNCTION_22_91();
      v577 = sub_1E4177030();
      OUTLINED_FUNCTION_50_12(v578, v579, v580, v581);
      sub_1E41776B0(5, v582, v583, v584, v585);
      OUTLINED_FUNCTION_35_68(v586, v587, v588, v589);
      sub_1E41776B0(23, v590, v591, v592, v593);
      v594.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v594);
      nullsub_1();
      sub_1E41776B0(39, v595, v596, v597, v598);
      v599.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v599);
      nullsub_1();
      sub_1E41776B0(99, v600, v601, v602, v603);
      v604.n128_u64[0] = 0x4042000000000000;
      j__OUTLINED_FUNCTION_7_78(v604);
      nullsub_1();
      sub_1E41776B0(15, v605, v606, v607, v608);
      v609.n128_u64[0] = 20.0;
      j__OUTLINED_FUNCTION_7_78(v609);
      nullsub_1();
      v614 = sub_1E41776B0(60, v610, v611, v612, v613);
      (v544)(v614);
      OUTLINED_FUNCTION_2_1();
      v616 = *(v615 + 1424);
      v617 = swift_retain_n();
      v616(v617);

      v1197(v618);
      OUTLINED_FUNCTION_2_1();
      (*(v619 + 1424))(v577);

      v1531(v620);
      OUTLINED_FUNCTION_2_1();
      (*(v621 + 1424))(v577);

      v1027(v622);
      OUTLINED_FUNCTION_2_1();
      (*(v623 + 1424))(v577);

      (v473)(v624);
      OUTLINED_FUNCTION_2_1();
      (*(v625 + 1424))(v577);

      (v476)(v626);
      OUTLINED_FUNCTION_2_1();
      (*(v627 + 1424))(v577);

      sub_1E3F4110C();

      v628 = v1240;
LABEL_66:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E3F3CEC8()
{
  *(v0 + 104) = 0u;
  OUTLINED_FUNCTION_46_55(0);
  *(v0 + 98) = 256;
  return sub_1E3C2F9A0();
}

void sub_1E3F3CEF0(uint64_t a1)
{
  v3[3] = &type metadata for VerticalStackLayout.VerticalStackLayoutKeys;
  v3[4] = &off_1F5D8E370;
  sub_1E3F9F164(v3, a1, MEMORY[0x1E69E7CA0] + 8);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      v1 = v2;
    }

    else
    {
      v1 = 2;
    }

    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1E329505C(v4);
    v1 = 2;
  }

  LOBYTE(v3[0]) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
  sub_1E4148DE0(sub_1E3F3CFF0);
  sub_1E3C34E14();
}

uint64_t sub_1E3F3CFF0(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = OUTLINED_FUNCTION_14_0(v2 + 99, a2);
  *(v2 + 99) = v3;
  return result;
}

double sub_1E3F3D024(uint64_t a1)
{
  v2 = v1;
  sub_1E3C35F80();
  type metadata accessor for VerticalStackLayout();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = v3;
    v6 = *(*v3 + 1848);

    v8 = v6(v7);
    v9 = OUTLINED_FUNCTION_3_0((v2 + 99), v17);
    v2[99] = v8 & 1;
    v10 = (*(*v5 + 1824))(v9);
    v11 = OUTLINED_FUNCTION_3_0((v2 + 98), &v16);
    v2[98] = v10;
    v12 = (*(*v2 + 2016))(v11);
    v13 = (*(*v5 + 2016))();
    (*(*v12 + 1648))(v13);

    OUTLINED_FUNCTION_13();
    (*(v14 + 2160))();
    (*(*v5 + 2160))();
    OUTLINED_FUNCTION_13();
    (*(v15 + 1648))();
  }

  return result;
}

double sub_1E3F3D2D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2016))();
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1640))(a1, a2, a3);

  OUTLINED_FUNCTION_9_2();
  (*(v8 + 2160))();
  OUTLINED_FUNCTION_2_1();
  (*(v9 + 1640))(a1, a2, a3);

  OUTLINED_FUNCTION_9_2();
  (*(v10 + 1824))();
  OUTLINED_FUNCTION_14_157();
  switch(v11)
  {
    case 1:

      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_28_78();
      break;
    case 3:
      OUTLINED_FUNCTION_27_83();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_21_103();
  v12 = sub_1E42079A4();

  if (v12)
  {
LABEL_6:
    if ([objc_opt_self() isPad])
    {
      if (TVAppFeature.isEnabled.getter(10, v14, v15))
      {
        OUTLINED_FUNCTION_111();
        v35 = (*(v17 + 2112))();
        [v35 updateLayoutForPhoneSizeClass_];
      }

      else
      {
        if (sub_1E373F630(a1, 0, v16) & 1) != 0 || (sub_1E373F630(a1, 1, v18) & 1) != 0 || (sub_1E373F630(a1, 2, v19) & 1) != 0 || (sub_1E373F630(a1, 3, v20))
        {
          OUTLINED_FUNCTION_111();
          v21 += 249;
          v22 = *v21;
          (*v21)();
          OUTLINED_FUNCTION_30();
          (*(v23 + 256))(0x406CC00000000000, 0);

          (v22)(v24);
          OUTLINED_FUNCTION_2_1();
          (*(v25 + 360))(0x4059000000000000, 0);
        }

        else
        {
          v26 = OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_111();
          v27 += 249;
          v28 = *v27;
          (*v27)();
          OUTLINED_FUNCTION_2_1();
          v30 = *(v29 + 256);
          if (v26)
          {
            v30(0x4075A00000000000, 0);

            (v28)(v31);
            OUTLINED_FUNCTION_2_1();
            (*(v32 + 360))(0x4055400000000000, 0);
          }

          else
          {
            v30(0x4070400000000000, 0);

            (v28)(v33);
            OUTLINED_FUNCTION_2_1();
            (*(v34 + 360))(0x405E000000000000, 0);
          }
        }
      }
    }
  }

  return result;
}

void sub_1E3F3D7C0()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  if (TVAppFeature.isEnabled.getter(17, v2, v3))
  {
    OUTLINED_FUNCTION_111();
    (*(v4 + 1824))();
    OUTLINED_FUNCTION_14_157();
    switch(v5)
    {
      case 1:

        goto LABEL_7;
      case 2:
        OUTLINED_FUNCTION_28_78();
        break;
      case 3:
        OUTLINED_FUNCTION_27_83();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_21_103();
    v8 = sub_1E42079A4();

    if (v8)
    {
LABEL_7:
      v9 = TVAppFeature.isEnabled.getter(10, v6, v7);
      OUTLINED_FUNCTION_3_0((v1 + 208), &v397);
      v1[208] = v9 & 1;
      memset(v394, 0, sizeof(v394));
      v395 = 1;
      v392[0] = xmmword_1E42A76C0;
      v392[1] = xmmword_1E42CA400;
      v393 = 0;
      v12 = TVAppFeature.isEnabled.getter(10, v10, v11);
      v15 = TVAppFeature.isEnabled.getter(10, v13, v14);
      v18 = 0x4041000000000000;
      if (v12)
      {
        v19 = 0x4041000000000000;
      }

      else
      {
        v19 = 0x403E000000000000;
      }

      v390[0] = 0;
      v390[1] = v19;
      if ((v15 & 1) == 0)
      {
        v18 = 0;
      }

      v390[2] = 0x403E000000000000;
      v390[3] = v18;
      v391 = 0;
      v20 = TVAppFeature.isEnabled.getter(10, v16, v17);
      __dst[0] = xmmword_1E42B8890;
      v21 = 0x404E000000000000;
      if (v20)
      {
        v21 = 0x404A000000000000;
      }

      __dst[1] = v21;
      LOBYTE(__dst[2]) = 0;
      v382[0] = xmmword_1E42B8850;
      v382[1] = xmmword_1E429E560;
      LOBYTE(v382[2]) = 0;
      v363[0] = xmmword_1E42CC3D0;
      v363[1] = xmmword_1E42DF2D0;
      LOBYTE(v363[2]) = 0;
      type metadata accessor for UIEdgeInsets();
      sub_1E3C2FCB8(v394, v392, v390, __dst, v382, v363, v22, __src);
      memcpy(__dst, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v24 = *(v23 + 1600);
      OUTLINED_FUNCTION_41_62();
      v24();
      *&v382[0] = 0;
      BYTE8(v382[0]) = 1;
      *&v363[0] = 0x4077C00000000000;
      BYTE8(v363[0]) = 0;
      *&v398[0] = 0x4077C00000000000;
      BYTE8(v398[0]) = 0;
      v387 = 0x4081800000000000;
      v388 = 0;
      v385 = 0x4077500000000000;
      v386 = 0;
      v383 = 0x4075A00000000000;
      v384 = 0;
      v25 = MEMORY[0x1E69E7DE0];
      sub_1E3C2FCB8(v382, v363, v398, &v387, &v385, &v383, MEMORY[0x1E69E7DE0], __dst);
      memcpy(v382, __dst, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_59_35();
      v24();
      v387 = 0;
      v388 = 1;
      v385 = 0x4074400000000000;
      v386 = 0;
      v383 = 0x4074400000000000;
      v384 = 0;
      v28 = TVAppFeature.isEnabled.getter(10, v26, v27);
      if (v28)
      {
        v29 = 0x4074400000000000;
      }

      else
      {
        v29 = 0;
      }

      *&v382[0] = v29;
      BYTE8(v382[0]) = (v28 & 1) == 0;
      *&v363[0] = 0x4074400000000000;
      BYTE8(v363[0]) = 0;
      *&v398[0] = 0x4074B00000000000;
      BYTE8(v398[0]) = 0;
      sub_1E3C2FCB8(&v387, &v385, &v383, v382, v363, v398, v25, __dst);
      memcpy(v382, __dst, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_58_36();
      v24();
      OUTLINED_FUNCTION_9_2();
      v31 = *(v30 + 2016);
      v32 = v31();
      v33 = *(MEMORY[0x1E69DDCE0] + 16);
      v398[0] = *MEMORY[0x1E69DDCE0];
      v398[1] = v33;
      v399 = 0;
      (*(*v32 + 184))(v398);

      v35 = (v31)(v34);
      OUTLINED_FUNCTION_111();
      v37 = (*(v36 + 248))();
      (*(*v35 + 208))(v37, v38 & 1);

      sub_1E3F3ED28(1, v39, v40);
      v41 = *sub_1E3E5FD88();
      v42 = *sub_1E3E5FDEC();
      v348 = *sub_1E3E5F58C();
      v43 = *sub_1E3E5F6B8();
      v44 = (*v1 + 1872);
      v45 = *v44;
      v46 = v43;
      v45();
      OUTLINED_FUNCTION_2_1();
      (*(v47 + 2056))(1, 0);

      (v45)(v48);
      OUTLINED_FUNCTION_2_1();
      (*(v49 + 1936))(2);

      (v45)(v50);
      OUTLINED_FUNCTION_2_1();
      (*(v51 + 1792))(10);

      (v45)(v52);
      v356 = v44;
      OUTLINED_FUNCTION_2_1();
      (*(v53 + 2008))(1);

      (v45)(v54);
      *&v363[0] = v46;
      v380 = v42;
      v378 = v42;
      v376 = v46;
      v374 = v41;
      v55 = sub_1E3755B54();
      v56 = v42;
      v57 = v41;
      v58 = v56;
      v59 = v46;
      v340 = v57;
      v324 = v58;
      v332 = v59;
      v60 = sub_1E3C3DE00();
      v370 = v372;
      v68 = OUTLINED_FUNCTION_5_202(v60, v61, v62, v63, v64, v65, v66, v67, v275, v283, v290, v298, v41, v42, v316, v324, v332, v340, v348, v356, v363[0]);
      sub_1E3C2FCB8(v68, v69, v70, &v376, &v370, &v374, v55, v71);
      v72 = v382[0];
      v73 = v382[1];
      v74 = v382[2];
      v363[0] = v382[0];
      v363[1] = v382[1];
      v363[2] = v382[2];
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_131();
      v75();

      v45();
      OUTLINED_FUNCTION_26_101();
      LOBYTE(v380) = 19;
      LOBYTE(v378) = 19;
      LOBYTE(v376) = 22;
      LOBYTE(v374) = 14;
      LOBYTE(v372) = 21;
      v84 = OUTLINED_FUNCTION_5_202(v76, v77, v78, v79, v80, v81, v82, v83, v276, v284, v291, v55, v304, v310, v317, v325, v333, v341, v349, v357, v363[0]);
      sub_1E3C2FCB8(v84, v85, v86, &v376, &v374, &v372, &qword_1F5D549D8, v87);
      OUTLINED_FUNCTION_24_98();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v96 = OUTLINED_FUNCTION_15_144(v88, v89, v90, v91, v92, v93, v94, v95, v277, v285, v292, v299, v305, v311, v318, v326, v334, v342, v350, v358, v363[0]);
      v97(v96);

      (v45)(v98);
      OUTLINED_FUNCTION_2_1();
      (*(v99 + 1720))(7);

      v319 = v45;
      (v45)(v100);
      v101 = *MEMORY[0x1E6979CF8];
      v102 = sub_1E4205F14();
      v104 = v103;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v102, v104, v105, v106);
      OUTLINED_FUNCTION_36();
      (*(v107 + 1888))();

      if (TVAppFeature.isEnabled.getter(10, v108, v109))
      {

        sub_1E3F3EF78();
      }

      else
      {
        OUTLINED_FUNCTION_111();
        v110 += 237;
        v111 = *v110;
        v294 = v101;
        v112 = v110;
        (*v110)();
        v279 = v112;
        *&v363[0] = 2;
        BYTE8(v363[0]) = 0;
        v380 = 3;
        v381 = 0;
        v113 = MEMORY[0x1E69E6810];
        sub_1E3C2FC98();
        v376 = v378;
        v377 = v379;
        sub_1E3C3DE00();
        v372 = v374;
        v373 = v375;
        sub_1E3C3DE00();
        v368 = v370;
        v369 = v371;
        sub_1E3C3DE00();
        v364 = v366;
        v365 = v367;
        sub_1E3C2FCB8(v363, &v376, &v372, &v380, &v368, &v364, v113, v382);
        memcpy(v363, v382, 0x59uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_33_76();
        v114();

        (v111)(v115);
        *&v363[0] = v306;
        v380 = 0;
        v378 = 0;
        v376 = v351;
        v116 = v351;
        v117 = v300;
        sub_1E3C3DE00();
        v372 = v374;
        v118 = sub_1E3C3DE00();
        v368 = v370;
        v126 = OUTLINED_FUNCTION_5_202(v118, v119, v120, v121, v122, v123, v124, v125, v279, v111, v294, v300, v306, v312, v45, v327, v335, v343, v351, v359, v363[0]);
        sub_1E3C2FCB8(v126, v127, v128, &v376, &v372, &v368, v117, v129);
        v130 = v382[0];
        v131 = v382[1];
        v132 = v382[2];
        v363[0] = v382[0];
        v363[1] = v382[1];
        v363[2] = v382[2];
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_17_131();
        v133();

        v134 = v287;
        v287();
        OUTLINED_FUNCTION_26_101();
        LOBYTE(v380) = 3;
        LOBYTE(v378) = 2;
        LOBYTE(v376) = 2;
        LOBYTE(v374) = 1;
        v135 = sub_1E3C3DE00();
        LOBYTE(v370) = v372;
        v143 = OUTLINED_FUNCTION_5_202(v135, v136, v137, v138, v139, v140, v141, v142, v280, v287, v295, v301, v307, v313, v320, v328, v336, v344, v352, v360, v363[0]);
        sub_1E3C2FCB8(v143, v144, v145, &v376, &v370, &v374, &qword_1F5D549D8, v146);
        OUTLINED_FUNCTION_24_98();
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v155 = OUTLINED_FUNCTION_15_144(v147, v148, v149, v150, v151, v152, v153, v154, v281, v288, v296, v302, v308, v314, v321, v329, v337, v345, v353, v361, v363[0]);
        v156(v155);

        (v134)(v157);
        OUTLINED_FUNCTION_2_1();
        (*(v158 + 1792))(10);

        (v134)(v159);
        OUTLINED_FUNCTION_2_1();
        (*(v160 + 1720))(7);

        (v134)(v161);
        OUTLINED_FUNCTION_2_1();
        (*(v162 + 2008))(1);
      }

      sub_1E3F3F2C0(1);
      sub_1E3F3FC68(1);
      OUTLINED_FUNCTION_111();
      v163 += 243;
      v164 = *v163;
      (*v163)();
      OUTLINED_FUNCTION_2_1();
      (*(v165 + 680))(v312);

      (v164)(v166);
      LOBYTE(v363[0]) = 21;
      LOBYTE(v380) = 22;
      LOBYTE(v378) = 22;
      LOBYTE(v376) = 7;
      sub_1E3C3DE00();
      LOBYTE(v372) = v374;
      v167 = sub_1E3C3DE00();
      LOBYTE(v368) = v370;
      v175 = OUTLINED_FUNCTION_5_202(v167, v168, v169, v170, v171, v172, v173, v174, v278, v286, v293, v300, v306, v312, v319, v327, v335, v343, v351, v359, v363[0]);
      sub_1E3C2FCB8(v175, v176, v177, &v372, &v368, &v376, &qword_1F5D549D8, v178);
      OUTLINED_FUNCTION_24_98();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v187 = OUTLINED_FUNCTION_15_144(v179, v180, v181, v182, v183, v184, v185, v186, v282, v289, v297, v303, v309, v315, v322, v330, v338, v346, v354, v362, v363[0]);
      v188(v187);

      (v164)(v189);
      v190 = sub_1E4205F14();
      v192 = v191;
      sub_1E4205F14();
      OUTLINED_FUNCTION_109();
      sub_1E376C12C(v190, v192, v193, v194);
      OUTLINED_FUNCTION_36();
      (*(v195 + 1888))();

      (v164)(v196);
      OUTLINED_FUNCTION_2_1();
      (*(v197 + 1720))(7);

      (v164)(v198);
      OUTLINED_FUNCTION_2_1();
      (*(v199 + 2008))(1);

      OUTLINED_FUNCTION_9_2();
      v201 = *(v200 + 1992);
      v201();
      OUTLINED_FUNCTION_2_1();
      (*(v202 + 1808))(1);

      LOBYTE(v190) = TVAppFeature.isEnabled.getter(17, v203, v204);
      v201();
      OUTLINED_FUNCTION_2_1();
      if (v190)
      {
        v206 = 12;
      }

      else
      {
        v206 = 4;
      }

      (*(v205 + 512))(v206);

      sub_1E3F40548(1);
      v207.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v207);
      OUTLINED_FUNCTION_3();
      v208.n128_u64[0] = 26.0;
      j__OUTLINED_FUNCTION_7_78(v208);
      OUTLINED_FUNCTION_22_91();
      v209 = sub_1E4177030();
      OUTLINED_FUNCTION_50_12(v210, v211, v212, v213);
      sub_1E41776B0(5, v214, v215, v216, v217);
      OUTLINED_FUNCTION_35_68(v218, v219, v220, v221);
      sub_1E41776B0(23, v222, v223, v224, v225);
      v226.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v226);
      nullsub_1();
      sub_1E41776B0(39, v227, v228, v229, v230);
      v231.n128_u64[0] = 20.0;
      j__OUTLINED_FUNCTION_7_78(v231);
      nullsub_1();
      sub_1E41776B0(4, v232, v233, v234, v235);
      sub_1E4177030();
      v238 = TVAppFeature.isEnabled.getter(10, v236, v237);
      v239.n128_u64[0] = 10.0;
      if ((v238 & 1) == 0)
      {
        v239.n128_f64[0] = 24.0;
      }

      j__OUTLINED_FUNCTION_7_78(v239);
      nullsub_1();
      sub_1E41776B0(15, v240, v241, v242, v243);
      v244.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v244);
      nullsub_1();
      sub_1E41776B0(39, v245, v246, v247, v248);
      v249.n128_u64[0] = 28.0;
      j__OUTLINED_FUNCTION_7_78(v249);
      nullsub_1();
      sub_1E41776B0(5, v250, v251, v252, v253);
      v254.n128_u64[0] = 24.0;
      j__OUTLINED_FUNCTION_7_78(v254);
      nullsub_1();
      v259 = sub_1E41776B0(99, v255, v256, v257, v258);
      v323(v259);
      OUTLINED_FUNCTION_2_1();
      v261 = *(v260 + 1424);
      v262 = swift_retain_n();
      v261(v262);

      OUTLINED_FUNCTION_9_2();
      (*(v263 + 1896))();
      OUTLINED_FUNCTION_2_1();
      (*(v264 + 1424))(v209);

      OUTLINED_FUNCTION_9_2();
      (*(v265 + 1920))();
      OUTLINED_FUNCTION_2_1();
      (*(v266 + 1424))(v209);

      OUTLINED_FUNCTION_9_2();
      (*(v267 + 1968))();
      OUTLINED_FUNCTION_2_1();
      v269 = *(v268 + 1424);

      v269(v270);

      (v164)(v271);
      OUTLINED_FUNCTION_2_1();
      (*(v272 + 1424))(v209);

      (v201)(v273);
      OUTLINED_FUNCTION_2_1();
      (*(v274 + 1424))(v209);
    }
  }

  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E3F3EBB4(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0x656E696665646E75;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x65736163776F6C66;
      break;
    case 2:
      v5 = 0x696C6E4963697065;
      v6 = 0xEA0000000000656ELL;
      break;
    case 3:
      v5 = 0x6F6853616964656DLL;
      v6 = 0xED00006573616377;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x65736163776F6C66;
      break;
    case 2:
      v3 = 0x696C6E4963697065;
      v2 = 0xEA0000000000656ELL;
      break;
    case 3:
      v3 = 0x6F6853616964656DLL;
      v2 = 0xED00006573616377;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

double sub_1E3F3ED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    OUTLINED_FUNCTION_8();
    (*(v4 + 1824))();
    OUTLINED_FUNCTION_14_157();
    switch(v5)
    {
      case 1:

        goto LABEL_7;
      case 2:
        OUTLINED_FUNCTION_28_78();
        break;
      case 3:
        OUTLINED_FUNCTION_27_83();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_21_103();
    v6 = sub_1E42079A4();

    if (v6)
    {
LABEL_7:
      OUTLINED_FUNCTION_8();
      v7 += 264;
      v8 = *v7;
      v9 = (*v7)();
      v10 = objc_opt_self();
      v11 = [v10 whiteColor];
      [v9 setHighContrastBadgeTintColor_];

      v12 = v8();
      v13 = [v12 textLayout];

      v14 = [v10 whiteColor];
      [v13 setHighContrastTintColor_];

      v15 = v8();
      sub_1E3952C58();
      [v15 setMargin_];

      type metadata accessor for RelationalLayout();
      sub_1E4177030();
      sub_1E3952C88();
      nullsub_1();
      sub_1E41776B0(234, v16, v17, v18, v19);
    }
  }

  return result;
}

double sub_1E3F3EF78()
{
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 1896);
  v3 = v2;
  v1();
  v22 = v1;
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 2056))(2, 0);

  (v1)(v5);
  v24[0] = v3;
  v6 = sub_1E3755B54();
  v23 = v3;
  sub_1E3C2FC98();
  v29[0] = v29[1];
  sub_1E3C3DE00();
  v28[0] = v28[1];
  sub_1E3C3DE00();
  v27[0] = v27[1];
  sub_1E3C3DE00();
  v26[0] = v26[1];
  sub_1E3C3DE00();
  v25[0] = v25[1];
  sub_1E3C2FCB8(v24, v29, v28, v27, v26, v25, v6, &v30);
  v7 = v30;
  v8 = v31;
  v9 = v32;
  v10 = v33;
  v12 = v34;
  v11 = v35;
  v24[0] = v30;
  v24[1] = v31;
  v24[2] = v32;
  v24[3] = v33;
  v24[4] = v34;
  v24[5] = v35;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_131();
  v13();

  v22();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1696))(2);

  (v22)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1792))(10);

  (v22)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1720))(7);

  (v22)(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 2008))(1);

  return result;
}

void sub_1E3F3F2C0(char a1)
{
  v3 = *sub_1E3E5FDEC();
  v4 = *sub_1E3E5F6B8();
  v5 = *(*v1 + 1920);
  v6 = v4;
  v5();
  if (a1)
  {
    v9 = TVAppFeature.isEnabled.getter(10, v7, v8);
    v10 = 3;
    if ((v9 & 1) == 0)
    {
      v10 = 4;
    }

    __dst[0] = v10;
    LOBYTE(__dst[1]) = 0;
    v11 = MEMORY[0x1E69E6810];
    sub_1E3C2FC98();
    v156 = v140;
    v157 = v141;
    sub_1E3C3DE00();
    v152 = v154;
    v153 = v155;
    sub_1E3C3DE00();
    v148 = v150;
    v149 = v151;
    sub_1E3C3DE00();
    v136 = v138;
    LOBYTE(v137) = v139;
    sub_1E3C3DE00();
    v132 = v134;
    LOBYTE(v133) = v135;
    sub_1E3C2FCB8(__dst, &v156, &v152, &v148, &v136, &v132, v11, __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_76();
    v12();

    (v5)(v13);
    OUTLINED_FUNCTION_2_1();
    v15 = *(v14 + 680);
    v16 = v3;
    v15(v3);

    (v5)(v17);
    OUTLINED_FUNCTION_26_101();
    if (TVAppFeature.isEnabled.getter(10, v18, v19))
    {
      v22 = 17;
    }

    else
    {
      v22 = 20;
    }

    LOBYTE(v156) = v22;
    TVAppFeature.isEnabled.getter(10, v20, v21);
    OUTLINED_FUNCTION_55_44();
    if (v26)
    {
      ++v25;
    }

    LOBYTE(v154) = v25;
    LOBYTE(v152) = 15;
    if (TVAppFeature.isEnabled.getter(10, v23, v24))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    LOBYTE(v150) = v27;
    LOBYTE(v148) = 15;
    sub_1E3C2FCB8(&v140, &v156, &v154, &v152, &v150, &v148, &qword_1F5D549D8, __dst);
    OUTLINED_FUNCTION_51_44();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_175();
    v28();

    (v5)(v29);
    OUTLINED_FUNCTION_2_1();
    (*(v30 + 1792))(4);

    (v5)(v31);
    v32 = sub_1E4205F14();
    v34 = v33;
    sub_1E4205F14();
    OUTLINED_FUNCTION_109();
    sub_1E376C12C(v32, v34, v35, v36);
    OUTLINED_FUNCTION_36();
    (*(v37 + 1888))();

    (v5)(v38);
    OUTLINED_FUNCTION_2_1();
    (*(v39 + 1720))(7);

    (v5)(v40);
    OUTLINED_FUNCTION_2_1();
    (*(v41 + 2008))(1);
  }

  else
  {
    v156 = 4;
    v157 = 0;
    if (TVAppFeature.isEnabled.getter(10, v7, v8))
    {
      v44 = 3;
    }

    else
    {
      v44 = 4;
    }

    v154 = v44;
    v155 = 0;
    TVAppFeature.isEnabled.getter(10, v42, v43);
    OUTLINED_FUNCTION_54_44();
    v152 = v45;
    v153 = 0;
    TVAppFeature.isEnabled.getter(17, v46, v47);
    OUTLINED_FUNCTION_54_44();
    v150 = v48;
    v151 = 0;
    TVAppFeature.isEnabled.getter(17, v49, v50);
    OUTLINED_FUNCTION_54_44();
    v148 = v51;
    v149 = 0;
    TVAppFeature.isEnabled.getter(17, v52, v53);
    OUTLINED_FUNCTION_54_44();
    __dst[0] = v54;
    LOBYTE(__dst[1]) = 0;
    sub_1E3C2FCB8(&v156, &v154, &v152, &v150, &v148, __dst, MEMORY[0x1E69E6810], __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_33_76();
    v55();

    (v5)(v56);
    v140 = v6;
    v138 = v3;
    v136 = v3;
    v57 = v3;
    v58 = v6;
    if (TVAppFeature.isEnabled.getter(17, v59, v60))
    {
      v61 = v57;
    }

    else
    {
      v61 = v58;
    }

    v134 = v61;
    v62 = v61;
    if (TVAppFeature.isEnabled.getter(17, v63, v64))
    {
      v65 = v57;
    }

    else
    {
      v65 = v58;
    }

    v146 = v3;
    sub_1E3755B54();
    v66 = v65;
    OUTLINED_FUNCTION_34_69(v66, v67, v68, v69, v70, v71, v72, v73, v125, v58, v57, v131, v65, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
    v75 = __dst[0];
    v74 = __dst[1];
    v76 = __dst[2];
    v77 = __dst[3];
    v78 = __dst[4];
    v79 = __dst[5];
    v140 = __dst[0];
    v141 = __dst[1];
    v142 = __dst[2];
    v143 = __dst[3];
    v144 = __dst[4];
    v145 = __dst[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_131();
    v80();

    v5();
    OUTLINED_FUNCTION_26_101();
    if (TVAppFeature.isEnabled.getter(10, v81, v82))
    {
      v85 = 17;
    }

    else
    {
      v85 = 20;
    }

    LOBYTE(v138) = v85;
    if (TVAppFeature.isEnabled.getter(10, v83, v84))
    {
      v88 = 14;
    }

    else
    {
      v88 = 20;
    }

    LOBYTE(v136) = v88;
    if (TVAppFeature.isEnabled.getter(17, v86, v87))
    {
      v91 = 14;
    }

    else
    {
      v91 = 15;
    }

    LOBYTE(v134) = v91;
    v92 = TVAppFeature.isEnabled.getter(17, v89, v90);
    if (v92)
    {
      v100 = 14;
    }

    else
    {
      v100 = 2;
    }

    LOBYTE(v132) = v100;
    LOBYTE(v146) = 15;
    OUTLINED_FUNCTION_34_69(v92, v93, v94, v95, v96, v97, v98, v99, v126, v127, v129, v1, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
    OUTLINED_FUNCTION_51_44();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_175();
    v101();

    v104 = TVAppFeature.isEnabled.getter(10, v102, v103);
    v5();
    if (v104)
    {
      OUTLINED_FUNCTION_8();
      (*(v107 + 2272))(1);

      (v5)(v108);
      OUTLINED_FUNCTION_2_1();
      (*(v109 + 1792))(4);
    }

    else
    {
      TVAppFeature.isEnabled.getter(10, v105, v106);
      OUTLINED_FUNCTION_8();
      v111 = (v110 + 1792);
      if (v112)
      {
        v113 = 10;
      }

      else
      {
        v113 = 4;
      }

      (*v111)(v113);
    }

    (v5)(v114);
    v115 = sub_1E4205F14();
    v117 = v116;
    sub_1E4205F14();
    OUTLINED_FUNCTION_109();
    sub_1E376C12C(v115, v117, v118, v119);
    OUTLINED_FUNCTION_36();
    (*(v120 + 1888))();

    (v5)(v121);
    OUTLINED_FUNCTION_2_1();
    (*(v122 + 1720))(7);

    (v5)(v123);
    OUTLINED_FUNCTION_2_1();
    (*(v124 + 2008))(1);
  }
}

void sub_1E3F3FC68(char a1)
{
  v3 = *sub_1E3E5FD88();
  v4 = *sub_1E3E5F58C();
  v5 = (*v1 + 1968);
  v6 = *v5;
  v7 = v4;
  v6();
  v175 = v7;
  if (a1)
  {
    v173 = v5;
    __dst[0] = v3;
    v8 = v3;
    if (TVAppFeature.isEnabled.getter(10, v9, v10))
    {
      v13 = v8;
      v14 = v3;
    }

    else
    {
      v14 = 0;
    }

    v47 = v6;
    v192 = v14;
    if ((TVAppFeature.isEnabled.getter(10, v11, v12) & 1) == 0)
    {

      v3 = 0;
    }

    v190 = v3;
    if (TVAppFeature.isEnabled.getter(10, v48, v49))
    {
      v50 = v8;
    }

    else
    {
      v50 = v7;
    }

    v188 = v50;
    v51 = sub_1E3755B54();
    v52 = v50;
    sub_1E3C3DE00();
    v53 = OUTLINED_FUNCTION_63_30();
    v184[0] = v185;
    v61 = OUTLINED_FUNCTION_6_193(v53, v54, v55, v56, v57, v58, v59, v60, v168, v173, v7, v179, v180, v181, v182, __dst[0]);
    sub_1E3C2FCB8(v61, v62, v63, v64, v186, v184, v51, v65);
    v170 = v8;
    v66 = __src[0];
    v67 = __src[1];
    v69 = __src[2];
    v68 = __src[3];
    v70 = __src[4];
    v71 = __src[5];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_131();
    v72();

    v47();
    OUTLINED_FUNCTION_30_77();
    LOBYTE(__dst[0]) = v73;
    if (TVAppFeature.isEnabled.getter(10, v74, v75))
    {
      v78 = 17;
    }

    else
    {
      v78 = 19;
    }

    LOBYTE(v192) = v78;
    TVAppFeature.isEnabled.getter(10, v76, v77);
    OUTLINED_FUNCTION_55_44();
    if (v82)
    {
      v81 = 17;
    }

    LOBYTE(v190) = v81;
    if (TVAppFeature.isEnabled.getter(10, v79, v80))
    {
      v85 = 21;
    }

    else
    {
      v85 = 15;
    }

    LOBYTE(v188) = v85;
    v86 = TVAppFeature.isEnabled.getter(10, v83, v84);
    if (v86)
    {
      v94 = 3;
    }

    else
    {
      v94 = 2;
    }

    v187[0] = v94;
    v186[0] = 7;
    v95 = OUTLINED_FUNCTION_6_193(v86, v87, v88, v89, v90, v91, v92, v93, v170, v174, v177, v179, v180, v181, v182, __dst[0]);
    sub_1E3C2FCB8(v95, v96, v97, v98, v187, v186, &qword_1F5D549D8, v99);
    OUTLINED_FUNCTION_48_48();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_175();
    v100();

    v103 = TVAppFeature.isEnabled.getter(10, v101, v102);
    v47();
    OUTLINED_FUNCTION_2_1();
    if (v103)
    {
      v105 = 5;
    }

    else
    {
      v105 = 10;
    }

    (*(v104 + 1792))(v105);

    (v47)(v106);
    OUTLINED_FUNCTION_2_1();
    (*(v107 + 1720))(7);

    (v47)(v108);
    OUTLINED_FUNCTION_2_1();
    (*(v109 + 2008))(1);

    (v47)(v110);
    v113 = TVAppFeature.isEnabled.getter(10, v111, v112);
    v192 = v113 & 1;
    v193 = (v113 & 1) == 0;
    TVAppFeature.isEnabled.getter(10, v114, v115);
    OUTLINED_FUNCTION_43_61();
    __dst[0] = v116;
    LOBYTE(__dst[1]) = 0;
    v117 = MEMORY[0x1E69E6810];
    sub_1E3C3DE00();
    v188 = v190;
    v189 = v191;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_37_68();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_56_34();
    sub_1E3C3DE00();
    v179 = v181;
    LOBYTE(v180) = v182;
    v118 = &v192;
    v119 = __dst;
    v120 = &v188;
    v121 = v186;
    v122 = v184;
    v123 = &v179;
  }

  else
  {
    __dst[0] = v3;
    v192 = 0;
    v190 = 0;
    v15 = v3;
    if (TVAppFeature.isEnabled.getter(17, v16, v17))
    {
      v7 = v15;
    }

    v188 = v7;
    v18 = sub_1E3755B54();
    v19 = v7;
    sub_1E3C3DE00();
    v20 = OUTLINED_FUNCTION_63_30();
    v184[0] = v185;
    v28 = OUTLINED_FUNCTION_6_193(v20, v21, v22, v23, v24, v25, v26, v27, v15, v172, v175, v179, v180, v181, v182, __dst[0]);
    sub_1E3C2FCB8(v28, v29, v30, v31, v186, v184, v18, v32);
    v33 = v6;
    v34 = __src[0];
    v35 = __src[1];
    v37 = __src[2];
    v36 = __src[3];
    v39 = __src[4];
    v38 = __src[5];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_131();
    v40();

    v33();
    OUTLINED_FUNCTION_30_77();
    LOBYTE(__dst[0]) = v41;
    if (TVAppFeature.isEnabled.getter(10, v42, v43))
    {
      v46 = 14;
    }

    else if (TVAppFeature.isEnabled.getter(10, v44, v45))
    {
      v46 = 15;
    }

    else
    {
      v46 = 19;
    }

    LOBYTE(v192) = v46;
    if (TVAppFeature.isEnabled.getter(10, v44, v45))
    {
      v126 = 14;
    }

    else if (TVAppFeature.isEnabled.getter(10, v124, v125))
    {
      v126 = 15;
    }

    else
    {
      v126 = 17;
    }

    LOBYTE(v190) = v126;
    if (TVAppFeature.isEnabled.getter(10, v124, v125))
    {
      v129 = 14;
    }

    else if (TVAppFeature.isEnabled.getter(17, v127, v128))
    {
      v129 = 21;
    }

    else
    {
      v129 = 15;
    }

    LOBYTE(v188) = v129;
    v130 = TVAppFeature.isEnabled.getter(10, v127, v128);
    if (v130)
    {
      v138 = 14;
    }

    else
    {
      v130 = TVAppFeature.isEnabled.getter(17, v131, v132);
      if (v130)
      {
        v138 = 3;
      }

      else
      {
        v138 = 2;
      }
    }

    v187[0] = v138;
    v186[0] = 7;
    v139 = OUTLINED_FUNCTION_6_193(v130, v131, v132, v133, v134, v135, v136, v137, v169, v1, v176, v179, v180, v181, v182, __dst[0]);
    sub_1E3C2FCB8(v139, v140, v141, v142, v187, v186, &qword_1F5D549D8, v143);
    OUTLINED_FUNCTION_48_48();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_175();
    v144();

    v147 = TVAppFeature.isEnabled.getter(10, v145, v146);
    v33();
    OUTLINED_FUNCTION_2_1();
    if (v147)
    {
      v149 = 5;
    }

    else
    {
      v149 = 10;
    }

    (*(v148 + 1792))(v149);

    (v33)(v150);
    OUTLINED_FUNCTION_2_1();
    (*(v151 + 1720))(7);

    (v33)(v152);
    OUTLINED_FUNCTION_2_1();
    (*(v153 + 2008))(1);

    (v33)(v154);
    TVAppFeature.isEnabled.getter(10, v155, v156);
    OUTLINED_FUNCTION_43_61();
    v192 = v157;
    v193 = 0;
    TVAppFeature.isEnabled.getter(17, v158, v159);
    OUTLINED_FUNCTION_43_61();
    v190 = v160;
    v191 = 0;
    TVAppFeature.isEnabled.getter(17, v161, v162);
    OUTLINED_FUNCTION_43_61();
    v188 = v163;
    v189 = 0;
    TVAppFeature.isEnabled.getter(17, v164, v165);
    OUTLINED_FUNCTION_43_61();
    __dst[0] = v166;
    LOBYTE(__dst[1]) = 0;
    v117 = MEMORY[0x1E69E6810];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_37_68();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_56_34();
    v118 = v186;
    v119 = &v192;
    v120 = v184;
    v121 = &v190;
    v122 = &v188;
    v123 = __dst;
  }

  sub_1E3C2FCB8(v118, v119, v120, v121, v122, v123, v117, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_76();
  v167();
}

double sub_1E3F40548(char a1)
{
  v2 = 0x406C200000000000;
  OUTLINED_FUNCTION_8();
  v3 += 249;
  v4 = *v3;
  (*v3)();
  v73 = 0;
  v74 = 1;
  if (TVAppFeature.isEnabled.getter(10, v5, v6))
  {
    v9 = 0x406C200000000000;
  }

  else
  {
    v9 = 0x406CC00000000000;
  }

  v71 = v9;
  v72 = 0;
  if ((TVAppFeature.isEnabled.getter(10, v7, v8) & 1) == 0)
  {
    if (a1 & 1 | ((TVAppFeature.isEnabled.getter(17, v10, v11) & 1) == 0))
    {
      v2 = 0x4070400000000000;
    }

    else
    {
      v2 = 0x406CC00000000000;
    }
  }

  v69 = v2;
  v70 = 0;
  if (TVAppFeature.isEnabled.getter(10, v10, v11))
  {
    if (a1)
    {
      v14 = 0x4076800000000000;
    }

    else
    {
      v14 = 0x4072C00000000000;
    }
  }

  else
  {
    v15 = TVAppFeature.isEnabled.getter(17, v12, v13);
    if (a1)
    {
      v14 = 0x4076800000000000;
    }

    else
    {
      v14 = 0x4072C00000000000;
    }

    if ((v15 & 1) == 0)
    {
      v14 = 0x4081300000000000;
    }
  }

  v67 = v14;
  v68 = 0;
  if (TVAppFeature.isEnabled.getter(10, v12, v13))
  {
    v18 = 0x4063B00000000000;
  }

  else
  {
    v19 = TVAppFeature.isEnabled.getter(17, v16, v17);
    v18 = 0x4074000000000000;
    if (v19)
    {
      v18 = 0x4069000000000000;
    }
  }

  v65 = v18;
  v66 = 0;
  if (TVAppFeature.isEnabled.getter(10, v16, v17))
  {
    v22 = (a1 & 1) == 0;
    v23 = 0x406A400000000000;
  }

  else
  {
    v22 = (TVAppFeature.isEnabled.getter(17, v20, v21) & 1) == 0;
    v23 = 0x4075A00000000000;
  }

  if (!v22)
  {
    v23 = 0x406E000000000000;
  }

  v24 = 0x4046800000000000;
  __dst[0] = v23;
  LOBYTE(__dst[1]) = 0;
  v25 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FCB8(&v73, &v71, &v69, &v67, &v65, __dst, MEMORY[0x1E69E7DE0], __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v26 + 1600))(__dst, 4, v27 & 1, v25);

  (v4)(v28);
  v62 = 0;
  v63 = 1;
  if (TVAppFeature.isEnabled.getter(10, v29, v30))
  {
    v33 = 0x4046800000000000;
  }

  else
  {
    v33 = 0x4059000000000000;
  }

  v60 = v33;
  v61 = 0;
  if ((TVAppFeature.isEnabled.getter(10, v31, v32) & 1) == 0)
  {
    if (a1 & 1 | ((TVAppFeature.isEnabled.getter(17, v34, v35) & 1) == 0))
    {
      v24 = 0x405E000000000000;
    }

    else
    {
      v24 = 0x4059000000000000;
    }
  }

  v58 = v24;
  v59 = 0;
  if (TVAppFeature.isEnabled.getter(10, v34, v35))
  {
    v38 = 0x4054000000000000;
    if (a1)
    {
      v38 = 0x4058000000000000;
    }
  }

  else
  {
    v39 = TVAppFeature.isEnabled.getter(17, v36, v37);
    v38 = 0x4054000000000000;
    if (a1)
    {
      v38 = 0x4058000000000000;
    }

    if ((v39 & 1) == 0)
    {
      v38 = 0x4066800000000000;
    }
  }

  v56 = v38;
  v57 = 0;
  if (TVAppFeature.isEnabled.getter(10, v36, v37))
  {
    v42 = 0x4045000000000000;
  }

  else
  {
    v43 = TVAppFeature.isEnabled.getter(17, v40, v41);
    v42 = 0x405CC00000000000;
    if (v43)
    {
      v42 = 0x4048000000000000;
    }
  }

  v54 = v42;
  v55 = 0;
  if (TVAppFeature.isEnabled.getter(10, v40, v41))
  {
    v46 = (a1 & 1) == 0;
    v47 = 0x404C000000000000;
    v48 = 0x4050000000000000;
  }

  else
  {
    v46 = (TVAppFeature.isEnabled.getter(17, v44, v45) & 1) == 0;
    v47 = 0x4055400000000000;
    v48 = 0x404E000000000000;
  }

  if (!v46)
  {
    v47 = v48;
  }

  v53[0] = v47;
  LOBYTE(v53[1]) = 0;
  v49 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FCB8(&v62, &v60, &v58, &v56, &v54, v53, MEMORY[0x1E69E7DE0], __dst);
  memcpy(v53, __dst, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v50 + 1600))(v53, 8, v51 & 1, v49);

  return result;
}

double sub_1E3F40944()
{

  return result;
}

uint64_t sub_1E3F409CC()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3F40A5C()
{
  v0 = sub_1E3F409CC();

  return MEMORY[0x1EEE6BDC0](v0, 224, 7);
}

unint64_t sub_1E3F40A8C()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3F40AD8()
{
  result = OUTLINED_FUNCTION_14_157();
  switch(v1)
  {
    case 1:
      result = 0x65736163776F6C66;
      break;
    case 2:
      result = OUTLINED_FUNCTION_28_78();
      break;
    case 3:
      result = OUTLINED_FUNCTION_27_83();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3F40B8C(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3F40C58(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3F40BD4()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3F40C58(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3F40D2C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3F40C58(v4, a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3F40D70(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

unint64_t sub_1E3F40DC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F40A8C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3F40DF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3F40AD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1E3F40E24()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

unint64_t sub_1E3F40E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D068;
  if (!qword_1ECF3D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D068);
  }

  return result;
}

unint64_t sub_1E3F40EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D070;
  if (!qword_1ECF3D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D070);
  }

  return result;
}

BOOL sub_1E3F40F28@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F40E24();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for VerticalStackLayout.StackType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VerticalStackLayout.VerticalStackLayoutKeys(_BYTE *result, int a2, int a3)
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

double sub_1E3F4110C()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1872))();
  sub_1E3C37CBC(v1, 5);

  OUTLINED_FUNCTION_36();
  v3 = (*(v2 + 1896))();
  sub_1E3C37CBC(v3, 23);

  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1920))();
  sub_1E3C37CBC(v5, 15);

  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1968))();
  sub_1E3C37CBC(v7, 4);

  OUTLINED_FUNCTION_36();
  v9 = (*(v8 + 1944))();
  sub_1E3C37CBC(v9, 14);

  OUTLINED_FUNCTION_36();
  v11 = (*(v10 + 1992))();
  sub_1E3C37CBC(v11, 39);

  OUTLINED_FUNCTION_36();
  v13 = (*(v12 + 2040))();
  sub_1E3C37CBC(v13, 73);

  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 2064))();
  sub_1E3C37CBC(v15, 99);

  OUTLINED_FUNCTION_36();
  v17 = (*(v16 + 2088))();
  sub_1E3C37CBC(v17, 59);

  OUTLINED_FUNCTION_36();
  v19 = (*(v18 + 2136))();
  sub_1E3C37CBC(v19, 60);

  return result;
}

uint64_t OUTLINED_FUNCTION_48_48()
{

  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1E3F41450(void *a1, void *a2, uint64_t a3, char a4)
{
  *&v30 = sub_1E32859C4(a1, &selRef_documentType);
  *(&v30 + 1) = v8;
  sub_1E3DE55E0(v30, v8, v9);
  sub_1E4149694();
  v10 = v28;
  if (v28 == 8)
  {
    return 0;
  }

  v11 = sub_1E32859C4(a1, &selRef_controllerRef);
  if (!v12)
  {
    return 0;
  }

  v13 = v11;
  v14 = v12;
  type metadata accessor for DocumentServiceRequestContext(0);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = OUTLINED_FUNCTION_18();
  v16 = a2;
  v17 = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v10, 0, v13, v14, a2, &v30, &v28, v15 & 1);
  v18 = [a1 contextData];
  if (v18)
  {
    v19 = sub_1E3751A20(v18);
  }

  else
  {
    v19 = 0;
  }

  v21 = sub_1E4149EE8(v19, a3, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);

  if (v21)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  }

  else
  {
    v22 = 0;
    *(&v30 + 1) = 0;
    *&v31 = 0;
  }

  *&v30 = v21;
  *(&v31 + 1) = v22;
  (*(*v17 + 224))(&v30);
  v23 = [a1 prefetchData];
  if (v23 && (v24 = v23, v25 = [v23 jsonData], v24, v25))
  {
    v26 = sub_1E4205C64();

    *(&v31 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    *&v30 = v26;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  (*(*v17 + 248))(&v30);
  v20 = swift_allocObject();
  sub_1E3F41734(v17, a4 & 1);
  return v20;
}

uint64_t sub_1E3F416E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  sub_1E3F41734(a1, v2);
  return v4;
}

void *sub_1E3F41734(uint64_t a1, char a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D078, &qword_1E42DF508);
  v2[4] = sub_1E37B2760();

  if (a2)
  {
    sub_1E3F417C4();
  }

  return v2;
}

double sub_1E3F417C4()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E324FBDC();
  (*(v4 + 16))(v7, v8, v2);
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1E3270FC8(0xD00000000000001DLL, 0x80000001E42DF4F0, &v22);
    _os_log_impl(&dword_1E323F000, v9, v10, "%s Starting to fetch document", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v7, v2);
  v13 = *(v1 + 32);
  if (v13 && (v14 = *(*v13 + 352), v15 = , v16 = v14(v15), , v16))
  {
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = 0xD00000000000001DLL;
    v18[4] = 0x80000001E42DF4F0;
    v19 = sub_1E41EC148(sub_1E3F421F8, v18);
  }

  else
  {
    v19 = 0;
  }

  *(v1 + 40) = v19;

  return result;
}

void sub_1E3F41A74()
{
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  v0[5] = 0;
  v0[6] = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3F41AE8()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(*v2 + 376);

    v3(v4);
  }

  *(v1 + 32) = 0;

  sub_1E32AF6F8(v1 + 16);

  return v1;
}

uint64_t sub_1E3F41B8C()
{
  sub_1E3F41AE8();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

double sub_1E3F41BC0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 16);
  v21 = *(a1 + 17);
  OUTLINED_FUNCTION_5_0(a2 + 16, v75);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v64 = Strong;
    v65 = v21;
    v68 = a3;
    v63 = v20;
    v24 = sub_1E324FBDC();
    v25 = *(v10 + 16);
    v66 = v24;
    v67 = v25;
    (v25)(v17);

    v26 = sub_1E41FFC94();
    v27 = sub_1E42067E4();

    v28 = os_log_type_enabled(v26, v27);
    v69 = v19;
    v70 = v10;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v62 = v18;
      v30 = v29;
      v31 = v10;
      v32 = swift_slowAlloc();
      v74[0] = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_1E3270FC8(v68, a4, v74);
      _os_log_impl(&dword_1E323F000, v26, v27, "%s Received fetch document response", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_6_0();
      v18 = v62;
      OUTLINED_FUNCTION_6_0();

      v33 = v31;
      v19 = v69;
    }

    else
    {

      v33 = v10;
    }

    v34 = *(v33 + 8);
    v34(v17, v8);
    v35 = v8;
    v36 = v64;
    if (v65)
    {
      v73[0] = sub_1E3F6FB3C(v18, v19, v63);
      v73[1] = v37;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      sub_1E4148C68(sub_1E37BCD7C, v38, v74);

      v39 = v74[1];
      v71 = v74[0];
      v40 = v72;
      v67(v72, v66, v8);

      v41 = sub_1E41FFC94();
      v42 = sub_1E42067E4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v67 = v35;
        v44 = v43;
        v74[0] = swift_slowAlloc();
        *v44 = 136315394;
        *(v44 + 4) = sub_1E3270FC8(v68, a4, v74);
        *(v44 + 12) = 2080;
        v45 = v18;
        v46 = sub_1E3270FC8(v71, v39, v74);

        *(v44 + 14) = v46;
        v18 = v45;
        _os_log_impl(&dword_1E323F000, v41, v42, "%s Fetch document response failed [%s]", v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v47 = v72;
        v48 = v67;
      }

      else
      {

        v47 = v40;
        v48 = v35;
      }

      v34(v47, v48);
      OUTLINED_FUNCTION_5_0((v36 + 2), v74);
      v57 = swift_unknownObjectWeakLoadStrong();
      v58 = v69;
      if (v57)
      {
        v59 = v36[3];
        ObjectType = swift_getObjectType();
        (*(v59 + 16))(v36, v18, v58, v63, ObjectType, v59);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v49 = v71;
      v67(v71, v66, v8);

      v50 = sub_1E41FFC94();
      v51 = sub_1E42067E4();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = v18;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v74[0] = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_1E3270FC8(v68, a4, v74);
        _os_log_impl(&dword_1E323F000, v50, v51, "%s Fetch document response was success", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        OUTLINED_FUNCTION_6_0();
        v18 = v52;
        OUTLINED_FUNCTION_6_0();
      }

      v34(v49, v35);
      swift_beginAccess();
      v36[6] = v18;
      swift_retain_n();

      OUTLINED_FUNCTION_5_0((v36 + 2), v73);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v55 = v36[3];
        v56 = swift_getObjectType();
        (*(v55 + 8))(v36, v18, v56, v55);
        swift_unknownObjectRelease();
      }
    }

    v36[4] = 0;

    v36[5] = 0;
  }

  return result;
}

void sub_1E3F42228()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for LibEditableCard(0);
  v16 = *(v15 + 32);
  *(v7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8, &qword_1E42CA850);
  swift_storeEnumTagMultiPayload();
  v17 = (v7 + *(v15 + 36));
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_3_221();
  sub_1E3F449AC(v18, v19, &unk_1E42A2B70);
  *v17 = sub_1E4201754();
  v17[1] = v20;
  *v7 = v5;
  type metadata accessor for ContextMenuModel(0);
  swift_retain_n();
  v21 = sub_1E3E6CDBC();
  v23 = *v21;
  v22 = v21[1];
  v26[0] = v23;
  v26[1] = v22;

  sub_1E4207414();
  (*(v10 + 104))(v14, *MEMORY[0x1E697E660], v8);

  *(v7 + 208) = sub_1E4188148(v24, v14);
  memcpy((v7 + 8), v3, 0xC3uLL);
  type metadata accessor for CardViewInteractor(0);
  sub_1E375C1CC(v3, v26);
  sub_1E375C1CC(v3, v26);

  v25 = sub_1E3AB85C4(v5, v3, v1);
  j__OUTLINED_FUNCTION_18();
  sub_1E3AB9000();

  sub_1E37E6F2C(v3);

  sub_1E3ABC8B4(v26);
  *(v7 + 216) = sub_1E38074D0;
  *(v7 + 224) = v25;
  *(v7 + 232) = 0;
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for LibEditableCard(uint64_t a1)
{
  result = qword_1EE2A3F50;
  if (!qword_1EE2A3F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3F424D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for LibEditableCard(0);
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = v4;
  v97 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v90 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D080, &qword_1E42DF5A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v78 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D088, &qword_1E42DF5B0);
  OUTLINED_FUNCTION_0_10();
  v80 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v78 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D090, &qword_1E42DF5B8);
  OUTLINED_FUNCTION_0_10();
  v82 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D098, &qword_1E42DF5C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v78 - v21;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0A0, &qword_1E42DF5C8);
  OUTLINED_FUNCTION_0_10();
  v86 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v25);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0A8, &qword_1E42DF5D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0B0, &qword_1E42DF5D8);
  OUTLINED_FUNCTION_0_10();
  v93 = v29;
  v94 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  *v12 = sub_1E4201D54();
  *(v12 + 1) = 0;
  v12[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0B8, &qword_1E42DF5E0);
  sub_1E3F42DCC();
  v32 = v1[26];
  v33 = sub_1E32752B0(&qword_1ECF3D0C0, &qword_1ECF3D080, &qword_1E42DF5A8, MEMORY[0x1E6981870]);
  sub_1E4187EA8(v32, v9, v33);
  sub_1E325F6F0(v12, &qword_1ECF3D080, &qword_1E42DF5A8);
  v34 = *v1;
  v101 = v9;
  v102 = v33;
  v35 = v78[1];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v79;
  sub_1E4035F10(v34, v79, OpaqueTypeConformance2);
  (*(v80 + 8))(v16, v37);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_294();
  sub_1E3F449AC(v38, v39, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();
  v40 = sub_1E4200BC4();
  v41 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0(v40 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout, v100);
  v42 = *(v40 + v41);

  if (v42 && (OUTLINED_FUNCTION_8(), (*(v43 + 152))(&v101), v44 = v101, v45 = v102, v46 = v103, v47 = v104, , (v105 & 1) == 0))
  {
    v48.n128_u64[0] = v44;
    v49.n128_u64[0] = v45;
    v50.n128_u64[0] = v46;
    v51.n128_u64[0] = v47;
    v52 = j_nullsub_1(v48, v49, v50, v51);
  }

  else
  {
    v52 = OUTLINED_FUNCTION_5_8();
  }

  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = sub_1E4202734();
  (*(v82 + 32))(v22, v35, v84);
  v61 = &v22[*(v83 + 36)];
  *v61 = v60;
  *(v61 + 1) = v56;
  *(v61 + 2) = v57;
  *(v61 + 3) = v58;
  *(v61 + 4) = v59;
  v61[40] = 0;
  v62 = v88;
  sub_1E4202474();
  sub_1E3F4316C();
  v63 = v81;
  OUTLINED_FUNCTION_32_0();
  sub_1E4203224();
  (*(v90 + 8))(v62, v92);
  v64 = sub_1E325F6F0(v22, &qword_1ECF3D098, &qword_1E42DF5C0);
  v65 = (*(*v34 + 1184))(v64);
  v66 = v97;
  sub_1E3F43550(v2, v97);
  v67 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v68 = swift_allocObject();
  sub_1E3F435B4(v66, v68 + v67);
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1E3F43618;
  *(v69 + 24) = v68;
  v70 = v85;
  (*(v86 + 32))(v85, v63, v87);
  v71 = v91;
  *(v70 + *(v91 + 52)) = v65;
  v72 = (v70 + *(v71 + 56));
  *v72 = sub_1E379E500;
  v72[1] = v69;
  v99 = v34;
  sub_1E3F43550(v2, v66);
  v73 = swift_allocObject();
  sub_1E3F435B4(v66, v73 + v67);
  type metadata accessor for LibLockupViewModel(0);
  sub_1E32752B0(&qword_1ECF3D0D0, &qword_1ECF3D0A8, &qword_1E42DF5D0, MEMORY[0x1E697C278]);
  sub_1E3F449AC(qword_1EE277BC8, type metadata accessor for LibLockupViewModel, &protocol conformance descriptor for ViewModel);
  swift_retain_n();
  v74 = v89;
  sub_1E4203524();

  sub_1E325F6F0(v70, &qword_1ECF3D0A8, &qword_1E42DF5D0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0D8, &qword_1E42DF5E8);
  v76 = v98;
  sub_1E3AB3A44(v34, (v98 + *(v75 + 36)));
  return (*(v93 + 32))(v76, v74, v94);
}

void sub_1E3F42DCC()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v0;
  v33 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0, &qword_1E42B7960);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v33 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0E8, &qword_1E42DF658);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0F0, &qword_1E42DF660);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v33 - v28;
  sub_1E3F432AC(&v33 - v28);
  type metadata accessor for LibEditableCard(0);
  sub_1E3AB3B98(v10);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
  if (__swift_getEnumTagSinglePayload(v10, 1, v30) == 1)
  {
    sub_1E325F6F0(v10, &qword_1ECF31FF0, &qword_1E42B7960);
  }

  else
  {
    MEMORY[0x1E690E3F0](v30);
    sub_1E325F6F0(v10, &qword_1ECF31FC8, &unk_1E42B7930);
    sub_1E4203BF4();
    (*(v2 + 8))(v6, v33);
  }

  *v18 = sub_1E4201B84();
  *(v18 + 1) = 0;
  v18[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D0F8, &qword_1E42DF668);
  sub_1E3F440B0();
  sub_1E3741EA0(v18, v21, &qword_1ECF3D0E8, &qword_1E42DF658);
  sub_1E3743538(v29, v26, &qword_1ECF3D0F0, &qword_1E42DF660);
  sub_1E3743538(v21, v15, &qword_1ECF3D0E8, &qword_1E42DF658);
  v31 = v34;
  sub_1E3743538(v26, v34, &qword_1ECF3D0F0, &qword_1E42DF660);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D100, &qword_1E42DF670);
  sub_1E3743538(v15, v31 + *(v32 + 48), &qword_1ECF3D0E8, &qword_1E42DF658);
  sub_1E325F6F0(v21, &qword_1ECF3D0E8, &qword_1E42DF658);
  sub_1E325F6F0(v29, &qword_1ECF3D0F0, &qword_1E42DF660);
  sub_1E325F6F0(v15, &qword_1ECF3D0E8, &qword_1E42DF658);
  sub_1E325F6F0(v26, &qword_1ECF3D0F0, &qword_1E42DF660);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3F4316C()
{
  result = qword_1ECF3D0C8;
  if (!qword_1ECF3D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D098, &qword_1E42DF5C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D088, &qword_1E42DF5B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D080, &qword_1E42DF5A8);
    sub_1E32752B0(&qword_1ECF3D0C0, &qword_1ECF3D080, &qword_1E42DF5A8, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D0C8);
  }

  return result;
}

uint64_t sub_1E3F432AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0, &qword_1E42B7960);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v27 - v13);
  type metadata accessor for LibEditableCard(0);
  sub_1E3AB3B98(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E325F6F0(v14, &qword_1ECF31FF0, &qword_1E42B7960);
    v16 = 1;
  }

  else
  {
    MEMORY[0x1E690E3F0](v15);
    sub_1E325F6F0(v14, &qword_1ECF31FC8, &unk_1E42B7930);
    v17 = sub_1E4203BF4();
    (*(v6 + 8))(v10, v4);
    v16 = v17 ^ 1;
  }

  v18 = *v2;
  v19 = *(*v2 + 24);
  if (v19)
  {
    v20 = *(*v2 + 24);
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1EEE9AC00](v19);
  v27[-4] = v2;
  v27[-3] = v21;
  v27[-2] = v20;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D118, &qword_1E42DF688);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32328, &qword_1E42B82F0);
  v24 = sub_1E3ABD344();
  v27[0] = v23;
  v27[1] = MEMORY[0x1E69E6158];
  v27[2] = v24;
  v27[3] = MEMORY[0x1E69E6168];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E40424BC(v18, v16 & 1, sub_1E3F449A0, v22, OpaqueTypeConformance2, a1, &v27[-6]);
}

uint64_t sub_1E3F43550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibEditableCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3F435B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibEditableCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3F43618()
{
  v0 = type metadata accessor for LibEditableCard(0);
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_294();
  sub_1E3F449AC(v1, v2, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  sub_1E3AB9E3C();

  return result;
}

uint64_t objectdestroyTm_53()
{
  v1 = type metadata accessor for LibEditableCard(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1E3264CE0(*(v2 + 216), *(v2 + 224));
  v3 = v2 + *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8, &qword_1E42CA850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8, &unk_1E42B7930);
    if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      sub_1E4203C04();
      OUTLINED_FUNCTION_2();
      (*(v6 + 8))(v3 + v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1E3F4387C()
{
  v0 = type metadata accessor for LibEditableCard(0);
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_294();
  sub_1E3F449AC(v1, v2, &unk_1E42BD340);
  sub_1E4200BC4();
  sub_1E3AB9E3C();

  return result;
}

uint64_t sub_1E3F43974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32328, &qword_1E42B82F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v9 - v6;
  sub_1E3F43A58();
  v9[0] = a2;
  v9[1] = a3;
  sub_1E3ABD344();
  sub_1E4203184();
  return sub_1E325F6F0(v7, &qword_1ECF32328, &qword_1E42B82F0);
}

void sub_1E3F43A58()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for ImageViewWithOverlay(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v47 = (v5 - v4);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32340, &qword_1E42B8308);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v46 = v7;
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_294();
  sub_1E3F449AC(v8, v9, &unk_1E42BD340);
  v10 = OUTLINED_FUNCTION_4_223();
  v11 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v10 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v57);
  memcpy(v62, (v10 + v11), 0x58uLL);
  sub_1E3743538(v62, v58, &qword_1ECF322C8, &qword_1E42B8140);

  if (!v62[7] || (v12 = v62[1], , sub_1E325F6F0(v62, &qword_1ECF322C8, &qword_1E42B8140), !v12))
  {
    v16 = v2;
    v17 = 1;
    v18 = v48;
LABEL_24:
    __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v45 = v2;
  v13 = OUTLINED_FUNCTION_4_223();
  v14 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v13 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v55);
  memcpy(v56, (v13 + v14), sizeof(v56));
  sub_1E3743538(v56, v58, &qword_1ECF322C8, &qword_1E42B8140);

  if (v56[7])
  {
    v15 = v56[2];

    sub_1E325F6F0(v56, &qword_1ECF322C8, &qword_1E42B8140);
  }

  else
  {
    v15 = 0;
  }

  memcpy(v50, (v0 + 8), 0x5BuLL);
  sub_1E375C2C0(v50, v58);
  v19 = *sub_1E3E5FD24();
  sub_1E375C31C(v50);
  memcpy(v58, (v0 + 8), sizeof(v58));
  v59 = v19;
  v60 = *(v0 + 96);
  v61 = *(v0 + 98);
  memcpy(v51, (v0 + 8), sizeof(v51));
  v52 = v19;
  v53 = *(v0 + 96);
  v54 = *(v0 + 98);
  sub_1E375C2C0(v58, v49);
  sub_1E375C31C(v51);

  sub_1E375C2C0(v58, v49);

  v20 = OUTLINED_FUNCTION_18();
  v21 = sub_1E3BF493C();
  sub_1E3FB1C2C(v12, v58, v15, 0, v20 & 1, v21, v23, v22 & 1, v47, 0, 0);
  v24 = OUTLINED_FUNCTION_4_223();
  v25 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v24 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v67);
  memcpy(v49, (v24 + v25), 0x58uLL);
  sub_1E3743538(v49, v68, &qword_1ECF322C8, &qword_1E42B8140);

  if (!v49[7])
  {
    v27 = v45;
    goto LABEL_23;
  }

  v26 = v49[1];

  sub_1E325F6F0(v49, &qword_1ECF322C8, &qword_1E42B8140);
  v27 = v45;
  if (!v26)
  {
LABEL_23:
    sub_1E3F449AC(qword_1EE26CB60, type metadata accessor for ImageViewWithOverlay, &unk_1E42E2390);
    sub_1E4202ED4();

    sub_1E375C31C(v58);

    sub_1E3ABD6A0(v47);
    *(v46 + *(v48 + 36)) = 256;
    sub_1E3741EA0(v46, v27, &qword_1ECF32340, &qword_1E42B8308);
    v16 = v27;
    v17 = 0;
    v18 = v48;
    goto LABEL_24;
  }

  v28 = OUTLINED_FUNCTION_4_223();
  v29 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v28 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v65);
  memcpy(v66, (v28 + v29), sizeof(v66));
  sub_1E3743538(v66, v68, &qword_1ECF322C8, &qword_1E42B8140);

  if (!*&v66[56])
  {
    goto LABEL_22;
  }

  v68[0] = *v66;
  v68[1] = *&v66[16];
  v68[2] = *&v66[32];
  v69 = *&v66[48];
  v70 = *&v66[56];
  v71 = *&v66[64];
  v72 = *&v66[80];
  v31 = sub_1E3AB7854(v30);
  sub_1E325F6F0(v66, &qword_1ECF322C8, &qword_1E42B8140);
  if (!v31)
  {
    goto LABEL_22;
  }

  type metadata accessor for ImageViewModel();
  v32 = swift_dynamicCastClass();
  if (!v32 || (v33 = *(*v32 + 904), v34 = , v35 = v33(v34), v27 = v45, v44 = v35, v37 = v36, , !v37))
  {

LABEL_22:

    goto LABEL_23;
  }

  v38 = 0;
  v39 = *(v31 + 16);
  while (1)
  {
    if (v39 == v38)
    {

      goto LABEL_22;
    }

    if (v38 >= *(v31 + 16))
    {
      break;
    }

    v40 = v38 + 1;

    v63 = sub_1E403C3DC();
    v64 = v41;
    v62[11] = v44;
    v62[12] = v37;
    sub_1E32822E0(v63, v41, v42);
    v43 = sub_1E4207254();

    v38 = v40;
    v27 = v45;
    if (v43)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_1E3F440B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v90 = v7;
  v91 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v94 = v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8, &qword_1E42C9810);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v89 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v84 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BC50, &unk_1E42DBCC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v92 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D108, &qword_1E42DF678);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32310, &qword_1E42B82D8);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v95 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - v31;
  v33 = *v3;

  sub_1E403C5C0(v34, v1, v32);
  *&v32[*(v27 + 44)] = 256;
  if ((v1 & 1) == 0)
  {
    v57 = 1;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v25, v57, 1, v15);
    v72 = v95;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v73, v74, v75, v76);
    sub_1E3743538(v25, v22, &qword_1ECF3D108, &qword_1E42DF678);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v77, v78, v79, v80);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D110, &qword_1E42DF680);
    sub_1E3743538(v22, v5 + *(v81 + 48), &qword_1ECF3D108, &qword_1E42DF678);
    sub_1E325F6F0(v25, &qword_1ECF3D108, &qword_1E42DF678);
    sub_1E325F6F0(v32, &qword_1ECF32310, &qword_1E42B82D8);
    sub_1E325F6F0(v22, &qword_1ECF3D108, &qword_1E42DF678);
    sub_1E325F6F0(v72, &qword_1ECF32310, &qword_1E42B82D8);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v85 = v15;
  v86 = v22;
  v87 = v5;
  v35 = *(type metadata accessor for LibEditableCard(0) + 36);
  v84 = v3;
  if (*(v3 + v35))
  {
    OUTLINED_FUNCTION_8();
    v37 = *(v36 + 408);

    v37(v96, v38);

    v40 = *(v33 + 16);
    v39 = *(v33 + 24);
    OUTLINED_FUNCTION_8();
    v42 = *(v41 + 240);

    v44 = v42(v43);

    v45 = sub_1E3AB391C(v40, v39, v44);

    v46 = &v98;
    v47 = v100;
    if (v45)
    {
      v47 = &v99;
    }

    v48 = *v47;
    if (v45)
    {
      v46 = &v97;
    }

    if (v48)
    {
      v49 = *v46;
      memcpy(v103, v84 + 1, 0x5BuLL);

      v50 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v48, v103, v49, v50 & 1, 0, 0, v94);
      if (v49)
      {
        OUTLINED_FUNCTION_8();
        v52 = *(v51 + 200);

        v52(v53);
        LODWORD(v84) = v54;

        v55 = *(*v49 + 304);

        v55(v56);
      }

      else
      {
        LODWORD(v84) = 1;
      }

      v5 = v87;
      sub_1E4203DA4();
      sub_1E4200D94();

      sub_1E3844FE0(v96);

      v61 = v89;
      (*(v90 + 32))(v89, v94, v91);
      v59 = v93;
      v62 = (v61 + *(v93 + 36));
      v63 = v101;
      *v62 = *&v100[88];
      v62[1] = v63;
      v62[2] = v102;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v64, v65, v66, v67);
      v60 = v92;
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v68, v69, v70, v71);
      v58 = 0;
    }

    else
    {
      sub_1E3844FE0(v96);
      v58 = 1;
      v5 = v87;
      v60 = v92;
      v59 = v93;
    }

    __swift_storeEnumTagSinglePayload(v60, v58, 1, v59);
    sub_1E3741EA0(v60, v25, &qword_1ECF3BC50, &unk_1E42DBCC0);
    v57 = 0;
    v15 = v85;
    v22 = v86;
    goto LABEL_15;
  }

  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_3_221();
  sub_1E3F449AC(v82, v83, &unk_1E42A2B70);
  sub_1E4201744();
  __break(1u);
}

void sub_1E3F44750(uint64_t a1)
{
  type metadata accessor for LibLockupViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel(319);
    if (v2 <= 0x3F)
    {
      sub_1E3ABD168(319);
      if (v3 <= 0x3F)
      {
        sub_1E3AB3F5C(319);
        if (v4 <= 0x3F)
        {
          sub_1E3AB3FC0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E3F44824()
{
  result = qword_1ECF3D0E0;
  if (!qword_1ECF3D0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D0D8, &qword_1E42DF5E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D0A8, &qword_1E42DF5D0);
    type metadata accessor for LibLockupViewModel(255);
    sub_1E32752B0(&qword_1ECF3D0D0, &qword_1ECF3D0A8, &qword_1E42DF5D0, MEMORY[0x1E697C278]);
    sub_1E3F449AC(qword_1EE277BC8, type metadata accessor for LibLockupViewModel, &protocol conformance descriptor for ViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E3F449AC(&qword_1ECF3BB90, type metadata accessor for CollectionViewCellEditableModifier, &unk_1E42B79C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D0E0);
  }

  return result;
}

uint64_t sub_1E3F449AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3F449F4()
{

  sub_1E3B50380(&v1);

  return v1;
}

double sub_1E3F44A38(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

uint64_t sub_1E3F44A7C(void *a1)
{
  *a1 = *(v1 + 24);

  sub_1E3B50380((a1 + 1));
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3F44ADC()
{

  sub_1E38074D0();
  OUTLINED_FUNCTION_12_1();

  return v0;
}

uint64_t sub_1E3F44B14()
{

  sub_1E3B50380(&v1);

  return v1;
}

double sub_1E3F44B58(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

uint64_t sub_1E3F44B9C(void *a1)
{
  *a1 = *(v1 + 32);

  sub_1E3B50380((a1 + 1));
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3F44BF8()
{

  sub_1E38074D0();
  OUTLINED_FUNCTION_12_1();

  return v0;
}

uint64_t sub_1E3F44C44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F44C98(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 272);

  return v2(v3);
}

uint64_t (*sub_1E3F44D08())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3846A58;
}

uint64_t sub_1E3F44D9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D128, &unk_1E42DF6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_1_8(v2, v8);
  v4(v3);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__supplementaryData, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D120, &qword_1E42DF6D8);
  sub_1E4200654();
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_27_0();
  return v6(v5);
}

void (*sub_1E3F44E9C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D128, &unk_1E42DF6E0);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__supplementaryData, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D120, &qword_1E42DF6D8);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3F44FA8;
}

uint64_t sub_1E3F44FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F45028(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 320);

  return v2(v3);
}

uint64_t (*sub_1E3F45098())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3844B3C;
}

uint64_t sub_1E3F4512C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB38, &unk_1E42AB530);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = OUTLINED_FUNCTION_1_8(v2, v8);
  v4(v3);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__viewModel, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  sub_1E4200654();
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_27_0();
  return v6(v5);
}

void (*sub_1E3F4522C())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB38, &unk_1E42AB530);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__viewModel, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3F45338;
}

void sub_1E3F45350(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3F45418()
{

  sub_1E3B50380(&v1);

  return v1;
}

double sub_1E3F45464(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);

  return result;
}

uint64_t sub_1E3F454B0(void *a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__isPlayingVideo);

  sub_1E3B50380((a1 + 1));
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E3F45520()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

uint64_t sub_1E3F45650(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_imageSizeMode;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F45684(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_imageSizeMode;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3F457AC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_mutePlaybackInBackground;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F457E0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_mutePlaybackInBackground;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3F4586C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_exitsFullscreenWhenPlaybackEnds;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F458A0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_exitsFullscreenWhenPlaybackEnds;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3F4592C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldPauseAtEnd;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F45960(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldPauseAtEnd;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3F459EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldShowImageAndStopAfterPausingAtEnd;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F45A20(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldShowImageAndStopAfterPausingAtEnd;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E3F45AAC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldStopPlayerWhenViewDisappears;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3F45AE0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldStopPlayerWhenViewDisappears;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

double sub_1E3F45B6C()
{
  sub_1E3D41778();

  return result;
}

uint64_t sub_1E3F45B98()
{
  type metadata accessor for BackgroundPlaybackModel(0);
  v0 = swift_allocObject();

  sub_1E3F45DDC();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 320);

  v2(v3);
  OUTLINED_FUNCTION_36();
  (*(v4 + 408))(0x3FF0000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v5 + 480))(0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 504))(0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 528))(0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 552))(0);
  OUTLINED_FUNCTION_36();
  (*(v9 + 576))(0);
  return v0;
}

uint64_t sub_1E3F45D7C()
{
  v0 = swift_allocObject();
  sub_1E3F45DDC();
  return v0;
}

void sub_1E3F45DDC()
{
  OUTLINED_FUNCTION_31_1();
  v19 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D120, &qword_1E42DF6D8);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA58, &qword_1E42B80A0);
  LOBYTE(v20) = 0;
  *(v0 + 3) = sub_1E3B508D0();
  LOBYTE(v20) = 0;
  *(v0 + 4) = sub_1E3B508D0();
  v13 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__supplementaryData;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
  sub_1E4200634();
  (*(v9 + 32))(&v0[v13], v12, v7);
  v14 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__viewModel;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
  sub_1E4200634();
  (*(v5 + 32))(&v0[v14], v1, v3);
  v15 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__isPlayingVideo;
  LOBYTE(v20) = 0;
  *&v0[v15] = sub_1E3B508D0();
  v16 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_didPlayToEndSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *&v0[v16] = sub_1E4200544();
  OUTLINED_FUNCTION_56_35(OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_playbackDelayInterval);
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_imageSizeMode] = 2;
  v17 = &v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_idealAspectRatio];
  *v17 = 0;
  v17[8] = v18;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_mutePlaybackInBackground] = 2;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_exitsFullscreenWhenPlaybackEnds] = v18;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldPauseAtEnd] = v18;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldShowImageAndStopAfterPausingAtEnd] = v18;
  v0[OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel_shouldStopPlayerWhenViewDisappears] = v18;
  *(v0 + 2) = v19;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F46080()
{

  v1 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__supplementaryData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D120, &qword_1E42DF6D8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI23BackgroundPlaybackModel__viewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  OUTLINED_FUNCTION_10();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_1E3F46158()
{
  sub_1E3F46080();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1E3F461AC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BackgroundPlaybackModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

uint64_t sub_1E3F461EC()
{

  sub_1E3B50380(&v1);

  return v1;
}

double sub_1E3F46238(void *a1)
{
  v4 = a1;
  v2 = a1;
  OUTLINED_FUNCTION_12_1();

  sub_1E3B50420(&v4);

  return result;
}

uint64_t sub_1E3F46298()
{

  sub_1E38074D0();
  OUTLINED_FUNCTION_12_1();

  return v0;
}

uint64_t sub_1E3F46308()
{
  v1 = OBJC_IVAR____TtC8VideosUI25BackgroundMediaImageModel__loadedImage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D130, &qword_1E42DF740);
  *(v0 + v1) = sub_1E3B508D0();
  OUTLINED_FUNCTION_56_35(OBJC_IVAR____TtC8VideosUI25BackgroundMediaImageModel_downloadableImageWidth);
  return sub_1E3B500B4();
}

uint64_t sub_1E3F4638C()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F46400()
{
  type metadata accessor for BackgroundPlaybackModel(0);
  OUTLINED_FUNCTION_8_176();
  sub_1E3F49D40(v0, v1, &unk_1E42DF748);
  OUTLINED_FUNCTION_57();
  return sub_1E42010C4();
}

void sub_1E3F4646C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v8 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v13 = VUISignpostLogObject(v12);
  sub_1E41FFBC4();
  v14 = sub_1E4206BA4();
  v15 = VUISignpostLogObject(v14);
  sub_1E41FFBA4();

  v16 = objc_allocWithZone(type metadata accessor for BackgroundMediaHostViewController());

  v18 = sub_1E3F472F0(v17, v3);
  sub_1E324FBDC();
  v19 = OUTLINED_FUNCTION_53_46();
  v20(v19);
  v21 = v18;
  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_6_21();
    v31 = v8;
    v32 = OUTLINED_FUNCTION_26_8();
    v24 = v32;
    *v15 = 136315138;
    v25 = sub_1E41E1364(v21);
    v30 = v4;
    v27 = sub_1E3270FC8(v25, v26, &v32);

    *(v15 + 1) = v27;
    _os_log_impl(&dword_1E323F000, v22, v23, "BackgroundMediaView::makePlatformViewController %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v8 = v31;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v6 + 8))(v1, v30);
  }

  else
  {

    (*(v6 + 8))(v1, v4);
  }

  v28 = sub_1E4206B94();
  v29 = VUISignpostLogObject(v28);
  sub_1E41FFBA4();

  (*(v10 + 8))(v0, v8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F46764(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(OUTLINED_FUNCTION_11_5());
  v4 = OUTLINED_FUNCTION_38();
  return sub_1E3F472F0(v4, a2);
}

void sub_1E3F467C4()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v18 = VUISignpostLogObject(v17);
  sub_1E41FFBC4();
  v19 = sub_1E4206BA4();
  v20 = VUISignpostLogObject(v19);
  sub_1E41FFBA4();

  v21 = sub_1E324FBDC();
  v35 = v8;
  (*(v8 + 16))(v12, v21, v6);
  v22 = v5;
  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    v32 = v6;
    v25 = OUTLINED_FUNCTION_6_21();
    v33 = v13;
    v26 = OUTLINED_FUNCTION_100();
    v36 = v26;
    *v25 = 136315138;
    v27 = sub_1E41E1364(v22);
    v29 = sub_1E3270FC8(v27, v28, &v36);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1E323F000, v23, v24, "BackgroundMediaView::updatePlatformViewController %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v13 = v33;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v35 + 8))(v12, v32);
  }

  else
  {

    (*(v35 + 8))(v12, v6);
  }

  sub_1E3F46AB4(v3, v34);
  v30 = sub_1E4206B94();
  v31 = VUISignpostLogObject(v30);
  sub_1E41FFBA4();

  (*(v15 + 8))(v0, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F46AB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53[-v12];
  v14 = *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel];
  v15 = MEMORY[0x1E69E7CD0];
  if (v14 != a1)
  {
    *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel] = a1;

    v16 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers;
    swift_beginAccess();
    *&v2[v16] = v15;
  }

  v17 = *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel];
  v61 = v14;
  if (a2)
  {
    if (v17)
    {
      v18 = v17 == a2;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_11;
    }

LABEL_9:
    v60 = 0;
    goto LABEL_12;
  }

  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_11:
  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel] = a2;

  v19 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_mediaImageObservers;
  v60 = 1;
  swift_beginAccess();
  *&v2[v19] = v15;

LABEL_12:
  v20 = sub_1E324FBDC();
  v58 = *(v7 + 16);
  v59 = v20;
  v58(v13);
  v21 = v2;
  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  if (os_log_type_enabled(v22, v23))
  {
    v57 = v5;
    v54 = v61 != a1;
    v24 = swift_slowAlloc();
    v56 = v7;
    v25 = v24;
    v26 = OUTLINED_FUNCTION_100();
    v55 = a1;
    v27 = v26;
    v62 = v26;
    *v25 = 136446722;
    v28 = sub_1E3F471E0();
    v30 = v10;
    v31 = sub_1E3270FC8(v28, v29, &v62);

    *(v25 + 4) = v31;
    v10 = v30;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v54;
    v5 = v57;
    *(v25 + 18) = 1024;
    *(v25 + 20) = v60;
    _os_log_impl(&dword_1E323F000, v22, v23, "    %{public}s updatePlaybackModel: hasPlaybackModelChanged = %{BOOL}d,\n    hasMediaImageChanged = %{BOOL}d", v25, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    a1 = v55;
    OUTLINED_FUNCTION_6_0();
    v7 = v56;
    OUTLINED_FUNCTION_6_0();
  }

  v32 = *(v7 + 8);
  v32(v13, v5);
  if (v21[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView])
  {
    v33 = [v21 vuiView];
    if (v33)
    {
      v34 = v33;
      [v33 bounds];
      v36 = v35;

      sub_1E3F47ADC(v36);
      v37 = [v21 vuiView];
      v38 = v61;
      if (v37)
      {
        v39 = v37;
        [v37 bounds];
        v41 = v40;
        v43 = v42;

        sub_1E3F47C68(v41, v43);
        if (v38 != a1)
        {
          sub_1E3F483D8();
        }

        if (v60)
        {
          sub_1E3F48C3C();
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  (v58)(v10, v59, v5);
  v44 = v21;
  v45 = v10;
  v46 = sub_1E41FFC94();
  v47 = sub_1E4206814();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_6_21();
    v49 = OUTLINED_FUNCTION_100();
    v62 = v49;
    *v48 = 136446210;
    v50 = sub_1E3F471E0();
    v52 = sub_1E3270FC8(v50, v51, &v62);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_1E323F000, v46, v47, "%{public}s updatePlaybackModel: view isn't loaded yet, ignore", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v32(v45, v5);
}

uint64_t sub_1E3F46F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3F49C88(a1, a2, a3);

  return sub_1E3E36CBC(a1, a2, v5);
}

uint64_t sub_1E3F46FBC()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F49C88(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_74();

  return sub_1E3E36CD0(v4, v5, v0, v6);
}

uint64_t sub_1E3F47094()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F49A04(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDDB778](v3);
}

uint64_t sub_1E3F470EC()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3F49A04(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDDB740](v3);
}

void sub_1E3F47144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3F49A04(a1, a2, a3);
  sub_1E42025D4();
  __break(1u);
}

id sub_1E3F4716C()
{
  v1 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController);
  }

  else
  {
    v4 = [objc_allocWithZone(VUIBackgroundMediaController) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_1E3F471E0()
{
  if ([objc_opt_self() runningAnInternalBuild])
  {
    sub_1E42074B4();

    v1 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v1);

    MEMORY[0x1E69109E0](8250, 0xE200000000000000);
  }

  else
  {
    sub_1E42074B4();
  }

  v2 = OUTLINED_FUNCTION_27_0();
  MEMORY[0x1E69109E0](v2);

  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_1E3F472F0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_11_5();
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel;
  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel] = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v8 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers] = v8;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v9 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_mediaImageObservers] = v9;
  *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController] = 0;
  v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView] = 0;
  v15 = qword_1EE291AA0;
  result = sub_1E4207944();
  v11 = &v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_name];
  *v11 = result;
  *(v11 + 1) = v12;
  if (__OFADD__(qword_1EE291AA0, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EE291AA0;
    *&v2[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel] = v3;
    v13 = *&v2[v7];
    *&v4[v7] = a2;

    v14.receiver = v4;
    v14.super_class = ObjectType;
    objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
    OUTLINED_FUNCTION_38();

    return v13;
  }

  return result;
}

void sub_1E3F47468()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers) = v1;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v2 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_mediaImageObservers) = v2;
  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3F47568()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, sel_vui_viewDidLayoutSubviews);
  v2 = sub_1E3F4716C();
  v3 = [v2 vuiView];

  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_49_55();
  if (!v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v4 bounds];
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_48_49(v5, sel_setFrame_);

  if (v1[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView])
  {
    return;
  }

  v1[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_didSetupView] = 1;
  v6 = sub_1E3F4716C();
  v7 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel;
  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 520);

  v9(v10);
  v11 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v11, sel_setShouldPauseAtEnd_);

  v12 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
  OUTLINED_FUNCTION_19_132();
  v14 = *(v13 + 544);

  v15 = v6;
  v14();
  v16 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v16, sel_setShouldShowImageAndStopAfterPausingAtEnd_);

  [*&v1[v12] setVideoSwappingAnimationType_];
  [*&v1[v12] setStopPlayerWhenExitingFullScreen_];
  OUTLINED_FUNCTION_19_132();
  v18 = *(v17 + 496);

  v19 = v15;
  v18();
  v20 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v20, sel_setExitsFullscreenWhenPlaybackEnds_);

  OUTLINED_FUNCTION_19_132();
  v22 = *(v21 + 568);

  v23 = v19;
  v22();
  v24 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v24, sel_setStopPlayerWhenViewDisappears_);

  v25 = *&v1[v7];
  v26 = *(*v25 + 472);

  v28 = v26(v27);

  if (v28 == 2)
  {
    v29 = *&v1[v12];
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 sharedInstance];
    v33 = [v32 autoPlayConfig];

    v25 = [v33 autoPlayVideoSound];
    [v31 setMutePlaybackInBackground_];
  }

  else
  {
    [*&v1[v12] setMutePlaybackInBackground_];
  }

  OUTLINED_FUNCTION_8();
  v35 = *(v34 + 200);
  v37 = v36;
  OUTLINED_FUNCTION_11_5();

  v35(v38);
  v39 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_50_48(v39, sel_setPlaybackEnabled_);

  sub_1E3F490A0();
  v40 = OUTLINED_FUNCTION_49_55();
  if (!v40)
  {
    goto LABEL_13;
  }

  v41 = v40;
  [v40 bounds];
  v43 = v42;

  sub_1E3F47ADC(v43);
  v44 = OUTLINED_FUNCTION_49_55();
  if (!v44)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v45 = v44;
  [v44 bounds];
  v47 = v46;
  v49 = v48;

  sub_1E3F47C68(v47, v49);
  sub_1E3F483D8();
  sub_1E3F48C3C();
}

void sub_1E3F47ADC(double a1)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a1);
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 312);

  v6 = v4(v5);

  if (v6)
  {
    (*(*v6 + 392))(v7);
    OUTLINED_FUNCTION_31_4();

    v8 = [v1 vuiTraitCollection];
    sub_1E3C2AE10();
    v11 = v9;
    OUTLINED_FUNCTION_36();
    (*(v10 + 1640))();
  }
}

void sub_1E3F47C68(double a1, double a2)
{
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v83 = v7;
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - v10;
  type metadata accessor for LayoutGrid();
  v12 = sub_1E3A2579C(a1);
  sub_1E3D417B8(v12, v104);
  v86 = v104[0];
  v14 = *&v104[1];
  v13 = *&v104[2];
  v15 = v105;
  v102 = v106;
  v103 = v107;
  v16 = v108;
  v99 = v109;
  v100 = v110;
  v101 = v111;
  v17 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel;
  v18 = *(*&v3[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel] + 16);

  v85 = v18;
  v20 = sub_1E38E5664(39, v18, v19);
  v81 = v11;
  v87 = v15;
  if (v20)
  {
    LOBYTE(v18) = v3;
    sub_1E3DF9E68(v112);
    v102 = *&v112[17];
    v103 = v113;
    v99 = v114;
    v100 = v115;
    v101 = v116;
    LOBYTE(v88[0]) = 0;
    OUTLINED_FUNCTION_8();
    v22 = *(v21 + 424);

    LOBYTE(v22) = v22(v23);

    v24 = LOBYTE(v88[0]);
    *v117 = v14;
    *&v117[1] = v13;
    v118 = v87;
    v119 = v106;
    v120 = v107;
    v121 = v16;
    v122 = v109;
    v123 = v110;
    v124 = v111;
    sub_1E3DC050C(v117);
    v87 = v24;
    v16 = v22 & 1;
  }

  else
  {
    a1 = v14;
    a2 = v13;
  }

  v25 = *(**(v17 + v3) + 264);

  v27 = v25(v26);

  if (v27)
  {
    OUTLINED_FUNCTION_5_203(v28, v29, v30, v31);
    v32 = sub_1E3D431AC();
    v33 = sub_1E3D431B4(v27, v85, 0, v117, v32);
  }

  else
  {
    v34 = *(v17 + v3);
    v25 = *(*v34 + 312);
    v17 = (*v34 + 312);

    v36 = v25(v35);

    if (v36)
    {
      OUTLINED_FUNCTION_5_203(v37, v38, v39, v40);
      v41 = sub_1E3D41B90();
      sub_1E3D41C40(v36, v85, v41, v117);
      v33 = v42;
    }

    else
    {

      v33 = 0;
      v25 = v86;
      v17 = v104;
      LOBYTE(v18) = v87;
    }
  }

  v88[0] = v25;
  *&v88[1] = a1;
  *&v88[2] = a2;
  v89 = v18;
  v90 = v102;
  v91 = v103;
  v92 = v16;
  v93 = v99;
  v94 = v100;
  v95 = v101;
  v43 = *(v17 + 90);
  v44 = *(v17 + 106);
  v98 = *(v17 + 122);
  v97 = v44;
  v96 = v43;
  sub_1E39F8998(v88);
  if (v33)
  {
    v45 = *(**&v3[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel] + 400);

    v47 = COERCE_DOUBLE(v45(v46));
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      [v33 setPlaybackDelayInterval_];
    }

    [v33 setShowsSecondaryVideoView_];
    [v33 setAllowsPictureInPicture_];
    [v33 setAutomaticPlaybackStart_];
    v50 = sub_1E3F4716C();
    v51 = [v50 currentMediaInfo];

    if (v51 && (sub_1E3D8F47C(), v52 = v33, v53 = sub_1E4206F64(), v51, v52, (v53 & 1) != 0))
    {
      v54 = sub_1E324FBDC();
      v56 = v83;
      v55 = v84;
      v57 = v81;
      (*(v83 + 16))(v81, v54, v84);
      v58 = v3;
      v59 = sub_1E41FFC94();
      v60 = sub_1E4206814();

      if (os_log_type_enabled(v59, v60))
      {
        OUTLINED_FUNCTION_6_21();
        v61 = OUTLINED_FUNCTION_26_8();
        v117[0] = v61;
        *v33 = 136446210;
        v62 = sub_1E3F471E0();
        v64 = sub_1E3270FC8(v62, v63, v117);

        *(v33 + 1) = v64;
        _os_log_impl(&dword_1E323F000, v59, v60, "%{public}s configureMediaInfos: Media info is the same, ignore", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();

        (*(v56 + 8))(v81, v55);
      }

      else
      {

        (*(v56 + 8))(v57, v55);
      }
    }

    else
    {
      v65 = *&v3[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1E4298880;
      *(v66 + 32) = v33;
      v67 = sub_1E3D8F47C();
      v68 = v33;
      v69 = v65;
      OUTLINED_FUNCTION_57();
      sub_1E42062A4();
      OUTLINED_FUNCTION_11_5();

      [v69 setMediaInfos:v67 selectedIndex:0 animated:1];
    }
  }

  else
  {
    v70 = sub_1E324FBDC();
    v72 = v82;
    v71 = v83;
    v73 = v84;
    (*(v83 + 16))(v82, v70, v84);
    v74 = v3;
    v75 = sub_1E41FFC94();
    v76 = sub_1E42067F4();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_6_21();
      v117[0] = OUTLINED_FUNCTION_100();
      *v77 = 136446210;
      v78 = sub_1E3F471E0();
      v80 = sub_1E3270FC8(v78, v79, v117);

      *(v77 + 4) = v80;
      _os_log_impl(&dword_1E323F000, v75, v76, "%{public}s Media info is nil", v77, 0xCu);
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v71 + 8))(v72, v73);
  }
}

void sub_1E3F483D8()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D160, &qword_1E42DF9B0);
  OUTLINED_FUNCTION_0_10();
  v63 = v2;
  v64 = v1;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v59 - v4;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v68 = v6;
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v17, v10);
  v18 = v0;
  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_21();
    v67 = v10;
    v22 = v21;
    v23 = OUTLINED_FUNCTION_100();
    v70 = v23;
    *v22 = 136446210;
    v24 = sub_1E3F471E0();
    v26 = sub_1E3270FC8(v24, v25, &v70);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1E323F000, v19, v20, "%{public}s addPlaybackObservers", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v12 + 8))(v16, v67);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
  }

  v27 = objc_opt_self();
  v67 = v27;
  v28 = [v27 defaultCenter];
  v29 = sub_1E3F4716C();
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v30);
  OUTLINED_FUNCTION_9_164();
  v65 = sub_1E3F49D40(v31, v32, MEMORY[0x1E6969F18]);
  OUTLINED_FUNCTION_40_1();
  v33 = v69;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  v60 = *(v68 + 8);
  v68 += 8;
  v60(v9, v33);
  v34 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers;
  OUTLINED_FUNCTION_44_7(&v18[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_playbackObservers]);
  sub_1E42004C4();
  swift_endAccess();

  v35 = [v27 &selRef_connectWithCompletionHandler_progressHandler_ + 5];
  v66 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
  v36 = *&v18[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController];
  OUTLINED_FUNCTION_26_102();

  OUTLINED_FUNCTION_4_0();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v37);
  OUTLINED_FUNCTION_40_1();
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  v38 = v60;
  v60(v9, v33);
  OUTLINED_FUNCTION_44_7(&v18[v34]);
  sub_1E42004C4();
  swift_endAccess();

  v39 = [v67 defaultCenter];
  v40 = *&v18[v66];
  OUTLINED_FUNCTION_26_102();

  OUTLINED_FUNCTION_4_0();
  v41 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v41);
  OUTLINED_FUNCTION_40_1();
  v42 = v69;
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  v38(v9, v42);
  v61 = v34;
  OUTLINED_FUNCTION_44_7(&v18[v34]);
  sub_1E42004C4();
  swift_endAccess();

  v43 = [v67 defaultCenter];
  v44 = *&v18[v66];
  OUTLINED_FUNCTION_26_102();

  v45 = v62;
  v46 = v69;
  sub_1E4200744();
  v38(v9, v46);
  swift_getKeyPath();
  v70 = *&v18[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundPlaybackModel];
  OUTLINED_FUNCTION_13_160(&qword_1ECF3D168, &qword_1ECF3D160, &qword_1E42DF9B0);
  OUTLINED_FUNCTION_31_4();

  v47 = v64;
  sub_1E4200854();
  OUTLINED_FUNCTION_31_4();

  (*(v63 + 8))(v45, v47);
  v48 = v61;
  OUTLINED_FUNCTION_44_7(&v18[v61]);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_8();
  v50 = *(v49 + 224);

  v50(v51);
  OUTLINED_FUNCTION_11_5();

  v52 = MEMORY[0x1E69E6370];
  v53 = sub_1E3B501F8(v50, MEMORY[0x1E69E6370]);

  v70 = v53;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B0, &unk_1E42DF9E0);
  sub_1E32752B0(&qword_1EE28A1D0, &qword_1ECF2E1B0, &unk_1E42DF9E0, MEMORY[0x1E695BED8]);
  sub_1E4200844();

  OUTLINED_FUNCTION_44_7(&v18[v48]);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_36();
  v55 = *(v54 + 256);

  v57 = v55(v56);

  v58 = sub_1E3B501F8(v57, v52);

  v70 = v58;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E4200844();
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_44_7(&v18[v48]);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F48C3C()
{
  OUTLINED_FUNCTION_31_1();
  v46 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v44 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v43 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D150, &qword_1E42DF978);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v40 - v9;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v17, v10);
  v18 = v0;
  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_21();
    v42 = v10;
    v22 = v21;
    v41 = OUTLINED_FUNCTION_100();
    v47 = v41;
    *v22 = 136446210;
    v23 = sub_1E3F471E0();
    v25 = v7;
    v26 = v5;
    v27 = sub_1E3270FC8(v23, v24, &v47);

    *(v22 + 4) = v27;
    v5 = v26;
    v7 = v25;
    _os_log_impl(&dword_1E323F000, v19, v20, "%{public}s addMediaImageObservers", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v12 + 8))(v16, v42);
  }

  else
  {

    (*(v12 + 8))(v16, v10);
  }

  v28 = sub_1E3F4716C();
  v29 = *&v18[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_backgroundMediaImageModel];
  if (v29)
  {
    v30 = v18;
    v31 = objc_opt_self();

    v32 = [v31 defaultCenter];
    v33 = v28;
    v34 = v43;
    sub_1E4206C14();

    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E160, &qword_1E42DF980);
    OUTLINED_FUNCTION_9_164();
    sub_1E3F49D40(v36, v37, MEMORY[0x1E6969F18]);
    v39 = v45;
    v38 = v46;
    sub_1E4200744();

    (*(v44 + 8))(v34, v38);
    swift_getKeyPath();
    v47 = v29;
    OUTLINED_FUNCTION_13_160(&qword_1ECF3D158, &qword_1ECF3D150, &qword_1E42DF978);
    sub_1E4200854();

    (*(v7 + 8))(v39, v5);
    OUTLINED_FUNCTION_44_7(&v30[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController_mediaImageObservers]);
    sub_1E42004C4();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3F490A0()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_4_114();
  v3(v2);
  v4 = v0;
  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v8 = OUTLINED_FUNCTION_100();
    v21 = v8;
    *v7 = 136446210;
    v9 = sub_1E3F471E0();
    v11 = sub_1E3270FC8(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E323F000, v5, v6, "%{public}s hostMediaController", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_6_0();
  }

  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  v14 = sub_1E3F4716C();
  [v4 vui:v14 addChildViewController:?];

  v15 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
  result = [*&v4[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController] vuiView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = result;
  result = OUTLINED_FUNCTION_49_55();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result bounds];
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_48_49(v18, sel_setFrame_);

  result = OUTLINED_FUNCTION_49_55();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = result;
  result = [*&v4[v15] vuiView];
  if (result)
  {
    v20 = result;
    [v19 addSubview_];

    return [*&v4[v15] vui:v4 didMoveToParentViewController:?];
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1E3F49324()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v8 = OUTLINED_FUNCTION_4_114();
  v9(v8);
  v10 = v0;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_26_8();
    *v2 = 136446466;
    v13 = sub_1E3F471E0();
    sub_1E3270FC8(v13, v14, &v22);
    OUTLINED_FUNCTION_61_27();
    OUTLINED_FUNCTION_37_69();
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v15, v16, "%{public}s update isPlayingVideo = %{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v6 + 8))(v1);
  }

  else
  {

    v17 = OUTLINED_FUNCTION_74();
    v19(v17, v18);
  }

  OUTLINED_FUNCTION_8();
  v21 = *(v20 + 368);

  v21(v4 & 1);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F494D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

void sub_1E3F49570()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E324FBDC();
  v9 = OUTLINED_FUNCTION_53_46();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    swift_slowAlloc();
    v30 = OUTLINED_FUNCTION_26_8();
    *v2 = 136446466;
    v14 = sub_1E3F471E0();
    v29 = v5;
    v16 = v11;
    v17 = v4;
    v18 = sub_1E3270FC8(v14, v15, &v30);

    *(v2 + 4) = v18;
    v4 = v17;
    v11 = v16;
    *(v2 + 12) = 1024;
    *(v2 + 14) = v4 & 1;
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v19, v20, "%{public}s update isPlaybackEnabled = %{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v7 + 8))(v1, v29);
  }

  else
  {

    (*(v7 + 8))(v1, v5);
  }

  v21 = sub_1E3F4716C();
  [v21 setPlaybackEnabled:v4 & 1 imageVideoSwapBehavior:1];

  if (TVAppFeature.isEnabled.getter(17, v22, v23))
  {
    v24 = OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController;
    if ([*&v11[OBJC_IVAR____TtC8VideosUI33BackgroundMediaHostViewController____lazy_storage___mediaController] isPlaybackEnabled])
    {
      if (([*&v11[v24] hasBackgroundVideo] & 1) == 0)
      {

        v25 = OUTLINED_FUNCTION_27_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
        OUTLINED_FUNCTION_0_218();
        sub_1E32752B0(v27, &unk_1ECF326C0, &qword_1E429D160, v28);
        sub_1E4200624();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F497D0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  v8 = OUTLINED_FUNCTION_4_114();
  v9(v8);
  v10 = v0;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_26_8();
    *v2 = 136446466;
    v13 = sub_1E3F471E0();
    sub_1E3270FC8(v13, v14, &v22);
    OUTLINED_FUNCTION_61_27();
    OUTLINED_FUNCTION_37_69();
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v15, v16, "%{public}s updateFullScreen: isFullScreenEnabled = %{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v6 + 8))(v1);
  }

  else
  {

    v17 = OUTLINED_FUNCTION_74();
    v19(v17, v18);
  }

  v20 = sub_1E3F4716C();
  v21 = v20;
  if (v4)
  {
    [v20 transitionToFullScreenAnimated_];
  }

  else
  {
    [v20 transitionToForeground:0 animated:1];
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F49980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3F461EC();
  *a1 = result;
  return result;
}

double sub_1E3F499AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1E3F46238(v1);
}

unint64_t sub_1E3F499DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3F49A04(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3F49A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D138;
  if (!qword_1ECF3D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D138);
  }

  return result;
}

unint64_t sub_1E3F49A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D140;
  if (!qword_1ECF3D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D140);
  }

  return result;
}

void sub_1E3F49AB8(uint64_t a1)
{
  sub_1E381A32C(319, &qword_1EE289FC8, &unk_1ECF2EB10, &qword_1E42B9000);
  if (v1 <= 0x3F)
  {
    sub_1E381A32C(319, &qword_1EE289FD0, &qword_1ECF2BB28, &qword_1E42A2A60);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1E3F49C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D148;
  if (!qword_1ECF3D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D148);
  }

  return result;
}

void sub_1E3F49CDC(void *a1@<X8>)
{
  v3 = [*(v1 + 16) proxyImageView];
  v4 = [v3 image];

  *a1 = v4;
}

uint64_t sub_1E3F49D40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E3F49D98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E3F49324();
  }
}

double sub_1E3F49DE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v6 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_0_218();
    sub_1E32752B0(v8, &unk_1ECF326C0, &qword_1E429D160, v9);
    sub_1E4200624();
  }

  return result;
}

void sub_1E3F49ED8(unsigned __int8 *a1, void (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a2(v4);
  }
}

id OUTLINED_FUNCTION_48_49(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_56_35(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

uint64_t sub_1E3F49F8C(char a1)
{
  result = 0x64696C61766E69;
  switch(a1)
  {
    case 1:
      result = 6648432;
      break;
    case 2:
      result = 1852399981;
      break;
    case 3:
      result = 1953722224;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3F49FF8()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3F4A050(unsigned __int8 a1, char a2)
{
  v2 = 0x64696C61766E69;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x64696C61766E69;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6648432;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1852399981;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1953722224;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6648432;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1852399981;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1953722224;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3F4A174(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3F4A1C4(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3F4A1C4(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3F4A26C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3F4A1C4(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3F4A2B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3F49FF8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3F4A2E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3F49F8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3F4A334()
{
  OUTLINED_FUNCTION_173();
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v0 = OUTLINED_FUNCTION_32_0();

  return v1(v0);
}

uint64_t sub_1E3F4A3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3F4A410()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_173();
  v4 = type metadata accessor for AlertContext(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E3F4EC3C(v2, &selRef_title);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v13 = [objc_opt_self() sharedInstance];
    if (!v13 || (v14 = v13, v11 = sub_1E3741090(0xD000000000000013, 0x80000001E4289AC0, v13), v12 = v15, v14, !v12))
    {

      v11 = 0;
      v12 = 0xE000000000000000;
    }
  }

  v16 = sub_1E3F4EC3C(v2, &selRef_message);
  v18 = v17;
  v19 = [v2 actions];
  sub_1E3280A90(0, &qword_1ECF372A0, 0x1E69DC648);
  v20 = sub_1E42062B4();

  sub_1E41FE614();
  v21 = (v8 + v4[5]);
  *v21 = v11;
  v21[1] = v12;
  v22 = (v8 + v4[6]);
  *v22 = v16;
  v22[1] = v18;
  *(v8 + v4[7]) = MEMORY[0x1E69E7CC0];
  *(v8 + v4[8]) = v20;
  v23 = *(type metadata accessor for DestinationContext(0) + 32);
  sub_1E3F4A3AC(v8, v0 + v23);
  OUTLINED_FUNCTION_26_103(v0 + v23);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  *(v0 + 48) = 1;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F4A5D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 48, a2);
  v3 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v3, v4);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F4A610(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 48, a2);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_1E37FAED8(v5, v6);
}

uint64_t sub_1E3F4A658(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 64, a2);
  v3 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v3, v4);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F4A694(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 64, a2);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_1E37FAED8(v5, v6);
}

uint64_t sub_1E3F4A6DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 80, a2);
  v3 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v3, v4);
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3F4A718(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 80, a2);
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return sub_1E37FAED8(v5, v6);
}

uint64_t sub_1E3F4A828@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3F4A9D0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4A814();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4AA10;
}

uint64_t sub_1E3F4AA4C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void sub_1E3F4AB4C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3 & 1;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 488);
  if ((v10() & 1) != v4)
  {
    sub_1E3F4E34C();
  }

  v11 = sub_1E324FBDC();
  (*(v7 + 16))(v1, v11, v5);
  swift_retain_n();
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  if (os_log_type_enabled(v12, v13))
  {
    v24 = v5;
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_1E3270FC8(*(v0 + 16), *(v0 + 24), &v25);
    *(v14 + 12) = 2080;
    v15 = sub_1E41E1364(v0);
    v17 = sub_1E3270FC8(v15, v16, &v25);

    *(v14 + 14) = v17;
    *(v14 + 22) = 1024;
    v19 = (v10)(v18);

    *(v14 + 24) = v19 & 1;

    _os_log_impl(&dword_1E323F000, v12, v13, "Router::Route changed. %s-%s did change navigation flag to %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v20 = (*(v7 + 8))(v1, v24);
  }

  else
  {

    v20 = (*(v7 + 8))(v1, v5);
  }

  if ((*(*v2 + 296))(v20))
  {
    OUTLINED_FUNCTION_60_0();
    v21();
    v22 = OUTLINED_FUNCTION_32_0();
    sub_1E37FAED8(v22, v23);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t (*sub_1E3F4AEB0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4AE00();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4AEF0;
}

uint64_t sub_1E3F4AF2C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void sub_1E3F4B02C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E3F4B108@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3F4B2B0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4B0F4();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4B2F0;
}

uint64_t sub_1E3F4B32C()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3F4B440@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3F4B5E8(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4B42C();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4B628;
}

uint64_t sub_1E3F4B664()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

uint64_t sub_1E3F4B778@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1E3F4B920(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3F4B764();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E3F4B960;
}

uint64_t sub_1E3F4B99C(uint64_t a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  (*(v8 + 16))(v3, a1, v6);
  OUTLINED_FUNCTION_11_3(v2 + *a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t sub_1E3F4BAB4()
{
  v1 = OUTLINED_FUNCTION_28_20();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_30_4(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_7_12(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_16(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_25_11(v8);
  OUTLINED_FUNCTION_12_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_23_23();
  swift_endAccess();
  return OUTLINED_FUNCTION_27_15();
}

void *sub_1E3F4BC1C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI5Route_eventDataSource;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI5Route_eventDataSource, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void sub_1E3F4BC5C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI5Route_eventDataSource;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI5Route_eventDataSource, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1E3F4BCF8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI5Route_nextEventType;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI5Route_nextEventType, a2);
  return *(v2 + v3);
}

uint64_t sub_1E3F4BD30(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI5Route_nextEventType;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI5Route_nextEventType, a2);
  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1E3F4BDC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI5Route_destinationContext, a1);
  return sub_1E379D7E4(v2 + v4, a2, &unk_1ECF3F9E0, &unk_1E42DFB60);
}

uint64_t sub_1E3F4BE20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI5Route_destinationContext, v5);
  sub_1E3F4EC94(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1E3F4BF48()
{
  OUTLINED_FUNCTION_201_0();
  sub_1E42074B4();
  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  MEMORY[0x1E69109E0](8992, 0xE200000000000000);
  MEMORY[0x1E69109E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E69109E0](0x6576457478656E20, 0xEF3A65707954746ELL);
  OUTLINED_FUNCTION_9_2();
  v3 = (*(v2 + 776))();
  sub_1E3F4C260(v3);
  OUTLINED_FUNCTION_9_2();
  v5 = (*(v4 + 488))();
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (v6)
  {
    v8 = "TV.Error.Unexpected";
  }

  else
  {
    v8 = " isPresentingSheet";
  }

  MEMORY[0x1E69109E0](v7, v8 | 0x8000000000000000);

  sub_1E3F4C5B0();
  OUTLINED_FUNCTION_37_70();
  OUTLINED_FUNCTION_60_34();

  OUTLINED_FUNCTION_9_2();
  (*(v9 + 536))();
  OUTLINED_FUNCTION_37_70();
  OUTLINED_FUNCTION_60_34();

  OUTLINED_FUNCTION_9_2();
  (*(v10 + 440))();
  OUTLINED_FUNCTION_60_34();

  OUTLINED_FUNCTION_9_2();
  (*(v11 + 584))();
  OUTLINED_FUNCTION_60_34();

  OUTLINED_FUNCTION_9_2();
  (*(v12 + 632))();
  OUTLINED_FUNCTION_37_70();
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0xD000000000000011;
  }

  if (v13)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = v14;
  }

  MEMORY[0x1E69109E0](v15, v16);

  OUTLINED_FUNCTION_200();
}

uint64_t sub_1E3F4C260(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x64696C61766E69;
  switch(a1)
  {
    case 1:
      v2 = 0xE300000000000000;
      v3 = 6648432;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1852399981;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1953722224;
      break;
    default:
      break;
  }

  MEMORY[0x1E69109E0](v3, v2);
}

BOOL sub_1E3F4C300()
{
  v2 = type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170, &qword_1E42DF9F0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  OUTLINED_FUNCTION_36();
  if ((*(v10 + 536))() & 1) != 0 || (OUTLINED_FUNCTION_8(), ((*(v11 + 440))()))
  {
    v12 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v12 = (*(v13 + 584))();
  }

  OUTLINED_FUNCTION_8();
  if ((*(v14 + 632))())
  {
    return 1;
  }

  OUTLINED_FUNCTION_8();
  (*(v15 + 800))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_1E325F6F0(v1, &unk_1ECF3F9E0, &unk_1E42DFB60);
    OUTLINED_FUNCTION_25_89();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  else
  {
    sub_1E3F4ED04(v1, v0);
    sub_1E325F6F0(v1, &unk_1ECF3F9E0, &unk_1E42DFB60);
    sub_1E379D7E4(v0 + *(v2 + 32), v9, &qword_1ECF3D170, &qword_1E42DF9F0);
    sub_1E3F4ED68(v0);
    OUTLINED_FUNCTION_63_31();
    if (!v20)
    {
      sub_1E325F6F0(v9, &qword_1ECF3D170, &qword_1E42DF9F0);
      return 1;
    }
  }

  sub_1E325F6F0(v9, &qword_1ECF3D170, &qword_1E42DF9F0);
  return (v12 & 1) == 0;
}

uint64_t sub_1E3F4C5B0()
{
  v2 = type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D170, &qword_1E42DF9F0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  OUTLINED_FUNCTION_36();
  if ((*(v10 + 536))())
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v11 + 440))())
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v12 + 584))())
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_8();
  (*(v15 + 800))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_1E325F6F0(v1, &unk_1ECF3F9E0, &unk_1E42DFB60);
    OUTLINED_FUNCTION_25_89();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
LABEL_10:
    sub_1E325F6F0(v9, &qword_1ECF3D170, &qword_1E42DF9F0);
    OUTLINED_FUNCTION_36();
    v13 = (*(v21 + 632))();
    return v13 & 1;
  }

  sub_1E3F4ED04(v1, v0);
  sub_1E325F6F0(v1, &unk_1ECF3F9E0, &unk_1E42DFB60);
  sub_1E379D7E4(v0 + *(v2 + 32), v9, &qword_1ECF3D170, &qword_1E42DF9F0);
  sub_1E3F4ED68(v0);
  OUTLINED_FUNCTION_63_31();
  if (v20)
  {
    goto LABEL_10;
  }

  sub_1E325F6F0(v9, &qword_1ECF3D170, &qword_1E42DF9F0);
LABEL_4:
  v13 = 1;
  return v13 & 1;
}

uint64_t sub_1E3F4C85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_allocObject();
  sub_1E3F4C8B4();
  return v3;
}

void sub_1E3F4C8B4()
{
  OUTLINED_FUNCTION_31_1();
  v21 = v1;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_12();
  *(v0 + 104) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 112) = 1;
  v26 = 0;
  OUTLINED_FUNCTION_54_45(&v26);
  v9 = *(v7 + 32);
  v10 = OUTLINED_FUNCTION_18_123();
  v9(v10);
  v25 = 0;
  OUTLINED_FUNCTION_54_45(&v25);
  v11 = OUTLINED_FUNCTION_18_123();
  v9(v11);
  v24 = 0;
  OUTLINED_FUNCTION_54_45(&v24);
  v12 = OUTLINED_FUNCTION_18_123();
  v9(v12);
  v23 = 0;
  OUTLINED_FUNCTION_54_45(&v23);
  v13 = OUTLINED_FUNCTION_18_123();
  v9(v13);
  v22 = 0;
  OUTLINED_FUNCTION_54_45(&v22);
  v14 = OUTLINED_FUNCTION_18_123();
  v9(v14);
  v15 = (v0 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v0 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler);
  *v16 = 0;
  v16[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_eventViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_eventDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_nextEventType) = 0;
  type metadata accessor for DestinationContext(0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_nextRoute) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_presentedRoute) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_isHandlingRoutingEvent) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable) = 0;
  *(v0 + 16) = v5;
  *(v0 + 24) = v3;
  *(v0 + 32) = v21;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F4CAF4(double a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC0, &qword_1E42DFB70);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D178, &qword_1E42DFB78);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  if (a1 <= 0.0)
  {
    v33 = OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable;
    if (*(v1 + OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable))
    {

      sub_1E42004E4();
    }

    *(v1 + v33) = 0;

    *(v1 + OBJC_IVAR____TtC8VideosUI5Route_isHandlingRoutingEvent) = 0;
  }

  else
  {
    v36 = v16;
    v37 = v17;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
    swift_allocObject();
    v38 = sub_1E4200544();
    v41 = v38;
    sub_1E4207064();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v11);
    v23 = [objc_opt_self() mainRunLoop];
    v40 = v23;
    sub_1E4207054();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    sub_1E3280A90(0, &qword_1EE23AD08, 0x1E695DFD0);
    sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF88]);
    v35 = v1;
    sub_1E3782CC4();
    sub_1E4200784();
    sub_1E325F6F0(v8, &unk_1ECF3DB30, &unk_1E42A89B0);

    sub_1E325F6F0(v2, &qword_1ECF2CEC0, &qword_1E42DFB70);
    (*(v13 + 8))(v3, v11);
    v28 = swift_allocObject();
    v29 = v35;
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1E3F4EDC4;
    *(v30 + 24) = v28;
    sub_1E32752B0(&qword_1ECF3D180, &qword_1ECF3D178, &qword_1E42DFB78, MEMORY[0x1E695BDB0]);
    v31 = v36;
    v32 = sub_1E4200844();

    (*(v37 + 8))(v19, v31);
    *(v29 + OBJC_IVAR____TtC8VideosUI5Route_handlingEventCancellable) = v32;

    sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0, &qword_1E429D160, MEMORY[0x1E695BF80]);
    sub_1E4200624();
  }
}

uint64_t sub_1E3F4CF7C(void *a1, char a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_11_3(v2 + 40, v22);
  sub_1E4200C44();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v8 = OUTLINED_FUNCTION_31_76();
  v9(v8);
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 448))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v12 + 640))(0);
  OUTLINED_FUNCTION_44_57();
  OUTLINED_FUNCTION_25_89();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v3 = a1;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  OUTLINED_FUNCTION_26_103(v3);
  v17 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3(v4 + OBJC_IVAR____TtC8VideosUI5Route_destinationContext, v22);
  v18 = a1;
  sub_1E3F4EC94(v3, v4 + v17);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v19 = OUTLINED_FUNCTION_73_6();
  return v20(v19);
}

uint64_t sub_1E3F4D1A8(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_8();
  result = (*(v7 + 488))();
  if (result)
  {
    OUTLINED_FUNCTION_11_3(v3 + 40, v20);
    sub_1E4200C44();
    sub_1E4200C34();
    swift_endAccess();
    v9 = (v3 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
    v10 = *(v3 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
    v11 = *(v3 + OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler + 8);
    *v9 = 0;
    v9[1] = 0;
    sub_1E37FAED8(v10, v11);
    OUTLINED_FUNCTION_3_11();
    (*(v12 + 544))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v13 + 448))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v14 + 592))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v15 + 640))(0);
    OUTLINED_FUNCTION_3_11();
    (*(v16 + 496))(0);
    v17 = (v3 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler);
    v18 = *(v3 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler);
    v19 = *(v4 + OBJC_IVAR____TtC8VideosUI5Route_didPopDestinationRouteCompletionHandler + 8);
    *v17 = a2;
    v17[1] = a3;
    sub_1E37FAED4(a2, a3);
    return sub_1E37FAED8(v18, v19);
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1E3F4D3BC()
{
  OUTLINED_FUNCTION_46_56();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_11_3(v0 + 40, v22);
  sub_1E4200C44();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v7 = OUTLINED_FUNCTION_31_76();
  v8(v7);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 496))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 640))(0);
  OUTLINED_FUNCTION_44_57();
  OUTLINED_FUNCTION_25_89();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 49) = v4;
  OUTLINED_FUNCTION_26_103(v3);
  v16 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI5Route_destinationContext, v22);
  v17 = v2;
  v18 = v1;
  sub_1E3F4EC94(v3, v0 + v16);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v19 = OUTLINED_FUNCTION_73_6();
  return v20(v19);
}

uint64_t sub_1E3F4D5E4()
{
  OUTLINED_FUNCTION_46_56();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_11_3(v0 + 40, v22);
  sub_1E4200C44();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v7 = OUTLINED_FUNCTION_31_76();
  v8(v7);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 448))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 496))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 640))(0);
  OUTLINED_FUNCTION_44_57();
  OUTLINED_FUNCTION_25_89();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v3 + 49) = v4;
  OUTLINED_FUNCTION_26_103(v3);
  v16 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI5Route_destinationContext, v22);
  v17 = v2;
  v18 = v1;
  sub_1E3F4EC94(v3, v0 + v16);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v19 = OUTLINED_FUNCTION_73_6();
  return v20(v19);
}

void sub_1E3F4D80C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for AlertContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F9E0, &unk_1E42DFB60);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_11_3(v0 + 40, v31);
  OUTLINED_FUNCTION_50_49();
  OUTLINED_FUNCTION_49_56();
  swift_endAccess();
  OUTLINED_FUNCTION_0_295(OBJC_IVAR____TtC8VideosUI5Route_dismissPresentedRouteCompletionHandler);
  v20 = OUTLINED_FUNCTION_31_76();
  v21(v20);
  OUTLINED_FUNCTION_9_2();
  (*(v22 + 448))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v23 + 592))(0);
  OUTLINED_FUNCTION_9_2();
  (*(v24 + 496))(0);

  sub_1E41FE614();
  v25 = (v17 + v13[5]);
  *v25 = v12;
  v25[1] = v10;
  v26 = (v17 + v13[6]);
  *v26 = v8;
  v26[1] = v6;
  *(v17 + v13[7]) = v4;
  *(v17 + v13[8]) = 0;
  v27 = *(OUTLINED_FUNCTION_44_57() + 32);
  sub_1E3F4A3AC(v17, v1 + v27);
  __swift_storeEnumTagSinglePayload(v1 + v27, 0, 1, v13);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *v1 = 0u;
  *(v1 + 48) = 1;
  OUTLINED_FUNCTION_26_103(v1);
  v28 = OBJC_IVAR____TtC8VideosUI5Route_destinationContext;
  OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtC8VideosUI5Route_destinationContext, v31);
  sub_1E3F4EC94(v1, v2 + v28);
  swift_endAccess();
  OUTLINED_FUNCTION_9_2();
  v29 = OUTLINED_FUNCTION_73_6();
  v30(v29);
  OUTLINED_FUNCTION_25_2();
}