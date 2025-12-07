uint64_t sub_222BE9A08()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BE9A98(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222BE9B14(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BE9BA0@<X0>(char *a2@<X8>)
{
  v3 = sub_222C94FDC();

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

void sub_222BE9C00(uint64_t *a1@<X8>)
{
  v2 = 0x6769725469726973;
  if (*v1)
  {
    v2 = 0x6C506C61756E616DLL;
  }

  v3 = 0xEB00000000726567;
  if (*v1)
  {
    v3 = 0xEA00000000007961;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s28SiriPrivateLearningInference21PlayMediaItemMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 17);
  v3 = *(a2 + 16);
  v4 = *(a2 + 17);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }

LABEL_8:
    if (v2 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 == 2 || ((v4 ^ v2) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s28SiriPrivateLearningInference9MediaItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a1 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v8)
    {
      return 0;
    }

LABEL_7:
    if ((v3 != v7 || v4 != v10) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }

    if (v6)
    {
      if (!v11 || (v5 != v9 || v6 != v11) && (sub_222C951FC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return v15 ^ v14 ^ 1u;
  }

  v12 = sub_222C951FC();
  result = 0;
  if ((v12 & 1) != 0 && v2 == v8)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_222BE9DEC()
{
  result = qword_27D026968;
  if (!qword_27D026968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026968);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_222BEA040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_222BEA088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t getEnumTagSinglePayload for PlayMediaItemMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 18))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayMediaItemMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

uint64_t USOTaskSummaryFeature.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t USOTaskSummaryFeature.init(value:)(uint64_t a1, uint64_t a2)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t USOTaskSummaryFeature.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222BEA398(uint64_t *a1)
{
  type metadata accessor for USOTaskSummaryFeature(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BEA3EC(uint64_t *a1)
{
  type metadata accessor for USOTaskSummaryFeature(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BEA440(uint64_t a1)
{
  v1 = sub_222C93B2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A00, &qword_222C9ED58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  if (sub_222C93C3C())
  {
    v12 = sub_222C93B3C();
    if (*(v12 + 16))
    {
      (*(v6 + 16))(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      (*(v6 + 32))(v11, v8, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_222C97C40;
      sub_222C936CC();
      v14 = sub_222C93B1C();
      v16 = v15;
      (*(v2 + 8))(v4, v1);
      v17 = type metadata accessor for USOTaskSummaryFeature(0);
      swift_allocObject();
      v24[0] = v14;
      v24[1] = v16;
      v18 = sub_222C93EEC();
      *(v13 + 56) = v17;
      *(v13 + 64) = sub_222BEA938(&qword_27D026A08, 255, type metadata accessor for USOTaskSummaryFeature, MEMORY[0x277D5FBA0]);
      *(v13 + 32) = v18;

      (*(v6 + 8))(v11, v5);
      return v13;
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v21 = sub_222C942FC();
    v22 = sub_222C94A4C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_222B39000, v21, v22, "Missing the top level task in the SELF graph", v23, 2u);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for USOTaskSummaryFeature(uint64_t a1)
{
  result = qword_280FDEC48;
  if (!qword_280FDEC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BEA938(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t PhoneCallUSOFeature.RecipientNames.__allocating_init(value:)(uint64_t a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BEA9E4(uint64_t a1)
{
  v1 = sub_222C9377C();
  if (v2)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3;
  }

  if (v5)
  {
    return 0;
  }

  if (!sub_222C9375C())
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C9ED60;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();

  v9 = 0;
  while (1)
  {
    v6 = v9 == 6;
    if (v9 == 6)
    {
LABEL_28:

      return v6;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DC9B30](v9, inited);
      goto LABEL_17;
    }

    if (v9 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_17:
    ++v9;

    swift_getAtKeyPath();

    if (v14)
    {
      v10 = *v13 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = 0;
    }

    if (v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10;
    }

    if (v12)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t PhoneCallUSOFeature.RecipientNames.init(value:)(uint64_t a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PhoneCallUSOFeature.RecipientNames.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222BEACC4(uint64_t *a1)
{
  type metadata accessor for PhoneCallUSOFeature.RecipientNames(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BEAD10(uint64_t *a1)
{
  type metadata accessor for PhoneCallUSOFeature.RecipientNames(0);
  swift_allocObject();
  return sub_222C93EDC();
}

unint64_t sub_222BEAD5C()
{
  v0 = sub_222C9387C();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    v37 = MEMORY[0x277D84F90];
    v3 = (v0 & 0xFFFFFFFFFFFFFF8);
    if (v0 >> 62)
    {
LABEL_52:
      v4 = sub_222C94C6C();
    }

    else
    {
      v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = 0;
      v31 = v4;
      v32 = v2 & 0xC000000000000001;
      v28 = v2;
      v30 = v3;
      while (2)
      {
        v7 = v6;
        v29 = v5;
        while (1)
        {
          if (v32)
          {
            MEMORY[0x223DC9B30](v7, v2);
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v7 >= v3[2])
            {
              goto LABEL_49;
            }

            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }
          }

          sub_222C936DC();
          if (v35)
          {
            sub_222C936BC();
          }

          sub_222C9378C();
          sub_222C9381C();

          if (v36)
          {
            break;
          }

          sub_222C936DC();
          if (v35)
          {
            sub_222C9373C();
            if (v8)
            {
              sub_222C9394C();
              swift_allocObject();
              v9 = sub_222C9393C();
              sub_222C9392C();

              if (sub_222C9372C())
              {
                sub_222C939BC();
                v11 = v10;

                if (v11)
                {
                  sub_222C93ACC();
                  swift_allocObject();
                  sub_222C93ABC();
                  sub_222C93AAC();

                  sub_222C9391C();
                  v2 = v28;
                }
              }

              MEMORY[0x223DC8590](v9);
              sub_222C9381C();

              v5 = v29;
              v3 = v30;
              if (v34)
              {
                goto LABEL_27;
              }
            }

            else
            {

              v3 = v30;
            }
          }

          else
          {
          }

          ++v7;
          if (v6 == v31)
          {
            goto LABEL_30;
          }
        }

LABEL_27:
        MEMORY[0x223DC94A0](v12);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        sub_222C947AC();
        v5 = v37;
        if (v6 != v31)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:

    v37 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      v13 = sub_222C94C6C();
      if (v13)
      {
LABEL_32:
        v2 = 0;
        v14 = v5 & 0xC000000000000001;
        v15 = v5 & 0xFFFFFFFFFFFFFF8;
        v3 = &unk_280FDF000;
        v33 = v13;
        do
        {
          if (v14)
          {
            v16 = MEMORY[0x223DC9B30](v2, v5);
            v17 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v2 >= *(v15 + 16))
            {
              goto LABEL_51;
            }

            v17 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_50;
            }
          }

          if (sub_222BEA9E4(v16))
          {
            if (v3[463] != -1)
            {
              swift_once();
            }

            v18 = sub_222C9431C();
            __swift_project_value_buffer(v18, qword_280FE2340);
            v19 = sub_222C942FC();
            v20 = sub_222C94A4C();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = v15;
              v22 = v14;
              v23 = v3;
              v24 = v5;
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_222B39000, v19, v20, "Dropping Recipient: every name field is nil or empty", v25, 2u);
              v26 = v25;
              v5 = v24;
              v3 = v23;
              v14 = v22;
              v15 = v21;
              v13 = v33;
              MEMORY[0x223DCA8C0](v26, -1, -1);
            }
          }

          else
          {
            sub_222C94DEC();
            sub_222C94E2C();
            sub_222C94E3C();
            sub_222C94DFC();
          }

          ++v2;
        }

        while (v17 != v13);
        v1 = v37;
        goto LABEL_55;
      }
    }

    else
    {
      v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_32;
      }
    }

    v1 = MEMORY[0x277D84F90];
LABEL_55:
  }

  return v1;
}

void *sub_222BEB270(uint64_t a1)
{
  v5 = sub_222C93C3C();
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = v5;
  v8 = MEMORY[0x223DC84A0]();
  v10 = v8;
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_35:

    return v6;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_35;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x223DC9B30](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_39;
    }

    v1 = *(v10 + 32);
  }

  sub_222C937DC();

  sub_222BEB940(v49, &v45);
  if (!v46)
  {
    sub_222BEB9B0(&v45);
    goto LABEL_33;
  }

  sub_222C938FC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

    sub_222BEB9B0(v49);
    return v6;
  }

  v2 = v48;

  sub_222C9379C();

  v3 = v45;
  if (!v45)
  {

    goto LABEL_33;
  }

  v11 = sub_222BEAD5C();
  v9 = v11;
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      v13 = v11;
      goto LABEL_13;
    }

LABEL_42:
    sub_222BEB9B0(v49);

    return v6;
  }

LABEL_39:
  v13 = v9;
  if (!sub_222C94C6C())
  {
    goto LABEL_42;
  }

  v12 = sub_222C94C6C();
  if (!v12)
  {
    v40 = v3;
    v41 = v2;
    v42 = v1;
    v43 = v7;
    v17 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

LABEL_13:
  v40 = v3;
  v41 = v2;
  v42 = v1;
  v43 = v7;
  v44 = v6;
  v14 = &v44;
  sub_222B4C418(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  v16 = 0;
  v17 = v44;
  v18 = v13;
  v19 = v13 & 0xC000000000000001;
  v20 = v13;
  do
  {
    if (v19)
    {
      MEMORY[0x223DC9B30](v16, v18);
    }

    else
    {
    }

    v21 = sub_222C9377C();
    v23 = v22;

    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0;
    }

    if (!v23)
    {
      v23 = 0xE000000000000000;
    }

    v44 = v17;
    v26 = v17[2];
    v25 = v17[3];
    if (v26 >= v25 >> 1)
    {
      sub_222B4C418((v25 > 1), v26 + 1, 1);
      v17 = v44;
    }

    ++v16;
    v17[2] = v26 + 1;
    v27 = &v17[2 * v26];
    v27[4] = v24;
    v27[5] = v23;
    v18 = v20;
  }

  while (v12 != v16);
  v13 = v20;
LABEL_28:
  v12 = type metadata accessor for PhoneCallUSOFeature.RecipientNames(0);
  swift_allocObject();
  v44 = v17;
  v28 = sub_222C93EEC();
  v46 = v12;
  v14 = sub_222BEBA18(&qword_27D026A28, 255, type metadata accessor for PhoneCallUSOFeature.RecipientNames, MEMORY[0x277D5FBA0]);
  v47 = v14;
  *&v45 = v28;
  v6 = sub_222B4A108(0, 1, 1, MEMORY[0x277D84F90]);
  v48 = v6;
  v4 = v6[2];
  v15 = v6[3];
  if (v4 >= v15 >> 1)
  {
LABEL_44:
    v6 = sub_222B4A108((v15 > 1), v4 + 1, 1, v6);
    v48 = v6;
  }

  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v45, v12);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v39 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32, v30);
  sub_222B4F8F0(v4, v32, &v48, v12, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(&v45);
  v34 = type metadata accessor for UsoPersonRecipients(0);
  swift_allocObject();
  *&v45 = v13;
  v35 = sub_222C93EEC();
  v37 = v6[2];
  v36 = v6[3];
  if (v37 >= v36 >> 1)
  {
    v6 = sub_222B4A108((v36 > 1), v37 + 1, 1, v6);
  }

  sub_222BEB9B0(v49);
  v46 = v34;
  v47 = sub_222BEBA18(&qword_27D026A30, 255, type metadata accessor for UsoPersonRecipients, MEMORY[0x277D5FBA0]);
  *&v45 = v35;
  v6[2] = v37 + 1;
  sub_222B405A0(&v45, &v6[5 * v37 + 4]);
  return v6;
}

uint64_t type metadata accessor for PhoneCallUSOFeature.RecipientNames(uint64_t a1)
{
  result = qword_27D026A10;
  if (!qword_27D026A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BEB940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A20, qword_222CA5960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BEB9B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A20, qword_222CA5960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BEBA18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_222BEBA74()
{
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v0 = sub_222C9431C();
  __swift_project_value_buffer(v0, qword_280FE2340);
  oslog = sub_222C942FC();
  v1 = sub_222C94A3C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_222B39000, oslog, v1, "Omitting SELF logging call as UsageLoggingDisabled flag present", v2, 2u);
    MEMORY[0x223DCA8C0](v2, -1, -1);
  }
}

BOOL sub_222BEBBBC(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = sub_222B41B48(*(a1 + *(v2 + 24)));
  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_222BEBC08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A38, &qword_222C9F020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  v1 = type metadata accessor for ReformulationSpecializationClassifier();
  v2 = swift_allocObject();
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = &unk_283607EF0;
  v3 = sub_222BAFDE0(&unk_283607F50);
  swift_arrayDestroy();
  v2[4] = v3;
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for ReformulationSpecializationClassifier;
  *(v0 + 32) = v2;
  return v0;
}

void *sub_222BEBCF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A40, &qword_222C9F098);
  MEMORY[0x28223BE20](v0 - 8);
  isUniquelyReferenced_nonNull_native = &v43 - v1;
  v3 = sub_222C9382C();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v52 = MEMORY[0x277D84F90];
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_23:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_222C94C6C();
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_4:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DC9B30](v9, v4);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      sub_222C936DC();

      if (v51)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x223DC94A0](v10);
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_222C9475C();
    }

    sub_222C947AC();
    v8 = v52;
  }

  while (v7 != v6);
LABEL_24:

  if (v8 >> 62)
  {
LABEL_55:
    v12 = sub_222C94C6C();
    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_56:
    v11 = MEMORY[0x277D84F98];
LABEL_57:

    return v11;
  }

LABEL_26:
  v13 = 0;
  v47 = v8 & 0xFFFFFFFFFFFFFF8;
  v48 = v8 & 0xC000000000000001;
  v11 = MEMORY[0x277D84F98];
  v45 = v8;
  v46 = isUniquelyReferenced_nonNull_native;
  v44 = v12;
  while (1)
  {
    if (v48)
    {
      v15 = MEMORY[0x223DC9B30](v13, v8);
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v13 >= *(v47 + 16))
      {
        goto LABEL_52;
      }

      v15 = *(v8 + 8 * v13 + 32);

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    v17 = sub_222C9383C();
    v49 = v16;
    if (!v17)
    {
      goto LABEL_35;
    }

    sub_222C9395C();

    v18 = sub_222C9397C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(isUniquelyReferenced_nonNull_native, 1, v18) == 1)
    {
      sub_222BEC320(isUniquelyReferenced_nonNull_native);
LABEL_35:
      v20 = 0;
      v21 = 0xE000000000000000;
      goto LABEL_37;
    }

    v20 = sub_222C9396C();
    v23 = v22;
    v24 = v18;
    v21 = v23;
    (*(v19 + 8))(isUniquelyReferenced_nonNull_native, v24);
LABEL_37:
    v50 = v15;
    v25 = sub_222C9385C();
    v8 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v11;
    v27 = v20;
    v28 = v21;
    v30 = sub_222B8C9DC(v20, v21);
    v31 = v11[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_53;
    }

    v34 = v29;
    if (v11[3] < v33)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v29)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_222B93A70();
      if (v34)
      {
LABEL_27:

        v11 = v52;
        v14 = (*(v52 + 56) + 16 * v30);
        *v14 = v25;
        v14[1] = v8;

        goto LABEL_28;
      }
    }

LABEL_44:
    v11 = v52;
    *(v52 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    v37 = (v11[6] + 16 * v30);
    *v37 = v27;
    v37[1] = v28;
    v38 = (v11[7] + 16 * v30);
    *v38 = v25;
    v38[1] = v8;

    v39 = v11[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_54;
    }

    v11[2] = v41;
LABEL_28:
    ++v13;
    v8 = v45;
    isUniquelyReferenced_nonNull_native = v46;
    if (v49 == v44)
    {
      goto LABEL_57;
    }
  }

  sub_222B8FB14(v33, isUniquelyReferenced_nonNull_native);
  v35 = sub_222B8C9DC(v27, v28);
  if ((v34 & 1) == (v36 & 1))
  {
    v30 = v35;
    if (v34)
    {
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  result = sub_222C9526C();
  __break(1u);
  return result;
}

void *sub_222BEC198(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  if (sub_222B41B48(*(a1 + *(v2 + 24))))
  {
    v3 = sub_222BEBCF0();

    return v3;
  }

  else
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v7 = &type metadata for PIMSConstraintMismatch;
    v8 = sub_222B77B4C();
    v5[0] = 0xD000000000000016;
    v5[1] = 0x8000000222CA9C80;
    v6 = 17;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    return 0;
  }
}

uint64_t sub_222BEC320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A40, &qword_222C9F098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *extractContactReference(event:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_222B41660(*(a1 + 16));
  if (!result)
  {
    goto LABEL_6;
  }

  if (!result[2])
  {

LABEL_6:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v4 = result[6];
  v5 = result[7];
  v6 = result[8];
  v7 = result[9];

  if (v5)
  {

    v8 = v7;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v8 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
}

SiriPrivateLearningInference::ContactReference __swiftcall ContactReference.init(contactId:contactLabel:)(Swift::String contactId, Swift::String_optional contactLabel)
{
  v2->value = contactId;
  v2[1] = contactLabel;
  result.contactLabel = contactLabel;
  result.contactId = contactId;
  return result;
}

SiriPrivateLearningInference::ContactReference __swiftcall ContactReference.withNoLabel()()
{
  v2 = v1[1];
  *v0 = *v1;
  v0[1] = v2;
  v0[2] = 0;
  v0[3] = 0;

  result.contactLabel.value._object = v6;
  result.contactLabel.value._countAndFlagsBits = v5;
  result.contactId._object = v4;
  result.contactId._countAndFlagsBits = v3;
  return result;
}

uint64_t ContactReference.contactId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactReference.contactLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t ContactReference.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[2];
    sub_222C94D1C();

    MEMORY[0x223DC9330](v1, v2);
    MEMORY[0x223DC9330](0x3A6C6562614C202CLL, 0xE900000000000020);
    v5 = v4;
    v6 = v3;
  }

  else
  {
    sub_222C94D1C();

    v5 = v1;
    v6 = v2;
  }

  MEMORY[0x223DC9330](v5, v6);
  MEMORY[0x223DC9330](62, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t static ContactReference.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_222C951FC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_222C951FC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_222BEC698()
{
  if (*v0)
  {
    return 0x4C746361746E6F63;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_222BEC6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_222BEC7C8(uint64_t a1)
{
  v2 = sub_222BEC9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BEC804(uint64_t a1)
{
  v2 = sub_222BEC9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactReference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A48, &qword_222C9F0A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEC9D4();
  sub_222C9536C();
  v12 = 0;
  v8 = v10[3];
  sub_222C950EC();
  if (!v8)
  {
    v11 = 1;
    sub_222C950CC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_222BEC9D4()
{
  result = qword_27D026A50;
  if (!qword_27D026A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A50);
  }

  return result;
}

uint64_t ContactReference.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A58, &qword_222C9F0A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEC9D4();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = 0;
  v9 = sub_222C9503C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_222C9501C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_222BECC58(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_222C951FC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_222C951FC() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_222BECD20()
{
  result = qword_27D026A60;
  if (!qword_27D026A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A60);
  }

  return result;
}

unint64_t sub_222BECD78()
{
  result = qword_27D026A68;
  if (!qword_27D026A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A68);
  }

  return result;
}

unint64_t sub_222BECDD0()
{
  result = qword_27D026A70;
  if (!qword_27D026A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A70);
  }

  return result;
}

uint64_t Classification.classificationType.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return sub_222C944EC();
}

uint64_t sub_222BECF60(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_222BED1A0(v3, &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return sub_222C944EC();
}

uint64_t sub_222BECFDC(uint64_t a1)
{

  return sub_222C944EC();
}

uint64_t sub_222BED088(uint64_t a1)
{

  return sub_222C944EC();
}

uint64_t sub_222BED138(uint64_t a1)
{

  return sub_222C944EC();
}

uint64_t sub_222BED1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BED214()
{
  sub_222C94D1C();
  MEMORY[0x223DC9330](0x20797469746E65, 0xE700000000000000);
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v2, v3);

  MEMORY[0x223DC9330](0x203A676E6F7320, 0xE700000000000000);
  v4 = v0[3];
  if (v4)
  {
    v5 = v0[2];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[3];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v5, v6);

  MEMORY[0x223DC9330](0x3A74736974726120, 0xE900000000000020);
  v7 = v0[5];
  if (v7)
  {
    v8 = v0[4];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v0[5];
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v8, v9);

  MEMORY[0x223DC9330](0x614E6D75626C6120, 0xEC000000203A656DLL);
  v10 = v0[7];
  if (v10)
  {
    v11 = v0[6];
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v0[7];
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v11, v12);

  MEMORY[0x223DC9330](0x6E6F697372657620, 0xEA0000000000203ALL);
  v13 = v0[9];
  if (v13)
  {
    v14 = v0[8];
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v0[9];
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  MEMORY[0x223DC9330](v14, v15);

  return 0;
}

uint64_t sub_222BED3E4(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(v3 + 24);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_222B78534(v10, v6);
      v12 = sub_222B41B48(*&v6[v9]);
      v13 = sub_222B73DD0(v6);
      if (v12)
      {
        MEMORY[0x223DC94A0](v13);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        sub_222C947AC();
        v7 = v27;
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  v15 = sub_222B71ED4(v14);

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_222C94C6C();
  }

  else
  {
    v16 = *(v15 + 16);
  }

  if (v16 != 1)
  {
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
    result = sub_222C94C6C();
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);

    v20 = sub_222C942FC();
    v21 = sub_222C94A4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;

      v24 = sub_222B71ED4(v23);

      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = sub_222C94C6C();
      }

      else
      {
        v25 = *(v24 + 16);
      }

      *(v22 + 4) = v25;

      _os_log_impl(&dword_222B39000, v20, v21, "Expected 1 USO media item, found %ld", v22, 0xCu);
      MEMORY[0x223DCA8C0](v22, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x223DC9B30](0, v7);
    goto LABEL_17;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v7 + 32);

LABEL_17:

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t MediaReference.mediaId.getter()
{
  v1 = *v0;

  return v1;
}

void MediaReference.storefront.getter(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_222B4FDCC(v2, v3, v4, v5);
}

double MediaReference.init(mediaId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = xmmword_222C9A0B0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 770;
  return result;
}

__n128 MediaReference.init(mediaId:storefront:sourceApp:entityLocality:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  result = *a3;
  v9 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v9;
  *(a6 + 48) = v6;
  *(a6 + 49) = v7;
  return result;
}

double MediaReference.init(mediaId:entityLocality:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  result = 0.0;
  *(a4 + 16) = xmmword_222C9A0B0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 2;
  *(a4 + 49) = v4;
  return result;
}

uint64_t sub_222BED7F8()
{
  v1 = 0x6449616964656DLL;
  v2 = 0x7041656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6F4C797469746E65;
  }

  if (*v0)
  {
    v1 = 0x6F726665726F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222BED888@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BEFF48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BED8B0(uint64_t a1)
{
  v2 = sub_222BEF858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BED8EC(uint64_t a1)
{
  v2 = sub_222BEF858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaReference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A78, &qword_222C9F320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  v16 = *(v1 + 24);
  v17 = v7;
  v8 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = v8;
  v23 = *(v1 + 48);
  HIDWORD(v13) = *(v1 + 49);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEF858();
  sub_222C9536C();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_222C950EC();
  if (!v9)
  {
    v10 = v23;
    v11 = BYTE4(v13);
    v19 = v17;
    v20 = v16;
    v21 = v15;
    v22 = v14;
    v24 = 1;
    sub_222B4FDCC(v17, v16, v15, v14);
    sub_222BEF8AC();
    sub_222C950DC();
    sub_222B4FE78(v19, v20, v21, v22);
    LOBYTE(v19) = v10;
    v24 = 2;
    sub_222BEF900();
    sub_222C950DC();
    LOBYTE(v19) = v11;
    v24 = 3;
    sub_222B7FB40();
    sub_222C950DC();
  }

  return (*(v4 + 8))(v6, v3);
}

void MediaReference.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026A98, &qword_222C9F328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEF858();
  sub_222C9535C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    LOBYTE(v27) = 0;
    v9 = sub_222C9503C();
    v22 = v10;
    LOBYTE(v23) = 1;
    sub_222BEF954();
    sub_222C9502C();
    v20 = v29;
    v21 = v28;
    v18 = v27;
    v19 = v30;
    LOBYTE(v23) = 2;
    sub_222BEF9A8();
    sub_222C9502C();
    v35 = v27;
    v36 = 3;
    sub_222B7FBE8();
    sub_222C9502C();
    (*(v6 + 8))(v8, v5);
    HIDWORD(v17) = v37;
    v12 = v21;
    v11 = v22;
    *&v23 = v9;
    *(&v23 + 1) = v22;
    v13 = v18;
    v14 = v19;
    *&v24 = v18;
    *(&v24 + 1) = v21;
    v15 = v20;
    *&v25 = v20;
    *(&v25 + 1) = v19;
    LOBYTE(v26) = v35;
    HIBYTE(v26) = v37;
    v16 = v24;
    *a2 = v23;
    *(a2 + 16) = v16;
    *(a2 + 32) = v25;
    *(a2 + 48) = v26;
    sub_222B554C0(&v23, &v27);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v27 = v9;
    v28 = v11;
    v29 = v13;
    v30 = v12;
    v31 = v15;
    v32 = v14;
    v33 = v35;
    v34 = BYTE4(v17);
    sub_222B55A80(&v27);
  }
}

uint64_t Storefront.countryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Storefront.storefrontId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_222BEDF30()
{
  if (*v0)
  {
    return 0x6F726665726F7473;
  }

  else
  {
    return 0x437972746E756F63;
  }
}

uint64_t sub_222BEDF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEC0000006449746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_222BEE060(uint64_t a1)
{
  v2 = sub_222BEF9FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BEE09C(uint64_t a1)
{
  v2 = sub_222BEF9FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Storefront.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026AB0, &qword_222C9F330);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEF9FC();
  sub_222C9536C();
  v12 = 0;
  v8 = v10[3];
  sub_222C950CC();
  if (!v8)
  {
    v11 = 1;
    sub_222C950CC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Storefront.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026AC0, &unk_222C9F338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BEF9FC();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = 0;
  v9 = sub_222C9501C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_222C9501C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void extractMediaReference(event:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_222B4183C(v3, v14);
  v4 = *(&v14[0] + 1);
  if (*(&v14[0] + 1))
  {
    v5 = *&v14[0];

    sub_222B4FCD4(v14, &qword_27D025370, &qword_222C98310);
    sub_222B419B8(v3, v12);
    if ((v13 & 0xFF00) == 0x300)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v6 = sub_222C9431C();
      __swift_project_value_buffer(v6, qword_280FE2340);
      v7 = sub_222C942FC();
      v8 = sub_222C94A4C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_222B39000, v7, v8, "Missing event feature - PrimaryMediaItemMetadata - detected while extracting the media reference", v9, 2u);
        MEMORY[0x223DCA8C0](v9, -1, -1);
      }

      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = xmmword_222C9A0B0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      v10 = 770;
    }

    else
    {
      v11 = HIBYTE(v13) != 2 && (v13 & 0x100) != 0;
      v10 = (v11 << 8) | 2;
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = xmmword_222C9A0B0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }

    *(a2 + 48) = v10;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }
}

Swift::String_optional __swiftcall UsoEntity_common_MediaItem.convertUSOMediaItemToString()()
{
  v0 = sub_222C944DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_222C931FC();
  MEMORY[0x28223BE20](v1 - 8);
  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  sub_222C9386C();
  sub_222BEFA84(&qword_27D025150, MEMORY[0x277D5E450]);
  v2 = sub_222C9321C();
  v4 = v3;
  sub_222C944CC();
  v5 = sub_222C944BC();
  v7 = v6;
  sub_222B803C0(v2, v4);

  v8 = v7;
  v9 = v5;
  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t UsoEntity_common_MediaItem.hash(into:)(uint64_t a1)
{
  sub_222C0A220(v1, v4);
  if (*(&v4[0] + 1) == 1)
  {
    return sub_222C9531C();
  }

  v4[7] = v4[2];
  v4[8] = v4[3];
  v4[9] = v4[4];
  v4[5] = v4[0];
  v4[6] = v4[1];
  sub_222C9531C();
  sub_222BEEE64(a1);
  return sub_222B4FCD4(v4, &qword_27D0256C8, &unk_222C98AB0);
}

uint64_t UsoEntity_common_MediaItem.hashValue.getter()
{
  sub_222C952FC();
  sub_222C0A220(v0, v3);
  if (*(&v3[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v3[7] = v3[2];
    v3[8] = v3[3];
    v3[9] = v3[4];
    v3[5] = v3[0];
    v3[6] = v3[1];
    sub_222C9531C();
    sub_222BEEE64(v2);
    sub_222B4FCD4(v3, &qword_27D0256C8, &unk_222C98AB0);
  }

  return sub_222C9534C();
}

uint64_t sub_222BEEA80()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C0A220(v1, v4);
  if (*(&v4[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v4[7] = v4[2];
    v4[8] = v4[3];
    v4[9] = v4[4];
    v4[5] = v4[0];
    v4[6] = v4[1];
    sub_222C9531C();
    sub_222BEEE64(v3);
    sub_222B4FCD4(v4, &qword_27D0256C8, &unk_222C98AB0);
  }

  return sub_222C9534C();
}

uint64_t sub_222BEEB38(uint64_t a1)
{
  sub_222C0A220(*v1, v4);
  if (*(&v4[0] + 1) == 1)
  {
    return sub_222C9531C();
  }

  v4[7] = v4[2];
  v4[8] = v4[3];
  v4[9] = v4[4];
  v4[5] = v4[0];
  v4[6] = v4[1];
  sub_222C9531C();
  sub_222BEEE64(a1);
  return sub_222B4FCD4(v4, &qword_27D0256C8, &unk_222C98AB0);
}

uint64_t sub_222BEEBD0(uint64_t a1)
{
  sub_222C952FC();
  sub_222C0A220(*v1, v4);
  if (*(&v4[0] + 1) == 1)
  {
    sub_222C9531C();
  }

  else
  {
    v4[7] = v4[2];
    v4[8] = v4[3];
    v4[9] = v4[4];
    v4[5] = v4[0];
    v4[6] = v4[1];
    sub_222C9531C();
    sub_222BEEE64(v3);
    sub_222B4FCD4(v4, &qword_27D0256C8, &unk_222C98AB0);
  }

  return sub_222C9534C();
}

uint64_t sub_222BEEC84(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B18, &unk_222C9F8E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BF0660();
  sub_222C9536C();
  v8[15] = 0;
  sub_222C950CC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_222C950CC();
  v8[13] = 2;
  sub_222C950CC();
  v8[12] = 3;
  sub_222C950CC();
  v8[11] = 4;
  sub_222C950CC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_222BEEE64(uint64_t a1)
{
  if (v1[1])
  {
    sub_222C9531C();
    sub_222C9452C();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_222C9531C();
    if (v1[3])
    {
LABEL_3:
      sub_222C9531C();
      sub_222C9452C();
      if (v1[5])
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_222C9531C();
  if (v1[5])
  {
LABEL_4:
    sub_222C9531C();
    sub_222C9452C();
    if (v1[7])
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_222C9531C();
    if (v1[9])
    {
      goto LABEL_6;
    }

    return sub_222C9531C();
  }

LABEL_11:
  sub_222C9531C();
  if (!v1[7])
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_222C9531C();
  sub_222C9452C();
  if (!v1[9])
  {
    return sub_222C9531C();
  }

LABEL_6:
  sub_222C9531C();

  return sub_222C9452C();
}

uint64_t sub_222BEEFA8()
{
  v1 = *v0;
  v2 = 0x797469746E65;
  v3 = 0x614E747369747261;
  v4 = 0x6D614E6D75626C61;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C746954676E6F73;
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

uint64_t sub_222BEF04C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BF00C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BEF074(uint64_t a1)
{
  v2 = sub_222BF0660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BEF0B0(uint64_t a1)
{
  v2 = sub_222BF0660();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_222BEF0EC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_222BF0288(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_222BEF150(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_222BEF230(v8, v9) & 1;
}

uint64_t sub_222BEF1B0()
{
  sub_222C952FC();
  sub_222BEEE64(v1);
  return sub_222C9534C();
}

uint64_t sub_222BEF1F4(uint64_t a1)
{
  sub_222C952FC();
  sub_222BEEE64(v2);
  return sub_222C9534C();
}

uint64_t sub_222BEF230(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_222C951FC();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_222C951FC();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_222C951FC();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_222C951FC();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (v28 && (a1[8] == a2[8] && v27 == v28 || (sub_222C951FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v28)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_222C0A220(a1, &v19);
  sub_222C0A220(a2, &v24);
  v3 = v19;
  if (*(&v19 + 1) == 1)
  {
    if (*(&v24 + 1) == 1)
    {
      v4 = 1;
      *&v9 = v19;
      *(&v9 + 1) = 1;
      v10 = v20;
      v11 = v21;
      v12 = v22;
      v13 = v23;
      v5 = &v9;
LABEL_7:
      sub_222B4FCD4(v5, &qword_27D0256C8, &unk_222C98AB0);
      return v4 & 1;
    }
  }

  else if (*(&v24 + 1) != 1)
  {
    v7[0] = v24;
    v7[1] = v25;
    v7[2] = v26;
    v7[3] = v27;
    v7[4] = v28;
    v12 = v27;
    v13 = v28;
    v10 = v25;
    v11 = v26;
    v9 = v24;
    v29[3] = v22;
    v29[4] = v23;
    v29[1] = v20;
    v29[2] = v21;
    v29[0] = v19;
    v4 = sub_222BEF230(v29, &v9);
    sub_222B4FCD4(v7, &qword_27D0256C8, &unk_222C98AB0);
    v8[0] = v3;
    v8[1] = v20;
    v8[2] = v21;
    v8[3] = v22;
    v8[4] = v23;
    v5 = v8;
    goto LABEL_7;
  }

  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  sub_222B4FCD4(&v9, &qword_27D0256D0, &unk_222C9A490);
  v4 = 0;
  return v4 & 1;
}

BOOL _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v4 == 1)
  {
    sub_222B4FDCC(v2, 1, v3, v5);
    if (v8 == 1)
    {
      sub_222B4FDCC(v7, 1, v10, v9);
      sub_222B4FE78(v2, 1, v3, v5);
      goto LABEL_14;
    }

    sub_222B4FDCC(v7, v8, v10, v9);
    goto LABEL_10;
  }

  v20[0] = v2;
  v20[1] = v4;
  v20[2] = v3;
  v20[3] = v5;
  if (v8 == 1)
  {
    sub_222B4FDCC(v2, v4, v3, v5);
    sub_222B4FDCC(v7, 1, v10, v9);
    sub_222B4FDCC(v2, v4, v3, v5);

LABEL_10:
    sub_222B4FE78(v2, v4, v3, v5);
    sub_222B4FE78(v7, v8, v10, v9);
    return 0;
  }

  v19[0] = v7;
  v19[1] = v8;
  v19[2] = v10;
  v19[3] = v9;
  v18 = _s28SiriPrivateLearningInference19SlotsClassificationV17TurnSlotValuePairV2eeoiySbAE_AEtFZ_0(v20, v19);
  sub_222B4FDCC(v2, v4, v3, v5);
  sub_222B4FDCC(v7, v8, v10, v9);
  sub_222B4FDCC(v2, v4, v3, v5);

  sub_222B4FE78(v2, v4, v3, v5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  result = v11 == 2 && v6 == 2;
  if (v6 != 2 && v11 != 2)
  {
    if (v6)
    {
      v13 = 0x656E696665646E75;
    }

    else
    {
      v13 = 0x6C7070612E6D6F63;
    }

    if (v6)
    {
      v14 = 0xE900000000000064;
    }

    else
    {
      v14 = 0xEF636973754D2E65;
    }

    if (v11)
    {
      v15 = 0x656E696665646E75;
    }

    else
    {
      v15 = 0x6C7070612E6D6F63;
    }

    if (v11)
    {
      v16 = 0xE900000000000064;
    }

    else
    {
      v16 = 0xEF636973754D2E65;
    }

    if (v13 == v15 && v14 == v16)
    {

      return 1;
    }

    else
    {
      v17 = sub_222C951FC();

      return v17 & 1;
    }
  }

  return result;
}

unint64_t sub_222BEF858()
{
  result = qword_27D026A80;
  if (!qword_27D026A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A80);
  }

  return result;
}

unint64_t sub_222BEF8AC()
{
  result = qword_27D026A88;
  if (!qword_27D026A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A88);
  }

  return result;
}

unint64_t sub_222BEF900()
{
  result = qword_27D026A90;
  if (!qword_27D026A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026A90);
  }

  return result;
}

unint64_t sub_222BEF954()
{
  result = qword_27D026AA0;
  if (!qword_27D026AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AA0);
  }

  return result;
}

unint64_t sub_222BEF9A8()
{
  result = qword_27D026AA8;
  if (!qword_27D026AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AA8);
  }

  return result;
}

unint64_t sub_222BEF9FC()
{
  result = qword_27D026AB8;
  if (!qword_27D026AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AB8);
  }

  return result;
}

uint64_t sub_222BEFA84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_222C9386C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningInference10StorefrontVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_222BEFB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_222BEFB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_222BEFC0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_222BEFC68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_222BEFCE4()
{
  result = qword_27D026AD0;
  if (!qword_27D026AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AD0);
  }

  return result;
}

unint64_t sub_222BEFD3C()
{
  result = qword_27D026AD8;
  if (!qword_27D026AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AD8);
  }

  return result;
}

unint64_t sub_222BEFD94()
{
  result = qword_27D026AE0;
  if (!qword_27D026AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AE0);
  }

  return result;
}

unint64_t sub_222BEFDEC()
{
  result = qword_27D026AE8;
  if (!qword_27D026AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AE8);
  }

  return result;
}

unint64_t sub_222BEFE44()
{
  result = qword_27D026AF0;
  if (!qword_27D026AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AF0);
  }

  return result;
}

unint64_t sub_222BEFE9C()
{
  result = qword_27D026AF8;
  if (!qword_27D026AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026AF8);
  }

  return result;
}

unint64_t sub_222BEFEF4()
{
  result = qword_27D026B00;
  if (!qword_27D026B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B00);
  }

  return result;
}

uint64_t sub_222BEFF48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449616964656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEA0000000000746ELL || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7041656372756F73 && a2 == 0xE900000000000070 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4C797469746E65 && a2 == 0xEE007974696C6163)
  {

    return 3;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_222BF00C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C746954676E6F73 && a2 == 0xE900000000000065 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BF0288@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B08, &qword_222C9F8E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BF0660();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_222C9501C();
  v30 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = sub_222C9501C();
  v29 = v12;
  v26 = v11;
  LOBYTE(v36[0]) = 2;
  v25 = sub_222C9501C();
  v28 = v13;
  LOBYTE(v36[0]) = 3;
  v24 = sub_222C9501C();
  v27 = v14;
  v37 = 4;
  v15 = sub_222C9501C();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v18 = v29;
  *&v32 = v26;
  *(&v32 + 1) = v29;
  v19 = v28;
  *&v33 = v25;
  *(&v33 + 1) = v28;
  v20 = v27;
  *&v34 = v24;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  sub_222BF06B4(&v31, v36);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v36[0] = v9;
  v36[1] = v30;
  v36[2] = v26;
  v36[3] = v18;
  v36[4] = v25;
  v36[5] = v19;
  v36[6] = v24;
  v36[7] = v20;
  v36[8] = v15;
  v36[9] = v17;
  result = sub_222BF06EC(v36);
  v22 = v34;
  a2[2] = v33;
  a2[3] = v22;
  a2[4] = v35;
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  return result;
}

unint64_t sub_222BF0660()
{
  result = qword_27D026B10;
  if (!qword_27D026B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B10);
  }

  return result;
}

unint64_t sub_222BF0730()
{
  result = qword_27D026B20;
  if (!qword_27D026B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B20);
  }

  return result;
}

unint64_t sub_222BF0788()
{
  result = qword_27D026B28;
  if (!qword_27D026B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B28);
  }

  return result;
}

unint64_t sub_222BF07E0()
{
  result = qword_27D026B30;
  if (!qword_27D026B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026B30);
  }

  return result;
}

uint64_t INStartCallIntentFeatureExtractor.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_222BF0994();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222C97C40;
  *(v1 + 32) = sub_222B505A8(0, &qword_280FDB770, 0x277CD41A8);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t INStartCallIntentFeatureExtractor.init()()
{
  sub_222BF0994();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_222C97C40;
  *(v1 + 32) = sub_222B505A8(0, &qword_280FDB770, 0x277CD41A8);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t INStartCallIntentFeatureExtractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222BF0994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026B38, &qword_222C9FAE8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D026B40;
    v3 = &unk_222C9FAF0;
  }

  else
  {
    v2 = &unk_27D025FB0;
    v3 = &unk_222C96EB0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_222BF0A0C(void *a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 donationMetadata];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_222C9FA00;
      v66 = v2;
      [v10 callDuration];
      v13 = v12 > 0.0;
      v14 = type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
      swift_allocObject();
      LOBYTE(v67) = v13;
      v15 = sub_222C93EEC();
      *(v11 + 56) = v14;
      v16 = MEMORY[0x277D5FBA0];
      *(v11 + 64) = sub_222BF1870(&qword_27D026B58, 255, type metadata accessor for PhoneCallEventFeature.CallAnswered, MEMORY[0x277D5FBA0]);
      *(v11 + 32) = v15;
      [v10 callDuration];
      v18 = v17;
      v19 = type metadata accessor for PhoneCallEventFeature.CallDuration(0);
      swift_allocObject();
      v67 = v18;
      v20 = sub_222C93EEC();
      *(v11 + 96) = v19;
      *(v11 + 104) = sub_222BF1870(&qword_27D026B60, 255, type metadata accessor for PhoneCallEventFeature.CallDuration, v16);
      *(v11 + 72) = v20;
      [v10 timeToEstablish];
      v22 = v21;
      v23 = type metadata accessor for PhoneCallEventFeature.CallConnectionDuration(0);
      swift_allocObject();
      v67 = v22;
      v24 = sub_222C93EEC();
      *(v11 + 136) = v23;
      *(v11 + 144) = sub_222BF1870(&qword_27D026B78, 255, type metadata accessor for PhoneCallEventFeature.CallConnectionDuration, v16);
      *(v11 + 112) = v24;
      sub_222C932AC();
      v26 = v25;
      v27 = type metadata accessor for PhoneCallEventFeature.CallTotalDuration(0);
      swift_allocObject();
      v67 = v26;
      v28 = sub_222C93EEC();
      *(v11 + 176) = v27;
      *(v11 + 184) = sub_222BF1870(&qword_27D026B80, 255, type metadata accessor for PhoneCallEventFeature.CallTotalDuration, v16);
      *(v11 + 152) = v28;
      sub_222C9329C();
      sub_222C935BC();
      v30 = v29;
      v31 = *(v3 + 8);
      v32 = v66;
      v31(v6, v66);
      [v10 timeToEstablish];
      v34 = v30 + v33;
      v35 = type metadata accessor for PhoneCallEventFeature.CallStartTimestamp(0);
      swift_allocObject();
      v67 = v34;
      v36 = sub_222C93EEC();
      *(v11 + 216) = v35;
      *(v11 + 224) = sub_222BF1870(&qword_27D026B68, 255, type metadata accessor for PhoneCallEventFeature.CallStartTimestamp, v16);
      *(v11 + 192) = v36;
      sub_222C9327C();
      sub_222C935BC();
      v38 = v37;
      v31(v6, v32);
      v39 = type metadata accessor for PhoneCallEventFeature.CallEndTimestamp(0);
      swift_allocObject();
      v67 = v38;
      v40 = sub_222C93EEC();
      *(v11 + 256) = v39;
      *(v11 + 264) = sub_222BF1870(&qword_27D026B70, 255, type metadata accessor for PhoneCallEventFeature.CallEndTimestamp, v16);
      *(v11 + 232) = v40;

      return v11;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v42 = sub_222C9431C();
  __swift_project_value_buffer(v42, qword_280FE2340);
  v43 = sub_222C942FC();
  v44 = sub_222C94A4C();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_222B39000, v43, v44, "#extractCallDurationData: Metadata missing from start call intent. Using legacy duration calculations.", v45, 2u);
    MEMORY[0x223DCA8C0](v45, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_222C98AE0;
  sub_222C932AC();
  v48 = v47 > 0.0;
  v49 = type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
  swift_allocObject();
  LOBYTE(v67) = v48;
  v50 = sub_222C93EEC();
  *(v46 + 56) = v49;
  v51 = MEMORY[0x277D5FBA0];
  *(v46 + 64) = sub_222BF1870(&qword_27D026B58, 255, type metadata accessor for PhoneCallEventFeature.CallAnswered, MEMORY[0x277D5FBA0]);
  *(v46 + 32) = v50;
  sub_222C932AC();
  v53 = v52;
  v54 = type metadata accessor for PhoneCallEventFeature.CallDuration(0);
  swift_allocObject();
  v67 = v53;
  v55 = sub_222C93EEC();
  *(v46 + 96) = v54;
  *(v46 + 104) = sub_222BF1870(&qword_27D026B60, 255, type metadata accessor for PhoneCallEventFeature.CallDuration, v51);
  *(v46 + 72) = v55;
  sub_222C9329C();
  sub_222C935BC();
  v57 = v56;
  v58 = *(v3 + 8);
  v58(v6, v2);
  v59 = type metadata accessor for PhoneCallEventFeature.CallStartTimestamp(0);
  swift_allocObject();
  v67 = v57;
  v60 = sub_222C93EEC();
  *(v46 + 136) = v59;
  *(v46 + 144) = sub_222BF1870(&qword_27D026B68, 255, type metadata accessor for PhoneCallEventFeature.CallStartTimestamp, v51);
  *(v46 + 112) = v60;
  sub_222C9327C();
  sub_222C935BC();
  v62 = v61;
  v58(v6, v2);
  v63 = type metadata accessor for PhoneCallEventFeature.CallEndTimestamp(0);
  swift_allocObject();
  v67 = v62;
  v64 = sub_222C93EEC();
  *(v46 + 176) = v63;
  v65 = sub_222BF1870(&qword_27D026B70, 255, type metadata accessor for PhoneCallEventFeature.CallEndTimestamp, v51);
  result = v46;
  *(v46 + 184) = v65;
  *(v46 + 152) = v64;
  return result;
}

unint64_t sub_222BF1164()
{
  v1 = sub_222C932BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222C93CAC();
  v6 = [v5 intent];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 contacts];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  sub_222B505A8(0, &qword_27D025E80, 0x277CD3E90);
  v11 = sub_222C9471C();

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_29:

    goto LABEL_17;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_29;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x223DC9B30](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v5 dateInterval];
  if (!v14)
  {

LABEL_16:
LABEL_17:

    return MEMORY[0x277D84F90];
  }

  v46 = v13;
  v15 = v14;
  sub_222C9326C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C9CD00;
  v16 = type metadata accessor for CommonFeature.EventType(0);
  swift_allocObject();
  *&v47 = 0xD000000000000011;
  *(&v47 + 1) = 0x8000000222CA8780;
  v11 = sub_222C93EEC();
  *(v0 + 56) = v16;
  *(v0 + 64) = sub_222BF1870(&qword_27D026370, 255, type metadata accessor for CommonFeature.EventType, MEMORY[0x277D5FBA0]);
  *(v0 + 32) = v11;
  v17 = [v8 audioRoute];
  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = v17;
  if (v17 > 0x7FFFFFFF)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = type metadata accessor for PhoneCallEventFeature.AudioCallRoute(0);
  swift_allocObject();
  LODWORD(v47) = v11;
  v11 = sub_222C93EEC();
  *(v0 + 96) = v18;
  *(v0 + 104) = sub_222BF1870(&qword_27D026B48, 255, type metadata accessor for PhoneCallEventFeature.AudioCallRoute, MEMORY[0x277D5FBA0]);
  *(v0 + 72) = v11;
  v19 = [v8 callCapability];
  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v11 = v19;
  if (v19 > 0x7FFFFFFF)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    v11 = sub_222B4A108(0, *(v11 + 16) + 1, 1, v11);
    goto LABEL_25;
  }

  v20 = type metadata accessor for PhoneCallEventFeature.CallCapability(0);
  swift_allocObject();
  LODWORD(v47) = v11;
  v21 = sub_222C93EEC();
  *(v0 + 136) = v20;
  *(v0 + 144) = sub_222BF1870(&qword_27D026B50, 255, type metadata accessor for PhoneCallEventFeature.CallCapability, MEMORY[0x277D5FBA0]);
  *(v0 + 112) = v21;
  v50 = v0;
  v22 = sub_222BF0A0C(v8);
  sub_222B49058(v22);
  v23 = v46;
  v24 = [v46 displayName];
  v45 = sub_222C9449C();
  v26 = v25;

  v27 = [v23 contactIdentifier];
  if (v27)
  {
    v28 = v27;
    v29 = sub_222C9449C();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v33 = [v23 personHandle];
  v44 = v2;
  if (v33 && (v34 = v33, v35 = [v33 label], v34, v35))
  {
    v36 = sub_222C9449C();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F38, &qword_222C96CE8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_222C97C40;
  *(v39 + 32) = v45;
  *(v39 + 40) = v26;
  *(v39 + 48) = v29;
  *(v39 + 56) = v31;
  *(v39 + 64) = v36;
  *(v39 + 72) = v38;
  v8 = type metadata accessor for CommonContactFeature.RecipientContactReferences(0);
  swift_allocObject();
  *&v47 = v39;
  v0 = sub_222C93EEC();
  v11 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  v40 = v44;
  v42 = *(v11 + 16);
  v41 = *(v11 + 24);
  if (v42 >= v41 >> 1)
  {
    v11 = sub_222B4A108((v41 > 1), v42 + 1, 1, v11);
  }

  (*(v40 + 8))(v4, v1);
  v48 = v8;
  v49 = sub_222BF1870(&qword_27D025E88, 255, type metadata accessor for CommonContactFeature.RecipientContactReferences, MEMORY[0x277D5FBA0]);
  *&v47 = v0;
  *(v11 + 16) = v42 + 1;
  sub_222B405A0(&v47, v11 + 40 * v42 + 32);
  return v11;
}

uint64_t sub_222BF1870(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_222BF1924(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ThinMediaGroundTruth(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v6 = sub_222C931FC();
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for ThinMediaGroundTruthCoreDataRecord();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v8 = sub_222C9361C();
  [v7 setId_];

  v9 = sub_222C9448C();
  [v7 setGroundTruthType_];

  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  LOBYTE(v15) = *(v2 + *(v5 + 32));
  sub_222B7FAEC();
  v10 = sub_222C9321C();
  v12 = v11;
  v13 = sub_222C934FC();
  [v7 setGroundTruthSource_];

  sub_222B803C0(v10, v12);

  return v7;
}

uint64_t sub_222BF1CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - v9;
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v61 - v13;
  v15 = [v1 id];
  if (v15)
  {
    v16 = v15;
    sub_222C9363C();

    v17 = [v1 groundTruthType];
    if (v17)
    {
      v18 = v17;
      v19 = sub_222C9449C();
      v21 = v20;

      v22 = [v1 groundTruthSource];
      if (v22)
      {
        v63 = v19;
        v23 = v22;
        v24 = sub_222C9350C();
        v26 = v25;

        sub_222C931DC();
        swift_allocObject();
        sub_222C931CC();
        sub_222B7FB94();
        sub_222C931BC();
        sub_222B803C0(v24, v26);

        LOBYTE(v23) = v64;
        (*(v4 + 32))(a1, v14, v3);
        v56 = type metadata accessor for ThinMediaGroundTruth(0);
        v57 = (a1 + v56[5]);
        *v57 = v63;
        v57[1] = v21;
        *(a1 + v56[6]) = v23;
        *(a1 + v56[7]) = 0;
        return (*(*(v56 - 1) + 56))(a1, 0, 1, v56);
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v44 = sub_222C9431C();
      __swift_project_value_buffer(v44, qword_280FE2340);
      (*(v4 + 16))(v10, v14, v3);
      v45 = v4;
      v46 = sub_222C942FC();
      v47 = sub_222C94A4C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = a1;
        v64 = v62;
        *v48 = 136315138;
        sub_222BF5484(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v49 = sub_222C9517C();
        v51 = v50;
        v52 = *(v45 + 8);
        v52(v10, v3);
        v53 = sub_222B437C0(v49, v51, &v64);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_222B39000, v46, v47, "PIMSStoreCoreData: Failed to retrieve source data when reading ThinMediaGroundTruth with ID: %s.", v48, 0xCu);
        v54 = v62;
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        a1 = v63;
        MEMORY[0x223DCA8C0](v54, -1, -1);
        MEMORY[0x223DCA8C0](v48, -1, -1);

        v52(v14, v3);
      }

      else
      {

        v59 = *(v45 + 8);
        v59(v10, v3);
        v59(v14, v3);
      }
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v33 = sub_222C9431C();
      __swift_project_value_buffer(v33, qword_280FE2340);
      (*(v4 + 16))(v7, v14, v3);
      v34 = sub_222C942FC();
      v35 = sub_222C94A4C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = v4;
        v37 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = a1;
        v64 = v62;
        *v37 = 136315138;
        sub_222BF5484(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v38 = sub_222C9517C();
        v40 = v39;
        v41 = *(v36 + 8);
        v41(v7, v3);
        v42 = sub_222B437C0(v38, v40, &v64);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_222B39000, v34, v35, "PIMSStoreCoreData: Failed to retrieve type when reading ThinMediaGroundTruth with ID: %s.", v37, 0xCu);
        v43 = v62;
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        a1 = v63;
        MEMORY[0x223DCA8C0](v43, -1, -1);
        MEMORY[0x223DCA8C0](v37, -1, -1);

        v41(v14, v3);
      }

      else
      {

        v55 = *(v4 + 8);
        v55(v7, v3);
        v55(v14, v3);
      }
    }

    v60 = type metadata accessor for ThinMediaGroundTruth(0);
    return (*(*(v60 - 8) + 56))(a1, 1, 1, v60);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v27 = sub_222C9431C();
    __swift_project_value_buffer(v27, qword_280FE2340);
    v28 = sub_222C942FC();
    v29 = sub_222C94A4C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_222B39000, v28, v29, "PIMSStoreCoreData: Failed to retrieve ID when reading ThinMediaGroundTruth.", v30, 2u);
      MEMORY[0x223DCA8C0](v30, -1, -1);
    }

    v31 = type metadata accessor for ThinMediaGroundTruth(0);
    v32 = *(*(v31 - 8) + 56);

    return v32(a1, 1, 1, v31);
  }
}

id sub_222BF2684(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  type metadata accessor for PlusMediaReferenceCoreDataRecord();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v9 = sub_222C9448C();
  [v8 setMediaId_];

  v10 = 0;
  if (v7 != 2)
  {
    LOBYTE(v13) = v7 & 1;
    v10 = sub_222BF27C8(a1);
  }

  [v8 setSourceApp_];

  if (v3 == 1)
  {
    v11 = 0;
  }

  else
  {
    v14 = v4;
    v15 = v3;
    v16 = v6;
    v17 = v5;

    v11 = sub_222BF2C28(a1);
  }

  [v8 setStorefront_];

  return v8;
}

id sub_222BF27C8(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_222C9448C();
  v6 = [v4 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C96900;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_222B9A614();
  *(v7 + 64) = v9;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  if (v3)
  {
    v10 = 0x656E696665646E75;
  }

  else
  {
    v10 = 0x6C7070612E6D6F63;
  }

  if (v3)
  {
    v11 = 0xE900000000000064;
  }

  else
  {
    v11 = 0xEF636973754D2E65;
  }

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = sub_222C949EC();
  [v6 setPredicate_];

  v35[0] = 0;
  v13 = [v6 execute_];
  v14 = v35[0];
  if (!v13)
  {
    v20 = v35[0];
    v15 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v15 = v13;
  type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
  v16 = sub_222C9471C();
  v17 = v14;

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_19:

LABEL_20:
    type metadata accessor for PlusMediaReferenceSourceAppCoreDataRecord();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v32 = sub_222C9448C();

    [v19 setName_];

    return v19;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x223DC9B30](0, v16);
    goto LABEL_13;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_24:
    swift_once();
LABEL_15:
    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);
    v22 = v15;
    v23 = sub_222C942FC();
    v24 = sub_222C94A4C();

    if (os_log_type_enabled(v23, v24))
    {
      v34 = a1;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315138;
      v27 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v28 = sub_222C944EC();
      v30 = sub_222B437C0(v28, v29, v35);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_222B39000, v23, v24, "Error searching for existing suggestion tag error=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223DCA8C0](v26, -1, -1);
      v31 = v25;
      a1 = v34;
      MEMORY[0x223DCA8C0](v31, -1, -1);
    }

    else
    {
    }

    goto LABEL_20;
  }

  v18 = *(v16 + 32);
LABEL_13:
  v19 = v18;

  return v19;
}

id sub_222BF2C28(void *a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_222C9448C();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C98AE0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_222B9A614();
  *(v10 + 32) = 0x437972746E756F63;
  *(v10 + 40) = 0xEB0000000065646FLL;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  if (v3)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  *(v10 + 64) = v12;
  *(v10 + 72) = v13;
  *(v10 + 80) = v15;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  strcpy((v10 + 112), "storefrontId");
  *(v10 + 125) = 0;
  *(v10 + 126) = -5120;
  *(v10 + 176) = v11;
  *(v10 + 184) = v12;
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0;
  }

  if (v5)
  {
    v14 = v5;
  }

  *(v10 + 152) = v16;
  *(v10 + 160) = v14;
  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);

  v17 = sub_222C949EC();
  [v9 setPredicate_];

  v40[0] = 0;
  v18 = [v9 execute_];
  v19 = v40[0];
  if (!v18)
  {
    v39 = a1;
    v25 = v40[0];
    a1 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
LABEL_20:
      v26 = sub_222C9431C();
      __swift_project_value_buffer(v26, qword_280FE2340);
      v27 = a1;
      v28 = sub_222C942FC();
      v29 = sub_222C94A4C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v40[0] = v38;
        *v30 = 136315138;
        v31 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
        v32 = sub_222C944EC();
        v34 = sub_222B437C0(v32, v33, v40);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_222B39000, v28, v29, "Error searching for existing suggestion tag error=%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x223DCA8C0](v38, -1, -1);
        MEMORY[0x223DCA8C0](v30, -1, -1);
      }

      else
      {
      }

      a1 = v39;
      goto LABEL_26;
    }

LABEL_36:
    swift_once();
    goto LABEL_20;
  }

  v20 = v18;
  type metadata accessor for PlusStorefrontCoreDataRecord();
  v21 = sub_222C9471C();
  v22 = v19;

  if (v21 >> 62)
  {
    if (sub_222C94C6C())
    {
      goto LABEL_15;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    if ((v21 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x223DC9B30](0, v21);
      goto LABEL_18;
    }

    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 32);
LABEL_18:
      v24 = v23;

      return v24;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_26:
  type metadata accessor for PlusStorefrontCoreDataRecord();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  if (v3)
  {
    v35 = sub_222C9448C();
  }

  else
  {
    v35 = 0;
  }

  [v24 setCountryCode_];

  if (v5)
  {
    v36 = sub_222C9448C();
  }

  else
  {
    v36 = 0;
  }

  [v24 setStorefrontId_];

  return v24;
}

id sub_222BF310C(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_222C9448C();
  v5 = [v3 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222C96900;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v8 = sub_222B9A614();
  *(v6 + 64) = v8;
  *(v6 + 32) = 1701667182;
  *(v6 + 40) = 0xE400000000000000;
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        v10 = 0x8000000222CA93E0;
        v9 = 0xD000000000000013;
      }

      else
      {
        v10 = 0x8000000222CA9400;
        v9 = 0xD000000000000012;
      }
    }

    else if (v2 == 4)
    {
      v10 = 0xE700000000000000;
      v9 = 0x7972617262696CLL;
    }

    else
    {
      v10 = 0x8000000222CA93C0;
      v9 = 0xD000000000000011;
    }
  }

  else
  {
    if (v2 <= 1)
    {
      v9 = 0x754D6E69616D6F64;
      v10 = 0xEB00000000636973;
      if (!v2)
      {
        goto LABEL_16;
      }

      v9 = 0x656D7269666E6F63;
      goto LABEL_10;
    }

    if (v2 == 2)
    {
      v9 = 0x6574616E696D6F6ELL;
LABEL_10:
      v10 = 0xE900000000000064;
      goto LABEL_16;
    }

    v9 = 0x6974636572726F63;
    v10 = 0xEA00000000006E6FLL;
  }

LABEL_16:
  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v9;
  *(v6 + 80) = v10;
  v11 = sub_222C949EC();
  [v5 setPredicate_];

  v33[0] = 0;
  v12 = [v5 execute_];
  v13 = v33[0];
  if (!v12)
  {
    v19 = v33[0];
    v14 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v14 = v12;
  type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
  v15 = sub_222C9471C();
  v16 = v13;

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_28:

LABEL_29:
    type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v30 = sub_222C9448C();

    [v18 setName_];

    return v18;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_28;
  }

LABEL_19:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x223DC9B30](0, v15);
    goto LABEL_22;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_33:
    swift_once();
LABEL_24:
    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v21 = v14;
    v22 = sub_222C942FC();
    v23 = sub_222C94A4C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v24 = 136315138;
      v26 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v27 = sub_222C944EC();
      v29 = sub_222B437C0(v27, v28, v33);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_222B39000, v22, v23, "Error searching for existing suggestion tag error=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x223DCA8C0](v25, -1, -1);
      MEMORY[0x223DCA8C0](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v17 = *(v15 + 32);
LABEL_22:
  v18 = v17;

  return v18;
}

void sub_222BF3720(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 mediaId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9449C();
    v8 = v7;

    v9 = [v2 storefront];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 countryCode];
      if (v11)
      {
        v12 = v11;
        v13 = sub_222C9449C();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v22 = [v10 storefrontId];
      if (v22)
      {
        v23 = v22;
        v20 = sub_222C9449C();
        v21 = v24;
      }

      else
      {

        v20 = 0;
        v21 = 0;
      }
    }

    else
    {
      v13 = 0;
      v20 = 0;
      v21 = 0;
      v15 = 1;
    }

    v25 = [v2 sourceApp];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 name];
      if (v27)
      {
        v28 = v27;
        sub_222C9449C();

        v29 = sub_222C94FDC();

        swift_bridgeObjectRelease_n();
        if (v29 == 1)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (!v29)
        {
          v30 = 0;
        }

        goto LABEL_25;
      }
    }

    v30 = 2;
LABEL_25:
    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v20;
    *(a1 + 40) = v21;
    *(a1 + 48) = v30 | 0x300;
    return;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v16 = sub_222C9431C();
  __swift_project_value_buffer(v16, qword_280FE2340);
  v17 = sub_222C942FC();
  v18 = sub_222C94A3C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_222B39000, v17, v18, "Media reference missing mandatory media id.", v19, 2u);
    MEMORY[0x223DCA8C0](v19, -1, -1);
  }

  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
}

uint64_t sub_222BF39F8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v150 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v127 - v4;
  v153 = type metadata accessor for ThinMediaGroundTruth(0);
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222C9343C();
  v144 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v143 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v127 - v10;
  v146 = sub_222C9367C();
  v12 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v14 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v127 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v127 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v127 - v23;
  v25 = [v1 id];
  if (v25)
  {
    v145 = v12;
    v26 = v25;
    sub_222C9363C();

    v27 = [v2 leftHandKey];
    if (v27)
    {
      v141 = v14;
      v142 = v20;
      v28 = v27;
      v29 = sub_222C9350C();
      v31 = v30;

      v32 = [v2 inferredMediaReference];
      if (v32)
      {
        v33 = v32;
        sub_222BF3720(&v157);

        if (*(&v157 + 1))
        {
          v137 = v24;
          v134 = *(&v157 + 1);
          v129 = v157;
          v130 = v158;
          v131 = v159;
          v132 = v160;
          v133 = v161;
          v135 = v162;
          v34 = [v2 contributingGroundTruth];
          if (!v34)
          {
            sub_222B505A8(0, &qword_27D026B88, 0x277CBEB70);
            v34 = MEMORY[0x223DC97A0](MEMORY[0x277D84F90]);
          }

          v128 = v2;
          v35 = [v2 tags];
          v36 = MEMORY[0x277D84F90];
          v147 = MEMORY[0x277D84F90];
          v138 = v31;
          v140 = v29;
          v136 = v34;
          if (v35)
          {
            v156 = MEMORY[0x277D84F90];
            v149 = v35;
            sub_222C94A0C();
            sub_222BF5484(&qword_27D026B90, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
            sub_222C94B9C();
            while (v159)
            {
              sub_222BF54CC(&v157, v154);
              type metadata accessor for PlusMediaSuggestionTagCoreDataRecord();
              if ((swift_dynamicCast() & 1) != 0 && v155)
              {
                MEMORY[0x223DC94A0]();
                if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_222C9475C();
                }

                sub_222C947AC();
                v36 = v156;
              }

              sub_222C94B9C();
            }

            (*(v144 + 8))(v11, v7);
            v149 = (v36 & 0xFFFFFFFFFFFFFF8);
            if (v36 >> 62)
            {
              v77 = sub_222C94C6C();
            }

            else
            {
              v77 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v76 = v143;
            if (v77)
            {
              v148 = v36 & 0xC000000000000001;
              v139 = MEMORY[0x277D84F90];
              for (i = 0; ; i = v81)
              {
                while (1)
                {
                  if (v148)
                  {
                    v79 = MEMORY[0x223DC9B30](i, v36);
                  }

                  else
                  {
                    if (i >= *(v149 + 2))
                    {
                      goto LABEL_92;
                    }

                    v79 = *(v36 + 8 * i + 32);
                  }

                  v80 = v79;
                  v81 = i + 1;
                  if (__OFADD__(i, 1))
                  {
                    goto LABEL_91;
                  }

                  v82 = [v79 name];
                  if (v82)
                  {
                    break;
                  }

LABEL_39:
                  ++i;
                  if (v81 == v77)
                  {
                    v76 = v143;
                    goto LABEL_55;
                  }
                }

                v83 = v82;
                sub_222C9449C();

                v84 = sub_222C94FDC();

                swift_bridgeObjectRelease_n();
                if (v84 >= 8)
                {
                  goto LABEL_39;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v139 = sub_222B4B468(0, *(v139 + 2) + 1, 1, v139);
                }

                v76 = v143;
                v86 = *(v139 + 2);
                v85 = *(v139 + 3);
                if (v86 >= v85 >> 1)
                {
                  v139 = sub_222B4B468((v85 > 1), v86 + 1, 1, v139);
                }

                v87 = v139;
                *(v139 + 2) = v86 + 1;
                v87[v86 + 32] = v84;
                if (v81 == v77)
                {
                  goto LABEL_55;
                }
              }
            }

            v139 = MEMORY[0x277D84F90];
LABEL_55:
          }

          else
          {
            v139 = 0;
            v76 = v143;
          }

          v156 = MEMORY[0x277D84F90];
          sub_222C94A0C();
          sub_222BF5484(&qword_27D026B90, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
          sub_222C94B9C();
          if (v159)
          {
            v147 = MEMORY[0x277D84F90];
            do
            {
              sub_222BF54CC(&v157, v154);
              type metadata accessor for ThinMediaGroundTruthCoreDataRecord();
              if ((swift_dynamicCast() & 1) != 0 && v155)
              {
                MEMORY[0x223DC94A0]();
                if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_222C9475C();
                }

                sub_222C947AC();
                v147 = v156;
              }

              sub_222C94B9C();
            }

            while (v159);
          }

          (*(v144 + 8))(v76, v7);
          v88 = v147;
          if (v147 >> 62)
          {
            v89 = sub_222C94C6C();
          }

          else
          {
            v89 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v90 = MEMORY[0x277D84F90];
          if (!v89)
          {
LABEL_81:

            sub_222C931DC();
            swift_allocObject();
            sub_222C931CC();
            sub_222C9386C();
            sub_222BF5484(&qword_27D025180, MEMORY[0x277D5E9D8], MEMORY[0x277D5E458]);
            sub_222C931BC();

            v153 = v157;
            v100 = *(v145 + 16);
            v100(v142, v137, v146);
            v101 = v128;
            [v128 timestamp];
            v103 = v102;
            v104 = MEMORY[0x277D84F90];
            if (v139)
            {
              v105 = v139;
            }

            else
            {
              v105 = MEMORY[0x277D84F90];
            }

            v152 = sub_222B72A40(v105);

            [v101 score];
            v107 = v106;
            v108 = [v101 scoreHistory];
            if (v108)
            {
              v109 = v108;
              v110 = sub_222C9350C();
              v112 = v111;

              sub_222B80358(v110, v112);
              v113 = sub_222BF4F6C(v110, v112, &qword_27D0261C0, &unk_222C9C7D0, sub_222BF54DC);
              sub_222B803C0(v110, v112);
              sub_222B803C0(v110, v112);
              if (v113)
              {
                v104 = v113;
              }
            }

            v114 = v135;
            v115 = v135 >> 8;
            v116 = v150;
            v117 = v142;
            v118 = v146;
            v100(v150, v142, v146);
            v119 = type metadata accessor for PlusMediaSuggestion(0);
            *&v116[v119[5]] = v153;
            v120 = &v116[v119[6]];
            v121 = v134;
            *v120 = v129;
            *(v120 + 1) = v121;
            v122 = v131;
            *(v120 + 2) = v130;
            *(v120 + 3) = v122;
            v123 = v133;
            *(v120 + 4) = v132;
            *(v120 + 5) = v123;
            v120[48] = v114;
            v120[49] = v115;

            sub_222C16F98(20, v90);
            *&v116[v119[7]] = v124;
            *&v116[v119[10]] = v103;
            *&v116[v119[11]] = v152;
            *&v116[v119[8]] = v107;
            v125 = sub_222C17258(0x14uLL, v104);

            sub_222B803C0(v140, v138);

            v126 = *(v145 + 8);
            v126(v117, v118);
            v126(v137, v118);
            *&v116[v119[9]] = v125;
            return (*(*(v119 - 1) + 56))(v116, 0, 1, v119);
          }

          v91 = 0;
          v92 = v88 & 0xC000000000000001;
          v93 = v88 & 0xFFFFFFFFFFFFFF8;
          v94 = (v151 + 48);
          while (1)
          {
            if (v92)
            {
              v95 = MEMORY[0x223DC9B30](v91, v88);
            }

            else
            {
              if (v91 >= *(v93 + 16))
              {
                goto LABEL_90;
              }

              v95 = *(v88 + 8 * v91 + 32);
            }

            v96 = v95;
            v97 = v91 + 1;
            if (__OFADD__(v91, 1))
            {
              break;
            }

            sub_222BF1CC0(v5);

            if ((*v94)(v5, 1, v153) == 1)
            {
              sub_222BF53B8(v5);
            }

            else
            {
              sub_222BF5420(v5, v152);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v90 = sub_222B4A864(0, v90[2] + 1, 1, v90);
              }

              v99 = v90[2];
              v98 = v90[3];
              if (v99 >= v98 >> 1)
              {
                v90 = sub_222B4A864((v98 > 1), v99 + 1, 1, v90);
              }

              v90[2] = v99 + 1;
              sub_222BF5420(v152, v90 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v99);
              v88 = v147;
            }

            ++v91;
            if (v97 == v89)
            {
              goto LABEL_81;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      v46 = v24;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v47 = sub_222C9431C();
      __swift_project_value_buffer(v47, qword_280FE2340);
      v48 = sub_222C942FC();
      v49 = sub_222C94A3C();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v150;
      v52 = v146;
      if (v50)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_222B39000, v48, v49, "PIMSStoreCoreData: Empty inferred media reference for media suggestion", v53, 2u);
        MEMORY[0x223DCA8C0](v53, -1, -1);
      }

      sub_222B803C0(v29, v31);

      (*(v145 + 8))(v46, v52);
      v54 = type metadata accessor for PlusMediaSuggestion(0);
      v55 = *(*(v54 - 8) + 56);
      v56 = v51;
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v57 = sub_222C9431C();
      __swift_project_value_buffer(v57, qword_280FE2340);
      v58 = v145;
      v59 = v24;
      v60 = v24;
      v61 = v146;
      (*(v145 + 16))(v17, v60, v146);
      v62 = sub_222C942FC();
      v63 = sub_222C94A3C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v157 = v65;
        *v64 = 136315138;
        sub_222BF5484(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v66 = sub_222C9517C();
        v67 = v61;
        v69 = v68;
        v70 = *(v58 + 8);
        v71 = v17;
        v72 = v67;
        v70(v71, v67);
        v73 = sub_222B437C0(v66, v69, &v157);

        *(v64 + 4) = v73;
        _os_log_impl(&dword_222B39000, v62, v63, "PIMSStoreCoreData: Empty uso data for %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v65);
        MEMORY[0x223DCA8C0](v65, -1, -1);
        MEMORY[0x223DCA8C0](v64, -1, -1);

        v70(v59, v72);
      }

      else
      {

        v74 = *(v58 + 8);
        v74(v17, v61);
        v74(v59, v61);
      }

      v75 = v150;
      v54 = type metadata accessor for PlusMediaSuggestion(0);
      v55 = *(*(v54 - 8) + 56);
      v56 = v75;
    }

    return v55(v56, 1, 1, v54);
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_93:
    swift_once();
  }

  v37 = sub_222C9431C();
  __swift_project_value_buffer(v37, qword_280FE2340);
  v38 = sub_222C942FC();
  v39 = sub_222C94A3C();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v150;
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_222B39000, v38, v39, "PIMSStoreCoreData: Missing UUID for pics data record. Returning Nil.", v42, 2u);
    MEMORY[0x223DCA8C0](v42, -1, -1);
  }

  v43 = type metadata accessor for PlusMediaSuggestion(0);
  v44 = *(*(v43 - 8) + 56);

  return v44(v41, 1, 1, v43);
}

uint64_t sub_222BF4F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  sub_222C931DC();
  swift_allocObject();
  sub_222C931CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  a5();
  sub_222C931BC();

  return v9;
}

uint64_t sub_222BF5188@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_222C935EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v24 - v10;
  v12 = [v2 source];
  if (v12)
  {
    v13 = v12;
    v14 = sub_222C9449C();
    v16 = v15;

    v17 = [v2 timestamp];
    if (v17)
    {
      v18 = v17;
      sub_222C935CC();

      v19 = *(v5 + 32);
      v19(v11, v7, v4);
      v20 = type metadata accessor for SuggestionStoreUpdate(0);
      v19(a1 + *(v20 + 20), v11, v4);
      *a1 = v14;
      a1[1] = v16;
      return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    }
  }

  v22 = type metadata accessor for SuggestionStoreUpdate(0);
  v23 = *(*(v22 - 8) + 56);

  return v23(a1, 1, 1, v22);
}

uint64_t sub_222BF53B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BF5420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinMediaGroundTruth(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BF5484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_222BF54CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_222BF54DC()
{
  result = qword_27D026210;
  if (!qword_27D026210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0261C0, &unk_222C9C7D0);
    sub_222BF5670(&qword_27D026218, &qword_27D0261D8, &qword_222CA1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026210);
  }

  return result;
}

uint64_t sub_222BF5578(uint64_t a1)
{
  v2 = type metadata accessor for ThinMediaGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222BF55D4()
{
  result = qword_27D026BA0;
  if (!qword_27D026BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026B98, &unk_222CA0F10);
    sub_222BF5670(&qword_27D026BA8, &qword_27D026BB0, &unk_222CA62E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026BA0);
  }

  return result;
}

uint64_t sub_222BF5670(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_222BF56C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026760, qword_222C9DCF0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026BB8 = 91;
  unk_27D026BC0 = 0xE100000000000000;
  return result;
}

uint64_t PlayMediaIntentWithAttachedNowPlayingEventStreamDefinition.events(since:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a1;
  v3[14] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026710, &qword_222C9DCB8);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v3[17] = *(v5 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BC8, &unk_222C9FB50);
  v3[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266E8, &qword_222C9DC98);
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v3[24] = *(v7 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *v2;
  v3[27] = v8;
  v3[28] = v9;

  return MEMORY[0x2822009F8](sub_222BF5904, 0, 0);
}

uint64_t sub_222BF5904()
{
  v25 = v0;
  sub_222BF9004(0, 1uLL, v0 + 56);
  if (*(v0 + 80))
  {
    sub_222B405A0((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v23 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_222BF5DD0;
    v4 = *(v0 + 168);
    v5 = *(v0 + 112);

    return v23(v4, v5, v1, v2);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v7 = sub_222C9431C();
    __swift_project_value_buffer(v7, qword_280FE2340);
    v8 = sub_222C942FC();
    v9 = sub_222C94A4C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      *(v10 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v24);
      _os_log_impl(&dword_222B39000, v8, v9, "%s Could not resolve playMediaIntentStream", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223DCA8C0](v11, -1, -1);
      MEMORY[0x223DCA8C0](v10, -1, -1);
    }

    v13 = *(v0 + 144);
    v12 = *(v0 + 152);
    v14 = *(v0 + 128);
    v15 = *(v0 + 120);
    *(v0 + 96) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025408, &unk_222C984C0);
    sub_222B61940(&qword_27D026BD0, &qword_27D025408, &unk_222C984C0, MEMORY[0x277D83970]);
    sub_222C93E1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026718, &unk_222C9DCC0);
    v16 = swift_allocBox();
    v18 = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026720, &qword_222C9FB60);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    (*(v14 + 16))(v13, v12, v15);
    v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    (*(v14 + 32))(v21 + v20, v13, v15);

    sub_222C948BC();
    (*(v14 + 8))(v12, v15);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_222BF5DD0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_222BF6184;
  }

  else
  {
    v2 = sub_222BF5EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222BF5EE4()
{
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[22];
  sub_222B61940(&qword_27D026BD8, &qword_27D026BC8, &unk_222C9FB50, &protocol conformance descriptor for AsyncEventStream<A>);

  sub_222C951AC();
  v6 = *(v4 + 16);
  v6(v2, v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266F0, &qword_222C9DCA0);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266F8, &qword_222C9DCA8);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v6(v3, v2, v5);
  v11 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  (*(v4 + 32))(v12 + v11, v3, v5);

  sub_222C948BC();
  v13 = *(v4 + 8);
  v13(v2, v5);
  v13(v1, v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_222BF6184()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222BF6238(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[3];
  v7 = a2[4];
  *(v3 + 56) = a3;
  *(v3 + 16) = v5;
  *(v3 + 24) = *(a2 + 1);
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  v8 = swift_task_alloc();
  *(v3 + 64) = v8;
  *v8 = v3;
  v8[1] = sub_222BF6300;

  return sub_222BF644C(a1, (v3 + 16));
}

uint64_t sub_222BF6300()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222BF6434, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_222BF644C(uint64_t a1, uint64_t *a2)
{
  *(v3 + 336) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  v5 = sub_222C935EC();
  *(v3 + 360) = v5;
  *(v3 + 368) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v3 + 376) = v6;
  *(v3 + 384) = v7;
  *(v3 + 392) = *(a2 + 1);
  v8 = a2[4];
  *(v3 + 408) = a2[3];
  *(v3 + 416) = v8;
  *(v3 + 424) = *v2;

  return MEMORY[0x2822009F8](sub_222BF657C, 0, 0);
}

uint64_t sub_222BF657C()
{
  v54 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  sub_222B41CB8(*(v0 + 400), v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_222B41CE4(*(v0 + 400));
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      sub_222C935AC();
      v6 = 0;
    }

    v10 = *(v0 + 360);
    v11 = *(v0 + 344);
    (*(*(v0 + 368) + 56))(*(v0 + 352), v6, 1, v10);
    if (v4(v11, 1, v10) != 1)
    {
      sub_222B4FCD4(*(v0 + 344), &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);
    v9 = *(v0 + 352);
    (*(v8 + 32))(v9, *(v0 + 344), v7);
    (*(v8 + 56))(v9, 0, 1, v7);
  }

  v13 = *(v0 + 352);
  v12 = *(v0 + 360);
  if (v4(v13, 1, v12) == 1)
  {
    sub_222B4FCD4(v13, &qword_27D025360, &unk_222C98300);
LABEL_17:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v34 = sub_222C9431C();
    __swift_project_value_buffer(v34, qword_280FE2340);

    v35 = sub_222C942FC();
    v36 = sub_222C94A4C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53[0] = v38;
      *v37 = 136315394;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v40 = *(v0 + 408);
      v39 = *(v0 + 416);
      v42 = *(v0 + 392);
      v41 = *(v0 + 400);
      v43 = *(v0 + 384);
      *(v37 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, v53);
      *(v37 + 12) = 2080;
      *(v0 + 152) = v43;
      *(v0 + 160) = v42;
      *(v0 + 168) = v41;
      *(v0 + 176) = v40;
      *(v0 + 184) = v39;

      v44 = sub_222C944EC();
      v46 = sub_222B437C0(v44, v45, v53);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_222B39000, v35, v36, "%s playMediaIntent required fields missing (%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v38, -1, -1);
      MEMORY[0x223DCA8C0](v37, -1, -1);
    }

    v47 = *(v0 + 408);
    v48 = *(v0 + 416);
    v49 = *(v0 + 392);
    v50 = *(v0 + 400);
    v51 = *(v0 + 336);
    *v51 = *(v0 + 384);
    v51[1] = v49;
    v51[2] = v50;
    v51[3] = v47;
    v51[4] = v48;

    v52 = *(v0 + 8);

    return v52();
  }

  v14 = *(v0 + 400);
  (*(*(v0 + 368) + 32))(*(v0 + 376), v13, v12);
  v15 = sub_222B4183C(v14, (v0 + 88));
  v16 = *(v0 + 96);
  if (!v16)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360), v15);
    goto LABEL_17;
  }

  v17 = *(v0 + 88);
  *(v0 + 312) = 47;
  *(v0 + 320) = 0xE100000000000000;
  v18 = swift_task_alloc();
  *(v18 + 16) = v0 + 312;

  v20 = sub_222B76E28(0x7FFFFFFFFFFFFFFFLL, 1, sub_222B5EBA4, v18, v17, v16, v19);
  sub_222B4FCD4(v0 + 88, &qword_27D025370, &qword_222C98310);

  v21 = *(v20 + 16);
  if (!v21)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

    goto LABEL_17;
  }

  v22 = *(v0 + 424);
  v23 = (v20 + 32 * v21);
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v27 = v23[3];

  *(v0 + 328) = v22;
  v28 = MEMORY[0x223DC92B0](v24, v25, v26, v27);
  v30 = v29;

  *(v0 + 432) = v30;
  v31 = swift_task_alloc();
  *(v0 + 440) = v31;
  *v31 = v0;
  v31[1] = sub_222BF6B30;
  v32 = *(v0 + 376);

  return sub_222BF7130(v0 + 192, v32, v28, v30);
}

uint64_t sub_222BF6B30()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_222BF7094;
  }

  else
  {
    v2 = sub_222BF6C54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222BF6C54()
{
  v44 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v0 + 408);
    v2 = *(v0 + 416);
    v38 = *(v0 + 376);
    v40 = *(v0 + 384);
    v4 = *(v0 + 360);
    v5 = *(v0 + 368);
    v6 = *(v0 + 336);
    v7 = *(v0 + 224);
    v36 = *(v0 + 208);
    v8 = *(v0 + 192);
    v41 = *(v0 + 392);
    v42 = v3;
    v43 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C97C40;
    v10 = type metadata accessor for PlayMediaFeature.NowPlayingEvent(0);
    swift_allocObject();
    *(v0 + 272) = v8;
    *(v0 + 280) = v1;
    *(v0 + 288) = v36;
    *(v0 + 304) = v7;
    v11 = sub_222C93EEC();
    *(inited + 56) = v10;
    *(inited + 64) = sub_222BF9808(&qword_27D026BE0, type metadata accessor for PlayMediaFeature.NowPlayingEvent, MEMORY[0x277D5FBA0]);
    *(inited + 32) = v11;
    CoreDuetEvent.with(eventId:removedFeatures:newFeatures:eventType:)(0, 0, MEMORY[0x277D84F90], inited, 0, 0, v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    swift_arrayDestroy();
    (*(v5 + 8))(v38, v4);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);

    v13 = sub_222C942FC();
    v14 = sub_222C94A4C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v15 = 136315394;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 408);
      v17 = *(v0 + 416);
      v19 = *(v0 + 392);
      v18 = *(v0 + 400);
      v20 = *(v0 + 384);
      v21 = *(v0 + 368);
      v35 = *(v0 + 360);
      v37 = *(v0 + 376);
      *(v15 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v40);
      *(v15 + 12) = 2080;
      *(v0 + 232) = v20;
      *(v0 + 240) = v19;
      *(v0 + 248) = v18;
      *(v0 + 256) = v16;
      *(v0 + 264) = v17;

      v22 = sub_222C944EC();
      v24 = sub_222B437C0(v22, v23, &v40);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_222B39000, v13, v14, "%s could not find associated now playing event for %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v39, -1, -1);
      MEMORY[0x223DCA8C0](v15, -1, -1);

      (*(v21 + 8))(v37, v35);
    }

    else
    {
      v26 = *(v0 + 368);
      v25 = *(v0 + 376);
      v27 = *(v0 + 360);

      (*(v26 + 8))(v25, v27);
    }

    v28 = *(v0 + 408);
    v29 = *(v0 + 416);
    v30 = *(v0 + 392);
    v31 = *(v0 + 400);
    v32 = *(v0 + 336);
    *v32 = *(v0 + 384);
    v32[1] = v30;
    v32[2] = v31;
    v32[3] = v28;
    v32[4] = v29;
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_222BF7094()
{
  (*(v0[46] + 8))(v0[47], v0[45]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_222BF7130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[53] = a3;
  v5[54] = a4;
  v5[51] = a1;
  v5[52] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BC8, &unk_222C9FB50);
  v5[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BE8, &qword_222C9FC30);
  v5[58] = swift_task_alloc();
  v6 = sub_222C935EC();
  v5[59] = v6;
  v5[60] = *(v6 - 8);
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = *v4;

  return MEMORY[0x2822009F8](sub_222BF72EC, 0, 0);
}

uint64_t sub_222BF72EC()
{
  v46 = v0;
  sub_222BF9004(0, 0, v0 + 56);
  if (*(v0 + 80))
  {
    sub_222B405A0((v0 + 56), v0 + 16);
    sub_222C9358C();
    sub_222C9358C();
    sub_222C9358C();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 528);
    v2 = *(v0 + 520);
    v4 = *(v0 + 496);
    v3 = *(v0 + 504);
    v5 = *(v0 + 472);
    v6 = *(v0 + 480);
    v7 = sub_222C9431C();
    *(v0 + 544) = __swift_project_value_buffer(v7, qword_280FE2340);
    v8 = *(v6 + 16);
    v8(v3, v1, v5);
    v8(v4, v2, v5);
    v9 = sub_222C942FC();
    v10 = sub_222C94A3C();
    if (os_log_type_enabled(v9, v10))
    {
      v43 = v10;
      v11 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v11 = 136315650;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 504);
      v41 = *(v0 + 496);
      v14 = *(v0 + 472);
      v13 = *(v0 + 480);
      *(v11 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v45);
      *(v11 + 12) = 2080;
      sub_222BF9808(&qword_27D026758, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v15 = sub_222C9517C();
      v17 = v16;
      v18 = *(v13 + 8);
      v18(v12, v14);
      v19 = sub_222B437C0(v15, v17, &v45);

      *(v11 + 14) = v19;
      *(v11 + 22) = 2080;
      v20 = sub_222C9517C();
      v22 = v21;
      v18(v41, v14);
      v23 = sub_222B437C0(v20, v22, &v45);

      *(v11 + 24) = v23;
      _os_log_impl(&dword_222B39000, v9, v43, "%s Searching for the related now playing event between %s and %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
    }

    else
    {
      v33 = *(v0 + 496);
      v32 = *(v0 + 504);
      v34 = *(v0 + 472);
      v35 = *(v0 + 480);

      v18 = *(v35 + 8);
      v18(v33, v34);
      v18(v32, v34);
    }

    *(v0 + 552) = v18;
    v36 = *(v0 + 40);
    v37 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v36);
    v44 = (*(v37 + 16) + **(v37 + 16));
    v38 = swift_task_alloc();
    *(v0 + 560) = v38;
    *v38 = v0;
    v38[1] = sub_222BF794C;
    v39 = *(v0 + 528);
    v40 = *(v0 + 456);

    return v44(v40, v39, v36, v37);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v24 = sub_222C9431C();
    __swift_project_value_buffer(v24, qword_280FE2340);
    v25 = sub_222C942FC();
    v26 = sub_222C94A4C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v45 = v28;
      *v27 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v45);
      _os_log_impl(&dword_222B39000, v25, v26, "%s failed to resolve nowPlayingStream", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x223DCA8C0](v28, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }

    v29 = *(v0 + 408);
    *(v29 + 32) = 0;
    *v29 = 0u;
    *(v29 + 16) = 0u;

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_222BF794C()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_222BF8E18;
  }

  else
  {
    v2 = sub_222BF7A60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222BF7A60()
{
  v1 = *(v0 + 456);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BF0, &qword_222C9FC38);
  sub_222C9488C();
  sub_222B4FCD4(v1, &qword_27D026BC8, &unk_222C9FB50);
  v2 = swift_task_alloc();
  *(v0 + 576) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BF8, &unk_222C9FC40);
  *v2 = v0;
  v2[1] = sub_222BF7B50;

  return MEMORY[0x2822005B0](v0 + 96, v3);
}

uint64_t sub_222BF7B50()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_222BF8C28;
  }

  else
  {
    v2 = sub_222BF7C64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222BF7C64()
{
  v101 = v0;
  v1 = *(v0 + 104);
  if (!v1)
  {
    sub_222B4FCD4(*(v0 + 464), &qword_27D026BE8, &qword_222C9FC30);
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(v0 + 160) = &type metadata for PIMSConstraintMismatch;
    *(v0 + 168) = sub_222B77B4C();
    *(v0 + 136) = 0xD000000000000016;
    *(v0 + 144) = 0x8000000222CA9C80;
    *(v0 + 152) = 19;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    v11 = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v100 = v14;
      *v13 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 552);
      v98 = *(v0 + 528);
      v16 = *(v0 + 520);
      v17 = *(v0 + 512);
      v18 = *(v0 + 472);
      *(v13 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v100);
      _os_log_impl(&dword_222B39000, v11, v12, "%s Didn't find any relevant now playing events", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223DCA8C0](v14, -1, -1);
      MEMORY[0x223DCA8C0](v13, -1, -1);

      v15(v17, v18);
      v15(v16, v18);
      v15(v98, v18);
    }

    else
    {
      v25 = *(v0 + 552);
      v26 = *(v0 + 528);
      v27 = *(v0 + 520);
      v28 = *(v0 + 512);
      v29 = *(v0 + 472);

      v25(v28, v29);
      v25(v27, v29);
      v25(v26, v29);
    }

    goto LABEL_53;
  }

  v97 = *(v0 + 96);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v7 = *(v0 + 440);
  sub_222B41CB8(v2, v7);
  v8 = *(v6 + 48);
  if (v8(v7, 1, v5) == 1)
  {
    sub_222B41CE4(v2);
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      sub_222C935AC();
      v10 = 0;
    }

    v30 = *(v0 + 472);
    v31 = *(v0 + 440);
    (*(*(v0 + 480) + 56))(*(v0 + 448), v10, 1, v30);
    if (v8(v31, 1, v30) != 1)
    {
      sub_222B4FCD4(*(v0 + 440), &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    v19 = v1;
    v20 = v3;
    v21 = v4;
    v22 = *(v0 + 472);
    v23 = *(v0 + 480);
    v24 = *(v0 + 448);
    (*(v23 + 32))(v24, *(v0 + 440), v22);
    (*(v23 + 56))(v24, 0, 1, v22);
    v4 = v21;
    v3 = v20;
    v1 = v19;
  }

  v32 = *(v0 + 472);
  v33 = *(v0 + 448);
  if (v8(v33, 1, v32) == 1)
  {
    sub_222B4FCD4(v33, &qword_27D025360, &unk_222C98300);
    v34 = v0 + 96;
    goto LABEL_28;
  }

  (*(*(v0 + 480) + 32))(*(v0 + 488), v33, v32);

  v36 = sub_222B423A0(v35);
  v38 = v37;

  v34 = v0 + 96;
  if (!v38)
  {
    (*(v0 + 552))(*(v0 + 488), *(v0 + 472));
LABEL_28:

    v48 = sub_222C942FC();
    v49 = sub_222C94A4C();
    sub_222B5EE44(v97, v1, v2, v3, v4);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *(v34 + 288) = v51;
      *v50 = 136315394;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      *(v50 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, (v34 + 288));
      *(v50 + 12) = 2080;
      *(v0 + 176) = v97;
      *(v0 + 184) = v1;
      *(v0 + 192) = v2;
      *(v0 + 200) = v3;
      *(v0 + 208) = v4;
      v52 = sub_222C944EC();
      v54 = sub_222B437C0(v52, v53, (v34 + 288));

      *(v50 + 14) = v54;
      _os_log_impl(&dword_222B39000, v48, v49, "%s NowPlayingEvent required properties missing: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v51, -1, -1);
      MEMORY[0x223DCA8C0](v50, -1, -1);
    }

    else
    {

      sub_222B5EE44(v97, v1, v2, v3, v4);
    }

LABEL_33:
    v55 = swift_task_alloc();
    *(v0 + 576) = v55;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026BF8, &unk_222C9FC40);
    *v55 = v0;
    v55[1] = sub_222BF7B50;

    return MEMORY[0x2822005B0](v34, v56);
  }

  v92 = v36;
  sub_222BF9808(&qword_27D025A18, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_222C9446C())
  {

    sub_222B5EE44(v97, v1, v2, v3, v4);
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(v0 + 360) = &type metadata for PIMSConstraintMismatch;
    *(v0 + 368) = sub_222B77B4C();
    *(v0 + 336) = 0xD000000000000016;
    *(v0 + 344) = 0x8000000222CA9C80;
    *(v0 + 352) = 18;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    v39 = sub_222C942FC();
    v40 = sub_222C94A4C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v100 = v42;
      *v41 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 552);
      v95 = *(v0 + 520);
      v99 = *(v0 + 528);
      v93 = *(v0 + 512);
      v44 = *(v0 + 488);
      v45 = *(v0 + 464);
      v46 = *(v0 + 472);
      *(v41 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v100);
      v47 = "%s Could not find associated NowPlayingEvent in time window";
LABEL_26:
      _os_log_impl(&dword_222B39000, v39, v40, v47, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);

      v43(v44, v46);
      sub_222B4FCD4(v45, &qword_27D026BE8, &qword_222C9FC30);
      v43(v93, v46);
      v43(v95, v46);
      v43(v99, v46);
LABEL_53:
      v77 = *(v0 + 408);
      *(v77 + 32) = 0;
      *v77 = 0u;
      *(v77 + 16) = 0u;
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if ((v36 != *(v0 + 424) || v38 != *(v0 + 432)) && (sub_222C951FC() & 1) == 0)
  {
    sub_222B5EE44(v97, v1, v2, v3, v4);
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(v0 + 240) = &type metadata for PIMSConstraintMismatch;
    v62 = sub_222B77B4C();
    *(v0 + 248) = v62;
    *(v0 + 216) = 0xD000000000000016;
    *(v0 + 224) = 0x8000000222CA9C80;
    *(v0 + 232) = 20;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 216));

    v63 = sub_222C942FC();
    v64 = sub_222C94A4C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *(v0 + 400) = v66;
      *v65 = 136315650;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 424);
      v68 = *(v0 + 432);
      *(v65 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, (v0 + 400));
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_222B437C0(v67, v68, (v0 + 400));
      *(v65 + 22) = 2080;
      v69 = sub_222B437C0(v92, v38, (v0 + 400));

      *(v65 + 24) = v69;
      _os_log_impl(&dword_222B39000, v63, v64, "%s Mismatched ids (Expected media id = %s now playing id = %s)", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v66, -1, -1);
      MEMORY[0x223DCA8C0](v65, -1, -1);
    }

    else
    {
    }

    if ((sub_222C9356C() & 1) == 0)
    {
      *(v0 + 280) = &type metadata for PIMSConstraintMismatch;
      *(v0 + 288) = v62;
      *(v0 + 256) = 0xD000000000000016;
      *(v0 + 264) = 0x8000000222CA9C80;
      *(v0 + 272) = 22;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 256));
      v79 = sub_222C942FC();
      v80 = sub_222C94A3C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *(v0 + 392) = v82;
        *v81 = 136315138;
        if (qword_27D024728 != -1)
        {
          swift_once();
        }

        v83 = *(v0 + 552);
        v84 = *(v0 + 488);
        v85 = *(v0 + 472);
        *(v81 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, (v0 + 392));
        _os_log_impl(&dword_222B39000, v79, v80, "%s Ignoring early now play event with non matching media id", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v82);
        MEMORY[0x223DCA8C0](v82, -1, -1);
        MEMORY[0x223DCA8C0](v81, -1, -1);

        v83(v84, v85);
      }

      else
      {
        v86 = *(v0 + 552);
        v87 = *(v0 + 488);
        v88 = *(v0 + 472);

        v86(v87, v88);
      }

      goto LABEL_33;
    }

    *(v0 + 320) = &type metadata for PIMSConstraintMismatch;
    *(v0 + 328) = v62;
    *(v0 + 296) = 0xD000000000000016;
    *(v0 + 304) = 0x8000000222CA9C80;
    *(v0 + 312) = 21;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
    v39 = sub_222C942FC();
    v40 = sub_222C94A4C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v100 = v42;
      *v41 = 136315138;
      if (qword_27D024728 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 552);
      v95 = *(v0 + 520);
      v99 = *(v0 + 528);
      v93 = *(v0 + 512);
      v44 = *(v0 + 488);
      v45 = *(v0 + 464);
      v46 = *(v0 + 472);
      *(v41 + 4) = sub_222B437C0(qword_27D026BB8, unk_27D026BC0, &v100);
      v47 = "%s Unexpected now playing media id after limit";
      goto LABEL_26;
    }

LABEL_52:
    v70 = *(v0 + 552);
    v71 = *(v0 + 528);
    v72 = *(v0 + 520);
    v73 = *(v0 + 512);
    v74 = *(v0 + 488);
    v76 = *(v0 + 464);
    v75 = *(v0 + 472);

    v70(v74, v75);
    sub_222B4FCD4(v76, &qword_27D026BE8, &qword_222C9FC30);
    v70(v73, v75);
    v70(v72, v75);
    v70(v71, v75);
    goto LABEL_53;
  }

  v96 = v4;
  v57 = *(v0 + 552);
  v91 = *(v0 + 520);
  v94 = *(v0 + 528);
  v90 = *(v0 + 512);
  v58 = *(v0 + 488);
  v59 = *(v0 + 464);
  v60 = *(v0 + 472);
  v61 = *(v0 + 408);

  v57(v58, v60);
  sub_222B4FCD4(v59, &qword_27D026BE8, &qword_222C9FC30);
  v57(v90, v60);
  v57(v91, v60);
  v57(v94, v60);
  *v61 = v97;
  v61[1] = v1;
  v61[2] = v2;
  v61[3] = v3;
  v61[4] = v96;
LABEL_54:
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_222BF8C28()
{
  *(v0 + 376) = *(v0 + 584);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_222BF8CB8, 0, 0);
}

uint64_t sub_222BF8CB8()
{
  v1 = v0[69];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[59];
  sub_222B4FCD4(v0[58], &qword_27D026BE8, &qword_222C9FC30);
  v1(v4, v5);
  v1(v3, v5);
  v1(v2, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_222BF8E18()
{
  v1 = v0[69];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[59];
  v1(v0[64], v4);
  v1(v3, v4);
  v1(v2, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_222BF8F5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return PlayMediaIntentWithAttachedNowPlayingEventStreamDefinition.events(since:)(a1, a2);
}

double sub_222BF9004@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_222B8CFCC(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_6:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    sub_222B95830(a1, a2);
    v12 = sub_222C942FC();
    v13 = sub_222C94A3C();
    sub_222B5B328(a1, a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v14 = 136315138;
      v32[0] = a1;
      v32[1] = a2;
      sub_222B95830(a1, a2);
      v16 = sub_222C944EC();
      v18 = sub_222B437C0(v16, v17, v31);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_222B39000, v12, v13, "No stream  registered for identifier %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x223DCA8C0](v15, -1, -1);
      MEMORY[0x223DCA8C0](v14, -1, -1);
    }

    goto LABEL_11;
  }

  sub_222B43E3C(*(v7 + 56) + 40 * v8, v32);

  sub_222B43E3C(v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026C00, &unk_222CA5010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026C08, &qword_222C9FC88);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    sub_222B405A0(v30, a3);
    return result;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v19 = sub_222C9431C();
  __swift_project_value_buffer(v19, qword_280FE2340);
  sub_222B95830(a1, a2);
  v20 = sub_222C942FC();
  v21 = sub_222C94A4C();
  sub_222B5B328(a1, a2);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v30[0] = v23;
    *v22 = 136315394;
    v31[0] = a1;
    v31[1] = a2;
    sub_222B95830(a1, a2);
    v24 = sub_222C944EC();
    v26 = sub_222B437C0(v24, v25, v30);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v31[0] = &type metadata for CoreDuetEvent;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D026C10, qword_222C9FC90);
    v27 = sub_222C944EC();
    v29 = sub_222B437C0(v27, v28, v30);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_222B39000, v20, v21, "Attempted to retrieve stream %s with incorrect event type of %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v23, -1, -1);
    MEMORY[0x223DCA8C0](v22, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v32);
LABEL_11:
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_222BF9404(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026710, &qword_222C9DCB8) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222BF9850;

  return sub_222BD6570(a1, v6, v1 + v5);
}

uint64_t sub_222BF94F4(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_222B503AC;

  return sub_222BF6238(a1, a2, v2);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_222BF9660(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266E8, &qword_222C9DC98) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222BF9850;

  return sub_222BD6B80(a1, v6, v1 + v5);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_222BF9808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222BF9854(uint64_t a1)
{
  sub_222C947FC();

  swift_getWitnessTable();
  v1 = sub_222C94DDC();
  if (sub_222C947BC() == 1)
  {
    return v1;
  }

  return sub_222C9477C();
}

uint64_t sub_222BF9930(uint64_t a1, void *a2)
{
  (*(*(*a2 + 96) + 24))(*(*a2 + 80), *(*a2 + 96));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_222C9496C();

  return v2 & 1;
}

id sub_222BF9A84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ThinContactGroundTruth(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v6 = sub_222C931FC();
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for ThinContactGroundTruthCoreDataRecord();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v8 = sub_222C9361C();
  [v7 setId_];

  v9 = sub_222C9448C();
  [v7 setGroundTruthType_];

  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  v10 = v2 + *(v5 + 32);
  LOWORD(v16) = *v10;
  BYTE2(v16) = *(v10 + 2);
  sub_222BFC6DC();
  v11 = sub_222C9321C();
  v13 = v12;
  v14 = sub_222C934FC();
  [v7 setGroundTruthSource_];

  sub_222B803C0(v11, v13);

  return v7;
}

id sub_222BF9E2C(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_222C9448C();
  v6 = [v4 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C96900;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_222B9A614();
  *(v7 + 64) = v9;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  if (v3 <= 1)
  {
    v10 = 0x654D6E69616D6F64;
    v11 = 0xEE00736567617373;
    if (v3)
    {
      v10 = 0x68506E69616D6F64;
      v11 = 0xEF6C6C6143656E6FLL;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v10 = 0x656D7269666E6F63;
      goto LABEL_8;
    }

    if (v3 == 3)
    {
      v10 = 0x6574616E696D6F6ELL;
LABEL_8:
      v11 = 0xE900000000000064;
      goto LABEL_10;
    }

    v10 = 0x6974636572726F63;
    v11 = 0xEA00000000006E6FLL;
  }

LABEL_10:
  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = sub_222C949EC();
  [v6 setPredicate_];

  v33[0] = 0;
  v13 = [v6 execute_];
  v14 = v33[0];
  if (!v13)
  {
    v20 = v33[0];
    v15 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  v15 = v13;
  type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
  v16 = sub_222C9471C();
  v17 = v14;

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_22:

LABEL_23:
    type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v31 = sub_222C9448C();

    [v19 setName_];

    return v19;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x223DC9B30](0, v16);
    goto LABEL_16;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_18:
    v21 = sub_222C9431C();
    __swift_project_value_buffer(v21, qword_280FE2340);
    v22 = v15;
    v23 = sub_222C942FC();
    v24 = sub_222C94A4C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136315138;
      v27 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v28 = sub_222C944EC();
      v30 = sub_222B437C0(v28, v29, v33);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_222B39000, v23, v24, "Error searching for existing suggestion tag error=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223DCA8C0](v26, -1, -1);
      MEMORY[0x223DCA8C0](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_23;
  }

  v18 = *(v16 + 32);
LABEL_16:
  v19 = v18;

  return v19;
}

uint64_t sub_222BFA3A0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v143 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v125 - v4;
  v147 = type metadata accessor for ThinContactGroundTruth(0);
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222C9343C();
  v137 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v144 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v125 - v10;
  v140 = sub_222C9367C();
  v12 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v125 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v125 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v125 - v23;
  v25 = [v1 id];
  if (!v25)
  {
    if (qword_280FDFE78 != -1)
    {
LABEL_57:
      swift_once();
    }

    v38 = sub_222C9431C();
    __swift_project_value_buffer(v38, qword_280FE2340);
    v39 = sub_222C942FC();
    v40 = sub_222C94A3C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v143;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_222B39000, v39, v40, "PICSStoreCoreData: Missing UUID for pics data record. Returning Nil.", v43, 2u);
      MEMORY[0x223DCA8C0](v43, -1, -1);
    }

    v44 = type metadata accessor for PlusContactSuggestion(0);
    v45 = *(*(v44 - 8) + 56);

    return v45(v42, 1, 1, v44);
  }

  v138 = v12;
  v26 = v25;
  sub_222C9363C();

  v27 = [v2 usoPersonQuery];
  if (!v27)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v58 = sub_222C9431C();
    __swift_project_value_buffer(v58, qword_280FE2340);
    v59 = v138;
    v60 = v24;
    v61 = v140;
    (*(v138 + 16))(v17, v24, v140);
    v62 = sub_222C942FC();
    v63 = sub_222C94A3C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v151 = v65;
      *v64 = 136315138;
      sub_222BFC640(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v66 = sub_222C9517C();
      v136 = v60;
      v68 = v67;
      v69 = *(v59 + 8);
      v69(v17, v61);
      v70 = sub_222B437C0(v66, v68, &v151);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_222B39000, v62, v63, "PICSStoreCoreData: Empty uso data for %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x223DCA8C0](v65, -1, -1);
      MEMORY[0x223DCA8C0](v64, -1, -1);

      v69(v136, v61);
    }

    else
    {

      v71 = *(v59 + 8);
      v71(v17, v61);
      v71(v24, v61);
    }

    v72 = v143;
    v55 = type metadata accessor for PlusContactSuggestion(0);
    v56 = *(*(v55 - 8) + 56);
    v57 = v72;
    return v56(v57, 1, 1, v55);
  }

  v134 = v14;
  v135 = v20;
  v28 = v27;
  v29 = sub_222C9350C();
  v31 = v30;

  v32 = [v2 inferredContactReference];
  if (!v32 || (v33 = v32, sub_222BFB850(&v151), v33, !*(&v151 + 1)))
  {
    v47 = v24;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v48 = sub_222C9431C();
    __swift_project_value_buffer(v48, qword_280FE2340);
    v49 = sub_222C942FC();
    v50 = sub_222C94A3C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v143;
    v53 = v140;
    if (v51)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_222B39000, v49, v50, "PICSStoreCoreData: Empty inferred contact reference for contact suggestion", v54, 2u);
      MEMORY[0x223DCA8C0](v54, -1, -1);
    }

    sub_222B803C0(v29, v31);

    (*(v138 + 8))(v47, v53);
    v55 = type metadata accessor for PlusContactSuggestion(0);
    v56 = *(*(v55 - 8) + 56);
    v57 = v52;
    return v56(v57, 1, 1, v55);
  }

  v136 = v24;
  v129 = v151;
  v127 = v152;
  v128 = v153;
  v34 = [v2 contributingGroundTruth];
  if (!v34)
  {
    sub_222B505A8(0, &qword_27D026B88, 0x277CBEB70);
    v34 = MEMORY[0x223DC97A0](MEMORY[0x277D84F90]);
  }

  v126 = v2;
  v35 = [v2 tags];
  v36 = MEMORY[0x277D84F90];
  v141 = MEMORY[0x277D84F90];
  v131 = v31;
  v133 = v29;
  v130 = v34;
  if (!v35)
  {
    v132 = 0;
    v37 = v144;
    goto LABEL_61;
  }

  v150 = MEMORY[0x277D84F90];
  v142 = v35;
  sub_222C94A0C();
  sub_222BFC640(&qword_27D026B90, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_222C94B9C();
  v37 = v144;
  if (v153)
  {
    v139 = MEMORY[0x277D84F90];
    do
    {
      sub_222BF54CC(&v151, v148);
      type metadata accessor for PlusContactSuggestionTagCoreDataRecord();
      if ((swift_dynamicCast() & 1) != 0 && v149)
      {
        MEMORY[0x223DC94A0]();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        sub_222C947AC();
        v139 = v150;
      }

      sub_222C94B9C();
    }

    while (v153);
  }

  else
  {
    v139 = v36;
  }

  (*(v137 + 8))(v11, v7);
  v73 = v139;
  if (v139 >> 62)
  {
    v142 = (v139 & 0xFFFFFFFFFFFFFF8);
    v74 = sub_222C94C6C();
    if (v74)
    {
      goto LABEL_31;
    }

LABEL_59:
    v132 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

  v142 = (v139 & 0xFFFFFFFFFFFFFF8);
  v74 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v74)
  {
    goto LABEL_59;
  }

LABEL_31:
  v75 = 0;
  v76 = v73 & 0xC000000000000001;
  v132 = MEMORY[0x277D84F90];
  do
  {
    v77 = v75;
    while (1)
    {
      if (v76)
      {
        v78 = MEMORY[0x223DC9B30](v77, v73);
      }

      else
      {
        if (v77 >= *(v142 + 2))
        {
          goto LABEL_56;
        }

        v78 = *(v73 + 8 * v77 + 32);
      }

      v79 = v78;
      v75 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v80 = [v78 name];
      if (v80)
      {
        break;
      }

LABEL_34:
      ++v77;
      if (v75 == v74)
      {
        goto LABEL_60;
      }
    }

    v81 = v80;
    sub_222C9449C();

    v73 = v139;
    v82 = sub_222C94FDC();
    v37 = v144;
    swift_bridgeObjectRelease_n();

    if (v82 >= 5)
    {
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v132 = sub_222B4B454(0, *(v132 + 2) + 1, 1, v132);
    }

    v85 = *(v132 + 2);
    v84 = *(v132 + 3);
    if (v85 >= v84 >> 1)
    {
      v132 = sub_222B4B454((v84 > 1), v85 + 1, 1, v132);
    }

    v86 = v132;
    *(v132 + 2) = v85 + 1;
    v86[v85 + 32] = v82;
    v73 = v139;
  }

  while (v75 != v74);
LABEL_60:

LABEL_61:
  v150 = MEMORY[0x277D84F90];
  sub_222C94A0C();
  sub_222BFC640(&qword_27D026B90, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_222C94B9C();
  if (v153)
  {
    v141 = MEMORY[0x277D84F90];
    do
    {
      sub_222BF54CC(&v151, v148);
      type metadata accessor for ThinContactGroundTruthCoreDataRecord();
      if ((swift_dynamicCast() & 1) != 0 && v149)
      {
        MEMORY[0x223DC94A0]();
        if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        sub_222C947AC();
        v141 = v150;
      }

      sub_222C94B9C();
    }

    while (v153);
  }

  (*(v137 + 8))(v37, v7);
  v87 = v141;
  if (v141 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222C94C6C())
  {
    v89 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v90 = 0;
    v91 = v87 & 0xC000000000000001;
    v92 = v87 & 0xFFFFFFFFFFFFFF8;
    v93 = (v145 + 48);
    while (1)
    {
      if (v91)
      {
        v94 = MEMORY[0x223DC9B30](v90, v87);
      }

      else
      {
        if (v90 >= *(v92 + 16))
        {
          goto LABEL_95;
        }

        v94 = *(v87 + 8 * v90 + 32);
      }

      v95 = v94;
      v96 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        break;
      }

      sub_222BFBBE8(v5);

      if ((*v93)(v5, 1, v147) == 1)
      {
        sub_222BFC574(v5);
      }

      else
      {
        sub_222BFC5DC(v5, v146);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_222B4A984(0, v89[2] + 1, 1, v89);
        }

        v98 = v89[2];
        v97 = v89[3];
        if (v98 >= v97 >> 1)
        {
          v89 = sub_222B4A984((v97 > 1), v98 + 1, 1, v89);
        }

        v89[2] = v98 + 1;
        sub_222BFC5DC(v146, v89 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v98);
        v87 = v141;
      }

      ++v90;
      if (v96 == i)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    ;
  }

LABEL_86:

  sub_222C931DC();
  swift_allocObject();
  sub_222C931CC();
  sub_222C9378C();
  sub_222BFC640(&qword_27D026C98, MEMORY[0x277D5E850], MEMORY[0x277D5E458]);
  sub_222C931BC();

  v99 = v151;
  v100 = *(v138 + 16);
  v100(v135, v136, v140);
  v101 = v126;
  [v126 timestamp];
  v103 = v102;
  v104 = MEMORY[0x277D84F90];
  if (v132)
  {
    v105 = v132;
  }

  else
  {
    v105 = MEMORY[0x277D84F90];
  }

  v106 = sub_222B72A0C(v105);

  [v101 score];
  v108 = v107;
  v109 = [v101 scoreHistory];
  if (v109)
  {
    v110 = v109;
    v111 = sub_222C9350C();
    v113 = v112;

    sub_222B80358(v111, v113);
    v114 = sub_222BF4F44(v111, v113);
    sub_222B803C0(v111, v113);
    sub_222B803C0(v111, v113);
    if (v114)
    {
      v104 = v114;
    }
  }

  v115 = v143;
  v116 = v135;
  v117 = v140;
  v100(v143, v135, v140);
  v118 = type metadata accessor for PlusContactSuggestion(0);
  *&v115[v118[5]] = v99;

  v119 = *(&v129 + 1);

  v120 = v129;
  sub_222B450E8(v129, v119, v127, v128);
  v121 = &v115[v118[6]];
  *v121 = v120;
  *(v121 + 1) = v119;
  *(v121 + 2) = 0;
  *(v121 + 3) = 0;
  sub_222C17488(50, v89);
  *&v115[v118[7]] = v122;
  *&v115[v118[8]] = v103;
  *&v115[v118[9]] = v106;
  *&v115[v118[10]] = v108;
  v123 = sub_222C17748(0x32uLL, v104);

  sub_222B803C0(v133, v131);

  v124 = *(v138 + 8);
  v124(v116, v117);
  v124(v136, v117);
  *&v115[v118[11]] = v123;
  return (*(*(v118 - 1) + 56))(v115, 0, 1, v118);
}

void sub_222BFB850(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 contactId];
  if (v4)
  {
    v5 = v4;
    v6 = sub_222C9449C();
    v8 = v7;

    v9 = [v2 contactLabel];
    if (v9)
    {
      v10 = v9;
      v11 = sub_222C9449C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v11;
    a1[3] = v13;
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    v15 = sub_222C942FC();
    v16 = sub_222C94A3C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222B39000, v15, v16, "Contact reference missing mandatory contact id.", v17, 2u);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

uint64_t sub_222BFB9B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_222C935EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v24 - v10;
  v12 = [v2 source];
  if (v12)
  {
    v13 = v12;
    v14 = sub_222C9449C();
    v16 = v15;

    v17 = [v2 timestamp];
    if (v17)
    {
      v18 = v17;
      sub_222C935CC();

      v19 = *(v5 + 32);
      v19(v11, v7, v4);
      v20 = type metadata accessor for ContactSuggestionStoreUpdate(0);
      v19(a1 + *(v20 + 20), v11, v4);
      *a1 = v14;
      a1[1] = v16;
      return (*(*(v20 - 8) + 56))(a1, 0, 1, v20);
    }
  }

  v22 = type metadata accessor for ContactSuggestionStoreUpdate(0);
  v23 = *(*(v22 - 8) + 56);

  return v23(a1, 1, 1, v22);
}

uint64_t sub_222BFBBE8@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v63 - v12;
  v14 = [v1 id];
  if (v14)
  {
    v15 = v14;
    sub_222C9363C();

    v16 = [v1 groundTruthType];
    if (v16)
    {
      v17 = v16;
      v18 = sub_222C9449C();
      v20 = v19;

      v21 = [v1 groundTruthSource];
      if (v21)
      {
        v22 = v21;
        v23 = sub_222C9350C();
        v25 = v24;

        sub_222C931DC();
        swift_allocObject();
        sub_222C931CC();
        sub_222BFC688();
        sub_222C931BC();
        sub_222B803C0(v23, v25);

        LOWORD(v22) = v66;
        LOBYTE(v25) = BYTE2(v66);
        v56 = v65;
        (*(v3 + 32))(v65, v13, v2);
        v57 = type metadata accessor for ThinContactGroundTruth(0);
        v58 = (v56 + *(v57 + 20));
        *v58 = v18;
        v58[1] = v20;
        v59 = v56 + *(v57 + 24);
        *v59 = v22;
        *(v59 + 2) = v25;
        return (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v45 = sub_222C9431C();
      __swift_project_value_buffer(v45, qword_280FE2340);
      (*(v3 + 16))(v9, v13, v2);
      v46 = v3;
      v47 = sub_222C942FC();
      v48 = sub_222C94A4C();
      if (!os_log_type_enabled(v47, v48))
      {

        v61 = *(v46 + 8);
        v61(v9, v2);
        v61(v13, v2);
        goto LABEL_23;
      }

      v49 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66 = v64;
      *v49 = 136315138;
      sub_222BFC640(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v50 = sub_222C9517C();
      v52 = v51;
      v42 = *(v46 + 8);
      v42(v9, v2);
      v53 = sub_222B437C0(v50, v52, &v66);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_222B39000, v47, v48, "PICSStoreCoreData: Failed to retrieve source data when reading ThinContactGroundTruth with ID: %s.", v49, 0xCu);
      v54 = v64;
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x223DCA8C0](v54, -1, -1);
      MEMORY[0x223DCA8C0](v49, -1, -1);
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v34 = sub_222C9431C();
      __swift_project_value_buffer(v34, qword_280FE2340);
      (*(v3 + 16))(v6, v13, v2);
      v35 = sub_222C942FC();
      v36 = sub_222C94A4C();
      if (!os_log_type_enabled(v35, v36))
      {

        v55 = *(v3 + 8);
        v55(v6, v2);
        v55(v13, v2);
        goto LABEL_23;
      }

      v37 = v3;
      v38 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66 = v64;
      *v38 = 136315138;
      sub_222BFC640(&qword_280FE0298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v39 = sub_222C9517C();
      v41 = v40;
      v42 = *(v37 + 8);
      v42(v6, v2);
      v43 = sub_222B437C0(v39, v41, &v66);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_222B39000, v35, v36, "PICSStoreCoreData: Failed to retrieve type when reading ThinContactGroundTruth with ID: %s.", v38, 0xCu);
      v44 = v64;
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x223DCA8C0](v44, -1, -1);
      MEMORY[0x223DCA8C0](v38, -1, -1);
    }

    v42(v13, v2);
LABEL_23:
    v62 = type metadata accessor for ThinContactGroundTruth(0);
    return (*(*(v62 - 8) + 56))(v65, 1, 1, v62);
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v26 = sub_222C9431C();
  __swift_project_value_buffer(v26, qword_280FE2340);
  v27 = sub_222C942FC();
  v28 = sub_222C94A4C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_222B39000, v27, v28, "PICSStoreCoreData: Failed to retrieve ID when reading ThinContactGroundTruth.", v29, 2u);
    MEMORY[0x223DCA8C0](v29, -1, -1);
  }

  v30 = type metadata accessor for ThinContactGroundTruth(0);
  v31 = *(*(v30 - 8) + 56);
  v32 = v30;
  v33 = v65;

  return v31(v33, 1, 1, v32);
}

uint64_t sub_222BFC574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AA8, &qword_222C9A1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BFC5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinContactGroundTruth(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BFC640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_222BFC688()
{
  result = qword_27D026CA0;
  if (!qword_27D026CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CA0);
  }

  return result;
}

unint64_t sub_222BFC6DC()
{
  result = qword_27D026CA8;
  if (!qword_27D026CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CA8);
  }

  return result;
}

uint64_t sub_222BFC730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinContactGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BFC794(uint64_t a1)
{
  v2 = type metadata accessor for ThinContactGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContactSuggestionOutcomeGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContactSuggestionOutcomeGroundTruth.contactQuery.getter()
{
  type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
}

uint64_t type metadata accessor for ContactSuggestionOutcomeGroundTruth(uint64_t a1)
{
  result = qword_280FDC678;
  if (!qword_280FDC678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactSuggestionOutcomeGroundTruth.suggestionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactSuggestionOutcomeGroundTruth(0) + 24);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContactSuggestionOutcomeGroundTruth.contactReference.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ContactSuggestionOutcomeGroundTruth(0) + 28));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

uint64_t ContactSuggestionOutcomeGroundTruth.outcome.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ContactSuggestionOutcomeGroundTruth.domain.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t sub_222BFCA18()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656D6F6374756FLL;
  if (v1 != 4)
  {
    v3 = 0x6E69616D6F64;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 1)
  {
    v4 = 0x51746361746E6F63;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222BFCAD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BFDBD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BFCAF8(uint64_t a1)
{
  v2 = sub_222BFD6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BFCB34(uint64_t a1)
{
  v2 = sub_222BFD6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactSuggestionOutcomeGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026CB0, &qword_222C9FD40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BFD6B8();
  sub_222C9536C();
  LOBYTE(v15[0]) = 0;
  sub_222C9367C();
  sub_222BFD9A0(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
    v15[0] = *(v3 + v9[5]);
    v16 = 1;
    sub_222C9378C();
    sub_222BFD9A0(&qword_27D025A98, MEMORY[0x277D5E850], MEMORY[0x277D5E450]);
    sub_222C9512C();
    LOBYTE(v15[0]) = 2;
    sub_222C9512C();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v15[0] = *v10;
    v15[1] = v11;
    v15[2] = v12;
    v15[3] = v13;
    v16 = 3;
    sub_222BFD70C();

    sub_222C9512C();

    LOWORD(v15[0]) = *(v3 + v9[8]);
    v16 = 4;
    sub_222BBB988();
    sub_222C9512C();
    LOBYTE(v15[0]) = *(v3 + v9[9]);
    v16 = 5;
    sub_222BFD760();
    sub_222C9512C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ContactSuggestionOutcomeGroundTruth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_222C9367C();
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026CD0, &qword_222C9FD48);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = v25 - v8;
  v10 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BFD6B8();
  v32 = v9;
  v13 = v35;
  sub_222C9535C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = v4;
  v28 = v10;
  v35 = a1;
  LOBYTE(v36) = 0;
  sub_222BFD9A0(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_222C9507C();
  v14 = *(v30 + 32);
  v26 = v12;
  v15 = v34;
  v14(v12, v7, v34);
  sub_222C9378C();
  v39 = 1;
  sub_222BFD9A0(&qword_27D026C98, MEMORY[0x277D5E850], MEMORY[0x277D5E458]);
  sub_222C9507C();
  v16 = v15;
  v25[0] = v14;
  v25[1] = 0;
  v17 = v27;
  v18 = v28;
  v19 = v26;
  *&v26[v28[5]] = v36;
  LOBYTE(v36) = 2;
  v20 = v16;
  sub_222C9507C();
  v21 = v35;
  (v25[0])(v19 + v18[6], v17, v20);
  v39 = 3;
  sub_222BFD7B4();
  sub_222C9507C();
  v22 = v37;
  v23 = v19 + v18[7];
  *v23 = v36;
  *(v23 + 8) = v22;
  *(v23 + 16) = v38;
  v39 = 4;
  sub_222BBBBD4();
  sub_222C9507C();
  *(v19 + v18[8]) = v36;
  v39 = 5;
  sub_222BFD808();
  sub_222C9507C();
  (*(v31 + 8))(v32, v33);
  *(v19 + v18[9]) = v36;
  sub_222BFD85C(v19, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return sub_222BFD8C0(v19);
}

BOOL _s28SiriPrivateLearningInference35ContactSuggestionOutcomeGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  v5 = sub_222C9534C();
  sub_222C952FC();
  if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
  {
    sub_222C9531C();
    sub_222C9452C();
  }

  else
  {
    sub_222C9531C();
  }

  if (v5 != sub_222C9534C() || (sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v13 = v11[2];
  v12 = v11[3];
  if ((v7 != *v11 || v8 != v11[1]) && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  if (v10)
  {
    if (!v12 || (v9 != v13 || v10 != v12) && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = v4[8];
  LOWORD(v17[0]) = *(a1 + v14);
  v16 = *(a2 + v14);
  if (_s28SiriPrivateLearningInference17SuggestionOutcomeO2eeoiySbAC_ACtFZ_0(v17, &v16))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  return 0;
}

unint64_t sub_222BFD6B8()
{
  result = qword_27D026CB8;
  if (!qword_27D026CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CB8);
  }

  return result;
}

unint64_t sub_222BFD70C()
{
  result = qword_27D026CC0;
  if (!qword_27D026CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CC0);
  }

  return result;
}

unint64_t sub_222BFD760()
{
  result = qword_27D026CC8;
  if (!qword_27D026CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CC8);
  }

  return result;
}

unint64_t sub_222BFD7B4()
{
  result = qword_27D026CD8;
  if (!qword_27D026CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CD8);
  }

  return result;
}

unint64_t sub_222BFD808()
{
  result = qword_27D026CE0;
  if (!qword_27D026CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CE0);
  }

  return result;
}

uint64_t sub_222BFD85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BFD8C0(uint64_t a1)
{
  v2 = type metadata accessor for ContactSuggestionOutcomeGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BFD91C(uint64_t a1)
{
  *(a1 + 8) = sub_222BFD9A0(&qword_280FDC690, type metadata accessor for ContactSuggestionOutcomeGroundTruth, &protocol conformance descriptor for ContactSuggestionOutcomeGroundTruth);
  result = sub_222BFD9A0(qword_280FDC698, type metadata accessor for ContactSuggestionOutcomeGroundTruth, &protocol conformance descriptor for ContactSuggestionOutcomeGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222BFD9A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222BFDA10(uint64_t a1)
{
  result = sub_222C9367C();
  if (v2 <= 0x3F)
  {
    result = sub_222C9378C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_222BFDAD0()
{
  result = qword_27D026CE8;
  if (!qword_27D026CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CE8);
  }

  return result;
}

unint64_t sub_222BFDB28()
{
  result = qword_27D026CF0;
  if (!qword_27D026CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CF0);
  }

  return result;
}

unint64_t sub_222BFDB80()
{
  result = qword_27D026CF8;
  if (!qword_27D026CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026CF8);
  }

  return result;
}

uint64_t sub_222BFDBD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x51746361746E6F63 && a2 == 0xEC00000079726575 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000222CAC300 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CAC320 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t *sub_222BFDE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *&v52 = a1;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[2] = a3;
  v55[3] = v10;
  v53 = v10;
  v56 = v3;
  v12 = sub_222BDBEE4(sub_222BFEA08, v55, v11);
  v13 = v12;
  v14 = v12[2];
  v54 = v5;
  if (v14)
  {
    sub_222B4FC6C((v12 + 4), &v60, &qword_27D024CE0, &qword_222C96AB8);
    if (v14 != 1)
    {
      v28 = (v13 + 10);
      v29 = 1;
      v5 = &qword_222C96AB8;
      while (v29 < v13[2])
      {
        sub_222B4FC6C(v28, &v63, &qword_27D024CE0, &qword_222C96AB8);
        if (*&v60 >= *&v63)
        {
          sub_222B4FCD4(&v63, &qword_27D024CE0, &qword_222C96AB8);
        }

        else
        {
          sub_222B4FCD4(&v60, &qword_27D024CE0, &qword_222C96AB8);
          v60 = v63;
          v61 = v64;
          v62 = v65;
        }

        ++v29;
        v28 += 48;
        if (v14 == v29)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_24:
      swift_once();
      goto LABEL_7;
    }

LABEL_3:

    v63 = v60;
    v64 = v61;
    v65 = v62;
    v5 = v54;
  }

  else
  {

    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
  }

  sub_222B4FC6C(&v63, &v60, &qword_27D026860, &qword_222C9E440);
  if (!v62)
  {
    sub_222B4FCD4(&v60, &qword_27D026860, &qword_222C9E440);
    goto LABEL_22;
  }

  v4 = *&v60;
  sub_222B405A0((&v60 + 8), v59);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_24;
  }

LABEL_7:
  v15 = sub_222C9431C();
  __swift_project_value_buffer(v15, qword_280FE2340);
  (*(v7 + 16))(v9, v5, a3);
  sub_222B43E3C(v59, &v60);
  v16 = sub_222C942FC();
  v17 = sub_222C94A3C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v58[0] = v19;
    *v18 = 136315394;
    v57[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v20 = sub_222C944EC();
    v22 = v21;
    (*(v7 + 8))(v9, a3);
    v23 = sub_222B437C0(v20, v22, v58);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_222B43E3C(&v60, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
    v24 = sub_222C944EC();
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_0Tm(&v60);
    v27 = sub_222B437C0(v24, v26, v58);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_222B39000, v16, v17, "[%s] Searching for an in app followup for classification %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v19, -1, -1);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v60);
    (*(v7 + 8))(v9, a3);
  }

  v30 = v53;
  sub_222BFE6A4(v52, &v60);
  v31 = v60;
  v32 = v61;
  v33 = v62;
  v53 = *(&v61 + 1);
  v34 = sub_222BFEA28(&v60, a3, v30, v4);
  v35 = sub_222C1EC00(v34);

  if (v35)
  {
    if (*(&v31 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
      v36 = swift_allocObject();
      v52 = xmmword_222C97C40;
      *(v36 + 16) = xmmword_222C97C40;
      sub_222B43E3C(v59, &v60);
      *(v36 + 56) = &type metadata for InAppFollowupClassification;
      *(v36 + 64) = &protocol witness table for InAppFollowupClassification;
      v54 = v36;
      v37 = swift_allocObject();
      v51 = v32;
      v38 = v37;
      *(v36 + 32) = v37;
      sub_222B43E3C(&v60, v37 + 16);
      *(v38 + 56) = v31;
      v40 = *(&v61 + 1);
      v39 = v62;
      __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
      v41 = *(v39 + 8);
      v42 = *(v41 + 16);
      swift_bridgeObjectRetain_n();

      *(v38 + 88) = v42(v40, v41);
      v44 = *(&v61 + 1);
      v43 = v62;
      __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
      v45 = (*(*(v43 + 8) + 24))(v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
      inited = swift_initStackObject();
      *(inited + 16) = v52;
      *(inited + 32) = v31;
      v57[0] = v45;
      sub_222B48F64(inited);
      v47 = v57[0];
      v48 = v53;
      sub_222B5EE44(v31, *(&v31 + 1), v51, v53, v33);
      *(v38 + 96) = v47;
      *(v38 + 72) = v48;
      *(v38 + 80) = v33;
      __swift_destroy_boxed_opaque_existential_0Tm(&v60);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      sub_222B4FCD4(&v63, &qword_27D026860, &qword_222C9E440);
      return v54;
    }
  }

  else
  {
    sub_222B5EE44(v31, *(&v31 + 1), v32, v53, v33);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v59);
LABEL_22:
  sub_222B4FCD4(&v63, &qword_27D026860, &qword_222C9E440);
  return MEMORY[0x277D84F90];
}

uint64_t sub_222BFE4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_222B43E3C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
  if (swift_dynamicCast())
  {
    sub_222B405A0(v17, v20);
    v7 = v21;
    v8 = v22;
    v9 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v19[3] = v7;
    v19[4] = *(v8 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
    v11 = (*(a3 + 24))(v19, a2, a3);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    if (v11)
    {
      v12 = v21;
      v13 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v14 = (*(v13 + 16))(v12, v13);
      if ((v15 & 1) == 0)
      {
        *a4 = v14;
        sub_222B43E3C(v20, a4 + 8);
        return __swift_destroy_boxed_opaque_existential_0Tm(v20);
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    result = sub_222B4FCD4(v17, &qword_27D026D08, &unk_222C9FFF0);
  }

  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

double sub_222BFE6A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for FeaturisedTurn(0);
    v7 = *(v6 - 8);
    v6 -= 8;
    v8 = *(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5 + *(v6 + 36));
    MEMORY[0x28223BE20](v6);

    sub_222B41174(sub_222BFED3C, v8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_222BFE7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026690, &unk_222C9FFE0);
  sub_222BFECD8();
  sub_222B77E04(AssociatedTypeWitness, &v16);
  if (v17)
  {
    *a4 = sub_222C93ECC();
    a4[1] = v13;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(a3 + 40))(a2, a3);
    swift_storeEnumTagMultiPayload();
    return sub_222B99D5C(v11, a4);
  }
}

uint64_t sub_222BFE964(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v7;
  if ((*(a4 + 32))(v11, a3, a4))
  {
    v8 = sub_222B41CFC(v6);
    v9 = v8 ^ 1;
    if (v8 == 2)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_222BFEA28(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v27 = a3;
  v26 = a2;
  *&v28 = type metadata accessor for RuleResult(0);
  MEMORY[0x28223BE20](v28);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v25 = *a1;
  v8 = a1[2];
  v22 = a1[3];
  v23 = v8;
  v21 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222C97C40;
  v12 = (v11 + v10);
  v13 = *(v9 + 48);
  *v12 = 0xD000000000000013;
  v12[1] = 0x8000000222CAC340;
  v24 = v7;
  if (v7)
  {
    v28 = xmmword_222C97C40;
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v6, v12 + v13);
    v14 = swift_allocObject();
    *(v14 + 16) = v28;
    v15 = (v14 + v10);
    v16 = *(v9 + 48);
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_222C94D1C();
    MEMORY[0x223DC9330](0xD000000000000013, 0x8000000222CAC360);
    v17 = v27;
    v18 = v26;
    (*(v27 + 40))(v26, v27);
    sub_222C948DC();
    v19 = v30;
    *v15 = v29;
    v15[1] = v19;
    v29 = v25;
    v30 = v24;
    v31 = v23;
    v32 = v22;
    v33 = v21;
    sub_222BFE7D8(&v29, v18, v17, (v14 + v10 + v16));
    v29 = v11;
    sub_222B4931C(v14);
    return v29;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v6, v12 + v13);
  }

  return v11;
}

unint64_t sub_222BFECD8()
{
  result = qword_27D026D00;
  if (!qword_27D026D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026690, &unk_222C9FFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026D00);
  }

  return result;
}

uint64_t PhoneCallAbandonmentClassification.referencedTurns.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PhoneCallAbandonmentClassification.referencedEvents.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_222BFEE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222BFEE7C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_222BFEECC(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_222C9455C();
    v13[0] = sub_222C945FC();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t AMPSongMetadata.Attributes.song.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AMPSongMetadata.Attributes.artistName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AMPSongMetadata.Attributes.albumName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AMPSongMetadata.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AMPSongMetadata.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = *(v1 + 40);
  *(a1 + 40) = v2;
}

void __swiftcall AMPSongMetadata.init(id:artistName:song:albumName:)(SiriPrivateLearningInference::AMPSongMetadata *__return_ptr retstr, Swift::String id, Swift::String_optional artistName, Swift::String_optional song, Swift::String_optional albumName)
{
  retstr->id = id;
  retstr->attributes.song = song;
  retstr->attributes.artistName = artistName;
  retstr->attributes.albumName = albumName;
}

uint64_t AMPSongMetadata.title.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];

  sub_222C94D1C();

  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v7, v1);

  MEMORY[0x223DC9330](0x2079622022, 0xE500000000000000);
  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 7104878;
  }

  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v8, v9);

  MEMORY[0x223DC9330](0x3A6D75626C612820, 0xE900000000000020);
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 7104878;
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v10, v11);

  MEMORY[0x223DC9330](41, 0xE100000000000000);
  return 34;
}

uint64_t AMPSongMetadata.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[6];
  v7 = v0[7];

  sub_222C94D1C();
  MEMORY[0x223DC9330](0xD000000000000011, 0x8000000222CAC380);
  MEMORY[0x223DC9330](v1, v2);
  MEMORY[0x223DC9330](0x203A676E6F73202CLL, 0xE900000000000022);
  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 7104878;
  }

  if (!v3)
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v9, v3);

  MEMORY[0x223DC9330](0x7369747261202C22, 0xEF203A656D614E74);
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 7104878;
  }

  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v10, v11);

  MEMORY[0x223DC9330](0x4E6D75626C61202CLL, 0xED0000203A656D61);
  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = 7104878;
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x223DC9330](v12, v13);

  return 0;
}

uint64_t *AMPMetadataHelper.__allocating_init(mediaClient:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_222C00820(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

void *AMPMetadataHelper.init(mediaClient:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_222C00548(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

uint64_t sub_222BFF544(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  return MEMORY[0x2822009F8](sub_222BFF564, 0, 0);
}

unint64_t sub_222BFF564()
{
  v1 = v0[36];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v51 = sub_222B6395C(MEMORY[0x277D84F90]);
    v52 = v0[1];

    return v52(v51);
  }

  v54 = v0 + 34;
  v3 = sub_222B63858(MEMORY[0x277D84F90]);
  v4 = 0;
  v5 = 0;
  v6 = (v1 + 40);
  v55 = v0;
  do
  {
    v58 = v2;
    v7 = *(v6 - 1);
    v8 = *v6;
    v0[34] = 47;
    v0[35] = 0xE100000000000000;
    v9 = swift_task_alloc();
    *(v9 + 16) = v54;

    v10 = sub_222BFEECC(sub_222B77BA0, v9, v7, v8);
    v12 = v11;
    v57 = v4;

    v56 = v8;
    if (v12)
    {

      v13 = v7;
      v14 = v7;
      v15 = v8;
    }

    else
    {

      v13 = v7;
      sub_222BB12DC(v10, v7, v8);
      v17 = v16;

      result = sub_222C94B6C();
      if (v19)
      {
        result = v17;
      }

      if (v17 >> 14 < result >> 14)
      {
        goto LABEL_39;
      }

      v20 = sub_222C94B8C();
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v14 = MEMORY[0x223DC92B0](v20, v22, v24, v26);
      v15 = v27;
      v0 = v55;
    }

    sub_222C00924(v5, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = sub_222B8C9DC(v14, v15);
    v31 = v3[2];
    v32 = (v29 & 1) == 0;
    result = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v33 = v29;
    if (v3[3] >= result)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v0[38] = v3;
        if (v29)
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = sub_222B94784();
        v0[38] = v3;
        if (v33)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_222B917E0(result, isUniquelyReferenced_nonNull_native);
      result = sub_222B8C9DC(v14, v15);
      if ((v33 & 1) != (v34 & 1))
      {

        return sub_222C9526C();
      }

      v30 = result;
      v0[38] = v3;
      if (v33)
      {
LABEL_16:

        goto LABEL_20;
      }
    }

    v3[(v30 >> 6) + 8] |= 1 << v30;
    v35 = (v3[6] + 16 * v30);
    *v35 = v14;
    v35[1] = v15;
    *(v3[7] + 8 * v30) = MEMORY[0x277D84F90];
    v36 = v3[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_40;
    }

    v3[2] = v38;
LABEL_20:
    v39 = v3[7];
    v40 = *(v39 + 8 * v30);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v39 + 8 * v30) = v40;
    if ((v41 & 1) == 0)
    {
      v40 = sub_222B49E84(0, *(v40 + 2) + 1, 1, v40);
      *(v39 + 8 * v30) = v40;
    }

    v43 = *(v40 + 2);
    v42 = *(v40 + 3);
    if (v43 >= v42 >> 1)
    {
      v40 = sub_222B49E84((v42 > 1), v43 + 1, 1, v40);
      *(v39 + 8 * v30) = v40;
    }

    v0 = v55;
    *(v40 + 2) = v43 + 1;
    v44 = &v40[16 * v43];
    *(v44 + 4) = v13;
    *(v44 + 5) = v56;
    v6 += 2;
    v5 = sub_222BFFFA4;
    v4 = v57;
    v2 = v58 - 1;
  }

  while (v58 != 1);
  v45 = v55[37];
  v46 = v45[5];
  v47 = v45[6];
  __swift_project_boxed_opaque_existential_1(v45 + 2, v46);
  v48 = v3[2];
  if (v48)
  {
    v49 = sub_222B8C8D4(v48, 0);
    v50 = sub_222B95AD8();

    result = sub_222B504E8(v3);
    if (v50 == v48)
    {
      v0 = v55;
      goto LABEL_35;
    }

LABEL_41:
    __break(1u);
    return result;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_35:
  v0[39] = v49;
  v59 = (*(v47 + 8) + **(v47 + 8));
  v53 = swift_task_alloc();
  v0[40] = v53;
  *v53 = v0;
  v53[1] = sub_222BFFAEC;

  return v59(v49, v46, v47);
}

uint64_t sub_222BFFAEC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_222BFFF38;
  }

  else
  {

    v4 = sub_222BFFC08;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

unint64_t sub_222BFFC08()
{
  v1 = *(v0 + 328);
  v2 = sub_222B6395C(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  v4 = *(v0 + 328);
  if (!v3)
  {
LABEL_28:

    v46 = *(v0 + 8);

    return v46(v2);
  }

  v5 = 0;
  v6 = v4 + 32;
  v48 = *(v1 + 16);
  v49 = v1;
  v47 = v4 + 32;
  while (1)
  {
    v7 = *(v0 + 304);
    v8 = (v6 + (v5 << 6));
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    *(v0 + 48) = v8[2];
    *(v0 + 64) = v9;
    *(v0 + 16) = v11;
    *(v0 + 32) = v10;
    if (!*(v7 + 16))
    {
      goto LABEL_22;
    }

    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    sub_222B95964(v0 + 16, v0 + 80);

    v14 = sub_222B8C9DC(v12, v13);
    LOBYTE(v12) = v15;

    if (v12)
    {
      v51 = *(*(*(*(v0 + 304) + 56) + 8 * v14) + 16);
      if (v51)
      {
        break;
      }
    }

LABEL_21:
    sub_222C00934(v0 + 16);
LABEL_22:
    if (++v5 == v3)
    {
      goto LABEL_28;
    }

    if (v5 >= *(v1 + 16))
    {
      __break(1u);
LABEL_25:

      return sub_222C9526C();
    }
  }

  v50 = v5;

  v17 = 0;
  v18 = (result + 40);
  while (v17 < *(result + 16))
  {
    v27 = result;
    v29 = *(v18 - 1);
    v28 = *v18;
    sub_222B95964(v0 + 16, v0 + 144);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v2;
    result = sub_222B8C9DC(v29, v28);
    v32 = *(v2 + 16);
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_32;
    }

    v36 = v31;
    if (*(v2 + 24) < v35)
    {
      sub_222B914C0(v35, isUniquelyReferenced_nonNull_native);
      result = sub_222B8C9DC(v29, v28);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v36)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v45 = result;
    sub_222B945E4();
    result = v45;
    if (v36)
    {
LABEL_7:
      v19 = result;

      v2 = v52;
      v20 = (v52[7] + (v19 << 6));
      v21 = v20[3];
      v23 = *v20;
      v22 = v20[1];
      *(v0 + 240) = v20[2];
      *(v0 + 256) = v21;
      *(v0 + 208) = v23;
      *(v0 + 224) = v22;
      v24 = *(v0 + 16);
      v25 = *(v0 + 32);
      v26 = *(v0 + 64);
      v20[2] = *(v0 + 48);
      v20[3] = v26;
      *v20 = v24;
      v20[1] = v25;
      sub_222C00934(v0 + 208);
      goto LABEL_8;
    }

LABEL_16:
    v2 = v52;
    v52[(result >> 6) + 8] |= 1 << result;
    v38 = (v52[6] + 16 * result);
    *v38 = v29;
    v38[1] = v28;
    v39 = (v52[7] + (result << 6));
    v41 = *(v0 + 48);
    v40 = *(v0 + 64);
    v42 = *(v0 + 32);
    *v39 = *(v0 + 16);
    v39[1] = v42;
    v39[2] = v41;
    v39[3] = v40;
    v43 = v52[2];
    v34 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v34)
    {
      goto LABEL_33;
    }

    v52[2] = v44;
LABEL_8:
    ++v17;
    v18 += 2;
    result = v27;
    if (v51 == v17)
    {

      v3 = v48;
      v1 = v49;
      v6 = v47;
      v5 = v50;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_222BFFF38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AMPMetadataHelper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_222C0000C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_222C00054(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a4[7] + 2 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}