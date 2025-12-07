void sub_22746AB34(uint64_t a1)
{
  v2 = 0;
  v5 = *(a1 + 56);
  v3 = a1 + 56;
  v4 = v5;
  v6 = 1 << *(v3 - 24);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v32 = v9;
  v33 = v3;
  if ((v7 & v4) != 0)
  {
    do
    {
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(a1 + 48) + 24 * (v11 | (v2 << 6));
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *v1;
      v36 = *v12;
      if (*(*v1 + 16))
      {
        v39 = *v12;
        v40 = v13;
        v41 = v15;
        v17 = v13;
        sub_22766D370();
        v18 = v17;
        v19 = v15;
        sub_226EB396C(v14, v17, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_226F480FC();
        sub_227663B10();
        v20 = sub_22766D3F0();
        v21 = -1 << *(v16 + 32);
        v22 = v20 & ~v21;
        if ((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          sub_226F48150();
          sub_226EC1E18();
          while (1)
          {
            v24 = *(v16 + 48) + 24 * v22;
            v25 = *(v24 + 16);
            v37 = *v24;
            v38 = v25;
            v39 = v36;
            v40 = v17;
            v41 = v19;
            if (sub_227663B20())
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v1 = v34;
          v29 = sub_22700C8C0(v36, v18, v19);
          sub_227010FE0(v29, v30, v31);
          v26 = v36;
          v27 = v18;
          v28 = v19;
          goto LABEL_17;
        }
      }

      else
      {
        v18 = *(v12 + 8);
        v19 = *(v12 + 16);
        sub_226EB396C(v14, v13, v15);
      }

LABEL_16:
      v1 = v34;
      sub_227105A48(&v37, v36, v18, v19);
      v27 = *(&v37 + 1);
      v26 = v37;
      v28 = v38;
LABEL_17:
      sub_226EB2DFC(v26, v27, v28);
      v9 = v32;
      v3 = v33;
    }

    while (v8);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v3 + 8 * v10);
    ++v2;
    if (v8)
    {
      v2 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22746ADD0(uint64_t a1)
{
  sub_2276627D0();
  if (v1 <= 0x3F)
  {
    sub_22746AF74(319);
    if (v2 <= 0x3F)
    {
      sub_22746AFFC(319);
      if (v3 <= 0x3F)
      {
        sub_22746B06C(319);
        if (v4 <= 0x3F)
        {
          sub_22746B1C0(319, &qword_27D7BDE18, &qword_27D7B88C0, &unk_22767A720, sub_226F487F8);
          if (v5 <= 0x3F)
          {
            sub_22746B0C8(319);
            if (v6 <= 0x3F)
            {
              sub_227667370();
              if (v7 <= 0x3F)
              {
                sub_22746B15C(319);
                if (v8 <= 0x3F)
                {
                  sub_22746B1C0(319, &qword_27D7BDE30, &qword_27D7B8560, &unk_227671560, sub_22704B2CC);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22746AF74(uint64_t a1)
{
  if (!qword_27D7BDE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    sub_227668240();
    sub_22704B2CC();
    v1 = sub_22766BEF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7BDE00);
    }
  }
}

void sub_22746AFFC(uint64_t a1)
{
  if (!qword_27D7BDE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    sub_22704B2CC();
    v1 = sub_22766C730();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7BDE08);
    }
  }
}

void sub_22746B06C(uint64_t a1)
{
  if (!qword_27D7BDE10)
  {
    sub_226F4895C();
    v1 = sub_22766C730();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7BDE10);
    }
  }
}

void sub_22746B0C8(uint64_t a1)
{
  if (!qword_27D7BDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B96F0, qword_227674920);
    sub_22704B2CC();
    v1 = sub_22766BEF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7BDE20);
    }
  }
}

void sub_22746B15C(uint64_t a1)
{
  if (!qword_27D7BDE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BAFD0, &unk_227679A90);
    v1 = sub_22766C3D0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7BDE28);
    }
  }
}

void sub_22746B1C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_22766BEF0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22746B238(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22766CD20();
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
      result = sub_22766CD20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2273CCBB4(&qword_27D7BDE48, &qword_27D7BDE40, &unk_227686420);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDE40, &unk_227686420);
            v9 = sub_2275F0174(v13, i, a3);
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
        sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
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

uint64_t sub_22746B3D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22766CD20();
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
      result = sub_22766CD20();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2273CCBB4(&qword_27D7BDE38, &qword_27D7BE650, &unk_227686410);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE650, &unk_227686410);
            v9 = sub_2275F0174(v13, i, a3);
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
        sub_226E99364(0, &qword_27D7BE5D0, 0x277CE6508);
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

uint64_t sub_22746B598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227666900();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22746B5E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_22766B0A0();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_2276694E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  sub_22766B1B0();
  sub_2276694B0();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22706CF74(v10);
    sub_226F1893C();
    swift_allocError();
    *v18 = 9;
    swift_willThrow();
    v19 = sub_22766B1D0();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  else
  {
    v38 = a2;
    v37 = *(v12 + 32);
    v37(v17, v10, v11);
    (*(v12 + 16))(v14, v17, v11);
    v21 = sub_22766B190();
    v39 = v22;
    sub_22766B170();
    v25 = sub_2275D68D0(v7);
    if (v2)
    {
      sub_226EDC420(v21, v39);
      v26 = sub_22766B1D0();
      (*(*(v26 - 8) + 8))(a1, v26);
      v27 = *(v12 + 8);
      v27(v14, v11);
      return (v27)(v17, v11);
    }

    else
    {
      v28 = v23;
      v29 = v25;
      v36 = v24;
      v30 = sub_22766B1D0();
      (*(*(v30 - 8) + 8))(a1, v30);
      (*(v12 + 8))(v17, v11);
      v31 = v38;
      v37(v38, v14, v11);
      result = type metadata accessor for SyncZoneChangeset(0);
      v32 = &v31[*(result + 20)];
      v33 = v39;
      *v32 = v21;
      v32[1] = v33;
      v34 = &v31[*(result + 24)];
      v35 = v36;
      *v34 = v28;
      *(v34 + 1) = v35;
      v34[2] = v29;
    }
  }

  return result;
}

uint64_t sub_22746B994(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766B0A0();
  MEMORY[0x28223BE20](v4);
  sub_2276694C0();
  sub_22766B120();
  v5 = type metadata accessor for SyncZoneChangeset(0);
  sub_226F5E0B4(*(a2 + *(v5 + 20)), *(a2 + *(v5 + 20) + 8));
  sub_22766B110();
  sub_22746BE0C(&qword_281399220, MEMORY[0x277D54530], MEMORY[0x277D54528]);
  result = sub_22766AD80();
  if (!v2)
  {
    return sub_22766B180();
  }

  return result;
}

uint64_t sub_22746BB18()
{
  sub_22766B1D0();
  sub_22746BE0C(&qword_27D7BDE58, MEMORY[0x277D54570], MEMORY[0x277D54568]);
  return sub_22766AD80();
}

uint64_t sub_22746BC20()
{
  sub_22766CE20();

  v1 = sub_227669490();
  MEMORY[0x22AA98450](v1);

  MEMORY[0x22AA98450](0x65676E616863202CLL, 0xED0000203A746573);
  v2 = type metadata accessor for SyncZoneChangeset(0);
  v3 = sub_2275D66A0(*(v0 + *(v2 + 24)), *(v0 + *(v2 + 24) + 8), *(v0 + *(v2 + 24) + 16));
  MEMORY[0x22AA98450](v3);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0x656E6F7A28435A53;
}

uint64_t type metadata accessor for SyncZoneChangeset(uint64_t a1)
{
  result = qword_28139A9A0;
  if (!qword_28139A9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22746BE0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22746BE7C(uint64_t a1)
{
  result = sub_2276694E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_22746BF08(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  sub_22746C2F4();
  v6 = sub_22766C2B0();

  v9 = type metadata accessor for CompoundPredicate(0, *((v5 & v4) + 0x50), v7, v8);
  v12.receiver = v2;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_initWithType_subpredicates_, a1, v6);

  return v10;
}

id sub_22746BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22746C2F4();
  v5 = sub_22766C2C0();
  return sub_22746BF08(a3, v5);
}

id sub_22746C0B8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  v10 = sub_22746C270(v7, v8, a5, v9);

  return v10;
}

id sub_22746C124(void *a1, uint64_t (*a2)(void, void))
{
  v4 = a2(0, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v7.receiver = v2;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_22746C20C(uint64_t (*a1)(void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_22746C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ComparisonPredicate(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_initWithLeftExpression_rightExpression_customSelector_, a1, a2, a3);
}

unint64_t sub_22746C2F4()
{
  result = qword_281398B58;
  if (!qword_281398B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398B58);
  }

  return result;
}

uint64_t sub_22746C348()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22746E72C(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_22746C3BC()
{
  v1 = sub_22766BB50();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_227662750();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDE68, qword_2276866E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_22766B800();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22766BCB0();
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = *(v0 + 40);
  v37 = v0;
  __swift_project_boxed_opaque_existential_0((v0 + 16), v18);
  sub_226E9EF44();
  sub_22766BC70();
  v19 = sub_22766BFD0();
  (*(v10 + 104))(v12, *MEMORY[0x277D21C40], v9);
  sub_22766BC60();

  (*(v10 + 8))(v12, v9);
  sub_22766BC80();
  (*(v6 + 8))(v8, v5);
  if ((BYTE8(v41) & 1) == 0)
  {
    v20 = v29;
    sub_227662740();
    sub_2276625D0();
    (*(v30 + 8))(v20, v31);
  }

  v21 = v33;
  (*(v13 + 16))(v32, v17, v33);
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v22 = [objc_opt_self() ams_sharedAccountStore];
  v39 = sub_22746ECA8();
  v40 = MEMORY[0x277D225B8];
  v38 = v22;
  v23 = [objc_opt_self() currentProcess];
  v24 = v34;
  sub_22766BB40();
  v25 = v36;
  *(&v42 + 1) = v36;
  v43 = MEMORY[0x277D22240];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
  (*(v35 + 32))(boxed_opaque_existential_0, v24, v25);
  (*(v13 + 8))(v17, v21);
  v27 = v37;
  swift_beginAccess();
  sub_22746ECF4(&v41, v27 + 56);
  return swift_endAccess();
}

uint64_t sub_22746C8C4()
{
  swift_beginAccess();
  sub_226EDDC10(v0 + 56, &v7);
  if (v8)
  {
    sub_226E92AB8(&v7, v9);
    sub_226E91B50(v9, &v7);
    v1 = swift_allocObject();
    sub_226E92AB8(&v7, v1 + 16);
    v2 = swift_allocObject();
    *(v2 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v2 + 24) = 40;
    *(v2 + 32) = 2;
    *(v2 + 40) = 54;
    *(v2 + 48) = &unk_227686698;
    *(v2 + 56) = v1;
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_22746E72C(&v7);
    v4 = sub_2276636A0();
    sub_226F09790();
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D50080], v4);
    *(swift_allocObject() + 16) = v5;
    return sub_227669280();
  }
}

uint64_t sub_22746CAA8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_226F10788;

  return MEMORY[0x28217F5A8](v2, v3);
}

uint64_t sub_22746CB5C(uint64_t a1)
{
  swift_beginAccess();
  sub_226EDDC10(v1 + 56, &v9);
  if (v10)
  {
    sub_226E92AB8(&v9, v11);
    sub_226E91B50(v11, &v9);
    v3 = swift_allocObject();
    sub_226E92AB8(&v9, v3 + 16);
    *(v3 + 56) = a1;
    v4 = swift_allocObject();
    *(v4 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v4 + 24) = 40;
    *(v4 + 32) = 2;
    *(v4 + 40) = 64;
    *(v4 + 48) = &unk_227686688;
    *(v4 + 56) = v3;

    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_22746E72C(&v9);
    v6 = sub_2276636A0();
    sub_226F09790();
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D50080], v6);
    *(swift_allocObject() + 16) = v7;
    return sub_227669280();
  }
}

uint64_t sub_22746CD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_22746CD5C, 0, 0);
}

uint64_t sub_22746CD5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = sub_227090024(v2);
  v6 = sub_226F3E6A8(v5);
  v0[4] = v6;

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_22746CE44;

  return MEMORY[0x28217F5B8](v6, v3, v4);
}

uint64_t sub_22746CE44()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22746CF80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22746CF80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22746CFE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = sub_22766BAA0();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22746D0AC, 0, 0);
}

uint64_t sub_22746D0AC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v5);
  v7 = sub_2276637A0();
  v9 = v8;
  v0[8] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D22130], v3);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_22746D1C8;
  v11 = v0[7];
  v12 = v0[4];

  return MEMORY[0x28217F5B0](v7, v9, v11, v12, v5, v6);
}

uint64_t sub_22746D1C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[10] = v2;

  v7 = v6[7];
  v8 = v6[6];
  v9 = v6[5];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);

    v10 = sub_22746D3F0;
  }

  else
  {
    v6[11] = a2;
    v6[12] = a1;
    (*(v8 + 8))(v7, v9);

    v10 = sub_22746D380;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22746D380()
{
  v1 = v0[11];
  v2 = v0[2];
  *v2 = v0[12];
  v2[1] = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_22746D3F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22746D454(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = sub_22766BAA0();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22746D51C, 0, 0);
}

uint64_t sub_22746D51C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v5);
  v7 = sub_2276637A0();
  v9 = v8;
  v0[8] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D22128], v3);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_22746D638;
  v11 = v0[7];
  v12 = v0[4];

  return MEMORY[0x28217F5B0](v7, v9, v11, v12, v5, v6);
}

uint64_t sub_22746D638(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[10] = v2;

  v7 = v6[7];
  v8 = v6[6];
  v9 = v6[5];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);

    v10 = sub_22746ED48;
  }

  else
  {
    v6[11] = a2;
    v6[12] = a1;
    (*(v8 + 8))(v7, v9);

    v10 = sub_22746ED44;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22746D7F0(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  swift_beginAccess();
  sub_226EDDC10(v2 + 56, &v17);
  if (v18)
  {
    sub_226E92AB8(&v17, v19);
    sub_226E91B50(v19, &v17);
    sub_226EDDC60(a2, v8);
    v9 = (*(v6 + 80) + 57) & ~*(v6 + 80);
    v10 = swift_allocObject();
    sub_226E92AB8(&v17, v10 + 16);
    *(v10 + 56) = a1;
    sub_226EDDCD0(v8, v10 + v9);
    v11 = swift_allocObject();
    *(v11 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v11 + 24) = 40;
    *(v11 + 32) = 2;
    *(v11 + 40) = 94;
    *(v11 + 48) = &unk_2276866D0;
    *(v11 + 56) = v10;
    sub_227665E60();
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    sub_22746E72C(&v17);
    v13 = sub_2276636A0();
    sub_226F09790();
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D50080], v13);
    *(swift_allocObject() + 16) = v14;
    sub_227665E60();
    return sub_227669280();
  }
}

uint64_t sub_22746DA78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = a4;
  *(v4 + 208) = a3;
  *(v4 + 152) = a1;
  return MEMORY[0x2822009F8](sub_22746DAA0, 0, 0);
}

uint64_t sub_22746DAA0()
{
  v1 = v0[20];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = sub_2276637A0();
  v6 = v5;
  v0[22] = v5;
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_22746DB84;
  v8 = v0[21];

  return MEMORY[0x28217F5C0](v4, v6, v8, v2, v3);
}

uint64_t sub_22746DB84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_22746DF58;
  }

  else
  {

    v4 = sub_22746DCA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22746DCA0(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = sub_227664820();
  if (*(v2 + 16))
  {
    v5 = sub_226E92000(v3, v4);
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }

    v8 = *(v1 + 192);
    sub_226E97CC0(*(v8 + 56) + 32 * v5, v1 + 16);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = sub_227664800();
    if (*(v2 + 16))
    {
      v11 = sub_226E92000(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_226E97CC0(*(v8 + 56) + 32 * v11, v1 + 48);
        if (swift_dynamicCast())
        {
          v14 = sub_227664810();
          if (*(v2 + 16))
          {
            v16 = sub_226E92000(v14, v15);
            v18 = v17;

            if (v18)
            {
              sub_226E97CC0(*(v8 + 56) + 32 * v16, v1 + 80);

              swift_dynamicCast();
            }

            else
            {
            }
          }

          else
          {
          }

          sub_227665E40();
          v21 = *(v1 + 8);
          goto LABEL_12;
        }
      }
    }

    else
    {
    }
  }

LABEL_11:

  v19 = sub_2276636A0();
  sub_226F09790();
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D50078], v19);
  swift_willThrow();
  v21 = *(v1 + 8);
LABEL_12:

  return v21();
}

uint64_t sub_22746DF58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22746DFBC(char a1)
{
  swift_beginAccess();
  sub_226EDDC10(v1 + 56, &v9);
  if (v10)
  {
    sub_226E92AB8(&v9, v11);
    sub_226E91B50(v11, &v9);
    v3 = swift_allocObject();
    sub_226E92AB8(&v9, v3 + 16);
    *(v3 + 56) = a1;
    v4 = swift_allocObject();
    *(v4 + 16) = "SeymourServices/JetIdentifierStore.swift";
    *(v4 + 24) = 40;
    *(v4 + 32) = 2;
    *(v4 + 40) = 118;
    *(v4 + 48) = &unk_2276866A8;
    *(v4 + 56) = v3;
    sub_227669270();
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_22746E72C(&v9);
    v6 = sub_2276636A0();
    sub_226F09790();
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D50080], v6);
    *(swift_allocObject() + 16) = v7;
    return sub_227669280();
  }
}

uint64_t sub_22746E180(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;

  return MEMORY[0x2822009F8](sub_22746E214, 0, 0);
}

uint64_t sub_22746E214()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = sub_2276637A0();
  v6 = v5;
  v0[5] = v5;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_22746E31C;

  return MEMORY[0x28217F5C8](v4, v6, v2, v3);
}

uint64_t sub_22746E31C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_22746E5E8;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_22746E474;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22746E474()
{
  v1 = objc_opt_self();
  v2 = sub_22766BE90();

  *(v0 + 16) = 0;
  v3 = [v1 dataWithJSONObject:v2 options:2 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = *(v0 + 24);
    v6 = sub_227662590();
    v8 = v7;

    *v5 = v6;
    v5[1] = v8;
  }

  else
  {
    v10 = v4;
    sub_2276622C0();

    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22746E5E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22746E75C(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22746CD3C(a1, v1 + 16, v4);
}

uint64_t sub_22746E820(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22746CA88(a1, v1 + 16);
}

uint64_t sub_22746E8BC(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22746E180(a1, v1 + 16, v4);
}

uint64_t sub_22746E980(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_22746CFE4(a1, v1 + 16, v6, v1 + v5);
}

uint64_t sub_22746EA8C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22746DA78(a1, v1 + 16, v6, v1 + v5);
}

uint64_t sub_22746EB98(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22746D454(a1, v1 + 16, v6, v1 + v5);
}

unint64_t sub_22746ECA8()
{
  result = qword_28139D2A8;
  if (!qword_28139D2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D2A8);
  }

  return result;
}

id sub_22746EDB0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceSubscriptionDialogObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22746EE18(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22766B3B0();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22766B3F0();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  v13 = sub_22766C950();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_22746FC24;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_18;
  v15 = _Block_copy(aBlock);
  v16 = v3;
  v17 = a1;

  sub_22766B3D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_226E9ED60(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v15);
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

void sub_22746F0EC(uint64_t a1, void *a2, uint64_t (*a3)(void *a1), uint64_t a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = off_283AB6788;
    type metadata accessor for ServiceSubscriptionProvider();
    v8 = v7();
    swift_unknownObjectRelease();
    v9 = ~v8 & 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [a2 options];
  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CEE3D8]) init];
  }

  v11 = v10;
  [v10 setAuthenticationType_];
  [a2 setOptions_];
  v12 = [objc_allocWithZone(MEMORY[0x277CEE3E8]) initWithRequest_];
  v13 = [v12 performAuthentication];
  v20 = sub_22746F32C;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_22746F338;
  v19 = &block_descriptor_21;
  v14 = _Block_copy(&v16);
  [v13 addErrorBlock_];
  _Block_release(v14);
  v20 = a3;
  v21 = a4;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_226E9F1D0;
  v19 = &block_descriptor_24;
  v15 = _Block_copy(&v16);

  [v13 addFinishBlock_];
  _Block_release(v15);
}

void sub_22746F338(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22746F3D4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22766B3B0();
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22766B3F0();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  v13 = sub_22766C950();
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  aBlock[4] = sub_22746FC18;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_33;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  v17 = a1;

  sub_22766B3D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_226E9ED60(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v15);
  _Block_release(v15);

  (*(v20 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v19);
}

void sub_22746F6A8(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4)
{
  if (swift_unknownObjectWeakLoadStrong() && (v6 = off_283AB6788, type metadata accessor for ServiceSubscriptionProvider(), v7 = v6(), swift_unknownObjectRelease(), (v7 & 1) != 0))
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CEE6B0]) initWithRequest_];
    v9 = [v8 present];
    v14[4] = sub_22746F8D8;
    v14[5] = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_22746F338;
    v14[3] = &block_descriptor_9;
    v10 = _Block_copy(v14);
    [v9 addErrorBlock_];
    _Block_release(v10);
  }

  else
  {
    v11 = sub_227668FA0();
    sub_226E9ED60(&unk_27D7BDEE0, MEMORY[0x277D53960], MEMORY[0x277D53968]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D53958], v11);
    a2(0, v12);
  }
}

uint64_t sub_22746F8E4(void *a1, const char *a2, ...)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A640();
  v8 = a1;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x22AA995D0](v17[2], v17[3]);
    v15 = sub_226E97AE8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v9, v10, a2, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

double sub_22746FAE4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);

  return result;
}

void sub_22746FB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2276622B0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_22746FC54()
{
  v1 = v0;
  v2 = sub_227669A70();
  v30 = v2;
  v33 = *(v2 - 8);
  v3 = v33;
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v27 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v34 = v10;
  v11 = *(v3 + 104);
  v11(v5, *MEMORY[0x277D4E6F8], v2);
  v12 = v11;
  swift_allocObject();
  v29 = v1;
  swift_weakInit();
  sub_2276651A0();
  swift_unknownObjectRetain_n();
  sub_227669EA0();

  v13 = v33 + 8;
  v31 = *(v33 + 8);
  v14 = v30;
  v31(v5, v30);
  v33 = v13;
  swift_unknownObjectRelease();
  v34 = v10;
  v12(v5, *MEMORY[0x277D4E998], v14);
  v26 = v12;
  swift_allocObject();
  swift_weakInit();
  sub_227666C40();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v15 = v30;
  v31(v5, v30);
  swift_unknownObjectRelease();
  v34 = v10;
  v12(v5, *MEMORY[0x277D4E6B0], v15);
  swift_allocObject();
  swift_weakInit();
  sub_227664DB0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v16 = v31;
  v31(v5, v15);
  swift_unknownObjectRelease();
  v34 = v10;
  v17 = v26;
  v26(v5, *MEMORY[0x277D4E490], v15);
  v28 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v18 = v30;
  v16(v5, v30);

  swift_unknownObjectRelease();
  v34 = v10;
  v17(v5, *MEMORY[0x277D4E7E0], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v16(v5, v18);
  swift_unknownObjectRelease();
  v34 = v10;
  v17(v5, *MEMORY[0x277D4E318], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v19 = v30;
  v16(v5, v30);
  swift_unknownObjectRelease();
  v34 = v10;
  v17(v5, *MEMORY[0x277D4E708], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v31(v5, v19);

  swift_unknownObjectRelease();
  v34 = v10;
  v17(v5, *MEMORY[0x277D4E6B8], v19);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v20 = v31;
  v31(v5, v19);

  swift_unknownObjectRelease();
  v34 = v10;
  v21 = v26;
  v26(v5, *MEMORY[0x277D4EA40], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227667DA0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v22 = v30;
  v20(v5, v30);
  swift_unknownObjectRelease();
  v34 = v10;
  v21(v5, *MEMORY[0x277D4E918], v22);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v23 = v31;
  v31(v5, v22);

  swift_unknownObjectRelease();
  v34 = v10;
  v21(v5, *MEMORY[0x277D4E8B0], v22);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v23(v5, v22);

  return swift_unknownObjectRelease();
}

uint64_t sub_2274706E8@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    a3(a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v8 - 8) + 56))(a4, v7, 1, v8);
}

uint64_t sub_2274707D8@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_226F9ADF4();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

uint64_t sub_2274708AC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    v11 = v10[22];
    v12 = v10[23];
    __swift_project_boxed_opaque_existential_0(v10 + 19, v11);
    v13 = sub_227662750();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    (*(v12 + 16))(v8, v7, v11, v12);

    sub_226EDDD40(v7);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
}

uint64_t sub_227470A64@<X0>(unsigned __int8 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 40);

    v11 = v10[22];
    v12 = v10[23];
    __swift_project_boxed_opaque_existential_0(v10 + 19, v11);
    v13 = sub_227662750();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    (*(v12 + 32))(v8, v7, v11, v12);

    sub_226EDDD40(v7);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  return (*(*(v15 - 8) + 56))(a3, v14, 1, v15);
}

uint64_t sub_227470C1C@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 40);

    v12 = v11[22];
    v13 = v11[23];
    __swift_project_boxed_opaque_existential_0(v11 + 19, v12);
    (*(v13 + 56))(v12, v13);
    (*(v4 + 16))(v6, v9, v3);
    v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v15 = swift_allocObject();
    (*(v4 + 32))(v15 + v14, v6, v3);
    v16 = (v15 + ((v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = sub_226F99470;
    v16[1] = 0;
    sub_227669270();

    (*(v4 + 8))(v9, v3);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v4 + 56))(a2, v17, 1, v3);
}

uint64_t sub_227470E78@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 40);

    sub_22766A740();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[22];
    v10 = v8[23];
    __swift_project_boxed_opaque_existential_0(v8 + 19, v9);
    v11 = MEMORY[0x22AA8FAB0]();
    v12 = sub_226F42F44(v11);

    (*(v10 + 64))(v12, v9, v10);

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

uint64_t sub_22747107C@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_227667DA0();
    sub_227669280();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDEF0, qword_227686780);
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

uint64_t sub_22747116C@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 40);

    v5 = swift_allocObject();
    *(v5 + 16) = "SeymourServices/MetricSystem.swift";
    *(v5 + 24) = 34;
    *(v5 + 32) = 2;
    *(v5 + 40) = 113;
    *(v5 + 48) = &unk_227686778;
    *(v5 + 56) = v4;
    sub_227669270();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

uint64_t sub_2274712A4@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v3 = [objc_opt_self() standardUserDefaults];
    sub_227664860();
    v4 = sub_22766BFD0();

    [v3 removeObjectForKey_];

    sub_2276692A0();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

uint64_t sub_2274714A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_226F9972C(a1, v1);
}

uint64_t sub_227471560@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D38];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2274715E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_227668D10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276675C0();
  v6 = sub_227668D00();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_2274716C0(uint64_t a1)
{
  *(a1 + 24) = sub_227471728(&qword_2813A5600, &unk_2276859B0);
  result = sub_227471728(&unk_2813A55F0, MEMORY[0x277D52EC8]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227471728(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2276675F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227471780()
{
  result = qword_27D7BDEF8;
  if (!qword_27D7BDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDEF8);
  }

  return result;
}

void sub_2274717D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v50 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  v14 = sub_22766B390();
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  v19 = os_log_type_enabled(v17, v18);
  v52 = a3;
  v55 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v51 = v14;
    v21 = v20;
    *v20 = 134349568;
    *(v20 + 4) = *(a1 + 16);
    *(v20 + 12) = 2050;
    *(v20 + 14) = *(a2 + 16);
    *(v20 + 22) = 2050;
    *(v20 + 24) = *(a3 + 16);

    _os_log_impl(&dword_226E8E000, v17, v18, "Handling AssetBundle sync event with %{public}ld inserted, %{public}ld updated, %{public}ld deleted", v21, 0x20u);
    v22 = v21;
    v14 = v51;
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  else
  {
  }

  v23 = a1;
  (*(v56 + 8))(v16, v14);
  v24 = a1 + 56;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 56);
  v28 = (v25 + 63) >> 6;
  v56 = v7 + 16;

  v29 = 0;
  if (v27)
  {
    while (1)
    {
      v30 = v29;
LABEL_12:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      (*(v7 + 16))(v13, *(v23 + 48) + *(v7 + 72) * (v31 | (v30 << 6)), v6);
      sub_227471D38(0, v13);
      (*(v7 + 8))(v13, v6);
      if (!v27)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_12;
    }
  }

  v32 = v55 + 56;
  v33 = 1 << *(v55 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v55 + 56);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v38 = v52;
  while (v35)
  {
    v39 = v37;
LABEL_22:
    v40 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v41 = v54;
    (*(v7 + 16))(v54, *(v55 + 48) + *(v7 + 72) * (v40 | (v39 << 6)), v6);
    sub_227471D38(0, v41);
    (*(v7 + 8))(v41, v6);
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      v42 = 1 << *(v38 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v38 + 56);
      v45 = (v42 + 63) >> 6;

      v46 = 0;
      while (v44)
      {
        v47 = v46;
LABEL_32:
        v48 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v49 = v53;
        (*(v7 + 16))(v53, *(v38 + 48) + *(v7 + 72) * (v48 | (v47 << 6)), v6);
        sub_227471D38(1, v49);
        (*(v7 + 8))(v49, v6);
      }

      while (1)
      {
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_37;
        }

        if (v47 >= v45)
        {

          return;
        }

        v44 = *(v38 + 56 + 8 * v47);
        ++v46;
        if (v44)
        {
          v46 = v47;
          goto LABEL_32;
        }
      }
    }

    v35 = *(v32 + 8 * v39);
    ++v37;
    if (v35)
    {
      v37 = v39;
      goto LABEL_22;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_227471D38(int a1, _BYTE *a2)
{
  LODWORD(v185) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v176 = *(v4 - 8);
  v177 = v4;
  MEMORY[0x28223BE20](v4);
  v175 = &v165[-v5];
  v188 = sub_22766B390();
  v6 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v8 = &v165[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v187 = &v165[-v10];
  MEMORY[0x28223BE20](v11);
  v183 = &v165[-v12];
  MEMORY[0x28223BE20](v13);
  v179 = &v165[-v14];
  MEMORY[0x28223BE20](v15);
  v174 = &v165[-v16];
  MEMORY[0x28223BE20](v17);
  v173 = &v165[-v18];
  MEMORY[0x28223BE20](v19);
  v172 = &v165[-v20];
  v21 = sub_227663480();
  v22 = *(v21 - 8);
  v189 = v21;
  v190 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v165[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v27 = &v165[-v26];
  MEMORY[0x28223BE20](v28);
  v182 = &v165[-v29];
  MEMORY[0x28223BE20](v30);
  v178 = &v165[-v31];
  MEMORY[0x28223BE20](v32);
  v180 = &v165[-v33];
  MEMORY[0x28223BE20](v34);
  v171 = &v165[-v35];
  MEMORY[0x28223BE20](v36);
  v170 = &v165[-v37];
  MEMORY[0x28223BE20](v38);
  v40 = &v165[-v39];
  v184 = sub_227669B90();
  v41 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v43 = &v165[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = v2[65];
  v186 = v2;
  __swift_project_boxed_opaque_existential_0(v2 + 62, v44);
  sub_2276696A0();
  v168 = v41;
  v62 = v6;
  v167 = v8;
  v64 = v192;
  v63 = v193;
  v65 = a2;
  v66 = sub_227663420();
  if (!v63)
  {
    v169 = v64;
    v87 = v62;
    v88 = v168;

    sub_227663430();

    v45 = sub_2276633F0();
    if (v46)
    {
      v181 = v87;
      v63 = 0;
      v47 = 0;
      v48 = v45;
      goto LABEL_4;
    }

    v50 = v87;
    goto LABEL_8;
  }

  if (v64 == v66 && v63 == v67)
  {
    v68 = 1;
  }

  else
  {
    v68 = sub_22766D190();
  }

  v181 = v62;

  if (v64 == sub_227663430() && v63 == v89)
  {

    v88 = v168;
    if ((v68 & 1) == 0)
    {
      v90 = sub_2276633F0();
      if (v91)
      {
        v48 = v90;
        goto LABEL_41;
      }

LABEL_45:
      v50 = v181;
LABEL_8:

      v51 = v187;
      sub_22766A6C0();
      v52 = v189;
      v53 = v190;
      (*(v190 + 16))(v27, v65, v189);
      v54 = sub_22766B380();
      v55 = sub_22766C8B0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v192 = v57;
        *v56 = 141558274;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2080;
        sub_227473130();
        v58 = sub_22766D140();
        v60 = v59;
        (*(v53 + 8))(v27, v52);
        v61 = sub_226E97AE8(v58, v60, &v192);

        *(v56 + 14) = v61;
        _os_log_impl(&dword_226E8E000, v54, v55, "Sync - Ignoring sync event with unknown load status: %{mask.hash}s", v56, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v57);
        MEMORY[0x22AA9A450](v57, -1, -1);
        MEMORY[0x22AA9A450](v56, -1, -1);

        (*(v50 + 8))(v187, v188);
      }

      else
      {

        (*(v53 + 8))(v27, v52);
        (*(v50 + 8))(v51, v188);
      }

      return;
    }
  }

  else
  {
    v92 = v68;
    v93 = sub_22766D190();

    v166 = v92;
    v94 = v92 & v93;
    v88 = v168;
    if ((v94 & 1) == 0)
    {
      v121 = sub_2276633F0();
      if (v122)
      {
        v48 = v121;
        if (((v166 ^ 1) & v93 & 1) == 0)
        {
          v169 = v64;
          v47 = 0;
          goto LABEL_4;
        }

LABEL_41:
        v72 = v181;
        v123 = sub_227131384(v48, &unk_283A94328);
        v169 = v64;
        if (!v123)
        {
LABEL_32:
          v74 = v189;
          v73 = v190;
LABEL_34:
          v75 = v183;
          sub_22766A6C0();
          v76 = v182;
          (*(v73 + 16))(v182, v65, v74);

          v77 = sub_22766B380();
          v110 = sub_22766C8B0();

          if (os_log_type_enabled(v77, v110))
          {
            v111 = swift_slowAlloc();
            v190 = swift_slowAlloc();
            v191[0] = v190;
            *v111 = 136446722;
            v192 = v169;
            v193 = v63;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
            v112 = sub_22766CB80();
            v114 = v113;

            v115 = sub_226E97AE8(v112, v114, v191);

            *(v111 + 4) = v115;
            *(v111 + 12) = 2160;
            *(v111 + 14) = 1752392040;
            *(v111 + 22) = 2080;
            sub_227473130();
            v116 = sub_22766D140();
            v118 = v117;
            (*(v73 + 8))(v76, v74);
            v119 = sub_226E97AE8(v116, v118, v191);

            *(v111 + 24) = v119;
            _os_log_impl(&dword_226E8E000, v77, v110, "Sync - Ingoring event. Device %{public}s isn't downloading device or state is not actionable for bundle %{mask.hash}s", v111, 0x20u);
            v120 = v190;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v120, -1, -1);
            MEMORY[0x22AA9A450](v111, -1, -1);

            (*(v72 + 8))(v183, v188);
            return;
          }

          goto LABEL_37;
        }

        v47 = 1;
LABEL_4:
        swift_getObjectType();
        if (v185)
        {
          sub_227663470();
          sub_227669B80();
          v49 = v184;
          sub_2276699D0();
          v88[1](v43, v49);
          if (v47)
          {

            return;
          }

          v72 = v181;
          goto LABEL_32;
        }

        v185 = v48;
        v69 = *(v190 + 16);
        v187 = v65;
        v168 = v69;
        v69(v40);
        sub_227669B80();
        v70 = v184;
        sub_2276699D0();
        v88[1](v43, v70);
        if ((v47 & 1) == 0)
        {
          v72 = v181;
          v74 = v189;
          v73 = v190;
          v65 = v187;
          goto LABEL_34;
        }

        v71 = v180;
        v72 = v181;
        v74 = v189;
        v73 = v190;
        if (v185 <= 8u)
        {
          if (((1 << v185) & 0x17A) != 0)
          {
            v75 = v179;
            sub_22766A6C0();
            v76 = v178;
            (v168)(v178, v187, v74);
            v77 = sub_22766B380();
            v78 = sub_22766C8B0();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = v75;
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v192 = v81;
              *v80 = 141558274;
              *(v80 + 4) = 1752392040;
              *(v80 + 12) = 2080;
              sub_227473130();
              v82 = sub_22766D140();
              v83 = v76;
              v85 = v84;
              (*(v73 + 8))(v83, v74);
              v86 = sub_226E97AE8(v82, v85, &v192);

              *(v80 + 14) = v86;
              _os_log_impl(&dword_226E8E000, v77, v78, "Sync - Ignoring sync event because remote action is not actionable: %{mask.hash}s", v80, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v81);
              MEMORY[0x22AA9A450](v81, -1, -1);
              MEMORY[0x22AA9A450](v80, -1, -1);

              (*(v72 + 8))(v79, v188);
              return;
            }

LABEL_37:

            (*(v73 + 8))(v76, v74);
            (*(v72 + 8))(v75, v188);
            return;
          }

          if (v185 == 2)
          {
            v124 = v173;
            sub_22766A6C0();
            v125 = v171;
            (v168)(v171, v187, v74);
            v126 = sub_22766B380();
            v127 = sub_22766C8B0();
            if (os_log_type_enabled(v126, v127))
            {
              v128 = v124;
              v129 = swift_slowAlloc();
              v130 = swift_slowAlloc();
              v192 = v130;
              *v129 = 141558274;
              *(v129 + 4) = 1752392040;
              *(v129 + 12) = 2080;
              sub_227473130();
              v131 = sub_22766D140();
              v132 = v125;
              v134 = v133;
              (*(v73 + 8))(v132, v74);
              v135 = sub_226E97AE8(v131, v134, &v192);

              *(v129 + 14) = v135;
              _os_log_impl(&dword_226E8E000, v126, v127, "Sync - Remote device attempting to cancel synced bundle: %{mask.hash}s", v129, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v130);
              MEMORY[0x22AA9A450](v130, -1, -1);
              MEMORY[0x22AA9A450](v129, -1, -1);

              (*(v72 + 8))(v128, v188);
            }

            else
            {

              (*(v73 + 8))(v125, v74);
              (*(v72 + 8))(v124, v188);
            }

            v160 = v176;
            v159 = v177;
            v161 = v175;
            __swift_project_boxed_opaque_existential_0(v186 + 7, v186[10]);
            sub_227497B7C(v187, v161);
            v162 = sub_227669290();
            v163 = swift_allocObject();
            *(v163 + 16) = 0;
            *(v163 + 24) = 0;
            v164 = sub_226EB4544;
LABEL_61:
            v162(v164, v163);

            (*(v160 + 8))(v161, v159);
            return;
          }

          if (v185 == 7)
          {
            v136 = v174;
            sub_22766A6C0();
            (v168)(v71, v187, v74);
            v137 = v136;
            v138 = sub_22766B380();
            v139 = sub_22766C8B0();
            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v192 = v141;
              *v140 = 141558274;
              *(v140 + 4) = 1752392040;
              *(v140 + 12) = 2080;
              sub_227473130();
              v142 = sub_22766D140();
              v143 = v71;
              v145 = v144;
              (*(v73 + 8))(v143, v74);
              v146 = sub_226E97AE8(v142, v145, &v192);

              *(v140 + 14) = v146;
              _os_log_impl(&dword_226E8E000, v138, v139, "Sync - Remote device attempting to cancel synced bundle: %{mask.hash}s", v140, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v141);
              MEMORY[0x22AA9A450](v141, -1, -1);
              MEMORY[0x22AA9A450](v140, -1, -1);
            }

            else
            {

              (*(v73 + 8))(v71, v74);
            }

            (*(v72 + 8))(v137, v188);
            v160 = v176;
            v159 = v177;
            v161 = v175;
            __swift_project_boxed_opaque_existential_0(v186 + 12, v186[15]);
            sub_226F25E48(v187, v161);
            v162 = sub_227669290();
            v163 = swift_allocObject();
            *(v163 + 16) = 0;
            *(v163 + 24) = 0;
            v164 = sub_226E9F7B0;
            goto LABEL_61;
          }
        }

        v147 = v172;
        sub_22766A6C0();
        v148 = v170;
        (v168)(v170, v187, v74);
        v149 = v147;
        v150 = sub_22766B380();
        v151 = sub_22766C8B0();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v192 = v153;
          *v152 = 141558274;
          *(v152 + 4) = 1752392040;
          *(v152 + 12) = 2080;
          sub_227473130();
          v154 = sub_22766D140();
          v155 = v148;
          v157 = v156;
          (*(v73 + 8))(v155, v74);
          v158 = sub_226E97AE8(v154, v157, &v192);

          *(v152 + 14) = v158;
          _os_log_impl(&dword_226E8E000, v150, v151, "Sync - Remote device reqesting load with synced bundle: %{mask.hash}s", v152, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v153);
          MEMORY[0x22AA9A450](v153, -1, -1);
          MEMORY[0x22AA9A450](v152, -1, -1);
        }

        else
        {

          (*(v73 + 8))(v148, v74);
        }

        (*(v72 + 8))(v149, v188);
        v160 = v176;
        v159 = v177;
        v161 = v175;
        __swift_project_boxed_opaque_existential_0(v186 + 7, v186[10]);
        sub_227496AB8(v187, v161);
        v162 = sub_227669290();
        v163 = swift_allocObject();
        *(v163 + 16) = 0;
        *(v163 + 24) = 0;
        v164 = sub_226EB4544;
        goto LABEL_61;
      }

      goto LABEL_45;
    }
  }

  v95 = v167;
  sub_22766A6C0();
  v96 = v190;
  v97 = v24;
  v98 = v24;
  v99 = v65;
  v100 = v95;
  v101 = v189;
  (*(v190 + 16))(v98, v99, v189);
  v102 = sub_22766B380();
  v103 = sub_22766C8B0();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v192 = v105;
    *v104 = 141558274;
    *(v104 + 4) = 1752392040;
    *(v104 + 12) = 2080;
    sub_227473130();
    v106 = sub_22766D140();
    v108 = v107;
    (*(v96 + 8))(v97, v101);
    v109 = sub_226E97AE8(v106, v108, &v192);

    *(v104 + 14) = v109;
    _os_log_impl(&dword_226E8E000, v102, v103, "Sync - Ignoring sync event because action is local for bundle: %{mask.hash}s", v104, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x22AA9A450](v105, -1, -1);
    MEMORY[0x22AA9A450](v104, -1, -1);
  }

  else
  {

    (*(v96 + 8))(v97, v101);
  }

  (*(v181 + 8))(v100, v188);
}

unint64_t sub_227473130()
{
  result = qword_27D7B85C0;
  if (!qword_27D7B85C0)
  {
    sub_227663480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B85C0);
  }

  return result;
}

uint64_t sub_227473188(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227473254, 0, 0);
}

uint64_t sub_227473254()
{
  v1 = *(sub_2276654D0() + 16);

  if (v1)
  {
    v2 = v0[7];
    v3 = v0[3];
    v4 = __swift_project_boxed_opaque_existential_0((v0[4] + 176), *(v0[4] + 200));
    __swift_project_boxed_opaque_existential_0((*v4 + 16), *(*v4 + 40));
    sub_2273229A4(13, v3, v2);
    v5 = swift_task_alloc();
    v0[8] = v5;
    *(v5 + 16) = "SeymourServices/CatalogLockupBuilder.swift";
    *(v5 + 24) = 42;
    *(v5 + 32) = 2;
    *(v5 + 40) = 55;
    *(v5 + 48) = v2;
    v6 = swift_task_alloc();
    v0[9] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
    *v6 = v0;
    v6[1] = sub_227473404;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22747EB2C, v5, v7);
  }

  else
  {

    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_227473404()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2274736F8, 0, 0);
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v7 = v2[2];
    v2[11] = v7;

    (*(v5 + 8))(v4, v6);
    v8 = swift_task_alloc();
    v2[12] = v8;
    *v8 = v3;
    v8[1] = sub_2274735D0;

    return sub_227473854(v7);
  }
}

uint64_t sub_2274735D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2274737E8;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_227473774;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2274736F8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227473774()
{

  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2274737E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227473854(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227473914, 0, 0);
}

uint64_t sub_227473914(uint64_t a1)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 24);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v2, v5);
  __swift_project_boxed_opaque_existential_0(v4 + 42, v4[45]);
  *(v1 + 104) = 14;
  *(v1 + 64) = sub_226F19410();
  *(v1 + 72) = sub_226F19464();
  sub_22766A130();
  v7 = v4[40];
  v8 = v4[41];
  __swift_project_boxed_opaque_existential_0(v4 + 37, v7);
  v9 = swift_allocObject();
  *(v1 + 80) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v4;
  v10 = *(v8 + 24);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v1 + 88) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC288, &qword_2276823D0);
  *v11 = v1;
  v11[1] = sub_227473B94;

  return (v14)(v1 + 16, sub_22747B6EC, v9, v12, v7, v8);
}

uint64_t sub_227473B94()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_227473DBC;
  }

  else
  {

    v2 = sub_227473CB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227473CB0()
{
  v1 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_0((*(v0 + 32) + 336), *(*(v0 + 32) + 360));
  *(v0 + 106) = 14;
  sub_22766A120();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227473DBC()
{
  v1 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_0((v1 + 336), *(v1 + 360));
  *(v0 + 105) = 14;
  sub_22766A120();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227473EC4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_227663590();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_227663DD0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_227665A40();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_227663AB0();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v8 = sub_2276675A0();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();
  v9 = sub_227669480();
  v2[28] = v9;
  v2[29] = *(v9 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v10 = sub_2276654E0();
  v2[32] = v10;
  v11 = *(v10 - 8);
  v2[33] = v11;
  v2[34] = *(v11 + 64);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274742B0, 0, 0);
}

uint64_t sub_2274742B0()
{
  v1 = *(sub_2276654D0() + 16);

  if (v1)
  {
    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[32];
    v5 = v0[33];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v7[40];
    v9 = v7[41];
    __swift_project_boxed_opaque_existential_0(v7 + 37, v8);
    (*(v5 + 16))(v2, v6, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    v0[36] = v11;
    (*(v5 + 32))(v11 + v10, v2, v4);
    *(v11 + ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
    v12 = *(v9 + 24);

    v18 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[37] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
    *v13 = v0;
    v13[1] = sub_2274745A8;

    return (v18)(v0 + 2, sub_22747EA54, v11, v14, v8, v9);
  }

  else
  {

    v16 = v0[1];
    v17 = MEMORY[0x277D84F90];

    return v16(v17);
  }
}

uint64_t sub_2274745A8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_227475394;
  }

  else
  {

    v2 = sub_2274746C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2274746C4()
{
  v57 = v0;
  v1 = v0[2];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;
  v55 = v0[29];
  v50 = v0[23];
  v52 = (v55 + 8);
  v44 = v0[26];
  v7 = v0[38];

  v16 = 0;
  v45 = MEMORY[0x277D84F90];
  v46 = v6;
  v48 = v1;
  v49 = v0;
  v47 = v1 + 56;
  while (1)
  {
    v17 = v16;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v51 = *(v55 + 16);
    v51(v0[31], *(v1 + 48) + *(v55 + 72) * (__clz(__rbit64(v5)) | (v16 << 6)), v0[28]);
    v18 = sub_227669460();
    v19 = *(v18 + 16);
    if (v19)
    {
      v54 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0E0, &qword_227677F08);
      v20 = *(v50 + 72);
      v21 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v22 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v22);
      if (!v20)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        MEMORY[0x2822008A0](v8, v9, v10, v11, v12, v13, v14, v15);
        return;
      }

      if (v8 - v21 == 0x8000000000000000 && v20 == -1)
      {
        goto LABEL_38;
      }

      v22[2] = v19;
      v22[3] = 2 * ((v8 - v21) / v20);
      sub_2274CE0FC(v56, v22 + v21, v19, v18);
      v53 = v24;
      v25 = v56[0];

      v8 = sub_226EBB21C(v25);
      if (v53 != v19)
      {
        goto LABEL_37;
      }

      v1 = v48;
      v0 = v49;
      v6 = v46;
      v2 = v47;
      v7 = v54;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v56[0] = v22;
    sub_22747C470(v56);
    if (v7)
    {

      return;
    }

    v5 &= v5 - 1;

    if (*(v56[0] + 16))
    {
      v26 = v0[30];
      v27 = v0[28];
      v28 = v0[24];
      v29 = v0[22];
      v30 = v0[31];
      (*(v50 + 16))(v28, v56[0] + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v29);

      sub_227663A60();
      (*(v50 + 8))(v28, v29);
      v51(v26, v30, v27);
      sub_227667590();
      (*v52)(v30, v27);
      v31 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2273A6C74(0, v45[2] + 1, 1, v45);
      }

      v33 = v31[2];
      v32 = v31[3];
      v45 = v31;
      v1 = v48;
      v0 = v49;
      v6 = v46;
      v2 = v47;
      if (v33 >= v32 >> 1)
      {
        v45 = sub_2273A6C74((v32 > 1), v33 + 1, 1, v31);
      }

      v34 = v49[27];
      v35 = v49[25];
      v45[2] = v33 + 1;
      v8 = (*(v44 + 32))(v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33, v34, v35);
      v7 = 0;
    }

    else
    {
      (*v52)(v0[31], v0[28]);

      v7 = 0;
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v16 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v16);
    ++v17;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v45[2])
  {
    v36 = v0[21];
    v37 = v0[18];
    v38 = v0[5];
    sub_2276654C0();
    sub_227665A30();
    v39 = __swift_project_boxed_opaque_existential_0((v38 + 176), *(v38 + 200));
    __swift_project_boxed_opaque_existential_0((*v39 + 16), *(*v39 + 40));
    sub_227322D5C(3, v36, v37);
    v40 = swift_task_alloc();
    v0[39] = v40;
    *(v40 + 16) = "SeymourServices/CatalogLockupBuilder.swift";
    *(v40 + 24) = 42;
    *(v40 + 32) = 2;
    *(v40 + 40) = 81;
    *(v40 + 48) = v37;
    v41 = swift_task_alloc();
    v0[40] = v41;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
    *v41 = v0;
    v41[1] = sub_227474D48;
    v13 = sub_22747EAFC;
    v8 = (v0 + 3);
    v12 = 0x8000000227693B00;
    v9 = 0;
    v10 = 0;
    v11 = 0xD000000000000013;
    v14 = v40;

    goto LABEL_39;
  }

  v42 = v0[1];
  v43 = MEMORY[0x277D84F90];

  v42(v43);
}

uint64_t sub_227474D48()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {

    v3 = sub_22747524C;
  }

  else
  {
    v5 = v2[17];
    v4 = v2[18];
    v6 = v2[16];
    v2[42] = v2[3];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227474EA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227474EA8()
{
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v4 = v0[10];
    v32 = MEMORY[0x277D84F90];
    sub_226F20528(0, v2, 0);
    v31 = v32;
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v27 = *(v4 + 56);
    v28 = v5;
    v29 = v3;
    v26 = (v4 - 8);
    do
    {
      v30 = v2;
      v8 = v0[11];
      v7 = v0[12];
      v10 = v0[8];
      v9 = v0[9];
      v12 = v0[6];
      v11 = v0[7];
      v28(v7, v6, v9);
      v28(v8, v7, v9);
      v13 = sub_227662750();
      v14 = *(*(v13 - 8) + 56);
      v14(v10, 1, 1, v13);
      v15 = sub_227665780();
      (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
      v14(v11, 1, 1, v13);
      sub_227663D70();
      (*v26)(v7, v9);
      v17 = *(v31 + 16);
      v16 = *(v31 + 24);
      v18 = v31;
      if (v17 >= v16 >> 1)
      {
        sub_226F20528((v16 > 1), v17 + 1, 1);
        v18 = v31;
      }

      v31 = v18;
      v19 = v0[15];
      v20 = v0[13];
      *(v18 + 16) = v17 + 1;
      (*(v29 + 32))(v18 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v17, v19, v20);
      v6 += v27;
      v2 = v30 - 1;
    }

    while (v30 != 1);
    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];

    (*(v22 + 8))(v21, v23);
    v31 = MEMORY[0x277D84F90];
  }

  v24 = v0[1];

  return v24(v31);
}

uint64_t sub_22747524C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227475394()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2274754B0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v33 = sub_227666F60();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276654D0();
  v9 = *(v8 + 16);
  if (v9)
  {
    v26 = a1;
    v27 = v2;
    v28 = a2;
    v34 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v10 = v34;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v13 = *(v11 + 64);
    v25[1] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v30 = *(v11 + 56);
    v31 = v12;
    v29 = (v11 - 8);
    do
    {
      v15 = v32;
      v16 = v33;
      v31(v32, v14, v33);
      v17 = sub_227666F40();
      v19 = v18;
      (*v29)(v15, v16);
      v34 = v10;
      v20 = *(v10 + 16);
      if (v20 >= *(v10 + 24) >> 1)
      {
        sub_226F1EF90();
        v10 = v34;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;
      v14 += v30;
      --v9;
    }

    while (v9);

    v3 = v27;
    a2 = v28;
    a1 = v26;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v22 = sub_226F3E6A8(v10);

  v23 = v3;
  v24 = sub_227519DAC(v22, a1);

  if (!v23)
  {
    *a2 = v24;
  }
}

char *sub_2274756EC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((v2 + 256), *(v2 + 280));
  sub_2276696A0();
  if (v3)
  {

    v6 = 0;
    v7 = 0;
    v88 = 0;
  }

  else
  {
    v88 = 0;
    v6 = v94[0];
    v7 = v94[1];
  }

  v87 = v6;
  v8 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  sub_227230638(a1);
  v17 = v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v94[0] = v17;
  v18 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v96 = v18;
  v19 = sub_22766C820();
  sub_226E93170(v94, v92, &unk_27D7BC990, &qword_227670A30);
  v20 = v93;
  if (v93)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v92, v93);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v92);
  }

  else
  {
    v26 = 0;
  }

  v90 = objc_opt_self();
  v27 = [v90 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  [objc_allocWithZone(v89) initWithLeftExpression:v19 rightExpression:v27 modifier:0 type:10 options:0];

  sub_226E97D1C(v94, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v94, 0);
  swift_endAccess();

  swift_getKeyPath();
  v32 = v87;
  v91[0] = v87;
  v91[1] = v7;
  if (v7)
  {

    v33 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_226EB3F78(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_226EB3F78((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[16 * v35];
    *(v36 + 4) = v32;
    *(v36 + 5) = v7;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  sub_226E97D1C(v91, &qword_27D7BBC30, &unk_2276720D0);
  v37 = sub_227073F2C(v33);

  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v94[0] = v37;

  v38 = sub_22766C820();
  sub_226E93170(v94, v92, &unk_27D7BC990, &qword_227670A30);
  v39 = v93;
  if (v93)
  {
    v40 = __swift_project_boxed_opaque_existential_0(v92, v93);
    v41 = *(v39 - 8);
    v42 = MEMORY[0x28223BE20](v40);
    v44 = &v87 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44, v42);
    v45 = sub_22766D170();
    (*(v41 + 8))(v44, v39);
    __swift_destroy_boxed_opaque_existential_0(v92);
  }

  else
  {
    v45 = 0;
  }

  v46 = [v90 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v89) initWithLeftExpression:v38 rightExpression:v46 modifier:0 type:10 options:0];

  sub_226E97D1C(v94, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  v87 = v28;
  sub_22766C3A0();
  v47(v94, 0);
  swift_endAccess();

  swift_getKeyPath();
  v50 = sub_227663450();
  v51 = MEMORY[0x277D83B88];
  v95 = MEMORY[0x277D83B88];
  v94[0] = v50;

  v52 = sub_22766C820();
  sub_226E93170(v94, v92, &unk_27D7BC990, &qword_227670A30);
  v53 = v93;
  if (v93)
  {
    v54 = __swift_project_boxed_opaque_existential_0(v92, v93);
    v55 = *(v53 - 8);
    v56 = MEMORY[0x28223BE20](v54);
    v58 = &v87 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v58, v56);
    v59 = sub_22766D170();
    (*(v55 + 8))(v58, v53);
    __swift_destroy_boxed_opaque_existential_0(v92);
  }

  else
  {
    v59 = 0;
  }

  v60 = [v90 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v61 = [objc_allocWithZone(v89) initWithLeftExpression:v52 rightExpression:v60 modifier:0 type:4 options:0];

  sub_226E97D1C(v94, &unk_27D7BC990, &qword_227670A30);
  swift_getKeyPath();
  v62 = sub_227663450();
  v95 = v51;
  v94[0] = v62;

  v63 = sub_22766C820();
  sub_226E93170(v94, v92, &unk_27D7BC990, &qword_227670A30);
  v64 = v93;
  if (v93)
  {
    v65 = __swift_project_boxed_opaque_existential_0(v92, v93);
    v66 = *(v64 - 8);
    v67 = MEMORY[0x28223BE20](v65);
    v69 = &v87 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v69, v67);
    v70 = sub_22766D170();
    (*(v66 + 8))(v69, v64);
    __swift_destroy_boxed_opaque_existential_0(v92);
  }

  else
  {
    v70 = 0;
  }

  v71 = [v90 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v72 = [objc_allocWithZone(v89) initWithLeftExpression:v63 rightExpression:v71 modifier:0 type:4 options:0];

  sub_226E97D1C(v94, &unk_27D7BC990, &qword_227670A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_2276756A0;
  *(v73 + 32) = v61;
  *(v73 + 40) = v72;
  v74 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF20, &qword_2276869F0));
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v75 = v61;
  v76 = v72;
  v77 = sub_22766C2B0();

  v78 = [v74 initWithType:2 subpredicates:v77];

  swift_beginAccess();
  v79 = v78;
  v80 = sub_22766A080();
  v82 = v81;
  MEMORY[0x22AA985C0]();
  if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v80(v94, 0);
  swift_endAccess();

  v83 = sub_2272328B8(100);
  swift_setDeallocating();

  v84 = qword_2813B2078;
  v85 = sub_22766A100();
  (*(*(v85 - 8) + 8))(v13 + v84, v85);
  swift_deallocClassInstance();
  return v83;
}

void sub_227476338(uint64_t *a1, char *a2)
{
  v73 = a2;
  v64 = sub_2276638D0();
  v67 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v62 - v7;
  v8 = sub_227663FA0();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227663DD0();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v15 = *a1;
  v16 = *(*a1 + 16);
  v70 = *a1;
  if (v16)
  {
    v18 = *(v11 + 16);
    v17 = v11 + 16;
    v19 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v77 = *(v17 + 56);
    v78 = v18;
    v76 = (v17 - 8);
    v79 = MEMORY[0x277D84F90];
    v75 = v10;
    do
    {
      v20 = v17;
      (v78)(v14, v19, v10, v12);
      v21 = sub_227663D90();
      v23 = v22;
      v80 = v21;
      v81 = v22;
      v25 = v24 & 1;
      v82 = v24 & 1;
      v83 = 8;
      sub_22747C41C();
      v26 = v10;
      sub_227125DE8();
      v27 = sub_227663B30();
      sub_226EB2DFC(v21, v23, v25);
      if (v27)
      {
        v28 = sub_227663D80();
        v30 = v29;
        (*v76)(v14, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_226EB3F78(0, *(v79 + 2) + 1, 1, v79);
        }

        v17 = v20;
        v32 = *(v79 + 2);
        v31 = *(v79 + 3);
        if (v32 >= v31 >> 1)
        {
          v79 = sub_226EB3F78((v31 > 1), v32 + 1, 1, v79);
        }

        v33 = v79;
        *(v79 + 2) = v32 + 1;
        v34 = &v33[16 * v32];
        *(v34 + 4) = v28;
        *(v34 + 5) = v30;
        v10 = v75;
      }

      else
      {
        (*v76)(v14, v26);
        v10 = v26;
        v17 = v20;
      }

      v19 += v77;
      --v16;
    }

    while (v16);
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  v35 = sub_226F3E6A8(v79);

  v36 = v72;
  __swift_project_boxed_opaque_existential_0((v72 + 216), *(v72 + 240));
  v38 = v73;
  v37 = v74;
  v39 = v71;
  sub_226EAF48C(v73, v74);
  if (v39)
  {
  }

  else
  {
    sub_227663F60();
    sub_22747D8C8(v70, v38, v40);
    v42 = v41;
    v79 = sub_227518A98(v35, v38);
    v78 = sub_2274756EC(v35, v38);

    __swift_project_boxed_opaque_existential_0((v36 + 376), *(v36 + 400));
    v43 = off_283AA53C0;
    type metadata accessor for WorkoutPlanDataStore();
    v44 = v63;
    (v43)(v38);
    v45 = v67;
    v46 = v64;
    if ((*(v67 + 48))(v44, 1, v64) == 1)
    {
      sub_226E97D1C(v44, &unk_27D7BB920, &unk_227672480);
      v47 = sub_227664EC0();
      sub_226EAC0FC(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      v48 = swift_allocError();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D511A8], v47);
      swift_willThrow();

      v50 = 1;
      v51 = v65;
    }

    else
    {
      v52 = v44;
      v53 = *(v45 + 32);
      v54 = v62;
      v53(v62, v52, v46);
      v55 = v53;
      v51 = v65;
      v55(v65, v54, v46);
      v45 = v67;
      v50 = 0;
    }

    v56 = (*(v45 + 56))(v51, v50, 1, v46);
    MEMORY[0x28223BE20](v56);
    *(&v62 - 8) = v51;
    *(&v62 - 7) = v36;
    *(&v62 - 6) = v37;
    *(&v62 - 5) = v38;
    v58 = v78;
    v57 = v79;
    *(&v62 - 4) = v42;
    *(&v62 - 3) = v57;
    *(&v62 - 2) = v58;
    sub_2275F2BDC(sub_22747E154, (&v62 - 10), v70);
    v59 = v51;
    v61 = v60;

    *v66 = v61;
    sub_226E97D1C(v59, &unk_27D7BB920, &unk_227672480);
    (*(v68 + 8))(v37, v69);
  }
}

uint64_t sub_227476A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v139 = a8;
  v138 = a7;
  v136 = a6;
  v134 = a5;
  v133 = a4;
  v129 = a3;
  v147 = a2;
  v154 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF00, &qword_227686908);
  MEMORY[0x28223BE20](v10 - 8);
  v146 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v145 = &v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v14 - 8);
  v144 = &v129 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF48, &unk_227682548);
  MEMORY[0x28223BE20](v16 - 8);
  v143 = &v129 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF08, &qword_227686910);
  MEMORY[0x28223BE20](v18 - 8);
  v153 = &v129 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v20 - 8);
  v152 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v151 = &v129 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF10, &qword_227686918);
  MEMORY[0x28223BE20](v24 - 8);
  v150 = &v129 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  MEMORY[0x28223BE20](v26 - 8);
  v149 = &v129 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v28 - 8);
  v141 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v140 = &v129 - v31;
  MEMORY[0x28223BE20](v32);
  v137 = &v129 - v33;
  MEMORY[0x28223BE20](v34);
  v135 = &v129 - v35;
  MEMORY[0x28223BE20](v36);
  v157 = &v129 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF18, qword_227686920);
  MEMORY[0x28223BE20](v38 - 8);
  v142 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v155 = &v129 - v41;
  v132 = sub_2276627D0();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v129 - v44;
  v46 = sub_2276638D0();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v129 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v51 = sub_227663D90();
  v53 = v52;
  v158[0] = v51;
  v158[1] = v52;
  v55 = v54 & 1;
  LOBYTE(v159) = v54 & 1;
  v160 = 8;
  sub_22747C41C();
  sub_227125DE8();
  v56 = sub_227663B30();
  sub_226EB2DFC(v51, v53, v55);
  if ((v56 & 1) == 0)
  {
    v59 = sub_227663DD0();
    return (*(*(v59 - 8) + 16))(v154, v50, v59);
  }

  v148 = v50;
  sub_226E93170(v147, v45, &unk_27D7BB920, &unk_227672480);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_226E97D1C(v45, &unk_27D7BB920, &unk_227672480);
    v57 = MEMORY[0x277D84F90];
    v58 = v156;
LABEL_7:
    v69 = v148;
    v70 = v136;
    goto LABEL_8;
  }

  v61 = v49;
  (*(v47 + 32))(v49, v45, v46);
  v62 = sub_2276637D0();
  MEMORY[0x28223BE20](v62);
  v127 = v148;
  v63 = v156;
  sub_227469E40(sub_22747E1AC, v126, v62);

  v64 = v130;
  sub_2276637C0();
  sub_227663F70();
  v66 = v65;
  v67 = sub_226F491E8();
  v68 = sub_22727FE50(v64, v67, v134, v66);
  if (v63)
  {

    (*(v131 + 8))(v64, v132);
    (*(v47 + 8))(v49, v46);

    v58 = 0;
    v57 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v119 = v68;
  (*(v131 + 8))(v64, v132);

  v120 = sub_2276637D0();

  v121 = sub_22747E674(v120, v119);
  v58 = 0;

  swift_bridgeObjectRelease_n();
  v122 = v121[2];
  if (!v122)
  {
    goto LABEL_34;
  }

  v57 = sub_2274CDB7C(v121[2], 0);
  v123 = *(sub_227665F20() - 8);
  sub_2274CF034(v158, &v57[(*(v123 + 80) + 32) & ~*(v123 + 80)], v122, v121);
  v125 = v124;
  sub_226EBB21C(v158[0]);
  if (v125 != v122)
  {
    __break(1u);
LABEL_34:

    v57 = MEMORY[0x277D84F90];
  }

  v69 = v148;
  v70 = v136;
  (*(v47 + 8))(v61, v46);
LABEL_8:
  v71 = sub_227663DB0();
  v134 = v57;
  if (v72)
  {
    if (*(v70 + 16))
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  v71 = sub_227663D80();
  if (!*(v70 + 16))
  {
    goto LABEL_13;
  }

LABEL_10:
  v73 = sub_226E92000(v71, v72);
  v75 = v74;

  if ((v75 & 1) == 0)
  {
LABEL_14:
    v136 = 0;
    goto LABEL_15;
  }

  v136 = *(*(v70 + 56) + 8 * v73);
LABEL_15:
  MEMORY[0x28223BE20](v76);
  v127 = v69;
  sub_227543C38(sub_22747E18C, v138, v155);
  sub_227663D80();
  v77 = v157;
  sub_22766C580();

  v78 = v77;
  v79 = v135;
  sub_226E93170(v78, v135, &unk_27D7BD3F0, &unk_2276823F0);
  v80 = sub_227663480();
  v81 = *(v80 - 8);
  v82 = *(v81 + 48);
  v83 = v82(v79, 1, v80);
  v156 = v58;
  v147 = v81;
  if (v83 == 1)
  {
    sub_226E97D1C(v79, &unk_27D7BD3F0, &unk_2276823F0);
    v84 = sub_227665780();
    (*(*(v84 - 8) + 56))(v149, 1, 1, v84);
  }

  else
  {
    sub_2276633E0();
    (*(v81 + 8))(v79, v80);
    __swift_project_boxed_opaque_existential_0((v129 + 56), *(v129 + 80));
    v85 = off_283AA0128[0];
    type metadata accessor for AssetBundleProgressPublisher();
    v85();
  }

  v86 = v151;
  v87 = v137;
  v88 = sub_227664EF0();
  (*(*(v88 - 8) + 56))(v150, 1, 1, v88);
  sub_226E93170(v157, v87, &unk_27D7BD3F0, &unk_2276823F0);
  if (v82(v87, 1, v80) == 1)
  {
    sub_226E97D1C(v87, &unk_27D7BD3F0, &unk_2276823F0);
    v89 = 1;
  }

  else
  {
    sub_227663400();
    (*(v147 + 8))(v87, v80);
    v89 = 0;
  }

  v90 = sub_227662750();
  v91 = *(*(v90 - 8) + 56);
  v91(v86, v89, 1, v90);
  v92 = v140;
  sub_226E93170(v157, v140, &unk_27D7BD3F0, &unk_2276823F0);
  if (v82(v92, 1, v80) == 1)
  {
    sub_226E97D1C(v92, &unk_27D7BD3F0, &unk_2276823F0);
    v139 = 0;
    v93 = 255;
  }

  else
  {
    v139 = sub_2276633F0();
    v95 = v94;
    (*(v147 + 8))(v92, v80);
    v93 = v95 & 1;
  }

  LODWORD(v140) = v93;
  v96 = v152;
  v97 = v141;
  sub_226E93170(v157, v141, &unk_27D7BD3F0, &unk_2276823F0);
  if (v82(v97, 1, v80) == 1)
  {
    sub_226E97D1C(v97, &unk_27D7BD3F0, &unk_2276823F0);
    v141 = 0;
    v98 = 255;
  }

  else
  {
    v141 = sub_227663460();
    v100 = v99;
    (*(v147 + 8))(v97, v80);
    v98 = v100 & 1;
  }

  LODWORD(v147) = v98;
  v101 = v142;
  v102 = v134;
  sub_226E93170(v155, v142, &qword_27D7BDF18, qword_227686920);
  v103 = sub_227669360();
  v104 = *(v103 - 8);
  if ((*(v104 + 48))(v101, 1, v103) == 1)
  {
    sub_226E97D1C(v101, &qword_27D7BDF18, qword_227686920);
    v105 = 1;
  }

  else
  {
    sub_227669330();
    (*(v104 + 8))(v101, v103);
    v105 = 0;
  }

  v91(v96, v105, 1, v90);
  v106 = *(v102 + 2);

  LODWORD(v142) = v106 != 0;
  v107 = sub_227663550();
  (*(*(v107 - 8) + 56))(v153, 1, 1, v107);
  v108 = sub_227669180();
  v109 = v143;
  (*(*(v108 - 8) + 56))(v143, 1, 1, v108);
  v110 = sub_2276624A0();
  v111 = v144;
  (*(*(v110 - 8) + 56))(v144, 1, 1, v110);
  v112 = sub_227664150();
  v113 = *(*(v112 - 8) + 56);
  v114 = v145;
  v113(v145, 1, 1, v112);
  v115 = v146;
  v113(v146, 1, 1, v112);
  v127 = 0;
  v128 = v115;
  v126[0] = 0;
  v126[1] = v114;
  v116 = v149;
  v118 = v150;
  v117 = v151;
  sub_227663DC0();
  sub_226E97D1C(v115, &qword_27D7BDF00, &qword_227686908);
  sub_226E97D1C(v114, &qword_27D7BDF00, &qword_227686908);
  sub_226E97D1C(v111, &unk_27D7BB570, &unk_227670FC0);
  sub_226E97D1C(v109, &qword_27D7BCF48, &unk_227682548);
  sub_226E97D1C(v153, &qword_27D7BDF08, &qword_227686910);
  sub_226E97D1C(v152, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(v117, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(v118, &qword_27D7BDF10, &qword_227686918);
  sub_226E97D1C(v116, &qword_27D7BA488, &unk_227678CE0);
  sub_226E97D1C(v157, &unk_27D7BD3F0, &unk_2276823F0);
  return sub_226E97D1C(v155, &qword_27D7BDF18, qword_227686920);
}

uint64_t sub_227477CE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v24[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v13 = *a2;
  v12 = a2[1];
  v14 = sub_227665F20();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v11, a1, v14);
  v16 = &v11[*(v6 + 56)];
  *v16 = v13;
  *(v16 + 1) = v12;
  sub_226E93170(v11, v8, &qword_27D7BC168, &qword_22767CCF8);

  v17 = sub_227667380();
  v19 = v18;

  if (v17 == sub_227663D80() && v19 == v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_22766D190();
  }

  sub_226E97D1C(v11, &qword_27D7BC168, &qword_22767CCF8);
  (*(v15 + 8))(v8, v14);
  return v22 & 1;
}

uint64_t sub_227477EDC(uint64_t a1)
{
  v1 = sub_227669350();
  v3 = v2;
  if (v1 == sub_227663D80() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22766D190();
  }

  return v5 & 1;
}

void sub_227477F78(uint64_t *a1, void *a2)
{
  v43 = a2;
  v3 = sub_227663FA0();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227663DD0();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  v37 = *a1;
  v38 = a1;
  if (v11)
  {
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v47 = *(v12 + 56);
    v48 = v13;
    v46 = (v12 - 8);
    v15 = MEMORY[0x277D84F90];
    v45 = v5;
    v49 = v12;
    v13(v9, v14, v5, v7);
    while (1)
    {
      v17 = sub_227663D90();
      v19 = v18;
      v50 = v17;
      v51 = v18;
      v21 = v20 & 1;
      v52 = v20 & 1;
      v53 = 6;
      sub_22747C41C();
      sub_227125DE8();
      v22 = sub_227663B30();
      sub_226EB2DFC(v17, v19, v21);
      if (v22)
      {
        v23 = sub_227663D80();
        v25 = v24;
        (*v46)(v9, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_226EB3F78(0, *(v15 + 2) + 1, 1, v15);
        }

        v27 = *(v15 + 2);
        v26 = *(v15 + 3);
        if (v27 >= v26 >> 1)
        {
          v15 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v15);
        }

        *(v15 + 2) = v27 + 1;
        v28 = &v15[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
        v5 = v45;
      }

      else
      {
        (*v46)(v9, v5);
      }

      v14 += v47;
      if (!--v11)
      {
        break;
      }

      v48(v9, v14, v5, v16);
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v29 = sub_226F3E6A8(v15);

  __swift_project_boxed_opaque_existential_0((v41 + 216), *(v41 + 240));
  v30 = v43;
  v31 = v44;
  v32 = v42;
  sub_226EAF48C(v43, v44);
  if (v32)
  {
  }

  else
  {
    v33 = sub_226F7EB64(v29, v30);

    MEMORY[0x28223BE20](v34);
    *(&v37 - 2) = v33;
    *(&v37 - 1) = v31;
    sub_2275F2BDC(sub_22747D888, (&v37 - 4), v37);
    v36 = v35;

    *v38 = v36;
    (*(v39 + 8))(v31, v40);
  }
}

uint64_t sub_227478358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a4;
  v63 = a3;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF00, &qword_227686908);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF48, &unk_227682548);
  MEMORY[0x28223BE20](v11 - 8);
  v65 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF08, &qword_227686910);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  MEMORY[0x28223BE20](v15 - 8);
  v69 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF10, &qword_227686918);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v58 - v24;
  v26 = sub_227663D90();
  v28 = v27;
  v73 = v26;
  v74 = v27;
  v30 = v29 & 1;
  v75 = v29 & 1;
  v76 = 6;
  sub_22747C41C();
  sub_227125DE8();
  v31 = sub_227663B30();
  v32 = sub_226EB2DFC(v26, v28, v30);
  if (v31)
  {
    MEMORY[0x28223BE20](v32);
    v60 = a1;
    v33 = v64;
    v56 = a1;
    v57 = v63;

    v34 = v72;
    v35 = sub_22735ABE4(sub_22747D8A8, v55, v33);
    v72 = v34;
    v36 = sub_227664EF0();
    v37 = *(*(v36 - 8) + 56);
    v62 = v25;
    v37(v25, 1, 1, v36);
    v38 = sub_227662750();
    v39 = *(*(v38 - 8) + 56);
    v61 = v22;
    v39(v22, 1, 1, v38);
    v40 = sub_227665780();
    (*(*(v40 - 8) + 56))(v69, 1, 1, v40);
    v64 = v35[2];

    v59 = v19;
    v39(v19, 1, 1, v38);
    v41 = sub_227663550();
    (*(*(v41 - 8) + 56))(v70, 1, 1, v41);
    v42 = sub_227669180();
    v43 = v65;
    (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
    v44 = sub_2276624A0();
    v45 = v66;
    (*(*(v44 - 8) + 56))(v66, 1, 1, v44);
    v46 = sub_227664150();
    v47 = *(*(v46 - 8) + 56);
    v48 = v67;
    v47(v67, 1, 1, v46);
    v49 = v68;
    v47(v68, 1, 1, v46);
    v56 = 0;
    v57 = v49;
    v55[0] = 0;
    v55[1] = v48;
    v50 = v69;
    v52 = v61;
    v51 = v62;
    sub_227663DC0();
    sub_226E97D1C(v49, &qword_27D7BDF00, &qword_227686908);
    sub_226E97D1C(v48, &qword_27D7BDF00, &qword_227686908);
    sub_226E97D1C(v45, &unk_27D7BB570, &unk_227670FC0);
    sub_226E97D1C(v43, &qword_27D7BCF48, &unk_227682548);
    sub_226E97D1C(v70, &qword_27D7BDF08, &qword_227686910);
    sub_226E97D1C(v59, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(v50, &qword_27D7BA488, &unk_227678CE0);
    sub_226E97D1C(v52, &qword_27D7B9690, qword_227670B50);
    return sub_226E97D1C(v51, &qword_27D7BDF10, &qword_227686918);
  }

  else
  {
    v54 = sub_227663DD0();
    return (*(*(v54 - 8) + 16))(v71, a1, v54);
  }
}

BOOL sub_227478B1C(uint64_t a1)
{
  v1 = sub_227665050();
  v3 = v2;
  if (v1 == sub_227663D80() && v3 == v4)
  {
  }

  else
  {
    v5 = sub_22766D190();

    result = 0;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  sub_227665090();
  v7 = 0.0;
  if (v8 > 0.0)
  {
    sub_227665040();
    v10 = v9;
    sub_227665090();
    v7 = v10 / v11;
  }

  sub_227663F00();
  return v12 <= v7;
}

uint64_t sub_227478C18()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);

  return swift_deallocClassInstance();
}

uint64_t sub_227478CBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 276) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA3D0, &unk_22767E500);
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_2276685B0();
  *(v5 + 72) = v7;
  v8 = *(v7 - 8);
  *(v5 + 80) = v8;
  *(v5 + 88) = *(v8 + 64);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v9 = sub_2276642E0();
  *(v5 + 112) = v9;
  v10 = *(v9 - 8);
  *(v5 + 120) = v10;
  *(v5 + 128) = *(v10 + 64);
  *(v5 + 136) = swift_task_alloc();
  v11 = sub_227668E80();
  *(v5 + 144) = v11;
  *(v5 + 152) = *(v11 - 8);
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227478EC0, 0, 0);
}

uint64_t sub_227478EC0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v22 = *(v0 + 276);
  v7 = *(v0 + 24);
  v8 = v6[41];
  v21 = v6[40];
  __swift_project_boxed_opaque_existential_0(v6 + 37, v21);
  v9 = *(v4 + 16);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v7, v3);
  v10 = *(v4 + 80);
  *(v0 + 272) = v10;
  v11 = (v10 + 24) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 184) = v12;
  *(v12 + 16) = v6;
  v13 = *(v4 + 32);
  *(v0 + 192) = v13;
  *(v0 + 200) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v11, v2, v3);
  v14 = v12 + ((v1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v5;
  *(v14 + 8) = v22 & 1;
  v15 = *(v8 + 24);

  v20 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v0 + 208) = v16;
  *v16 = v0;
  v16[1] = sub_2274790F0;
  v17 = *(v0 + 160);
  v18 = *(v0 + 144);

  return (v20)(v17, sub_22747E834, v12, v18, v21, v8);
}

uint64_t sub_2274790F0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_2274799F0;
  }

  else
  {

    v2 = sub_22747920C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22747920C()
{
  v1 = v0[20];
  v2 = v0[8];
  v3 = __swift_project_boxed_opaque_existential_0((v0[5] + 176), *(v0[5] + 200));
  __swift_project_boxed_opaque_existential_0((*v3 + 16), *(*v3 + 40));
  sub_2272B1194(3, v1, v2);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *(v4 + 16) = "SeymourServices/CatalogLockupBuilder.swift";
  *(v4 + 24) = 42;
  *(v4 + 32) = 2;
  *(v4 + 40) = 298;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_227479354;
  v6 = v0[13];
  v7 = v0[9];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22747E8E8, v4, v7);
}

uint64_t sub_227479354()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_22747983C;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = sub_2274794A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2274794A4()
{
  v23 = *(v0 + 192);
  v19 = *(v0 + 168);
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v20 = *(v0 + 104);
  v21 = v1;
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = (*(v0 + 272) + 24) & ~*(v0 + 272);
  v18 = v8 + *(v0 + 128);
  v25 = v6[40];
  v22 = v6[41];
  __swift_project_boxed_opaque_existential_0(v6 + 37, v25);
  v9 = v1;
  v10 = v2;
  v19(v9, v7, v2);
  (*(v4 + 16))(v3, v20, v5);
  v11 = (v18 + *(v4 + 80)) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v0 + 248) = v12;
  *(v12 + 16) = v6;
  v23(v12 + v8, v21, v10);
  (*(v4 + 32))(v12 + v11, v3, v5);
  v13 = *(v22 + 24);

  v24 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  v15 = sub_227665D90();
  *v14 = v0;
  v14[1] = sub_22747970C;
  v16 = *(v0 + 16);

  return (v24)(v16, sub_22747E900, v12, v15, v25, v22);
}

uint64_t sub_22747970C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_227479A98;
  }

  else
  {
    v2 = sub_227479914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22747983C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227479914()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[10] + 8))(v0[13], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2274799F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227479A98()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[10] + 8))(v0[13], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_227479B70(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v33 = a4;
  v34 = a3;
  v32 = a6;
  v9 = sub_2276642E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227663FA0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 216), *(a2 + 240));
  sub_226EAF48C(a1, v16);
  if (!v6)
  {
    v26 = a1;
    v27 = v10;
    v29 = v14;
    v30 = v13;
    v28 = v9;
    v17 = v34;
    v31 = 0;
    if (v35)
    {
      sub_227663F70();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = sub_227664230();
      *(inited + 40) = v21;
      v22 = sub_226F4BE8C(inited);
      swift_setDeallocating();
      sub_226FA6DA4(inited + 32);
      v23 = v31;
      sub_22701D97C(v22, v26, v19);
      v31 = v23;
      if (v23)
      {
        (*(v29 + 8))(v16, v30);

        return;
      }

      v25 = v29;
      v24 = v30;
    }

    else
    {
      v25 = v29;
      v24 = v30;
    }

    (*(v27 + 16))(v12, v17, v28);
    sub_227668E70();
    (*(v25 + 8))(v16, v24);
  }
}

void sub_227479E1C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v147 = a4;
  v153 = a2;
  v152 = a1;
  v141 = a5;
  v140 = sub_2276642E0();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227669180();
  MEMORY[0x28223BE20](v7 - 8);
  v137 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_227663FA0();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v142 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EF8, &qword_227672908);
  MEMORY[0x28223BE20](v10 - 8);
  v146 = &v127 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v12 - 8);
  v136 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v144 = &v127 - v15;
  MEMORY[0x28223BE20](v16);
  v148 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  MEMORY[0x28223BE20](v18 - 8);
  v143 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v150 = &v127 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v127 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v127 - v29;
  MEMORY[0x28223BE20](v31);
  v149 = (&v127 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = (&v127 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  v145 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  v151 = a3;
  *(inited + 32) = sub_227664230();
  *(inited + 40) = v38;
  v39 = sub_226F4BE8C(inited);
  swift_setDeallocating();
  v40 = v152;
  sub_226FA6DA4(inited + 32);
  v41 = v154;
  sub_2274756EC(v39, v40);
  v154 = v41;
  if (v41)
  {

    return;
  }

  v133 = v36;
  v127 = v30;
  v130 = v27;
  v131 = v24;

  sub_227664230();
  sub_22766C580();

  v42 = v149;
  sub_226E93170(v35, v149, &unk_27D7BD3F0, &unk_2276823F0);
  v43 = sub_227663480();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  v129 = v44 + 48;
  v46 = v45(v42, 1, v43);
  v128 = v45;
  if (v46 == 1)
  {
    sub_226E97D1C(v42, &unk_27D7BD3F0, &unk_2276823F0);
    v47 = sub_227665780();
    (*(*(v47 - 8) + 56))(v150, 1, 1, v47);
  }

  else
  {
    sub_2276633E0();
    (*(v44 + 8))(v42, v43);
    __swift_project_boxed_opaque_existential_0((v153 + 56), *(v153 + 80));
    v48 = off_283AA0128[0];
    type metadata accessor for AssetBundleProgressPublisher();
    v48();
  }

  v132 = v44;
  v49 = __swift_project_boxed_opaque_existential_0(v152, v152[3]);
  v50 = *v49;
  v51 = v49[1];
  v52 = *(v49 + 16);
  v53 = v49[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v54 = swift_allocObject();
  v55 = v50;
  v56 = v51;

  sub_22766A070();
  *(v54 + 16) = v55;
  *(v54 + 24) = v56;
  *(v54 + 32) = v52;
  *(v54 + 40) = v53;
  swift_getKeyPath();
  v57 = sub_227664230();
  v59 = v58;
  v157[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v157[0] = v57;
  v157[1] = v59;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v60 = sub_22766C820();
  sub_226E93170(v157, &v155, &unk_27D7BC990, &qword_227670A30);
  v61 = v156;
  if (v156)
  {
    v62 = __swift_project_boxed_opaque_existential_0(&v155, v156);
    v149 = &v127;
    v63 = v35;
    v64 = *(v61 - 8);
    v65 = MEMORY[0x28223BE20](v62);
    v67 = &v127 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v67, v65);
    v68 = sub_22766D170();
    (*(v64 + 8))(v67, v61);
    v35 = v63;
    __swift_destroy_boxed_opaque_existential_0(&v155);
  }

  else
  {
    v68 = 0;
  }

  v69 = v153;
  v153 = v43;
  v70 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v71 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50 &qword_2276834E0))];

  sub_226E97D1C(v157, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v72 = v71;
  v73 = sub_22766A080();
  v75 = v74;
  MEMORY[0x22AA985C0]();
  if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v149 = *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v73(v157, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  v77 = v154;
  sub_2273FCAC0(KeyPath);
  v154 = v77;
  if (!v77)
  {
    v149 = v35;
    v82 = sub_226F4374C(v78);

    swift_setDeallocating();

    v83 = qword_2813B2078;
    v84 = sub_22766A100();
    (*(*(v84 - 8) + 8))(v54 + v83, v84);
    swift_deallocClassInstance();
    v85 = v148;
    sub_22722AF5C(v82, v148);

    v86 = v146;
    sub_227664290();
    v87 = sub_227665DB0();
    v88 = *(v87 - 8);
    if ((*(v88 + 48))(v86, 1, v87) == 1)
    {
      sub_226E97D1C(v86, &qword_27D7B8EF8, &qword_227672908);
      __swift_project_boxed_opaque_existential_0((v69 + 216), *(v69 + 240));
      v89 = v142;
      v90 = v152;
      v91 = v154;
      sub_226EAF48C(v152, v142);
      v154 = v91;
      if (v91)
      {
        goto LABEL_18;
      }

      sub_227663F60();
      v93 = v92;
      (*(v134 + 8))(v89, v135);
      v94 = swift_initStackObject();
      *(v94 + 16) = v145;
      *(v94 + 32) = sub_227664230();
      *(v94 + 40) = v95;
      v96 = sub_226F4BE8C(v94);
      swift_setDeallocating();
      sub_226FA6DA4(v94 + 32);
      v97 = v154;
      v98 = sub_22701D97C(v96, v90, v93);
      v99 = v97;
    }

    else
    {
      v100 = sub_227665DA0();
      v102 = v101;
      (*(v88 + 8))(v86, v87);
      v103 = swift_initStackObject();
      *(v103 + 16) = v145;
      *(v103 + 32) = v100;
      v104 = v103 + 32;
      *(v103 + 40) = v102;
      v105 = sub_226F4BE8C(v103);
      swift_setDeallocating();
      sub_226FA6DA4(v104);
      v106 = v154;
      v98 = sub_22701DFE8(v105, v152);
      v99 = v106;
    }

    v154 = v99;
    if (!v99)
    {
      v108 = v149;
      v152 = *(v98 + 2);

      v147 = sub_227668540();
      v146 = sub_227668570();
      *&v145 = sub_227668550();
      v142 = sub_227668580();
      v109 = v127;
      sub_226E93170(v108, v127, &unk_27D7BD3F0, &unk_2276823F0);
      v110 = v153;
      v111 = v128;
      v112 = v128(v109, 1, v153);
      v113 = v144;
      if (v112 == 1)
      {
        sub_226E97D1C(v109, &unk_27D7BD3F0, &unk_2276823F0);
        v114 = 1;
      }

      else
      {
        sub_227663400();
        (*(v132 + 8))(v109, v110);
        v114 = 0;
      }

      v115 = sub_227662750();
      (*(*(v115 - 8) + 56))(v113, v114, 1, v115);
      v116 = v130;
      sub_226E93170(v108, v130, &unk_27D7BD3F0, &unk_2276823F0);
      if (v111(v116, 1, v110) == 1)
      {
        sub_226E97D1C(v116, &unk_27D7BD3F0, &unk_2276823F0);
        v135 = 0;
        v117 = 255;
      }

      else
      {
        v135 = sub_2276633F0();
        v119 = v118;
        (*(v132 + 8))(v116, v110);
        v117 = v119 & 1;
      }

      LODWORD(v134) = v117;
      v120 = v136;
      sub_226E93170(v150, v143, &qword_27D7BA488, &unk_227678CE0);
      v121 = v108;
      v122 = v131;
      sub_226E93170(v121, v131, &unk_27D7BD3F0, &unk_2276823F0);
      if (v111(v122, 1, v110) == 1)
      {
        sub_226E97D1C(v122, &unk_27D7BD3F0, &unk_2276823F0);
        v136 = 0;
        v123 = 255;
      }

      else
      {
        v136 = sub_227663460();
        v125 = v124;
        (*(v132 + 8))(v122, v110);
        v123 = v125 & 1;
      }

      LODWORD(v153) = v123;
      v137 = sub_227668590();
      v133 = v126;
      sub_226E93170(v85, v120, &qword_27D7B9690, qword_227670B50);
      v132 = sub_227668530();
      sub_2276684E0();
      sub_227668520();
      sub_2276684F0();
      sub_227668560();
      sub_227668510();
      sub_227668500();
      sub_2276685A0();
      (*(v139 + 16))(v138, v151, v140);
      sub_227665D80();
      v107 = v148;
      goto LABEL_29;
    }

LABEL_18:
    v107 = v85;
LABEL_29:
    sub_226E97D1C(v107, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(v150, &qword_27D7BA488, &unk_227678CE0);
    v81 = v149;
    goto LABEL_30;
  }

  swift_setDeallocating();

  v79 = qword_2813B2078;
  v80 = sub_22766A100();
  (*(*(v80 - 8) + 8))(v54 + v79, v80);
  swift_deallocClassInstance();
  sub_226E97D1C(v150, &qword_27D7BA488, &unk_227678CE0);
  v81 = v35;
LABEL_30:
  sub_226E97D1C(v81, &unk_27D7BD3F0, &unk_2276823F0);
}

void sub_22747B0FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v43 = a4;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA488, &unk_227678CE0);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v59 = &v42 - v16;
  v58 = sub_227663590();
  v17 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v57 = &v42 - v20;
  v56 = sub_227663DD0();
  v21 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v44 = v4;
    v45 = a1;
    v46 = a3;
    v66 = MEMORY[0x277D84F90];
    sub_226F20528(0, v24, 0);
    v25 = v66;
    v27 = *(v17 + 16);
    v26 = v17 + 16;
    v28 = (a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v52 = *(v26 + 56);
    v53 = v27;
    v50 = v21 + 32;
    v51 = (v26 - 8);
    v54 = v21;
    v55 = v26;
    do
    {
      v63 = v25;
      v64 = v24;
      v30 = v57;
      v29 = v58;
      v62 = v28;
      v31 = v53;
      v53(v57, v28, v58);
      v31(v65, v30, v29);
      v32 = sub_227662750();
      v33 = *(*(v32 - 8) + 56);
      v33(v59, 1, 1, v32);
      v34 = sub_227665780();
      (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
      v33(v60, 1, 1, v32);
      sub_227663D70();
      v35 = v29;
      v25 = v63;
      (*v51)(v30, v35);
      v66 = v25;
      v37 = *(v25 + 16);
      v36 = *(v25 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_226F20528((v36 > 1), v37 + 1, 1);
        v25 = v66;
      }

      *(v25 + 16) = v37 + 1;
      (*(v54 + 32))(v25 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v37, v23, v56);
      v28 = &v62[v52];
      v24 = v64 - 1;
    }

    while (v64 != 1);
    a1 = v45;
    v5 = v44;
  }

  v67 = v25;
  sub_227476338(&v67, a1);
  if (v5)
  {
  }

  else
  {
    v38 = __swift_project_boxed_opaque_existential_0(a1, *(a1 + 24));
    v39 = *v38;
    v40 = v38[1];
    v41 = v47;
    sub_22766A730();
    sub_22766B370();
    (*(v48 + 8))(v41, v49);
    [v39 reset];
    [v40 reset];
    sub_227477F78(&v67, a1);
    *v43 = v67;
  }
}

uint64_t sub_22747B708(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_227663DD0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_2276654E0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_227666F60();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22747B8A4, 0, 0);
}

uint64_t sub_22747B8A4(uint64_t a1)
{
  v2 = *(sub_2276654D0() + 16);

  if (v2)
  {
    v3 = sub_2276654D0();
    v34 = MEMORY[0x277D84FA0];
    v35 = MEMORY[0x277D84FA0];
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v1 + 112);
      v7 = *(v5 + 16);
      v5 += 16;
      v6 = v7;
      v31 = (*(v5 + 64) + 32) & ~*(v5 + 64);
      v8 = v3 + v31;
      v9 = *(v5 + 56);
      v10 = (v5 - 8);
      v32 = v7;
      v30 = v9;
      v7(*(v1 + 136), v3 + v31, *(v1 + 104));
      while (1)
      {
        v12 = sub_227666F50();
        v14 = *(v1 + 136);
        if (v15)
        {
          v16 = *(v1 + 104);
          v33 = *(v1 + 128);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB068, &unk_227686AD0);
          v17 = swift_allocObject();
          v6(v17 + v31, v14, v16);
          v6(v33, v17 + v31, v16);
          swift_setDeallocating();
          v18 = *v10;
          (*v10)(v17 + v31, v16);
          swift_deallocClassInstance();
          v19 = *(v1 + 136);
          v20 = *(v1 + 120);
          v21 = *(v1 + 104);
          sub_2270B7BC0(v20, *(v1 + 128));
          v18(v20, v21);
          v18(v19, v21);
          v6 = v32;
          v9 = v30;
        }

        else
        {
          v11 = *(v1 + 104);
          sub_226EB2DFC(v12, v13, 0);
          (*v10)(v14, v11);
        }

        v8 += v9;
        if (!--v4)
        {
          break;
        }

        v6(*(v1 + 136), v8, *(v1 + 104));
      }

      v23 = v34;
      v22 = v35;
    }

    else
    {

      v22 = MEMORY[0x277D84FA0];
      v23 = MEMORY[0x277D84FA0];
    }

    sub_2276654C0();
    *(v1 + 16) = v23;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF28, &qword_227686AB8);
    sub_22747E9F0();
    sub_22766C220();

    sub_2276654B0();
    sub_2276654C0();
    *(v1 + 24) = v22;
    swift_getKeyPath();
    sub_22766C220();

    sub_2276654B0();
    v28 = swift_task_alloc();
    *(v1 + 144) = v28;
    *v28 = v1;
    v28[1] = sub_22747BD38;
    v29 = *(v1 + 96);

    return sub_227473188(v29);
  }

  else
  {
    v24 = sub_2276639E0();
    sub_226EAC0FC(&qword_27D7BCBF8, MEMORY[0x277D50230], MEMORY[0x277D50238]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D50210], v24);
    swift_willThrow();

    v26 = *(v1 + 8);

    return v26();
  }
}

uint64_t sub_22747BD38(uint64_t a1)
{
  v3 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22747C1D0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[21] = v4;
    *v4 = v3;
    v4[1] = sub_22747BEAC;
    v5 = v3[11];

    return sub_227473EC4(v5);
  }
}

uint64_t sub_22747BEAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    v5 = sub_22747C2A8;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_22747BFDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22747BFDC()
{
  v19 = v0[19];
  sub_2274616B0(v0[23]);
  v1 = *(v19 + 16);
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_2273A6C9C(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v2 + 16);
    v4 = v2 + 16;
    v18 = v5;
    v6 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v7 = v19 + v6;
    v8 = *(v4 + 56);
    do
    {
      v18(v0[8], v7, v0[6]);
      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v3 = sub_2273A6C9C((v9 > 1), v10 + 1, 1, v3);
      }

      v11 = v0[8];
      v12 = v0[6];
      *(v3 + 2) = v10 + 1;
      (*(v4 + 16))(&v3[v6 + v10 * v8], v11, v12);
      v7 += v8;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v13 = v0[12];
  v14 = v0[9];
  v15 = *(v0[10] + 8);
  v15(v0[11], v14);
  v15(v13, v14);

  v16 = v0[1];

  return v16(v3);
}

uint64_t sub_22747C1D0()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  v3(v0[11], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22747C2A8()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  v3(v0[11], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

unint64_t *sub_22747C380(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_22747E1CC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t sub_22747C41C()
{
  result = qword_28139B738;
  if (!qword_28139B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B738);
  }

  return result;
}

void sub_22747C470(void *a1)
{
  v2 = *(sub_227663AB0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22711772C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22747C518(v5);
  *a1 = v3;
}

void sub_22747C518(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
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
        sub_227663AB0();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227663AB0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22747C8EC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_22747C644(0, v2, 1, a1);
  }
}

void sub_22747C644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227663AB0();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_227663A80();
      v28 = sub_227663A80();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22747C8EC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_227663AB0();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_2271171D0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_22747D2D0(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2271171D0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_227117144(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_227663A80();
      v126 = sub_227663A80();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_227663A80();
        v39 = sub_227663A80();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_2273A4F9C(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_2273A4F9C((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_22747D2D0(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2271171D0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_227117144(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_227663A80();
    v104 = sub_227663A80();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_22747D2D0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_227663AB0();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_227663A80();
          v45 = sub_227663A80();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_227663A80();
        v26 = sub_227663A80();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_22711722C(&v64, &v63, &v62);
}

void sub_22747D8C8(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  v115 = sub_227667E50();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v117 = v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_227664530();
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = (v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_227663DD0();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84FA0];
  v119 = MEMORY[0x277D84FA0];
  v120 = MEMORY[0x277D84FA0];
  v16 = *(a1 + 16);
  if (v16)
  {
    v110 = v3;
    v111 = a2;
    v19 = *(v11 + 16);
    v17 = v11 + 16;
    v18 = v19;
    v20 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    v19(v14, v20, v10, v12);
    while (1)
    {
      v26 = sub_227663DB0();
      if (v27)
      {
        v22 = v27;
        v23 = v26;
        v24 = v22;
      }

      else
      {
        v28 = sub_227663D80();
        v30 = v29;
        v23 = v28;
        v24 = v30;
      }

      sub_2270AE890(&v118, v23, v24);

      (*(v17 - 8))(v14, v10);
      v20 += v21;
      if (!--v16)
      {
        break;
      }

      v18(v14, v20, v10, v25);
    }

    v15 = v119;
    v4 = v110;
    a2 = v111;
  }

  v31 = sub_22701D97C(v15, a2, a3);
  if (v4)
  {

    return;
  }

  v32 = v31;
  v110 = v120;
  v33 = sub_22701DFE8(v120, a2);
  v34 = v114;
  v111 = v33;
  v103[1] = v15;
  v104 = 0;
  v35 = v32 + 56;
  v36 = 1 << v32[32];
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v32 + 7);
  v39 = (v36 + 63) >> 6;
  v108 = (v113 + 1);
  v109 = v113 + 2;

  v40 = 0;
  v41 = MEMORY[0x277D84F98];
  v105 = v39;
  v106 = v32 + 56;
  v107 = v32;
  while (v38)
  {
    v42 = v40;
LABEL_21:
    (v113[2])(v34, *(v32 + 6) + v113[9] * (__clz(__rbit64(v38)) | (v42 << 6)), v116);
    v43 = sub_2276644F0();
    if (v41[2])
    {
      v45 = sub_226E92000(v43, v44);
      v47 = v46;

      if (v47)
      {
        v48 = *(v41[7] + 8 * v45);
        goto LABEL_26;
      }
    }

    else
    {
    }

    v48 = 0;
LABEL_26:
    v49 = sub_2276644F0();
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_65;
    }

    v52 = v49;
    v53 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v118 = v41;
    v56 = sub_226E92000(v52, v53);
    v57 = v41;
    v58 = v41[2];
    v59 = (v55 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_66;
    }

    v61 = v55;
    if (v57[3] >= v60)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226FF016C();
      }
    }

    else
    {
      sub_226FE2228(v60, isUniquelyReferenced_nonNull_native);
      v62 = sub_226E92000(v52, v53);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_71;
      }

      v56 = v62;
    }

    v38 &= v38 - 1;
    if (v61)
    {

      v41 = v118;
      *(v118[7] + 8 * v56) = v51;
      v34 = v114;
      (*v108)(v114, v116);
    }

    else
    {
      v41 = v118;
      v118[(v56 >> 6) + 8] |= 1 << v56;
      v64 = (v41[6] + 16 * v56);
      *v64 = v52;
      v64[1] = v53;
      *(v41[7] + 8 * v56) = v51;
      v34 = v114;
      (*v108)(v114, v116);
      v65 = v41[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_69;
      }

      v41[2] = v67;
    }

    v40 = v42;
    v35 = v106;
    v32 = v107;
    v39 = v105;
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v42 >= v39)
    {
      break;
    }

    v38 = *&v35[8 * v42];
    ++v40;
    if (v38)
    {
      goto LABEL_21;
    }
  }

  v68 = v111 + 56;
  v69 = 1 << v111[32];
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v111 + 7);
  v72 = (v69 + 63) >> 6;
  v116 = v112 + 16;
  v114 = (v112 + 8);

  v73 = 0;
  v74 = MEMORY[0x277D84F98];
  v113 = v41;
  v108 = v72;
  v109 = v68;
  while (2)
  {
    if (v71)
    {
      v77 = v73;
LABEL_46:
      (*(v112 + 16))(v117, *(v111 + 6) + *(v112 + 72) * (__clz(__rbit64(v71)) | (v77 << 6)), v115);
      v78 = sub_227667E40();
      if (v74[2])
      {
        v80 = sub_226E92000(v78, v79);
        v82 = v81;

        if (v82)
        {
          v83 = *(v74[7] + 8 * v80);
LABEL_51:
          v84 = sub_227667E40();
          v86 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            goto LABEL_67;
          }

          v87 = v84;
          v88 = v85;
          v89 = swift_isUniquelyReferenced_nonNull_native();
          v118 = v74;
          v90 = sub_226E92000(v87, v88);
          v92 = v74[2];
          v93 = (v91 & 1) == 0;
          v66 = __OFADD__(v92, v93);
          v94 = v92 + v93;
          if (v66)
          {
            goto LABEL_68;
          }

          v95 = v91;
          if (v74[3] >= v94)
          {
            if ((v89 & 1) == 0)
            {
              v100 = v90;
              sub_226FF016C();
              v90 = v100;
            }
          }

          else
          {
            sub_226FE2228(v94, v89);
            v90 = sub_226E92000(v87, v88);
            if ((v95 & 1) != (v96 & 1))
            {
              goto LABEL_71;
            }
          }

          v41 = v113;
          v71 &= v71 - 1;
          if (v95)
          {
            v75 = v90;

            v76 = v117;
            v74 = v118;
            *(v118[7] + 8 * v75) = v86;
            (*v114)(v76, v115);
          }

          else
          {
            v74 = v118;
            v118[(v90 >> 6) + 8] |= 1 << v90;
            v97 = (v74[6] + 16 * v90);
            *v97 = v87;
            v97[1] = v88;
            *(v74[7] + 8 * v90) = v86;
            (*v114)(v117, v115);
            v98 = v74[2];
            v66 = __OFADD__(v98, 1);
            v99 = v98 + 1;
            if (v66)
            {
              goto LABEL_70;
            }

            v74[2] = v99;
          }

          v73 = v77;
          v72 = v108;
          v68 = v109;
          continue;
        }
      }

      else
      {
      }

      v83 = 0;
      goto LABEL_51;
    }

    break;
  }

  while (1)
  {
    v77 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v77 >= v72)
    {

      v101 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v41;
      v102 = v104;
      sub_22733198C(v74, sub_227331974, 0, v101, &v118);
      if (v102)
      {
        goto LABEL_72;
      }

      return;
    }

    v71 = v68[v77];
    ++v73;
    if (v71)
    {
      goto LABEL_46;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  sub_22766D220();
  __break(1u);
LABEL_72:

  __break(1u);
}

void sub_22747E1CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC168, &qword_22767CCF8);
  MEMORY[0x28223BE20](v54);
  v7 = &v45 - v6;
  v8 = sub_227665F20();
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v15 = &v45 - v12;
  v16 = 0;
  v55 = a3;
  v17 = *(a3 + 64);
  v48 = a3 + 64;
  v49 = 0;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v58 = a4 + 56;
  v52 = &v45 - v12;
  v53 = v13;
  v60 = (v13 + 8);
  v61 = v13 + 16;
  v62 = v7;
  v51 = v21;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v57 = (v20 - 1) & v20;
LABEL_14:
    v25 = v22 | (v16 << 6);
    v26 = v55;
    v27 = v55[6];
    v59 = *(v53 + 72);
    v28 = *(v53 + 16);
    v28(v15, v27 + v59 * v25, v8, v14);
    v29 = v26[7];
    v50 = v25;
    v30 = (v29 + 16 * v25);
    v31 = v15;
    v33 = *v30;
    v32 = v30[1];
    v34 = v62;
    (v28)(v62, v31, v8);
    v35 = (v34 + *(v54 + 48));
    *v35 = v33;
    v35[1] = v32;
    v36 = *(a4 + 16);
    v56 = v32;
    if (!v36)
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }

    sub_226EAC0FC(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
    swift_bridgeObjectRetain_n();
    v37 = sub_22766BF50();
    v38 = -1 << *(a4 + 32);
    v39 = v37 & ~v38;
    if ((*(v58 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
    {
      v40 = ~v38;
      while (1)
      {
        v41 = a4;
        (v28)(v10, *(a4 + 48) + v39 * v59, v8);
        sub_226EAC0FC(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
        v42 = sub_22766BFB0();
        v43 = *v60;
        (*v60)(v10, v8);
        if (v42)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        a4 = v41;
        if (((*(v58 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      sub_226E97D1C(v62, &qword_27D7BC168, &qword_22767CCF8);

      v15 = v52;
      v43(v52, v8);
      *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v44 = __OFADD__(v49++, 1);
      a4 = v41;
      v21 = v51;
      v20 = v57;
      if (v44)
      {
        __break(1u);
LABEL_23:
        sub_227329A6C(v47, v46, v49, v55);
        return;
      }
    }

    else
    {
LABEL_6:
      sub_226E97D1C(v62, &qword_27D7BC168, &qword_22767CCF8);

      v15 = v52;
      (*v60)(v52, v8);
      v21 = v51;
      v20 = v57;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      goto LABEL_23;
    }

    v24 = *(v48 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v57 = (v24 - 1) & v24;
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t *sub_22747E674(uint64_t a1, uint64_t a2)
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

      v11 = sub_22747C380(v13, v7, a1, a2);
      MEMORY[0x22AA9A450](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_22747E1CC((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

void sub_22747E834(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_227479B70(a1, *(v2 + 16), v2 + v6, *v7, *(v7 + 8), a2);
}

void sub_22747E900(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2276685B0() - 8);
  sub_227479E1C(a1, *(v2 + 16), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

unint64_t sub_22747E9F0()
{
  result = qword_281398CD8;
  if (!qword_281398CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BDF28, &qword_227686AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398CD8);
  }

  return result;
}

double sub_22747EB30(uint64_t a1, unsigned __int8 a2)
{
  sub_22766C100();

  return result;
}

uint64_t sub_22747EC44(uint64_t a1, unsigned __int8 a2)
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

SeymourServices::ServerEnvironment_optional __swiftcall ServerEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22766D030();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ServerEnvironment.rawValue.getter()
{
  v1 = *v0;
  v2 = 7759204;
  v3 = 1685025392;
  if (v1 != 6)
  {
    v3 = 0x736D7469646F7270;
  }

  if (*v0 <= 5u)
  {
    v3 = 0x6E6F676E6976696CLL;
  }

  v4 = 24945;
  if (v1 != 2)
  {
    v4 = 0x736D74696171;
  }

  if (*v0)
  {
    v2 = 0x736D7469766564;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_22747EEDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7759204;
  v5 = 0xE400000000000000;
  v6 = 1685025392;
  v7 = 0xE800000000000000;
  if (v2 != 6)
  {
    v6 = 0x736D7469646F7270;
    v5 = 0xE800000000000000;
  }

  if (v2 != 4)
  {
    v7 = 0xEC000000736D7469;
  }

  if (*v1 <= 5u)
  {
    v6 = 0x6E6F676E6976696CLL;
    v5 = v7;
  }

  v8 = 0xE200000000000000;
  v9 = 24945;
  if (v2 != 2)
  {
    v9 = 0x736D74696171;
    v8 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x736D7469766564;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_22747EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22747F214();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA18](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t sub_22747F044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22747F214();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA20](a1, a2, a3, a4, a5, v10, v11);
}

unint64_t ServerEnvironment.serviceName.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000012;
  if (v1 != 6)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (v1 != 2)
  {
    v4 = 0xD000000000000015;
  }

  v5 = 0xD000000000000016;
  if (!*v0)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v5 = v4;
  }

  if (*v0 <= 3u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22747F1B0()
{
  result = qword_2813A27B0;
  if (!qword_2813A27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A27B0);
  }

  return result;
}

unint64_t sub_22747F214()
{
  result = qword_2813A27A8;
  if (!qword_2813A27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A27A8);
  }

  return result;
}

void sub_22747F2C0(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t, __n128))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    (a2)(0, v2, 0);
    v4 = a1 + 56;
    v5 = sub_22766CC90();
    v6 = 0;
    v22 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v23 = *(a1 + 36);
      v9 = (*(a1 + 48) + 16 * v5);
      v10 = v9[1];
      v24 = *v9;
      v12 = *(v25 + 16);
      v11 = *(v25 + 24);

      if (v12 >= v11 >> 1)
      {
        (a2)(v11 > 1, v12 + 1, 1);
      }

      *(v25 + 16) = v12 + 1;
      v13 = v25 + 16 * v12;
      *(v13 + 32) = v24;
      *(v13 + 40) = v10;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = a1 + 56;
      v14 = *(a1 + 56 + 8 * v8);
      if ((v14 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v5 & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = (a1 + 64 + 8 * v8);
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_226EB526C(v5, v23, 0);
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v5, v23, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v22)
      {
        return;
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
}

void sub_22747F4F8(void *a1)
{
  v3 = [a1 modalityIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_22766C000();

    sub_2274B47BC([a1 preferredMusicGenres]);
    if (v1)
    {
    }

    else
    {
      sub_2274B47BC([a1 preferredTrainers]);
      sub_227668450();
    }
  }

  else
  {
    v5 = sub_227664DD0();
    sub_22747FB88(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D51028], v5);
    swift_willThrow();
  }
}

void sub_22747F688(void *a1, uint64_t a2)
{
  sub_227668460();
  v5 = sub_22766BFD0();

  [a1 setModalityIdentifier_];

  v6 = sub_227668470();
  sub_22747F2C0(v6, sub_226F1EF10);
  v8 = v7;

  v9 = sub_226F3D9D0(v8);

  sub_2276496D4(a2, v9);
  v11 = v10;

  if (!v2)
  {
    [a1 setPreferredMusicGenres_];

    v12 = sub_227668440();
    sub_22747F2C0(v12, sub_226F1EEF0);
    v14 = v13;

    v15 = sub_226F3D954(v14);

    sub_227649A14(a2, v15);
    v17 = v16;

    [a1 setPreferredTrainers_];
  }
}

void *static WorkoutPlanModalityPreference.representativeSamples()()
{
  v16 = sub_227668480();
  v0 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v4 = sub_22766C590();
  v5 = sub_22766C590();
  v25 = v4;
  v26[0] = v3;
  v26[1] = v26;
  v26[2] = &v25;
  v24 = v5;
  v26[3] = &v24;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC868, &qword_22767F5F0);
  v23 = v22;
  v18 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v19 = sub_226F5BF60(&unk_27D7BC870, &qword_27D7BC868, &qword_22767F5F0);
  v20 = v19;
  v6 = sub_2276638E0();

  v7 = *(v6 + 16);
  if (v7)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_226F1F1B0(0, v7, 0);
    v9 = 0;
    v10 = v17;
    v14 = v0 + 32;
    v15 = v6;
    v11 = v6 + 56;
    while (v9 < *(v6 + 16))
    {

      sub_227668450();
      v17 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_226F1F1B0((v12 > 1), v13 + 1, 1);
        v10 = v17;
      }

      ++v9;
      *(v10 + 16) = v13 + 1;
      result = (*(v0 + 32))(v10 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v13, v2, v16);
      v11 += 32;
      v6 = v15;
      if (v7 == v9)
      {

        return v10;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22747FB30(uint64_t a1)
{
  result = sub_22747FB88(&qword_27D7B84C0, MEMORY[0x277D534C8], &protocol conformance descriptor for WorkoutPlanModalityPreference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22747FB88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22747FBD0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22747FCA4, 0, 0);
}

uint64_t sub_22747FCA4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[12];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[13] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 194;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_22747FEEC;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v7 = (v0[8] + *v0[8]);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_2274801B4;

    return v7(v0 + 5);
  }
}

uint64_t sub_22747FEEC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    v3 = sub_227480138;
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227480044;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227480044()
{
  v3 = (*(v0 + 64) + **(v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_2274801B4;

  return v3(v0 + 40);
}

uint64_t sub_227480138()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2274801B4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_227480340;
  }

  else
  {
    v2 = sub_2274802C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274802C8()
{
  v1 = *(v0 + 40);
  sub_226ECC52C(*(v0 + 48), *(v0 + 56));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227480340()
{
  sub_226ECC52C(*(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2274803B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v4 + 80) = v5;
  *(v4 + 88) = *(v5 - 8);
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227480484, 0, 0);
}

uint64_t sub_227480484()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[12];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[13] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 194;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_2274806CC;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v7 = (v0[8] + *v0[8]);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_227480918;

    return v7(v0 + 5);
  }
}

uint64_t sub_2274806CC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    v3 = sub_227485258;
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227480824;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227480824()
{
  v3 = (*(v0 + 64) + **(v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_227480918;

  return v3(v0 + 40);
}

uint64_t sub_227480918()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22748526C;
  }

  else
  {
    v2 = sub_227485264;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227480A2C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227480AA8()
{
  sub_226ECC52C(*(v0 + 40), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227480B18(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a4;
  *(v4 + 40) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227480BEC, 0, 0);
}

uint64_t sub_227480BEC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[11];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[12] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 194;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_227480E34;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v7 = (v0[7] + *v0[7]);
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_227481080;

    return v7(v0 + 17);
  }
}

uint64_t sub_227480E34()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v3 = sub_22748525C;
  }

  else
  {
    v5 = v2[10];
    v4 = v2[11];
    v6 = v2[9];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227480F8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227480F8C()
{
  v3 = (*(v0 + 56) + **(v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_227481080;

  return v3(v0 + 136);
}

uint64_t sub_227481080()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_227485270;
  }

  else
  {
    v2 = sub_227485268;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227481194(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v25 = a2;
  v28 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(v3 + 16);
  v12 = *(v7 + 16);
  v26 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v27 = v12;
  (v12)(&v25 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6, v8);
  sub_227669730();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v14 = v30;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = a2;
  v16[5] = v29;
  __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_227686DE8;
  *(v17 + 24) = v16;

  v18 = v28;
  sub_2274E933C(v28, &unk_227686DF8, v17);

  v19 = *(v4 + 24);
  v27(v10, v4 + v26, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v30;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v29;
  v22[4] = v25;
  v22[5] = v23;
  __swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_227686E00;
  *(v24 + 24) = v22;

  sub_2274E933C(v18, &unk_227686E08, v24);
}

void sub_2274814CC(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v25 = a2;
  v28 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(v3 + 16);
  v12 = *(v7 + 16);
  v26 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v27 = v12;
  (v12)(&v25 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6, v8);
  sub_227669730();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v14 = v30;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = a2;
  v16[5] = v29;
  __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_227686DB0;
  *(v17 + 24) = v16;

  v18 = v28;
  sub_2274E933C(v28, &unk_227686DC0, v17);

  v19 = *(v4 + 24);
  v27(v10, v4 + v26, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v30;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v29;
  v22[4] = v25;
  v22[5] = v23;
  __swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_227686DC8;
  *(v24 + 24) = v22;

  sub_2274E933C(v18, &unk_227686DD0, v24);
}

void sub_227481804(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v25 = a2;
  v28 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(v3 + 16);
  v12 = *(v7 + 16);
  v26 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v27 = v12;
  (v12)(&v25 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6, v8);
  sub_227669730();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v14 = v30;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = a2;
  v16[5] = v29;
  __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_227686D30;
  *(v17 + 24) = v16;

  v18 = v28;
  sub_2274E933C(v28, &unk_227686D40, v17);

  v19 = *(v4 + 24);
  v27(v10, v4 + v26, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v30;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v29;
  v22[4] = v25;
  v22[5] = v23;
  __swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_227686D48;
  *(v24 + 24) = v22;

  sub_2274E933C(v18, &unk_227686D50, v24);
}

void sub_227481B3C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v25 = a2;
  v28 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *(v3 + 16);
  v12 = *(v7 + 16);
  v26 = OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval;
  v27 = v12;
  (v12)(&v25 - v9, v3 + OBJC_IVAR____TtC15SeymourServices16ScriptConnection__linkDeactivationInterval, v6, v8);
  sub_227669730();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v14 = v30;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = a2;
  v16[5] = v29;
  __swift_project_boxed_opaque_existential_0((v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v11 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_227686D70;
  *(v17 + 24) = v16;

  v18 = v28;
  sub_2274E933C(v28, &unk_227686D80, v17);

  v19 = *(v4 + 24);
  v27(v10, v4 + v26, v6);
  sub_227669730();
  v13(v10, v6);
  v20 = v30;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v20;
  v23 = v29;
  v22[4] = v25;
  v22[5] = v23;
  __swift_project_boxed_opaque_existential_0((v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v19 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_227686D88;
  *(v24 + 24) = v22;

  sub_2274E933C(v18, &unk_227686D90, v24);
}

double sub_227481E74()
{
  v1 = v0;
  v2 = sub_227669A70();
  v27 = v2;
  v33 = *(v2 - 8);
  v3 = v33;
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 96);
  v29 = *(v1 + 112);
  ObjectType = swift_getObjectType();
  v34 = v10;
  v12 = *MEMORY[0x277D4EA78];
  v13 = *(v3 + 104);
  v31 = v3 + 104;
  v32 = v13;
  v13(v5, v12, v2);
  swift_allocObject();
  v30 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226FA712C();
  sub_227483990(&qword_281398BC0, &qword_27D7B94F0, &unk_227670BA0, sub_226F62704);
  sub_227669E90();

  v28 = *(v33 + 8);
  v33 += 8;
  v14 = v27;
  v28(v5, v27);
  swift_unknownObjectRelease();
  v34 = v10;
  v32(v5, *MEMORY[0x277D4E848], v14);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94D0, &unk_22767E4E0);
  sub_22748390C();
  sub_227483990(&qword_281398E48, &qword_27D7B94D0, &unk_22767E4E0, sub_226F68F84);
  v26[1] = ObjectType;
  sub_227669E90();

  v15 = v28;
  v28(v5, v14);
  swift_unknownObjectRelease();
  v34 = v10;
  v16 = v32;
  v32(v5, *MEMORY[0x277D4E750], v14);
  swift_allocObject();
  swift_weakInit();
  sub_2276658F0();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v17 = v27;
  v15(v5, v27);
  swift_unknownObjectRelease();
  v34 = v10;
  v16(v5, *MEMORY[0x277D4EB70], v17);
  swift_allocObject();
  v18 = v30;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v15(v5, v17);
  swift_unknownObjectRelease();
  v34 = v10;
  v19 = v32;
  v32(v5, *MEMORY[0x277D4EBB0], v17);
  swift_allocObject();
  swift_weakInit();
  sub_227669ED0();

  v20 = v28;
  v28(v5, v17);
  swift_unknownObjectRelease();
  v34 = v10;
  v19(v5, *MEMORY[0x277D4E8A8], v17);
  swift_allocObject();
  swift_weakInit();
  sub_227669E90();

  v20(v5, v17);
  swift_unknownObjectRelease();
  v21 = v18;
  __swift_project_boxed_opaque_existential_0((v18 + 16), *(v18 + 40));
  v22 = swift_allocObject();
  swift_weakInit();
  sub_226F65E34(36, sub_22748527C, v22);

  __swift_project_boxed_opaque_existential_0((v21 + 16), *(v21 + 40));
  v23 = swift_allocObject();
  swift_weakInit();
  sub_227481B3C(0x19u, &unk_227686D08, v23);

  __swift_project_boxed_opaque_existential_0((v21 + 16), *(v21 + 40));
  v24 = swift_allocObject();
  swift_weakInit();
  sub_227481804(0x28u, &unk_227686D18, v24);

  return result;
}

uint64_t sub_227482664@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v7);

    __swift_project_boxed_opaque_existential_0(v7, v7[3]);
    sub_226FCAA18(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_227482784(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227482844, 0, 0);
}

uint64_t sub_227482844()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    sub_226E91B50(Strong + 56, (v0 + 2));

    v5 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v2, v4);
    __swift_project_boxed_opaque_existential_0((v5 + 56), *(v5 + 80));
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_227482A1C;
    v7 = v0[10];

    return sub_226EA84C8(v7);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_2276658F0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_227482A1C()
{

  return MEMORY[0x2822009F8](sub_227482B18, 0, 0);
}

uint64_t sub_227482B18()
{
  v1 = v0[10];
  v2 = sub_2276658F0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_227482BC8(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227482C88, 0, 0);
}

uint64_t sub_227482C88()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    sub_226E91B50(Strong + 56, v0 + 16);

    v5 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v2, v4);
    __swift_project_boxed_opaque_existential_0((v5 + 240), *(v5 + 264));
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_227482E28;

    return sub_227036F64();
  }

  else
  {
    **(v0 + 80) = 2;

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_227482E28(char a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_227482F28, 0, 0);
}

uint64_t sub_227482F28()
{
  v1 = *(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_227482FA0(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227483060, 0, 0);
}

uint64_t sub_227483060()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    sub_226E91B50(Strong + 56, v0 + 16);

    v5 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v2, v4);
    __swift_project_boxed_opaque_existential_0((v5 + 240), *(v5 + 264));
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_227483200;

    return sub_227037360();
  }

  else
  {
    **(v0 + 80) = 2;

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_227483200(char a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_227485274, 0, 0);
}

uint64_t sub_227483300@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v12);

    v8 = *__swift_project_boxed_opaque_existential_0(v12, v12[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_0((v8 + 192), *(v8 + 216));
    sub_226FCFE28();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_227483510@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 56, v8);

    __swift_project_boxed_opaque_existential_0(v8, v8[3]);
    v4 = off_283A9B338;
    type metadata accessor for ContentAvailabilitySystem(0);
    v4();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
    (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8DB0, &qword_227672120);
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_227483664(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227483724, 0, 0);
}

uint64_t sub_227483724()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 96);
    sub_226E91B50(Strong + 56, v0 + 16);

    v5 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v3 + 8))(v2, v4);
    __swift_project_boxed_opaque_existential_0((v5 + 240), *(v5 + 264));
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_227483200;

    return sub_227036F64();
  }

  else
  {
    **(v0 + 80) = 2;

    v8 = *(v0 + 8);

    return v8();
  }
}

unint64_t sub_22748390C()
{
  result = qword_281398E50;
  if (!qword_281398E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B94D0, &unk_22767E4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E50);
  }

  return result;
}

uint64_t sub_227483990(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227483A0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227482784(a1, v1);
}

uint64_t sub_227483AA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227482BC8(a1, v1);
}

uint64_t sub_227483B44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227482FA0(a1, v1);
}

uint64_t sub_227483BE8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227483664(a1, v1);
}

uint64_t sub_227483C84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227483D74;

  return v6(v3 + 16);
}

uint64_t sub_227483D74()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_227484010;
  }

  else
  {
    v2 = sub_227483E88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227483E88()
{
  if (v0[2])
  {
    v1 = v0[4];
    sub_227666F60();
    v2 = MEMORY[0x277D52AB0];
    sub_227485208(&qword_28139B590, MEMORY[0x277D52AB0], MEMORY[0x277D52AA8]);
    sub_227485208(&qword_28139B5A0, v2, MEMORY[0x277D52AB8]);
    v3 = sub_22766C5C0();
    v5 = v4;

    if (!v1)
    {
      v6 = v0[1];

      return v6(v3, v5);
    }
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_227484028(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_227484118;

  return v6(v3 + 16);
}

uint64_t sub_227484118()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_227485260;
  }

  else
  {
    v2 = sub_22748422C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22748422C()
{
  if (v0[2])
  {
    v1 = v0[4];
    sub_227669360();
    v2 = MEMORY[0x277D53BA0];
    sub_227485208(&qword_28139B288, MEMORY[0x277D53BA0], MEMORY[0x277D53B98]);
    sub_227485208(&qword_2813A5500, v2, MEMORY[0x277D53BA8]);
    v3 = sub_22766C5C0();
    v5 = v4;

    if (!v1)
    {
      v6 = v0[1];

      return v6(v3, v5);
    }
  }

  else
  {
    sub_226F6649C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2274843CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2274844BC;

  return v6(v3 + 33);
}

uint64_t sub_2274844BC()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_227485284;
  }

  else
  {
    v2 = sub_2274845D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274845D0()
{
  v1 = *(v0 + 33);
  if (v1 == 2)
  {
    sub_226F6649C();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
LABEL_4:
    v5 = *(v0 + 8);

    return v5();
  }

  v3 = *(v0 + 24);
  *(v0 + 32) = v1 & 1;
  v4 = sub_227667710();
  if (v3)
  {
    goto LABEL_4;
  }

  v7 = *(v0 + 8);

  return v7(v4);
}

uint64_t sub_2274846D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22748478C;

  return sub_22747FBD0(a2, a3, a4, a5);
}

uint64_t sub_22748478C(uint64_t a1)
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

uint64_t sub_22748489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_227485250;

  return sub_2274803B0(a2, a3, a4, a5);
}

uint64_t sub_227484954(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_227485278;

  return sub_226EC8438(a1, a2, v6);
}

uint64_t sub_227484A04(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E92F34;

  return sub_226EC870C(a1, v4, v7, v6, v5);
}

uint64_t sub_227484AD4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_227484B84;

  return sub_226EC8438(a1, a2, v6);
}

uint64_t sub_227484B84(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_227484C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_227485254;

  return sub_227480B18(a2, a3, a4, a5);
}

uint64_t sub_227484D48(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_227484C90(a1, v4, v7, v6, v5);
}

uint64_t sub_227484E18(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_227485278;

  return sub_2274843CC(a1, a2, v6);
}

uint64_t sub_227484EC8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_22748489C(a1, v4, v7, v6, v5);
}

uint64_t sub_227484F98(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_227485278;

  return sub_227484028(a1, a2, v6);
}

uint64_t sub_227485048(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = v1[3];
  v7 = *(v1 + 4);
  v6 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_2274846D4(a1, v4, v7, v6, v5);
}

uint64_t sub_227485118(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_227485278;

  return sub_227483C84(a1, a2, v6);
}

uint64_t objectdestroy_19Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227485208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227485288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2274852E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 56) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2274853BC, 0, 0);
}

uint64_t sub_2274853BC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[13];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[14] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 210;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_227485608;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v7 = (v0[9] + *v0[9]);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_2274858D4;

    return v7(v0 + 6, v0 + 5);
  }
}

uint64_t sub_227485608()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_227485858;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227485760;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227485760()
{
  v3 = (*(v0 + 72) + **(v0 + 72));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_2274858D4;

  return v3(v0 + 48, v0 + 40);
}

uint64_t sub_227485858()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2274858D4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_227485A60;
  }

  else
  {
    v2 = sub_2274859E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2274859E8()
{
  v1 = *(v0 + 48);
  sub_226EC70B4(*(v0 + 56), *(v0 + 64));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227485A60()
{
  sub_226EC70B4(*(v0 + 56), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227485AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227485BA4, 0, 0);
}

uint64_t sub_227485BA4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[13];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[14] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 210;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_227485DF0;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v8 = (v0[9] + *v0[9]);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_227486040;
    v6 = v0[6];

    return v8(v0 + 5, v6);
  }
}

uint64_t sub_227485DF0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_227485858;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227485F48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227485F48()
{
  v4 = (v0[9] + *v0[9]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_227486040;
  v2 = v0[6];

  return v4(v0 + 5, v2);
}

uint64_t sub_227486040()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_227485A60;
  }

  else
  {
    v2 = sub_227486154;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227486154()
{
  v1 = *(v0 + 40);
  sub_226EC70B4(*(v0 + 56), *(v0 + 64));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2274861D0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22748624C()
{
  sub_226EC70B4(*(v0 + 64), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2274862BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 56) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 40) = a1;

  return MEMORY[0x2822009F8](sub_227486398, 0, 0);
}

uint64_t sub_227486398()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[13];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[14] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 210;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_2274865E4;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v7 = (v0[9] + *v0[9]);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_227486834;

    return v7(v0 + 6, v0 + 5);
  }
}

uint64_t sub_2274865E4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_22748EA74;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_22748673C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22748673C()
{
  v3 = (*(v0 + 72) + **(v0 + 72));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_227486834;

  return v3(v0 + 48, v0 + 40);
}

uint64_t sub_227486834()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_22748EA78;
  }

  else
  {
    v2 = sub_22748EA80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227486948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 64) = a6;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDF30, &qword_227687068);
  *(v6 + 88) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v6 + 96) = v7;
  *(v6 + 104) = *(v7 - 8);
  *(v6 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227486A58, 0, 0);
}

uint64_t sub_227486A58()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[14];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[15] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 210;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_227486CA0;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v9 = (v0[9] + *v0[9]);
    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_227486F74;
    v6 = v0[11];
    v7 = v0[6];

    return v9(v6, v7);
  }
}

uint64_t sub_227486CA0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v3 = sub_227486EEC;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227486DF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227486DF8()
{
  v5 = (v0[9] + *v0[9]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_227486F74;
  v2 = v0[11];
  v3 = v0[6];

  return v5(v2, v3);
}

uint64_t sub_227486EEC()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227486F74()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_227487124;
  }

  else
  {
    v2 = sub_227487088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227487088()
{
  v1 = v0[8];
  v2 = *(v0 + 7);
  sub_22748E50C(*(v0 + 11), *(v0 + 5));
  sub_226EC70B4(v2, v1);

  v3 = *(v0 + 1);

  return v3();
}

uint64_t sub_227487124()
{
  sub_226EC70B4(*(v0 + 56), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2274871A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227487274, 0, 0);
}

uint64_t sub_227487274()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[13];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[14] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 210;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_2274874C0;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D54, v2, v4);
  }

  else
  {
    v8 = (v0[9] + *v0[9]);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_227487710;
    v6 = v0[6];

    return v8(v0 + 5, v6);
  }
}

uint64_t sub_2274874C0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_22748EA74;
  }

  else
  {
    v5 = v2[12];
    v4 = v2[13];
    v6 = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_227487618;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227487618()
{
  v4 = (v0[9] + *v0[9]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_227487710;
  v2 = v0[6];

  return v4(v0 + 5, v2);
}

uint64_t sub_227487710()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_22748EA78;
  }

  else
  {
    v2 = sub_22748EA7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227487824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274878F8, 0, 0);
}

uint64_t sub_2274878F8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[13];
    sub_2276696A0();

    v2 = swift_task_alloc();
    v0[14] = v2;
    *(v2 + 16) = "SeymourServices/ScriptConnection.swift";
    *(v2 + 24) = 38;
    *(v2 + 32) = 2;
    *(v2 + 40) = 210;
    *(v2 + 48) = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_2274874C0;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227485280, v2, v4);
  }

  else
  {
    v8 = (v0[9] + *v0[9]);
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_227487710;
    v6 = v0[6];

    return v8(v0 + 5, v6);
  }
}