void sub_222A9CD28(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_222B02DC8();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC6F00](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 flowState];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 resolvedSlotName];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = sub_222B02388();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_222AA8C78(0, *(v5 + 2) + 1, 1, v5);
    }

    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      v5 = sub_222AA8C78((v15 > 1), v16 + 1, 1, v5);
    }

    *(v5 + 2) = v16 + 1;
    v17 = &v5[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v14;
  }

  while (v4 != v3);
LABEL_24:
  v18 = 0;
  v19 = *(v5 + 2);
  v20 = MEMORY[0x277D84F90];
LABEL_25:
  v21 = &v5[16 * v18 + 40];
  while (v19 != v18)
  {
    if (v18 >= *(v5 + 2))
    {
      __break(1u);
      return;
    }

    ++v18;

    v22 = sub_222B02E48();

    if (!v22)
    {
      v23 = 0;
      goto LABEL_32;
    }

    v21 += 16;
    if (v22 == 1)
    {
      v23 = 1;
LABEL_32:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_222AA9224(0, *(v20 + 2) + 1, 1, v20);
      }

      v25 = *(v20 + 2);
      v24 = *(v20 + 3);
      if (v25 >= v24 >> 1)
      {
        v20 = sub_222AA9224((v24 > 1), v25 + 1, 1, v20);
      }

      *(v20 + 2) = v25 + 1;
      v20[v25 + 32] = v23;
      goto LABEL_25;
    }
  }

  sub_222A2254C(v20);

  v26 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v27 = sub_222B025D8();

  v28 = [v26 initWithArray_];

  v29 = sub_222A9A350(v28);
  v30 = sub_222A9722C(v29);

  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v32 = *(v30 + 16);
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_222B05250;
      sub_222A23AE4(0, v32, 0);
      v33 = v31;
      v34 = *(v31 + 16);
      v35 = 16 * v34;
      v36 = 32;
      v37 = 0x746E65746E6F63;
      do
      {
        if (*(v30 + v36))
        {
          v38 = v37;
        }

        else
        {
          v38 = 0x6E65697069636572;
        }

        if (*(v30 + v36))
        {
          v39 = 0xE700000000000000;
        }

        else
        {
          v39 = 0xE900000000000074;
        }

        v47 = v33;
        v40 = *(v33 + 24);
        v41 = v34 + 1;
        if (v34 >= v40 >> 1)
        {
          v43 = v37;
          sub_222A23AE4((v40 > 1), v34 + 1, 1);
          v37 = v43;
          v33 = v47;
        }

        *(v33 + 16) = v41;
        v42 = v33 + v35;
        *(v42 + 32) = v38;
        *(v42 + 40) = v39;
        v35 += 16;
        ++v36;
        v34 = v41;
        --v32;
      }

      while (v32);

      v44 = type metadata accessor for ResolvedSlots(0);
      v45 = swift_allocObject();
      *(v45 + 16) = v33;
      *(v46 + 56) = v44;
      *(v46 + 64) = sub_222A9AC64(&qword_27D01DBB8, type metadata accessor for ResolvedSlots, &protocol conformance descriptor for TypedNamedFeature<A>);
      *(v46 + 32) = v45;
    }

    else
    {
    }
  }
}

void sub_222A9D1E8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_222B02DC8();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC6F00](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 appContext];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 bundleId];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = sub_222B02388();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_222AA8C78(0, *(v5 + 2) + 1, 1, v5);
    }

    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      v5 = sub_222AA8C78((v15 > 1), v16 + 1, 1, v5);
    }

    *(v5 + 2) = v16 + 1;
    v17 = &v5[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v14;
  }

  while (v4 != v3);
LABEL_24:
  v18 = *(v5 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = &v5[16 * v19 + 40];
      v22 = v19;
      while (1)
      {
        if (v22 >= *(v5 + 2))
        {
          __break(1u);
          goto LABEL_46;
        }

        v23 = *(v21 - 1);
        v24 = *v21;
        v25 = v23 == 0x6C7070615F746F6ELL && v24 == 0xEE00656C62616369;
        if (!v25 && (sub_222B02F78() & 1) == 0)
        {
          break;
        }

        ++v22;
        v21 += 16;
        if (v18 == v22)
        {
          goto LABEL_41;
        }
      }

      v37 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222A23AE4(0, *(v20 + 16) + 1, 1);
        v20 = v37;
      }

      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_222A23AE4((v26 > 1), v27 + 1, 1);
        v28 = v27 + 1;
        v20 = v37;
      }

      v19 = v22 + 1;
      *(v20 + 16) = v28;
      v29 = v20 + 16 * v27;
      *(v29 + 32) = v23;
      *(v29 + 40) = v24;
    }

    while (v18 - 1 != v22);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_41:

  v30 = sub_222A2E00C(v20);

  v31 = *(v30 + 16);
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_222B05250;
    v33 = sub_222A95D54(v31, 0);
    v34 = sub_222A95F5C(&v37, v33 + 4, v31, v30);
    sub_222A965EC(v37);
    if (v34 == v31)
    {
      v35 = type metadata accessor for BundleIds(0);
      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      *(v32 + 56) = v35;
      *(v32 + 64) = sub_222A9AC64(&qword_27D01DBB0, type metadata accessor for BundleIds, &protocol conformance descriptor for TypedNamedFeature<A>);
      *(v32 + 32) = v36;
    }

    else
    {
LABEL_46:
      __break(1u);
    }
  }

  else
  {
  }
}

unint64_t sub_222A9D5D8()
{
  result = qword_27D01DAB8;
  if (!qword_27D01DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAB8);
  }

  return result;
}

unint64_t sub_222A9D630()
{
  result = qword_27D01DAC0;
  if (!qword_27D01DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAC0);
  }

  return result;
}

unint64_t sub_222A9D688()
{
  result = qword_27D01DAC8;
  if (!qword_27D01DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAC8);
  }

  return result;
}

unint64_t sub_222A9D6E0()
{
  result = qword_27D01DAD0;
  if (!qword_27D01DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAD0);
  }

  return result;
}

unint64_t sub_222A9D738()
{
  result = qword_27D01DAD8;
  if (!qword_27D01DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAD8);
  }

  return result;
}

unint64_t sub_222A9D790()
{
  result = qword_27D01DAE0;
  if (!qword_27D01DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptEventType.PreviousTurn(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptEventType.PreviousTurn(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222A9DBC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_222A9DC1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t IncrementalMigrationManager.__allocating_init(bundle:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

unint64_t sub_222A9DDF4(unint64_t result, unint64_t a2)
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
        result = sub_222B02D08();
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

  v6 = sub_222AA03D4(result, a2, 10);
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

void sub_222A9E100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = [objc_opt_self() defaultManager];
  sub_222B01738();
  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v13 = [v11 fileExistsAtPath_];

  if ((v13 & 1) == 0)
  {
    if (qword_280CB8568 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CB8570);
    v19 = sub_222B02128();
    v23 = sub_222B028D8();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_222A1C000, v19, v23, "No store at provided url. Skipping migration steps.", v24, 2u);
      MEMORY[0x223DC7E30](v24, -1, -1);
    }

    goto LABEL_14;
  }

  sub_222A250BC(0, &qword_280CB4AF0, 0x277CBE4D8);
  v14 = sub_222B02A98();
  if (v5)
  {
    return;
  }

  v15 = v14;
  v16 = sub_222A9FBB8(a3, a4);
  if (!v16)
  {

    sub_222AA030C();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    swift_willThrow();
    return;
  }

  v17 = v16;
  if (sub_222AA1A24(v15, v16))
  {

    if (qword_280CB8568 != -1)
    {
      swift_once();
    }

    v18 = sub_222B02148();
    __swift_project_value_buffer(v18, qword_280CB8570);
    v19 = sub_222B02128();
    v20 = sub_222B028D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_222A1C000, v19, v20, "Model does not require migration. Skipping migration.", v21, 2u);
      MEMORY[0x223DC7E30](v21, -1, -1);
    }

LABEL_14:
    return;
  }

  v69 = v15;
  if (qword_280CB8568 != -1)
  {
    swift_once();
  }

  v26 = sub_222B02148();
  __swift_project_value_buffer(v26, qword_280CB8570);
  v27 = sub_222B02128();
  v28 = sub_222B028D8();
  if (os_log_type_enabled(v27, v28))
  {
    v50 = v17;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_222A1C000, v27, v28, "Latest model is not compatible with store. Migration required.", v29, 2u);
    v30 = v29;
    v17 = v50;
    MEMORY[0x223DC7E30](v30, -1, -1);
  }

  v31 = [v17 versionIdentifiers];
  v32 = sub_222B027E8();

  *&v55 = v32;
  *(&v55 + 1) = sub_222A9FED4;
  *&v56 = 0;
  *(&v56 + 1) = sub_222AA161C;
  *&v57 = 0;
  *(&v57 + 1) = sub_222AA162C;
  *&v58 = 0;
  *(&v58 + 1) = sub_222A9FF2C;
  *&v59 = 0;
  *(&v59 + 1) = sub_222AA15F4;
  v60 = 0;
  v61 = sub_222AA1604;
  v62 = 0;
  v68 = 0;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v63 = v55;
  v64 = v56;
  v33 = sub_222AA0FF4();
  if (v35)
  {
    goto LABEL_34;
  }

  if (*(v32 + 36) != v34)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v33 == 1 << *(v32 + 32))
  {
    sub_222A34F20(&v55, &qword_27D01DC20, &qword_222B0B310);

    sub_222AA030C();
    swift_allocError();
    *v36 = xmmword_222B0B300;
    *(v36 + 16) = 1;
LABEL_25:
    swift_willThrow();

    return;
  }

  sub_222AA159C(v33, v34, v32, v52);
  sub_222A9FED4(v52, &v53);
  sub_222A2E350(v52);
  if (!v54)
  {
    goto LABEL_35;
  }

  v52[0] = v53;
  v52[1] = v54;
  sub_222A9FF2C(v52, &v53);

  if (v54 == 1)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v37 = v53;
  sub_222A34F20(&v55, &qword_27D01DC20, &qword_222B0B310);
  v38 = sub_222AA1C6C(a3, a4, *(v6 + 16));
  v49 = v37;
  sub_222AA263C(v69, v38);
  v40 = v39;
  v42 = v41;

  if (!v42)
  {

    sub_222AA030C();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 0;
    *(v48 + 16) = 1;
    goto LABEL_25;
  }

  v43 = sub_222B02128();
  v44 = sub_222B028D8();
  if (os_log_type_enabled(v43, v44))
  {
    v51 = v17;
    v45 = swift_slowAlloc();
    *v45 = 134218240;
    *(v45 + 4) = v40;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v49;
    _os_log_impl(&dword_222A1C000, v43, v44, "Store needs updating from model version %ld to %ld", v45, 0x16u);
    v46 = v45;
    v17 = v51;
    MEMORY[0x223DC7E30](v46, -1, -1);
  }

  v47 = sub_222AA281C(v40, v49, v38);

  sub_222A9E804(a1, v47, a2);
}

uint64_t sub_222A9E804(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v126 = *MEMORY[0x277D85DE8];
  v8 = sub_222B01748();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v122 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v109 = &v101 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v118 = &v101 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v101 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v110 = &v101 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v101 - v20;
  if (qword_280CB8568 != -1)
  {
    swift_once();
  }

  v22 = sub_222B02148();
  v23 = __swift_project_value_buffer(v22, qword_280CB8570);
  v24 = *(v9 + 16);
  v116 = (v9 + 16);
  v114 = v24;
  (v24)(v21, a1, v8);

  v107 = v23;
  v25 = sub_222B02128();
  v26 = sub_222B028D8();
  v27 = os_log_type_enabled(v25, v26);
  v111 = v8;
  v112 = a3;
  v115 = a1;
  v117 = a2;
  v113 = v4;
  *&v103 = v9;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v124 = v29;
    *v28 = 134218242;
    *(v28 + 4) = a2[2];

    *(v28 + 12) = 2080;
    sub_222AA2B58(&qword_280CB8310, MEMORY[0x277CC9290]);
    LODWORD(v120) = v26;
    v30 = sub_222B02F38();
    v32 = v31;
    v33 = *(v9 + 8);
    v33(v21, v111);
    v34 = sub_222A230FC(v30, v32, &v124);

    *(v28 + 14) = v34;
    v35 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    _os_log_impl(&dword_222A1C000, v25, v120, "Performing %ld migrations to store at %s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v36 = v29;
    v8 = v111;
    MEMORY[0x223DC7E30](v36, -1, -1);
    v37 = v28;
    a1 = v115;
    MEMORY[0x223DC7E30](v37, -1, -1);
  }

  else
  {

    v33 = *(v9 + 8);
    v35 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v21, v8);
  }

  v38 = v108;
  sub_222B01708();
  v124 = 0x6974617267696D2ELL;
  v125 = 0xEB000000005F6E6FLL;
  v39 = v118;
  sub_222B016B8();
  v40 = sub_222B01698();
  v41 = a1;
  v43 = v42;
  v33(v39, v8);
  MEMORY[0x223DC66E0](v40, v43);

  v44 = v110;
  sub_222B016E8();

  v33(v38, v8);
  v45 = [objc_allocWithZone(MEMORY[0x277CBE450]) init];
  v106 = [objc_allocWithZone(MEMORY[0x277CBE4D8]) initWithManagedObjectModel_];

  v46 = [objc_opt_self() defaultManager];
  v47 = sub_222B016A8();
  v124 = 0;
  LODWORD(v43) = [v46 createDirectoryAtURL:v47 withIntermediateDirectories:1 attributes:0 error:&v124];

  v48 = v124;
  v49 = v109;
  if (!v43)
  {
    v84 = v124;
    sub_222B01628();

    swift_willThrow();
    v85 = v44;
    return (v33)(v85, v8);
  }

  (v114)(v109, v41, v8);
  v50 = v117;
  v51 = v117[2];
  if (!v51)
  {
    v86 = v48;
    v55 = v121;
LABEL_18:
    v87 = sub_222B02128();
    v88 = sub_222B028D8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_222A1C000, v87, v88, "Migration complete. Replacing existing store.", v89, 2u);
      MEMORY[0x223DC7E30](v89, -1, -1);
    }

    v90 = v106;
    sub_222B02A88();
    if (!v55)
    {
      v91 = sub_222B02128();
      v92 = sub_222B028D8();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_222A1C000, v91, v92, "Cleaning up migrated store", v93, 2u);
        v94 = v93;
        v90 = v106;
        MEMORY[0x223DC7E30](v94, -1, -1);
      }

      sub_222B02A78();
    }

    v33(v49, v8);
    v95 = v110;
    sub_222A9F410();

    v85 = v95;
    return (v33)(v85, v8);
  }

  v105 = objc_opt_self();
  v104 = *(v113 + 16);
  v102 = (v103 + 32);
  v52 = v48;
  v53 = (v50 + 7);
  *&v54 = 134218240;
  v101 = v54;
  v103 = xmmword_222B06DF0;
  v55 = v121;
  v119 = v35;
  v120 = v33;
  while (1)
  {
    v113 = v51;
    v114 = v53;
    v56 = *(v53 - 3);
    v57 = *(v53 - 2);
    v58 = *(v53 - 1);
    v59 = *v53;
    v60 = v56;
    v61 = v57;
    v62 = sub_222B02128();
    v63 = sub_222B028D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = v101;
      *(v64 + 4) = v58;
      *(v64 + 12) = 2048;
      *(v64 + 14) = v59;
      _os_log_impl(&dword_222A1C000, v62, v63, "Migration step v%ld to v%ld", v64, 0x16u);
      MEMORY[0x223DC7E30](v64, -1, -1);
    }

    v116 = v58;
    v123 = v58;
    v124 = sub_222B02F38();
    v125 = v65;
    MEMORY[0x223DC66E0](1601139807, 0xE400000000000000);
    v117 = v59;
    v123 = v59;
    v66 = sub_222B02F38();
    MEMORY[0x223DC66E0](v66);

    v67 = v108;
    v68 = v110;
    sub_222B016E8();

    sub_222B01668();
    v69 = v122;
    sub_222B016F8();

    v70 = v120(v67, v8);
    v118 = MEMORY[0x223DC7570](v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    v71 = swift_allocObject();
    *(v71 + 16) = v103;
    v72 = v104;
    *(v71 + 32) = v104;
    sub_222A250BC(0, &qword_27D01DC28, 0x277CCA8D8);
    v73 = v60;
    v74 = v61;
    v75 = v72;
    v76 = sub_222B025D8();

    v77 = [v105 mappingModelFromBundles:v76 forSourceModel:v73 destinationModel:v74];

    if (!v77)
    {
      sub_222AA030C();
      swift_allocError();
      v97 = v117;
      *v98 = v116;
      *(v98 + 8) = v97;
      *(v98 + 16) = 0;
      swift_willThrow();
      goto LABEL_28;
    }

    v78 = [objc_allocWithZone(MEMORY[0x277CBE468]) initWithSourceModel:v73 destinationModel:v74];
    v124 = v78;
    swift_getKeyPath();
    v121 = v55;
    v79 = swift_allocObject();
    v79[2] = v73;
    v79[3] = v74;
    v80 = v117;
    v79[4] = v116;
    v79[5] = v80;
    v116 = v73;
    v117 = v74;
    v81 = sub_222B01648();

    v49 = v109;
    v82 = v121;
    sub_222B029D8();
    v55 = v82;
    if (v82)
    {
      break;
    }

    sub_222B01608();

    objc_autoreleasePoolPop(v118);
    sub_222AA2B58(&qword_27D01DC30, MEMORY[0x277CC9278]);
    v8 = v111;
    if ((sub_222B02338() & 1) == 0)
    {
      sub_222B02A78();
    }

    v33 = v120;
    v83 = v116;
    v53 = v114 + 4;
    v120(v49, v8);

    (*v102)(v49, v122, v8);
    v51 = v113 - 1;
    if (v113 == 1)
    {
      goto LABEL_18;
    }
  }

  v68 = v110;
  v69 = v122;
LABEL_28:
  objc_autoreleasePoolPop(v118);

  v99 = v111;
  v100 = v120;
  v120(v69, v111);
  v100(v109, v99);
  sub_222A9F410();

  return (v100)(v68, v99);
}

void sub_222A9F410()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_222B016A8();
  v14[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v14];

  if (v2)
  {
    v3 = qword_280CB8568;
    v4 = v14[0];
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CB8570);
    v6 = sub_222B02128();
    v7 = sub_222B028D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_222A1C000, v6, v7, "Migration storage cleanup completed!", v8, 2u);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }
  }

  else
  {
    v9 = v14[0];
    v10 = sub_222B01628();

    swift_willThrow();
    if (qword_280CB8568 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_280CB8570);
    v6 = sub_222B02128();
    v12 = sub_222B028E8();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222A1C000, v6, v12, "Failed to cleanup migration directory! State may be left on the device.", v13, 2u);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }
  }
}

void sub_222A9F65C(void **a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  if (qword_280CB8568 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  __swift_project_value_buffer(v11, qword_280CB8570);
  v12 = a3;
  v13 = a4;
  v14 = v10;
  oslog = sub_222B02128();
  v15 = sub_222B028D8();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218496;
    *(v16 + 4) = a5;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a6;

    *(v16 + 22) = 2048;
    [v14 migrationProgress];
    *(v16 + 24) = (v17 * 100.0);
    _os_log_impl(&dword_222A1C000, oslog, v15, "Migration %ld -> %ld progress: %f%%", v16, 0x20u);
    MEMORY[0x223DC7E30](v16, -1, -1);
    v18 = oslog;
  }

  else
  {

    v18 = v12;
  }
}

void sub_222A9F7EC(void *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 versionIdentifiers];
  v5 = sub_222B027E8();

  *&v30 = v5;
  *(&v30 + 1) = sub_222A9FED4;
  *&v31 = 0;
  *(&v31 + 1) = sub_222AA161C;
  *&v32 = 0;
  *(&v32 + 1) = sub_222AA162C;
  *&v33 = 0;
  *(&v33 + 1) = sub_222A9FF2C;
  *&v34 = 0;
  *(&v34 + 1) = sub_222AA15F4;
  v35 = 0;
  v36 = sub_222AA1604;
  v37 = 0;
  v29 = 0;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v24 = v30;
  v25 = v31;
  v6 = sub_222AA0FF4();
  if (v8)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(v5 + 36) != v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v6 == 1 << *(v5 + 32))
  {
    sub_222A34F20(&v30, &qword_27D01DC20, &qword_222B0B310);
    if (qword_280CB8568 == -1)
    {
LABEL_5:
      v9 = sub_222B02148();
      __swift_project_value_buffer(v9, qword_280CB8570);
      v10 = sub_222B02128();
      v11 = sub_222B028D8();
      if (!os_log_type_enabled(v10, v11))
      {
        v13 = 1;
        goto LABEL_18;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222A1C000, v10, v11, "Missing version number for model", v12, 2u);
      v13 = 1;
LABEL_15:
      MEMORY[0x223DC7E30](v12, -1, -1);
LABEL_18:

      sub_222AA030C();
      swift_allocError();
      *v20 = v13;
      *(v20 + 8) = 0;
      *(v20 + 16) = 1;
      swift_willThrow();
      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  sub_222AA159C(v6, v7, v5, v21);
  sub_222A9FED4(v21, &v22);
  sub_222A2E350(v21);
  if (!v23)
  {
    goto LABEL_22;
  }

  v21[0] = v22;
  v21[1] = v23;
  sub_222A9FF2C(v21, &v22);

  if (v23 != 1)
  {
    v14 = v22;
    sub_222A34F20(&v30, &qword_27D01DC20, &qword_222B0B310);
    if (!*(*a1 + 16) || (sub_222A270C0(v14), (v15 & 1) == 0))
    {
      v18 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21[0] = *a1;
      sub_222AE9ACC(v18, v14, isUniquelyReferenced_nonNull_native);
      *a1 = v21[0];
      return;
    }

    if (qword_280CB8568 != -1)
    {
      swift_once();
    }

    v16 = sub_222B02148();
    __swift_project_value_buffer(v16, qword_280CB8570);
    v10 = sub_222B02128();
    v17 = sub_222B028E8();
    v13 = 2;
    if (!os_log_type_enabled(v10, v17))
    {
      goto LABEL_18;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_222A1C000, v10, v17, "Duplicate model number found between two models.", v12, 2u);
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
}

id sub_222A9FBB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_222B01748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = *(v2 + 16);
  v17 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v18 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_222B01718();

    (*(v4 + 56))(v13, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v13, 1, 1, v3);
  }

  sub_222A5689C(v13, v15);
  sub_222A69B04(v15, v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    v20 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    v21 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v22 = sub_222B016A8();
    v20 = [v21 initWithContentsOfURL_];

    (*(v4 + 8))(v6, v3);
  }

  sub_222A34F20(v15, &qword_27D01D458, &unk_222B07E00);
  return v20;
}

uint64_t IncrementalMigrationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A9FED4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_222A2E2F4(a1, v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t *sub_222A9FF2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v27 = 0;
    v26 = 1;
LABEL_66:
    *a2 = v27;
    *(a2 + 8) = v26 & 1;
    return result;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v28 = a2;

    v8 = sub_222AA03D4(v2, v3, 10);
    v26 = v29;

    a2 = v28;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v30 = a2;
      result = sub_222B02D08();
      a2 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v32 = v4;
        v26 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v31[0] = *result;
  v31[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v31 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_222AA0244()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CB8570);
  v1 = __swift_project_value_buffer(v0, qword_280CB8570);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_222AA030C()
{
  result = qword_27D01DC18;
  if (!qword_27D01DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DC18);
  }

  return result;
}

void *sub_222AA0360(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CAE0, qword_222B0B410);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_222AA03D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_222B02538();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_222AA0960(result, v5);
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
      result = sub_222B02D08();
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

uint64_t sub_222AA0960(uint64_t a1, unint64_t a2)
{
  v2 = sub_222B02548();
  v6 = sub_222AA09E0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_222AA09E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_222B02B38();
    if (!v9 || (v10 = v9, v11 = sub_222AA0360(v9, 0), v12 = sub_222AA0B38(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_222B02438();

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
      return sub_222B02438();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_222B02D08();
LABEL_4:

  return sub_222B02438();
}

unint64_t sub_222AA0B38(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_222A92BEC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_222B024F8();
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
          result = sub_222B02D08();
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

    result = sub_222A92BEC(v12, a6, a7);
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

    result = sub_222B024D8();
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

unint64_t *sub_222AA0D58(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_222AA2300(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_222AA0DF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDC0, &qword_222B05BA0);
  result = sub_222B02DF8();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_222B03118();
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = v18;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222AA0FF4()
{
  v2 = v0[1];
  v20 = *v0;
  v21 = v2;
  v3 = *(v0 + 5);
  v22 = *(v0 + 4);
  v11 = v3;
  v10 = *(v0 + 7);
  v4 = *(v0 + 9);
  result = sub_222AA1178();
  v17 = result;
  v18 = v6;
  v19 = v7 & 1;
  if (v7)
  {
LABEL_7:
    __break(1u);
    return v1;
  }

  else
  {
    v8 = v6;
    v9 = v20;
    while (*(v9 + 36) == v8)
    {
      v1 = v17;
      if (v17 == 1 << *(v9 + 32))
      {
        return v1;
      }

      sub_222AA159C(v17, v8, v9, &v12);
      (*(&v9 + 1))(v14, &v12);
      sub_222A2E350(&v12);
      v11(&v12, v14);

      v14[0] = v12;
      v14[1] = v13;
      v10(&v15, v14);

      v12 = v15;
      LOBYTE(v13) = v16;
      if (v4(&v12))
      {
        return v1;
      }

      result = sub_222AA1380(&v17);
      v8 = v18;
      if (v19 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222AA1178()
{
  v1 = *v0;
  v18 = v0[1];
  v17 = v0[3];
  v2 = *v0 + 56;
  result = sub_222B02BC8();
  v4 = result;
  v5 = *(v1 + 36);
  v6 = 1 << *(v1 + 32);
  if (result == v6)
  {
    return v4;
  }

  else
  {
    while ((v4 & 0x8000000000000000) == 0 && v4 < v6)
    {
      v8 = v4 >> 6;
      if ((*(v2 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      sub_222A2E2F4(*(v1 + 48) + 40 * v4, v19);
      v18(v20, v19);
      sub_222A2E350(v19);
      v19[0] = v20[0];
      v19[1] = v20[1];
      v9 = v17(v19);

      if (v9)
      {
        return v4;
      }

      v7 = 1 << *(v1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v10 = *(v2 + 8 * v8);
      if ((v10 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v5 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v11 = v10 & (-2 << (v4 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v8 << 6;
        v13 = v8 + 1;
        v14 = (v1 + 64 + 8 * v8);
        while (v13 < (v7 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            result = sub_222A965F4(v4, v5, 0);
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_6;
          }
        }

        result = sub_222A965F4(v4, v5, 0);
      }

LABEL_6:
      v5 = *(v1 + 36);
      v6 = 1 << *(v1 + 32);
      v4 = v7;
      if (v7 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_222AA1380(uint64_t result)
{
  if (*(result + 16))
  {
    goto LABEL_29;
  }

  v2 = *v1;
  v3 = *(result + 8);
  v4 = *(*v1 + 36);
  if (v4 != v3)
  {
    goto LABEL_27;
  }

  v5 = *result;
  if (*result != 1 << *(v2 + 32))
  {
    v20 = v1[1];
    v6 = v2 + 56;
    v19 = result;
    v7 = v1[3];
    while ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 1 << *(v2 + 32);
      if (v5 >= v8)
      {
        break;
      }

      v9 = v5 >> 6;
      v10 = *(v6 + 8 * (v5 >> 6));
      if (((v10 >> v5) & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v4 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v11 = v10 & (-2 << (v5 & 0x3F));
      if (v11)
      {
        result = sub_222A965F4(v5, v3, 0);
        v5 = __clz(__rbit64(v11)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (v2 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            result = sub_222A965F4(v5, v3, 0);
            v5 = __clz(__rbit64(v15)) + v12;
            goto LABEL_16;
          }
        }

        result = sub_222A965F4(v5, v3, 0);
        v5 = v8;
      }

LABEL_16:
      v3 = *(v2 + 36);
      v17 = 1 << *(v2 + 32);
      if (v5 != v17)
      {
        if ((v5 & 0x8000000000000000) != 0 || v5 >= v17)
        {
          goto LABEL_25;
        }

        if (((*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_26;
        }

        sub_222A2E2F4(*(v2 + 48) + 40 * v5, v21);
        v20(v22, v21);
        sub_222A2E350(v21);
        v21[0] = v22[0];
        v21[1] = v22[1];
        v18 = v7(v21);

        v4 = v3;
        if ((v18 & 1) == 0)
        {
          continue;
        }
      }

      *v19 = v5;
      *(v19 + 8) = v3;
      *(v19 + 16) = 0;
      return result;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_222AA159C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
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
    return sub_222A2E2F4(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_222AA1604@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

void sub_222AA162C(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *a2 = *a1;
    a2[1] = v3;
  }

  else
  {
    __break(1u);
  }
}

unsigned __int8 *sub_222AA1648(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_222A26EC8(0xD00000000000001ELL, 0x8000000222B14550);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_222A25344(*(a1 + 56) + 32 * v2, v32);
  sub_222A250AC(v32, v33);
  sub_222A25344(v33, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v31[2])
  {

LABEL_25:
    __swift_destroy_boxed_opaque_existential_0(v33);
    return 0;
  }

  v5 = v31[4];
  v4 = v31[5];

  v7 = HIBYTE(v4) & 0xF;
  v8 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);

    return 0;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      *&v32[0] = v5;
      *(&v32[0] + 1) = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v5 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v11 = 0;
            v21 = v32 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v7)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_79:
        __break(1u);
        return result;
      }

      if (v5 != 45)
      {
        if (v7)
        {
          v11 = 0;
          v26 = v32;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v7)
      {
        if (--v7)
        {
          v11 = 0;
          v15 = v32 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        result = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_222B02D08();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v11 = 0;
            if (result)
            {
              v18 = result + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_68;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_68;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_68;
                }

                ++v18;
                if (!--v7)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_68;
        }

        goto LABEL_78;
      }

      if (v10 != 45)
      {
        if (v8)
        {
          v11 = 0;
          if (result)
          {
            while (1)
            {
              v24 = *result - 48;
              if (v24 > 9)
              {
                goto LABEL_68;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_68;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v8)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_68:
        v11 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_69;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v12 = result + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_68;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_68;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_68;
              }

              ++v12;
              if (!--v7)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_60:
          LOBYTE(v7) = 0;
LABEL_69:
          v29 = v7;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v11 = sub_222AA03D4(v5, v4, 10);
  v29 = v30;

LABEL_70:
  __swift_destroy_boxed_opaque_existential_0(v33);

  if (v29)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_222AA1A24(uint64_t a1, void *a2)
{
  v4 = sub_222B022A8();
  v5 = [a2 isConfiguration:0 compatibleWithStoreMetadata:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_222AA1648(a1);
  if (v7)
  {
    return 1;
  }

  v9 = v6;
  v10 = [a2 versionIdentifiers];
  v11 = sub_222B027E8();

  *&v18 = v11;
  *(&v18 + 1) = sub_222A9FED4;
  *&v19 = 0;
  *(&v19 + 1) = sub_222AA161C;
  *&v20 = 0;
  *(&v20 + 1) = sub_222AA162C;
  *&v21 = 0;
  *(&v21 + 1) = sub_222A9FF2C;
  *&v22 = 0;
  *(&v22 + 1) = sub_222AA15F4;
  v23 = 0;
  v24 = sub_222AA1604;
  v25 = 0;
  v31 = 0;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v26 = v18;
  v27 = v19;
  result = sub_222AA0FF4();
  if (v13)
  {
    goto LABEL_14;
  }

  if (*(v11 + 36) != v12)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result != 1 << *(v11 + 32))
  {
    sub_222AA159C(result, v12, v11, v15);
    sub_222A9FED4(v15, &v16);
    result = sub_222A2E350(v15);
    if (v17)
    {
      v15[0] = v16;
      v15[1] = v17;
      sub_222A9FF2C(v15, &v16);

      if (v17 != 1)
      {
        v14 = v16;
        sub_222A34F20(&v18, &qword_27D01DC20, &qword_222B0B310);
        return v9 == v14;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_222A34F20(&v18, &qword_27D01DC20, &qword_222B0B310);
  return 0;
}

id sub_222AA1C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v60 = sub_222B01748();
  v57 = *(v60 - 8);
  v5 = MEMORY[0x28223BE20](v60);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v56 = &v50 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v15 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v16 = [a3 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    return sub_222A39F44(MEMORY[0x277D84F90]);
  }

  sub_222B01718();

  v17 = [objc_opt_self() defaultManager];
  v18 = sub_222B016A8();
  v62[0] = 0;
  v19 = [v17 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:0 error:v62];

  v20 = v62[0];
  if (v19)
  {
    v50 = v13;
    v51 = v3;
    v21 = sub_222B025F8();
    v22 = v20;

    v23 = MEMORY[0x277D84F90];
    v55 = *(v21 + 16);
    if (v55)
    {
      v24 = 0;
      v53 = v7;
      v54 = (v57 + 16);
      v52 = (v57 + 8);
      v58 = (v57 + 32);
      while (1)
      {
        if (v24 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v25 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v26 = *(v57 + 72);
        (*(v57 + 16))(v59, v21 + v25 + v26 * v24, v60);
        if (sub_222B01668() == 7171949 && v27 == 0xE300000000000000)
        {
          break;
        }

        v28 = sub_222B02F78();

        if (v28)
        {
          goto LABEL_12;
        }

        (*v52)(v59, v60);
LABEL_6:
        if (v55 == ++v24)
        {
          goto LABEL_17;
        }
      }

LABEL_12:
      v29 = *v58;
      (*v58)(v7, v59, v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_222A23C24(0, *(v23 + 16) + 1, 1);
        v23 = v62[0];
      }

      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_222A23C24((v31 > 1), v32 + 1, 1);
        v23 = v62[0];
      }

      *(v23 + 16) = v32 + 1;
      v33 = (v23 + v25 + v32 * v26);
      v7 = v53;
      v29(v33, v53, v60);
      goto LABEL_6;
    }

LABEL_17:

    v62[0] = MEMORY[0x277D84F90];
    v34 = *(v23 + 16);
    if (v34)
    {
      v58 = *(v57 + 16);
      v59 = (v57 + 16);
      v35 = (v23 + ((*(v57 + 80) + 32) & ~*(v57 + 80)));
      v55 = *(v57 + 72);
      v36 = (v57 + 8);
      v54 = MEMORY[0x277D84F90];
      do
      {
        v37 = v56;
        v38 = v60;
        (v58)(v56, v35, v60);
        v39 = objc_allocWithZone(MEMORY[0x277CBE450]);
        v40 = sub_222B016A8();
        v41 = [v39 initWithContentsOfURL_];

        v42 = (*v36)(v37, v38);
        if (v41)
        {
          MEMORY[0x223DC6810](v42);
          if (*((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222B02648();
          }

          sub_222B02688();
          v54 = v62[0];
        }

        v35 += v55;
        --v34;
      }

      while (v34);

      v23 = v54;
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v62[0] = MEMORY[0x277D84F98];
    v21 = v51;
    if (v23 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
    {
      v46 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x223DC6F00](v46, v23);
        }

        else
        {
          if (v46 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v47 = *(v23 + 8 * v46 + 32);
        }

        v48 = v47;
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v61 = v47;
        sub_222A9F7EC(v62, &v61);
        if (v21)
        {

          return (*(v57 + 8))(v50, v60);
        }

        ++v46;
        if (v49 == i)
        {
          goto LABEL_44;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    (*(v57 + 8))(v50, v60);
    return v62[0];
  }

  else
  {
    v44 = v62[0];
    sub_222B01628();

    swift_willThrow();
    return (*(v57 + 8))(v13, v60);
  }
}

void sub_222AA2300(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 56) + 8 * v14);
    v16 = sub_222B022A8();
    v17 = [v15 isConfiguration:0 compatibleWithStoreMetadata:{v16, v19}];

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_222AA0DF4(a1, v19, v21, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_222AA247C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_222AA0D58(v13, v7, a1, a2);
      MEMORY[0x223DC7E30](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_222AA2300((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

void sub_222AA263C(uint64_t a1, uint64_t a2)
{
  v4 = sub_222AA1648(a1);
  if (v5)
  {

    v6 = sub_222AA247C(a2, a1);

    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v6[8];
    if (v9)
    {
      v10 = 0;
      v11 = __clz(__rbit64(v9));
      v12 = (v9 - 1) & v9;
      v13 = (v7 + 63) >> 6;
LABEL_13:
      v19 = *(v6[6] + 8 * v11);
      v20 = *(v6[7] + 8 * v11);

      if (!v12)
      {
        goto LABEL_16;
      }

      do
      {
LABEL_14:
        while (1)
        {
          v21 = __clz(__rbit64(v12));
          v12 &= v12 - 1;
          v22 = v21 | (v10 << 6);
          v23 = *(v6[6] + 8 * v22);
          if (v23 < v19)
          {
            break;
          }

          if (!v12)
          {
            goto LABEL_16;
          }
        }

        v25 = *(v6[7] + 8 * v22);

        v20 = v25;
        v19 = v23;
      }

      while (v12);
LABEL_16:
      while (1)
      {
        v24 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v24 >= v13)
        {

          return;
        }

        v12 = v6[v24 + 8];
        ++v10;
        if (v12)
        {
          v10 = v24;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v17 = 0;
      v13 = (v7 + 63) >> 6;
      while (v13 - 1 != v9)
      {
        v10 = v9 + 1;
        v18 = v6[v9 + 9];
        v17 -= 64;
        ++v9;
        if (v18)
        {
          v12 = (v18 - 1) & v18;
          v11 = __clz(__rbit64(v18)) - v17;
          goto LABEL_13;
        }
      }
    }
  }

  else if (*(a2 + 16))
  {
    v14 = sub_222A270C0(v4);
    if (v15)
    {
      v16 = *(*(a2 + 56) + 8 * v14);
    }
  }
}

uint64_t sub_222AA281C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  v24 = a2 - 1;
  v4 = a2 - 1 - result;
  if (__OFSUB__(a2 - 1, result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = a2 - result;
  if (!__OFADD__(v4, 1))
  {
    v6 = MEMORY[0x277D84F90];
    if (v4 != -1)
    {
      v26 = MEMORY[0x277D84F90];
      result = sub_222A23C68(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        goto LABEL_29;
      }

      v23 = a3;
      v8 = 0;
      v9 = 0;
      v6 = v26;
      while (v8 < v5)
      {
        if (__OFADD__(v8, 1))
        {
          goto LABEL_25;
        }

        v25 = v8 + 1;
        if (v9)
        {
          goto LABEL_30;
        }

        v10 = v6;
        if (!*(a3 + 16))
        {
          goto LABEL_22;
        }

        result = sub_222A270C0(v3);
        if ((v11 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_26;
        }

        v12 = *(a3 + 56);
        v13 = *(v12 + 8 * result);
        v14 = sub_222A270C0(v3 + 1);
        if ((v15 & 1) == 0)
        {
LABEL_22:
          sub_222AA030C();
          swift_allocError();
          *v22 = 0;
          *(v22 + 8) = 0;
          *(v22 + 16) = 1;
          swift_willThrow();

          return v6;
        }

        v16 = *(v12 + 8 * v14);
        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        v19 = v13;
        result = v16;
        v6 = v10;
        if (v18 >= v17 >> 1)
        {
          v21 = result;
          sub_222A23C68((v17 > 1), v18 + 1, 1);
          result = v21;
          v6 = v10;
        }

        *(v6 + 16) = v18 + 1;
        v20 = (v6 + 32 * v18);
        v20[4] = v19;
        v20[5] = result;
        v20[6] = v3;
        v20[7] = v3 + 1;
        v9 = v3 == v24;
        if (v3 == v24)
        {
          v3 = 0;
        }

        else
        {
          ++v3;
        }

        ++v8;
        a3 = v23;
        if (v25 == v5)
        {
          return v6;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    return v6;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MigrationManagerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MigrationManagerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_222AA2AF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222AA2B10(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_222AA2B58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_222B01748();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222AA2BB4(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_222B05260;
    v6 = [v4 typeName];
    v7 = sub_222B02388();
    v9 = v8;

    NoteEvent = type metadata accessor for CreateNoteEventFeature.EventType(0);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v9;
    *(v5 + 56) = NoteEvent;
    *(v5 + 64) = sub_222AA2F6C(&qword_27D01DC38, type metadata accessor for CreateNoteEventFeature.EventType);
    *(v5 + 32) = v11;
    v12 = [v1 _donatedBySiri];
    v13 = type metadata accessor for CreateNoteEventFeature.DonatedBySiri(0);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v5 + 96) = v13;
    *(v5 + 104) = sub_222AA2F6C(&qword_27D01DC40, type metadata accessor for CreateNoteEventFeature.DonatedBySiri);
    *(v5 + 72) = v14;
    v15 = [v4 content];
    if (v15)
    {
      v16 = v15;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [v17 text];
        if (v18)
        {
          v19 = v18;
          v20 = sub_222B02388();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0xE000000000000000;
        }

        v23 = type metadata accessor for CreateNoteEventFeature.NoteTextContent(0);
        v24 = swift_allocObject();
        *(v24 + 16) = v20;
        *(v24 + 24) = v22;
        v5 = sub_222AA8FDC(1, 3, 1, v5);

        v27 = v24;
        v28 = v5;
        v25 = sub_222AA2F6C(&qword_27D01DC48, type metadata accessor for CreateNoteEventFeature.NoteTextContent);

        sub_222A3ED48(2, &v27, &v28, v23, v25);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t CreateNoteEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CreateNoteEventFeature.NoteTextContent.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CreateNoteEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222AA2F6C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t CreateNoteEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222AA30E0(char *a1)
{
  v1 = *a1;
  type metadata accessor for CreateNoteEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AA3118(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for CreateNoteEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t CreateNoteEventFeature.NoteTextContent.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t CreateNoteEventFeature.NoteTextContent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222AA3218(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222AA326C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t SiriUserFeedbackLearningTaskContext.TriggerType.description.getter()
{
  if (*v0)
  {
    return 0x6D69742D6C616572;
  }

  else
  {
    return 0x616E65746E69616DLL;
  }
}

SiriPrivateLearningAnalytics::SiriUserFeedbackLearningTaskContext::TriggerType_optional __swiftcall SiriUserFeedbackLearningTaskContext.TriggerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

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

  *v2 = v5;
  return result;
}

uint64_t SiriUserFeedbackLearningTaskContext.TriggerType.rawValue.getter()
{
  if (*v0)
  {
    return 0x656D69746C616572;
  }

  else
  {
    return 0x616E65746E69616DLL;
  }
}

uint64_t sub_222AA34B8()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AA3544(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222AA35BC(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AA3644@<X0>(char *a2@<X8>)
{
  v3 = sub_222B02E48();

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

void sub_222AA36A4(uint64_t *a1@<X8>)
{
  v2 = 0x616E65746E69616DLL;
  if (*v1)
  {
    v2 = 0x656D69746C616572;
  }

  v3 = 0xEB0000000065636ELL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222AA379C()
{
  if (*v0)
  {
    return 0x6D69742D6C616572;
  }

  else
  {
    return 0x616E65746E69616DLL;
  }
}

uint64_t SiriUserFeedbackLearningTaskContext.description.getter()
{
  v1 = *v0;
  strcpy(v5, "triggerType: ");
  HIWORD(v5[1]) = -4864;
  if (v1)
  {
    v2 = 0x6D69742D6C616572;
  }

  else
  {
    v2 = 0x616E65746E69616DLL;
  }

  if (v1)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xEB0000000065636ELL;
  }

  MEMORY[0x223DC66E0](v2, v3);

  return v5[0];
}

uint64_t static SiriUserFeedbackLearningTaskContext.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D69746C616572;
  }

  else
  {
    v3 = 0x616E65746E69616DLL;
  }

  if (v2)
  {
    v4 = 0xEB0000000065636ELL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656D69746C616572;
  }

  else
  {
    v5 = 0x616E65746E69616DLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEB0000000065636ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222B02F78();
  }

  return v8 & 1;
}

uint64_t sub_222AA3964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5472656767697274 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_222B02F78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_222AA39F0(uint64_t a1)
{
  v2 = sub_222AA3BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222AA3A2C(uint64_t a1)
{
  v2 = sub_222AA3BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriUserFeedbackLearningTaskContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DC80, &qword_222B0B540);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222AA3BB4();
  sub_222B031B8();
  v10 = v7;
  sub_222AA3C08();
  sub_222B02EF8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_222AA3BB4()
{
  result = qword_280CBA598;
  if (!qword_280CBA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA598);
  }

  return result;
}

unint64_t sub_222AA3C08()
{
  result = qword_280CB7B88;
  if (!qword_280CB7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB7B88);
  }

  return result;
}

uint64_t SiriUserFeedbackLearningTaskContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DC88, &qword_222B0B548);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222AA3BB4();
  sub_222B03198();
  if (!v2)
  {
    sub_222AA3DC8();
    sub_222B02E98();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_222AA3DC8()
{
  result = qword_280CBA1B0;
  if (!qword_280CBA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1B0);
  }

  return result;
}

unint64_t sub_222AA3E20()
{
  result = qword_27D01DC90;
  if (!qword_27D01DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DC90);
  }

  return result;
}

uint64_t sub_222AA3EA4()
{
  v1 = *v0;
  strcpy(v5, "triggerType: ");
  HIWORD(v5[1]) = -4864;
  if (v1)
  {
    v2 = 0x6D69742D6C616572;
  }

  else
  {
    v2 = 0x616E65746E69616DLL;
  }

  if (v1)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xEB0000000065636ELL;
  }

  MEMORY[0x223DC66E0](v2, v3);

  return v5[0];
}

unint64_t sub_222AA3F7C()
{
  result = qword_27D01DC98;
  if (!qword_27D01DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DC98);
  }

  return result;
}

unint64_t sub_222AA3FD4()
{
  result = qword_280CBA588;
  if (!qword_280CBA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA588);
  }

  return result;
}

unint64_t sub_222AA402C()
{
  result = qword_280CBA590;
  if (!qword_280CBA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA590);
  }

  return result;
}

unint64_t sub_222AA4080()
{
  result = qword_280CBA580;
  if (!qword_280CBA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA580);
  }

  return result;
}

uint64_t sub_222AA40D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_222B02098();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  sub_222AA56C8(v6, v7, v8, *(v2 + 40));
  v10 = sub_222AA44E0(a1, v6, v7, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_222AA5424(v6, v7, v8, v9);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  LOBYTE(v6) = *(v2 + 40);
  sub_222AA56C8(v17, v18, v19, v6);
  LOBYTE(v7) = sub_222AA5538(v17, v18, v19, v6, v10, v12, v14, v16);
  sub_222AA5424(v17, v18, v19, v6);
  if ((v7 & 1) == 0)
  {
    if (qword_27D01C520 != -1)
    {
      swift_once();
    }

    v20 = sub_222B02148();
    __swift_project_value_buffer(v20, qword_27D01DCA0);
    sub_222AA56C8(v10, v12, v14, v16);
    v21 = sub_222B02128();
    v22 = sub_222B028D8();
    sub_222AA5424(v10, v12, v14, v16);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v22;
      v25 = v24;
      v42 = v24;
      *v23 = 136315138;
      v26 = sub_222AA4690(v10, v12, v14, v16);
      v28 = sub_222A230FC(v26, v27, &v42);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_222A1C000, v21, v38, "UserDisambiguatesPhoneCallOrMessagesContact state will be updated to %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DC7E30](v25, -1, -1);
      MEMORY[0x223DC7E30](v23, -1, -1);
    }
  }

  v29 = *(v2 + 16);
  v30 = *(v2 + 24);
  v31 = *(v2 + 32);
  *(v2 + 16) = v10;
  *(v2 + 24) = v12;
  *(v2 + 32) = v14;
  v32 = *(v2 + 40);
  *(v2 + 40) = v16;
  sub_222AA56C8(v10, v12, v14, v16);
  sub_222AA56C8(v10, v12, v14, v16);
  sub_222AA5424(v29, v30, v31, v32);
  if (v16 == 2)
  {

    if (v10)
    {
      v33 = 4;
    }

    else
    {
      v33 = 3;
    }

    if (qword_280CB79E8 != -1)
    {
      swift_once();
    }

    v34 = sub_222B020C8();
    __swift_project_value_buffer(v34, qword_280CBC3F8);
    v35 = v39;
    sub_222B02088();
    sub_222A6F5D4("events.filters.UserDisambiguatesPhoneCallOrMessagesContact", 58, 2);
    sub_222AA5424(v10, v12, v14, 2u);
    (*(v40 + 8))(v35, v41);
  }

  else
  {
    sub_222AA5424(v10, v12, v14, v16);
    sub_222AA5424(v10, v12, v14, v16);
    return 0;
  }

  return v33;
}

void *sub_222AA44E0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    v9 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {
      sub_222A8B0A8(v9, 1u);
      a2 = sub_222AA4F94(v9, a2, a3, a4, a5);
      v10 = v9;
      v11 = 1;
    }

    else
    {
      sub_222A8B0A8(v9, 2u);
      a2 = sub_222AA4C4C(v9, a2, a3, a4, a5);
      v10 = v9;
      v11 = 2;
    }

    sub_222A86648(v10, v11);
  }

  else
  {
    if (qword_27D01C520 != -1)
    {
      swift_once();
    }

    v12 = sub_222B02148();
    __swift_project_value_buffer(v12, qword_27D01DCA0);
    v13 = sub_222B02128();
    v14 = sub_222B028D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222A1C000, v13, v14, "UserDisambiguatesPhoneCallOrMessagesContact received a non Siri UI / Execution event", v15, 2u);
      MEMORY[0x223DC7E30](v15, -1, -1);
    }

    sub_222AA56C8(a2, a3, a4, a5);
  }

  return a2;
}

unint64_t sub_222AA4690(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      BYTE8(v6) = 0;
      sub_222B02C88();
      MEMORY[0x223DC66E0](0xD00000000000002ALL, 0x8000000222B14750);
      *&v6 = a1 & 1;
      sub_222B02D98();
      MEMORY[0x223DC66E0](41, 0xE100000000000000);
      return *(&v6 + 1);
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else if (a4)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_222AA47B0()
{
  sub_222AA5424(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics54UserDisambiguatesPhoneCallOrMessagesContactFilterState33_347939869CF7152D1DD2BE2960459E8FLLO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_222AA4844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222AA488C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_222AA48D4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_222AA4900()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 32);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  v5 = *(v1 + 40);
  *(v1 + 40) = 3;
  sub_222AA5424(v2, v3, v4, v5);
}

uint64_t sub_222AA4954()
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AA49E4(uint64_t a1)
{
  sub_222B02448();
}

uint64_t sub_222AA4A60(uint64_t a1)
{
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AA4AEC@<X0>(char *a2@<X8>)
{
  v3 = sub_222B02E48();

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

void sub_222AA4B4C(uint64_t *a1@<X8>)
{
  v2 = 0x65646E6F70736572;
  if (*v1)
  {
    v2 = 0x6D6E6F646E616261;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB00000000746E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222AA4B98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D6E6F646E616261;
  }

  else
  {
    v3 = 0x65646E6F70736572;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEB00000000746E65;
  }

  if (*a2)
  {
    v5 = 0x6D6E6F646E616261;
  }

  else
  {
    v5 = 0x65646E6F70736572;
  }

  if (*a2)
  {
    v6 = 0xEB00000000746E65;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222B02F78();
  }

  return v8 & 1;
}

void *sub_222AA4C4C(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v10 = [a1 eventBody];
  if (v10)
  {
    v11 = v10;
    if (v5 - 2 < 2)
    {
      if (sub_222A862A4(v10) & 1) != 0 || (sub_222A864B4(v11))
      {
        v12 = [v11 taskStep];

        if (v12 == 15)
        {
LABEL_6:
          v13 = a1;
          return a1;
        }

        return 0;
      }

LABEL_22:

      return 0;
    }

    if (v5)
    {
      [a2 timestamp];
      v22 = v21;
      [a1 timestamp];
      v24 = v23;

      if (v24 - v22 > 300.0)
      {
        return 0;
      }
    }

    else
    {
      v18 = [a2 eventBody];
      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = v18;
      if ((sub_222AA51DC(v11) & 1) == 0)
      {

        goto LABEL_22;
      }

      v20 = [v11 taskStep];
      if (v20 == 4)
      {
        v27 = [v11 statusReason];
        v28 = sub_222B02388();
        v30 = v29;

        if (v28 == 0xD000000000000014 && 0x8000000222B147E0 == v30)
        {

          goto LABEL_6;
        }

        v32 = sub_222B02F78();

        if (v32)
        {
          goto LABEL_6;
        }

        return 0;
      }

      if (v20 == 41 || v20 == 15)
      {

        goto LABEL_6;
      }

      v31 = v20;

      if (v31 != 39)
      {
        return 0;
      }
    }

    v25 = a2;
    return a2;
  }

  if (qword_27D01C520 != -1)
  {
    swift_once();
  }

  v14 = sub_222B02148();
  __swift_project_value_buffer(v14, qword_27D01DCA0);
  v15 = sub_222B02128();
  v16 = sub_222B028D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_222A1C000, v15, v16, "UserDisambiguatesPhoneCallOrMessagesContact cannot unwrap execution store event body", v17, 2u);
    MEMORY[0x223DC7E30](v17, -1, -1);
  }

  sub_222AA56C8(a2, a3, a4, v5);
  return a2;
}

uint64_t sub_222AA4F94(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v10 = [a1 eventBody];
  if (!v10)
  {
    if (qword_27D01C520 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_27D01DCA0);
    v14 = sub_222B02128();
    v15 = sub_222B028D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "UserDisambiguatesPhoneCallOrMessagesContact cannot unwrap UI store event body", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    sub_222AA56C8(a2, a3, a4, v5);
    return a2;
  }

  v11 = v10;
  if (v5 > 1u)
  {

    return 0;
  }

  if (!v5)
  {
    v12 = a2;
    if ([v11 isStarting])
    {

      return a2;
    }

    v20 = [v11 dismissalReason];
    v21 = sub_222B02388();
    v23 = v22;

    LOBYTE(v20) = sub_222A86258(v21, v23);
    if (v20 - 1 < 0xC)
    {
      v24 = a1;
      return 1;
    }

    sub_222AA5424(a2, a3, a4, 0);
    return 0;
  }

  v18 = a2;
  v19 = [v11 isStarting];

  if (v19)
  {
    return a2;
  }

  v25 = a1;
  return 0;
}

uint64_t sub_222AA51DC(void *a1)
{
  v3 = [a1 taskId];
  v4 = sub_222B02388();
  v6 = v5;

  v7 = [v1 taskId];
  v8 = sub_222B02388();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v13 = [a1 intentName];
  v14 = sub_222B02388();
  v16 = v15;

  v17 = [v1 intentName];
  v18 = sub_222B02388();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_222B02F78();

    if ((v21 & 1) == 0)
    {
LABEL_15:
      v30 = 0;
      return v30 & 1;
    }
  }

  v22 = [a1 slotValue];
  v23 = sub_222B02388();
  v25 = v24;

  v26 = [v1 slotValue];
  v27 = sub_222B02388();
  v29 = v28;

  if (v23 == v27 && v25 == v29)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_222B02F78();
  }

  return v30 & 1;
}

void sub_222AA5424(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return;
    }

    a1 = a3;
  }
}

uint64_t sub_222AA5470()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01DCA0);
  v1 = __swift_project_value_buffer(v0, qword_27D01DCA0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AA5538(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a8 == 1)
      {
LABEL_23:
        sub_222A6EEE8();
        return sub_222B02AE8() & 1;
      }
    }

    else if (!a8)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (a4 == 2)
  {
    if (a8 == 2)
    {
      v8 = (a1 & 1) == 0;
      if (a1)
      {
        v9 = 0x6D6E6F646E616261;
      }

      else
      {
        v9 = 0x65646E6F70736572;
      }

      if (v8)
      {
        v10 = 0xE900000000000064;
      }

      else
      {
        v10 = 0xEB00000000746E65;
      }

      if (a5)
      {
        v11 = 0x6D6E6F646E616261;
      }

      else
      {
        v11 = 0x65646E6F70736572;
      }

      if (a5)
      {
        v12 = 0xEB00000000746E65;
      }

      else
      {
        v12 = 0xE900000000000064;
      }

      if (v9 == v11 && v10 == v12)
      {

        goto LABEL_29;
      }

      v14 = sub_222B02F78();

      if (v14)
      {
LABEL_29:
        sub_222A6EEE8();
        if (sub_222B02AE8())
        {
          return sub_222B02AE8() & 1;
        }
      }
    }
  }

  else if (a8 == 3 && !(a6 | a5 | a7))
  {
    return 1;
  }

  return 0;
}

id sub_222AA56C8(id result, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return result;
    }

    v6 = a2;
    result = a3;
  }

  return result;
}

unint64_t sub_222AA5728()
{
  result = qword_27D01DCB8;
  if (!qword_27D01DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DCB8);
  }

  return result;
}

uint64_t Turn.__allocating_init(turnID:events:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v8 = sub_222B018D8();
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  *(v6 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = a2;
  sub_222A5E93C(a3, v6 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  return v6;
}

uint64_t Turn.turnID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v4 = sub_222B018D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Turn.__allocating_init(turnID:events:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = sub_222B01848();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = (*(v2 + 104))(v11, a2, v7);
  (*(v9 + 8))(a1, v8);
  return v13;
}

uint64_t Turn.init(turnID:events:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v8 = sub_222B018D8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = a2;
  sub_222A5E93C(a3, v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  return v3;
}

uint64_t sub_222AA5B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Turn.deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_222AA5C00(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  return v0;
}

uint64_t sub_222AA5C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Turn.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_222AA5C00(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Turn(uint64_t a1)
{
  result = qword_280CB86C0;
  if (!qword_280CB86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222AA5D78(uint64_t a1)
{
  sub_222B018D8();
  if (v1 <= 0x3F)
  {
    sub_222AA5E7C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_222AA5E7C(uint64_t a1)
{
  if (!qword_280CBA1F8)
  {
    sub_222B01848();
    v1 = sub_222B02B28();
    if (!v2)
    {
      atomic_store(v1, &qword_280CBA1F8);
    }
  }
}

uint64_t sub_222AA5EFC(unint64_t *a1, void *a2)
{
  v3 = v2;
  v4 = sub_222A250BC(0, a1, a2);
  [v3 anyEventType];
  result = sub_222B02A28();
  if (result)
  {
    if (v4 != result)
    {
      return 0;
    }

    v6 = [v3 payload];
    if (v6)
    {
      v7 = v6;
      v8 = sub_222B01798();
      v10 = v9;

      v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v12 = sub_222B01788();
      sub_222A26530(v8, v10);
      v13 = v11;
    }

    else
    {
      v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v12 = 0;
    }

    v14 = [v13 initWithData_];

    if (!v14)
    {
      return 0;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_222AA6030(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v7 + 24);
  *(v7 + 24) = a1;

  v9 = a1;
  sub_222A34E38(v8);

  v10 = *(v3 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_27D01D5F0] = v10;
  v14.receiver = v12;
  v14.super_class = v11;

  v13 = objc_msgSendSuper2(&v14, sel_init);
  [*(*(v3 + 16) + 16) receiveSubscription_];
}

id sub_222AA6114(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 32);
  if (v5 == *MEMORY[0x277CF1780])
  {

    a2(a1);
  }

  else
  {
    v5 = [*(v4 + 16) receiveInput_];
    v7 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D600, &unk_222B083C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B05260;
    *(inited + 32) = v5;
    *(inited + 40) = *(v7 + 32);

    v9 = sub_222A65A74(-1, inited);
    swift_setDeallocating();
    *(v7 + 32) = v9;
  }

  return v5;
}

void sub_222AA6208(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 24);
  *(v3 + 24) = 1;

  sub_222A34E38(v4);

  v5 = *(v1 + 16);
  v6 = *(v5 + 32);
  if (v6 != *MEMORY[0x277CF1788] && (v6 >= 1 ? (v7 = v6 == *MEMORY[0x277CF1780]) : (v7 = 1), v7))
  {
    v12 = *(v5 + 40);
    *(v5 + 40) = a1;

    v8 = a1;
  }

  else
  {
    v9 = [a1 state];
    v10 = *(v1 + 16);
    if (v9 || !*(*(v10 + 48) + 16))
    {
      v11 = *(v10 + 16);

      [v11 receiveCompletion_];
    }
  }
}

void sub_222AA6340()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  if (v2 >= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 24) = 1;

  sub_222A34E38(v2);

  [v3 cancel];
}

void *sub_222AA63DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3[3] = 0;
  v3[4] = BPSDemandMax();
  v3[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = 0;
  v3[6] = v7;
  v3[2] = a1;
  return v3;
}

void sub_222AA6448(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ScanConversationsSubscriber();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_currentConversation] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD08, &qword_222B0BB80);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD10, &qword_222B0BB88);
  swift_allocObject();
  v6 = swift_unknownObjectRetain();
  *(v5 + 16) = sub_222AA63DC(v6, &qword_27D01DD18, &qword_222B0BB90);
  *&v4[OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_downstream] = v5;
  v10.receiver = v4;
  v10.super_class = v3;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = *(v1 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers17ScanConversations_inner);
  *(v1 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers17ScanConversations_inner) = v7;
  v9 = v7;

  [*(v2 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers17ScanConversations_upstream) subscribe_];
}

uint64_t sub_222AA6708(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v91 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v91 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v91 - v14;
  sub_222A25344(a1, v102);
  type metadata accessor for Turn(0);
  if (!swift_dynamicCast())
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v52 = sub_222B02148();
    __swift_project_value_buffer(v52, qword_280CBC458);
    sub_222A25344(a1, v102);
    v53 = sub_222B02128();
    v54 = sub_222B028D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v101[0] = v56;
      *v55 = 136315138;
      __swift_project_boxed_opaque_existential_1(v102, v102[3]);
      v101[3] = swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D138, &unk_222B06790);
      v57 = sub_222B023D8();
      v59 = v58;
      __swift_destroy_boxed_opaque_existential_0(v102);
      v60 = sub_222A230FC(v57, v59, v101);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_222A1C000, v53, v54, "ScanConversationsSubscriber ignored unexpected input type %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x223DC7E30](v56, -1, -1);
      MEMORY[0x223DC7E30](v55, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v102);
    }

    return BPSDemandMax();
  }

  v96 = v10;
  v97 = v7;
  v98 = v15;
  v16 = v101[0];
  v17 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_currentConversation;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (v18 >> 62)
  {
LABEL_74:
    if (sub_222B02DC8())
    {
      goto LABEL_4;
    }

LABEL_69:
    swift_beginAccess();

    MEMORY[0x223DC6810](v83);
    if (*((*(v2 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222B02648();
    }

    sub_222B02688();
    swift_endAccess();
    v84 = BPSDemandMax();
    goto LABEL_82;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_69;
  }

LABEL_4:
  v93 = v2;
  v92 = v16;
  v19 = *(v16 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);
  v94 = v19 >> 62;
  v95 = v17;
  v2 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v16 = sub_222B02DC8();
  }

  else
  {
    v16 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v19 & 0xC000000000000001;
  v91 = v19 + 32;

  v17 = 0;
  v99 = v19;
  v100 = v19 & 0xC000000000000001;
  while (v16 != v17)
  {
    if (v20)
    {
      v21 = MEMORY[0x223DC6F00](v17, v19);
    }

    else
    {
      if (v17 >= *(v2 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v21 = *(v19 + 8 * v17 + 32);
    }

    v22 = v21;
    if ([v21 anyEventType] == 6)
    {
      v23 = [v22 payload];
      if (v23)
      {
        v24 = v23;
        v25 = sub_222B01798();
        v27 = v26;

        v28 = sub_222B01788();
        v29 = v27;
        v20 = v100;
        sub_222A26530(v25, v29);
      }

      else
      {
        v28 = 0;
      }

      v7 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

      v30 = [v7 event];
      if (!v30)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = v22;
    }

    v7 = sub_222A250BC(0, &qword_280CB4B80, 0x277D5A800);
    [v30 anyEventType];
    v31 = sub_222B02A28();
    if (!v31 || v7 != v31)
    {
      goto LABEL_19;
    }

    v36 = [v30 payload];
    if (v36)
    {
      v37 = v36;
      v38 = sub_222B01798();
      v40 = v39;

      v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v7 = sub_222B01788();
      v42 = v38;
      v43 = v40;
      v19 = v99;
      v20 = v100;
      sub_222A26530(v42, v43);
      v44 = v41;
    }

    else
    {
      v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v7 = 0;
    }

    v33 = [v44 initWithData_];

    if (!v33)
    {
      goto LABEL_19;
    }

    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();

    if (!v45)
    {
      v30 = v33;
      v19 = v99;
LABEL_19:

LABEL_20:
      v32 = sub_222B018D8();
      (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
      v33 = v22;
      goto LABEL_21;
    }

    v46 = [v45 clientConversationTrace];
    if (v46 && (v47 = v46, v7 = [v46 previousTurnID], v47, v7))
    {
      v48 = sub_222B01798();
      v50 = v49;

      sub_222A67044(v48, v50, v13);
      sub_222A26530(v48, v50);
    }

    else
    {
      v51 = sub_222B018D8();
      (*(*(v51 - 8) + 56))(v13, 1, 1, v51);
    }

    v19 = v99;
LABEL_21:

    v34 = sub_222B018D8();
    a1 = (*(*(v34 - 8) + 48))(v13, 1, v34);
    sub_222A264C8(v13);
    if (a1 != 1)
    {
      v16 = v17;
      break;
    }

    if (__OFADD__(v17++, 1))
    {
      goto LABEL_73;
    }
  }

  v17 = v95;
  if (v94)
  {
    if (v16 == sub_222B02DC8())
    {
      goto LABEL_54;
    }

LABEL_46:
    if (v20)
    {
      v62 = MEMORY[0x223DC6F00](v16, v19);
    }

    else
    {
      if (v16 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_84;
      }

      v62 = *(v91 + 8 * v16);
    }

    v63 = v62;
    v2 = v93;
    v64 = sub_222A66E54();
    v16 = v92;
    if (v64)
    {
      v65 = v64;
      v66 = [v64 clientConversationTrace];
      if (v66 && (v67 = v66, v68 = [v66 previousTurnID], v67, v68))
      {
        v69 = sub_222B01798();
        v71 = v70;

        v72 = v96;
        sub_222A67044(v69, v71, v96);
        sub_222A26530(v69, v71);
      }

      else
      {
        v75 = sub_222B018D8();
        v72 = v96;
        (*(*(v75 - 8) + 56))(v96, 1, 1, v75);
      }

      v63 = v65;
    }

    else
    {
      v76 = sub_222B018D8();
      v72 = v96;
      (*(*(v76 - 8) + 56))(v96, 1, 1, v76);
    }

    v77 = v97;
    sub_222A6E45C(v72, v97);
    v73 = sub_222B018D8();
    v78 = *(v73 - 8);
    result = (*(v78 + 48))(v77, 1, v73);
    if (result != 1)
    {
      v74 = v98;
      (*(v78 + 32))(v98, v77, v73);
      sub_222A264C8(v72);
      (*(v78 + 56))(v74, 0, 1, v73);
      goto LABEL_60;
    }

    goto LABEL_89;
  }

  if (v16 != *(v2 + 16))
  {
    goto LABEL_46;
  }

LABEL_54:
  v73 = sub_222B018D8();
  v74 = v98;
  (*(*(v73 - 8) + 56))(v98, 1, 1, v73);
  v16 = v92;
  v2 = v93;
LABEL_60:

  sub_222B018D8();
  v79 = (*(*(v73 - 8) + 48))(v74, 1, v73);
  sub_222A264C8(v74);
  if (v79 != 1)
  {
    goto LABEL_69;
  }

  v80 = *(v2 + v17);
  if (v80 >> 62)
  {
    result = sub_222B02DC8();
    if (!result)
    {
      goto LABEL_79;
    }

LABEL_63:
    v81 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v80 & 0xC000000000000001) == 0)
    {
      if ((v81 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v81 < *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_68;
      }

      __break(1u);
LABEL_89:
      __break(1u);
      return result;
    }

    MEMORY[0x223DC6F00](v81, v80);

LABEL_68:
    v82 = sub_222B01888();

    if (v82)
    {
      goto LABEL_69;
    }

    goto LABEL_79;
  }

  result = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_63;
  }

LABEL_79:
  v85 = *(v2 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  a1 = swift_allocObject();
  a1[6] = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v7 = swift_allocObject();
  v7[2] = 0;
  if (!(v85 >> 62))
  {
    v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_81;
  }

LABEL_84:
  v86 = sub_222B02DC8();
LABEL_81:
  v87 = sub_222A84F40();
  v88 = swift_allocObject();
  *(v88 + 16) = v86;
  a1[2] = v7;
  a1[3] = v87;
  a1[4] = v88;
  a1[5] = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCF0, &qword_222B0BB70);
  v89 = swift_allocObject();
  *(v89 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_222B06DF0;
  *(v90 + 32) = v16;
  *(v2 + v17) = v90;

  v84 = sub_222AA6114(v89, sub_222AE3AE8);

LABEL_82:

  return v84;
}

void sub_222AA73C8(void *a1)
{
  v3 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_currentConversation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (!sub_222B02DC8())
    {
      goto LABEL_6;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v5 = *(v1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  v6 = swift_allocObject();
  v6[6] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  if (v5 >> 62)
  {
    v8 = sub_222B02DC8();
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = sub_222A84F40();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v6[2] = v7;
  v6[3] = v9;
  v6[4] = v10;
  v6[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCF0, &qword_222B0BB70);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;

  sub_222AA6114(v11, sub_222AE3AE8);

  *(v1 + v3) = MEMORY[0x277D84F90];

LABEL_6:
  sub_222AA6208(a1);
}

id sub_222AA7694(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id static ORCHEvents.requestID(_:)()
{
  v0 = sub_222A66E6C();
  v1 = [v0 eventMetadata];

  v2 = [v1 requestId];
  return v2;
}

void __swiftcall WakeWordTrimmer.init(localeHandler:)(SiriPrivateLearningAnalytics::WakeWordTrimmer *__return_ptr retstr, SiriPrivateLearningAnalytics::CurrentLocales *localeHandler)
{
  region = localeHandler->siriVoice.region;
  retstr->localeHandler.siriVoice.language = localeHandler->siriVoice.language;
  retstr->localeHandler.siriVoice.region = region;
  retstr->localeHandler.emptyIdentifier = localeHandler->emptyIdentifier;
  v3 = localeHandler->device.region;
  retstr->localeHandler.device.language = localeHandler->device.language;
  retstr->localeHandler.device.region = v3;
  v4 = localeHandler->siri.region;
  retstr->localeHandler.siri.language = localeHandler->siri.language;
  retstr->localeHandler.siri.region = v4;
}

uint64_t *WakeWordTrimmer.trim(tokens:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD30, &qword_222B0BBE0);
  MEMORY[0x28223BE20](v2 - 8);
  v130 = &v119 - v3;
  v4 = WakeWordTrimmer.getLocale()();
  if (!v4.value._object)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v52 = sub_222B02148();
    __swift_project_value_buffer(v52, qword_280CBC458);
    v53 = sub_222B02128();
    v54 = sub_222B028E8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_222A1C000, v53, v54, "[ASRFeatureExtractor] #TrimWakeWords: Siri Locale was nil. Not attempting to trim wake words", v55, 2u);
      MEMORY[0x223DC7E30](v55, -1, -1);
    }

    goto LABEL_59;
  }

  countAndFlagsBits = v4.value._countAndFlagsBits;
  object = v4.value._object;
  if (qword_280CBA628 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v7 = sub_222B02148();
    v8 = __swift_project_value_buffer(v7, qword_280CBC458);

    v121 = v8;
    v9 = sub_222B02128();
    v10 = sub_222B028C8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v132 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_222A230FC(countAndFlagsBits, object, &v132);
      _os_log_impl(&dword_222A1C000, v9, v10, "[ASRFeatureExtractor] #TrimWakeWords: Trimming wake words for locale %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DC7E30](v12, -1, -1);
      MEMORY[0x223DC7E30](v11, -1, -1);
    }

    v13 = _s28SiriPrivateLearningAnalytics15WakeWordTrimmerV17getTriggerPhrases6localeSaySSGSS_tFZ_0(countAndFlagsBits, object);
    v14 = sub_222B02128();
    v15 = sub_222B028C8();
    v16 = os_log_type_enabled(v14, v15);
    v127 = v13;
    v129 = countAndFlagsBits;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v13;
      v20 = v18;
      v132 = v18;
      *v17 = 136315138;
      v21 = MEMORY[0x223DC6850](v19, MEMORY[0x277D837D0]);
      countAndFlagsBits = v22;
      v23 = a1;
      v24 = sub_222A230FC(v21, v22, &v132);

      *(v17 + 4) = v24;
      a1 = v23;
      _os_log_impl(&dword_222A1C000, v14, v15, "[ASRFeatureExtractor] #TrimWakeWords: Wake words: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DC7E30](v20, -1, -1);
      MEMORY[0x223DC7E30](v17, -1, -1);
    }

    v122 = object;
    object = a1[2];
    v26 = MEMORY[0x277D84F90];
    v119 = a1;
    if (object)
    {
      v27 = (a1 + 5);
      a1 = &v132;
      do
      {
        v29 = *(v27 - 1);
        v28 = *v27;
        v132 = 32;
        v133 = 0xE100000000000000;
        MEMORY[0x28223BE20](v25);
        *(&v119 - 2) = &v132;

        v31 = sub_222AA87B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222AAA918, (&v119 - 4), v29, v28, v30);
        v32 = *(v31 + 16);
        countAndFlagsBits = *(v26 + 2);
        v33 = countAndFlagsBits + v32;
        if (__OFADD__(countAndFlagsBits, v32))
        {
          goto LABEL_81;
        }

        v34 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v33 <= *(v26 + 3) >> 1)
        {
          if (!*(v34 + 16))
          {
            goto LABEL_9;
          }
        }

        else
        {
          if (countAndFlagsBits <= v33)
          {
            v36 = countAndFlagsBits + v32;
          }

          else
          {
            v36 = countAndFlagsBits;
          }

          v26 = sub_222AA8D84(isUniquelyReferenced_nonNull_native, v36, 1, v26);
          if (!*(v34 + 16))
          {
LABEL_9:

            if (v32)
            {
              goto LABEL_82;
            }

            goto LABEL_10;
          }
        }

        if ((*(v26 + 3) >> 1) - *(v26 + 2) < v32)
        {
          goto LABEL_83;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v37 = *(v26 + 2);
          v38 = __OFADD__(v37, v32);
          v39 = v37 + v32;
          if (v38)
          {
            goto LABEL_85;
          }

          *(v26 + 2) = v39;
        }

LABEL_10:
        v27 += 2;
        --object;
      }

      while (object);
    }

    v128 = 0;
    v40 = *(v26 + 2);
    if (!v40)
    {
      break;
    }

    v132 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v40, 0);
    v41 = 0;
    v42 = v132;
    v43 = (v26 + 56);
    while (v41 < *(v26 + 2))
    {
      v44 = *(v43 - 3);
      v45 = *(v43 - 2);
      v46 = *(v43 - 1);
      v47 = *v43;

      v48 = MEMORY[0x223DC6660](v44, v45, v46, v47);
      a1 = v49;

      v132 = v42;
      object = *(v42 + 16);
      v50 = *(v42 + 24);
      countAndFlagsBits = object + 1;
      if (object >= v50 >> 1)
      {
        sub_222A23AE4((v50 > 1), object + 1, 1);
        v42 = v132;
      }

      ++v41;
      *(v42 + 16) = countAndFlagsBits;
      v51 = v42 + 16 * object;
      *(v51 + 32) = v48;
      *(v51 + 40) = a1;
      v43 += 4;
      if (v40 == v41)
      {

        goto LABEL_37;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    swift_once();
  }

  v42 = MEMORY[0x277D84F90];
LABEL_37:
  v56 = *(v42 + 16);
  v57 = MEMORY[0x277D84F90];
  v58 = v128;
  v120 = v42;
  if (v56)
  {
    v131 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v56, 0);
    v57 = v131;
    v59 = (v42 + 40);
    do
    {
      v60 = *v59;
      v132 = *(v59 - 1);
      v133 = v60;

      v61 = v130;
      sub_222B018E8();
      v62 = sub_222B01988();
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
      sub_222A397FC();
      a1 = sub_222B02B78();
      object = v63;
      sub_222AAA934(v61);

      v131 = v57;
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      countAndFlagsBits = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        sub_222A23AE4((v64 > 1), v65 + 1, 1);
        v57 = v131;
      }

      *(v57 + 16) = countAndFlagsBits;
      v66 = v57 + 16 * v65;
      *(v66 + 32) = a1;
      *(v66 + 40) = object;
      v59 += 2;
      --v56;
    }

    while (v56);
  }

  v67 = v127;
  v126 = v127[2];
  if (v126)
  {
    v68 = 0;
    v124 = v57;
    v125 = (v127 + 4);
    while (1)
    {
      if (v68 >= v67[2])
      {
        goto LABEL_84;
      }

      v129 = v68;
      v69 = &v125[16 * v68];
      countAndFlagsBits = *v69;
      v70 = v69[1];
      v132 = 32;
      v133 = 0xE100000000000000;
      MEMORY[0x28223BE20](v67);
      *(&v119 - 2) = &v132;
      swift_bridgeObjectRetain_n();
      v123 = countAndFlagsBits;
      v130 = v70;
      v72 = sub_222AA87B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222AAAACC, (&v119 - 4), countAndFlagsBits, v70, v71);
      v128 = v58;
      v73 = v72[2];
      if (v73)
      {
        break;
      }

      v75 = MEMORY[0x277D84F90];
LABEL_53:
      v57 = v124;
      v85 = sub_222AA84A0(v75, v124);
      v58 = v128;
      if (v85)
      {

        v96 = v130;

        v97 = sub_222B02128();
        v98 = sub_222B028C8();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v132 = v100;
          *v99 = 136315138;
          v101 = sub_222A230FC(v123, v96, &v132);

          *(v99 + 4) = v101;
          _os_log_impl(&dword_222A1C000, v97, v98, "[ASRFeatureExtractor] #TrimWakeWords: Trigger phrase %s detected. Removing from utterance", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v100);
          MEMORY[0x223DC7E30](v100, -1, -1);
          MEMORY[0x223DC7E30](v99, -1, -1);
        }

        else
        {
        }

        v102 = *(v75 + 16);

        v103 = v120;
        v104 = *(v120 + 16);
        if (v104 >= v102)
        {
          v105 = v102;
        }

        else
        {
          v105 = *(v120 + 16);
        }

        if (v102)
        {
          v106 = v105;
        }

        else
        {
          v106 = 0;
        }

        sub_222B03088();
        swift_unknownObjectRetain_n();
        v107 = v103;
        v108 = swift_dynamicCastClass();
        if (!v108)
        {
          swift_unknownObjectRelease();
          v108 = MEMORY[0x277D84F90];
        }

        v109 = *(v108 + 16);

        if (v109 == v104 - v106)
        {
          a1 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!a1)
          {
            a1 = MEMORY[0x277D84F90];
            goto LABEL_75;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          sub_222AAA1DC(v107, v107 + 32, v106, (2 * v104) | 1);
          a1 = v118;
LABEL_75:
          swift_unknownObjectRelease();
        }

        v110 = sub_222B02128();
        v111 = sub_222B028C8();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v132 = v113;
          *v112 = 136315138;
          v114 = MEMORY[0x223DC6850](a1, MEMORY[0x277D837D0]);
          v116 = a1;
          v117 = sub_222A230FC(v114, v115, &v132);

          *(v112 + 4) = v117;
          a1 = v116;
          _os_log_impl(&dword_222A1C000, v110, v111, "[ASRFeatureExtractor] #TrimWakeWords: New utterance: %s", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v113);
          MEMORY[0x223DC7E30](v113, -1, -1);
          MEMORY[0x223DC7E30](v112, -1, -1);
        }

        return a1;
      }

      v68 = v129 + 1;

      v67 = v127;
      if (v68 == v126)
      {
        goto LABEL_55;
      }
    }

    v132 = MEMORY[0x277D84F90];
    a1 = v72;
    sub_222A23AE4(0, v73, 0);
    v74 = 0;
    v75 = v132;
    v76 = a1 + 7;
    while (v74 < a1[2])
    {
      v77 = *(v76 - 3);
      v78 = *(v76 - 2);
      v79 = *(v76 - 1);
      v80 = *v76;

      countAndFlagsBits = MEMORY[0x223DC6660](v77, v78, v79, v80);
      object = v81;

      v132 = v75;
      v83 = *(v75 + 16);
      v82 = *(v75 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_222A23AE4((v82 > 1), v83 + 1, 1);
        v75 = v132;
      }

      ++v74;
      *(v75 + 16) = v83 + 1;
      v84 = v75 + 16 * v83;
      *(v84 + 32) = countAndFlagsBits;
      *(v84 + 40) = object;
      v76 += 4;
      if (v73 == v74)
      {

        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_80;
  }

LABEL_55:

  v86 = v57;
  v87 = sub_222B02128();
  v88 = sub_222B028C8();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v132 = v90;
    *v89 = 136315138;
    v91 = MEMORY[0x223DC6850](v86, MEMORY[0x277D837D0]);
    v93 = v92;

    v94 = sub_222A230FC(v91, v93, &v132);

    *(v89 + 4) = v94;
    _os_log_impl(&dword_222A1C000, v87, v88, "[ASRFeatureExtractor] #TrimWakeWords: No wake words detected. Utterance used: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v90);
    MEMORY[0x223DC7E30](v90, -1, -1);
    MEMORY[0x223DC7E30](v89, -1, -1);
  }

  else
  {
  }

  a1 = v119;
LABEL_59:

  return a1;
}

uint64_t sub_222AA84A0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = sub_222B02F78();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222AA855C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_222B024B8();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_222B024B8();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_222B02F78();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_222B024B8();
      v7 = v9;
    }

    while (v9);
  }

  sub_222B024B8();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

Swift::String_optional __swiftcall WakeWordTrimmer.getLocale()()
{
  v1 = v0[6];
  v2 = v0[7];
  v9 = v0[4];
  v10 = v0[5];

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v1, v2);
  v4 = v9;
  v3 = v10;
  v5 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v5 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (sub_222A397FC(), (sub_222B02B98() & 1) != 0) || v9 == 95 && v10 == 0xE100000000000000 || (sub_222B02F78() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  v6 = v4;
  v7 = v3;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

unint64_t sub_222AA87B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_222B02548();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_222AA8D84(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_222AA8D84((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_222B02528();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_222B02468();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_222B02468();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_222B02548();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_222AA8D84(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_222B02548();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_222AA8D84(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_222AA8D84((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_222B02468();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_222AA8B74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD98, &qword_222B0C110);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_222AA8C78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_222AA8D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDF0, &qword_222B0BD60);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_222AA8EE0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_222AA9000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDF8, &qword_222B0BD68);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_222AA910C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDE8, &qword_222B0BD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_222AA9224(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CA90, &qword_222B04978);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_222AA9364(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDE0, &unk_222B0BD48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222AA94B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDC8, &qword_222B0BD28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DDD0, &unk_222B0BD30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222AA9618(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_222AA9738(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

void *sub_222AA9858(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_222AA99D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_222AA9B94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

char *sub_222AA9D70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD78, &qword_222B0BCC0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_222AA9E7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD90, &unk_222B0BCE0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_222AA9F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD88, &qword_222B0BCD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222AAA0A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD60, &qword_222B0BCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD68, &qword_222B0BCB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_222AAA1DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_222AAA2B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA60, &qword_222B04950);
      v7 = *(sub_222B018D8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_222B018D8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_222AAA454(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78() & 1;
  }
}

unint64_t sub_222AAA4AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_222B02478();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_222B02548();
}

void *_s28SiriPrivateLearningAnalytics15WakeWordTrimmerV17getTriggerPhrases6localeSaySSGSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (a1 == 0x53555F6E65 && a2 == 0xE500000000000000)
  {
    return &unk_2835F1218;
  }

  v5 = sub_222B02F78();
  v7 = a1 == 0x55415F6E65 && a2 == 0xE500000000000000;
  result = &unk_2835F1218;
  if ((v5 & 1) == 0 && !v7)
  {
    v8 = sub_222B02F78();
    v9 = a1 == 0x41435F6E65 && a2 == 0xE500000000000000;
    v10 = v9;
    result = &unk_2835F1218;
    if ((v8 & 1) == 0 && !v10)
    {
      v11 = sub_222B02F78();
      v12 = a1 == 0x42475F6E65 && a2 == 0xE500000000000000;
      v13 = v12;
      result = &unk_2835F1218;
      if ((v11 & 1) == 0 && !v13)
      {
        v14 = sub_222B02F78();
        v15 = a1 == 0x45495F6E65 && a2 == 0xE500000000000000;
        v16 = v15;
        result = &unk_2835F1218;
        if ((v14 & 1) == 0 && !v16)
        {
          v17 = sub_222B02F78();
          v18 = a1 == 0x4E495F6E65 && a2 == 0xE500000000000000;
          v19 = v18;
          result = &unk_2835F1218;
          if ((v17 & 1) == 0 && !v19)
          {
            v20 = sub_222B02F78();
            v21 = a1 == 0x5A4E5F6E65 && a2 == 0xE500000000000000;
            v22 = v21;
            result = &unk_2835F1218;
            if ((v20 & 1) == 0 && !v22)
            {
              v23 = sub_222B02F78();
              v24 = a1 == 0x47535F6E65 && a2 == 0xE500000000000000;
              v25 = v24;
              result = &unk_2835F1218;
              if ((v23 & 1) == 0 && !v25)
              {
                v26 = sub_222B02F78();
                v27 = a1 == 0x415A5F6E65 && a2 == 0xE500000000000000;
                v28 = v27;
                result = &unk_2835F1218;
                if ((v26 & 1) == 0 && !v28)
                {
                  if (sub_222B02F78())
                  {
                    return &unk_2835F1218;
                  }

                  if (qword_280CBA628 != -1)
                  {
                    swift_once();
                  }

                  v29 = sub_222B02148();
                  __swift_project_value_buffer(v29, qword_280CBC458);

                  v30 = sub_222B02128();
                  v31 = sub_222B028E8();

                  if (os_log_type_enabled(v30, v31))
                  {
                    v32 = swift_slowAlloc();
                    v33 = swift_slowAlloc();
                    v34 = v33;
                    *v32 = 136315138;
                    *(v32 + 4) = sub_222A230FC(a1, a2, &v34);
                    _os_log_impl(&dword_222A1C000, v30, v31, "[ASRFeatureExtractor] #getTriggerPhrase: locale %s not enabled", v32, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v33);
                    MEMORY[0x223DC7E30](v33, -1, -1);
                    MEMORY[0x223DC7E30](v32, -1, -1);
                  }

                  return MEMORY[0x277D84F90];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_222AAA934(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD30, &qword_222B0BBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222AAA99C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_222B02F78() & 1;
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_222AAAA18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_222AAAA60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_222AAAAE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v22 = MEMORY[0x277D84F90];
    sub_222A23B04(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_222B02BC8();
    v5 = 0;
    v21 = *(a1 + 36);
    v19 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v20 = *(*(a1 + 48) + 4 * v4);
      v8 = *(*(a1 + 56) + 8 * v4);
      v9 = *(v22 + 16);
      v10 = *(v22 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_222A23B04((v10 > 1), v9 + 1, 1);
      }

      *(v22 + 16) = v9 + 1;
      v11 = v22 + 16 * v9;
      *(v11 + 32) = v20;
      *(v11 + 40) = v8;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v12 = *(a1 + 64 + 8 * v7);
      if ((v12 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v13 = v12 & (-2 << (v4 & 0x3F));
      if (v13)
      {
        v6 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v7 << 6;
        v15 = v7 + 1;
        v16 = (a1 + 72 + 8 * v7);
        while (v15 < (v6 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            sub_222A965F4(v4, v21, 0);
            v6 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        sub_222A965F4(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_222AAAD30(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v36 = a2;
  v37 = a1;
  v34 = a4;
  v7 = &qword_27D01D840;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660);
  v33 = *(v38 - 8);
  v8 = MEMORY[0x28223BE20](v38);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = &v33 - v10;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = a3;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v40 = v5;
      v17 = v7;
      v18 = v16;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v18 << 6);
      v20 = v39;
      v21 = *(v39 + 48);
      v22 = sub_222B018D8();
      v23 = v35;
      (*(*(v22 - 8) + 16))(v35, v21 + *(*(v22 - 8) + 72) * v19, v22);
      v24 = (*(v20 + 56) + 16 * v19);
      v25 = *v24;
      v26 = v24[1];
      v27 = &v23[*(v38 + 48)];
      *v27 = v25;
      *(v27 + 1) = v26;
      v28 = v23;
      v29 = v41;
      v7 = v17;
      sub_222AB959C(v28, v41, v17, &qword_222B09660);

      v30 = v40;
      v31 = v37(v29);
      v5 = v30;
      if (v30)
      {
        sub_222A34F20(v41, &qword_27D01D840, &qword_222B09660);

        return;
      }

      if (v31)
      {
        break;
      }

      v14 &= v14 - 1;
      sub_222A34F20(v41, v17, &qword_222B09660);
      v16 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v32 = v34;
    sub_222AB959C(v41, v34, &qword_27D01D840, &qword_222B09660);
    (*(v33 + 56))(v32, 0, 1, v38);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        (*(v33 + 56))(v34, 1, 1, v38);
        return;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        v40 = v5;
        v17 = v7;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_222AAB028(uint64_t (*a1)(uint64_t *))
{
  sub_222B02D68();
  while (1)
  {
    sub_222B02E18();
    v3 = v6;
    if (!v6)
    {

      return 0;
    }

    v4 = a1(&v6);
    if (v1)
    {
      break;
    }

    if (v4)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return v3;
}

void *sub_222AAB0F0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC6F00](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_222AAB204(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  MEMORY[0x28223BE20](v4 - 8);
  v193 = &v183 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  MEMORY[0x28223BE20](v6 - 8);
  v205 = &v183 - v7;
  v207 = sub_222B018D8();
  v212 = *(v207 - 1);
  v8 = MEMORY[0x28223BE20](v207);
  v192 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v197 = &v183 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v203 = &v183 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v202 = (&v183 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v195 = &v183 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v209 = &v183 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v183 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v183 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D838, &qword_222B0C0D0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v183 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D840, &qword_222B09660);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v200 = &v183 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v201 = &v183 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v204 = &v183 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v194 = &v183 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v206 = &v183 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v208 = &v183 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v183 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v183 - v45;
  swift_beginAccess();
  v199 = a1;
  v47 = *(a1 + 64);
  v210 = a2;
  v214 = a2;

  sub_222AAAD30(sub_222AB937C, v213, v47, v27);

  v48 = *(v29 + 48);
  v211 = v28;
  if (v48(v27, 1, v28) == 1)
  {
    sub_222A34F20(v27, &qword_27D01D838, &qword_222B0C0D0);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v49 = sub_222B02148();
    __swift_project_value_buffer(v49, qword_280CBC458);
    v50 = sub_222B02128();
    v51 = sub_222B028E8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_222A1C000, v50, v51, "#extractTurn: Request does not have a UEI turn ID. Skipping", v52, 2u);
      MEMORY[0x223DC7E30](v52, -1, -1);
    }

    return 0;
  }

  v187 = 0;
  sub_222AB959C(v27, v46, &qword_27D01D840, &qword_222B09660);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v53 = sub_222B02148();
  v54 = __swift_project_value_buffer(v53, qword_280CBC458);
  v55 = v212;
  v56 = v212 + 16;
  v190 = *(v212 + 16);
  v57 = v207;
  v190(v24, v210, v207);
  sub_222A34E48(v46, v44, &qword_27D01D840, &qword_222B09660);
  v191 = v54;
  v58 = sub_222B02128();
  v59 = sub_222B028D8();
  v60 = os_log_type_enabled(v58, v59);
  v198 = v46;
  v189 = v22;
  if (v60)
  {
    v61 = v57;
    v62 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v215 = v186;
    *v62 = 136315394;
    sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v185 = v59;
    v63 = sub_222B02F38();
    v184 = v58;
    v65 = v64;
    v188 = v56;
    v66 = *(v212 + 8);
    (v66)(v24, v61);
    v67 = sub_222A230FC(v63, v65, &v215);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    v68 = v208;
    sub_222A34E48(v44, v208, &qword_27D01D840, &qword_222B09660);
    v69 = v211;

    (*(v212 + 32))(v22, v68, v61);
    v70 = sub_222B02F38();
    v72 = v71;
    v73 = v22;
    v74 = v66;
    v56 = v188;
    (v74)(v73, v61);
    v55 = v212;
    sub_222A34F20(v44, &qword_27D01D840, &qword_222B09660);
    v75 = sub_222A230FC(v70, v72, &v215);
    v46 = v198;

    *(v62 + 14) = v75;
    v76 = v184;
    _os_log_impl(&dword_222A1C000, v184, v185, "#extractTurn: Called for request %s and turn %s", v62, 0x16u);
    v77 = v186;
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v77, -1, -1);
    v78 = v62;
    v57 = v61;
    MEMORY[0x223DC7E30](v78, -1, -1);
  }

  else
  {

    sub_222A34F20(v44, &qword_27D01D840, &qword_222B09660);
    v74 = *(v55 + 8);
    (v74)(v24, v57);
    v69 = v211;
  }

  v79 = v206;
  sub_222A34E48(v46, v206, &qword_27D01D840, &qword_222B09660);
  v80 = *(v79 + *(v69 + 48) + 8);
  v81 = v209;
  if (!*(v80 + 16))
  {

    (v74)(v79, v57);
    v111 = v200;
    sub_222A34E48(v46, v200, &qword_27D01D840, &qword_222B09660);
    v112 = sub_222B02128();
    v113 = v74;
    v114 = sub_222B028E8();
    if (os_log_type_enabled(v112, v114))
    {
      v115 = swift_slowAlloc();
      v207 = v113;
      v116 = v55;
      v117 = v115;
      v118 = swift_slowAlloc();
      v215 = v118;
      *v117 = 136315138;
      v119 = v208;
      sub_222A34E48(v111, v208, &qword_27D01D840, &qword_222B09660);

      v120 = v189;
      (*(v116 + 32))(v189, v119, v57);
      sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v121 = sub_222B02F38();
      v122 = v111;
      v124 = v123;
      (v207)(v120, v57);
      v125 = v122;
      v46 = v198;
      sub_222A34F20(v125, &qword_27D01D840, &qword_222B09660);
      v126 = sub_222A230FC(v121, v124, &v215);

      *(v117 + 4) = v126;
      _os_log_impl(&dword_222A1C000, v112, v114, "#extractTurn: Turn %s has no associated request id.", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x223DC7E30](v118, -1, -1);
      MEMORY[0x223DC7E30](v117, -1, -1);
    }

    else
    {

      sub_222A34F20(v111, &qword_27D01D840, &qword_222B09660);
    }

    goto LABEL_28;
  }

  v82 = v190;
  v190(v209, (v80 + ((*(v55 + 80) + 32) & ~*(v55 + 80))), v57);

  v206 = v55 + 8;
  (v74)(v79, v57);
  sub_222AB93EC(&qword_280CB8300, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v83 = v210;
  if ((sub_222B02338() & 1) == 0)
  {
    v127 = v194;
    sub_222A34E48(v46, v194, &qword_27D01D840, &qword_222B09660);
    v128 = v195;
    v82(v195, v81, v57);
    v129 = v83;
    v130 = v202;
    v82(v202, v129, v57);
    v131 = sub_222B02128();
    v132 = sub_222B028D8();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v207 = v74;
      v134 = v133;
      v210 = swift_slowAlloc();
      v215 = v210;
      *v134 = 136315650;
      v135 = v208;
      sub_222A34E48(v127, v208, &qword_27D01D840, &qword_222B09660);
      LODWORD(v211) = v132;

      v136 = v189;
      (*(v212 + 32))(v189, v135, v57);
      sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v137 = sub_222B02F38();
      v138 = v57;
      v140 = v139;
      v141 = v136;
      v142 = v127;
      v143 = v207;
      (v207)(v141, v138);
      sub_222A34F20(v142, &qword_27D01D840, &qword_222B09660);
      v144 = sub_222A230FC(v137, v140, &v215);

      *(v134 + 4) = v144;
      *(v134 + 12) = 2080;
      v145 = sub_222B02F38();
      v147 = v146;
      v143(v128, v138);
      v148 = sub_222A230FC(v145, v147, &v215);

      *(v134 + 14) = v148;
      *(v134 + 22) = 2080;
      v149 = v202;
      v46 = v198;
      v150 = sub_222B02F38();
      v152 = v151;
      v143(v149, v138);
      v153 = sub_222A230FC(v150, v152, &v215);

      *(v134 + 24) = v153;
      _os_log_impl(&dword_222A1C000, v131, v211, "#extractTurn: Turn %s (Primary Request: %s) has multiple requests. Skipping non primary request %s.", v134, 0x20u);
      v154 = v210;
      swift_arrayDestroy();
      MEMORY[0x223DC7E30](v154, -1, -1);
      MEMORY[0x223DC7E30](v134, -1, -1);

      v143(v209, v138);
    }

    else
    {

      (v74)(v130, v57);
      (v74)(v128, v57);
      sub_222A34F20(v127, &qword_27D01D840, &qword_222B09660);
      (v74)(v81, v57);
    }

LABEL_28:
    sub_222A34F20(v46, &qword_27D01D840, &qword_222B09660);
    return 0;
  }

  sub_222A34E48(v46, v204, &qword_27D01D840, &qword_222B09660);
  v84 = v201;
  sub_222A34E48(v46, v201, &qword_27D01D840, &qword_222B09660);
  v85 = v203;
  v188 = v56;
  v82(v203, v81, v57);
  v86 = sub_222B02128();
  v87 = sub_222B028D8();
  v210 = v86;
  v88 = os_log_type_enabled(v86, v87);
  v207 = v74;
  if (v88)
  {
    v89 = v84;
    v90 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v215 = v202;
    *v90 = 134218498;
    v91 = v204;
    v92 = v208;
    sub_222A34E48(v204, v208, &qword_27D01D840, &qword_222B09660);
    v93 = v92 + *(v211 + 48);
    LODWORD(v200) = v87;
    v94 = *(*(v93 + 8) + 16);

    (v74)(v92, v57);
    sub_222A34F20(v91, &qword_27D01D840, &qword_222B09660);
    *(v90 + 4) = v94;
    *(v90 + 12) = 2080;
    sub_222A34E48(v89, v92, &qword_27D01D840, &qword_222B09660);

    v95 = v189;
    (*(v212 + 32))(v189, v92, v57);
    sub_222AB93EC(&qword_280CB82F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v96 = sub_222B02F38();
    v98 = v97;
    v99 = v207;
    (v207)(v95, v57);
    sub_222A34F20(v201, &qword_27D01D840, &qword_222B09660);
    v100 = v96;
    v101 = v211;
    v102 = sub_222A230FC(v100, v98, &v215);
    v46 = v198;

    *(v90 + 14) = v102;
    *(v90 + 22) = 2080;
    v103 = v203;
    v104 = sub_222B02F38();
    v106 = v105;
    v99(v103, v57);
    v107 = sub_222A230FC(v104, v106, &v215);

    *(v90 + 24) = v107;
    v108 = v210;
    _os_log_impl(&dword_222A1C000, v210, v200, "#extractTurn: Extracting %ld requests as part of Turn %s (Primary Request: %s)", v90, 0x20u);
    v109 = v202;
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v109, -1, -1);
    MEMORY[0x223DC7E30](v90, -1, -1);

    v110 = v197;
  }

  else
  {
    sub_222A34F20(v204, &qword_27D01D840, &qword_222B09660);

    (v74)(v85, v57);
    sub_222A34F20(v84, &qword_27D01D840, &qword_222B09660);
    v110 = v197;
    v92 = v208;
    v101 = v211;
  }

  v155 = *&v46[*(v101 + 48) + 8];
  v156 = v199;

  v210 = sub_222AB53EC(v155, v196, v156, sub_222AB183C);

  sub_222A34E48(v46, v92, &qword_27D01D840, &qword_222B09660);

  v157 = v212;
  v158 = *(v212 + 32);
  v158(v110, v92, v57);

  sub_222A66668(v110, v205);

  v159 = sub_222A7C100(v110);
  if (v159)
  {
    v160 = v159;
    v161 = v157;
    v162 = [v159 clockIdentifier];
    if (v162)
    {
      v163 = v162;
      v164 = [v162 value];
      if (v164)
      {
        v165 = v164;
        v166 = sub_222B01798();
        v168 = v167;

        v169 = v193;
        sub_222A67044(v166, v168, v193);

        sub_222A26530(v166, v168);
        if ((*(v161 + 48))(v169, 1, v57) != 1)
        {
          v178 = v192;
          v158(v192, v169, v57);
          v179 = v199;
          swift_beginAccess();
          v180 = *(v179 + 56);
          if (*(v180 + 16))
          {

            v181 = sub_222A26F40(v178);
            v173 = v190;
            if (v182)
            {
              v171 = *(*(v180 + 56) + 8 * v181);
            }

            else
            {

              v171 = MEMORY[0x277D84F90];
            }
          }

          else
          {

            v171 = MEMORY[0x277D84F90];
            v173 = v190;
          }

          (v207)(v178, v57);
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    v172 = *(v157 + 56);
    v169 = v193;
    v172(v193, 1, 1, v57);
LABEL_33:
    sub_222A34F20(v169, &unk_27D01DA50, &unk_222B04E20);
    v171 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v171 = MEMORY[0x277D84F90];
LABEL_34:
  v173 = v190;
LABEL_35:
  v174 = v189;
  v173(v189, v110, v57);
  v216 = v210;
  sub_222A96EC4(v171);
  v175 = v207;
  (v207)(v110, v57);
  v175(v209, v57);
  v176 = v216;
  type metadata accessor for Turn(0);
  v177 = swift_allocObject();
  v158(v177 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v174, v57);
  *(v177 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = v176;
  sub_222AB959C(v205, v177 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date, &qword_27D01D700, &qword_222B07320);
  sub_222A34F20(v198, &qword_27D01D840, &qword_222B09660);
  return v177;
}