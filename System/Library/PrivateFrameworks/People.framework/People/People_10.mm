uint64_t sub_22F0B9584()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F0B9624(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F0B96B0(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F0B9758(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465766F72707041;
  if (v2 != 1)
  {
    v5 = 0x6465696E6544;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E69646E6550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_22F0B9864()
{
  v1 = 0x6465766F72707041;
  if (*v0 != 1)
  {
    v1 = 0x6465696E6544;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6550;
  }
}

void sub_22F0B9A10(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = sub_22F0D0CAC();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v35 = 0;
    sub_22F0BE920(v3, v5, 10);
    goto LABEL_63;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v34[0] = v3;
    v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v3 == 43)
    {
      if (v6)
      {
        if (--v6)
        {
          v23 = 0;
          v24 = v34 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v3 != 45)
    {
      if (v6)
      {
        v30 = 0;
        v31 = v34;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          ++v31;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v6)
    {
      if (--v6)
      {
        v15 = 0;
        v16 = v34 + 1;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          v18 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            break;
          }

          ++v16;
          if (!--v6)
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
    if ((v3 & 0x1000000000000000) != 0)
    {
      v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v9 = sub_22F0D15DC();
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v19 = 0;
          if (v9)
          {
            v20 = v9 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                goto LABEL_61;
              }

              v22 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_61;
              }

              v19 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                goto LABEL_61;
              }

              ++v20;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v27 = 0;
        if (v9)
        {
          while (1)
          {
            v28 = *v9 - 48;
            if (v28 > 9)
            {
              goto LABEL_61;
            }

            v29 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              goto LABEL_61;
            }

            v27 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v6) = 1;
      goto LABEL_62;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_61;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v6) = 0;
LABEL_62:
        v35 = v6;
LABEL_63:

        return;
      }

      goto LABEL_61;
    }

    __break(1u);
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t _sSo15BMAskToBuyEventC6PeopleE9requestIdSSvg_0()
{
  v1 = [v0 requestID];
  v2 = sub_22F0D0CAC();

  return v2;
}

void sub_22F0B9D9C(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = [v2 status] - 1;
  if (v5 >= 3)
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBEC40);
    v8 = sub_22F0D09FC();
    v9 = sub_22F0D123C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22EFE1000, v8, v9, a1, v10, 2u);
      MEMORY[0x2318FE8B0](v10, -1, -1);
    }

    LOBYTE(v6) = 3;
  }

  else
  {
    v6 = 0x10200u >> (8 * v5);
  }

  *a2 = v6;
}

uint64_t sub_22F0B9EDC(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_22F0D05BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  if ([v3 status] == 1)
  {
    sub_22F0D05AC();
    [v3 eventTime];
    sub_22F0D04BC();
    if (*a1 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, v24);
    v19 = [objc_opt_self() seconds];
    sub_22F0D019C();

    sub_22F0D018C();
    (*(v6 + 8))(v8, v5);
    sub_22F0D054C();
    v20 = *(v10 + 8);
    v20(v13, v9);
    v21 = sub_22F0D053C();
    v20(v16, v9);
    v20(v18, v9);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_22F0BA1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 eventTime];
  sub_22F0D04BC();
  if (*a1 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, a2);
  v14 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v7 + 8))(v9, v6);
  sub_22F0D054C();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_22F0BA3FC()
{
  v1 = [*v0 requestID];
  v2 = sub_22F0D0CAC();

  return v2;
}

uint64_t sub_22F0BA4C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  v12 = sub_22F0D05BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*v5 eventTime];
  sub_22F0D04BC();
  if (*a3 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, a4);
  v16 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v9 + 8))(v11, v8);
  sub_22F0D054C();
  return (*(v13 + 8))(v15, v12);
}

void BMAskToBuyEvent.ProductType.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_22F0D174C();

  v5 = 5;
  if (v4 < 5)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t sub_22F0BA748()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

double sub_22F0BA830(uint64_t a1)
{
  sub_22F0D0D5C();

  return result;
}

uint64_t sub_22F0BA904(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F0BA9F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x736B6F6F62;
  v5 = 0xE800000000000000;
  v6 = 0x65726F7453707061;
  v7 = 0xED0000736E6F6974;
  v8 = 0x7069726373627573;
  if (v2 != 3)
  {
    v8 = 0x5654656C707061;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x73656E755469;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t static BMAskToBuyEvent.productType(withCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v12 = a1;
  v13 = a2;
  v11 = &v12;
  result = sub_22F051C9C(sub_22F034BF4, v10, &unk_2843CAF48);
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v12 = a1;
    v13 = a2;
    MEMORY[0x28223BE20](result);
    v9 = &v12;
    result = sub_22F051C9C(sub_22F0C09D0, v8, &unk_2843CAFA8);
    if (result)
    {
      v7 = 0;
    }

    else
    {
      v12 = a1;
      v13 = a2;
      MEMORY[0x28223BE20](result);
      v9 = &v12;
      result = sub_22F051C9C(sub_22F0C09D0, v8, &unk_2843CAFF8);
      if (result)
      {
        v7 = 4;
      }

      else if (a1 == 4347219 && a2 == 0xE300000000000000)
      {
        v7 = 3;
      }

      else
      {
        result = sub_22F0D188C();
        if (result)
        {
          v7 = 3;
        }

        else
        {
          v7 = 2;
        }
      }
    }
  }

  *a3 = v7;
  return result;
}

uint64_t BMFindMyLocationChangeEvent.reason.getter()
{
  v1 = [v0 locationChangeType];
  if (!v1)
  {
    return 0x64657461647075;
  }

  v2 = 0x6E776F6E6B6E75;
  if (v1 == 1)
  {
    v2 = 0x2064657472617473;
  }

  if (v1 == 2)
  {
    return 0x20646570706F7473;
  }

  else
  {
    return v2;
  }
}

uint64_t static BMStoreDataPeople.squashRequestEvents<A>(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA2400, &qword_22F0DBBC8);
  if (sub_22F0D173C())
  {

    v20 = a1;
    v19 = sub_22F0D0AAC();
    MEMORY[0x28223BE20](v19);
    sub_22F0D103C();
    sub_22F0D0B3C();
    swift_getWitnessTable();
    sub_22F0D0E8C();
    v4 = v21;
    sub_22F0D0B2C();
    sub_22F0CFF1C();
    swift_getWitnessTable();
    sub_22F0D104C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
    v5 = sub_22F0D167C();

    _s6People011BMStoreDataA0O9logicSortySaySo0bC0_pGAFFZ_0(v5);
    v7 = v6;

    v21 = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_22;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v18 = v8;
        v9 = 0;
        v10 = v7 & 0xC000000000000001;
        while (v10)
        {
          v11 = MEMORY[0x2318FDAB0](v9, v7);
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_23;
          }

LABEL_10:
          v20 = v11;
          if (sub_22F0BB564(&v20, v4, a2))
          {
            sub_22F0D15EC();
            sub_22F0D162C();
            sub_22F0D163C();
            sub_22F0D15FC();
            v8 = v18;
            v10 = v7 & 0xC000000000000001;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v9;
          if (v12 == v8)
          {
            goto LABEL_23;
          }
        }

        if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_22:
        v8 = sub_22F0D143C();
        if (!v8)
        {
          goto LABEL_23;
        }
      }

      v11 = *(v7 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_23:

    a1 = sub_22F0D167C();
    sub_22F0D00CC();
  }

  else
  {
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v13 = sub_22F0D0A1C();
    __swift_project_value_buffer(v13, qword_280CBEC40);
    v14 = sub_22F0D09FC();
    v15 = sub_22F0D123C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22EFE1000, v14, v15, "Event can not be squashed, are not FamilyRequestEvent", v16, 2u);
      MEMORY[0x2318FE8B0](v16, -1, -1);
    }

    sub_22F0CFF1C();
  }

  return a1;
}

void sub_22F0BB210(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v24 = *a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA2400, &qword_22F0DBBC8);
  if (swift_dynamicCast())
  {
    sub_22EFE6B9C(v22, v25);
    v4 = v26;
    v5 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v5 + 32))(v22, v4, v5);
    v6 = LOBYTE(v22[0]);
    if (LOBYTE(v22[0]) == 3)
    {
      if (qword_280CBEC38 != -1)
      {
        swift_once();
      }

      v7 = sub_22F0D0A1C();
      __swift_project_value_buffer(v7, qword_280CBEC40);
      v8 = sub_22F0D09FC();
      v9 = sub_22F0D123C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_22EFE1000, v8, v9, "Event can not be squashed, status is unresolved", v10, 2u);
        MEMORY[0x2318FE8B0](v10, -1, -1);
      }
    }

    else
    {
      v15 = v26;
      v16 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      *&v22[0] = (*(v16 + 16))(v15, v16);
      *(&v22[0] + 1) = v17;
      MEMORY[0x2318FD2C0](46, 0xE100000000000000);
      v18 = 0xE800000000000000;
      v19 = 0x6465766F72707041;
      if (v6 != 1)
      {
        v19 = 0x6465696E6544;
        v18 = 0xE600000000000000;
      }

      if (v6)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0x676E69646E6550;
      }

      if (v6)
      {
        v21 = v18;
      }

      else
      {
        v21 = 0xE700000000000000;
      }

      MEMORY[0x2318FD2C0](v20, v21);

      v24 = v3;
      sub_22F0D0B3C();
      swift_unknownObjectRetain();
      sub_22F0D0B5C();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_22F0C094C(v22);
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v11 = sub_22F0D0A1C();
    __swift_project_value_buffer(v11, qword_280CBEC40);
    v12 = sub_22F0D09FC();
    v13 = sub_22F0D123C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22EFE1000, v12, v13, "Event can not be squashed, is not FamilyRequestEvent", v14, 2u);
      MEMORY[0x2318FE8B0](v14, -1, -1);
    }
  }
}

BOOL sub_22F0BB564(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA2400, &qword_22F0DBBC8);
  if (swift_dynamicCast())
  {
    sub_22EFE6B9C(v15, v18);
    v3 = v19;
    v4 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v4 + 32))(v15, v3, v4);
    if (LOBYTE(v15[0]) > 1u)
    {
      if (LOBYTE(v15[0]) != 2)
      {
LABEL_13:
        v11 = v19;
        v12 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        *&v15[0] = (*(v12 + 16))(v11, v12);
        *(&v15[0] + 1) = v13;
        MEMORY[0x2318FD2C0](46, 0xE100000000000000);
        MEMORY[0x2318FD2C0](0x676E69646E6550, 0xE700000000000000);
        sub_22F0D0B4C();

        v14 = v17 != 0;
        if (v17)
        {
          swift_unknownObjectRelease();
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        return v14;
      }
    }

    else if (!LOBYTE(v15[0]))
    {
      swift_bridgeObjectRelease_n();
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return 1;
    }

    v10 = sub_22F0D188C();

    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22F0C094C(v15);
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v5 = sub_22F0D0A1C();
  __swift_project_value_buffer(v5, qword_280CBEC40);
  v6 = sub_22F0D09FC();
  v7 = sub_22F0D123C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22EFE1000, v6, v7, "Event can not be squashed, is not FamilyRequestEvent", v8, 2u);
    MEMORY[0x2318FE8B0](v8, -1, -1);
  }

  return 0;
}

void *static BMFindMyLocationChangeEvent.squashEvents(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F0D143C())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318FDAB0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(a1 + 8 * v3 + 32);
      }

      v9 = v8;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v11 = [v8 idsHandle];
      v12 = sub_22F0D0CAC();
      v14 = v13;

      v15 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v4;
      v17 = sub_22EFFDA80(v12, v14);
      v19 = v4[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_23;
      }

      v23 = v18;
      if (v4[3] < v22)
      {
        sub_22F07C2AC(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_22EFFDA80(v12, v14);
        if ((v23 & 1) != (v24 & 1))
        {
          result = sub_22F0D191C();
          __break(1u);
          return result;
        }

LABEL_15:
        if (v23)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v28 = v17;
      sub_22F06141C();
      v17 = v28;
      if (v23)
      {
LABEL_4:
        v5 = v17;

        v4 = v33;
        v6 = v33[7];
        v7 = *(v6 + 8 * v5);
        *(v6 + 8 * v5) = v15;

        goto LABEL_5;
      }

LABEL_16:
      v4 = v33;
      v33[(v17 >> 6) + 8] |= 1 << v17;
      v25 = (v4[6] + 16 * v17);
      *v25 = v12;
      v25[1] = v14;
      *(v4[7] + 8 * v17) = v15;

      v26 = v4[2];
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v21)
      {
        goto LABEL_24;
      }

      v4[2] = v27;
LABEL_5:
      ++v3;
      if (v10 == i)
      {
        goto LABEL_27;
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
    ;
  }

  v4 = MEMORY[0x277D84F98];
LABEL_27:
  v29 = v4[2];
  if (!v29)
  {
    goto LABEL_30;
  }

  v30 = sub_22F0BBC1C(v4[2], 0);
  v31 = sub_22F0C013C(&v33, v30 + 4, v29, v4);
  sub_22F003524(v33);
  if (v31 != v29)
  {
    __break(1u);
LABEL_30:

    return MEMORY[0x277D84F90];
  }

  return v30;
}

BOOL sub_22F0BBAF4(id *a1, void **a2)
{
  v2 = *a2;
  [*a1 eventTime];
  v4 = v3;
  [v2 eventTime];
  return v4 < v5;
}

void *sub_22F0BBBA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

void *sub_22F0BBC1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
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

void *sub_22F0BBCB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

uint64_t sub_22F0BBD24(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22EFE6A1C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F0BBF40(v6, &qword_27DAA2480, 0x277CF1448, sub_22F0BC5F8, sub_22F0BC06C);
  return sub_22F0D15FC();
}

uint64_t sub_22F0BBDD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22EFE6A1C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F0BBF40(v6, &qword_27DAA2430, 0x277CF1AC8, sub_22F0BCE8C, sub_22F0BC28C);
  return sub_22F0D15FC();
}

uint64_t sub_22F0BBE8C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22EFE6A1C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F0BBF40(v6, &unk_27DAA23F0, 0x277CF1910, sub_22F0BD80C, sub_22F0BC4FC);
  return sub_22F0D15FC();
}

void sub_22F0BBF40(uint64_t a1, unint64_t *a2, void *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), void (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  v11 = sub_22F0D182C();
  if (v11 < v10)
  {
    if (v10 >= -1)
    {
      v12 = v11;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F01B924(0, a2, a3);
        v14 = sub_22F0D0FCC();
        *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      v16[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v15 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    a5(0, v10, 1, a1);
  }
}

void sub_22F0BC06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_22F0D05BC();
  v8 = MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v31 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v37 = *a4;
    v14 = v37 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v33 = v14;
    v34 = a3;
    v16 = *(v37 + 8 * a3);
    v32 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 signalDate];
      sub_22F0D058C();

      v22 = [v20 signalDate];
      v23 = v35;
      sub_22F0D058C();

      v24 = sub_22F0D059C();
      v25 = *v13;
      v26 = v23;
      v27 = v36;
      (*v13)(v26, v36);
      v25(v12, v27);

      if (v24 != -1)
      {
LABEL_4:
        a3 = v34 + 1;
        v14 = v33 + 8;
        v15 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v28;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F0BC28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v30 = v4;
    v31 = a3;
    v6 = *(v32 + 8 * a3);
    v29 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 requestID];
      v11 = sub_22F0D0CAC();
      v13 = v12;

      v14 = [v9 requestID];
      v15 = sub_22F0D0CAC();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {
      }

      else
      {
        v19 = sub_22F0D188C();

        if ((v19 & 1) == 0)
        {
          [v8 eventTime];
          v21 = v20;
          [v9 eventTime];
          v23 = v22;

          if (v21 >= v23)
          {
            goto LABEL_5;
          }

          goto LABEL_23;
        }
      }

      if ([v8 status] == 1 && objc_msgSend(v9, sel_status) != 1 || objc_msgSend(v8, sel_status) == 2 && objc_msgSend(v9, sel_status) == 3)
      {
      }

      else
      {
        if ([v8 status] != 3 || objc_msgSend(v9, sel_status) != 3)
        {

LABEL_5:
          a3 = v31 + 1;
          v4 = v30 + 8;
          v5 = v29 - 1;
          if (v31 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v24 = [v8 approvalTime];
        v25 = [v9 approvalTime];

        if (v24 >= v25)
        {
          goto LABEL_5;
        }
      }

LABEL_23:
      if (!v32)
      {
        __break(1u);
        return;
      }

      v26 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v26;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_22F0BC4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 eventTime];
      v15 = v14;
      [v13 eventTime];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F0BC5F8(void ***a1, uint64_t a2, void *a3, int64_t a4)
{
  v7 = v4;
  v118 = a1;
  v127 = sub_22F0D05BC();
  v10 = MEMORY[0x28223BE20](v127);
  v126 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v112 - v13;
  v14 = a3[1];
  if (v14 >= 1)
  {
    v15 = 0;
    v124 = (v12 + 8);
    v16 = MEMORY[0x277D84F90];
    v117 = a4;
    v113 = a3;
    while (1)
    {
      v17 = v15++;
      if (v15 < v14)
      {
        v121 = v14;
        v115 = v16;
        v116 = v7;
        v18 = *a3;
        v19 = *(*a3 + 8 * v15);
        v20 = v17;
        v119 = 8 * v17;
        v21 = (v18 + 8 * v17);
        v22 = *v21;
        v5 = (v21 + 2);
        v6 = v19;
        v23 = v22;
        v24 = [v6 signalDate];
        v25 = v125;
        sub_22F0D058C();

        v26 = [v23 signalDate];
        v27 = v126;
        sub_22F0D058C();

        v122 = sub_22F0D059C();
        v28 = *v124;
        v29 = v127;
        (*v124)(v27, v127);
        v120 = v28;
        (v28)(v25, v29);

        v114 = v20;
        v30 = v20 + 2;
        while (1)
        {
          v15 = v121;
          if (v121 == v30)
          {
            break;
          }

          LODWORD(v123) = v122 == -1;
          v31 = *(v5 - 8);
          v32 = *v5;
          v6 = v31;
          v33 = [v32 signalDate];
          v34 = v125;
          sub_22F0D058C();

          v35 = [v6 signalDate];
          v36 = v126;
          sub_22F0D058C();

          v37 = sub_22F0D059C();
          v38 = v36;
          v39 = v127;
          v40 = v120;
          (v120)(v38, v127);
          v40(v34, v39);

          ++v30;
          v5 += 8;
          if (((v123 ^ (v37 != -1)) & 1) == 0)
          {
            v15 = v30 - 1;
            break;
          }
        }

        v16 = v115;
        v7 = v116;
        a4 = v117;
        v17 = v114;
        v41 = v119;
        if (v122 == -1)
        {
          if (v15 < v114)
          {
            __break(1u);
LABEL_122:
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
            return;
          }

          a3 = v113;
          if (v114 < v15)
          {
            v42 = 8 * v15 - 8;
            v43 = v15;
            v44 = v114;
            do
            {
              if (v44 != --v43)
              {
                v46 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v45 = *(v46 + v41);
                *(v46 + v41) = *(v46 + v42);
                *(v46 + v42) = v45;
              }

              ++v44;
              v42 -= 8;
              v41 += 8;
            }

            while (v44 < v43);
          }
        }

        else
        {
          a3 = v113;
        }
      }

      v47 = a3[1];
      if (v15 < v47)
      {
        if (__OFSUB__(v15, v17))
        {
          goto LABEL_117;
        }

        if (v15 - v17 < a4)
        {
          v48 = v17 + a4;
          if (__OFADD__(v17, a4))
          {
            goto LABEL_118;
          }

          if (v48 >= v47)
          {
            v48 = a3[1];
          }

          if (v48 < v17)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v15 != v48)
          {
            v115 = v16;
            v116 = v7;
            v123 = *a3;
            v49 = v123 + 8 * v15 - 8;
            v114 = v17;
            v50 = (v17 - v15);
            v119 = v48;
            do
            {
              v121 = v49;
              v122 = v15;
              v51 = *(v123 + 8 * v15);
              v120 = v50;
              do
              {
                v52 = *v49;
                v53 = v51;
                v5 = v52;
                v54 = [v53 signalDate];
                v6 = v125;
                sub_22F0D058C();

                v55 = [v5 signalDate];
                v56 = v126;
                sub_22F0D058C();

                a4 = sub_22F0D059C();
                v57 = *v124;
                v58 = v56;
                v59 = v127;
                (*v124)(v58, v127);
                v57(v6, v59);

                if (a4 != -1)
                {
                  break;
                }

                if (!v123)
                {
                  goto LABEL_122;
                }

                v60 = *v49;
                v51 = *(v49 + 8);
                *v49 = v51;
                *(v49 + 8) = v60;
                v49 -= 8;
              }

              while (!__CFADD__(v50++, 1));
              v15 = v122 + 1;
              v49 = v121 + 8;
              v50 = v120 - 1;
            }

            while (v122 + 1 != v119);
            v15 = v119;
            v16 = v115;
            v7 = v116;
            a3 = v113;
            v17 = v114;
          }
        }
      }

      if (v15 < v17)
      {
        goto LABEL_116;
      }

      v62 = v16;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v16 = v62;
      }

      else
      {
        v16 = sub_22F03C658(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v16 + 2);
      v63 = *(v16 + 3);
      a4 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v16 = sub_22F03C658((v63 > 1), v64 + 1, 1, v16);
      }

      *(v16 + 2) = a4;
      v65 = &v16[16 * v64];
      *(v65 + 4) = v17;
      *(v65 + 5) = v15;
      v66 = *v118;
      if (!*v118)
      {
        goto LABEL_126;
      }

      if (v64)
      {
        while (1)
        {
          v5 = a4 - 1;
          if (a4 >= 4)
          {
            break;
          }

          if (a4 == 3)
          {
            v67 = *(v16 + 4);
            v68 = *(v16 + 5);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
LABEL_56:
            if (v70)
            {
              goto LABEL_105;
            }

            v83 = &v16[16 * a4];
            v85 = *v83;
            v84 = *(v83 + 1);
            v86 = __OFSUB__(v84, v85);
            v87 = v84 - v85;
            v88 = v86;
            if (v86)
            {
              goto LABEL_108;
            }

            v89 = &v16[16 * v5 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v77 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v77)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v87, v92))
            {
              goto LABEL_112;
            }

            if (v87 + v92 >= v69)
            {
              if (v69 < v92)
              {
                v5 = a4 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v93 = &v16[16 * a4];
          v95 = *v93;
          v94 = *(v93 + 1);
          v77 = __OFSUB__(v94, v95);
          v87 = v94 - v95;
          v88 = v77;
LABEL_70:
          if (v88)
          {
            goto LABEL_107;
          }

          v96 = &v16[16 * v5];
          v98 = *(v96 + 4);
          v97 = *(v96 + 5);
          v77 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v77)
          {
            goto LABEL_110;
          }

          if (v99 < v87)
          {
            goto LABEL_3;
          }

LABEL_77:
          v104 = v5 - 1;
          if (v5 - 1 >= a4)
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
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v105 = v16;
          a4 = *&v16[16 * v104 + 32];
          v6 = *&v16[16 * v5 + 40];
          sub_22F0BDE84((*a3 + 8 * a4), (*a3 + 8 * *&v16[16 * v5 + 32]), (*a3 + 8 * v6), v66);
          if (v7)
          {
            goto LABEL_99;
          }

          if (v6 < a4)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_22F0BE90C(v105);
          }

          if (v104 >= *(v105 + 2))
          {
            goto LABEL_102;
          }

          v106 = &v105[16 * v104];
          *(v106 + 4) = a4;
          *(v106 + 5) = v6;
          v128 = v105;
          sub_22F0BE880(v5);
          v16 = v128;
          a4 = *(v128 + 2);
          if (a4 <= 1)
          {
            goto LABEL_3;
          }
        }

        v71 = &v16[16 * a4 + 32];
        v72 = *(v71 - 64);
        v73 = *(v71 - 56);
        v77 = __OFSUB__(v73, v72);
        v74 = v73 - v72;
        if (v77)
        {
          goto LABEL_103;
        }

        v76 = *(v71 - 48);
        v75 = *(v71 - 40);
        v77 = __OFSUB__(v75, v76);
        v69 = v75 - v76;
        v70 = v77;
        if (v77)
        {
          goto LABEL_104;
        }

        v78 = &v16[16 * a4];
        v80 = *v78;
        v79 = *(v78 + 1);
        v77 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v77)
        {
          goto LABEL_106;
        }

        v77 = __OFADD__(v69, v81);
        v82 = v69 + v81;
        if (v77)
        {
          goto LABEL_109;
        }

        if (v82 >= v74)
        {
          v100 = &v16[16 * v5 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v77 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v77)
          {
            goto LABEL_113;
          }

          if (v69 < v103)
          {
            v5 = a4 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      v14 = a3[1];
      a4 = v117;
      if (v15 >= v14)
      {
        goto LABEL_88;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = *v118;
  if (!*v118)
  {
    goto LABEL_127;
  }

  a4 = v16;
  v6 = a3;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v107 = a4;
  }

  else
  {
LABEL_120:
    v107 = sub_22F0BE90C(a4);
  }

  v128 = v107;
  v108 = *(v107 + 2);
  if (v108 >= 2)
  {
    while (*v6)
    {
      a4 = *&v107[16 * v108];
      v109 = v107;
      v110 = *&v107[16 * v108 + 24];
      sub_22F0BDE84((*v6 + 8 * a4), (*v6 + 8 * *&v107[16 * v108 + 16]), (*v6 + 8 * v110), v5);
      if (v7)
      {
        goto LABEL_99;
      }

      if (v110 < a4)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_22F0BE90C(v109);
      }

      if (v108 - 2 >= *(v109 + 2))
      {
        goto LABEL_115;
      }

      v111 = &v109[16 * v108];
      *v111 = a4;
      v111[1] = v110;
      v128 = v109;
      sub_22F0BE880(v108 - 1);
      v107 = v128;
      v108 = *(v128 + 2);
      if (v108 <= 1)
      {
        goto LABEL_99;
      }
    }

    goto LABEL_124;
  }

LABEL_99:
}

void sub_22F0BCE8C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_124:
    v5 = v4;
    v4 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
LABEL_4:
  v8 = v6++;
  v123 = v7;
  if (v6 >= v5)
  {
    goto LABEL_40;
  }

  v9 = *v4;
  v10 = *(*v4 + 8 * v6);
  v11 = *(*v4 + 8 * v8);
  v12 = v10;
  v13 = v11;
  v130 = _sSo24BMScreenTimeRequestEventC6PeopleE1loiySbAB_ABtFZ_0(v12, v13);

  v6 = v8 + 2;
  if (v8 + 2 >= v5)
  {
    goto LABEL_30;
  }

  v117 = v8;
  v14 = &v9[8 * v8 + 16];
  v125 = v5;
  while (1)
  {
    v127 = v6;
    v15 = *(v14 - 1);
    v16 = *v14;
    v17 = v15;
    v18 = [v16 requestID];
    v19 = sub_22F0D0CAC();
    v21 = v20;

    v5 = [v17 requestID];
    v22 = sub_22F0D0CAC();
    v24 = v23;

    if (v19 == v22 && v21 == v24)
    {
    }

    else
    {
      v26 = sub_22F0D188C();

      if ((v26 & 1) == 0)
      {
        [v16 eventTime];
        v28 = v27;
        [v17 eventTime];
        v30 = v29;

        v7 = v123;
        if (v130 == v28 >= v30)
        {
          break;
        }

        goto LABEL_8;
      }
    }

    v7 = v123;
    if ([v16 status] == 1 && objc_msgSend(v17, sel_status) != 1 || objc_msgSend(v16, sel_status) == 2 && objc_msgSend(v17, sel_status) == 3)
    {

      if (!v130)
      {
        v4 = a3;
        v6 = v127;
        v8 = v117;
        goto LABEL_40;
      }

      goto LABEL_8;
    }

    if ([v16 status] != 3 || objc_msgSend(v17, sel_status) != 3)
    {

      if (v130)
      {
        v4 = a3;
        v6 = v127;
        v8 = v117;
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    v31 = [v16 approvalTime];
    v32 = [v17 approvalTime];

    if (((v130 ^ (v31 >= v32)) & 1) == 0)
    {
      break;
    }

LABEL_8:
    v5 = v125;
    v6 = v127 + 1;
    ++v14;
    if (v125 == v127 + 1)
    {
      v6 = v125;
      goto LABEL_29;
    }
  }

  v6 = v127;
LABEL_29:
  v8 = v117;
LABEL_30:
  v4 = a3;
  if (!v130)
  {
LABEL_40:
    v39 = v4[1];
    if (v6 >= v39)
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_152;
    }

    if (v6 - v8 >= a4)
    {
      goto LABEL_73;
    }

    v40 = v8 + a4;
    if (__OFADD__(v8, a4))
    {
      goto LABEL_153;
    }

    if (v40 >= v39)
    {
      v40 = v4[1];
    }

    if (v40 < v8)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v6 == v40)
    {
      goto LABEL_73;
    }

    v131 = *v4;
    v41 = *v4 + 8 * v6 - 8;
    v118 = v8;
    v42 = v8 - v6;
    v122 = v40;
LABEL_51:
    v126 = v41;
    v128 = v6;
    v43 = v42;
    v44 = *(v131 + 8 * v6);
    v124 = v43;
    v45 = v43;
    while (1)
    {
      v46 = *v41;
      v47 = v44;
      v5 = v46;
      v48 = [v47 requestID];
      v49 = sub_22F0D0CAC();
      v51 = v50;

      v52 = [v5 requestID];
      v53 = sub_22F0D0CAC();
      v55 = v54;

      if (v49 == v53 && v51 == v55)
      {
      }

      else
      {
        v57 = sub_22F0D188C();

        if ((v57 & 1) == 0)
        {
          [v47 eventTime];
          v59 = v58;
          [v5 eventTime];
          v61 = v60;

          if (v59 >= v61)
          {
            goto LABEL_50;
          }

          goto LABEL_68;
        }
      }

      if ([v47 status] == 1 && objc_msgSend(v5, sel_status) != 1 || objc_msgSend(v47, sel_status) == 2 && objc_msgSend(v5, sel_status) == 3)
      {
      }

      else
      {
        if ([v47 status] != 3 || objc_msgSend(v5, sel_status) != 3)
        {

LABEL_50:
          v6 = v128 + 1;
          v41 = v126 + 8;
          v42 = v124 - 1;
          if (v128 + 1 != v122)
          {
            goto LABEL_51;
          }

          v6 = v122;
          v4 = a3;
          v7 = v123;
          v8 = v118;
LABEL_73:
          if (v6 < v8)
          {
            goto LABEL_151;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_22F03C658(0, *(v7 + 2) + 1, 1, v7);
          }

          v67 = *(v7 + 2);
          v66 = *(v7 + 3);
          v68 = v67 + 1;
          if (v67 >= v66 >> 1)
          {
            v7 = sub_22F03C658((v66 > 1), v67 + 1, 1, v7);
          }

          *(v7 + 2) = v68;
          v69 = &v7[16 * v67];
          *(v69 + 4) = v8;
          *(v69 + 5) = v6;
          v5 = *a1;
          if (*a1)
          {
            if (!v67)
            {
LABEL_3:
              v5 = v4[1];
              if (v6 >= v5)
              {
                goto LABEL_124;
              }

              goto LABEL_4;
            }

            while (2)
            {
              v70 = v68 - 1;
              if (v68 >= 4)
              {
                v75 = &v7[16 * v68 + 32];
                v76 = *(v75 - 64);
                v77 = *(v75 - 56);
                v81 = __OFSUB__(v77, v76);
                v78 = v77 - v76;
                if (v81)
                {
                  goto LABEL_138;
                }

                v80 = *(v75 - 48);
                v79 = *(v75 - 40);
                v81 = __OFSUB__(v79, v80);
                v73 = v79 - v80;
                v74 = v81;
                if (v81)
                {
                  goto LABEL_139;
                }

                v82 = &v7[16 * v68];
                v84 = *v82;
                v83 = *(v82 + 1);
                v81 = __OFSUB__(v83, v84);
                v85 = v83 - v84;
                if (v81)
                {
                  goto LABEL_141;
                }

                v81 = __OFADD__(v73, v85);
                v86 = v73 + v85;
                if (v81)
                {
                  goto LABEL_144;
                }

                if (v86 >= v78)
                {
                  v104 = &v7[16 * v70 + 32];
                  v106 = *v104;
                  v105 = *(v104 + 1);
                  v81 = __OFSUB__(v105, v106);
                  v107 = v105 - v106;
                  if (v81)
                  {
                    goto LABEL_148;
                  }

                  if (v73 < v107)
                  {
                    v70 = v68 - 2;
                  }
                }

                else
                {
LABEL_93:
                  if (v74)
                  {
                    goto LABEL_140;
                  }

                  v87 = &v7[16 * v68];
                  v89 = *v87;
                  v88 = *(v87 + 1);
                  v90 = __OFSUB__(v88, v89);
                  v91 = v88 - v89;
                  v92 = v90;
                  if (v90)
                  {
                    goto LABEL_143;
                  }

                  v93 = &v7[16 * v70 + 32];
                  v95 = *v93;
                  v94 = *(v93 + 1);
                  v81 = __OFSUB__(v94, v95);
                  v96 = v94 - v95;
                  if (v81)
                  {
                    goto LABEL_146;
                  }

                  if (__OFADD__(v91, v96))
                  {
                    goto LABEL_147;
                  }

                  if (v91 + v96 < v73)
                  {
                    goto LABEL_107;
                  }

                  if (v73 < v96)
                  {
                    v70 = v68 - 2;
                  }
                }
              }

              else
              {
                if (v68 == 3)
                {
                  v71 = *(v7 + 4);
                  v72 = *(v7 + 5);
                  v81 = __OFSUB__(v72, v71);
                  v73 = v72 - v71;
                  v74 = v81;
                  goto LABEL_93;
                }

                v97 = &v7[16 * v68];
                v99 = *v97;
                v98 = *(v97 + 1);
                v81 = __OFSUB__(v98, v99);
                v91 = v98 - v99;
                v92 = v81;
LABEL_107:
                if (v92)
                {
                  goto LABEL_142;
                }

                v100 = &v7[16 * v70];
                v102 = *(v100 + 4);
                v101 = *(v100 + 5);
                v81 = __OFSUB__(v101, v102);
                v103 = v101 - v102;
                if (v81)
                {
                  goto LABEL_145;
                }

                if (v103 < v91)
                {
                  goto LABEL_3;
                }
              }

              v108 = v70 - 1;
              if (v70 - 1 >= v68)
              {
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
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
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
LABEL_153:
                __break(1u);
                goto LABEL_154;
              }

              if (!*v4)
              {
                goto LABEL_158;
              }

              v109 = v6;
              v110 = *&v7[16 * v108 + 32];
              v111 = *&v7[16 * v70 + 40];
              sub_22F0BE338((*v4 + 8 * v110), (*v4 + 8 * *&v7[16 * v70 + 32]), (*v4 + 8 * v111), v5);
              if (v129)
              {
                goto LABEL_134;
              }

              if (v111 < v110)
              {
                goto LABEL_136;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v7 = sub_22F0BE90C(v7);
              }

              if (v108 >= *(v7 + 2))
              {
                goto LABEL_137;
              }

              v112 = &v7[16 * v108];
              *(v112 + 4) = v110;
              *(v112 + 5) = v111;
              sub_22F0BE880(v70);
              v68 = *(v7 + 2);
              v6 = v109;
              if (v68 <= 1)
              {
                goto LABEL_3;
              }

              continue;
            }
          }

LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          return;
        }

        v62 = [v47 approvalTime];
        v63 = [v5 approvalTime];

        if (v62 >= v63)
        {
          goto LABEL_50;
        }
      }

LABEL_68:
      if (!v131)
      {
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      v64 = *v41;
      v44 = *(v41 + 8);
      *v41 = v44;
      *(v41 + 8) = v64;
      v41 -= 8;
      if (__CFADD__(v45++, 1))
      {
        goto LABEL_50;
      }
    }
  }

LABEL_31:
  if (v6 >= v8)
  {
    if (v8 < v6)
    {
      v33 = 8 * v6 - 8;
      v34 = 8 * v8;
      v35 = v6;
      v36 = v8;
      while (1)
      {
        if (v36 != --v35)
        {
          v38 = *v4;
          if (!*v4)
          {
            goto LABEL_159;
          }

          v37 = *(v38 + v34);
          *(v38 + v34) = *(v38 + v33);
          *(v38 + v33) = v37;
        }

        ++v36;
        v33 -= 8;
        v34 += 8;
        if (v36 >= v35)
        {
          goto LABEL_40;
        }
      }
    }

    goto LABEL_40;
  }

LABEL_155:
  __break(1u);
LABEL_156:
  v7 = sub_22F0BE90C(v7);
LABEL_126:
  v113 = *(v7 + 2);
  if (v113 >= 2)
  {
    while (*v5)
    {
      v114 = *&v7[16 * v113];
      v115 = *&v7[16 * v113 + 24];
      sub_22F0BE338((*v5 + 8 * v114), (*v5 + 8 * *&v7[16 * v113 + 16]), (*v5 + 8 * v115), v4);
      if (v129)
      {
        goto LABEL_134;
      }

      if (v115 < v114)
      {
        goto LABEL_149;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22F0BE90C(v7);
      }

      if (v113 - 2 >= *(v7 + 2))
      {
        goto LABEL_150;
      }

      v116 = &v7[16 * v113];
      *v116 = v114;
      *(v116 + 1) = v115;
      sub_22F0BE880(v113 - 1);
      v113 = *(v7 + 2);
      if (v113 <= 1)
      {
        goto LABEL_134;
      }
    }

    goto LABEL_160;
  }

LABEL_134:
}

void sub_22F0BD80C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_22F0BE90C(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_22F0BE5C0((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F0BE90C(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_22F0BE880(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 eventTime];
      v19 = v18;
      [v17 eventTime];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 eventTime];
        v27 = v26;
        [v25 eventTime];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22F03C658(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_22F03C658((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
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

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_22F0BE5C0((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F0BE90C(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_22F0BE880(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 eventTime];
    v48 = v47;
    [v46 eventTime];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if (v110 + 1 != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
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

uint64_t sub_22F0BDE84(void **a1, void **a2, char *a3, void **a4)
{
  v60 = sub_22F0D05BC();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v52 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v61 = &a4[v15];
    if (a3 - a2 < 8)
    {
      v32 = a2;
    }

    else
    {
      v32 = a2;
      if (a2 > a1)
      {
        v53 = (v8 + 8);
        v57 = a1;
        v33 = v58;
LABEL_26:
        v52 = v32;
        v34 = v32 - 1;
        a3 -= 8;
        v35 = v61;
        v54 = v32 - 1;
        do
        {
          v36 = a4;
          v37 = a3 + 8;
          v38 = *--v35;
          v39 = *v34;
          v40 = v38;
          v56 = v40;
          v41 = v39;
          v55 = v41;
          v42 = [v40 signalDate];
          sub_22F0D058C();

          v43 = [v41 signalDate];
          v44 = v59;
          sub_22F0D058C();

          v45 = sub_22F0D059C();
          v46 = *v53;
          v47 = v44;
          v48 = v60;
          (*v53)(v47, v60);
          v46(v33, v48);

          if (v45 == -1)
          {
            a4 = v36;
            v49 = v57;
            v50 = v54;
            if (v37 != v52)
            {
              *a3 = *v54;
            }

            if (v61 <= v36 || (v32 = v50, v50 <= v49))
            {
              v32 = v50;
              goto LABEL_38;
            }

            goto LABEL_26;
          }

          a4 = v36;
          if (v37 != v61)
          {
            *a3 = *v35;
          }

          a3 -= 8;
          v61 = v35;
          v34 = v54;
        }

        while (v35 > v36);
        v61 = v35;
        v32 = v52;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v61 = &a4[v13];
    if (a2 - a1 >= 8)
    {
      v16 = a2;
      if (a2 < a3)
      {
        v54 = (v8 + 8);
        v55 = a3;
        v17 = (v8 + 8);
        while (1)
        {
          v57 = a1;
          v18 = *a4;
          v19 = *v16;
          v56 = v19;
          v20 = v18;
          v21 = [v19 signalDate];
          v22 = v58;
          sub_22F0D058C();

          v23 = [v20 signalDate];
          v24 = v59;
          sub_22F0D058C();

          v25 = a4;
          v26 = sub_22F0D059C();
          v27 = v16;
          v28 = *v17;
          v29 = v60;
          (*v17)(v24, v60);
          v28(v22, v29);

          if (v26 != -1)
          {
            break;
          }

          v30 = v27;
          v16 = v27 + 1;
          v31 = v57;
          a4 = v25;
          if (v57 != v27)
          {
            goto LABEL_14;
          }

LABEL_15:
          a1 = v31 + 1;
          if (a4 >= v61 || v16 >= v55)
          {
            goto LABEL_36;
          }
        }

        v30 = v25;
        a4 = v25 + 1;
        v31 = v57;
        v16 = v27;
        if (v57 == v25)
        {
          goto LABEL_15;
        }

LABEL_14:
        *v31 = *v30;
        goto LABEL_15;
      }
    }

LABEL_36:
    v32 = a1;
  }

LABEL_38:
  if (v32 != a4 || v32 >= (a4 + ((v61 - a4 + (v61 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v32, a4, 8 * (v61 - a4));
  }

  return 1;
}

uint64_t sub_22F0BE338(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = _sSo24BMScreenTimeRequestEventC6PeopleE1loiySbAB_ABtFZ_0(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = _sSo24BMScreenTimeRequestEventC6PeopleE1loiySbAB_ABtFZ_0(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_22F0BE5C0(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 eventTime];
        v35 = v34;
        [v33 eventTime];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 eventTime];
        v19 = v18;
        [v17 eventTime];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_22F0BE880(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22F0BE90C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_22F0BE920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;
  sub_22F0CFF1C();
  v4 = sub_22F0D0E3C();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22F0BEEAC(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_22F0D15DC();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
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

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_22F0BEEAC(uint64_t a1, unint64_t a2)
{
  v2 = sub_22F0D0E4C();
  v6 = sub_22F0BEF2C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22F0BEF2C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22F0D133C();
    if (!v9 || (v10 = v9, v11 = sub_22F0BBCB8(v9, 0, &qword_27DAA2450, &unk_22F0D58C0), v12 = sub_22F0BF094(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_22F0CFF1C(), , v12 == v10))
    {
      v13 = sub_22F0D0D4C();
      sub_22F0D00CC();
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
      return sub_22F0D0D4C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22F0D15DC();
LABEL_4:

  return sub_22F0D0D4C();
}

unint64_t sub_22F0BF094(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22F0BF2B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22F0D0DDC();
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
          result = sub_22F0D15DC();
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

    result = sub_22F0BF2B4(v12, a6, a7);
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

    result = sub_22F0D0DBC();
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

unint64_t sub_22F0BF2B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22F0D0DEC();
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
    v5 = MEMORY[0x2318FD300](15, a1 >> 16);
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

void *sub_22F0BF330(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_22F0D143C();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_22F0BBC1C(v5, 0);
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

uint64_t sub_22F0BF3CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
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
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&unk_27DAA24C0, &qword_27DAA24B8, &unk_22F0DBF70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24B8, &unk_22F0DBF70);
            v9 = sub_22F058984(v13, i, a3);
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
        sub_22F01B924(0, &qword_280CBD130, 0x277CF7D30);
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

uint64_t sub_22F0BF56C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
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
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&unk_27DAA24A8, &qword_27DAA24A0, &qword_22F0DBF68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24A0, &qword_22F0DBF68);
            v9 = sub_22F058A04(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1848, &qword_22F0D8120);
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

uint64_t sub_22F0BF708(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
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
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&unk_27DAA2490, &qword_27DAA2488, &qword_22F0DBF60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2488, &qword_22F0DBF60);
            v9 = sub_22F058984(v13, i, a3);
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
        sub_22F01B924(0, &qword_27DAA2480, 0x277CF1448);
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

uint64_t sub_22F0BF8A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
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
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&qword_27DAA2478, &qword_27DAA2470, &qword_22F0DBF58);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2470, &qword_22F0DBF58);
            v9 = sub_22F058984(v13, i, a3);
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
        sub_22F01B924(0, &qword_27DAA2430, 0x277CF1AC8);
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

uint64_t sub_22F0BFA48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F0D143C();
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
      result = sub_22F0D143C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F000654(&unk_27DAA2460, &qword_27DAA2458, &qword_22F0DBF48);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2458, &qword_22F0DBF48);
            v9 = sub_22F058A8C(v13, i, a3);
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
        sub_22F01B924(0, &unk_27DAA23F0, 0x277CF1910);
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

void *sub_22F0BFC38(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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

void *sub_22F0BFD34(void *result, void *a2, uint64_t a3, uint64_t a4)
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
        sub_22F0CFF1C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_22F0CFF1C();
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

void *sub_22F0BFE8C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
        sub_22F0CFF1C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_22F0CFF1C();
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

void *sub_22F0BFFE4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_22F0CFF1C();
        goto LABEL_24;
      }

      v11 += 2;
      sub_22F0CFF1C();
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

void *sub_22F0C013C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

BOOL _sSo24BMScreenTimeRequestEventC6PeopleE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v4 = [a1 requestID];
  v5 = sub_22F0D0CAC();
  v7 = v6;

  v8 = [a2 requestID];
  v9 = sub_22F0D0CAC();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_22F0D188C();

    if ((v13 & 1) == 0)
    {
      [a1 eventTime];
      v15 = v14;
      [a2 eventTime];
      return v15 < v16;
    }
  }

  if ([a1 status] == 1 && objc_msgSend(a2, sel_status) != 1 || objc_msgSend(a1, sel_status) == 2 && objc_msgSend(a2, sel_status) == 3)
  {
    return 1;
  }

  if ([a1 status] != 3 || objc_msgSend(a2, sel_status) != 3)
  {
    return 0;
  }

  v18 = [a1 approvalTime];
  return v18 < [a2 approvalTime];
}

void _s6People011BMStoreDataA0O9logicSortySaySo0bC0_pGAFFZ_0(unint64_t a1)
{
  if (sub_22F0A8B54(a1))
  {
    v2 = sub_22F0CFF1C();
    v7 = sub_22F0BF330(v2, sub_22F0BFA48);
    sub_22F0BBE8C(&v7);
LABEL_3:

    v3 = v7;
    sub_22F0CFF1C();
    if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
      sub_22F0D16AC();
    }

    else
    {
      sub_22F0D189C();
      sub_22F0D00CC();
    }

    return;
  }

  if (sub_22F0A8B60(a1))
  {
    v4 = sub_22F0CFF1C();
    v7 = sub_22F0BF330(v4, sub_22F0BF8A8);
    sub_22F0BBDD8(&v7);
    goto LABEL_3;
  }

  v5 = sub_22F0A8B6C(a1);
  if (!v5)
  {
    if (!sub_22F0A8B78(a1))
    {
      sub_22F0CFF1C();
      return;
    }

    v6 = sub_22F0CFF1C();
    v7 = sub_22F0BF330(v6, sub_22F0BF708);
    sub_22F0BBD24(&v7);
    goto LABEL_3;
  }

  if (v5 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1158, &unk_22F0DA960);
    sub_22F0D16AC();
  }

  else
  {
    sub_22F0CFF1C();
    sub_22F0D189C();
  }
}

unint64_t sub_22F0C0658()
{
  result = qword_27DAA2410;
  if (!qword_27DAA2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2410);
  }

  return result;
}

unint64_t sub_22F0C06B0()
{
  result = qword_27DAA2418;
  if (!qword_27DAA2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2418);
  }

  return result;
}

uint64_t sub_22F0C0764(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22F01B924(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F0C08A4()
{
  result = qword_27DAA2438;
  if (!qword_27DAA2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2438);
  }

  return result;
}

unint64_t sub_22F0C08F8()
{
  result = qword_27DAA2440;
  if (!qword_27DAA2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2440);
  }

  return result;
}

uint64_t sub_22F0C094C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2448, &unk_22F0DBF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of MessageConduitProtocol.sendMessage(details:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F01F1CC;

  return v9(a1, a2, a3);
}

void *sub_22F0C0B34()
{
  type metadata accessor for LaunchRecorderWriter();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x694468636E75616CLL;
  *(v2 + 24) = 0xEB00000000797261;
  type metadata accessor for LaunchRecorder();
  result = swift_allocObject();
  result[6] = v1;
  result[7] = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  result[2] = 0;
  result[3] = v2;
  *(v0 + 112) = result;
  qword_280CBD448 = v0;
  return result;
}

uint64_t LaunchRecorderWriter.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x694468636E75616CLL;
  *(v2 + 24) = 0xEB00000000797261;
  type metadata accessor for LaunchRecorder();
  v3 = swift_allocObject();
  v3[6] = v1;
  v3[7] = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  v3[2] = 0;
  v3[3] = v2;
  *(v0 + 112) = v3;
  return v0;
}

uint64_t static LaunchRecorderWriter.sharedInstance.getter()
{
  if (qword_280CBD440 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

uint64_t LaunchRecorderWriter.init()()
{
  swift_defaultActor_initialize();
  v1 = type metadata accessor for UserDefaultsLaunchDiaryWriter();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x694468636E75616CLL;
  *(v2 + 24) = 0xEB00000000797261;
  type metadata accessor for LaunchRecorder();
  v3 = swift_allocObject();
  v3[6] = v1;
  v3[7] = &protocol witness table for UserDefaultsLaunchDiaryWriter;
  v3[2] = 0;
  v3[3] = v2;
  *(v0 + 112) = v3;
  return v0;
}

BOOL sub_22F0C0E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 112) + 16);
  if (v4)
  {
    sub_22F0CFFAC();
    sub_22F05E390(a1, a2, a3);
    sub_22F0D00CC();
  }

  return v4 != 0;
}

uint64_t sub_22F0C0EB0(uint64_t a1, uint64_t a2)
{
  if (!*(*(v2 + 112) + 16))
  {
    return 0;
  }

  sub_22F0CFFAC();
  LOBYTE(a2) = sub_22F05ECD4(a1, a2);
  sub_22F0D00CC();
  return a2 & 1;
}

uint64_t LaunchRecorderWriter.deinit()
{
  sub_22F0D00CC();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LaunchRecorderWriter.__deallocating_deinit()
{
  sub_22F0D00CC();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t LaunchRecordReader.__allocating_init(withDataWriter:)(void *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for LaunchRecorder();
  v3 = swift_allocObject();
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_22F036D40(v8, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v2 + 16) = v10;
  return v2;
}

uint64_t LaunchRecordReader.init(withDataWriter:)(void *a1)
{
  type metadata accessor for LaunchRecorder();
  v3 = swift_allocObject();
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_22F036D40(v8, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v1 + 16) = v10;
  return v1;
}

uint64_t sub_22F0C12AC(uint64_t a1)
{
  result = MEMORY[0x277D84F98];
  v5 = MEMORY[0x277D84F98];
  v4 = *(*(v1 + 16) + 16);
  if (v4)
  {
    sub_22F0CFFAC();
    sub_22F0C14C8(a1, v4, &v5);
    sub_22F0D00CC();
    return v5;
  }

  return result;
}

uint64_t LaunchRecordReader.__deallocating_deinit()
{
  sub_22F0D00CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22F0C1454(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x277D84F98];
  v6 = MEMORY[0x277D84F98];
  v5 = *(*(v3 + 16) + 16);
  if (v5)
  {
    sub_22F0CFFAC();
    sub_22F0C14C8(a1, v5, &v6);
    sub_22F0D00CC();
    return v6;
  }

  return result;
}

void sub_22F0C14C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v61 = a3;
  v63 = sub_22F0D05BC();
  v58 = *(v63 - 8);
  v5 = MEMORY[0x28223BE20](v63);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v52 - v7;
  v8 = *(a1 + 16);
  swift_beginAccess();
  if (!v8)
  {
    return;
  }

  v57 = v58 + 16;
  v53 = (v58 + 40);
  v54 = (v58 + 32);
  v55 = (v58 + 8);
  v10 = (a1 + 40);
  p_superclass = _TtC6People18RuntimeEnvironment.superclass;
  v12 = qword_280CBEC40;
  *&v9 = 136315138;
  v59 = v9;
  v56 = a2;
  while (1)
  {
    v14 = *(v10 - 1);
    v13 = *v10;
    v15 = p_superclass[391];
    sub_22F0CFF1C();
    if (v15 != -1)
    {
      swift_once();
    }

    v65 = v14;
    v16 = sub_22F0D0A1C();
    __swift_project_value_buffer(v16, v12);
    sub_22F0CFF1C();
    v17 = sub_22F0D09FC();
    v18 = sub_22F0D122C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v64 = v8;
      v21 = p_superclass;
      v22 = v12;
      v23 = a2;
      v24 = v20;
      v66 = v20;
      *v19 = v59;
      *(v19 + 4) = sub_22F00A560(v65, v13, &v66);
      _os_log_impl(&dword_22EFE1000, v17, v18, "Looking for %s in diary", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v25 = v24;
      a2 = v23;
      v12 = v22;
      p_superclass = v21;
      v8 = v64;
      MEMORY[0x2318FE8B0](v25, -1, -1);
      MEMORY[0x2318FE8B0](v19, -1, -1);
    }

    v26 = *(a2 + 16);
    if (!*(v26 + 16))
    {
      goto LABEL_3;
    }

    sub_22F0CFF1C();
    v27 = sub_22EFFDA80(v65, v13);
    if (v28)
    {
      break;
    }

LABEL_3:

LABEL_4:
    v10 += 2;
    if (!--v8)
    {
      return;
    }
  }

  v29 = *(v26 + 56);
  v64 = *(v58 + 72);
  v30 = *(v58 + 16);
  v31 = v60;
  v32 = v63;
  v30(v60, v29 + v64 * v27, v63);

  v30(v62, v31, v32);
  sub_22F0CFF1C();
  v33 = v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v33;
  v66 = v35;
  v37 = sub_22EFFDA80(v65, v13);
  v38 = *(v35 + 16);
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (!__OFADD__(v38, v39))
  {
    v41 = v36;
    if (*(v35 + 24) >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F06091C();
      }

      v12 = qword_280CBEC40;
      v42 = v65;
      v45 = v66;
      if ((v41 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_22F07B324(v40, isUniquelyReferenced_nonNull_native);
      v42 = v65;
      v43 = sub_22EFFDA80(v65, v13);
      if ((v41 & 1) != (v44 & 1))
      {
        goto LABEL_26;
      }

      v37 = v43;
      v12 = qword_280CBEC40;
      v45 = v66;
      if ((v41 & 1) == 0)
      {
LABEL_15:
        v45[(v37 >> 6) + 8] |= 1 << v37;
        v46 = (v45[6] + 16 * v37);
        *v46 = v42;
        v46[1] = v13;
        v47 = v63;
        (*v54)(v45[7] + v37 * v64, v62, v63);
        v48 = v45[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_25;
        }

        v45[2] = v50;
        goto LABEL_22;
      }
    }

    v47 = v63;
    (*v53)(v45[7] + v37 * v64, v62, v63);

LABEL_22:
    v51 = v60;
    *v61 = v45;
    (*v55)(v51, v47);

    a2 = v56;
    goto LABEL_4;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22F0D191C();
  __break(1u);
}

void sub_22F0C1B7C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22F0D032C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_22F0C1C0C()
{
  v12 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBEC40);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D122C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD000000000000028, 0x800000022F0DFEF0, &v11);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  else
  {
  }

  v6 = v0[2];
  v7 = swift_task_alloc();
  v0[3] = v7;
  *(v7 + 16) = v6;
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_22F0C1E28;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000028, 0x800000022F0DFEF0, sub_22F0C3100, v7, v9);
}

uint64_t sub_22F0C1E28()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22F0C1F60;
  }

  else
  {

    v2 = sub_22F0C1F44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F0C1F60()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_22F0C1FC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_22F0CFFAC();
  v6 = a3;
  v5(a2, a3);
  sub_22F0D00CC();
}

uint64_t sub_22F0C2078(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);

  return sub_22F0D00CC();
}

uint64_t sub_22F0C2128()
{
  v12 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBEC40);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D122C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD00000000000002DLL, 0x800000022F0DFF20, &v11);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  else
  {
  }

  v6 = v0[2];
  v7 = swift_task_alloc();
  v0[3] = v7;
  *(v7 + 16) = v6;
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_22F0C2344;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD00000000000002DLL, 0x800000022F0DFF20, sub_22F0C33E8, v7, v9);
}

uint64_t sub_22F0C2344()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22F0C39A4;
  }

  else
  {

    v2 = sub_22F0C39BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22F0C2460(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - v13;
  (*(v12 + 16))(aBlock - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F0C1FC8;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);
  sub_22F0D00CC();
  [a2 *a6];
  _Block_release(v17);
}

void sub_22F0C260C(uint64_t a1, void (*a2)(uint64_t, void *))
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();
    v5 = v3;
    a2(0, v3);
    sub_22F00CED8(v3, 1);
    sub_22F00CED8(v3, 1);
  }

  else
  {
    a2(*a1 & 1, 0);
  }
}

uint64_t PeopleClient.sendFamilyAskToBuyIMessage(id:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22F0C27A0, 0, 0);
}

uint64_t sub_22F0C27A0()
{
  v14 = v0;
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D0A1C();
  __swift_project_value_buffer(v1, qword_280CBEC40);
  v2 = sub_22F0D09FC();
  v3 = sub_22F0D122C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_22F00A560(0xD00000000000001FLL, 0x800000022F0DFF50, &v13);
    _os_log_impl(&dword_22EFE1000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318FE8B0](v5, -1, -1);
    MEMORY[0x2318FE8B0](v4, -1, -1);
  }

  else
  {
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v0[5] = v9;
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v7;
  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_22F0C29C4;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 8, 0, 0, 0xD00000000000001FLL, 0x800000022F0DFF50, sub_22F0C36F4, v9, v11);
}

uint64_t sub_22F0C29C4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22F0C2AFC;
  }

  else
  {

    v2 = sub_22F0C2AE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F0C2AFC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_22F0C2B64(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = sub_22F0D0C7C();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_22F0C3754;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F0C1FC8;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);
  sub_22F0D00CC();
  [a2 sendFamilyAskToBuyIMessageWithRequestID:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_22F0C2D34(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
    return sub_22F0D107C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
    return sub_22F0D108C();
  }
}

PeopleClient __swiftcall PeopleClient.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _sSo12PeopleClientC0A0E38canSendFamilyScreenTimeRequestIMessage10completionyySb_s5Error_pSgtc_tF_0(uint64_t a1, uint64_t a2)
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  __swift_project_value_buffer(v4, qword_280CBEC40);
  v5 = sub_22F0D09FC();
  v6 = sub_22F0D122C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22F00A560(0xD000000000000033, 0x800000022F0E0040, &v18);
    _os_log_impl(&dword_22EFE1000, v5, v6, "%s called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318FE8B0](v8, -1, -1);
    MEMORY[0x2318FE8B0](v7, -1, -1);
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_22F0D0CAC();
    v13 = v12;

    if (v11 == 0xD000000000000010 && 0x800000022F0DFFB0 == v13)
    {
    }

    else
    {
      v15 = sub_22F0D188C();

      if ((v15 & 1) == 0)
      {
        LOBYTE(v10) = 0;
        goto LABEL_14;
      }
    }

    LOBYTE(v10) = 1;
  }

LABEL_14:
  if (qword_27DAA0518 != -1)
  {
    swift_once();
  }

  v19 = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_22F0C3948();
  sub_22F0CFFAC();
  sub_22F0D08EC();
  return sub_22F0D00CC();
}

uint64_t _sSo12PeopleClientC0A0E29canSendFamilyAskToBuyIMessage10completionyySb_s5Error_pSgtc_tF_0(uint64_t a1, uint64_t a2)
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  __swift_project_value_buffer(v4, qword_280CBEC40);
  v5 = sub_22F0D09FC();
  v6 = sub_22F0D122C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22F00A560(0xD00000000000002ALL, 0x800000022F0E0010, &v18);
    _os_log_impl(&dword_22EFE1000, v5, v6, "%s called", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318FE8B0](v8, -1, -1);
    MEMORY[0x2318FE8B0](v7, -1, -1);
  }

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_22F0D0CAC();
    v13 = v12;

    if (v11 == 0xD000000000000010 && 0x800000022F0DFFB0 == v13)
    {
    }

    else
    {
      v15 = sub_22F0D188C();

      if ((v15 & 1) == 0)
      {
        LOBYTE(v10) = 0;
        goto LABEL_14;
      }
    }

    LOBYTE(v10) = 1;
  }

LABEL_14:
  if (qword_27DAA0518 != -1)
  {
    swift_once();
  }

  v19 = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_22F0C3860();
  sub_22F0CFFAC();
  sub_22F0D08EC();
  return sub_22F0D00CC();
}

double _sSo12PeopleClientC0A0E26sendFamilyAskToBuyIMessage13withRequestID10completionySS_ySb_s5Error_pSgtctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v8 = sub_22F0D0A1C();
  __swift_project_value_buffer(v8, qword_280CBEC40);
  v9 = sub_22F0D09FC();
  v10 = sub_22F0D122C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22F00A560(0xD000000000000035, 0x800000022F0DFFD0, v22);
    _os_log_impl(&dword_22EFE1000, v9, v10, "%s called", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x2318FE8B0](v12, -1, -1);
    MEMORY[0x2318FE8B0](v11, -1, -1);
  }

  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v15 = sub_22F0D0CAC();
    v17 = v16;

    if (v15 == 0xD000000000000010 && 0x800000022F0DFFB0 == v17)
    {
    }

    else
    {
      v19 = sub_22F0D188C();

      if ((v19 & 1) == 0)
      {
        LOBYTE(v14) = 0;
        goto LABEL_14;
      }
    }

    LOBYTE(v14) = 1;
  }

LABEL_14:
  if (qword_27DAA0518 != -1)
  {
    swift_once();
  }

  v22[0] = a1;
  v22[1] = a2;
  v23 = v14;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  sub_22F0C378C();
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0D08EC();
  sub_22F0D00CC();

  return result;
}

unint64_t type metadata accessor for PeopleClient()
{
  result = qword_27DAA24D8;
  if (!qword_27DAA24D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA24D8);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22F0CFFAC();
}

unint64_t sub_22F0C378C()
{
  result = qword_27DAA24E8;
  if (!qword_27DAA24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA24E8);
  }

  return result;
}

unint64_t sub_22F0C3860()
{
  result = qword_27DAA24F0;
  if (!qword_27DAA24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA24F0);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA24E0, &qword_22F0DC0A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_22F0C3948()
{
  result = qword_27DAA24F8;
  if (!qword_27DAA24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA24F8);
  }

  return result;
}

void sub_22F0C39C0(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x277D84F90];
  if (v8)
  {
LABEL_10:
    while (1)
    {
      v12 = (*(v3 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = *v12;
      v14 = v12[1];
      v23[0] = *v12;
      v23[1] = v14;
      sub_22F0CFF1C();
      sub_22F0C8190(v23, a2);
      if (v2)
      {
        break;
      }

      v8 &= v8 - 1;
      if (v15)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EFFC4E8(0, *(v10 + 16) + 1, 1);
          v10 = v24;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          sub_22EFFC4E8((v17 > 1), v18 + 1, 1);
          v19 = v18 + 1;
          v10 = v24;
        }

        *(v10 + 16) = v19;
        v20 = v10 + 16 * v18;
        *(v20 + 32) = v13;
        *(v20 + 40) = v14;
        v3 = a1;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    sub_22F0D00CC();
    sub_22F0D00CC();
  }

  else
  {
LABEL_6:
    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        sub_22F0D00CC();
        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v4;
      if (v8)
      {
        v4 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F0C3B7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v188 = a5;
  v195 = a4;
  v186 = type metadata accessor for MotionPersonStatus(0);
  MEMORY[0x28223BE20](v186);
  v189 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationItem(0);
  v193 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v184 = (&v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v194 = (&v176 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v176 - v15;
  v198 = sub_22F0D05BC();
  v201 = *(v198 - 8);
  v17 = MEMORY[0x28223BE20](v198);
  v191 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v185 = &v176 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v196 = &v176 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v203 = &v176 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v199 = &v176 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v176 - v27;
  v200 = type metadata accessor for PeopleLocation(0);
  v29 = *(v200 - 8);
  v30 = MEMORY[0x28223BE20](v200);
  v183 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v190 = &v176 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v192 = (&v176 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v176 - v37;
  result = MEMORY[0x28223BE20](v36);
  v202 = &v176 - v40;
  if (*(a2 + 16))
  {
    v41 = a1[1];
    v187 = *a1;
    v197 = v41;
    result = sub_22EFFDA80(v187, v41);
    if (v42)
    {
      sub_22F0CE0BC(*(a2 + 56) + *(v29 + 72) * result, v38, type metadata accessor for PeopleLocation);
      v43 = v202;
      sub_22F0CE00C(v38, v202, type metadata accessor for PeopleLocation);
      v44 = *(v200 + 20);
      if (qword_27DAA0648 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v13, qword_27DAA21F8);
      sub_22F0D05AC();
      v45 = [objc_opt_self() seconds];
      sub_22F0D019C();

      sub_22F0D018C();
      (*(v14 + 8))(v16, v13);
      v180 = v44;
      v46 = v199;
      sub_22F0D054C();
      LOBYTE(v45) = sub_22F0D053C();
      v48 = v201 + 1;
      isa = v201[1].isa;
      v49 = v198;
      isa(v46, v198);
      isa(v28, v49);
      if (v45)
      {
        v182 = isa;
        v50 = v48;
        if (qword_280CBDB48 != -1)
        {
          swift_once();
        }

        v51 = sub_22F0D0A1C();
        __swift_project_value_buffer(v51, qword_280CBDB50);
        v52 = v197;
        sub_22F0CFF1C();
        v53 = sub_22F0D09FC();
        v54 = sub_22F0D124C();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *&v205 = v56;
          *v55 = 136315138;
          *(v55 + 4) = sub_22F00A560(v187, v52, &v205);
          _os_log_impl(&dword_22EFE1000, v53, v54, "%s: queued for refresh", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          v57 = v56;
          v43 = v202;
          MEMORY[0x2318FE8B0](v57, -1, -1);
          MEMORY[0x2318FE8B0](v55, -1, -1);
        }

        v48 = v50;
        isa = v182;
      }

      sub_22F0D05AC();
      v58 = v187;
      if (*(a3 + 16))
      {
        v59 = v197;
        swift_bridgeObjectRetain_n();
        v60 = sub_22EFFDA80(v58, v59);
        if (v61)
        {
          v181 = v48;
          v62 = (*(a3 + 56) + 16 * v60);
          v63 = v62[1];
          v177 = *v62;
          sub_22F0CFF1C();
          sub_22F0CFF1C();
          v77 = String.trimToNil()();
          countAndFlagsBits = v77.value._countAndFlagsBits;

          object = v77.value._object;
          v182 = isa;
          if (!v77.value._object)
          {

            v110 = v197;

            if (qword_280CBDB48 != -1)
            {
              swift_once();
            }

            v111 = sub_22F0D0A1C();
            __swift_project_value_buffer(v111, qword_280CBDB50);
            v112 = v183;
            sub_22F0CE0BC(v43, v183, type metadata accessor for PeopleLocation);
            sub_22F0CFF1C();
            v113 = sub_22F0D09FC();
            v114 = sub_22F0D123C();

            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              *&v205 = v117;
              *v115 = 136315650;
              *(v115 + 4) = sub_22F00A560(0xD00000000000002CLL, 0x800000022F0E01E0, &v205);
              *(v115 + 12) = 2080;
              *(v115 + 14) = sub_22F00A560(v58, v110, &v205);
              *(v115 + 22) = 2112;
              v118 = *&v112[*(v200 + 32)];
              sub_22F0CE124(v112, type metadata accessor for PeopleLocation);
              *(v115 + 24) = v118;
              *v116 = v118;
              v119 = v200;
              _os_log_impl(&dword_22EFE1000, v113, v114, "%s %s: no location display! latlng %@", v115, 0x20u);
              sub_22F003A4C(v116, &qword_27DAA1260, &qword_22F0D5F48);
              v120 = v116;
              v49 = v198;
              MEMORY[0x2318FE8B0](v120, -1, -1);
              swift_arrayDestroy();
              v121 = v117;
              v43 = v202;
              MEMORY[0x2318FE8B0](v121, -1, -1);
              MEMORY[0x2318FE8B0](v115, -1, -1);
            }

            else
            {

              sub_22F0CE124(v112, type metadata accessor for PeopleLocation);
              v119 = v200;
            }

            v127 = *(v43 + v119[8]);
            v128 = *(v43 + v119[7]);
            v129 = v192;
            (v201[2].isa)(v192 + v119[5], &v180[v43], v49);
            *v129 = xmmword_22F0D84B0;
            *(v129 + v119[6]) = 0;
            *(v129 + v119[7]) = v128;
            *(v129 + v119[8]) = v127;
            v130 = v127;
            v131 = v184;
            LocationItem.init(with:for:)(v129, v58, v110, v184);
            v132 = v195;
            v133 = *v195;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v132 = v133;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v133 = sub_22F03D7C4(0, v133[2] + 1, 1, v133);
              *v195 = v133;
            }

            v136 = v133[2];
            v135 = v133[3];
            if (v136 >= v135 >> 1)
            {
              v175 = sub_22F03D7C4((v135 > 1), v136 + 1, 1, v133);
              *v195 = v175;
            }

            v182(v203, v49);
            v137 = *v195;
            *(v137 + 16) = v136 + 1;
            sub_22F0CE00C(v131, v137 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v136, type metadata accessor for LocationItem);
            return sub_22F0CE124(v43, type metadata accessor for PeopleLocation);
          }

          v176 = v63;
          v78 = v197;

          v79 = v201[2].isa;
          v184 = v201 + 2;
          v183 = v79;
          (v79)(v196, &v180[v43], v49);
          v80 = v192;
          sub_22F0CE0BC(v43, v192, type metadata accessor for PeopleLocation);
          LocationItem.init(with:for:)(v80, v58, v78, v194);
          v81 = v195;
          v82 = *v195;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          *v81 = v82;
          if ((v83 & 1) == 0)
          {
            v82 = sub_22F03D7C4(0, v82[2] + 1, 1, v82);
            *v195 = v82;
          }

          v85 = v82[2];
          v84 = v82[3];
          v86 = v200;
          if (v85 >= v84 >> 1)
          {
            v82 = sub_22F03D7C4((v84 > 1), v85 + 1, 1, v82);
            *v195 = v82;
          }

          v82[2] = v85 + 1;
          sub_22F0CE00C(v194, v82 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v85, type metadata accessor for LocationItem);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E38, &qword_22F0D5008);
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_22F0D2BF0;
          v88 = v183;
          (v183)(v28, v203, v49);
          (v88)(v199, v196, v49);
          v89 = *(v43 + *(v86 + 28));
          v194 = type metadata accessor for PeopleFeatureFlags();
          v90 = swift_allocObject();
          v91 = v86;
          v92 = v49;
          *(v90 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
          v93 = qword_280CBEEF0;
          v94 = object;
          sub_22F0CFF1C();
          sub_22F0CFFAC();
          if (v93 != -1)
          {
            swift_once();
          }

          v95 = (*off_280CBEEF8 + 136);
          v193 = *v95;
          v192 = v95;
          v96 = (v193)();
          sub_22F0D00CC();
          swift_beginAccess();
          *(v90 + 16) = v96;

          v97 = type metadata accessor for LocationPersonStatus(0);
          *(v87 + 56) = v97;
          *(v87 + 64) = sub_22F0CE074(&qword_27DAA0A28, type metadata accessor for LocationPersonStatus, &protocol conformance descriptor for LocationPersonStatus);
          v195 = v87;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v87 + 32));
          *boxed_opaque_existential_1Tm = countAndFlagsBits;
          boxed_opaque_existential_1Tm[1] = v94;
          v99 = v201 + 4;
          v100 = v201[4].isa;
          (v100)(boxed_opaque_existential_1Tm + v97[5], v28, v92);
          v101 = boxed_opaque_existential_1Tm + v97[6];
          v201 = v99;
          (v100)(v101, v199, v92);
          *(boxed_opaque_existential_1Tm + v97[7]) = v90;
          *(boxed_opaque_existential_1Tm + v97[8]) = v89;
          v102 = *(v202 + *(v91 + 24));
          if (!v102)
          {
            v122 = 0xE900000000000029;
            v199 = 0x6E776F6E6B6E7528;
            v123 = v197;
            v124 = v198;
            v125 = v190;
            v106 = v188;
            v126 = v195;
LABEL_55:
            v150 = swift_isUniquelyReferenced_nonNull_native();
            *&v205 = *v106;
            *v106 = 0x8000000000000000;
            sub_22F017DA8(v126, v177, v176, v150);

            *v106 = v205;
            v151 = v191;
            if (qword_280CBDB48 != -1)
            {
              swift_once();
            }

            v152 = sub_22F0D0A1C();
            __swift_project_value_buffer(v152, qword_280CBDB50);
            sub_22F0CE0BC(v202, v125, type metadata accessor for PeopleLocation);
            v153 = v196;
            (v183)(v151, v196, v124);
            sub_22F0CFF1C();
            v154 = object;
            sub_22F0CFF1C();
            sub_22F0CFF1C();
            v155 = sub_22F0D09FC();
            v156 = sub_22F0D124C();

            LODWORD(v198) = v156;
            v201 = v155;
            if (os_log_type_enabled(v155, v156))
            {
              v157 = v125;
              v158 = swift_slowAlloc();
              v197 = swift_slowAlloc();
              v204 = v197;
              *v158 = 136316419;
              *(v158 + 4) = sub_22F00A560(0xD00000000000002CLL, 0x800000022F0E01E0, &v204);
              *(v158 + 12) = 2081;
              *(v158 + 14) = sub_22F00A560(v187, v123, &v204);
              *(v158 + 22) = 2080;
              v159 = sub_22F00A560(countAndFlagsBits, v154, &v204);

              *(v158 + 24) = v159;
              *(v158 + 32) = 2080;
              v160 = *(v157 + *(v200 + 32));
              *&v205 = 0;
              *(&v205 + 1) = 0xE000000000000000;
              [v160 coordinate];
              sub_22F0D111C();
              MEMORY[0x2318FD2C0](8236, 0xE200000000000000);
              [v160 coordinate];
              sub_22F0D111C();
              v161 = v205;
              sub_22F0CE124(v190, type metadata accessor for PeopleLocation);
              v162 = sub_22F00A560(v161, *(&v161 + 1), &v204);

              *(v158 + 34) = v162;
              *(v158 + 42) = 2080;
              v163 = sub_22F00A560(v199, v122, &v204);

              *(v158 + 44) = v163;
              *(v158 + 52) = 2080;
              sub_22F0CE074(&qword_27DAA1670, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v164 = v191;
              v165 = sub_22F0D183C();
              v167 = v166;
              v168 = v164;
              v169 = v182;
              v182(v168, v124);
              v170 = sub_22F00A560(v165, v167, &v204);

              *(v158 + 54) = v170;
              v171 = v201;
              _os_log_impl(&dword_22EFE1000, v201, v198, "%s %{private}s: %s, [%s] %s // %s", v158, 0x3Eu);
              v172 = v197;
              swift_arrayDestroy();
              MEMORY[0x2318FE8B0](v172, -1, -1);
              v173 = v158;
              v43 = v202;
              MEMORY[0x2318FE8B0](v173, -1, -1);

              v169(v196, v124);
              v169(v203, v124);
            }

            else
            {

              v174 = v182;
              v182(v151, v124);
              v174(v153, v124);
              v174(v203, v124);
              sub_22F0CE124(v125, type metadata accessor for PeopleLocation);
              v43 = v202;
            }

            return sub_22F0CE124(v43, type metadata accessor for PeopleLocation);
          }

          v103 = 0;
          v104 = 0xE000000000000000;
          *&v205 = 0;
          *(&v205 + 1) = 0xE000000000000000;
          v105 = v196;
          v106 = v188;
          v180 = v100;
          if (v102 <= 2)
          {
            v107 = v198;
            v108 = v186;
            if (v102 == 1)
            {
              v104 = 0xEA00000000007972;
              v103 = 0x616E6F6974617473;
              goto LABEL_50;
            }

            if (v102 == 2)
            {
              v104 = 0xE700000000000000;
              v109 = 1802264951;
              goto LABEL_49;
            }
          }

          else
          {
            v107 = v198;
            v108 = v186;
            switch(v102)
            {
              case 5:
                v104 = 0xE700000000000000;
                v109 = 1986622052;
                goto LABEL_49;
              case 4:
                v104 = 0xE700000000000000;
                v109 = 1818458467;
                goto LABEL_49;
              case 3:
                v104 = 0xE700000000000000;
                v109 = 1852732786;
LABEL_49:
                v103 = v109 | 0x676E6900000000;
                break;
            }
          }

LABEL_50:
          MEMORY[0x2318FD2C0](v103, v104);

          v122 = *(&v205 + 1);
          v199 = v205;
          v138 = v185;
          (v183)(v185, v105, v107);
          v139 = swift_allocObject();
          *(v139 + 16) = sub_22F07CF94(MEMORY[0x277D84F90]);
          v140 = sub_22F0CFFAC();
          v141 = (v193)(v140);
          sub_22F0D00CC();
          swift_beginAccess();
          *(v139 + 16) = v141;
          v124 = v198;

          v142 = v189;
          (v180)(v189, v138, v124);
          v143 = 0x20100030405uLL >> (8 * v102);
          if (v102 >= 6)
          {
            LOBYTE(v143) = 5;
          }

          *(v142 + *(v108 + 20)) = v143;
          *(v142 + *(v108 + 24)) = v139;
          v145 = v195[2];
          v144 = v195[3];
          if (v145 >= v144 >> 1)
          {
            v195 = sub_22F03CB00((v144 > 1), v145 + 1, 1, v195);
          }

          v125 = v190;
          v206 = v108;
          v207 = sub_22F0CE074(&qword_27DAA0A50, type metadata accessor for MotionPersonStatus, &protocol conformance descriptor for MotionPersonStatus);
          v146 = __swift_allocate_boxed_opaque_existential_1Tm(&v205);
          v147 = v189;
          sub_22F0CE0BC(v189, v146, type metadata accessor for MotionPersonStatus);
          v148 = v195;
          v195[2] = v145 + 1;
          v149 = &v148[5 * v145];
          v126 = v148;
          sub_22EFE6B9C(&v205, (v149 + 4));
          sub_22F0CE124(v147, type metadata accessor for MotionPersonStatus);
          v123 = v197;
          goto LABEL_55;
        }

        swift_bridgeObjectRelease_n();
      }

      if (qword_280CBDB48 != -1)
      {
        swift_once();
      }

      v64 = sub_22F0D0A1C();
      __swift_project_value_buffer(v64, qword_280CBDB50);
      v65 = v197;
      sub_22F0CFF1C();
      v66 = sub_22F0D09FC();
      v67 = sub_22F0D123C();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v181 = v48;
        v70 = v65;
        v71 = isa;
        v72 = v49;
        v73 = v43;
        v74 = v58;
        v75 = v69;
        *&v205 = v69;
        *v68 = 136315394;
        *(v68 + 4) = sub_22F00A560(0xD00000000000002CLL, 0x800000022F0E01E0, &v205);
        *(v68 + 12) = 2080;
        v76 = v74;
        v43 = v73;
        *(v68 + 14) = sub_22F00A560(v76, v70, &v205);
        _os_log_impl(&dword_22EFE1000, v66, v67, "%s %s: internal error mapping handle to id", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v75, -1, -1);
        MEMORY[0x2318FE8B0](v68, -1, -1);

        v71(v203, v72);
      }

      else
      {

        isa(v203, v49);
      }

      return sub_22F0CE124(v43, type metadata accessor for PeopleLocation);
    }
  }

  return result;
}

uint64_t static LocateFriend.statusFromFMCache(for:with:friendLocateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA17E8, &qword_22F0D7CC8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0C5494, 0, 0);
}

uint64_t sub_22F0C5494()
{
  v1 = *(v0 + 144);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_22F0C55C0;

  return v6(v0 + 56, v2, v3);
}

uint64_t sub_22F0C55C0()
{

  return MEMORY[0x2822009F8](sub_22F0C56BC, 0, 0);
}

uint64_t sub_22F0C56BC()
{
  v42 = v0;
  v1 = v0;
  if (!*(v0 + 80))
  {
    sub_22F003A4C(v0 + 56, &qword_27DAA2500, &qword_22F0DC0C8);
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v27 = sub_22F0D0A1C();
    __swift_project_value_buffer(v27, qword_280CBDB50);
    v28 = sub_22F0D09FC();
    v29 = sub_22F0D123C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, v41);
      _os_log_impl(&dword_22EFE1000, v28, v29, "%s No session", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x2318FE8B0](v31, -1, -1);
      MEMORY[0x2318FE8B0](v30, -1, -1);
    }

    v32 = sub_22F07D7A0(MEMORY[0x277D84F90]);

    v33 = *(v0 + 8);

    return v33(v32);
  }

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_22EFE6B9C((v0 + 56), v0 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_22F051F34(sub_22F0C8A3C, v4, v3);

  if (qword_280CBDB48 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v6 = sub_22F0D0A1C();
    v1[22] = __swift_project_value_buffer(v6, qword_280CBDB50);
    sub_22F0CFF1C();
    v7 = sub_22F0D09FC();
    v8 = sub_22F0D124C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41[0] = v10;
      *v9 = 136315138;
      v11 = sub_22F0459DC();
      v12 = MEMORY[0x2318FD490](v5, v11);
      v14 = sub_22F00A560(v12, v13, v41);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_22EFE1000, v7, v8, "Checking FindMy cache for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      MEMORY[0x2318FE8B0](v9, -1, -1);
    }

    v40 = MEMORY[0x277D84F98];
    if (v5 >> 62)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_27;
    }

LABEL_7:
    v38 = v1;
    v16 = 0;
    v17 = v5 & 0xC000000000000001;
    v1 = (v5 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v17)
      {
        v18 = v5;
        v19 = MEMORY[0x2318FDAB0](v16, v5);
      }

      else
      {
        if (v16 >= v1[2])
        {
          goto LABEL_24;
        }

        v18 = v5;
        v19 = *(v5 + 8 * v16 + 32);
      }

      v20 = v19;
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v21 = CNContact.people_normalizedEmails.getter();
      v22 = CNContact.people_normalizedPhoneNumbers.getter();
      v41[0] = v21;
      sub_22F007248(v22);
      v23 = v41[0];
      v24 = v20;
      sub_22F0C8844(v23, &v40, v24);

      ++v16;
      v25 = v5 == v15;
      v5 = v18;
      if (v25)
      {
        v1 = v38;
        v26 = v40;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v15 = sub_22F0D143C();
  if (v15)
  {
    goto LABEL_7;
  }

LABEL_27:
  v26 = MEMORY[0x277D84F98];
LABEL_28:
  v1[23] = v26;

  v1[15] = MEMORY[0x277D84F90];
  v35 = v1[5];
  v36 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v35);
  v39 = (*(v36 + 16) + **(v36 + 16));
  v37 = swift_task_alloc();
  v1[24] = v37;
  *v37 = v1;
  v37[1] = sub_22F0C5C20;

  return v39(v35, v36);
}

uint64_t sub_22F0C5C20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_22F0C7B78;
  }

  else
  {
    v4 = sub_22F0C5D34;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F0C5D34(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v74 = v3;
  v4 = v3[25];
  v5 = *(v4 + 16);
  if (!v5)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v6 = 0;
  v7 = v3[23];
  v8 = -v5;
  v9 = v4 + 40;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = (v9 + 16 * v6++);
    while (1)
    {
      if ((v6 - 1) >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (*(v7 + 16))
      {
        break;
      }

LABEL_4:
      ++v6;
      v11 += 2;
      if (v8 + v6 == 1)
      {
        goto LABEL_16;
      }
    }

    v13 = *(v11 - 1);
    v12 = *v11;
    swift_bridgeObjectRetain_n();
    sub_22EFFDA80(v13, v12);
    v15 = v14;

    if ((v15 & 1) == 0)
    {

      goto LABEL_4;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_22EFFC890(0, *(v10 + 16) + 1, 1);
      v10 = v73;
    }

    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_22EFFC890((v16 > 1), v17 + 1, 1);
      v18 = v17 + 1;
      v10 = v73;
    }

    *(v10 + 16) = v18;
    v19 = v10 + 16 * v17;
    *(v19 + 32) = v13;
    *(v19 + 40) = v12;
    v9 = v4 + 40;
  }

  while (v8 + v6);
LABEL_16:

  v20 = *(v10 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = (v10 + 40);
    v23 = MEMORY[0x277D84F90];
    while (v21 < *(v10 + 16))
    {
      v25 = *(v22 - 1);
      v24 = *v22;
      sub_22F0CFF1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22F03D0D8(0, *(v23 + 16) + 1, 1, v23);
        v23 = isUniquelyReferenced_nonNull_native;
      }

      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22F03D0D8((v26 > 1), v27 + 1, 1, v23);
        v23 = isUniquelyReferenced_nonNull_native;
      }

      ++v21;
      *(v23 + 16) = v27 + 1;
      v28 = v23 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v22 += 2;
      if (v20 == v21)
      {
        goto LABEL_26;
      }
    }

LABEL_44:
    __break(1u);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
LABEL_26:
    sub_22F0D00CC();
    v3[15] = v23;
    v3[27] = v23;
    v29 = sub_22F0D09FC();
    v30 = sub_22F0D124C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      v72 = v32;
      *v31 = 136315138;
      v34 = *(v23 + 16);
      v35 = MEMORY[0x277D84F90];
      if (v34)
      {
        v67 = v32;
        v68 = v30;
        v69 = v31;
        v70 = v3;
        v73 = MEMORY[0x277D84F90];
        sub_22F0CFF1C();
        sub_22EFFC4E8(0, v34, 0);
        v36 = 0;
        v35 = v73;
        v37 = *(v73 + 16);
        v38 = 16 * v37;
        do
        {
          v39 = *(v23 + v36 + 32);
          v40 = *(v23 + v36 + 40);
          v73 = v35;
          v41 = *(v35 + 24);
          sub_22F0CFF1C();
          if (v37 >= v41 >> 1)
          {
            sub_22EFFC4E8((v41 > 1), v37 + 1, 1);
            v35 = v73;
          }

          *(v35 + 16) = v37 + 1;
          v42 = v35 + v38 + v36;
          *(v42 + 32) = v39;
          *(v42 + 40) = v40;
          v36 += 16;
          ++v37;
          --v34;
        }

        while (v34);

        v3 = v70;
        v31 = v69;
        v30 = v68;
        v33 = v67;
      }

      v43 = MEMORY[0x2318FD490](v35, MEMORY[0x277D837D0]);
      v45 = v44;

      v46 = sub_22F00A560(v43, v45, &v72);

      *(v31 + 4) = v46;
      _os_log_impl(&dword_22EFE1000, v29, v30, "Friends sharing %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x2318FE8B0](v33, -1, -1);
      MEMORY[0x2318FE8B0](v31, -1, -1);
    }

    v47 = sub_22F0CFF1C();
    sub_22F0C39C0(v47, v3 + 15);
    v3[28] = v48;
    if (!*(v48 + 16))
    {

      v60 = v3[5];
      v61 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v60);
      v62 = *(v61 + 24);
      v63 = sub_22F0CFF1C();
      v62(v63, v60, v61);

      sub_22F0CFF1C();
      v64 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
      v71 = *(v64 + 8) + **(v64 + 8);
      v65 = swift_task_alloc();
      v3[34] = v65;
      *v65 = v3;
      v65[1] = sub_22F0C6880;

      __asm { BRAA            X4, X16 }
    }

    v49 = v48;
    v50 = sub_22F0D09FC();
    v51 = sub_22F0D122C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v73 = v53;
      *v52 = 136315394;
      *(v52 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, &v73);
      *(v52 + 12) = 2080;
      v54 = MEMORY[0x2318FD490](v49, MEMORY[0x277D837D0]);
      v56 = sub_22F00A560(v54, v55, &v73);

      *(v52 + 14) = v56;
      _os_log_impl(&dword_22EFE1000, v50, v51, "%s items to purge: %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v53, -1, -1);
      MEMORY[0x2318FE8B0](v52, -1, -1);
    }

    v3[29] = sub_22F0D10AC();
    v3[30] = sub_22F0D109C();
    v57 = sub_22F0D106C();
    v59 = v58;
    isUniquelyReferenced_nonNull_native = sub_22F0C642C;
    a2 = v57;
    a3 = v59;
  }

  return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, a2, a3);
}

uint64_t sub_22F0C642C()
{
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0C64C4, 0, 0);
}

uint64_t sub_22F0C64C4()
{
  *(v0 + 248) = sub_22F0D109C();
  v2 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C6550, v2, v1);
}

uint64_t sub_22F0C6550()
{
  sub_22F0D00CC();
  swift_beginAccess();
  *(v0 + 256) = qword_280CBD628;
  sub_22F0CFFAC();

  return MEMORY[0x2822009F8](sub_22F0C65E4, 0, 0);
}

uint64_t sub_22F0C65E4()
{
  *(v0 + 264) = sub_22F0D109C();
  v2 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C6670, v2, v1);
}

uint64_t sub_22F0C6670()
{
  v1 = *(v0 + 224);
  sub_22F0D00CC();
  sub_22F089FAC(v1);

  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0C66F4, 0, 0);
}

uint64_t sub_22F0C66F4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 24);
  v4 = sub_22F0CFF1C();
  v3(v4, v1, v2);

  sub_22F0CFF1C();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v10 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_22F0C6880;
  v8 = v0[27];

  return v10(v8, 0, v5, v6);
}

uint64_t sub_22F0C6880(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 280) = v1;

  if (!v1)
  {

    *(v4 + 288) = a1;
    v6 = swift_task_alloc();
    *(v4 + 296) = v6;
    *v6 = v5;
    v6[1] = sub_22F0C6A48;

    JUMPOUT(0x22F0C9020);
  }

  return MEMORY[0x2822009F8](sub_22F0C6F1C, 0, 0);
}

uint64_t sub_22F0C6A48(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_22F0C6B68, 0, 0);
}

void sub_22F0C6B68()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  sub_22F0CFF1C();
  if (v2)
  {
    v3 = 0;
    v4 = v0[38];
    v28 = -v2;
    v5 = v1 + 40;
    v6 = MEMORY[0x277D84F90];
    v30 = v0;
    v26 = v1 + 40;
    do
    {
      v27 = v6;
      v7 = (v5 + 16 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v7 - 1);
        v8 = *v7;
        if (!*(v4 + 16))
        {
          break;
        }

        v0 = v30;
        sub_22F0CFF1C();
        v10 = sub_22EFFDA80(v9, v8);
        if ((v11 & 1) == 0)
        {
          goto LABEL_10;
        }

        v12 = v10;
        v13 = v30[20];
        v14 = *(v4 + 56);
        v15 = type metadata accessor for PeopleLocation(0);
        v16 = v1;
        v17 = *(v15 - 8);
        sub_22F0CE0BC(v14 + *(v17 + 72) * v12, v13, type metadata accessor for PeopleLocation);

        (*(v17 + 56))(v13, 0, 1, v15);
        v1 = v16;
        sub_22F003A4C(v13, &qword_27DAA17E8, &qword_22F0D7CC8);
        ++v3;
        v7 += 2;
        if (v28 + v3 == 1)
        {
          v6 = v27;
          v0 = v30;
          goto LABEL_17;
        }
      }

      sub_22F0CFF1C();
      v0 = v30;
LABEL_10:
      v18 = v0[20];
      v19 = type metadata accessor for PeopleLocation(0);
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
      sub_22F003A4C(v18, &qword_27DAA17E8, &qword_22F0D7CC8);
      v6 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22EFFC870(0, *(v27 + 16) + 1, 1);
        v6 = v27;
      }

      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22EFFC870((v20 > 1), v21 + 1, 1);
        v6 = v27;
      }

      *(v6 + 16) = v21 + 1;
      v22 = v6 + 16 * v21;
      *(v22 + 32) = v9;
      *(v22 + 40) = v8;
      v5 = v26;
    }

    while (v28 + v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v0[39] = v6;

  v23 = v0[5];
  v24 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
  v29 = (*(v24 + 8) + **(v24 + 8));
  v25 = swift_task_alloc();
  v0[40] = v25;
  *v25 = v0;
  v25[1] = sub_22F0C6FF0;

  v29(v6, 1, v23, v24);
}

uint64_t sub_22F0C6F1C()
{

  v1 = v0[35];
  v2 = v1;
  Logger.ifError(_:message:)(v1, 0xD000000000000015, 0x800000022F0E00E0);

  v3 = sub_22F07D7A0(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22F0C6FF0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  sub_22F0D00CC();
  if (v1)
  {

    v4 = sub_22F0C80BC;
  }

  else
  {
    v4 = sub_22F0C7148;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22F0C7148()
{
  v65 = v0;
  sub_22F0CFF1C();
  v1 = sub_22F0D09FC();
  v2 = sub_22F0D124C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[41];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v64[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, v64);
    *(v5 + 12) = 2048;
    *(v5 + 14) = *(v4 + 16);

    _os_log_impl(&dword_22EFE1000, v1, v2, "%s fetched %ld with revGeo", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  else
  {
  }

  v7 = v0[41];
  v8 = v0[42];
  v9 = v0[38];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64[0] = v7;
  sub_22F0CA0B8(v9, sub_22F0C83D4, 0, isUniquelyReferenced_nonNull_native, v64);
  if (v8)
  {

    sub_22F0D00CC();
  }

  else
  {

    v11 = v64[0];
    v0[43] = v64[0];
    sub_22F0CFFAC();
    v12 = sub_22F0D09FC();
    v13 = sub_22F0D124C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[27];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v64[0] = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, v64);
      *(v15 + 12) = 2048;
      *(v15 + 14) = *(v11 + 16);
      sub_22F0D00CC();
      *(v15 + 22) = 2048;
      *(v15 + 24) = *(v14 + 16);
      _os_log_impl(&dword_22EFE1000, v12, v13, "%s has %ld locations out of %ld friends", v15, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2318FE8B0](v16, -1, -1);
      MEMORY[0x2318FE8B0](v15, -1, -1);
    }

    else
    {
      sub_22F0D00CC();
    }

    v17 = *(v0[27] + 16);
    v18 = sub_22F0CFF1C();
    v62 = v11;
    v63 = v0;
    if (v17)
    {
      v19 = 0;
      v61 = -v17;
      v20 = v18 + 40;
      v21 = MEMORY[0x277D84F90];
      v60 = v18 + 40;
      do
      {
        v22 = (v20 + 16 * v19++);
        while (1)
        {
          if ((v19 - 1) >= *(v0[27] + 16))
          {
            __break(1u);
            goto LABEL_45;
          }

          v24 = *(v22 - 1);
          v23 = *v22;
          v25 = *(v11 + 16);
          sub_22F0CFF1C();
          if (!v25)
          {
            break;
          }

          v26 = sub_22EFFDA80(v24, v23);
          if ((v27 & 1) == 0)
          {
            break;
          }

          v28 = v26;
          v29 = v0[19];
          v30 = *(v11 + 56);
          v31 = type metadata accessor for PeopleLocation(0);
          v32 = *(v31 - 8);
          sub_22F0CE0BC(v30 + *(v32 + 72) * v28, v29, type metadata accessor for PeopleLocation);

          v33 = v31;
          v11 = v62;
          v0 = v63;
          (*(v32 + 56))(v29, 0, 1, v33);
          sub_22F003A4C(v29, &qword_27DAA17E8, &qword_22F0D7CC8);
          ++v19;
          v22 += 2;
          if (v61 + v19 == 1)
          {
            goto LABEL_26;
          }
        }

        v34 = v0[19];
        v35 = type metadata accessor for PeopleLocation(0);
        (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
        sub_22F003A4C(v34, &qword_27DAA17E8, &qword_22F0D7CC8);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v64[0] = v21;
        if ((v36 & 1) == 0)
        {
          sub_22EFFC870(0, *(v21 + 16) + 1, 1);
          v21 = v64[0];
        }

        v38 = *(v21 + 16);
        v37 = *(v21 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_22EFFC870((v37 > 1), v38 + 1, 1);
          v21 = v64[0];
        }

        *(v21 + 16) = v38 + 1;
        v39 = v21 + 16 * v38;
        *(v39 + 32) = v24;
        *(v39 + 40) = v23;
        v11 = v62;
        v0 = v63;
        v20 = v60;
      }

      while (v61 + v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

LABEL_26:

    v40 = *(v21 + 16);
    if (v40)
    {
      v41 = 0;
      v42 = (v21 + 40);
      v43 = MEMORY[0x277D84F90];
      while (v41 < *(v21 + 16))
      {
        v45 = *(v42 - 1);
        v44 = *v42;
        sub_22F0CFF1C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_22F03C784(0, *(v43 + 2) + 1, 1, v43);
        }

        v47 = *(v43 + 2);
        v46 = *(v43 + 3);
        if (v47 >= v46 >> 1)
        {
          v43 = sub_22F03C784((v46 > 1), v47 + 1, 1, v43);
        }

        ++v41;
        *(v43 + 2) = v47 + 1;
        v48 = &v43[16 * v47];
        *(v48 + 4) = v45;
        *(v48 + 5) = v44;
        v42 += 2;
        if (v40 == v41)
        {
          goto LABEL_36;
        }
      }

LABEL_45:
      __break(1u);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
LABEL_36:
      sub_22F0D00CC();
      if (*(v43 + 2))
      {
        v49 = v63;
        sub_22F0CFF1C();
        v50 = sub_22F0D09FC();
        v51 = sub_22F0D124C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v64[0] = v53;
          *v52 = 136315138;
          v54 = MEMORY[0x2318FD490](v43, MEMORY[0x277D837D0]);
          v56 = v55;

          v57 = sub_22F00A560(v54, v56, v64);
          v49 = v63;

          *(v52 + 4) = v57;
          _os_log_impl(&dword_22EFE1000, v50, v51, "Unexpected FindMy cache miss: %s!", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          MEMORY[0x2318FE8B0](v53, -1, -1);
          MEMORY[0x2318FE8B0](v52, -1, -1);
        }

        else
        {
        }
      }

      else
      {

        v49 = v63;
      }

      v58 = swift_task_alloc();
      v49[44] = v58;
      *v58 = v49;
      v58[1] = sub_22F0C78A8;
      v59 = v49[23];

      sub_22F0C8AC0(v62, v59);
    }
  }
}

uint64_t sub_22F0C78A8(uint64_t a1)
{
  *(*v1 + 360) = a1;

  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0C79E4, 0, 0);
}

uint64_t sub_22F0C79E4()
{
  v11 = v0;
  sub_22F0CFF1C();
  v1 = sub_22F0D09FC();
  v2 = sub_22F0D122C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[45];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, &v10);
    *(v5 + 12) = 2048;
    *(v5 + 14) = *(v4 + 16);

    _os_log_impl(&dword_22EFE1000, v1, v2, "%s status results count: %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318FE8B0](v6, -1, -1);
    MEMORY[0x2318FE8B0](v5, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v7 = v0[45];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_22F0C7B78()
{
  v48 = v0;
  v1 = v0[26];
  v2 = v1;
  Logger.ifError(_:message:)(v1, 0xD000000000000018, 0x800000022F0E00C0);

  v3 = MEMORY[0x277D84F90];
  v0[27] = MEMORY[0x277D84F90];
  v4 = sub_22F0D09FC();
  v5 = sub_22F0D124C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    v46 = v7;
    *v6 = 136315138;
    v9 = *(v3 + 16);
    if (v9)
    {
      v41 = v7;
      v42 = v5;
      v43 = v6;
      v44 = v4;
      v47 = v3;
      sub_22F0CFF1C();
      sub_22EFFC4E8(0, v9, 0);
      v10 = (v3 + 40);
      v11 = *(v3 + 16);
      v12 = 16 * v11;
      do
      {
        v13 = *(v10 - 1);
        v14 = *v10;
        v47 = v3;
        v15 = v11 + 1;
        v16 = *(v3 + 24);
        sub_22F0CFF1C();
        if (v11 >= v16 >> 1)
        {
          sub_22EFFC4E8((v16 > 1), v15, 1);
          v3 = v47;
        }

        *(v3 + 16) = v15;
        v17 = v3 + v12;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v12 += 16;
        v10 += 2;
        ++v11;
        --v9;
      }

      while (v9);

      v6 = v43;
      v4 = v44;
      v5 = v42;
      v8 = v41;
    }

    v18 = MEMORY[0x2318FD490](v3, MEMORY[0x277D837D0]);
    v20 = v19;

    v21 = sub_22F00A560(v18, v20, &v46);

    *(v6 + 4) = v21;
    _os_log_impl(&dword_22EFE1000, v4, v5, "Friends sharing %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318FE8B0](v8, -1, -1);
    MEMORY[0x2318FE8B0](v6, -1, -1);
  }

  v22 = sub_22F0CFF1C();
  sub_22F0C39C0(v22, v0 + 15);
  v0[28] = v23;
  if (!*(v23 + 16))
  {

    v34 = v0[5];
    v35 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
    v36 = *(v35 + 24);
    v37 = sub_22F0CFF1C();
    v36(v37, v34, v35);

    sub_22F0CFF1C();
    v38 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v45 = *(v38 + 8) + **(v38 + 8);
    v39 = swift_task_alloc();
    v0[34] = v39;
    *v39 = v0;
    v39[1] = sub_22F0C6880;

    __asm { BRAA            X4, X16 }
  }

  v24 = v23;
  v25 = sub_22F0D09FC();
  v26 = sub_22F0D122C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0080, &v47);
    *(v27 + 12) = 2080;
    v29 = MEMORY[0x2318FD490](v24, MEMORY[0x277D837D0]);
    v31 = sub_22F00A560(v29, v30, &v47);

    *(v27 + 14) = v31;
    _os_log_impl(&dword_22EFE1000, v25, v26, "%s items to purge: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v28, -1, -1);
    MEMORY[0x2318FE8B0](v27, -1, -1);
  }

  v0[29] = sub_22F0D10AC();
  v0[30] = sub_22F0D109C();
  v33 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C642C, v33, v32);
}

uint64_t sub_22F0C80BC()
{

  v1 = v0[42];
  v2 = v1;
  Logger.ifError(_:message:)(v1, 0xD000000000000015, 0x800000022F0E00E0);

  v3 = sub_22F07D7A0(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4(v3);
}

void sub_22F0C8190(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v16 = a1[1];
  v17 = v3;
  swift_beginAccess();
  v4 = *a2;
  v5 = *(*a2 + 16);
  sub_22F0CFF1C();
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22F03C784(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_22F03C784((v11 > 1), v12 + 1, 1, v8);
      }

      ++v6;
      *(v8 + 2) = v12 + 1;
      v13 = &v8[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = v9;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_11:

    v18[0] = v17;
    v18[1] = v16;
    MEMORY[0x28223BE20](v14);
    v15[2] = v18;
    sub_22F051C9C(sub_22F0C09D0, v15, v8);
  }
}

uint64_t static LocateFriend.isUpdateSignificant(event:with:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F01F1CC;

  return sub_22F0CB62C(a1, a2);
}

double sub_22F0C83D4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2510, &qword_22F0DC118) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D60, &qword_22F0D90C8) + 48);
  v6 = a1[1];
  *a2 = *a1;
  a2[1] = v6;
  sub_22F0CE0BC(a1 + v4, a2 + v5, type metadata accessor for PeopleLocation);

  sub_22F0CFF1C();
  return result;
}

uint64_t sub_22F0C846C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2510, &qword_22F0DC118);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - v4;
  v6 = type metadata accessor for PeopleLocation(0);
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2518, &unk_22F0DC120);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v40 - v14);
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v40 = v5;
  v45 = v19;
  if (v20)
  {
    v41 = a1;
    v21 = v18;
LABEL_11:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    v27 = (*(v16 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    sub_22F0CE0BC(*(v16 + 56) + *(v42 + 72) * v26, v8, type metadata accessor for PeopleLocation);
    v30 = v44;
    v31 = *(v44 + 48);
    *v15 = v29;
    v15[1] = v28;
    v32 = v8;
    v33 = v30;
    sub_22F0CE00C(v32, v15 + v31, type metadata accessor for PeopleLocation);
    v34 = v43;
    (*(v43 + 56))(v15, 0, 1, v33);
    sub_22F0CFF1C();
    v24 = v21;
    v35 = v34;
    a1 = v41;
LABEL_12:
    *v1 = v16;
    v1[1] = v17;
    v1[2] = v45;
    v1[3] = v24;
    v1[4] = v25;
    v36 = v1[5];
    sub_22F0CE1E8(v15, v12, &qword_27DAA2518, &unk_22F0DC120);
    v37 = 1;
    if ((*(v35 + 48))(v12, 1, v33) != 1)
    {
      v38 = v40;
      sub_22F0CE1E8(v12, v40, &qword_27DAA2510, &qword_22F0DC118);
      v36(v38);
      sub_22F003A4C(v38, &qword_27DAA2510, &qword_22F0DC118);
      v37 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D60, &qword_22F0D90C8);
    return (*(*(v39 - 8) + 56))(a1, v37, 1, v39);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v35 = v43;
        v33 = v44;
        (*(v43 + 56))(&v40 - v14, 1, 1, v44);
        v25 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F0C8844(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = a2;
  for (i = (a1 + 40); ; i += 2)
  {
    v31 = v3;
    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v9 = [a3 identifier];
    v10 = sub_22F0D0CAC();
    v12 = v11;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v32 = *v4;
    *v4 = 0x8000000000000000;
    v16 = sub_22EFFDA80(v8, v7);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      break;
    }

    v20 = v15;
    if (v14[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v23 = v32;
        if (v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_22F0600F4();
        v23 = v32;
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_22F07A54C(v19, isUniquelyReferenced_nonNull_native);
      v21 = sub_22EFFDA80(v8, v7);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_19;
      }

      v16 = v21;
      v23 = v32;
      if (v20)
      {
LABEL_3:
        v6 = (v23[7] + 16 * v16);
        *v6 = v10;
        v6[1] = v12;

        goto LABEL_4;
      }
    }

    v23[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v23[6] + 16 * v16);
    *v24 = v8;
    v24[1] = v7;
    v25 = (v23[7] + 16 * v16);
    *v25 = v10;
    v25[1] = v12;
    v26 = v23[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_18;
    }

    v23[2] = v28;
LABEL_4:
    v4 = a2;
    *a2 = v23;

    v3 = v31 - 1;
    if (v31 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_22F0D191C();
  __break(1u);
}

uint64_t sub_22F0C8A3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  result = (*(v8 + 24))(v5, v6, 0, v7, v8);
  *a2 = result;
  return result;
}

uint64_t sub_22F0C8AC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22F0C8AE0, 0, 0);
}

uint64_t sub_22F0C8AE0()
{
  v20 = v0;
  v0[5] = MEMORY[0x277D84F98];
  v0[6] = MEMORY[0x277D84F90];
  v1 = v0[7];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = sub_22F0CFF1C();
  v9 = 0;
  if (v4)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v12 = v0[7];
      v11 = v0[8];
      v13 = (*(v1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v4)))));
      v14 = v13[1];
      v19[0] = *v13;
      v19[1] = v14;
      sub_22F0CFF1C();
      sub_22F0C3B7C(v19, v12, v11, v0 + 6, v0 + 5);

      v4 &= v4 - 1;
      v9 = v10;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    if (v10 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  sub_22F0D00CC();

  v0[9] = sub_22F0D10AC();
  v0[10] = sub_22F0D109C();
  v15 = sub_22F0D106C();
  v17 = v16;
  v6 = sub_22F0C8CF0;
  v7 = v15;
  v8 = v17;

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22F0C8CF0()
{
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0C8D88, 0, 0);
}

uint64_t sub_22F0C8D88()
{
  *(v0 + 88) = sub_22F0D109C();
  v2 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C8E14, v2, v1);
}

uint64_t sub_22F0C8E14()
{
  sub_22F0D00CC();
  swift_beginAccess();
  *(v0 + 96) = qword_280CBD628;
  sub_22F0CFFAC();

  return MEMORY[0x2822009F8](sub_22F0C8EA8, 0, 0);
}

uint64_t sub_22F0C8EA8()
{
  v0[13] = v0[6];
  v0[14] = sub_22F0D109C();
  v2 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C8F3C, v2, v1);
}

uint64_t sub_22F0C8F3C()
{
  v1 = *(v0 + 104);
  sub_22F0D00CC();
  sub_22F0898A8(v1);
  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0C8FBC, 0, 0);
}

uint64_t sub_22F0C8FBC()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22F0C9020(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for LocationItem(0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v2 = type metadata accessor for PeopleLocation(0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0C9140, 0, 0);
}

uint64_t sub_22F0C9140()
{
  v35 = v0;
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_22F0BBB8C(*(v1 + 16), 0);
  v4 = sub_22F0BFE8C(v34, v3 + 4, v2, v1);
  v5 = v34[0];
  sub_22F0CFF1C();
  sub_22F003524(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v0[15] = v3;
  v6 = v3[2];
  v0[16] = v6;
  if (!v6)
  {
    sub_22F0D00CC();
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v21 = sub_22F0D0A1C();
    __swift_project_value_buffer(v21, qword_280CBDB50);
    v22 = sub_22F0D09FC();
    v23 = sub_22F0D124C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0210, v34);
      _os_log_impl(&dword_22EFE1000, v22, v23, "%s No handles to enrich", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318FE8B0](v25, -1, -1);
      MEMORY[0x2318FE8B0](v24, -1, -1);
    }

    sub_22F07DFC0(MEMORY[0x277D84F90]);
    goto LABEL_26;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  while (1)
  {
    v0[18] = v7;
    v0[19] = v8;
    v0[17] = v8;
    v9 = v0[5];
    v10 = &v3[2 * v7];
    v11 = v10[4];
    v0[20] = v11;
    v12 = v10[5];
    v0[21] = v12;
    if (*(v9 + 16))
    {
      break;
    }

LABEL_10:
    v3 = v0[15];
    if (v7 == v6 - 1)
    {
      goto LABEL_13;
    }

    if (++v7 >= v3[2])
    {
      __break(1u);
LABEL_13:
      sub_22F0D00CC();
      if (qword_280CBDB48 != -1)
      {
        swift_once();
      }

      v15 = sub_22F0D0A1C();
      __swift_project_value_buffer(v15, qword_280CBDB50);
      v16 = MEMORY[0x277D84F98];
      sub_22F0CFF1C();
      v17 = sub_22F0D09FC();
      v18 = sub_22F0D124C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v34[0] = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0210, v34);
        *(v19 + 12) = 2048;
        *(v19 + 14) = *(v16 + 16);

        _os_log_impl(&dword_22EFE1000, v17, v18, "%s enriched %ld locations", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x2318FE8B0](v20, -1, -1);
        MEMORY[0x2318FE8B0](v19, -1, -1);
      }

      else
      {
      }

LABEL_26:

      v32 = v0[1];

      __asm { BRAA            X2, X16 }
    }
  }

  sub_22F0CFF1C();
  v13 = sub_22EFFDA80(v11, v12);
  if ((v14 & 1) == 0)
  {

    v7 = v0[18];
    v6 = v0[16];
    goto LABEL_10;
  }

  v27 = v0[13];
  v26 = v0[14];
  v28 = v0[12];
  v29 = v0[8];
  sub_22F0CE0BC(*(v0[5] + 56) + *(v0[10] + 72) * v13, v27, type metadata accessor for PeopleLocation);
  sub_22F0CE00C(v27, v26, type metadata accessor for PeopleLocation);
  sub_22F0CE0BC(v26, v28, type metadata accessor for PeopleLocation);
  sub_22F0CFF1C();
  LocationItem.init(with:for:)(v28, v11, v12, v29);
  v0[22] = sub_22F0D10AC();
  v0[23] = sub_22F0D109C();
  v31 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C9678, v31, v30);
}

uint64_t sub_22F0C9678()
{
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0C9710, 0, 0);
}

uint64_t sub_22F0C9710()
{
  *(v0 + 192) = sub_22F0D109C();
  v2 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0C979C, v2, v1);
}

uint64_t sub_22F0C979C()
{
  sub_22F0D00CC();
  swift_beginAccess();
  v0[25] = qword_280CBD628;
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_22F0C9884;
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[7];

  return sub_22F089B58(v4, v2, v3);
}

uint64_t sub_22F0C9884()
{

  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0C99B8, 0, 0);
}

uint64_t sub_22F0C99B8()
{
  v62 = v0;
  if (LocationItem.expired.getter() || (LocationItem.hasMoved(from:)(v0[8]), (v1 & 1) != 0) || (v2 = String.trimToNil()(), !v2.value._object))
  {
    v34 = v0[14];
    v35 = v0[8];

    sub_22F0CE124(v35, type metadata accessor for LocationItem);
    sub_22F0CE124(v34, type metadata accessor for PeopleLocation);
    v32 = v0[19];
    v33 = v0[17];
    goto LABEL_12;
  }

  if (qword_280CBDB48 != -1)
  {
    swift_once();
  }

  v3 = sub_22F0D0A1C();
  __swift_project_value_buffer(v3, qword_280CBDB50);
  sub_22F0CFF1C();
  v4 = sub_22F0D09FC();
  v5 = sub_22F0D124C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[20];
    v6 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61 = v9;
    *v8 = 136315395;
    *(v8 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0210, &v61);
    *(v8 + 12) = 2081;
    sub_22F0CFF1C();
    v10 = sub_22F00A560(v7, v6, &v61);

    *(v8 + 14) = v10;
    _os_log_impl(&dword_22EFE1000, v4, v5, "%s enriching %{private}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v9, -1, -1);
    MEMORY[0x2318FE8B0](v8, -1, -1);
  }

  v11 = v0[14];
  v12 = v0[12];
  v14 = v0[6];
  v13 = v0[7];
  v15 = *(v0[9] + 20);
  v16 = sub_22F0D05BC();
  v17 = (*(*(v16 - 8) + 16))(v12 + v15, v11 + v15, v16);
  v20 = *(v13 + *(v14 + 28));
  v21 = *(v20 + 16);
  if (!v21)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v21 == 1)
  {
LABEL_32:
    __break(1u);
    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  v22 = v0[21];
  v23 = v0[19];
  v24 = v0[14];
  v25 = v0[9];
  v59 = v0[20];
  v60 = v0[8];
  v26 = *(v24 + v25[7]);
  v28 = v0[11];
  v27 = v0[12];
  v29 = *(v24 + v25[6]);
  v30 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v20 + 32) longitude:*(v20 + 40)];
  *v27 = v2;
  *(&v27->value._countAndFlagsBits + v25[6]) = v29;
  *(&v27->value._countAndFlagsBits + v25[7]) = v26;
  *(&v27->value._countAndFlagsBits + v25[8]) = v30;
  sub_22F0CE00C(v27, v28, type metadata accessor for PeopleLocation);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v23;
  sub_22F018348(v28, v59, v22, isUniquelyReferenced_nonNull_native);

  sub_22F0CE124(v60, type metadata accessor for LocationItem);
  sub_22F0CE124(v24, type metadata accessor for PeopleLocation);
  v32 = v61;
  v33 = v61;
LABEL_12:
  sub_22F0CE124(v0[7], type metadata accessor for LocationItem);
  while (1)
  {
    v36 = v0[18];
    v37 = v0[16];
    do
    {
      if (v36 == v37 - 1)
      {
        sub_22F0D00CC();
        if (qword_280CBDB48 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_30;
      }

      v38 = v0[15];
      if (++v36 >= *(v38 + 16))
      {
        __break(1u);
LABEL_30:
        swift_once();
LABEL_20:
        v45 = sub_22F0D0A1C();
        __swift_project_value_buffer(v45, qword_280CBDB50);
        sub_22F0CFF1C();
        v46 = sub_22F0D09FC();
        v47 = sub_22F0D124C();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v61 = v49;
          *v48 = 136315394;
          *(v48 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0210, &v61);
          *(v48 + 12) = 2048;
          *(v48 + 14) = *(v33 + 16);

          _os_log_impl(&dword_22EFE1000, v46, v47, "%s enriched %ld locations", v48, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x2318FE8B0](v49, -1, -1);
          MEMORY[0x2318FE8B0](v48, -1, -1);
        }

        else
        {
        }

        v50 = v0[1];

        __asm { BRAA            X2, X16 }
      }

      v0[18] = v36;
      v0[19] = v32;
      v0[17] = v33;
      v39 = v0[5];
      v40 = v38 + 16 * v36;
      v41 = *(v40 + 32);
      v0[20] = v41;
      v42 = *(v40 + 40);
      v0[21] = v42;
    }

    while (!*(v39 + 16));
    sub_22F0CFF1C();
    v43 = sub_22EFFDA80(v41, v42);
    if (v44)
    {
      break;
    }
  }

  v51 = v0[13];
  v52 = v0[14];
  v53 = v0[12];
  v54 = v0[8];
  sub_22F0CE0BC(*(v0[5] + 56) + *(v0[10] + 72) * v43, v51, type metadata accessor for PeopleLocation);
  sub_22F0CE00C(v51, v52, type metadata accessor for PeopleLocation);
  sub_22F0CE0BC(v52, v53, type metadata accessor for PeopleLocation);
  sub_22F0CFF1C();
  LocationItem.init(with:for:)(v53, v41, v42, v54);
  v0[22] = sub_22F0D10AC();
  v0[23] = sub_22F0D109C();
  v55 = sub_22F0D106C();
  v57 = v56;
  v17 = sub_22F0C9678;
  v18 = v55;
  v19 = v57;

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22F0CA0B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for PeopleLocation(0);
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA2508, &qword_22F0DC110);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v39 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v40 = a1;
  v41 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v42 = v17;
  v43 = 0;
  v44 = v20 & v18;
  v45 = a2;
  v46 = a3;
  sub_22F0CFF1C();
  v39[1] = a3;
  sub_22F0CFFAC();
  while (1)
  {
    sub_22F0C846C(v15);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1D60, &qword_22F0D90C8);
    if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
    {
      sub_22F003524(v40);
      return sub_22F0D00CC();
    }

    v23 = *v15;
    v22 = v15[1];
    sub_22F0CE00C(v15 + *(v21 + 48), v12, type metadata accessor for PeopleLocation);
    v24 = *a5;
    v26 = sub_22EFFDA80(v23, v22);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_22F060C94();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_22F0CE184(v12, v33[7] + *(v47 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_22F07B6A4(v29, a4 & 1);
      v31 = sub_22EFFDA80(v23, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v23;
      v34[1] = v22;
      sub_22F0CE00C(v12, v33[7] + *(v47 + 72) * v26, type metadata accessor for PeopleLocation);
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v33[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22F0D191C();
  __break(1u);
  return result;
}

uint64_t sub_22F0CA404(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (*(a3 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v10)))));
    if (*v13 != a1 || v13[1] != a2)
    {
      v10 &= v10 - 1;
      if ((sub_22F0D188C() & 1) == 0)
      {
        continue;
      }
    }

    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v15 = sub_22F0D0A1C();
    __swift_project_value_buffer(v15, qword_280CBDB50);
    sub_22F0CFF1C();
    v16 = sub_22F0D09FC();
    v17 = sub_22F0D124C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315395;
      *(v18 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0180, &v26);
      *(v18 + 12) = 2081;
      *(v18 + 14) = sub_22F00A560(a1, a2, &v26);
      _os_log_impl(&dword_22EFE1000, v16, v17, "%s %{private}s is found in share set", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v19, -1, -1);
      MEMORY[0x2318FE8B0](v18, -1, -1);
    }

    return 1;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  if (qword_280CBDB48 == -1)
  {
    goto LABEL_20;
  }

LABEL_24:
  swift_once();
LABEL_20:
  v21 = sub_22F0D0A1C();
  __swift_project_value_buffer(v21, qword_280CBDB50);
  sub_22F0CFF1C();
  v22 = sub_22F0D09FC();
  v23 = sub_22F0D124C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v24 = 136315395;
    *(v24 + 4) = sub_22F00A560(0xD00000000000001ELL, 0x800000022F0E0180, &v26);
    *(v24 + 12) = 2081;
    *(v24 + 14) = sub_22F00A560(a1, a2, &v26);
    _os_log_impl(&dword_22EFE1000, v22, v23, "%s %{private}s is not sharing", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318FE8B0](v25, -1, -1);
    MEMORY[0x2318FE8B0](v24, -1, -1);
  }

  return 0;
}

void sub_22F0CA788(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if ((sub_22F0CA404(a1, a2, a3) & 1) == 0 && [a4 locationChangeType] == 1)
  {
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBDB50);
    sub_22F0CFF1C();
    oslog = sub_22F0D09FC();
    v8 = sub_22F0D124C();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136380675;
      *(v9 + 4) = sub_22F00A560(a1, a2, &v12);
      _os_log_impl(&dword_22EFE1000, oslog, v8, "%{private}s is not actively sharing yet", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      MEMORY[0x2318FE8B0](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22F0CA924(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22F0CA944, 0, 0);
}

uint64_t sub_22F0CA944()
{
  v1 = *(v0 + 40);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22F0CAA68;

  return v6(v2, v3);
}

uint64_t sub_22F0CAA68(uint64_t a1)
{
  v3 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v4 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_22F0CAB9C, 0, 0);
}

uint64_t sub_22F0CAB9C()
{
  v73 = v0;
  v1 = v0[7];
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = 0;
    v63 = -v2;
    v65 = v0 + 2;
    v4 = v1 + 40;
    v5 = MEMORY[0x277D84F90];
    v61 = v1 + 40;
    do
    {
      v62 = v5;
      v6 = &v4[16 * v3++];
      v0 = &unk_280CBD000;
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 2))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = v67[4];
        v8 = *v6;
        v68 = *(v6 - 1);
        v67[2] = v68;
        v67[3] = v8;
        v9 = swift_task_alloc();
        *(v9 + 16) = v65;
        sub_22F0CFF1C();
        v10 = sub_22F051C9C(sub_22F034BF4, v9, v7);

        if (v0[361] != -1)
        {
          swift_once();
        }

        v11 = sub_22F0D0A1C();
        __swift_project_value_buffer(v11, qword_280CBDB50);
        sub_22F0CFF1C();
        v12 = sub_22F0D09FC();
        v13 = sub_22F0D122C();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = v0;
          v16 = v1;
          v17 = swift_slowAlloc();
          v72[0] = v17;
          *v14 = 136315650;
          *(v14 + 4) = sub_22F00A560(0xD000000000000037, 0x800000022F0E01A0, v72);
          *(v14 + 12) = 2080;
          *(v14 + 14) = sub_22F00A560(v68, v8, v72);
          *(v14 + 22) = 1024;
          *(v14 + 24) = v10 & 1;
          _os_log_impl(&dword_22EFE1000, v12, v13, "%s in update set: %s: in set: %{BOOL}d ", v14, 0x1Cu);
          swift_arrayDestroy();
          v18 = v17;
          v1 = v16;
          v0 = v15;
          MEMORY[0x2318FE8B0](v18, -1, -1);
          MEMORY[0x2318FE8B0](v14, -1, -1);
        }

        if (v10)
        {
          break;
        }

        ++v3;
        v6 += 2;
        if (v63 + v3 == 1)
        {
          v0 = v67;
          v5 = v62;
          goto LABEL_19;
        }
      }

      v5 = v62;
      v71 = v62;
      v19 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22EFFC890(0, *(v62 + 16) + 1, 1);
        v5 = v71;
      }

      v0 = v67;
      v4 = v61;
      v21 = *(v5 + 16);
      v20 = *(v5 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22EFFC890((v20 > 1), v21 + 1, 1);
        v4 = v61;
        v5 = v71;
      }

      *(v5 + 16) = v21 + 1;
      v22 = v5 + 16 * v21;
      *(v22 + 32) = v68;
      *(v22 + 40) = v8;
      v1 = v19;
    }

    while (v63 + v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_19:

  v23 = *(v5 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (v5 + 40);
    v1 = MEMORY[0x277D84F90];
    while (v24 < *(v5 + 16))
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      sub_22F0CFF1C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_22F03D0D8(0, *(v1 + 2) + 1, 1, v1);
      }

      v29 = *(v1 + 2);
      v28 = *(v1 + 3);
      if (v29 >= v28 >> 1)
      {
        v1 = sub_22F03D0D8((v28 > 1), v29 + 1, 1, v1);
      }

      ++v24;
      v0[9] = v1;
      *(v1 + 2) = v29 + 1;
      v30 = &v1[16 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      v25 += 2;
      if (v23 == v24)
      {
        sub_22F0D00CC();
        if (qword_280CBDB48 != -1)
        {
          goto LABEL_48;
        }

        goto LABEL_28;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
LABEL_28:
    v31 = sub_22F0D0A1C();
    __swift_project_value_buffer(v31, qword_280CBDB50);
    sub_22F0CFF1C();
    v32 = sub_22F0D09FC();
    v33 = sub_22F0D124C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v71 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_22F00A560(0xD000000000000037, 0x800000022F0E01A0, &v71);
      *(v34 + 12) = 2080;
      v36 = *(v1 + 2);
      v37 = MEMORY[0x277D84F90];
      if (v36)
      {
        v64 = v35;
        v66 = v33;
        v69 = v34;
        v72[0] = MEMORY[0x277D84F90];
        sub_22EFFC4E8(0, v36, 0);
        v37 = v72[0];
        v38 = *(v72[0] + 16);
        v39 = 16 * v38;
        v40 = (v1 + 40);
        do
        {
          v41 = *(v40 - 1);
          v42 = *v40;
          v72[0] = v37;
          v43 = *(v37 + 24);
          sub_22F0CFF1C();
          if (v38 >= v43 >> 1)
          {
            sub_22EFFC4E8((v43 > 1), v38 + 1, 1);
            v37 = v72[0];
          }

          *(v37 + 16) = v38 + 1;
          v44 = v37 + v39;
          *(v44 + 32) = v41;
          *(v44 + 40) = v42;
          v39 += 16;
          v40 += 2;
          ++v38;
          --v36;
        }

        while (v36);
        v0 = v67;
        v34 = v69;
        v33 = v66;
        v35 = v64;
      }

      v53 = MEMORY[0x2318FD490](v37, MEMORY[0x277D837D0]);
      v55 = v54;

      v56 = sub_22F00A560(v53, v55, &v71);

      *(v34 + 14) = v56;
      _os_log_impl(&dword_22EFE1000, v32, v33, "%s friends sharing returned %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v35, -1, -1);
      MEMORY[0x2318FE8B0](v34, -1, -1);
    }

    v57 = v0[5];
    v58 = v57[3];
    v59 = v57[4];
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v70 = (*(v59 + 8) + **(v59 + 8));
    v60 = swift_task_alloc();
    v0[10] = v60;
    *v60 = v0;
    v60[1] = sub_22F0CB438;

    return v70(v1, 0, v58, v59);
  }

  else
  {
    sub_22F0D00CC();
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v45 = sub_22F0D0A1C();
    __swift_project_value_buffer(v45, qword_280CBDB50);
    v46 = sub_22F0D09FC();
    v47 = sub_22F0D124C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_22F00A560(0xD000000000000037, 0x800000022F0E01A0, v72);
      _os_log_impl(&dword_22EFE1000, v46, v47, "%s friends sharing in set returned empty list", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x2318FE8B0](v49, -1, -1);
      MEMORY[0x2318FE8B0](v48, -1, -1);
    }

    v50 = sub_22F07DFC0(MEMORY[0x277D84F90]);
    v51 = v0[1];

    return v51(v50);
  }
}

uint64_t sub_22F0CB438(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_22F0CB5C8;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_22F0CB560;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F0CB560()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22F0CB5C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F0CB62C(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  type metadata accessor for LocationItem(0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v4 = sub_22F0D05BC();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v5 = type metadata accessor for PeopleLocation(0);
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F0CB830, 0, 0);
}

uint64_t sub_22F0CB830()
{
  v1 = *(v0 + 200);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = sub_22F0CB95C;

  return v6(v0 + 104, v2, v3);
}

uint64_t sub_22F0CB95C()
{

  return MEMORY[0x2822009F8](sub_22F0CBA58, 0, 0);
}

uint64_t sub_22F0CBA58()
{
  v31 = v0;
  if (*(v0 + 128))
  {
    v1 = *(v0 + 192);
    sub_22EFE6B9C((v0 + 104), v0 + 64);
    v2 = [v1 idsHandle];
    v3 = sub_22F0D0CAC();
    v5 = v4;

    *(v0 + 352) = v3;
    *(v0 + 360) = v5;
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 192);
    v7 = sub_22F0D0A1C();
    *(v0 + 368) = __swift_project_value_buffer(v7, qword_280CBDB50);
    sub_22F0CFF1C();
    v8 = v6;
    v9 = sub_22F0D09FC();
    v10 = sub_22F0D124C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 192);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v30);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_22F00A560(v3, v5, &v30);
      *(v12 + 22) = 2080;
      v14 = [v11 locationChangeType];
      if (v14)
      {
        v15 = 0xE700000000000000;
        v16 = 0x6E776F6E6B6E75;
        if (v14 == 1)
        {
          v16 = 0x2064657472617473;
          v15 = 0xEF676E6972616873;
        }

        v17 = v14 == 2;
        if (v14 == 2)
        {
          v18 = 0x20646570706F7473;
        }

        else
        {
          v18 = v16;
        }

        if (v17)
        {
          v19 = 0xEF676E6972616873;
        }

        else
        {
          v19 = v15;
        }
      }

      else
      {
        v19 = 0xE700000000000000;
        v18 = 0x64657461647075;
      }

      v27 = sub_22F00A560(v18, v19, &v30);

      *(v12 + 24) = v27;
      _os_log_impl(&dword_22EFE1000, v9, v10, "%s %s event %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v13, -1, -1);
      MEMORY[0x2318FE8B0](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    inited = swift_initStackObject();
    *(v0 + 376) = inited;
    *(inited + 16) = xmmword_22F0D2BF0;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    sub_22F0CFF1C();
    v29 = swift_task_alloc();
    *(v0 + 384) = v29;
    *v29 = v0;
    v29[1] = sub_22F0CBF84;

    return sub_22F0CA924(inited, v0 + 64);
  }

  else
  {
    sub_22F003A4C(v0 + 104, &qword_27DAA2500, &qword_22F0DC0C8);
    if (qword_280CBDB48 != -1)
    {
      swift_once();
    }

    v20 = sub_22F0D0A1C();
    __swift_project_value_buffer(v20, qword_280CBDB50);
    v21 = sub_22F0D09FC();
    v22 = sub_22F0D123C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v30);
      _os_log_impl(&dword_22EFE1000, v21, v22, "%s can't grab session, fallback to significant", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2318FE8B0](v24, -1, -1);
      MEMORY[0x2318FE8B0](v23, -1, -1);
    }

    v25 = *(v0 + 8);

    return v25(1);
  }
}

uint64_t sub_22F0CBF84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  v5 = *(v3 + 376);
  if (v1)
  {

    swift_setDeallocating();
    sub_22F022C14(v5 + 32);
    v6 = sub_22F0CCB88;
  }

  else
  {
    swift_setDeallocating();
    sub_22F022C14(v5 + 32);
    v6 = sub_22F0CC0E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22F0CC0E4()
{
  v86 = v0;
  v1 = [*(v0 + 192) locationChangeType] == 2 || objc_msgSend(*(v0 + 192), sel_locationChangeType) == 1;
  if ([*(v0 + 192) locationChangeType] == 1)
  {
    sub_22F0CFF1C();
    v2 = sub_22F0D09FC();
    v3 = sub_22F0D124C();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 352);
      v4 = *(v0 + 360);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v85 = v7;
      *v6 = 136380675;
      *(v6 + 4) = sub_22F00A560(v5, v4, &v85);
      _os_log_impl(&dword_22EFE1000, v2, v3, "%{private}s just started sharing", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x2318FE8B0](v7, -1, -1);
      MEMORY[0x2318FE8B0](v6, -1, -1);
    }

LABEL_8:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  if ([*(v0 + 192) locationChangeType] != 2)
  {
    v57 = *(v0 + 192);
    v58 = [v57 latitude];
    [v58 doubleValue];
    v60 = v59;

    v61 = [v57 longitude];
    [v61 doubleValue];
    v63 = v62;

    if (v60 == 0.0 || v63 == 0.0)
    {
      v64 = *(v0 + 192);

      v65 = v64;
      v66 = sub_22F0D09FC();
      v67 = sub_22F0D123C();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = *(v0 + 192);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v85 = v70;
        *v69 = 136315394;
        *(v69 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v85);
        *(v69 + 12) = 2080;
        v71 = [v68 idsHandle];
        v72 = sub_22F0D0CAC();
        v74 = v73;

        v75 = sub_22F00A560(v72, v74, &v85);

        *(v69 + 14) = v75;
        _os_log_impl(&dword_22EFE1000, v66, v67, "%s Ignoring 'Null Island' latlng for %s", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v70, -1, -1);
        MEMORY[0x2318FE8B0](v69, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
      goto LABEL_40;
    }

    goto LABEL_8;
  }

  sub_22F0CFF1C();
  v9 = sub_22F0D09FC();
  v10 = sub_22F0D124C();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 352);
    v11 = *(v0 + 360);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v85 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22F00A560(v12, v11, &v85);
    _os_log_impl(&dword_22EFE1000, v9, v10, "%{private}s just stopped sharing", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x2318FE8B0](v14, -1, -1);
    MEMORY[0x2318FE8B0](v13, -1, -1);
  }

  sub_22F0CFF1C();
  v8 = sub_22F03C784(0, 1, 1, MEMORY[0x277D84F90]);
  v16 = *(v8 + 2);
  v15 = *(v8 + 3);
  if (v16 >= v15 >> 1)
  {
    v8 = sub_22F03C784((v15 > 1), v16 + 1, 1, v8);
  }

  v18 = *(v0 + 352);
  v17 = *(v0 + 360);
  *(v8 + 2) = v16 + 1;
  v19 = &v8[16 * v16];
  *(v19 + 4) = v18;
  *(v19 + 5) = v17;
LABEL_15:
  v20 = *(v0 + 392);
  sub_22F0CA788(*(v0 + 352), *(v0 + 360), v20, *(v0 + 192));
  v21 = *(v20 + 32);
  *(v0 + 536) = v21;
  v22 = -1;
  v23 = -1 << v21;
  if (-(-1 << v21) < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v20 + 64);
  *(v0 + 408) = v8;
  *(v0 + 537) = v1;
  sub_22F0CFF1C();
  if (!v24)
  {
    v27 = 0;
    v26 = *(v0 + 392);
    while (((63 - v23) >> 6) - 1 != v27)
    {
      v25 = v27 + 1;
      v24 = *(v26 + 8 * v27++ + 72);
      if (v24)
      {
        goto LABEL_22;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

    sub_22F0D00CC();

LABEL_40:

    v76 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  v25 = 0;
  v26 = *(v0 + 392);
LABEL_22:
  *(v0 + 416) = v24;
  *(v0 + 424) = v25;
  v28 = (*(v26 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v24)))));
  v29 = *v28;
  *(v0 + 432) = *v28;
  v30 = v28[1];
  *(v0 + 440) = v30;
  if (!*(v26 + 16))
  {
    goto LABEL_45;
  }

  sub_22F0CFF1C();
  v31 = sub_22EFFDA80(v29, v30);
  if ((v32 & 1) == 0)
  {
LABEL_44:

LABEL_45:
    *(v0 + 488) = v8;
    *(v0 + 538) = v1;
    *(v0 + 496) = sub_22F0D10AC();
    *(v0 + 504) = sub_22F0D109C();
    v77 = sub_22F0D106C();
    v79 = v78;
    v80 = sub_22F0CD6F4;
    goto LABEL_48;
  }

  v34 = *(v0 + 352);
  v33 = *(v0 + 360);
  v36 = *(v0 + 328);
  v35 = *(v0 + 336);
  sub_22F0CE0BC(*(*(v0 + 392) + 56) + *(*(v0 + 304) + 72) * v31, v36, type metadata accessor for PeopleLocation);
  sub_22F0CE00C(v36, v35, type metadata accessor for PeopleLocation);
  v37 = v29 == v34 && v30 == v33;
  if (!v37 && (sub_22F0D188C() & 1) == 0)
  {
    sub_22F0CE124(*(v0 + 336), type metadata accessor for PeopleLocation);
    goto LABEL_44;
  }

  if (qword_27DAA0648 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 280);
  v39 = *(v0 + 272);
  v83 = *(v0 + 288);
  v84 = *(v0 + 264);
  v40 = *(v0 + 248);
  v41 = *(v0 + 256);
  v42 = *(v0 + 240);
  __swift_project_value_buffer(v42, qword_27DAA21F8);
  sub_22F0D05AC();
  v43 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v40 + 8))(v41, v42);
  sub_22F0D054C();
  v44 = sub_22F0D053C();
  v45 = *(v39 + 8);
  v45(v38, v84);
  v45(v83, v84);
  if (v44)
  {
    sub_22F0CE0BC(*(v0 + 336), *(v0 + 320), type metadata accessor for PeopleLocation);
    sub_22F0CFF1C();
    v46 = sub_22F0D09FC();
    v47 = sub_22F0D124C();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 320);
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v85 = v51;
      *v50 = 136315394;
      sub_22F0CFF1C();
      v52 = sub_22F00A560(v29, v30, &v85);

      *(v50 + 4) = v52;
      *(v50 + 12) = 2080;
      sub_22F0CE074(&qword_27DAA1670, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v53 = sub_22F0D183C();
      v55 = v54;
      sub_22F0CE124(v49, type metadata accessor for PeopleLocation);
      v56 = sub_22F00A560(v53, v55, &v85);

      *(v50 + 14) = v56;
      _os_log_impl(&dword_22EFE1000, v46, v47, "%s: expired %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v51, -1, -1);
      MEMORY[0x2318FE8B0](v50, -1, -1);
    }

    else
    {

      sub_22F0CE124(v49, type metadata accessor for PeopleLocation);
    }
  }

  *(v0 + 448) = sub_22F0D10AC();
  *(v0 + 456) = sub_22F0D109C();
  v77 = sub_22F0D106C();
  v79 = v81;
  v80 = sub_22F0CCCBC;
LABEL_48:

  return MEMORY[0x2822009F8](v80, v77, v79);
}

uint64_t sub_22F0CCB88()
{
  v1 = v0[50];
  v2 = v1;
  Logger.ifError(_:message:)(v1, 0xD00000000000003ALL, 0x800000022F0E0140);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  v3 = v0[1];

  return v3(1);
}

uint64_t sub_22F0CCCBC()
{
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0CCD54, 0, 0);
}

uint64_t sub_22F0CCD54()
{
  *(v0 + 464) = sub_22F0D109C();
  v2 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0CCDE0, v2, v1);
}

uint64_t sub_22F0CCDE0()
{
  sub_22F0D00CC();
  swift_beginAccess();
  v0[59] = qword_280CBD628;
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_22F0CCEC8;
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[29];

  return sub_22F089B58(v4, v2, v3);
}

uint64_t sub_22F0CCEC8()
{

  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0CCFFC, 0, 0);
}

uint64_t sub_22F0CCFFC()
{
  v59 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 312);
  v4 = *(v0 + 224);
  sub_22F0CE0BC(*(v0 + 336), v3, type metadata accessor for PeopleLocation);
  sub_22F0CFF1C();
  LocationItem.init(with:for:)(v3, v1, v2, v4);
  LocationItem.hasMoved(from:)(v4);
  if (v5)
  {
    sub_22F0CE0BC(*(v0 + 224), *(v0 + 216), type metadata accessor for LocationItem);
    sub_22F0CFF1C();
    v6 = sub_22F0D09FC();
    v7 = sub_22F0D122C();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 432);
      v8 = *(v0 + 440);
      v10 = *(v0 + 216);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v58 = v12;
      *v11 = 136315651;
      *(v11 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v58);
      *(v11 + 12) = 2081;
      sub_22F0CFF1C();
      v13 = sub_22F00A560(v9, v8, &v58);

      *(v11 + 14) = v13;
      *(v11 + 22) = 2081;
      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      sub_22F0CFF1C();
      sub_22F0CE124(v10, type metadata accessor for LocationItem);
      v16 = sub_22F00A560(v14, v15, &v58);

      *(v11 + 24) = v16;
      _os_log_impl(&dword_22EFE1000, v6, v7, "%s %{private}s now: [%{private}s]", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v12, -1, -1);
      MEMORY[0x2318FE8B0](v11, -1, -1);
    }

    else
    {
      v24 = *(v0 + 216);

      sub_22F0CE124(v24, type metadata accessor for LocationItem);
    }
  }

  else
  {
    if (!LocationItem.expired.getter())
    {
      sub_22F0CE0BC(*(v0 + 232), *(v0 + 208), type metadata accessor for LocationItem);
      sub_22F0CFF1C();
      v35 = sub_22F0D09FC();
      v36 = sub_22F0D122C();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 440);
      if (v37)
      {
        v39 = *(v0 + 432);
        v40 = *(v0 + 224);
        v56 = *(v0 + 232);
        v57 = *(v0 + 336);
        v41 = *(v0 + 208);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v58 = v43;
        *v42 = 136315651;
        *(v42 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v58);
        *(v42 + 12) = 2081;
        v44 = sub_22F00A560(v39, v38, &v58);

        *(v42 + 14) = v44;
        *(v42 + 22) = 2081;
        v45 = *(v41 + 16);
        v46 = *(v41 + 24);
        sub_22F0CFF1C();
        sub_22F0CE124(v41, type metadata accessor for LocationItem);
        v47 = sub_22F00A560(v45, v46, &v58);

        *(v42 + 24) = v47;
        _os_log_impl(&dword_22EFE1000, v35, v36, "%s %{private}s location is unchanged: [%{private}s]", v42, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318FE8B0](v43, -1, -1);
        MEMORY[0x2318FE8B0](v42, -1, -1);

        sub_22F0CE124(v40, type metadata accessor for LocationItem);
        sub_22F0CE124(v56, type metadata accessor for LocationItem);
        v48 = v57;
      }

      else
      {
        v49 = *(v0 + 336);
        v51 = *(v0 + 224);
        v50 = *(v0 + 232);
        v52 = *(v0 + 208);

        sub_22F0CE124(v52, type metadata accessor for LocationItem);
        sub_22F0CE124(v51, type metadata accessor for LocationItem);
        sub_22F0CE124(v50, type metadata accessor for LocationItem);
        v48 = v49;
      }

      sub_22F0CE124(v48, type metadata accessor for PeopleLocation);
      v26 = *(v0 + 408);
      v34 = *(v0 + 537);
      goto LABEL_18;
    }

    sub_22F0CFF1C();
    v17 = sub_22F0D09FC();
    v18 = sub_22F0D122C();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 432);
      v19 = *(v0 + 440);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v58 = v22;
      *v21 = 136315395;
      *(v21 + 4) = sub_22F00A560(0xD000000000000031, 0x800000022F0E0100, &v58);
      *(v21 + 12) = 2081;
      sub_22F0CFF1C();
      v23 = sub_22F00A560(v20, v19, &v58);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_22EFE1000, v17, v18, "%s %{private}s local cache expired", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v22, -1, -1);
      MEMORY[0x2318FE8B0](v21, -1, -1);
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v0 + 408);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_22F03C784(0, *(v26 + 2) + 1, 1, *(v0 + 408));
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_22F03C784((v27 > 1), v28 + 1, 1, v26);
  }

  v30 = *(v0 + 432);
  v29 = *(v0 + 440);
  v31 = *(v0 + 336);
  v32 = *(v0 + 232);
  sub_22F0CE124(*(v0 + 224), type metadata accessor for LocationItem);
  sub_22F0CE124(v32, type metadata accessor for LocationItem);
  sub_22F0CE124(v31, type metadata accessor for PeopleLocation);
  *(v26 + 2) = v28 + 1;
  v33 = &v26[16 * v28];
  *(v33 + 4) = v30;
  *(v33 + 5) = v29;
  v34 = 1;
LABEL_18:
  *(v0 + 488) = v26;
  *(v0 + 538) = v34;
  *(v0 + 496) = sub_22F0D10AC();
  *(v0 + 504) = sub_22F0D109C();
  v54 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0CD6F4, v54, v53);
}

uint64_t sub_22F0CD6F4()
{
  sub_22F0D00CC();
  if (qword_280CBD620 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_22F0CD78C, 0, 0);
}

uint64_t sub_22F0CD78C()
{
  *(v0 + 512) = sub_22F0D109C();
  v2 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0CD818, v2, v1);
}

uint64_t sub_22F0CD818()
{
  sub_22F0D00CC();
  swift_beginAccess();
  *(v0 + 520) = qword_280CBD628;
  sub_22F0CFFAC();

  return MEMORY[0x2822009F8](sub_22F0CD8AC, 0, 0);
}

uint64_t sub_22F0CD8AC()
{
  *(v0 + 528) = sub_22F0D109C();
  v2 = sub_22F0D106C();

  return MEMORY[0x2822009F8](sub_22F0CD938, v2, v1);
}

uint64_t sub_22F0CD938()
{
  v1 = *(v0 + 488);
  sub_22F0D00CC();
  sub_22F089FAC(v1);
  sub_22F0D00CC();

  return MEMORY[0x2822009F8](sub_22F0CD9B8, 0, 0);
}

uint64_t sub_22F0CD9B8()
{
  v47 = v2;
  v3 = *(v2 + 488);
  v4 = *(v2 + 538);
  v6 = *(v2 + 416);
  v5 = *(v2 + 424);
  *(v2 + 408) = v3;
  *(v2 + 537) = v4;
  v7 = (v6 - 1) & v6;
  if (!v7)
  {
    while (1)
    {
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v9 >= (((1 << *(v2 + 536)) + 63) >> 6))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v2 + 64));

        sub_22F0D00CC();

        v37 = *(v2 + 8);

        __asm { BRAA            X2, X16 }
      }

      v8 = *(v2 + 392);
      v7 = *(v8 + 8 * v9 + 64);
      ++v5;
      if (v7)
      {
        v5 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v2 + 392);
LABEL_7:
  *(v2 + 416) = v7;
  *(v2 + 424) = v5;
  v10 = (*(v8 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v7)))));
  v1 = *v10;
  *(v2 + 432) = *v10;
  v0 = v10[1];
  *(v2 + 440) = v0;
  if (!*(v8 + 16))
  {
LABEL_23:
    *(v2 + 488) = v3;
    *(v2 + 538) = v4;
    *(v2 + 496) = sub_22F0D10AC();
    *(v2 + 504) = sub_22F0D109C();
    v38 = sub_22F0D106C();
    v40 = v39;
    v41 = sub_22F0CD6F4;
    goto LABEL_26;
  }

  sub_22F0CFF1C();
  v11 = sub_22EFFDA80(v1, v0);
  if ((v12 & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v14 = *(v2 + 352);
  v13 = *(v2 + 360);
  v16 = *(v2 + 328);
  v15 = *(v2 + 336);
  sub_22F0CE0BC(*(*(v2 + 392) + 56) + *(*(v2 + 304) + 72) * v11, v16, type metadata accessor for PeopleLocation);
  sub_22F0CE00C(v16, v15, type metadata accessor for PeopleLocation);
  v17 = v1 == v14 && v0 == v13;
  if (!v17 && (sub_22F0D188C() & 1) == 0)
  {
    sub_22F0CE124(*(v2 + 336), type metadata accessor for PeopleLocation);
    goto LABEL_22;
  }

  if (qword_27DAA0648 != -1)
  {
LABEL_30:
    swift_once();
  }

  v18 = *(v2 + 280);
  v19 = *(v2 + 272);
  v44 = *(v2 + 288);
  v45 = *(v2 + 264);
  v20 = *(v2 + 248);
  v21 = *(v2 + 256);
  v22 = *(v2 + 240);
  __swift_project_value_buffer(v22, qword_27DAA21F8);
  sub_22F0D05AC();
  v23 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v20 + 8))(v21, v22);
  sub_22F0D054C();
  v24 = sub_22F0D053C();
  v25 = *(v19 + 8);
  v25(v18, v45);
  v25(v44, v45);
  if (v24)
  {
    sub_22F0CE0BC(*(v2 + 336), *(v2 + 320), type metadata accessor for PeopleLocation);
    sub_22F0CFF1C();
    v26 = sub_22F0D09FC();
    v27 = sub_22F0D124C();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v2 + 320);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136315394;
      sub_22F0CFF1C();
      v32 = sub_22F00A560(v1, v0, &v46);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      sub_22F0CE074(&qword_27DAA1670, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v33 = sub_22F0D183C();
      v35 = v34;
      sub_22F0CE124(v29, type metadata accessor for PeopleLocation);
      v36 = sub_22F00A560(v33, v35, &v46);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_22EFE1000, v26, v27, "%s: expired %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318FE8B0](v31, -1, -1);
      MEMORY[0x2318FE8B0](v30, -1, -1);
    }

    else
    {

      sub_22F0CE124(v29, type metadata accessor for PeopleLocation);
    }
  }

  *(v2 + 448) = sub_22F0D10AC();
  *(v2 + 456) = sub_22F0D109C();
  v38 = sub_22F0D106C();
  v40 = v42;
  v41 = sub_22F0CCCBC;
LABEL_26:

  return MEMORY[0x2822009F8](v41, v38, v40);
}

uint64_t sub_22F0CE00C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F0CE074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F0CE0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F0CE124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F0CE184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F0CE1E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_22F0CE250(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 people];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for PersonType();
    v5 = sub_22F0D0F4C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_22F0CE2C0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for PersonType();
    v3 = sub_22F0D0F2C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setPeople_];
}

id SelectPeopleIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectPeopleIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SelectPeopleIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectPeopleIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SelectPeopleIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_22F0D0C7C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SelectPeopleIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_22F0D0C7C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SelectPeopleIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id SelectPeopleIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22F0D0C7C();

  v8 = sub_22F0D0C7C();

  if (a5)
  {
    v9 = sub_22F0D0AEC();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id SelectPeopleIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22F0D0C7C();

  v8 = sub_22F0D0C7C();

  if (a5)
  {
    v9 = sub_22F0D0AEC();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SelectPeopleIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_22F0CE920@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22F0CF090(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_22F0CE99C()
{
  v1 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SelectPeopleIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SelectPeopleIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SelectPeopleIntentResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SelectPeopleIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectPeopleIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SelectPeopleIntentResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SelectPeopleIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectPeopleIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SelectPeopleIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SelectPeopleIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelectPeopleIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_22F0CEE34(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SelectPeopleIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id SelectPeopleIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_22F0D0AEC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SelectPeopleIntentResponse.init(propertiesByName:)(uint64_t a1, __n128 a2)
{
  *&v2[OBJC_IVAR___SelectPeopleIntentResponse_code] = 0;
  if (a1)
  {
    v3 = sub_22F0D0AEC();
  }

  else
  {
    v3 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for SelectPeopleIntentResponse();
  v4 = objc_msgSendSuper2(&v6, sel_initWithPropertiesByName_, v3);

  if (v4)
  {
  }

  return v4;
}

id sub_22F0CF058(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_22F0CF090(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_22F0CF0C8()
{
  result = qword_27DAA2528;
  if (!qword_27DAA2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA2528);
  }

  return result;
}

void sub_22F0CF18C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 id];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22F0D0CAC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_22F0CF1F4(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_22F0D0C7C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setId_];
}

id PersonType.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_22F0D0C7C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22F0D0C7C();

  if (a6)
  {
    v10 = sub_22F0D0C7C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id PersonType.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_22F0D0C7C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22F0D0C7C();

  if (a6)
  {
    v10 = sub_22F0D0C7C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for PersonType();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id PersonType.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PersonType.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PersonType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_22F0CF61C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PersonTypeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_22F0CF6D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22F0CF7C8();
    sub_22F0CFF1C();
    sub_22F0D16AC();
  }

  else
  {
    sub_22F0CFF1C();
    sub_22F0D189C();
    sub_22F0CF7C8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_22F0CF7C8();
  v2 = sub_22F0D0F2C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___PersonTypeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_22F0CF7C8()
{
  result = qword_27DAA2530;
  if (!qword_27DAA2530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAA2530);
  }

  return result;
}

id sub_22F0CF880(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PersonTypeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id PersonTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_22F0D0AEC();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PersonTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_22F0D0AEC();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PersonTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_22F0CFC70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}