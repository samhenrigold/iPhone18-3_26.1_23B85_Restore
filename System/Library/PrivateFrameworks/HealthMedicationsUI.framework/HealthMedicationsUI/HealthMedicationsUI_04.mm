uint64_t sub_2281D5D94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_228199528(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2281D5EA4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_228198C84(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_22818217C(0, &qword_27D8238E8, MEMORY[0x277D10F28], 0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2281D600C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t InteractionMedicationItem.firstItemName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t InteractionMedicationItem.secondItemName.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t InteractionMedicationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t sub_2281D6248()
{
  v1 = v0;
  v2 = v0[2];
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_9:

    v5 = MEMORY[0x22AAB6D80](0, v3);

    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = [v5 uniqueIdentifier];

    v7 = sub_228392000();
    v8 = v1[8];
    v9 = v1[9];

    MEMORY[0x22AAB5C80](v8, v9);

    v11 = v1[20];
    v10 = v1[21];

    MEMORY[0x22AAB5C80](v11, v10);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t InteractionMedicationItem.__allocating_init(interactionResults:stackedMemojiDisplayable:firstItemName:firstItemDetailsProviding:secondItemName:secondItemDetailsProviding:healthStore:analyticsManager:roomType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 a9, uint64_t a11)
{
  v18 = a2[3];
  v17 = a2[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a2, v18);
  v20 = sub_2281DAC00(a1, v19, a3, a4, a5, a6, a7, a8, a9, a11, v10, v18, v17);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v20;
}

uint64_t InteractionMedicationItem.init(interactionResults:stackedMemojiDisplayable:firstItemName:firstItemDetailsProviding:secondItemName:secondItemDetailsProviding:healthStore:analyticsManager:roomType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 a9, uint64_t a10)
{
  v26 = a7;
  v27 = a8;
  v25 = a6;
  v24 = a9;
  v17 = a2[3];
  v16 = a2[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_2281DA5EC(a1, v20, a3, a4, a5, v25, v26, v27, v24, a10, v10, v17, v16);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v22;
}

uint64_t sub_2281D65A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_beginAccess();

  sub_2281D5890(v3, sub_2281D97FC);
  sub_2281D76AC((v2 + 16));
  return swift_endAccess();
}

void *InteractionMedicationItem.deinit()
{
  v1 = v0;
  v2 = *(v0 + 216);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_228393080();
    sub_228391820();
    sub_2281DAD60(&qword_27D824180, 255, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_2283924C0();
    v5 = v19;
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_228176F04(v5);

      __swift_destroy_boxed_opaque_existential_0((v1 + 24));

      __swift_destroy_boxed_opaque_existential_0((v1 + 80));
      __swift_destroy_boxed_opaque_existential_0((v1 + 120));

      return v1;
    }

    while (1)
    {
      sub_228391810();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_228393100())
      {
        sub_228391820();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t InteractionMedicationItem.__deallocating_deinit()
{
  InteractionMedicationItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2281D68D0(uint64_t a1)
{
  sub_2283920B0();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);

  sub_2281DA444(a1, v4);

  sub_2283920B0();
  return sub_2283920B0();
}

uint64_t sub_2281D6958()
{
  sub_228393520();
  sub_2283920B0();
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);

  sub_2281DA444(v4, v2);

  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281D69EC()
{
  v1 = *(*v0 + 176);

  return v1;
}

uint64_t sub_2281D6A78(uint64_t a1)
{
  v3 = *v1;
  sub_2283920B0();
  v4 = *(v3 + 16);
  swift_beginAccess();
  v5 = *(v4 + 16);

  sub_2281DA444(a1, v5);

  sub_2283920B0();
  return sub_2283920B0();
}

uint64_t sub_2281D6B04(uint64_t a1)
{
  sub_228393520();
  v2 = *v1;
  sub_2283920B0();
  v3 = *(v2 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);

  sub_2281DA444(v6, v4);

  sub_2283920B0();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281D6BBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

uint64_t Array<A>.sortedByName()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_2283930D0();
    if (v4)
    {
      v5 = v4;
      v1 = sub_2281D791C(v4, 0);

      sub_2281D99C4(v1 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v1 = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  v1 = a1 & 0xFFFFFFFFFFFFFF8;

LABEL_3:
  v8 = v1;
  sub_2281D7724(&v8);
  return v8;
}

uint64_t sub_2281D6CE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 64) == *(*a2 + 64) && *(*a1 + 72) == *(*a2 + 72);
  if (v4 || (sub_228393460()) && (*(v2 + 160) == *(v3 + 160) ? (v5 = *(v2 + 168) == *(v3 + 168)) : (v5 = 0), v5))
  {
    return 0;
  }

  else
  {
    return sub_228393460() & 1;
  }
}

uint64_t Array<A>.deduped()(unint64_t a1)
{
  v1 = a1;
  v41 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_112:
    v2 = sub_2283930D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v37 = 0;
  while (1)
  {
    v4 = v1 >> 62;
    if (v1 >> 62)
    {
      if (!sub_2283930D0())
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      if (!sub_2283930D0())
      {
        goto LABEL_109;
      }
    }

    else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_108;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB6D80](0, v1);
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_110;
      }

      v5 = *(v1 + 32);

      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v4)
      {
LABEL_10:
        result = *(v6 + 16);
        if (!result)
        {
          break;
        }

        goto LABEL_19;
      }
    }

    result = sub_2283930D0();
    if (!result)
    {
      break;
    }

    result = sub_2283930D0();
    if (result < 1)
    {
      goto LABEL_114;
    }

    result = sub_2283930D0();
LABEL_19:
    v8 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_111;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v4)
      {
        v9 = (v1 & 0xFFFFFFFFFFFFFF8);
        if (v8 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_25:
      sub_2283930D0();
      goto LABEL_26;
    }

    if (v4)
    {
      goto LABEL_25;
    }

LABEL_26:
    v1 = sub_2283931F0();
    v9 = (v1 & 0xFFFFFFFFFFFFFF8);
LABEL_27:
    v10 = v9 + 4;

    if (v1 >> 62)
    {
      result = sub_2283930D0();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_116;
      }

      memmove(v9 + 4, v9 + 5, 8 * (result - 1));
      result = sub_2283930D0();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_115;
      }

      v9[2] = result - 1;
      v3 = (v9 + 2);
      if (!sub_2283930D0())
      {
LABEL_88:

        MEMORY[0x22AAB5D20](v36);
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();

        v3 = v41;
        goto LABEL_91;
      }

      v39 = sub_2283930D0();
    }

    else
    {
      v11 = v9[2];
      v3 = (v9 + 2);
      memmove(v10, (v3 + 24), 8 * v11 - 8);
      v39 = v11 - 1;
      *v3 = v11 - 1;
      if (v11 == 1)
      {
        goto LABEL_88;
      }
    }

    v12 = MEMORY[0x277D84F90];
    if (v39)
    {
      v13 = 0;
      v38 = v5;
      do
      {
        v14 = v13;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x22AAB6D80](v14, v1);
            v13 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v14 >= *v3)
            {
              goto LABEL_103;
            }

            v15 = *(v1 + 8 * v14 + 32);

            v13 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }
          }

          v16 = *(v5 + 16);
          v17 = *(v15 + 16);
          swift_beginAccess();
          v18 = *(v17 + 16);
          if (v18 >> 62)
          {
            if (!sub_2283930D0())
            {
              goto LABEL_104;
            }
          }

          else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_104;
          }

          if ((v18 & 0xC000000000000001) != 0)
          {

            v20 = MEMORY[0x22AAB6D80](0, v18);
          }

          else
          {
            if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_106;
            }

            v19 = *(v18 + 32);

            v20 = v19;
          }

          swift_beginAccess();
          v21 = *(v16 + 16);
          if (v21 >> 62)
          {
            if (!sub_2283930D0())
            {
              goto LABEL_105;
            }
          }

          else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          if ((v21 & 0xC000000000000001) != 0)
          {

            v22 = MEMORY[0x22AAB6D80](0, v21);
          }

          else
          {
            if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_107;
            }

            v22 = *(v21 + 32);
          }

          v23 = [v22 hasSameAncestorIdentifiersAsInteractionResult_];

          if (v23)
          {
            break;
          }

          ++v14;
          v5 = v38;
          if (v13 == v39)
          {
            goto LABEL_62;
          }
        }

        v5 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_228198F1C(0, *(v12 + 2) + 1, 1, v12);
        }

        v25 = *(v12 + 2);
        v24 = *(v12 + 3);
        if (v25 >= v24 >> 1)
        {
          v12 = sub_228198F1C((v24 > 1), v25 + 1, 1, v12);
        }

        *(v12 + 2) = v25 + 1;
        *&v12[8 * v25 + 32] = v14;
      }

      while (v13 != v39);
    }

LABEL_62:
    v40 = MEMORY[0x277D84F90];
    v26 = *(v12 + 2);
    if (v26)
    {
      while (v26 <= *(v12 + 2))
      {
        v3 = *&v12[8 * v26 + 24];
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_2281D9314(v1);
        }

        v27 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 >= v27)
        {
          goto LABEL_97;
        }

        v28 = v27 - 1;
        v29 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
        memmove(((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 32), ((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 40), 8 * (v27 - 1 - v3));
        *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v28;
        v3 = *(v29 + 16);

        swift_beginAccess();
        v30 = *(v3 + 16);
        if (v30 >> 62)
        {
          if (!sub_2283930D0())
          {
            goto LABEL_98;
          }
        }

        else if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_98;
        }

        if ((v30 & 0xC000000000000001) != 0)
        {

          v31 = MEMORY[0x22AAB6D80](0, v30);
        }

        else
        {
          if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_99;
          }

          v31 = *(v30 + 32);
        }

        v32 = v31;
        MEMORY[0x22AAB5D20]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        --v26;
        v3 = &v40;
        sub_228392230();

        if (!v26)
        {
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:

      return v3;
    }

LABEL_81:

    swift_beginAccess();

    sub_2281D5890(v33, sub_2281D97FC);
    swift_endAccess();
    v34 = *(v5 + 16);
    swift_beginAccess();
    sub_2281D76AC((v34 + 16));
    swift_endAccess();

    MEMORY[0x22AAB5D20](v35);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2283921E0();
    }

    sub_228392230();

    v3 = v41;

LABEL_91:
    if (v1 >> 62)
    {
      if (!sub_2283930D0())
      {
        goto LABEL_100;
      }
    }

    else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}

uint64_t InteractionMedicationItem.deselectionBehavior(in:)(uint64_t a1)
{
  type metadata accessor for InteractionMedicationItem();
  sub_2281DAD60(&qword_27D8249D8, v1, type metadata accessor for InteractionMedicationItem, &protocol conformance descriptor for InteractionMedicationItem);
  return sub_22838FE80();
}

void sub_2281D76AC(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_2281D9314(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_2281D7A38(v4);
  *a1 = v2;
}

uint64_t sub_2281D7724(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22834169C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2281D7B4C(v6);
  return sub_228393220();
}

void *sub_2281D7808(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
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

  sub_2281DAF74(0, a3, 255, a4, MEMORY[0x277D84560]);
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

void *sub_2281D791C(uint64_t a1, uint64_t a2)
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

  sub_228180ED0();
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

uint64_t sub_2281D7998(uint64_t a1, char a2)
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

  sub_2283930D0();
LABEL_9:
  result = sub_2283931F0();
  *v2 = result;
  return result;
}

void sub_2281D7A38(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_228393410();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
        v6 = sub_228392220();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2281D7E98(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2281D7C4C(0, v2, 1, a1);
  }
}

uint64_t sub_2281D7B4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for InteractionMedicationItem();
        v6 = sub_228392220();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2281D85B4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_2281D7D80(0, v2, 1, a1);
  }

  return result;
}

void sub_2281D7C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v18 = v4;
    v19 = a3;
    v6 = *(v20 + 8 * a3);
    v17 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = [v10 rawIdentifier];

      v12 = [v9 identifier];
      v13 = [v12 rawIdentifier];

      if (v11 >= v13)
      {
LABEL_4:
        a3 = v19 + 1;
        v4 = v18 + 8;
        v5 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v14 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v14;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2281D7D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
LABEL_5:
    v16 = a3;
    v7 = *(v4 + 8 * a3);
    v14 = v6;
    v15 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7[8] == *(*v5 + 64) && v7[9] == *(*v5 + 72);
      if (v9 || (sub_228393460()) && ((result = v7[20], result == *(v8 + 160)) ? (v10 = v7[21] == *(v8 + 168)) : (v10 = 0), v10) || (result = sub_228393460(), (result & 1) == 0))
      {
LABEL_4:
        a3 = v16 + 1;
        v5 = v15 + 1;
        v6 = v14 - 1;
        if (v16 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v11 = *v5;
      v7 = v5[1];
      *v5 = v7;
      v5[1] = v11;
      --v5;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2281D7E98(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v5 = sub_2283406C0(v5);
    }

    v96 = *(v5 + 2);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v7;
        if (!*v7)
        {
          goto LABEL_125;
        }

        v7 = (v96 - 1);
        v98 = *&v5[16 * v96];
        v99 = *&v5[16 * v96 + 24];
        sub_2281D8C7C((v97 + 8 * v98), (v97 + 8 * *&v5[16 * v96 + 16]), (v97 + 8 * v99), v10);
        if (v6)
        {
          break;
        }

        if (v99 < v98)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2283406C0(v5);
        }

        if (v96 - 2 >= *(v5 + 2))
        {
          goto LABEL_115;
        }

        v100 = &v5[16 * v96];
        *v100 = v98;
        *(v100 + 1) = v99;
        sub_228340634(v96 - 1);
        v96 = *(v5 + 2);
        v7 = a3;
      }

      while (v96 > 1);
    }

LABEL_99:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v110 = v8;
      v106 = v6;
      v5 = v9;
      v102 = 8 * v9;
      v13 = (*v7 + 8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*v7 + 8 * v12);
      v17 = v15;
      v18 = [v16 identifier];
      v114 = [v18 rawIdentifier];

      v19 = [v17 identifier];
      v112 = [v19 rawIdentifier];

      v104 = v5;
      v20 = v5 + 2;
      while (1)
      {
        v12 = v110;
        if (v110 == v20)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        v24 = [v22 identifier];
        v5 = v10;
        v25 = [v24 rawIdentifier];

        v26 = [v23 identifier];
        v27 = [v26 rawIdentifier];

        v28 = v25 < v27;
        v10 = v5;
        v29 = !v28;
        ++v20;
        ++v14;
        if ((((v114 < v112) ^ v29) & 1) == 0)
        {
          v12 = (v20 - 1);
          break;
        }
      }

      v11 = v104;
      v6 = v106;
      v7 = a3;
      v30 = v102;
      if (v114 < v112)
      {
        if (v12 < v104)
        {
          goto LABEL_118;
        }

        if (v104 < v12)
        {
          v31 = 8 * v12 - 8;
          v32 = v12;
          v33 = v104;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 8;
            v30 += 8;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v7[1];
    if (v12 < v36)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_117;
      }

      if (v12 - v11 < a4)
      {
        v37 = &v11[a4];
        if (__OFADD__(v11, a4))
        {
          goto LABEL_119;
        }

        if (v37 >= v36)
        {
          v37 = v7[1];
        }

        if (v37 < v11)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v12 != v37)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_228198978(0, *(v10 + 2) + 1, 1, v10);
    }

    v51 = *(v10 + 2);
    v50 = *(v10 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v10 = sub_228198978((v50 > 1), v51 + 1, 1, v10);
    }

    *(v10 + 2) = v52;
    v53 = &v10[16 * v51];
    *(v53 + 4) = v11;
    *(v53 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v117 = v12;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v10 + 4);
          v56 = *(v10 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_58:
          if (v58)
          {
            goto LABEL_105;
          }

          v71 = &v10[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_108;
          }

          v77 = &v10[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_112;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v81 = &v10[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_72:
        if (v76)
        {
          goto LABEL_107;
        }

        v84 = &v10[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_110;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_79:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_120;
        }

        if (!*v7)
        {
          goto LABEL_123;
        }

        v93 = *&v10[16 * v92 + 32];
        v94 = *&v10[16 * v54 + 40];
        sub_2281D8C7C((*v7 + 8 * v93), (*v7 + 8 * *&v10[16 * v54 + 32]), (*v7 + 8 * v94), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v94 < v93)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2283406C0(v10);
        }

        if (v92 >= *(v10 + 2))
        {
          goto LABEL_102;
        }

        v95 = &v10[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        sub_228340634(v54);
        v52 = *(v10 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v10[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_103;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_104;
      }

      v66 = &v10[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_106;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_109;
      }

      if (v70 >= v62)
      {
        v88 = &v10[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_113;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v117;
    if (v117 >= v8)
    {
      goto LABEL_89;
    }
  }

  v103 = v10;
  v105 = v11;
  v107 = v6;
  v38 = *v7;
  v39 = *v7 + 8 * v12 - 8;
  v40 = &v11[-v12];
  v111 = v37;
LABEL_31:
  v115 = v39;
  v116 = v12;
  v41 = *(v38 + 8 * v12);
  v113 = v40;
  while (1)
  {
    v42 = *v39;
    v43 = v41;
    v44 = v42;
    v45 = [v43 identifier];
    v5 = [v45 rawIdentifier];

    v46 = [v44 identifier];
    v47 = [v46 rawIdentifier];

    if (v5 >= v47)
    {
LABEL_30:
      ++v12;
      v39 = v115 + 8;
      v40 = v113 - 1;
      if (v116 + 1 != v111)
      {
        goto LABEL_31;
      }

      v12 = v111;
      v11 = v105;
      v6 = v107;
      v7 = a3;
      v10 = v103;
      goto LABEL_38;
    }

    if (!v38)
    {
      break;
    }

    v48 = *v39;
    v41 = *(v39 + 8);
    *v39 = v41;
    *(v39 + 8) = v48;
    v39 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_30;
    }
  }

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
}

uint64_t sub_2281D85B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v92 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_114:
    v5 = v10;
    v10 = *v92;
    if (!*v92)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_146:
      result = sub_2283406C0(v5);
      v5 = result;
    }

    v103 = v5;
    v83 = *(v5 + 16);
    if (v83 >= 2)
    {
      while (1)
      {
        v84 = *v7;
        if (!*v7)
        {
          goto LABEL_150;
        }

        v7 = (v83 - 1);
        v85 = *(v5 + 16 * v83);
        v86 = *(v5 + 16 * (v83 - 1) + 40);
        sub_2281D8FDC((v84 + 8 * v85), (v84 + 8 * *(v5 + 16 * (v83 - 1) + 32)), (v84 + 8 * v86), v10);
        if (v6)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_2283406C0(v5);
        }

        if (v83 - 2 >= *(v5 + 16))
        {
          goto LABEL_140;
        }

        v87 = (v5 + 16 * v83);
        *v87 = v85;
        v87[1] = v86;
        v103 = v5;
        result = sub_228340634(v83 - 1);
        v5 = v103;
        v83 = *(v103 + 16);
        v7 = a3;
        if (v83 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    v93 = v11;
    if (v9 < v8)
    {
      v12 = *v7;
      v13 = *(*v7 + 8 * v9);
      v101 = *(*v7 + 8 * v11);
      v102 = v13;
      v5 = v11;
      result = sub_2281D6CE8(&v102, &v101);
      v98 = result;
      if (v6)
      {
      }

      v9 = v5 + 2;
      v11 = v5;
      if (v5 + 2 < v8)
      {
        v88 = v10;
        v14 = v12 + 8 * v5 + 16;
        while (1)
        {
          v5 = v9;
          v15 = *(v14 - 8);
          v16 = *v14;
          v17 = *(*v14 + 64) == v15[8] && *(*v14 + 72) == v15[9];
          if (v17 || (sub_228393460()) && ((result = *(v16 + 160), result == v15[20]) ? (v18 = *(v16 + 168) == v15[21]) : (v18 = 0), v18))
          {
            v7 = a3;
            v9 = v5;
            if (v98)
            {
              v10 = v88;
              v11 = v93;
              if (v5 < v93)
              {
                goto LABEL_143;
              }

              goto LABEL_25;
            }
          }

          else
          {
            result = sub_228393460();
            v7 = a3;
            v9 = v5;
            if ((v98 ^ result))
            {
              goto LABEL_22;
            }
          }

          ++v9;
          v14 += 8;
          if (v8 == v9)
          {
            v9 = v8;
LABEL_22:
            v10 = v88;
            v11 = v93;
            break;
          }
        }
      }

      if (v98)
      {
        if (v9 < v11)
        {
          goto LABEL_143;
        }

LABEL_25:
        if (v11 < v9)
        {
          v19 = 8 * v9 - 8;
          v20 = 8 * v11;
          v21 = v9;
          v22 = v11;
          do
          {
            if (v22 != --v21)
            {
              v24 = *v7;
              if (!*v7)
              {
                goto LABEL_149;
              }

              v23 = *(v24 + v20);
              *(v24 + v20) = *(v24 + v19);
              *(v24 + v19) = v23;
            }

            ++v22;
            v19 -= 8;
            v20 += 8;
          }

          while (v22 < v21);
        }
      }
    }

    v25 = v7[1];
    if (v9 < v25)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_142;
      }

      if (v9 - v11 < a4)
      {
        v26 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_144;
        }

        if (v26 >= v25)
        {
          v26 = v7[1];
        }

        if (v26 < v11)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v9 != v26)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v9 < v11)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228198978(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v37 = *(v10 + 2);
    v36 = *(v10 + 3);
    v38 = v37 + 1;
    v39 = v93;
    if (v37 >= v36 >> 1)
    {
      result = sub_228198978((v36 > 1), v37 + 1, 1, v10);
      v10 = result;
      v39 = v93;
    }

    *(v10 + 2) = v38;
    v40 = &v10[16 * v37];
    *(v40 + 4) = v39;
    *(v40 + 5) = v9;
    v100 = *v92;
    if (!*v92)
    {
      goto LABEL_151;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v10 + 4);
          v43 = *(v10 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_80:
          if (v45)
          {
            goto LABEL_130;
          }

          v58 = &v10[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_133;
          }

          v64 = &v10[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_137;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v68 = &v10[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_94:
        if (v63)
        {
          goto LABEL_132;
        }

        v71 = &v10[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_135;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_101:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
          goto LABEL_145;
        }

        if (!*v7)
        {
          goto LABEL_148;
        }

        v5 = v9;
        v80 = *&v10[16 * v79 + 32];
        v81 = *&v10[16 * v41 + 40];
        sub_2281D8FDC((*v7 + 8 * v80), (*v7 + 8 * *&v10[16 * v41 + 32]), (*v7 + 8 * v81), v100);
        if (v6)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2283406C0(v10);
        }

        if (v79 >= *(v10 + 2))
        {
          goto LABEL_127;
        }

        v82 = &v10[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        v103 = v10;
        result = sub_228340634(v41);
        v10 = v103;
        v38 = *(v103 + 16);
        v9 = v5;
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v10[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_128;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_129;
      }

      v53 = &v10[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_131;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_134;
      }

      if (v57 >= v49)
      {
        v75 = &v10[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_138;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v8 = v7[1];
    if (v9 >= v8)
    {
      goto LABEL_114;
    }
  }

  v89 = v10;
  v90 = v6;
  v27 = *v7;
  v28 = (*v7 + 8 * v9 - 8);
  v29 = v11 - v9;
  v94 = v26;
LABEL_42:
  v97 = v28;
  v99 = v9;
  v30 = *(v27 + 8 * v9);
  v96 = v29;
  while (1)
  {
    v31 = *v28;
    v5 = v30[9];
    v32 = v30[8] == *(*v28 + 64) && v5 == *(*v28 + 72);
    if (v32 || (sub_228393460()) && (v30[20] == *(v31 + 160) ? (v33 = v30[21] == *(v31 + 168)) : (v33 = 0), v33) || (result = sub_228393460(), (result & 1) == 0))
    {
LABEL_41:
      v9 = (v99 + 1);
      v28 = v97 + 1;
      v29 = v96 - 1;
      if (v99 + 1 != v94)
      {
        goto LABEL_42;
      }

      v9 = v94;
      v10 = v89;
      v6 = v90;
      v7 = a3;
      v11 = v93;
      goto LABEL_60;
    }

    if (!v27)
    {
      break;
    }

    v34 = *v28;
    v30 = v28[1];
    *v28 = v30;
    v28[1] = v34;
    --v28;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_2281D8C7C(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v11] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 8 * v11);
      a2 = v26;
    }

    v25 = a2;
    v44 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      v43 = v14;
LABEL_27:
      __dst = v25;
      v27 = v25 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v25 - 1;
      do
      {
        v30 = v28;
        v31 = v28 + 1;
        v32 = *--v29;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 identifier];
        v37 = [v36 rawIdentifier];

        v38 = [v35 identifier];
        v39 = [v38 rawIdentifier];

        if (v37 < v39)
        {
          v4 = v30;
          if (v31 != __dst)
          {
            *v30 = *v42;
          }

          v14 = v43;
          if (v44 <= v43 || (v25 = v42, v42 <= v5))
          {
            v25 = v42;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > v43);
      v44 = v29;
      v14 = v43;
      v25 = __dst;
    }
  }

  else
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v8);
      a4 = v13;
    }

    v44 = &a4[v8];
    v14 = a4;
    if (v6 >= 8 && v12 < v4)
    {
      v15 = v12;
      while (1)
      {
        v16 = *v14;
        v17 = *v15;
        v18 = v16;
        v19 = [v17 identifier];
        v20 = [v19 rawIdentifier];

        v21 = [v18 identifier];
        v22 = [v21 rawIdentifier];

        if (v20 >= v22)
        {
          break;
        }

        v23 = v15;
        v24 = v5 == v15++;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v44 || v15 >= v4)
        {
          goto LABEL_20;
        }
      }

      v23 = v14;
      v24 = v5 == v14++;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v23;
      goto LABEL_18;
    }

LABEL_20:
    v25 = v5;
  }

LABEL_38:
  if (v25 != v14 || v25 >= (v14 + ((v44 - v14 + (v44 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v14, 8 * (v44 - v14));
  }

  return 1;
}

uint64_t sub_2281D8FDC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = a4;
    v21 = __src;
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v35 = &v14[8 * v11];
    if (v9 >= 8 && v21 > v5)
    {
      v31 = v14;
LABEL_37:
      v34 = v21;
      v22 = v21 - 8;
      v4 -= 8;
      v23 = v35;
      v32 = v22;
      do
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = *v22;
        v27 = *(v25 + 72);
        v28 = *(v25 + 64) == *(*v22 + 64) && v27 == *(*v22 + 72);
        if (!v28 && (sub_228393460() & 1) == 0 || (*(v24 + 160) == *(v26 + 160) ? (v29 = *(v24 + 168) == *(v26 + 168)) : (v29 = 0), !v29))
        {
          if (sub_228393460())
          {
            v14 = v31;
            if (v4 + 8 != v34)
            {
              *v4 = *v32;
            }

            if (v35 <= v31 || (v21 = v32, v32 <= v5))
            {
              v21 = v32;
              goto LABEL_59;
            }

            goto LABEL_37;
          }
        }

        v14 = v31;
        if (v4 + 8 != v35)
        {
          *v4 = *v23;
        }

        v4 -= 8;
        v35 = v23;
        v22 = v32;
      }

      while (v23 > v31);
      v35 = v23;
      v21 = v34;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 8 * v8);
      a4 = v13;
    }

    v35 = &a4[8 * v8];
    v14 = a4;
    if (v6 >= 8 && __src < v4)
    {
      v15 = __src;
      while (1)
      {
        v33 = v15;
        v16 = *v15;
        v17 = *v14;
        v18 = *(*v15 + 64) == *(*v14 + 64) && *(*v15 + 72) == *(*v14 + 72);
        if (v18 || (sub_228393460()) && *(v16 + 160) == *(v17 + 160) && *(v16 + 168) == *(v17 + 168))
        {
          break;
        }

        if ((sub_228393460() & 1) == 0)
        {
          break;
        }

        v20 = v33;
        v15 = v33 + 8;
        if (v5 != v33)
        {
          goto LABEL_27;
        }

LABEL_28:
        v5 += 8;
        if (v14 >= v35 || v15 >= v4)
        {
          goto LABEL_30;
        }
      }

      v20 = v14;
      v18 = v5 == v14;
      v14 += 8;
      v15 = v33;
      if (v18)
      {
        goto LABEL_28;
      }

LABEL_27:
      *v5 = *v20;
      goto LABEL_28;
    }

LABEL_30:
    v21 = v5;
  }

LABEL_59:
  if (v21 != v14 || v21 >= &v14[(v35 - v14 + (v35 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v21, v14, 8 * ((v35 - v14) / 8));
  }

  return 1;
}

uint64_t sub_2281D9314(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2283930D0();
  }

  return sub_2283931F0();
}

void *sub_2281D93D0(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_2283930D0();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_2281D791C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2281D946C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A38, &qword_27D824A30, 0x277CCDAF0, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A40, &qword_27D824A38, &qword_27D824A30, 0x277CCDAF0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_27D824A30, 0x277CCDAF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D9634(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A58, &qword_280DDBB50, &qword_280DDB9E0, 0x277D115B8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D97FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A70, &qword_280DDBA10, 0x277D11518, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A78, &qword_27D824A70, &qword_280DDBA10, 0x277D11518);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D99C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v16 = a2;
    result = sub_2283930D0();
    a2 = v16;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF74(0, &qword_27D824A60, v8, type metadata accessor for InteractionMedicationItem, MEMORY[0x277D83940]);
          sub_2281DAFD8(v9, v10, v11);
          for (i = 0; i != v6; ++i)
          {
            v13 = sub_2281CB8DC(v17, i, a3);
            v15 = *v14;

            (v13)(v17, 0);
            *(v4 + 8 * i) = v15;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for InteractionMedicationItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D9B5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A20, &qword_280DDBA90, 0x277CCAAD0, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A28, &qword_27D824A20, &qword_280DDBA90, 0x277CCAAD0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D9D24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A18, &qword_280DDBB68, &qword_280DDB9F0, 0x277D11550);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281D9EEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A08, &qword_27D824A00, 0x277D12AC0, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A10, &qword_27D824A08, &qword_27D824A00, 0x277D12AC0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB964(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_27D824A00, 0x277D12AC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281DA0B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D824A48, &qword_27D827D20, 0x277D11568, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D824A50, &qword_27D824A48, &qword_27D827D20, 0x277D11568);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_27D827D20, 0x277D11568);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2281DA27C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2283930D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2283930D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2281DAF0C(0, &qword_27D8249F0, &qword_280DDB9C8, 0x277D11580, MEMORY[0x277D83940]);
          sub_2281DB060(&qword_27D8249F8, &qword_27D8249F0, &qword_280DDB9C8, 0x277D11580);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_2281CB85C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22817A958(0, &qword_280DDB9C8, 0x277D11580);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2281DA444(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_2283930D0();
    MEMORY[0x22AAB70D0](v8);
    v3 = sub_2283930D0();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x22AAB70D0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x22AAB6D80](i, a2);
      sub_228392C70();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_228392C70();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2281DA534(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AAB70D0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_2283920B0();
      sub_2283920B0();

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2281DA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25[3] = a12;
  v25[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a2, a12);
  type metadata accessor for InteractionMedicationCell();
  sub_2281DAD60(&qword_27D824A80, 255, type metadata accessor for InteractionMedicationCell, &protocol conformance descriptor for InteractionMedicationCell);
  *(a11 + 176) = sub_22838FBB0();
  *(a11 + 184) = v20;
  *(a11 + 216) = MEMORY[0x277D84FA0];
  *(a11 + 224) = 0;
  *(a11 + 192) = a9;
  *(a11 + 208) = a10;
  *(a11 + 16) = a1;
  if (a6 == a3 && a7 == a4 || (sub_228393460() & 1) == 0)
  {
    *(a11 + 64) = a3;
    *(a11 + 72) = a4;
    sub_22816DFFC(a5, a11 + 80);
    *(a11 + 160) = a6;
    *(a11 + 168) = a7;
    sub_22816DFFC(a8, a11 + 120);
    sub_228180FB0(v25, a11 + 24);
  }

  else
  {
    *(a11 + 64) = a6;
    *(a11 + 72) = a7;
    sub_228180FB0(a8, a11 + 80);
    *(a11 + 160) = a3;
    *(a11 + 168) = a4;
    sub_228180FB0(a5, a11 + 120);
    (*(a13 + 40))(v24, a12);
    __swift_destroy_boxed_opaque_existential_0(a8);
    __swift_destroy_boxed_opaque_existential_0(a5);
    sub_22816DFFC(v24, a11 + 24);
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  return a11;
}

uint64_t _s19HealthMedicationsUI25InteractionMedicationItemC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  swift_beginAccess();
  v6 = *(v4 + 16);
  swift_beginAccess();
  v7 = *(v5 + 16);

  v8 = sub_2282100E4(v6, v7);

  if (v8 & 1) != 0 && (a1[8] == a2[8] && a1[9] == a2[9] || (sub_228393460()))
  {
    if (a1[20] == a2[20] && a1[21] == a2[21])
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_228393460();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_2281DA8E0(void *a1)
{
  v2 = v1;
  v23 = v1[2];
  sub_228180FB0((v1 + 3), v29);
  v3 = v1[9];
  v24 = v1[8];
  sub_228180FB0((v1 + 10), v28);
  v4 = v1[13];
  v5 = v1[14];
  __swift_project_boxed_opaque_existential_0(v1 + 10, v4);
  v6 = *(v5 + 48);

  v7 = v6(v4, v5);
  v8 = v1[20];
  v9 = v1[21];
  sub_228180FB0((v1 + 15), v27);
  v10 = v1[18];
  v11 = v1[19];
  __swift_project_boxed_opaque_existential_0(v2 + 15, v2[18]);
  v12 = *(v11 + 48);

  v13 = v12(v10, v11);
  v14 = type metadata accessor for InteractionResultDetailViewController(0);
  v15 = objc_allocWithZone(v14);
  *&v15[qword_27D824388] = v23;
  sub_228180FB0(v29, &v15[qword_27D824390]);
  v16 = &v15[qword_27D824398];
  *v16 = v24;
  *(v16 + 1) = v3;
  sub_228180FB0(v28, &v15[qword_27D8243A0]);
  *&v15[qword_27D8243A8] = v7;
  v17 = &v15[qword_27D8243B0];
  *v17 = v8;
  *(v17 + 1) = v9;
  sub_228180FB0(v27, &v15[qword_27D8243B8]);
  *&v15[qword_27D8243C0] = v13;
  v26.receiver = v15;
  v26.super_class = v14;

  v18 = objc_msgSendSuper2(&v26, sel_initWithCollectionViewLayout_, 0);
  v19 = qword_280DDCF18;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v21 = sub_228391FC0();

  [v20 setTitle_];

  v22 = [v20 navigationItem];
  [v22 setLargeTitleDisplayMode_];

  [v20 setModalPresentationStyle_];
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  [v20 setModalPresentationStyle_];

  [a1 showAdaptively:v20 sender:v2];
  sub_228390FE0();
}

uint64_t sub_2281DAC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v23 = a5;
  v24 = a6;
  v22 = a9;
  v17 = *(a12 - 8);
  MEMORY[0x28223BE20](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionMedicationItem();
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a2, a12);
  return sub_2281DA5EC(a1, v19, a3, a4, v23, v24, v25, v26, v22, a10, v20, a12, a13);
}

uint64_t sub_2281DAD60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2281DAF0C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2281DAF74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2281DAFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27D824A68;
  if (!qword_27D824A68)
  {
    sub_2281DAF74(255, &qword_27D824A60, a3, type metadata accessor for InteractionMedicationItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824A68);
  }

  return result;
}

uint64_t sub_2281DB060(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_2281DAF0C(255, a2, a3, a4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2281DB0CC()
{
  v1 = sub_2283911B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 scheduleType];
  if (result <= 3)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return result;
      }

      if (result != 1)
      {
LABEL_23:
        v14 = 0;
        v15 = 0xE000000000000000;
        sub_2283931D0();

        v14 = 0xD00000000000002DLL;
        v15 = 0x80000002283AA450;
        v13[1] = [v0 scheduleType];
        v11 = sub_228393420();
        MEMORY[0x22AAB5C80](v11);

        sub_228393300();
        __break(1u);
        return sub_22830F6D4(1);
      }

      sub_22830F590(&v14);
      if ((v15 & 1) == 0)
      {
        return sub_22830F6D4(1);
      }

      sub_228391150();
      v6 = v0;
      v7 = sub_2283911A0();
      v8 = sub_2283925C0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = [v6 scheduleType];

        _os_log_impl(&dword_22816B000, v7, v8, "Attempted to display localizedString with nil frequencyInterval for %ld returning empty string", v9, 0xCu);
        MEMORY[0x22AAB7B80](v9, -1, -1);
      }

      else
      {

        v7 = v6;
      }

      (*(v2 + 8))(v4, v1);
      goto LABEL_27;
    }

    if (result == 2)
    {
LABEL_14:
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

LABEL_31:
      swift_once();
      return sub_22838F0C0();
    }

LABEL_20:
    result = sub_2281DBC40();
    if (v10)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (result != 6)
  {
    if (result == 7 || result == 8)
    {
      if (qword_280DDCF18 == -1)
      {
        return sub_22838F0C0();
      }

      goto LABEL_31;
    }

    goto LABEL_23;
  }

LABEL_27:
  if (qword_27D8232A0 != -1)
  {
    swift_once();
  }

  v12 = qword_27D828AC0;

  return v12;
}

void sub_2281DB4DC()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v0 = qword_280DDCF20;

  v1 = sub_22838F0C0();
  v3 = v2;

  qword_27D828AC0 = v1;
  *algn_27D828AC8 = v3;
}

void *sub_2281DB5B4()
{
  v58 = sub_22838F4A0();
  v1 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22838F440();
  v4 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_228391130();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeekdaysAndDosages(0);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [v0 timeIntervals];
  sub_2281DC17C();
  v12 = sub_2283921A0();

  v61 = MEMORY[0x277D84F90];
  v53 = v12;
  if (v12 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v50 = v6;
    v51 = v4;
    v52 = v1;
    v15 = 0;
    v4 = v53;
    v16 = v53 & 0xC000000000000001;
    v6 = v53 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v16)
      {
        v17 = MEMORY[0x22AAB6D80](v15, v4);
      }

      else
      {
        if (v15 >= *(v6 + 16))
        {
          goto LABEL_35;
        }

        v17 = *(v4 + 8 * v15 + 32);
      }

      v1 = v17;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v17 dose];
      if (v19 && (v20 = v19, [v19 floatValue], v22 = v21, v20, v22 > 0.0))
      {
        sub_228393210();
        sub_228393250();
        v4 = v53;
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v15;
      if (v18 == i)
      {
        v23 = v61;
        v4 = v51;
        v1 = v52;
        v6 = v50;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_17:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      goto LABEL_20;
    }

LABEL_40:

    return MEMORY[0x277D84F90];
  }

  v24 = sub_2283930D0();
  if (!v24)
  {
    goto LABEL_40;
  }

LABEL_20:
  v61 = v14;
  result = sub_2281C9CD4(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v61;
    v28 = v23;
    v53 = v23 & 0xC000000000000001;
    v49 = (v4 + 32);
    v50 = (v1 + 32);
    v48 = (v1 + 8);
    v29 = (v6 + 32);
    v47 = xmmword_228397F40;
    v51 = v24;
    v52 = v28;
    do
    {
      if (v53)
      {
        v30 = MEMORY[0x22AAB6D80](v26);
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v26 >= *(v28 + 2))
        {
          goto LABEL_37;
        }

        v30 = *&v28[8 * v26 + 32];
      }

      v31 = v30;
      v32 = [v30 daysOfWeek];
      sub_2282D9ECC(v32, v59);
      sub_2281DC1C8(0);
      v33 = type metadata accessor for Dosage(0);
      v34 = (*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v47;
      sub_22838F430();
      v36 = [v31 dose];
      if (v36)
      {
        v37 = v36;
        [v36 doubleValue];
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = v35 + v34;
      sub_22838F490();
      v41 = v35 + v34;
      v6 = v58;
      (*v50)(v41, v3, v58);
      (*v49)(v40 + *(v33 + 20), v60, v57);
      *(v40 + *(v33 + 24)) = v39;
      sub_22838F490();
      v42 = sub_22838F450();
      v44 = v43;
      (*v48)(v3, v6);
      *v10 = v42;
      v10[1] = v44;
      v45 = v55;
      (*v29)(v10 + *(v55 + 20), v59, v56);

      *(v10 + *(v45 + 24)) = v35;
      v61 = v27;
      v4 = *(v27 + 16);
      v46 = *(v27 + 24);
      v1 = (v4 + 1);
      if (v4 >= v46 >> 1)
      {
        sub_2281C9CD4((v46 > 1), v4 + 1, 1);
        v27 = v61;
      }

      ++v26;
      *(v27 + 16) = v1;
      sub_2281DC220(v10, v27 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v4);
      v28 = v52;
    }

    while (v51 != v26);

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_2281DBC40()
{
  v0 = sub_22838F6C0();
  v43 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v42 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for WeekdaysAndDosages(0);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_228391130();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v41 = &v37 - v18;
  v19 = sub_2281DB5B4();
  v50 = 0;
  v48 = sub_2281DC0DC(&qword_280DDBD00, MEMORY[0x277D11790]);
  sub_2283935F0();
  v20 = *(v5 + 16);
  v40 = v17;
  v21 = v17;
  v22 = v20;
  v20(v14, v21, v4);
  v23 = v19;
  v24 = v19[2];
  if (v24)
  {
    v38 = v5;
    v39 = v0;
    v25 = *(v47 + 20);
    v46 = v22;
    v47 = v25;
    v26 = *(v49 + 80);
    v37 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v49 + 72);
    v44 = v5 + 16;
    v45 = v28;
    v49 = v5 + 8;
    v29 = (v5 + 32);
    do
    {
      sub_2281CBF8C(v27, v3);
      sub_2281DC0DC(&qword_27D824818, MEMORY[0x277D11780]);
      sub_228392170();
      sub_2283935F0();
      v46(v8, &v3[v47], v4);
      sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
      sub_228393000();
      sub_2281DC120(v3);
      v30 = *v49;
      (*v49)(v14, v4);
      (*v29)(v14, v11, v4);
      v27 += v45;
      --v24;
    }

    while (v24);
    v49 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

    v31 = v38;
    v0 = v39;
  }

  else
  {

    v31 = v5;
    v32 = v5 + 8;
    v30 = *(v5 + 8);
    v49 = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v30(v40, v4);
  v33 = v41;
  (*(v31 + 32))(v41, v14, v4);
  v34 = v42;
  sub_22838F680();
  v35 = sub_228391100();
  (*(v43 + 8))(v34, v0);
  v30(v33, v4);
  return v35;
}

uint64_t sub_2281DC0DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_228391130();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2281DC120(uint64_t a1)
{
  v2 = type metadata accessor for WeekdaysAndDosages(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2281DC17C()
{
  result = qword_280DDB9C8;
  if (!qword_280DDB9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB9C8);
  }

  return result;
}

void sub_2281DC1C8(uint64_t a1)
{
  if (!qword_27D823E30)
  {
    type metadata accessor for Dosage(255);
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823E30);
    }
  }
}

uint64_t sub_2281DC220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeekdaysAndDosages(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281DC284()
{
  result = sub_228391FC0();
  qword_280DDBA80 = result;
  return result;
}

uint64_t (*static NSNotificationName.UserDidRequestToShowCurrentMedication.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DDBA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2281DC38C()
{
  result = sub_228391FC0();
  qword_27D824A88 = result;
  return result;
}

id sub_2281DC3E8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_2281DC474(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static NSNotificationName.UserDidAddMedicationWhenNotificationsDisabled.modify(uint64_t a1))(uint64_t)
{
  if (qword_27D8232B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2281DC568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2281E01F4(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2281E006C(a3, v25 - v10);
  v12 = sub_2283922D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2281E0494(v11, &qword_27D827C30, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2283922C0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_228392250();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_228392060() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2281E0494(a3, &qword_27D827C30, MEMORY[0x277D85720]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2281E0494(a3, &qword_27D827C30, MEMORY[0x277D85720]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2281DC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2281E01F4(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2281E006C(a3, v25 - v10);
  v12 = sub_2283922D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2281E0494(v11, &qword_27D827C30, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2283922C0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_228392250();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_228392060() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_2281E00EC(0, &qword_27D824AF0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2281E0494(v25[0], &qword_27D827C30, MEMORY[0x277D85720]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2281E0494(a3, &qword_27D827C30, MEMORY[0x277D85720]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_2281E00EC(0, &qword_27D824AF0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2281DCC0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D10E58];
  v3 = sub_22838FB90();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_2281DCD08(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27D824AA0;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2281DCD68()
{
  v1 = qword_27D824AA0;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2281DCDBC(uint64_t a1)
{
  v3 = qword_27D824AA0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2281DCE74(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_2281DCF34(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_2281DCFE8()
{
  v1 = qword_27D824AB8;
  v2 = *(v0 + qword_27D824AB8);
  if (v2)
  {
    v3 = *(v0 + qword_27D824AB8);
  }

  else
  {
    v4 = qword_27D824AA0;
    swift_beginAccess();
    v5 = [objc_allocWithZone(MEMORY[0x277D10388]) initWithHealthStore_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2281DD088()
{
  v1 = qword_27D824AC0;
  v2 = *(v0 + qword_27D824AC0);
  if (v2)
  {
    v3 = *(v0 + qword_27D824AC0);
  }

  else
  {
    sub_228390640();
    v4 = qword_27D824AA0;
    swift_beginAccess();
    v5 = *(v0 + v4);
    v6 = v0;
    v7 = sub_228390630();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *MedicationConceptDetailViewController.__allocating_init(medication:healthStore:listManager:provenance:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(v4);
  v10 = &v9[qword_27D824AB0];
  v28 = sub_228392000();
  v29 = v11;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA520);

  v12 = v29;
  *v10 = v28;
  v10[1] = v12;
  *&v9[qword_27D824AB8] = 0;
  *&v9[qword_27D824AC0] = 0;
  *&v9[qword_27D824AC8] = 0;
  *&v9[qword_27D824A90] = a1;
  *&v9[qword_27D824A98] = a3;
  *&v9[qword_27D824AA0] = a2;
  v13 = a1;

  v14 = a2;
  v15 = [v13 localizedOntologyEducationContent];
  if (v15)
  {
    v28 = v15;
    v16 = v15;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v18 = v17;

    if (v18)
    {
    }
  }

  v19 = [v13 localizedOntologyEducationContent];
  if (v19)
  {
    v28 = v19;
    v20 = v19;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v22 = v21;

    if (v22)
    {
    }
  }

  sub_228391020();
  swift_allocObject();
  *&v9[qword_27D824AA8] = sub_228390FF0();
  v27.receiver = v9;
  v27.super_class = v5;
  v23 = objc_msgSendSuper2(&v27, sel_initWithCollectionViewLayout_, 0);
  v24 = *((*MEMORY[0x277D85000] & *v23) + class metadata base offset for MedicationConceptDetailViewController + 224);
  v25 = v23;
  v24(v13);

  return v25;
}

void *MedicationConceptDetailViewController.init(medication:healthStore:listManager:provenance:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = &v4[qword_27D824AB0];
  v27 = sub_228392000();
  v28 = v10;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA520);

  v11 = v28;
  *v9 = v27;
  v9[1] = v11;
  *&v4[qword_27D824AB8] = 0;
  *&v4[qword_27D824AC0] = 0;
  *&v4[qword_27D824AC8] = 0;
  *&v4[qword_27D824A90] = a1;
  *&v4[qword_27D824A98] = a3;
  *&v4[qword_27D824AA0] = a2;
  v12 = a1;

  v13 = a2;
  v14 = [v12 localizedOntologyEducationContent];
  if (v14)
  {
    v27 = v14;
    v15 = v14;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v17 = v16;

    if (v17)
    {
    }
  }

  v18 = [v12 localizedOntologyEducationContent];
  if (v18)
  {
    v27 = v18;
    v19 = v18;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v21 = v20;

    if (v21)
    {
    }
  }

  sub_228391020();
  swift_allocObject();
  *&v5[qword_27D824AA8] = sub_228390FF0();
  v26.receiver = v5;
  v26.super_class = type metadata accessor for MedicationConceptDetailViewController(0);
  v22 = objc_msgSendSuper2(&v26, sel_initWithCollectionViewLayout_, 0);
  v23 = *((*MEMORY[0x277D85000] & *v22) + class metadata base offset for MedicationConceptDetailViewController + 224);
  v24 = v22;
  v23(v12);

  return v24;
}

uint64_t type metadata accessor for MedicationConceptDetailViewController(uint64_t a1)
{
  result = qword_27D824AE0;
  if (!qword_27D824AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MedicationConceptDetailViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_2281DD748()
{
  v1 = v0;
  sub_2281E01F4(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v32 - v3;
  v4 = *&v0[qword_27D824A90];
  v5 = qword_27D824A98;
  swift_beginAccess();
  v6 = *&v1[v5];
  v7 = qword_27D824AA0;
  v33 = qword_27D824AA0;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = qword_27D824AA8;
  swift_beginAccess();
  v10 = *&v1[v9];
  v11 = type metadata accessor for MedicationConceptDetailDataSourceProvider();
  v12 = swift_allocObject();
  sub_228390890();
  v13 = v4;

  v14 = v8;

  sub_228390880();
  v15 = sub_228390870();

  *(v12 + 6) = v15;
  *(v12 + 7) = 0;
  *(v12 + 2) = v6;
  *(v12 + 3) = v13;
  *(v12 + 4) = v14;
  *(v12 + 5) = v10;
  v37 = v11;
  v38 = sub_2281E0500(&qword_27D824AD0, type metadata accessor for MedicationConceptDetailDataSourceProvider, &unk_2283A638C);
  v35 = v12;
  sub_2283904B0();
  v16 = type metadata accessor for MedicationConceptDetailViewController(0);
  v34.receiver = v1;
  v34.super_class = v16;
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v17 = sub_2283922D0();
  v18 = v32;
  (*(*(v17 - 8) + 56))(v32, 1, 1, v17);
  sub_2283922A0();
  v19 = v1;
  v20 = sub_228392290();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  sub_2281DC568(0, 0, v18, &unk_22839A908, v21);

  sub_228390FE0();

  v35 = v19;
  v23 = *MEMORY[0x277D12728];
  v24 = *&v1[v33];
  v25 = sub_2281E0500(&qword_27D824AD8, type metadata accessor for MedicationConceptDetailViewController, &protocol conformance descriptor for MedicationConceptDetailViewController);
  v26 = v24;
  MEMORY[0x22AAB40A0](0xD000000000000014, 0x80000002283AA540, v23, v26, v16, v25);

  v27 = [v19 navigationController];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 navigationBar];

    v30 = *&v19[qword_27D824AB0 + 8];
    v35 = *&v19[qword_27D824AB0];
    v36 = v30;

    MEMORY[0x22AAB5C80](0x7461676976614E2ELL, 0xEE007261426E6F69);
    v31 = sub_228391FC0();

    [v29 setAccessibilityIdentifier_];
  }
}

void sub_2281DDB40(void *a1)
{
  v1 = a1;
  sub_2281DD748();
}

void sub_2281DDB88(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_228391310();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22838FB90();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D10E58]);
  v9 = a1;
  sub_2283926F0();
  sub_228391300();
  sub_228392700();
  v10 = type metadata accessor for MedicationConceptDetailViewController(0);
  v11.receiver = v9;
  v11.super_class = v10;
  objc_msgSendSuper2(&v11, sel_viewIsAppearing_, a3);
}

uint64_t sub_2281DDD04(void *a1)
{
  swift_beginAccess();

  v2 = [a1 localizedOntologyEducationContent];
  if (v2)
  {
    v3 = v2;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA90();
    v5 = v4;

    if (v5)
    {
    }
  }

  sub_228391000();

  v6 = [a1 localizedOntologyEducationContent];
  if (v6)
  {
    v7 = v6;
    sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
    sub_22838FA70();
    v9 = v8;

    if (v9)
    {
    }
  }

  sub_228391010();

  sub_2281DDE84(a1);
  return sub_2281DDFD8(a1);
}

uint64_t sub_2281DDE84(void *a1)
{
  v9[0] = a1;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  sub_228390F20();
  v3 = sub_228391FC0();

  [v1 setTitle_];

  sub_2283904A0();
  if (!v9[3])
  {
    return sub_2281AC828(v9, &qword_27D824B28, &qword_27D824B30, MEMORY[0x277D11120]);
  }

  sub_22818217C(0, &qword_27D824B30, MEMORY[0x277D11120], 1);
  type metadata accessor for MedicationConceptDetailDataSourceProvider();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v8 + 24);
    *(v8 + 24) = a1;
    v6 = a1;

    sub_22836160C();
    v7 = *(v8 + 24);
    sub_228391850();
  }

  return result;
}

uint64_t sub_2281DDFD8(void *a1)
{
  sub_2281E01F4(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  sub_2281E0248(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281E03D8(0);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + qword_27D824AC8))
  {
    v28 = v1;
    v29 = result;
    v30 = v13;
    v31 = qword_27D824AC8;
    v16 = sub_2281DD088();
    v17 = sub_228390620();
    v26 = v17;

    v33 = v17;
    sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
    v27 = a1;
    v18 = sub_228392790();
    v32 = v18;
    v19 = sub_228392730();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    sub_2281E0300(0, &qword_27D824B00, MEMORY[0x277D77BD8]);
    sub_2281E0364();
    sub_2281A1504();
    sub_228391A70();
    sub_2281E0494(v5, &qword_280DDBAD0, MEMORY[0x277D85248]);

    v20 = swift_allocObject();
    v21 = v27;
    *(v20 + 16) = v27;
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    sub_2281E0500(&qword_27D824B18, sub_2281E0248, MEMORY[0x277CBCD60]);
    v22 = v21;
    sub_2283919A0();

    (*(v8 + 8))(v10, v7);
    swift_allocObject();
    v23 = v28;
    swift_unknownObjectWeakInit();
    sub_2281E0500(&qword_27D824B20, sub_2281E03D8, MEMORY[0x277CBCB10]);
    v24 = v29;
    v25 = sub_228391AC0();

    (*(v30 + 8))(v15, v24);
    *(v23 + v31) = v25;
  }

  return result;
}

unint64_t sub_2281DE420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v35 = a2;
  v5 = sub_228390610();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, a1, v5);
  if ((*(v6 + 88))(v8, v5) != *MEMORY[0x277D77BD0])
  {
    *a3 = 0;
    return (*(v6 + 8))(v8, v5);
  }

  v33 = a3;
  (*(v6 + 96))(v8, v5);
  v9 = *v8;
  v36 = MEMORY[0x277D84F90];
  v10 = (v9 & 0xFFFFFFFFFFFFFF8);
  if (v9 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2283930D0())
  {
    v12 = MEMORY[0x277D84F90];
    if (i)
    {
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      do
      {
        v15 = v13;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x22AAB6D80](v15, v9);
          }

          else
          {
            if (v15 >= v10[2])
            {
              goto LABEL_35;
            }

            v16 = *(v9 + 8 * v15 + 32);
          }

          v17 = v16;
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v15;
          if (v13 == i)
          {
            goto LABEL_21;
          }
        }

        MEMORY[0x22AAB5D20]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();
        v14 = v36;
      }

      while (v13 != i);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

LABEL_21:

    v36 = v12;
    if (v14 >> 62)
    {
      break;
    }

    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v33;
    if (!v9)
    {
      goto LABEL_40;
    }

LABEL_23:
    v19 = 0;
    v34 = v14 & 0xC000000000000001;
    v20 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v34)
      {
        v22 = v14;
        v23 = MEMORY[0x22AAB6D80](v19, v14);
      }

      else
      {
        if (v19 >= *(v20 + 16))
        {
          goto LABEL_37;
        }

        v22 = v14;
        v23 = *(v14 + 8 * v19 + 32);
      }

      v24 = v23;
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
      v26 = [v24 semanticIdentifier];
      v10 = [v35 semanticIdentifier];
      v27 = sub_228392C60();

      if (v27)
      {
        sub_228393210();
        v10 = *(v36 + 16);
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v19;
      v21 = v25 == v9;
      v14 = v22;
      if (v21)
      {
        v28 = v36;
        v10 = v33;
        goto LABEL_41;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v9 = sub_2283930D0();
  v10 = v33;
  if (v9)
  {
    goto LABEL_23;
  }

LABEL_40:
  v28 = MEMORY[0x277D84F90];
LABEL_41:

  if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
  {
    v29 = sub_2283930D0();
    if (!v29)
    {
      goto LABEL_51;
    }

LABEL_44:
    v30 = __OFSUB__(v29, 1);
    result = v29 - 1;
    if (v30)
    {
      __break(1u);
    }

    else if ((v28 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v28 + 16))
      {
        v31 = *(v28 + 8 * result + 32);
LABEL_49:
        v32 = v31;

        *v10 = v32;
        return result;
      }

      __break(1u);
      return result;
    }

    v31 = MEMORY[0x22AAB6D80](result, v28);
    goto LABEL_49;
  }

  v29 = *(v28 + 16);
  if (v29)
  {
    goto LABEL_44;
  }

LABEL_51:

  *v10 = 0;
  return result;
}

void sub_2281DE880(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2281DDE84(v2);
  }
}

uint64_t sub_2281DE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = sub_2283911B0();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_2283922A0();
  v4[26] = sub_228392290();
  v7 = sub_228392250();
  v4[27] = v7;
  v4[28] = v6;

  return MEMORY[0x2822009F8](sub_2281DE9DC, v7, v6);
}

uint64_t sub_2281DE9DC(uint64_t a1)
{
  v25 = v1;
  v2 = v1[21];
  sub_228391150();
  v3 = v2;
  v4 = sub_2283911A0();
  v5 = sub_2283925A0();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = v1[25];
    v6 = v1[22];
    v7 = v1[23];
    v8 = v1[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    v1[20] = v8;
    type metadata accessor for MedicationConceptDetailViewController(0);
    v11 = v8;
    v12 = sub_228392040();
    v14 = sub_2281C96FC(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s] Marking interaction shard as required during viewing DDI overview", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAB7B80](v10, -1, -1);
    MEMORY[0x22AAB7B80](v9, -1, -1);

    v15 = *(v7 + 8);
    v15(v23, v6);
  }

  else
  {
    v16 = v1[25];
    v17 = v1[22];
    v18 = v1[23];

    v15 = *(v18 + 8);
    v15(v16, v17);
  }

  v1[29] = v15;
  v19 = sub_2281DCFE8();
  v1[30] = v19;
  v1[2] = v1;
  v1[3] = sub_2281DEC54;
  v20 = swift_continuation_init();
  sub_2281E0600(0);
  v1[17] = v21;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2282B4368;
  v1[13] = &block_descriptor_6;
  v1[14] = v20;
  [v19 markInteractionsShardAsRequiredWithCompletion_];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_2281DEC54()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_2281DEDFC;
  }

  else
  {
    v5 = sub_2281DED84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2281DED84()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2281DEDFC()
{
  v29 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 168);

  swift_willThrow();

  sub_228391150();
  v4 = v3;
  v5 = v1;
  v6 = sub_2283911A0();
  v7 = sub_2283925C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 248);
    v26 = *(v0 + 192);
    v27 = *(v0 + 232);
    v9 = *(v0 + 168);
    v25 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136446466;
    *(v0 + 144) = v9;
    type metadata accessor for MedicationConceptDetailViewController(0);
    v12 = v9;
    v13 = sub_228392040();
    v15 = sub_2281C96FC(v13, v14, v28);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    *(v0 + 152) = v8;
    v16 = v8;
    sub_22818217C(0, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v17 = sub_228392020();
    v19 = sub_2281C96FC(v17, v18, v28);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_22816B000, v6, v7, "[%{public}s] Could not mark medication education/interaction shards as required: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v11, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);

    v27(v26, v25);
  }

  else
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 192);
    v22 = *(v0 + 176);

    v20(v21, v22);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2281DF080(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281ABE84(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

id MedicationConceptDetailViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_2281DF250()
{
}

id MedicationConceptDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationConceptDetailViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281DF32C(uint64_t a1)
{
}

Swift::Void __swiftcall MedicationConceptDetailViewController.presentMedicationsInputViewController()()
{
  v1 = v0;
  sub_2281E0300(0, &qword_27D8245A0, sub_2281DFB88);
  swift_allocObject();
  v2 = sub_228391890();
  v3 = *&v0[qword_27D824A90];
  v4 = objc_allocWithZone(type metadata accessor for MedicationsInputViewController(0));

  v5 = MedicationsInputViewController.init(schedulePublisher:medication:resetSchedule:restartingSchedule:)(v2, v3, 0, 0);
  v6 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v6 setModalPresentationStyle_];
  [v6 setModalInPresentation_];
  [v1 presentViewController:v6 animated:1 completion:0];
}

uint64_t MedicationConceptDetailViewController.getLogDoseViewController(medication:prefillLogDate:prefillDosage:)(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_22838F440();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31[-1] - v13;
  v15 = *(v9 + 16);
  v15(&v31[-1] - v13, a2, v8);
  type metadata accessor for MedicationsDoseLogViewModel(0);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = a1;
  *(v16 + 40) = a3;
  *(v16 + 48) = 1;
  *(v16 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus) = 1;
  v15((v16 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate), v14, v8);
  v17 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate;
  v18 = *(v9 + 32);
  v19 = a1;
  v18(v16 + v17, v14, v8);
  *(v16 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount) = *(v16 + 40);
  *(v16 + OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index) = 0;
  sub_22838F430();
  v31[0] = v19;
  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v20 = sub_228390F20();
  v22 = v21;
  sub_2281E00EC(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_228396260;
  *(v23 + 32) = v16;
  type metadata accessor for MedicationDoseLogListViewModel(0);
  v24 = swift_allocObject();
  v18(v24 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v12, v8);
  v25 = (v24 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v25 = v20;
  v25[1] = v22;
  *(v24 + 16) = v23;
  v26 = qword_27D824AA0;
  swift_beginAccess();
  v27 = *(v4 + v26);
  v28 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController(0));
  return MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v24, 0, v27, 0, 4, 0, 2, 0);
}

uint64_t sub_2281DF7F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2281DF8EC;

  return v6(a1);
}

uint64_t sub_2281DF8EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void _s19HealthMedicationsUI37MedicationConceptDetailViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + qword_27D824AB0);
  v3 = sub_228392000();
  v4 = v2;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA520);

  *v1 = v3;
  v1[1] = v4;
  *(v0 + qword_27D824AB8) = 0;
  *(v0 + qword_27D824AC0) = 0;
  *(v0 + qword_27D824AC8) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_2281DFAD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819D87C;

  return sub_2281DE8DC(a1, v4, v5, v6);
}

void sub_2281DFB88(uint64_t a1)
{
  if (!qword_280DDBA60)
  {
    sub_22817A958(255, &unk_280DDBA68, 0x277D11570);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBA60);
    }
  }
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_2281E006C(uint64_t a1, uint64_t a2)
{
  sub_2281E01F4(0, &qword_27D827C30, MEMORY[0x277D85720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2281E00EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2281E013C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22819D87C;

  return sub_2282E2D80(a1, v4);
}

void sub_2281E01F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2281E0248(uint64_t a1)
{
  if (!qword_27D824AF8)
  {
    sub_2281E0300(255, &qword_27D824B00, MEMORY[0x277D77BD8]);
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_2281E0364();
    sub_2281A1504();
    v1 = sub_2283917D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824AF8);
    }
  }
}

void sub_2281E0300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228391880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2281E0364()
{
  result = qword_27D824B08;
  if (!qword_27D824B08)
  {
    sub_2281E0300(255, &qword_27D824B00, MEMORY[0x277D77BD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B08);
  }

  return result;
}

void sub_2281E03D8(uint64_t a1)
{
  if (!qword_27D824B10)
  {
    sub_2281E0248(255);
    sub_22817A958(255, &qword_280DDB9E0, 0x277D115B8);
    sub_2281E0500(&qword_27D824B18, sub_2281E0248, MEMORY[0x277CBCD60]);
    v1 = sub_2283916D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824B10);
    }
  }
}

uint64_t sub_2281E0494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281E01F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281E0500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2281E0548(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22819DA1C;

  return sub_2281DF7F4(a1, v4);
}

void sub_2281E0600(uint64_t a1)
{
  if (!qword_27D824B38)
  {
    sub_22818217C(255, &qword_280DDB860, MEMORY[0x277D84948], 1);
    v1 = sub_228392350();
    if (!v2)
    {
      atomic_store(v1, &qword_27D824B38);
    }
  }
}

uint64_t AddMedicationItem.init(enabled:onTap:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0xD000000000000011;
  *(a4 + 8) = 0x800000022839A9D0;
  type metadata accessor for AddMedicationCell();
  sub_2281E075C();
  result = sub_22838FBB0();
  *(a4 + 40) = result;
  *(a4 + 48) = v9;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

unint64_t sub_2281E075C()
{
  result = qword_27D824B40;
  if (!qword_27D824B40)
  {
    type metadata accessor for AddMedicationCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B40);
  }

  return result;
}

uint64_t AddMedicationItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t AddMedicationItem.uniqueIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2283931D0();

  MEMORY[0x22AAB5C80](v1, v2);
  return 0xD000000000000012;
}

uint64_t static AddMedicationItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t AddMedicationItem.hashValue.getter()
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E08E0()
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E0934(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E097C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

unint64_t sub_2281E09AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2283931D0();

  MEMORY[0x22AAB5C80](v1, v2);
  return 0xD000000000000012;
}

uint64_t sub_2281E0A28(uint64_t a1)
{
  v2 = sub_2281E3590();

  return MEMORY[0x282169440](a1, v2);
}

id sub_2281E0A94()
{
  sub_22817A958(0, &qword_27D823CB0, 0x277CCA8D8);
  v0 = sub_228392C30();
  v1 = sub_228391FC0();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setContentMode_];

  return v4;
}

id sub_2281E0BA8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v1 = sub_228391FC0();

  [v0 setText_];

  sub_228392000();
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD000000000000019, 0x80000002283AA880);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  v4 = v2;
  [v4 setIsAccessibilityElement_];
  sub_22838F0C0();
  v5 = sub_228391FC0();

  [v4 setAccessibilityLabel_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setNumberOfLines_];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v6 = sub_228392AD0();
  [v4 setFont_];

  v7 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  return v4;
}

id sub_2281E0E9C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281E0EFC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v1 = sub_228391FC0();

  [v0 setText_];

  sub_228392000();
  v2 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001ALL, 0x80000002283AA840);

  MEMORY[0x22AAB5C80](0x4C6C69617465442ELL, 0xEC0000006C656261);

  v3 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  return v2;
}

id sub_2281E1154()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2281E1218()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel];
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v6 = sub_228391FC0();

    [v5 setText_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setNumberOfLines_];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = [objc_opt_self() systemBlueColor];
    [v5 setTextColor_];

    v9 = sub_228391FC0();
    [v4 setAccessibilityIdentifier_];

    v10 = *&v4[v1];
    *&v4[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id AddMedicationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for AddMedicationView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281E1688();

  return v9;
}

void sub_2281E1688()
{
  sub_22838F7B0();
  sub_228392B00();
  v1 = sub_2281E0A74();
  [v0 addSubview_];

  v2 = sub_2281E0B88();
  [v0 addSubview_];

  v3 = sub_2281E0E7C();
  [v0 addSubview_];

  v4 = sub_2281E1154();
  [v0 addSubview_];

  v5 = sub_2281E1218();
  [v0 addSubview_];

  v63 = objc_opt_self();
  sub_228180ED0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22839A9E0;
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView;
  v8 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___iconView] topAnchor];
  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:12.0];

  *(v6 + 32) = v10;
  v11 = [*&v0[v7] leadingAnchor];
  v12 = [v0 &selRef_logTimeChanged_ + 1];
  v13 = [v11 &selRef_resignFirstResponder + 6];

  *(v6 + 40) = v13;
  v14 = [*&v0[v7] widthAnchor];
  v15 = [v14 constraintEqualToConstant_];

  *(v6 + 48) = v15;
  v16 = [*&v0[v7] heightAnchor];
  v17 = [v16 &selRef:60.0 setDateTimeStyle:? + 1];

  *(v6 + 56) = v17;
  v18 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel;
  v19 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedLabel] &selRef_logTimeChanged_ + 1];
  v20 = [*&v0[v7] trailingAnchor];
  v21 = [v19 &selRef_resignFirstResponder + 6];

  *(v6 + 64) = v21;
  v22 = [*&v0[v18] trailingAnchor];
  v23 = [v0 trailingAnchor];
  v24 = [v22 &selRef_resignFirstResponder + 6];

  *(v6 + 72) = v24;
  v25 = [*&v0[v18] topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 &selRef_resignFirstResponder + 6];

  *(v6 + 80) = v27;
  v28 = [*&v0[v18] bottomAnchor];
  v29 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel;
  v30 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___detailLabel] topAnchor];
  v31 = [v28 &selRef_resignFirstResponder + 6];

  *(v6 + 88) = v31;
  v32 = [*&v0[v29] leadingAnchor];
  v33 = [*&v0[v18] leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v6 + 96) = v34;
  v35 = [*&v0[v29] trailingAnchor];
  v36 = [*&v0[v18] trailingAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v6 + 104) = v37;
  v38 = [*&v0[v29] bottomAnchor];
  v39 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView;
  v40 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___separatorView] topAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:-12.0];

  *(v6 + 112) = v41;
  v42 = [*&v0[v39] heightAnchor];
  v43 = [v42 constraintEqualToConstant_];

  *(v6 + 120) = v43;
  v44 = [*&v0[v39] leadingAnchor];
  v45 = [*&v0[v18] leadingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v6 + 128) = v46;
  v47 = [*&v0[v39] trailingAnchor];
  v48 = [*&v0[v18] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v6 + 136) = v49;
  v50 = [*&v0[v39] bottomAnchor];
  v51 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel;
  v52 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationView____lazy_storage___addMedPromptLabel] topAnchor];
  v53 = [v50 constraintEqualToAnchor:v52 constant:-14.0];

  *(v6 + 144) = v53;
  v54 = [*&v0[v51] leadingAnchor];
  v55 = [*&v0[v7] trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:12.0];

  *(v6 + 152) = v56;
  v57 = [*&v0[v51] trailingAnchor];
  v58 = [*&v0[v18] trailingAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v6 + 160) = v59;
  v60 = [*&v0[v51] bottomAnchor];
  v61 = [v0 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-12.0];

  *(v6 + 168) = v62;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v64 = sub_228392190();

  [v63 activateConstraints_];
}

uint64_t sub_2281E1F44(uint64_t a1, uint64_t *a2)
{
  sub_2281E3284(a1, v6, &qword_280DDCD50, sub_22817A700);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2281E2E30();
  return sub_2281E32F0(v6, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281E1FE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  return sub_2281E3284(v1 + v3, a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t sub_2281E205C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2281E2E30();
  return sub_2281E32F0(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_2281E20E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281E2148;
}

uint64_t sub_2281E2148(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2281E2E30();
  }

  return result;
}

id sub_2281E217C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView);
  }

  else
  {
    type metadata accessor for AddMedicationView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 addTarget:v0 action:sel_actionButtonTappedWithSender_ forControlEvents:64];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281E2228(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AddMedicationCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for AddMedicationCell();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_2281E2460();

  return v10;
}

void sub_2281E2460()
{
  v1 = v0;
  sub_22838F7B0();
  sub_228392B00();
  v2 = [v0 contentView];
  v3 = sub_2281E217C();
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F00;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView;
  v7 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView] topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v1[v6] bottomAnchor];
  v12 = [v1 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v14;
  v15 = [*&v1[v6] leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v5 + 48) = v18;
  v19 = [*&v1[v6] trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v5 + 56) = v22;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v23 = sub_228392190();

  [v4 activateConstraints_];
}

uint64_t sub_2281E2768()
{
  v1 = v0;
  sub_2281E35E4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = sub_228391330();
  v12 = type metadata accessor for AddMedicationCell();
  v20.receiver = v1;
  v20.super_class = v12;
  objc_msgSendSuper2(&v20, sel__bridgedUpdateConfigurationUsingState_, v11);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v13 = sub_2283913A0();
    if ((*(*(v13 - 8) + 48))(v10, 1, v13))
    {
      v14 = MEMORY[0x277D74BD0];
      sub_2281E3284(v10, v8, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v8);
      v15 = v10;
      return sub_2281E32F0(v15, &unk_280DDBCD0, v14);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v18 = v10;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v16 = sub_2283913A0();
    if ((*(*(v16 - 8) + 48))(v5, 1, v16))
    {
      v14 = MEMORY[0x277D74BD0];
      sub_2281E3284(v5, v8, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      MEMORY[0x22AAB6420](v8);
      v15 = v5;
      return sub_2281E32F0(v15, &unk_280DDBCD0, v14);
    }

    v19 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    v18 = v5;
  }

  return MEMORY[0x22AAB6420](v18);
}

uint64_t sub_2281E2AFC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  sub_2281E3284(v1 + v6, v20, &qword_280DDCD50, sub_22817A700);
  if (v20[3])
  {
    sub_22817A700();
    if (swift_dynamicCast())
    {
      v19();
    }
  }

  else
  {
    sub_2281E32F0(v20, &qword_280DDCD50, sub_22817A700);
  }

  sub_228391150();
  v8 = v1;
  v9 = sub_2283911A0();
  v10 = sub_2283925C0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v2;
    v13 = v12;
    v20[0] = v12;
    *v11 = 136446210;
    sub_2281E3284(v1 + v6, v18, &qword_280DDCD50, sub_22817A700);
    sub_2281E35E4(0, &qword_280DDCD50, sub_22817A700);
    v14 = sub_228392040();
    v16 = sub_2281C96FC(v14, v15, v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_22816B000, v9, v10, "Incorrect view model for AddMedicationItem: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAB7B80](v13, -1, -1);
    MEMORY[0x22AAB7B80](v11, -1, -1);

    return (*(v3 + 8))(v5, v17);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_2281E2E30()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2281E35E4(0, &qword_280DDB950, MEMORY[0x277D75058]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v11 = &v34[-v10 - 8];
  v12 = OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  swift_beginAccess();
  sub_2281E3284(&v1[v12], v36, &qword_280DDCD50, sub_22817A700);
  if (!v36[3])
  {
    sub_2281E32F0(v36, &qword_280DDCD50, sub_22817A700);
LABEL_9:
    sub_228391150();
    v24 = v1;
    v25 = sub_2283911A0();
    v26 = sub_2283925C0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v2;
      v29 = v28;
      v36[0] = v28;
      *v27 = 136446210;
      sub_2281E3284(&v1[v12], v34, &qword_280DDCD50, sub_22817A700);
      sub_2281E35E4(0, &qword_280DDCD50, sub_22817A700);
      v30 = sub_228392040();
      v32 = sub_2281C96FC(v30, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_22816B000, v25, v26, "Incorrect view model for AddMedicationItem: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAB7B80](v29, -1, -1);
      MEMORY[0x22AAB7B80](v27, -1, -1);

      return (*(v3 + 8))(v5, v33);
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  sub_22817A700();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v13 = v35;
  v14 = objc_opt_self();
  v15 = &selRef_linkColor;
  if (!v13)
  {
    v15 = &selRef_secondaryLabelColor;
  }

  v16 = [v14 *v15];
  v17 = sub_2281E217C();
  sub_228392E00();

  v18 = sub_228392DE0();
  if (!(*(*(v18 - 8) + 48))(v11, 1, v18))
  {
    v19 = v16;
    sub_228392D60();
  }

  v20 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView];
  v21 = MEMORY[0x277D75058];
  sub_2281E3284(v11, v9, &qword_280DDB950, MEMORY[0x277D75058]);
  v22 = v20;
  sub_228392E10();

  return sub_2281E32F0(v11, &qword_280DDB950, v21);
}

uint64_t sub_2281E3284(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2281E35E4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2281E32F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281E35E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_2281E3364(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2281E33A0()
{
  result = qword_27D824B80;
  if (!qword_27D824B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B80);
  }

  return result;
}

unint64_t sub_2281E33F8()
{
  result = qword_27D824B88;
  if (!qword_27D824B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B88);
  }

  return result;
}

unint64_t sub_2281E3590()
{
  result = qword_27D824B90;
  if (!qword_27D824B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824B90);
  }

  return result;
}

void sub_2281E35E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for VisualizationModificationStepViewController(uint64_t a1)
{
  result = qword_27D824BB0;
  if (!qword_27D824BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2281E36F4(uint64_t a1, uint64_t a2, void *a3)
{
  v58 = a1;
  sub_2281E4A38(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v52 - v6;
  sub_2281E4A38(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = v52 - v9;
  v10 = sub_2283909E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2283908E0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_27D824B98;
  result = sub_2283908B0();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v54 = v13;
  v55 = v7;
  v63 = v11;
  v61 = v10;
  v56 = a2;
  v59 = a3;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = *(v15 + 16);
  v21(v17, result + v20, v14);

  v22 = sub_2283908D0();
  v23 = *(v15 + 8);
  v23(v17, v14);
  v64 = v22;
  sub_2281E4A8C(0, &qword_27D824BC8, sub_2281AF0A0);
  swift_allocObject();
  *(v62 + v18) = sub_228391890();
  v60 = qword_27D824BA0;
  result = sub_2283908A0();
  if (!*(result + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v53 = v18;
  v21(v17, result + v20, v14);

  v24 = sub_2283908D0();
  v23(v17, v14);
  v64 = v24;
  swift_allocObject();
  *(v62 + v60) = sub_228391890();
  v25 = qword_27D824BA8;
  result = sub_2283908A0();
  if (*(result + 16))
  {
    v21(v17, result + v20, v14);

    v26 = sub_2283908D0();
    v23(v17, v14);
    v64 = v26;
    swift_allocObject();
    v27 = sub_228391890();
    v28 = v61;
    v29 = v62;
    *(v62 + v25) = v27;
    *(v29 + qword_27D828AE0) = MEMORY[0x277D84FA0];
    v30 = v25;
    v31 = v54;
    (*(v63 + 16))(v54, v59, v28);
    sub_2281E4A8C(0, &qword_27D824BD0, MEMORY[0x277D11640]);
    swift_allocObject();
    v32 = sub_228391890();
    v33 = *(v29 + v53);
    v34 = *(v29 + v60);
    v35 = *(v29 + v30);
    type metadata accessor for VisualizationModificationDataSource(0);
    v36 = swift_allocObject();
    v37 = qword_27D8280A8;
    v38 = sub_228390D50();
    (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
    sub_2281E4AF0(0);
    swift_allocObject();

    *(v36 + v37) = sub_228391890();
    *(v36 + qword_27D8280D0) = MEMORY[0x277D84FA0];
    v52[1] = v32;
    *(v36 + qword_27D8280B0) = v32;
    *(v36 + qword_27D8280B8) = v33;
    *(v36 + qword_27D8280C0) = v34;
    *(v36 + qword_27D8280C8) = v35;

    sub_228391870();
    sub_228391870();
    v39 = v64;
    sub_228391870();
    v40 = v66;
    sub_228391870();
    v41 = v65;
    sub_2283478F0(v31, v39, v40, v65);

    v42 = *(v63 + 8);
    v63 += 8;
    v42(v31, v61);
    *(swift_allocObject() + 16) = 0;
    v43 = sub_228390380();
    sub_228344684();

    v44 = v58;
    v45 = v55;
    sub_228181FB4(v58, v55);
    sub_228181FB4(v45, v29 + qword_27D828B18);
    sub_2281E4B7C(0);
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    v47 = qword_27D8280A8;
    swift_beginAccess();
    v48 = *(v43 + v47);
    *(v29 + qword_27D824D88) = v46;
    *(v46 + 24) = v48;
    *(v29 + qword_27D824D90) = v56;
    sub_2283901F0();
    sub_228182110(0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_228397F40;
    v50 = MEMORY[0x277D10F80];
    *(v49 + 32) = v43;
    *(v49 + 40) = v50;
    swift_retain_n();

    sub_228390220();
    v51 = sub_228390480();
    sub_2281E4648(v45, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

    v42(v59, v61);
    sub_2281E4648(v44, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
    return v51;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2281E3EF4(void *a1)
{
  sub_2281E4A38(0, &qword_27D824BC0, sub_228199F78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  sub_228199F78(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v10 animated:1];

  v11 = sub_22838F710();
  v26 = [a1 cellForItemAtIndexPath_];

  if (!v26)
  {
    return;
  }

  type metadata accessor for ColorCell();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    v16 = v26;

    return;
  }

  v13 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  v14 = v12;
  swift_beginAccess();
  sub_22817E6C8(v14 + v13, v27);
  if (!v27[3])
  {

    sub_2281E4708(v27, sub_228181D50);
    (*(v7 + 56))(v4, 1, 1, v6);
    goto LABEL_10;
  }

  sub_22818217C(0, &qword_280DDCD60, MEMORY[0x277D10D48], 1);
  v15 = swift_dynamicCast();
  (*(v7 + 56))(v4, v15 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {

LABEL_10:
    sub_2281E4648(v4, &qword_27D824BC0, sub_228199F78);
    return;
  }

  sub_2281E46A4(v4, v9);
  sub_228390470();
  v17 = sub_2283901E0();

  if (!*(v17 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  swift_unknownObjectRetain();

  swift_getObjectType();
  v18 = sub_22838FD40();
  swift_unknownObjectRelease();
  v19 = sub_22838F750();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v19 >= *(v18 + 16))
  {
LABEL_30:
    __break(1u);
    return;
  }

  v20 = v18 + 16 * v19;
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);

  if (v22 == 0xD000000000000011 && 0x80000002283AA970 == v21 || (sub_228393460() & 1) != 0 || v22 == 0xD000000000000012 && 0x80000002283AA990 == v21 || (sub_228393460() & 1) != 0 || v22 == 0x756F72676B636162 && v21 == 0xEF726F6C6F43646ELL)
  {
  }

  else
  {
    v24 = sub_228393460();

    if ((v24 & 1) == 0)
    {
      sub_2281E4708(v9, sub_228199F78);

      return;
    }
  }

  v23 = sub_2283908D0();
  v27[0] = v23;
  sub_228391850();

  sub_2281E4708(v9, sub_228199F78);
}

uint64_t sub_2281E4410(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_22838F760();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_2281E3EF4(v10);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2281E453C()
{
}

id sub_2281E459C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualizationModificationStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2281E45D4(uint64_t a1)
{
}

uint64_t sub_2281E4648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281E4A38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281E46A4(uint64_t a1, uint64_t a2)
{
  sub_228199F78(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281E4708(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2281E4768()
{
  v3 = sub_2283908E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27D824B98;
  v8 = sub_2283908B0();
  if (!*(v8 + 16))
  {
    goto LABEL_5;
  }

  v1 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v0 = *(v4 + 16);
  v0(v6, v8 + v1, v3);

  v9 = sub_2283908D0();
  v2 = *(v4 + 8);
  v2(v6, v3);
  v15 = v9;
  sub_2281E4A8C(0, &qword_27D824BC8, sub_2281AF0A0);
  swift_allocObject();
  *(v14 + v7) = sub_228391890();
  v7 = qword_27D824BA0;
  v8 = sub_2283908A0();
  if (!*(v8 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v0(v6, v8 + v1, v3);

  v10 = sub_2283908D0();
  v2(v6, v3);
  v15 = v10;
  swift_allocObject();
  *(v14 + v7) = sub_228391890();
  v7 = qword_27D824BA8;
  v8 = sub_2283908A0();
  if (!*(v8 + 16))
  {
    __break(1u);
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v0(v6, v8 + v1, v3);

  v11 = sub_2283908D0();
  v2(v6, v3);
  v15 = v11;
  swift_allocObject();
  v12 = sub_228391890();
  v13 = v14;
  *(v14 + v7) = v12;
  *(v13 + qword_27D828AE0) = MEMORY[0x277D84FA0];
  sub_228393300();
  __break(1u);
}

void sub_2281E4A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2281E4A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228391880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2281E4AF0(uint64_t a1)
{
  if (!qword_27D827800)
  {
    sub_2281E4A38(255, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v1 = sub_228391880();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827800);
    }
  }
}

void sub_2281E4B7C(uint64_t a1)
{
  if (!qword_27D824BD8)
  {
    v2 = type metadata accessor for VisualizationModificationDataSource(255);
    v3 = sub_2281E4C10(&qword_27D824BE0, type metadata accessor for VisualizationModificationDataSource, &protocol conformance descriptor for VisualizationModificationDataSource);
    v5 = type metadata accessor for SpecificationStepViewController.MedicationOnboardingStepObservableDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D824BD8);
    }
  }
}

uint64_t sub_2281E4C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2281E4C58(uint64_t a1)
{
  result = type metadata accessor for MedicationOnboardingFlowManager(319);
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

id sub_2281E4D74(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  v2 = objc_allocWithZone(MEMORY[0x277D751E0]);
  type metadata accessor for OnboardingStepViewController(0, *(v1 + qword_27D828AF8), *(v1 + qword_27D828AF8 + 8), v3);
  v4 = [v2 initWithBarButtonSystemItem:1 target:sub_228393450() action:sel_hxui_cancelButtonTapped];
  swift_unknownObjectRelease();
  return v4;
}

id sub_2281E4E68(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2281E4ECC(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  v2 = sub_228391FC0();
  v3 = [objc_opt_self() systemImageNamed_];

  v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
  type metadata accessor for OnboardingStepViewController(0, *(v1 + qword_27D828AF8), *(v1 + qword_27D828AF8 + 8), v5);
  v6 = [v4 initWithImage:v3 style:0 target:sub_228393450() action:sel_tapToRadarButtonTappedWithSender_];

  swift_unknownObjectRelease();
  return v6;
}

void sub_2281E4FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OnboardingStepViewController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27D828AF8), *((*MEMORY[0x277D85000] & *v4) + qword_27D828AF8 + 8), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  sub_2281E51F0();
  sub_2281E5388();
  v6 = v4 + qword_27D824BF0;
  v7 = v6[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)];
  if (v7 == 64 || (v7 & 0xE0) != 0x40)
  {
    sub_2281E50AC();
  }
}

void sub_2281E50AC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2281E7400(0);
    [v2 addGestureRecognizer_];

    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 navigationBar];

      v7 = sub_2281E7400(1);
      [v6 addGestureRecognizer_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2281E51A8(void *a1)
{
  v4 = a1;
  sub_2281E4FEC(v4, v1, v2, v3);
}

void sub_2281E51F0()
{
  v1 = v0;
  v2 = sub_2283902A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390290();
  v6 = sub_228390280();
  (*(v3 + 8))(v5, v2);
  v7 = [v1 navigationItem];
  if (v6)
  {
    sub_228180ED0();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_228397F20;
    *(v8 + 32) = sub_2281E4E48();
    *(v8 + 40) = sub_2281E4D54();
    sub_22817A958(0, &qword_27D824138, 0x277D751E0);
    v9 = sub_228392190();

    v10 = &selRef_setRightBarButtonItems_animated_;
  }

  else
  {
    v9 = sub_2281E4D54();
    v10 = &selRef_setRightBarButtonItem_animated_;
  }

  [v7 *v10];
}

void sub_2281E5388()
{
  v1 = *&v0[qword_27D824C00];
  if (v1 && v0[qword_27D824C08] == 1)
  {
    v31 = v1;
    v2 = [v0 headerView];
    v3 = [v2 customIconContainerView];

    if (v3)
    {

      v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
      [v4 setTranslatesAutoresizingMaskIntoConstraints_];
      [v4 setContentMode_];
      v5 = [v0 headerView];
      [v5 addSubview_];

      v6 = [v0 contentView];
      v7 = [objc_opt_self() clearColor];
      [v6 setBackgroundColor_];

      sub_228180ED0();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_228397F00;
      v9 = [v0 headerView];
      v10 = [v9 topAnchor];

      v11 = [v4 topAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      *(v8 + 32) = v12;
      v13 = [v0 headerView];
      v14 = [v13 centerXAnchor];

      v15 = [v4 centerXAnchor];
      v16 = [v14 constraintEqualToAnchor_];

      *(v8 + 40) = v16;
      v17 = [v0 headerView];
      v18 = [v17 widthAnchor];

      v19 = [v4 widthAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      *(v8 + 48) = v20;
      v21 = [v4 heightAnchor];

      v22 = [v21 constraintEqualToConstant_];
      *(v8 + 56) = v22;
      v32 = v8;
      v23 = &v0[qword_27D824BF0];
      if (v23[*(type metadata accessor for MedicationOnboardingFlowManager(0) + 28)] == 160)
      {
        v24 = [v0 contentView];
        v25 = [v24 topAnchor];

        v26 = [v0 headerView];
        v27 = [v26 bottomAnchor];

        v28 = [v25 constraintEqualToAnchor:v27 constant:15.0];
        MEMORY[0x22AAB5D20]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2283921E0();
        }

        sub_228392230();
      }

      v29 = objc_opt_self();
      sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
      v30 = sub_228392190();

      [v29 activateConstraints_];
    }

    else
    {
    }
  }
}

void *sub_2281E5880()
{
  if ([v0 isFirstResponder])
  {
    v1 = v0;
  }

  else
  {
    v2 = [v0 subviews];
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v3 = sub_2283921A0();

    if (v3 >> 62)
    {
LABEL_18:
      v4 = sub_2283930D0();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAB6D80](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v0 = sub_2281E5880();

      if (v0)
      {

        return v0;
      }
    }

    return 0;
  }

  return v0;
}

void sub_2281E59C4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_228392F00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = v0 + qword_27D824BF0;
  v7 = *(v6 + *(type metadata accessor for MedicationOnboardingFlowManager(0) + 28));
  v8 = v7 >> 5;
  if (v7 >> 5 > 2)
  {
    if (v8 == 5)
    {
      if (v7 == 160)
      {
        goto LABEL_15;
      }
    }

    else if (v8 == 4 || v7 == 96)
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_2281ED058();
    (*(*(AssociatedTypeWitness - 8) + 56))(v5, 1, 1, AssociatedTypeWitness);

    sub_228391850();

    (*(v3 + 8))(v5, v2);
    goto LABEL_15;
  }

  if (v8)
  {
    v9 = v8 == 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 && (v7 & 1) != 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_2281E5D7C(8);
  sub_2281E63A4();
}

void sub_2281E5BD4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 endEditing_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2281E5C38(void *a1)
{
  v1 = a1;
  sub_2281E5BD4();
}

void sub_2281E5C80()
{
  sub_2281E5D7C(8);

  sub_2281E63A4();
}

void sub_2281E5CAC(void *a1)
{
  v1 = a1;
  sub_2281E5C80();
}

id sub_2281E5CF4()
{
  sub_2281E5D7C(5);

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

void sub_2281E5D34(void *a1)
{
  v1 = a1;
  sub_2281E5CF4();
}

uint64_t sub_2281E5D7C(uint64_t a1)
{
  sub_2281E78E8(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = v1 + qword_27D824BF0;
  result = type metadata accessor for MedicationOnboardingFlowManager(0);
  v10 = *(v8 + *(result + 28));
  if (v10 >> 5 != 2 || v10 != 64)
  {
    sub_228391870();
    v11 = v19;
    if (v19)
    {
      [v19 scheduleType];
    }

    sub_228390DD0();
    sub_228390890();

    sub_228390880();
    sub_228390830();

    sub_228391870();
    v12 = v19;
    if (v19)
    {
      v13 = [v19 endDateTime];

      if (v13)
      {
        sub_22838F3E0();

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      v16 = sub_22838F440();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v5, v14, 1, v16);
      sub_2281E793C(v5, v7);
      (*(v17 + 48))(v7, 1, v16);
    }

    else
    {
      v15 = sub_22838F440();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    sub_2281E79BC(v7, &qword_280DDCDB0, MEMORY[0x277CC9578]);
    sub_228390D90();
    swift_allocObject();
    sub_228390D80();
    sub_228390E70();
    sub_228390E60();
  }

  return result;
}

uint64_t sub_2281E6144()
{
  sub_2281E78E8(0, &qword_27D824CC8, MEMORY[0x277D117F0]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_228390540();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390580();
  sub_228390570();
  sub_228390560();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2281E79BC(v3, &qword_27D824CC8, MEMORY[0x277D117F0]);
    return _s19HealthMedicationsUI0B10TapToRadarC19medicationsTracking14viewControllerySo06UIViewJ0CSg_tFZ_0(v0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_228390530();
    MEMORY[0x22AAB40C0](v7, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2281E6330(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_228392F90();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_2281E63A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_2281E78E8(0, &qword_27D827C30, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = &v0[qword_27D824BF0];
  MedicationOnboardingFlowManager.makeNextViewControllerForStep()(qword_27D824BF0);
  if (!v7)
  {
    sub_2283922B0();
    v12 = sub_2283922D0();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    sub_2283922A0();
    v13 = v0;
    v14 = sub_228392290();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = ObjectType;
    sub_2281DC568(0, 0, v5, &unk_22839ACB8, v15);

    return;
  }

  v8 = v7;
  v9 = type metadata accessor for MedicationOnboardingFlowManager(0);
  sub_228391870();
  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = v6[*(v9 + 28)];
    if (v11 >> 5 > 2 && v11 >> 5 == 3 && v11 == 96)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v8;
      v18 = objc_allocWithZone(MEMORY[0x277D115A0]);
      v19 = v1;
      v20 = v8;
      v8 = [v18 init];
      v21 = swift_allocObject();
      v21[2] = sub_2281E78BC;
      v21[3] = v17;
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v19;
      v21[7] = ObjectType;
      aBlock[4] = sub_22817E0E8;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2281A2F3C;
      aBlock[3] = &block_descriptor_7;
      v22 = _Block_copy(aBlock);
      v23 = v19;

      [v8 checkIncompatibilityForSchedule:v10 completion:v22];
      _Block_release(v22);

      goto LABEL_9;
    }
  }

  [v1 showViewController:v8 sender:v1];
LABEL_9:
}

uint64_t sub_2281E66C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2283911B0();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_2283922A0();
  v5[8] = sub_228392290();
  v8 = sub_228392250();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_2281E67BC, v8, v7);
}

uint64_t sub_2281E67BC()
{
  v1 = [*(v0 + 24) buttonTray];
  [v1 showButtonsBusy];

  sub_228390890();
  sub_228390880();
  sub_228390840();

  *(v0 + 88) = sub_228390660();

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_2281E68C8;

  return sub_22836DF24();
}

uint64_t sub_2281E68C8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_2281E6AD0;
  }

  else
  {
    v5 = sub_2281E6A04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2281E6A04()
{
  v1 = v0[11];
  v2 = v0[3];

  sub_2281E6E0C();
  sub_2281E6D30();
  sub_2281E74DC(v1);

  [v2 dismissViewControllerAnimated:1 completion:0];
  v3 = [v2 buttonTray];
  [v3 showButtonsAvailable];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2281E6AD0()
{
  v24 = v0;
  v1 = *(v0 + 104);

  sub_228391150();
  v2 = v1;
  v3 = sub_2283911A0();
  v4 = sub_2283925C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 48);
    v22 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446722;
    v10 = sub_228393600();
    v12 = sub_2281C96FC(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_2281C96FC(0xD000000000000023, 0x80000002283AAC50, &v23);
    *(v8 + 22) = 2080;
    *(v0 + 16) = v5;
    v13 = v5;
    sub_228192C1C();
    v14 = sub_228392020();
    v16 = sub_2281C96FC(v14, v15, &v23);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_22816B000, v3, v4, "[%{public}s.%{public}s]: Failed to save medication with %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAB7B80](v9, -1, -1);
    MEMORY[0x22AAB7B80](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2281E6D30()
{
  sub_228390890();
  sub_228390880();
  sub_228390830();

  sub_22817A958(0, &qword_280DDBAF0, 0x277CBEBD0);
  sub_2283925F0();
  sub_2283907E0();
  swift_allocObject();
  sub_228390700();
  if ((sub_228390750() & 1) == 0)
  {
    type metadata accessor for MedicationOnboardingFlowManager(0);
    sub_228390760();
  }
}

void sub_2281E6E0C()
{
  swift_getObjectType();
  v0 = sub_2283911B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391150();
  v4 = sub_2283911A0();
  v5 = sub_2283925A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v8 = sub_228393600();
    v10 = sub_2281C96FC(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22816B000, v4, v5, "[%{public}s]: Submitting Tips Discoverability Signal", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AAB7B80](v7, -1, -1);
    MEMORY[0x22AAB7B80](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v11 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v12 = [v11 Signals];
  swift_unknownObjectRelease();
  v13 = [v12 source];
  v14 = *MEMORY[0x277CCE3A8];
  sub_2281E70E8();
  v15 = objc_allocWithZone(MEMORY[0x277CF1168]);
  v16 = sub_228391FC0();
  v17 = sub_228391FC0();

  v18 = [v15 initWithContentIdentifier:v16 context:v14 osBuild:v17 userInfo:0];

  [v13 sendEvent_];
}

uint64_t sub_2281E70E8()
{
  v0 = sub_228391FC0();
  result = MGGetStringAnswer();
  if (result)
  {
    v2 = result;
    v3 = sub_228392000();
    v5 = v4;

    MEMORY[0x22AAB5C80](v3, v5);

    return 760434537;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2281E71B8()
{

  sub_2281E7A18(v0 + qword_27D824BF0);

  v1 = *(v0 + qword_27D824C40);
}

id sub_2281E728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OnboardingStepViewController(0, *((*MEMORY[0x277D85000] & *v4) + qword_27D828AF8), *((*MEMORY[0x277D85000] & *v4) + qword_27D828AF8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_2281E7308(uint64_t a1)
{

  sub_2281E7A18(a1 + qword_27D824BF0);

  v2 = *(a1 + qword_27D824C40);
}

id sub_2281E7400(char a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v7 = v3;
    sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
    v4 = sub_228393450();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_endEditing_];
  swift_unknownObjectRelease();
  [v5 setCancelsTouchesInView_];
  return v5;
}

void sub_2281E74DC(unint64_t a1)
{
  v2 = sub_22838F440();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_22838F810();
  sub_22838F800();
  v12 = sub_22838F7F0();

  v20 = [v12 authorizationStatus];

  if (a1 >> 62)
  {
LABEL_19:
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = sub_2283930D0();
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v22 = a1 & 0xC000000000000001;
  v14 = v3 + 1;
  while (v23 != v13)
  {
    if (v22)
    {
      v15 = MEMORY[0x22AAB6D80](v13, a1);
    }

    else
    {
      if (v13 >= *(v21 + 16))
      {
        goto LABEL_18;
      }

      v15 = *(a1 + 8 * v13 + 32);
    }

    v3 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v16 = [v15 creationDate];
    sub_22838F3E0();

    sub_22838F430();
    sub_22838F350();
    v17 = *v14;
    (*v14)(v6, v2);
    LOBYTE(v16) = sub_22838F3A0();

    v17(v9, v2);
    v17(v11, v2);
    ++v13;
    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  if (v20 != 2)
  {
    v18 = [objc_opt_self() defaultCenter];
    if (qword_27D8232B0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    [v18 postNotificationName:qword_27D824A88 object:0];
  }
}

uint64_t sub_2281E77FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22819D87C;

  return sub_2281E66C8(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2281E78E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2281E793C(uint64_t a1, uint64_t a2)
{
  sub_2281E78E8(0, &qword_280DDCDB0, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2281E79BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2281E78E8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2281E7A18(uint64_t a1)
{
  v2 = type metadata accessor for MedicationOnboardingFlowManager(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InteractionSummaryItemState.hash(into:)()
{
  if (!*v0)
  {
    v1 = 0;
    return MEMORY[0x22AAB70D0](v1);
  }

  if (*v0 == 1)
  {
    v1 = 2;
    return MEMORY[0x22AAB70D0](v1);
  }

  MEMORY[0x22AAB70D0](1);

  return sub_2281DB0C8();
}

uint64_t InteractionSummaryItemState.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8();
      return sub_228393570();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AAB70D0](v2);
  return sub_228393570();
}

uint64_t sub_2281E7B9C()
{
  v1 = *v0;
  sub_228393520();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8();
      return sub_228393570();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AAB70D0](v2);
  return sub_228393570();
}

uint64_t sub_2281E7C10()
{
  if (!*v0)
  {
    v1 = 0;
    return MEMORY[0x22AAB70D0](v1);
  }

  if (*v0 == 1)
  {
    v1 = 2;
    return MEMORY[0x22AAB70D0](v1);
  }

  MEMORY[0x22AAB70D0](1);

  return sub_2281DB0C8();
}

uint64_t sub_2281E7C90(uint64_t a1)
{
  v2 = *v1;
  sub_228393520();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8();
      return sub_228393570();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x22AAB70D0](v3);
  return sub_228393570();
}

unint64_t InteractionSummaryItem.itemState.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_2281E8520(v2);
}

void *InteractionSummaryItem.filteringMedication.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t InteractionSummaryItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void *InteractionSummaryItem.__allocating_init(itemState:filteringMedication:listManager:healthStore:didSelectCellCallback:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *a1;
  type metadata accessor for InteractionSummaryItemCell();
  sub_2281E864C(qword_280DDC3F0, 255, type metadata accessor for InteractionSummaryItemCell, &protocol conformance descriptor for InteractionSummaryItemCell);
  v12[8] = sub_22838FBB0();
  v12[9] = v14;
  v12[2] = v13;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;
  return v12;
}

void *InteractionSummaryItem.init(itemState:filteringMedication:listManager:healthStore:didSelectCellCallback:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  type metadata accessor for InteractionSummaryItemCell();
  sub_2281E864C(qword_280DDC3F0, 255, type metadata accessor for InteractionSummaryItemCell, &protocol conformance descriptor for InteractionSummaryItemCell);
  v6[8] = sub_22838FBB0();
  v6[9] = v13;
  v6[2] = v12;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t sub_2281E7EF8(uint64_t a1)
{
  sub_2283920B0();
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x22AAB70D0](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x22AAB70D0](v3);
  }

  MEMORY[0x22AAB70D0](1);

  return sub_2281DB0C8();
}

uint64_t InteractionSummaryItem.deinit()
{
  sub_2281E8530(*(v0 + 16));

  sub_228176EC8(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t InteractionSummaryItem.__deallocating_deinit()
{
  sub_2281E8530(*(v0 + 16));

  sub_228176EC8(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2281E8028()
{
  sub_228393520();
  sub_2283920B0();
  v1 = *(v0 + 16);
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8();
      return sub_228393570();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x22AAB70D0](v2);
  return sub_228393570();
}

uint64_t sub_2281E80FC(uint64_t a1)
{
  v2 = *v1;
  sub_2283920B0();
  v3 = *(v2 + 16);
  if (!v3)
  {
    v4 = 0;
    return MEMORY[0x22AAB70D0](v4);
  }

  if (v3 == 1)
  {
    v4 = 2;
    return MEMORY[0x22AAB70D0](v4);
  }

  MEMORY[0x22AAB70D0](1);

  return sub_2281DB0C8();
}

uint64_t sub_2281E8188(uint64_t a1)
{
  sub_228393520();
  v2 = *v1;
  sub_2283920B0();
  v3 = *(v2 + 16);
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x22AAB70D0](1);
      sub_2281DB0C8();
      return sub_228393570();
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x22AAB70D0](v4);
  return sub_228393570();
}

uint64_t sub_2281E820C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x282169440](a1, WitnessTable);
}

Swift::Void __swiftcall InteractionSummaryItem.didSelectCell(_:in:)(UIView *_, UIViewController *in)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    v3(in);
  }
}

uint64_t InteractionSummaryItem.deselectionBehavior(in:)(uint64_t a1)
{
  type metadata accessor for InteractionSummaryItem();
  sub_2281E864C(&qword_27D824CD0, v1, type metadata accessor for InteractionSummaryItem, &protocol conformance descriptor for InteractionSummaryItem);
  return sub_22838FE80();
}

uint64_t sub_2281E8330(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 48);
  if (v3)
  {
    return v3(a2);
  }

  return result;
}

uint64_t _s19HealthMedicationsUI22InteractionSummaryItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (!v2)
  {
    if (!v3)
    {
      v2 = 0;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_2281E8520(*(a1 + 16));
      sub_2281E8520(v3);
      v4 = sub_2282100F8(v2, v3);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v3 != 1)
  {
LABEL_9:
    sub_2281E8520(*(a1 + 16));
    sub_2281E8520(v3);
    v4 = 0;
    goto LABEL_11;
  }

  v2 = 1;
LABEL_7:
  v4 = 1;
LABEL_11:
  sub_2281E8530(v2);
  sub_2281E8530(v3);
  return v4 & 1;
}

uint64_t _s19HealthMedicationsUI27InteractionSummaryItemStateO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v3 >= 2)
    {
      sub_2281E8520(*a2);
      sub_2281E8520(v2);
      v4 = sub_2282100F8(v2, v3);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 1)
  {
LABEL_8:
    sub_2281E8520(*a2);
    sub_2281E8520(v2);
    v4 = 0;
    goto LABEL_10;
  }

  v2 = 1;
  v4 = 1;
LABEL_10:
  sub_2281E8530(v2);
  sub_2281E8530(v3);
  return v4 & 1;
}

unint64_t sub_2281E8520(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_2281E8530(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_2281E8568()
{
  result = qword_27D824CD8;
  if (!qword_27D824CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824CD8);
  }

  return result;
}

uint64_t sub_2281E864C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_19HealthMedicationsUI27InteractionSummaryItemStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2281E86B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2281E870C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2281E8768(void *result, int a2)
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

uint64_t type metadata accessor for MedicationsDayHistoryItem(uint64_t a1)
{
  result = qword_27D824CF0;
  if (!qword_27D824CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2281E88AC(uint64_t a1)
{
  sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    sub_2281E8A54(319, &qword_27D824D00, sub_2281E89F0, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2281E8A54(319, &qword_27D824D08, sub_22819A174, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2281E8AB8();
        if (v4 <= 0x3F)
        {
          sub_22838F440();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2281E89F0()
{
  result = qword_27D823F08;
  if (!qword_27D823F08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D823F08);
  }

  return result;
}

void sub_2281E8A54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2281E8AB8()
{
  result = qword_27D824D10;
  if (!qword_27D824D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D824D10);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2281E8B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2281E8B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2281E8BB0()
{
  if (*(v0 + 16))
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2281E8BFC(uint64_t a1)
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E8C5C(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281E8CA8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_2281E8CE4()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0x6F74736948796144;
}

uint64_t sub_2281E8D6C(uint64_t a1)
{
  v2 = sub_2281E8EF0(&qword_27D824D28, &unk_22839B018);

  return MEMORY[0x282169440](a1, v2);
}

BOOL sub_2281E8E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsDayHistoryItem(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (v10 = sub_228393460(), result = 0, (v10 & 1) != 0))
  {
    v12 = *(v4 + 28);
    v13 = *(a1 + v12);
    v14 = *(a2 + v12);
    result = (v13 | v14) == 0;
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {

      v16 = sub_228210778(v13, v14);

      return v16 & 1;
    }
  }

  return result;
}

uint64_t sub_2281E8EF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationsDayHistoryItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2281E8F34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_2281E9598();
  result = *(v3 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview);
  if (result)
  {
    return [result hk:v3 alignConstraintsWithView:?];
  }

  return result;
}

uint64_t sub_2281E8FAC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_2281E8FF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_2281E9598();
  result = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview);
  if (result)
  {
    return [result hk:v1 alignConstraintsWithView:?];
  }

  return result;
}

id (*sub_2281E9064(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2281E90C8;
}

id sub_2281E90C8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_2281E9598();
    result = *(v5 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview);
    if (result)
    {
      v6 = *(a1 + 24);

      return [result hk:v6 alignConstraintsWithView:?];
    }
  }

  return result;
}

id sub_2281E9134()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel);
  }

  else
  {
    v4 = sub_2281E9194();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2281E9194()
{
  v0 = [objc_allocWithZone(sub_22838FC30()) initWithFrame_];
  v1 = *MEMORY[0x277D769D0];
  sub_22838FC20();
  sub_22838FC10();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 secondaryLabelColor];
  [v3 setTextColor_];

  v9 = sub_228392000();
  v10 = v5;
  v6 = v3;

  MEMORY[0x22AAB5C80](0xD000000000000021, 0x80000002283AAE30);

  MEMORY[0x22AAB5C80](0x746972657665532ELL, 0xEE006C6562614C79);

  v7 = sub_228391FC0();

  [v6 setAccessibilityIdentifier_];

  [v6 setNumberOfLines_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  return v6;
}

id sub_2281E9348()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton);
  }

  else
  {
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    v4 = sub_22838F0C0();
    _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v4, v5, 0xD000000000000014, 0x80000002283A7590);
    v7 = v6;

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id DrugInteractionSeverityLevelView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DrugInteractionSeverityLevelView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton) = 0;
  sub_228393300();
  __break(1u);
}

void sub_2281E9598()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview] removeFromSuperview];
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel;
  swift_beginAccess();
  v3 = *&v0[v2];
  if ((v3 - 2) < 3)
  {
    v4 = sub_2281E9134();
    sub_228321CC4(0xD000000000000016, 0x80000002283AAE60, *&v0[v2]);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    v5 = sub_228391FC0();

    [v4 setText_];

    v6 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v8 = v6;
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v8 = sub_2281E9348();
    v7 = *&v0[v1];
    *&v0[v1] = v8;
LABEL_7:
    v9 = v8;

    [v0 addSubview_];
    return;
  }

  sub_228393300();
  __break(1u);
}

id DrugInteractionSeverityLevelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DrugInteractionSeverityLevelView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrugInteractionSeverityLevelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_2281E99A4(uint64_t a1)
{
  v2 = type metadata accessor for DrugInteractionSeverityLevelView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___severityLabel] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView____lazy_storage___criticalSeverityButton] = 0;
  *&v3[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_severityLevel] = a1;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2281E9598();
  v5 = *&v4[OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionSeverityLevelView_subview];
  if (v5)
  {
    v6 = v5;
    [v6 hk:v4 alignConstraintsWithView:?];
  }

  return v4;
}

uint64_t FlexibleText.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x22AAB70D0](1);
    return sub_228392C70();
  }

  else
  {
    MEMORY[0x22AAB70D0](0);

    return sub_2283920B0();
  }
}

uint64_t FlexibleText.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_228393520();
  if (v1)
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
  }

  else
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
  }

  return sub_228393570();
}

uint64_t sub_2281E9B84()
{
  v1 = *(v0 + 16);
  sub_228393520();
  if (v1)
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
  }

  else
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
  }

  return sub_228393570();
}

uint64_t sub_2281E9C08(uint64_t a1)
{
  if (*(v1 + 16))
  {
    MEMORY[0x22AAB70D0](1);
    return sub_228392C70();
  }

  else
  {
    MEMORY[0x22AAB70D0](0);

    return sub_2283920B0();
  }
}

uint64_t sub_2281E9C90(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_228393520();
  if (v2)
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
  }

  else
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
  }

  return sub_228393570();
}

uint64_t TitleWithSubtitleItem.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TitleWithSubtitleItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id TitleWithSubtitleItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2281EA40C(v2, v3, v4);
}

id TitleWithSubtitleItem.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_2281EA40C(v2, v3, v4);
}

uint64_t TitleWithSubtitleItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

__n128 TitleWithSubtitleItem.init(title:subtitle:uniqueIdentifier:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2[1].n128_u8[0];
  *a5 = 0xD000000000000015;
  *(a5 + 8) = 0x80000002283AAE80;
  *(a5 + 16) = *a1;
  *(a5 + 32) = v5;
  result = *a2;
  *(a5 + 40) = *a2;
  *(a5 + 56) = v6;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  return result;
}

uint64_t TitleWithSubtitleItem.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (*(v1 + 32))
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
    if ((v2 & 1) == 0)
    {
LABEL_3:
      MEMORY[0x22AAB70D0](0);
      sub_2283920B0();
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
    if ((v2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x22AAB70D0](1);
  sub_228392C70();
LABEL_6:

  return sub_2283920B0();
}

uint64_t TitleWithSubtitleItem.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  sub_228393520();
  if ((v1 & 1) == 0)
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
    if ((v2 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
    goto LABEL_6;
  }

  MEMORY[0x22AAB70D0](1);
  sub_228392C70();
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  MEMORY[0x22AAB70D0](0);
  sub_2283920B0();
LABEL_6:
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281EA01C(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (*(v1 + 32))
  {
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
    if ((v2 & 1) == 0)
    {
LABEL_3:
      MEMORY[0x22AAB70D0](0);
      sub_2283920B0();
      goto LABEL_6;
    }
  }

  else
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
    if ((v2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x22AAB70D0](1);
  sub_228392C70();
LABEL_6:

  return sub_2283920B0();
}

uint64_t sub_2281EA108(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  sub_228393520();
  if ((v2 & 1) == 0)
  {
    MEMORY[0x22AAB70D0](0);
    sub_2283920B0();
    if ((v3 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    MEMORY[0x22AAB70D0](1);
    sub_228392C70();
    goto LABEL_6;
  }

  MEMORY[0x22AAB70D0](1);
  sub_228392C70();
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  MEMORY[0x22AAB70D0](0);
  sub_2283920B0();
LABEL_6:
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_2281EA1F4()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_2281EA224(uint64_t a1)
{
  v2 = sub_2281EA78C();

  return MEMORY[0x282169440](a1, v2);
}

uint64_t _s19HealthMedicationsUI12FlexibleTextO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4)
  {
    if (a2[2])
    {
      sub_2281A2270();
      sub_2281EA40C(v6, v5, 1);
      sub_2281EA40C(v3, v2, 1);
      v8 = sub_228392C60();
      sub_2281EA7E0(v3, v2, 1);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      sub_2281EA7E0(v9, v10, v11);
      return v8 & 1;
    }

LABEL_5:
    sub_2281EA40C(*a2, a2[1], v7);
    sub_2281EA40C(v3, v2, v4);
    sub_2281EA7E0(v3, v2, v4);
    sub_2281EA7E0(v6, v5, v7);
    return 0;
  }

  if (a2[2])
  {
    goto LABEL_5;
  }

  v13 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v8 = sub_228393460();
    sub_2281EA40C(v6, v5, 0);
    sub_2281EA40C(v3, v2, 0);
    sub_2281EA7E0(v3, v2, 0);
    v9 = v6;
    v10 = v5;
    v11 = 0;
    goto LABEL_11;
  }

  sub_2281EA40C(v13, v2, 0);
  sub_2281EA40C(v3, v2, 0);
  sub_2281EA7E0(v3, v2, 0);
  sub_2281EA7E0(v3, v2, 0);
  return 1;
}

id sub_2281EA40C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t _s19HealthMedicationsUI21TitleWithSubtitleItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v18 = *(a1 + 72);
  v19 = *(a1 + 64);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  v17 = *(a2 + 64);
  v23 = *(a1 + 16);
  v24 = v2;
  v25 = v3;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  sub_2281EA40C(v23, v2, v3);
  sub_2281EA40C(v7, v8, v9);
  v14 = _s19HealthMedicationsUI12FlexibleTextO2eeoiySbAC_ACtFZ_0(&v23, &v20);
  sub_2281EA7E0(v20, v21, v22);
  sub_2281EA7E0(v23, v24, v25);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v23 = v4;
  v24 = v5;
  v25 = v6;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  sub_2281EA40C(v4, v5, v6);
  sub_2281EA40C(v10, v11, v12);
  v15 = _s19HealthMedicationsUI12FlexibleTextO2eeoiySbAC_ACtFZ_0(&v23, &v20);
  sub_2281EA7E0(v20, v21, v22);
  sub_2281EA7E0(v23, v24, v25);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (v19 == v17 && v18 == v13)
  {
    return 1;
  }

  return sub_228393460();
}

unint64_t sub_2281EA5A4()
{
  result = qword_27D824D50;
  if (!qword_27D824D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824D50);
  }

  return result;
}

unint64_t sub_2281EA5FC()
{
  result = qword_27D824D58;
  if (!qword_27D824D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824D58);
  }

  return result;
}

unint64_t sub_2281EA654()
{
  result = qword_27D824D60;
  if (!qword_27D824D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824D60);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2281EA6E0(uint64_t a1, int a2)
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

uint64_t sub_2281EA728(uint64_t result, int a2, int a3)
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

unint64_t sub_2281EA78C()
{
  result = qword_27D824D68;
  if (!qword_27D824D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D824D68);
  }

  return result;
}

void sub_2281EA7E0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2281EA860()
{
  v1 = v0;
  v67 = sub_228391060();
  v2 = *(v67 - 8);
  v3 = MEMORY[0x28223BE20](v67);
  v66 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = v51 - v5;
  v6 = sub_22838F6C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391130();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v51 - v14;
  sub_2283910C0();
  sub_22838F680();
  v16 = sub_228391030();
  (*(v7 + 8))(v9, v6);
  v18 = v11 + 8;
  v17 = *(v11 + 8);
  v64 = v15;
  v19 = v15;
  v20 = v17;
  v17(v19, v10);
  v21 = *(v16 + 16);
  if (v21)
  {
    v61 = sel_didTapDay_;
    v60 = *MEMORY[0x277D12788];
    v58 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_disabledDays];
    v57 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_dayViews];
    v22 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v51[1] = v16;
    v23 = v16 + v22;
    v56 = 0x80000002283AAF20;
    v59 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI9DayPicker_selectedDays];
    swift_beginAccess();
    v25 = *(v2 + 16);
    v24 = v2 + 16;
    v55 = v25;
    v54 = (v24 - 8);
    v53 = (v11 + 16);
    v63 = v24;
    v52 = *(v24 + 56);
    v26 = v20;
    v62 = v10;
    do
    {
      v69 = v21;
      v27 = v18;
      v28 = v65;
      v29 = v67;
      v30 = v55;
      v55(v65, v23, v67);
      v31 = v66;
      v30(v66, v28, v29);
      v32 = objc_allocWithZone(type metadata accessor for DayPickerDay(0));
      v33 = sub_228239C58(v31);
      sub_228391040();
      v34 = sub_228392000();
      v36 = v35;
      v70 = 0;
      v71 = 0xE000000000000000;
      v37 = v33;
      sub_2283931D0();

      v70 = 0xD000000000000022;
      v71 = v56;
      v38 = sub_228391050();
      (*v54)(v28, v29);
      v72 = v38;
      v39 = sub_228393420();
      MEMORY[0x22AAB5C80](v39);

      v40 = v1;
      v42 = v70;
      v41 = v71;
      v70 = v34;
      v71 = v36;

      MEMORY[0x22AAB5C80](v42, v41);
      v43 = v68;

      v1 = v40;
      v18 = v27;
      v44 = v62;

      v45 = sub_228391FC0();

      [v37 setAccessibilityIdentifier_];

      v46 = v64;
      (*v53)(v64, v59, v44);
      sub_2281DC0DC(&qword_27D824820, MEMORY[0x277D11788]);
      LOBYTE(v38) = sub_228392FA0();
      v26(v46, v44);
      [v37 setSelected_];
      v47 = v37;
      [v47 setEnabled_];

      [v47 addTarget:v1 action:v61 forControlEvents:64];
      v48 = v57;
      swift_beginAccess();
      v49 = v47;
      MEMORY[0x22AAB5D20]();
      if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2283921E0();
      }

      sub_228392230();
      swift_endAccess();
      [v1 addSubview_];

      v26(v43, v44);
      v23 += v52;
      v21 = v69 - 1;
    }

    while (v69 != 1);
  }
}