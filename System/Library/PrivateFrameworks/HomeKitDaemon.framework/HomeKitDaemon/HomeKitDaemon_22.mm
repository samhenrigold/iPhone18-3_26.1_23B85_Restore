void *sub_22976DCE8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A78, &qword_22A5822B0);
  MEMORY[0x28223BE20](v38);
  v37 = &v29 - v5;
  v6 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v10;
    }

    v11 = a1;
    v43 = MEMORY[0x277D84F90];
    a1 = &v43;
    result = sub_2295833D4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v10 = v43;
    v14 = v11;
    v33 = v11;
    v34 = v11 & 0xC000000000000001;
    v29 = v3;
    v30 = v11 & 0xFFFFFFFFFFFFFF8;
    v31 = i;
    v32 = v8;
    while (!__OFADD__(v13, 1))
    {
      v41 = v13 + 1;
      v42 = v10;
      if (v34)
      {
        v15 = MEMORY[0x22AAD13F0](v13, v14);
      }

      else
      {
        if (v13 >= *(v30 + 16))
        {
          goto LABEL_16;
        }

        v15 = *(v14 + 8 * v13 + 32);
      }

      v40 = v15;
      v17 = *v39;
      v16 = *(v39 + 8);
      v18 = *(v39 + 16);
      v19 = *(v39 + 24);
      v20 = *(v39 + 32);
      v21 = v37;
      v22 = &v37[*(v38 + 36)];
      sub_22956C148(*v39, v16);

      sub_22A4DC28C();
      a1 = v22 + *(v36 + 20);
      *a1 = 0;
      *(a1 + 8) = 0;
      *v21 = v17;
      *(v21 + 8) = v16;
      *(v21 + 16) = v18;
      *(v21 + 24) = v19;
      *(v21 + 32) = v20;
      v23 = v40;
      v24 = [v40 serviceType];
      v8 = sub_22A4DD5EC();
      v26 = v25;

      *a1 = v8;
      *(a1 + 8) = v26;
      v27 = v32;
      sub_22976ECA4(v22, v32, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
      sub_22953EAE4(v21, &qword_27D880A78, &qword_22A5822B0);

      v10 = v42;
      v43 = v42;
      v3 = *(v42 + 16);
      v28 = *(v42 + 24);
      if (v3 >= v28 >> 1)
      {
        a1 = &v43;
        sub_2295833D4((v28 > 1), v3 + 1, 1);
        v10 = v43;
      }

      *(v10 + 16) = v3 + 1;
      sub_22976ED0C(v27, v10 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v3, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService);
      ++v13;
      v14 = v33;
      if (v41 == v31)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

void *sub_22976E028(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EE28, &qword_22A57DC78);
  MEMORY[0x28223BE20](v38);
  v6 = &v30 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic(0);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v11 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v11;
    }

    v12 = a1;
    v42 = MEMORY[0x277D84F90];
    a1 = &v42;
    result = sub_229583418(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v11 = v42;
    v15 = v12;
    v34 = v12;
    v35 = v12 & 0xC000000000000001;
    v30 = v3;
    v31 = v12 & 0xFFFFFFFFFFFFFF8;
    v32 = i;
    v33 = v9;
    while (!__OFADD__(v14, 1))
    {
      v40 = v14 + 1;
      v41 = v11;
      if (v35)
      {
        v16 = MEMORY[0x22AAD13F0](v14, v15);
      }

      else
      {
        if (v14 >= *(v31 + 16))
        {
          goto LABEL_16;
        }

        v16 = *(v15 + 8 * v14 + 32);
      }

      a1 = v16;
      v17 = *v39;
      v18 = *(v39 + 8);
      v19 = *(v39 + 16);
      v20 = *(v39 + 24);
      v9 = *(v39 + 32);
      v21 = &v6[*(v38 + 36)];
      sub_22956C148(*v39, v18);

      sub_22A4DC28C();
      v22 = v37;
      v23 = (v21 + v37[5]);
      *v23 = 0;
      v23[1] = 0;
      v24 = v21 + v22[6];
      *v24 = 0;
      *(v24 + 4) = 1;
      v25 = (v21 + v22[7]);
      *v25 = 0;
      v25[1] = 0;
      v26 = v21 + v22[8];
      *v26 = 0;
      *(v26 + 4) = 1;
      *v6 = v17;
      *(v6 + 1) = v18;
      *(v6 + 2) = v19;
      *(v6 + 3) = v20;
      v6[32] = v9;
      sub_2296B2D04(v6);
      v27 = v33;
      sub_22976ECA4(v21, v33, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
      sub_22953EAE4(v6, &qword_27D87EE28, &qword_22A57DC78);

      v11 = v41;
      v42 = v41;
      v29 = *(v41 + 16);
      v28 = *(v41 + 24);
      v3 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        a1 = &v42;
        sub_229583418((v28 > 1), v29 + 1, 1);
        v11 = v42;
      }

      *(v11 + 16) = v3;
      sub_22976ED0C(v27, v11 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29, type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDCharacteristic);
      ++v14;
      v15 = v34;
      if (v40 == v32)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_22976E364(uint64_t *a1)
{
  v2 = v1;
  v13 = _s21EventMetadataInternalVMa(0);
  v14 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_22976ECA4(v1, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, v12);
  sub_22953EAE4(v12, &qword_27D882000, &qword_22A578390);
  v5 = _s12HAPAccessoryO5EventVMa(0);
  v6 = sub_22976DAFC(*(v1 + v5[5]), a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A38, &qword_22A5821E8);
  v13 = v7;
  v8 = sub_22976E55C();
  v14 = v8;
  v12[0] = v6;
  sub_229890DC4(v12, 0xD000000000000017, 0x800000022A5952F0);
  v9 = sub_22976D7EC(*(v2 + v5[6]), a1);
  v13 = v7;
  v14 = v8;
  v12[0] = v9;
  sub_229890DC4(v12, 0xD000000000000012, 0x800000022A595310);
  v10 = *(v2 + v5[7]);
  v13 = MEMORY[0x277D84CC0];
  v14 = &off_283CDFC58;
  LODWORD(v12[0]) = v10;
  return sub_229890DC4(v12, 0x656372756F73, 0xE600000000000000);
}

uint64_t _s12HAPAccessoryO5EventVMa(uint64_t a1)
{
  result = qword_27D880A48;
  if (!qword_27D880A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22976E55C()
{
  result = qword_27D880A40;
  if (!qword_27D880A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D880A38, &qword_22A5821E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880A40);
  }

  return result;
}

uint64_t sub_22976E5D8(uint64_t a1)
{
  v2 = v1;
  KeyPath = swift_getKeyPath();
  v14 = _s21EventMetadataInternalVMa(0);
  v15 = sub_22976EC5C(&qword_27D87CC28, _s21EventMetadataInternalVMa, &unk_22A57FD08);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_22976ECA4(v2, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_229679D28(KeyPath, v13);

  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  v6 = _s12HAPAccessoryO5EventVMa(0);
  v7 = sub_22976E028(*(v2 + v6[5]), a1);
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E790, &qword_22A57C490) + 36));

  *v8 = v7;
  v9 = sub_22976DCE8(*(v2 + v6[6]), a1);

  v8[1] = v9;
  v10 = *(v2 + v6[7]);
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  v12 = v8 + *(result + 32);
  *v12 = v10;
  v12[4] = 0;
  return result;
}

uint64_t sub_22976E740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0);
  sub_2296AF1D0(a1 + *(v7 + 28), v6);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22976ED0C(v6, a2, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  }

  sub_22A4DC28C();
  v10 = *(v8 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_27D87DF28;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_22976E8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22976ECA4(a1, v7, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v8 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHAPAccessoryEvent(0) + 28);
  sub_22953EAE4(a2 + v8, &qword_27D87CC38, &unk_22A5784B0);
  sub_22976ED0C(v7, a2 + v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void sub_22976EA54(uint64_t a1)
{
  _s21EventMetadataInternalVMa(319);
  if (v1 <= 0x3F)
  {
    sub_22976EB38(319, &qword_27D880A58, &unk_27D87E490, off_2786660B8);
    if (v2 <= 0x3F)
    {
      sub_22976EB38(319, &qword_27D880A60, &unk_27D87D360, off_278666310);
      if (v3 <= 0x3F)
      {
        sub_229564D4C(319, v3, v4, v5);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22976EB38(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_229562F68(255, a3, a4);
    v5 = sub_22A4DD88C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22976EBD8(uint64_t a1)
{
  *(a1 + 16) = sub_22976EC5C(&qword_27D880A68, _s12HAPAccessoryO5EventVMa, &unk_22A582208);
  result = sub_22976EC5C(&qword_27D880A70, _s12HAPAccessoryO5EventVMa, &unk_22A582250);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22976EC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22976ECA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22976ED0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22976ED74(uint64_t a1, uint64_t a2)
{
  v5 = sub_2297731F0(v2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_229543DBC(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16) || (v9 = sub_229543DBC(0x4E65636976726553, 0xEB00000000656D61), (v10 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v12 + 56) + 32 * v9, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

void sub_22976EEB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
    v2 = sub_22A4DE40C();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5)) | (v9 << 6);
        sub_2295403F4(*(a1 + 48) + 40 * v10, v30);
        sub_2295404B0(*(a1 + 56) + 32 * v10, v31 + 8);
        v28[0] = v31[0];
        v28[1] = v31[1];
        v29 = v32;
        v27[0] = v30[0];
        v27[1] = v30[1];
        sub_2295403F4(v27, v22);
        if (!swift_dynamicCast())
        {
          sub_22953EAE4(v27, &qword_27D880A80, &qword_22A5822F0);

          goto LABEL_23;
        }

        v11 = v21[0];
        v12 = v21[1];
        sub_2295404B0(v28 + 8, v21);
        sub_22953EAE4(v27, &qword_27D880A80, &qword_22A5822F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        sub_229543C5C(v20, v22);
        sub_229543C5C(v22, v23);
        *&v24 = v11;
        *(&v24 + 1) = v12;
        sub_229543C5C(v23, v25);
        v13 = v24;
        sub_229543C5C(v25, v26);
        sub_229543C5C(v26, &v24);
        v14 = sub_229543DBC(v13, *(&v13 + 1));
        v15 = v14;
        if (v16)
        {
          *(v2[6] + 16 * v14) = v13;

          v8 = (v2[7] + 32 * v15);
          __swift_destroy_boxed_opaque_existential_0(v8);
          sub_229543C5C(&v24, v8);
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          *(v2[6] + 16 * v14) = v13;
          sub_229543C5C(&v24, (v2[7] + 32 * v14));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_26;
          }

          v2[2] = v19;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }

      memset(v20, 0, sizeof(v20));
      sub_22953EAE4(v20, &unk_27D87FC20, &unk_22A578810);
LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22976F258(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = sub_22A4DE40C();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v14 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v14);
    ++v11;
  }

  while (!v9);
  while (1)
  {
    v15 = (*(a1 + 48) + 16 * (__clz(__rbit64(v9)) | (v14 << 6)));
    v17 = *v15;
    v16 = v15[1];

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    if (!swift_dynamicCast())
    {
      break;
    }

    v9 &= v9 - 1;
    v18 = sub_229543DBC(v17, v16);
    if (v19)
    {
      v12 = (v6[6] + 16 * v18);
      *v12 = v17;
      v12[1] = v16;
      v13 = v18;

      *(v6[7] + 8 * v13) = v26;

      v11 = v14;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_22;
      }

      *(v6 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
      v20 = (v6[6] + 16 * v18);
      *v20 = v17;
      v20[1] = v16;
      *(v6[7] + 8 * v18) = v26;
      v21 = v6[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v6[2] = v23;
      v11 = v14;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v14 = v11;
  }
}

void sub_22976F484(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882050, &unk_22A577C10);
    v2 = sub_22A4DE40C();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_2295403F4(*(a1 + 48) + 40 * v11, v27);
    sub_2295404B0(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_2295403F4(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_2295404B0(v25 + 8, v20);
    sub_22953EAE4(v24, &qword_27D880A80, &qword_22A5822F0);
    v21 = v18;
    sub_229543C5C(v20, v22);
    v12 = v21;
    sub_229543C5C(v22, v23);
    sub_229543C5C(v23, &v21);
    v13 = sub_229543DBC(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0(v9);
      sub_229543C5C(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_229543C5C(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_22953EAE4(v24, &qword_27D880A80, &qword_22A5822F0);
}

uint64_t sub_22976F760(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_22976F784, 0, 0);
}

uint64_t sub_22976F784()
{
  v1 = v0[8];
  v2 = v0[9];
  if (v1)
  {
    v3 = v0[7];
  }

  else
  {
    v3 = 0x53555F6E65;
  }

  if (v1)
  {
    v4 = v0[8];
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_2297731F0(v2);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {

    goto LABEL_15;
  }

  v7 = sub_229543DBC(v3, v4);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_15:

    v10 = 0;
    goto LABEL_16;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, (v0 + 2));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if (swift_dynamicCast())
  {
    v10 = v0[6];
  }

  else
  {
    v10 = 0;
  }

LABEL_16:
  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_22976F8D0(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = sub_22A4DB7DC();
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22976F994, 0, 0);
}

void sub_22976F994()
{
  v1 = *(v0 + 744);
  v2 = MEMORY[0x277D837D0];
  if (!*(v1 + 16) || (v3 = sub_229543DBC(0x4E65636976726553, 0xEB00000000656D61), (v4 & 1) == 0))
  {
    v16 = *(v0 + 752);
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_22953EAE4(v0 + 464, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 680) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v18 = [v16 shortDescription];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    *(inited + 72) = v2;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x800000022A595330;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
LABEL_22:
    swift_willThrow();
LABEL_23:

    v41 = *(v0 + 8);
LABEL_24:

    v41();
    return;
  }

  v5 = *(v0 + 744);
  sub_2295404B0(*(v5 + 56) + 32 * v3, v0 + 464);
  sub_22953EAE4(v0 + 464, &unk_27D87FC20, &unk_22A578810);
  if (!*(v1 + 16) || (v6 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265), (v7 & 1) == 0) || (sub_2295404B0(*(v5 + 56) + 32 * v6, v0 + 400), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    v35 = *(v0 + 752);
    type metadata accessor for HMError(0);
    *(v0 + 640) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v36 = swift_initStackObject();
    *(v36 + 32) = 0x6E6F73616552;
    *(v36 + 16) = xmmword_22A576180;
    *(v36 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v37 = [v35 shortDescription];
    v38 = sub_22A4DD5EC();
    v40 = v39;

    MEMORY[0x22AAD08C0](v38, v40);

    *(v36 + 72) = v2;
    *(v36 + 48) = 0xD00000000000002ALL;
    *(v36 + 56) = 0x800000022A58DE00;
    sub_22956AD8C(v36);
    swift_setDeallocating();
    sub_22953EAE4(v36 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v94 = *(v0 + 760);
  v10 = *(v0 + 576);
  v11 = *(v0 + 584);
  v12 = [*(v0 + 752) uuid];
  sub_22A4DB79C();

  v13 = sub_22A4DB76C();
  v15 = v14;
  (*(v9 + 8))(v8, v94);
  if (v13 != v10 || v15 != v11)
  {
    v22 = sub_22A4DE60C();

    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_11:
  if (!*(v1 + 16))
  {
    goto LABEL_28;
  }

  v23 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449);
  if ((v24 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v23, v0 + 496);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v25 = *(v0 + 752);
  v26 = *(v0 + 616);
  sub_229562F68(0, &qword_281401760, 0x277D82BB8);
  v27 = [v25 instanceID];
  LOBYTE(v25) = sub_22A4DDEDC();

  if ((v25 & 1) == 0)
  {

LABEL_28:
    v42 = *(v0 + 752);
    type metadata accessor for HMError(0);
    *(v0 + 608) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v43 = swift_initStackObject();
    *(v43 + 32) = 0x6E6F73616552;
    *(v43 + 16) = xmmword_22A576180;
    *(v43 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v44 = [v42 shortDescription];
    v45 = sub_22A4DD5EC();
    v47 = v46;

    MEMORY[0x22AAD08C0](v45, v47);

    *(v43 + 72) = MEMORY[0x277D837D0];
    *(v43 + 48) = 0xD00000000000002ALL;
    *(v43 + 56) = 0x800000022A595350;
    sub_22956AD8C(v43);
    swift_setDeallocating();
    sub_22953EAE4(v43 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_22;
  }

  if (!*(v1 + 16))
  {
    goto LABEL_35;
  }

  v28 = sub_229543DBC(1701869908, 0xE400000000000000);
  if ((v29 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v28, v0 + 528);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v95 = v26;
  v92 = *(v0 + 592);
  v30 = *(v0 + 600);
  v31 = [*(v0 + 752) type];
  v32 = sub_22A4DD5EC();
  v34 = v33;

  if (v92 != v32 || v30 != v34)
  {
    v48 = sub_22A4DE60C();

    v26 = v95;
    if (v48)
    {
      goto LABEL_30;
    }

LABEL_35:
    v54 = *(v0 + 752);
    type metadata accessor for HMError(0);
    *(v0 + 632) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v55 = swift_initStackObject();
    *(v55 + 32) = 0x6E6F73616552;
    *(v55 + 16) = xmmword_22A576180;
    *(v55 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v56 = [v54 shortDescription];
    v57 = sub_22A4DD5EC();
    v59 = v58;

    MEMORY[0x22AAD08C0](v57, v59);

    *(v55 + 72) = MEMORY[0x277D837D0];
    *(v55 + 48) = 0xD000000000000024;
    *(v55 + 56) = 0x800000022A595380;
    sub_22956AD8C(v55);
    swift_setDeallocating();
    sub_22953EAE4(v55 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
LABEL_36:
    swift_willThrow();

    goto LABEL_23;
  }

  v26 = v95;
LABEL_30:
  if (!*(v1 + 16) || (v49 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972), (v50 & 1) == 0) || (v51 = (v0 + 672), sub_2295404B0(*(v5 + 56) + 32 * v49, v0 + 432), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0), (swift_dynamicCast() & 1) == 0))
  {
    v60 = *(v0 + 752);
    type metadata accessor for HMError(0);
    *(v0 + 664) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v61 = swift_allocObject();
    *(v61 + 32) = 0x6E6F73616552;
    *(v61 + 16) = xmmword_22A576180;
    *(v61 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v62 = [v60 shortDescription];
    v63 = sub_22A4DD5EC();
    v65 = v64;

    MEMORY[0x22AAD08C0](v63, v65);

    *(v61 + 72) = MEMORY[0x277D837D0];
    *(v61 + 48) = 0xD00000000000002CLL;
    *(v61 + 56) = 0x800000022A5953B0;
    sub_22956AD8C(v61);
    swift_setDeallocating();
    sub_22953EAE4(v61 + 32, &qword_27D87CDA0, &unk_22A57A930);
    swift_deallocClassInstance();
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    goto LABEL_36;
  }

  v52 = *v51;
  v91 = *(*v51 + 16);
  if (!v91)
  {
LABEL_51:

    v41 = *(v0 + 8);
    goto LABEL_24;
  }

  v53 = 0;
  while (v53 < *(v52 + 16))
  {
    v67 = *(v52 + 8 * v53 + 32);
    v68 = *(v67 + 16);

    if (!v68 || (v69 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449), (v70 & 1) == 0) || (sub_2295404B0(*(v67 + 56) + 32 * v69, v0 + 368), (swift_dynamicCast() & 1) == 0) || (v71 = *(v0 + 704), v72 = [*(v0 + 752) findCharacteristic_], v71, (v93 = v72) == 0))
    {

      type metadata accessor for HMError(0);
      *(v0 + 696) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      v81 = swift_allocObject();
      *(v81 + 32) = 0x6E6F73616552;
      *(v81 + 16) = xmmword_22A576180;
      *(v81 + 40) = 0xE600000000000000;
      sub_22A4DE1FC();

      v82 = MEMORY[0x277D837D0];
      v83 = sub_22A4DD4AC();
      v85 = v84;

      MEMORY[0x22AAD08C0](v83, v85);

      *(v81 + 72) = v82;
      *(v81 + 48) = 0xD000000000000030;
      *(v81 + 56) = 0x800000022A5953E0;
      sub_22956AD8C(v81);
      swift_setDeallocating();
      sub_22953EAE4(v81 + 32, &qword_27D87CDA0, &unk_22A57A930);
      swift_deallocClassInstance();
      sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      swift_willThrow();
      goto LABEL_55;
    }

    if (!*(v67 + 16) || (v73 = sub_229543DBC(1701869908, 0xE400000000000000), (v74 & 1) == 0))
    {

LABEL_54:

      type metadata accessor for HMError(0);
      *(v0 + 728) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      v86 = swift_allocObject();
      *(v86 + 32) = 0x6E6F73616552;
      *(v86 + 16) = xmmword_22A576180;
      *(v86 + 40) = 0xE600000000000000;
      sub_22A4DE1FC();

      v87 = [v93 shortDescription];
      v88 = sub_22A4DD5EC();
      v90 = v89;

      MEMORY[0x22AAD08C0](v88, v90);

      *(v86 + 72) = MEMORY[0x277D837D0];
      *(v86 + 48) = 0xD00000000000001CLL;
      *(v86 + 56) = 0x800000022A595420;
      sub_22956AD8C(v86);
      swift_setDeallocating();
      sub_22953EAE4(v86 + 32, &qword_27D87CDA0, &unk_22A57A930);
      swift_deallocClassInstance();
      sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      swift_willThrow();

LABEL_55:
      goto LABEL_23;
    }

    sub_2295404B0(*(v67 + 56) + 32 * v73, v0 + 336);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_54;
    }

    v75 = *(v0 + 560);
    v76 = *(v0 + 568);
    v77 = [v72 type];
    v78 = sub_22A4DD5EC();
    v80 = v79;

    if (v75 == v78 && v76 == v80)
    {
    }

    else
    {
      v66 = sub_22A4DE60C();

      if ((v66 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    ++v53;

    if (v91 == v53)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
}

void *sub_229770AB8()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F98];
  v65 = MEMORY[0x277D84F98];
  v7 = [v1 name];
  v8 = MEMORY[0x277D837D0];
  if (v7)
  {
    v9 = v7;
    v10 = sub_22A4DD5EC();
    v12 = v11;

    v64 = v8;
    *&v63 = v10;
    *(&v63 + 1) = v12;
    sub_229543C5C(&v63, &v61);
    LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
    v60 = v6;
    v13 = __swift_mutable_project_boxed_opaque_existential_0(&v61, v62);
    MEMORY[0x28223BE20](v13);
    v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v15);
    sub_2297FF768(v15, 0x4E65636976726553, 0xEB00000000656D61, v9, &v60, v8);
    __swift_destroy_boxed_opaque_existential_0(&v61);
    v65 = v60;
  }

  else
  {
    sub_2297FCFD4(0x4E65636976726553, 0xEB00000000656D61, &v63);
    sub_22953EAE4(&v63, &unk_27D87FC20, &unk_22A578810);
  }

  v17 = [v1 uuid];
  sub_22A4DB79C();

  v18 = sub_22A4DB76C();
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v64 = v8;
  *&v63 = v18;
  *(&v63 + 1) = v20;
  sub_229543C5C(&v63, &v61);
  v21 = v65;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v21;
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v61, v62);
  MEMORY[0x28223BE20](v23);
  v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_2297FE940(*v25, v25[1], 0x696669746E656449, 0xEA00000000007265, isUniquelyReferenced_nonNull_native, &v60);
  __swift_destroy_boxed_opaque_existential_0(&v61);
  v27 = v60;
  v28 = [v1 type];
  v29 = sub_22A4DD5EC();
  v31 = v30;

  v64 = v8;
  *&v63 = v29;
  *(&v63 + 1) = v31;
  sub_229543C5C(&v63, &v61);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v27;
  v33 = __swift_mutable_project_boxed_opaque_existential_0(&v61, v62);
  MEMORY[0x28223BE20](v33);
  v35 = (&v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  sub_2297FE940(*v35, v35[1], 1701869908, 0xE400000000000000, v32, &v60);
  __swift_destroy_boxed_opaque_existential_0(&v61);
  v37 = v60;
  v38 = [v1 instanceID];
  v64 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *&v63 = v38;
  sub_229543C5C(&v63, &v61);
  LOBYTE(v38) = swift_isUniquelyReferenced_nonNull_native();
  v60 = v37;
  v39 = __swift_mutable_project_boxed_opaque_existential_0(&v61, v62);
  MEMORY[0x28223BE20](v39);
  v41 = (&v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  sub_2297FED80(*v41, 0x65636E6174736E49, 0xEA00000000004449, v38, &v60);
  __swift_destroy_boxed_opaque_existential_0(&v61);
  v65 = v60;
  v43 = [v1 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v44 = sub_22A4DD83C();

  if (!(v44 >> 62))
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_6;
    }

LABEL_16:

    v48 = MEMORY[0x277D84F90];
LABEL_17:
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    *&v63 = v48;
    sub_229543C5C(&v63, &v61);
    v54 = v65;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v54;
    v56 = __swift_mutable_project_boxed_opaque_existential_0(&v61, v62);
    MEMORY[0x28223BE20](v56);
    v58 = (&v60 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v59 + 16))(v58);
    sub_2297FED58(*v58, 0x6574636172616843, 0xEF73636974736972, v55, &v60);
    __swift_destroy_boxed_opaque_existential_0(&v61);
    return v60;
  }

  v45 = sub_22A4DE0EC();
  if (!v45)
  {
    goto LABEL_16;
  }

LABEL_6:
  *&v63 = MEMORY[0x277D84F90];
  result = sub_229583714(0, v45 & ~(v45 >> 63), 0);
  if ((v45 & 0x8000000000000000) == 0)
  {
    v47 = 0;
    v48 = v63;
    do
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x22AAD13F0](v47, v44);
      }

      else
      {
        v49 = *(v44 + 8 * v47 + 32);
      }

      v50 = v49;
      v51 = sub_22970FED0();

      *&v63 = v48;
      v53 = *(v48 + 16);
      v52 = *(v48 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_229583714((v52 > 1), v53 + 1, 1);
        v48 = v63;
      }

      ++v47;
      *(v48 + 16) = v53 + 1;
      *(v48 + 8 * v53 + 32) = v51;
    }

    while (v45 != v47);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2297712F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_229771318, 0, 0);
}

uint64_t sub_229771318()
{
  v1 = v0[14];
  v2 = sub_2297728CC(v0[11]);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &unk_27D87D360, off_278666310);
  v0[6] = &off_283CE3BD8;
  v0[2] = v1;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[7] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22958D81C;
  v5 = v0[12];
  v6 = v0[13];

  return sub_229709F5C((v0 + 2), (v0 + 7), v5, v6);
}

uint64_t sub_229771444(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v6 = swift_task_alloc();
  v3[23] = v6;
  *v6 = v3;
  v6[1] = sub_2297714F0;

  return sub_22976F760(a1, a2);
}

uint64_t sub_2297714F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229771624, 0, 0);
  }
}

uint64_t sub_229771624()
{
  if (!*(v0 + 192))
  {
    goto LABEL_44;
  }

  v1 = sub_22976ED74(*(v0 + 160), *(v0 + 168));
  *(v0 + 200) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [*(v0 + 176) name];
    if (!v5)
    {
LABEL_9:
      v12 = swift_task_alloc();
      *(v0 + 208) = v12;
      *v12 = v0;
      v12[1] = sub_229771BDC;

      return sub_2298079DC(v3, v4);
    }

    v6 = v5;
    v7 = sub_22A4DD5EC();
    v9 = v8;

    if (v7 == v3 && v4 == v9)
    {
    }

    else
    {
      v11 = sub_22A4DE60C();

      if ((v11 & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  if (!*(*(v0 + 192) + 16))
  {
    goto LABEL_43;
  }

  v14 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972);
  if ((v15 & 1) == 0)
  {
    goto LABEL_43;
  }

  sub_2295404B0(*(*(v0 + 192) + 56) + 32 * v14, v0 + 16);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_44:
    v38 = *(v0 + 8);

    return v38();
  }

  v17 = *(v0 + 144);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_43:

    goto LABEL_44;
  }

  v19 = 0;
  while (v19 < *(v17 + 16))
  {
    v20 = *(v17 + 32 + 8 * v19);
    if (*(v20 + 16))
    {

      v21 = sub_229543DBC(0x65756C6156, 0xE500000000000000);
      if (v22)
      {
        sub_2295404B0(*(v20 + 56) + 32 * v21, v0 + 80);
        sub_229543C5C((v0 + 80), (v0 + 48));
        if (*(v20 + 16) && (v23 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449), (v24 & 1) != 0) && (sub_2295404B0(*(v20 + 56) + 32 * v23, v0 + 112), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast() & 1) != 0) && (v25 = *(v0 + 152), v26 = [*(v0 + 176) findCharacteristic_], v25, v26))
        {
          __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
          [v26 setLastKnownValue_];
          swift_unknownObjectRelease();
          v27 = [v26 service];
          if (v27 && (v28 = v27, v29 = [v27 accessory], v28, v29))
          {
            v39 = v26;
            v40 = v16;
            v30 = [v29 identifier];
            v31 = v29;
            v32 = v30;
            if (!v30)
            {
              sub_22A4DD5EC();
              v32 = sub_22A4DD5AC();

              v31 = v29;
            }

            v33 = v31;
            v34 = [v31 hapInstanceId];
            v35 = [v33 matchingHAPAccessoryWithServerIdentifier:v32 instanceID:v34];

            if (v35)
            {
              v36 = v35;
              v37 = [v39 characteristicForHAPAccessory_];

              if (v37)
              {
                __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
                [v37 setValue_];

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            else
            {
            }

            v16 = v40;
          }

          else
          {
          }
        }

        else
        {
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 48));
      }

      else
      {
      }
    }

    if (v18 == ++v19)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229771BDC()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_229772198;
  }

  else
  {
    v2 = sub_229771CF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229771CF0()
{

  if (!*(*(v0 + 192) + 16))
  {
    goto LABEL_30;
  }

  v1 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972);
  if ((v2 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_2295404B0(*(*(v0 + 192) + 56) + 32 * v1, v0 + 16);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_31:
    v26 = *(v0 + 8);

    return v26();
  }

  v5 = *(v0 + 144);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_30:

    goto LABEL_31;
  }

  v7 = 0;
  while (v7 < *(v5 + 16))
  {
    v8 = *(v5 + 32 + 8 * v7);
    if (*(v8 + 16))
    {

      v9 = sub_229543DBC(0x65756C6156, 0xE500000000000000);
      if (v10)
      {
        sub_2295404B0(*(v8 + 56) + 32 * v9, v0 + 80);
        sub_229543C5C((v0 + 80), (v0 + 48));
        if (*(v8 + 16) && (v11 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449), (v12 & 1) != 0) && (sub_2295404B0(*(v8 + 56) + 32 * v11, v0 + 112), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast() & 1) != 0) && (v13 = *(v0 + 152), v14 = [*(v0 + 176) findCharacteristic_], v13, v14))
        {
          __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
          [v14 setLastKnownValue_];
          swift_unknownObjectRelease();
          v15 = [v14 service];
          if (v15 && (v16 = v15, v17 = [v15 accessory], v16, v17))
          {
            v27 = v14;
            v28 = v3;
            v18 = [v17 identifier];
            v19 = v17;
            v20 = v18;
            if (!v18)
            {
              sub_22A4DD5EC();
              v20 = sub_22A4DD5AC();

              v19 = v17;
            }

            v21 = v19;
            v22 = [v19 hapInstanceId];
            v23 = [v21 matchingHAPAccessoryWithServerIdentifier:v20 instanceID:v22];

            if (v23)
            {
              v24 = v23;
              v25 = [v27 characteristicForHAPAccessory_];

              if (v25)
              {
                __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
                [v25 setValue_];

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            else
            {
            }

            v3 = v28;
          }

          else
          {
          }
        }

        else
        {
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 48));
      }

      else
      {
      }
    }

    if (v6 == ++v7)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229772198()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_229772204()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v7 = [v1 uuid];
    sub_22A4DB79C();

    v8 = objc_allocWithZone(HMDApplicationData);
    v9 = sub_22A4DB77C();
    v10 = [v8 initWithParentUUID_];

    (*(v3 + 8))(v5, v2);
    return v10;
  }

  return result;
}

uint64_t sub_229772344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_2297723F4;

  return sub_22976F760(a3, a4);
}

uint64_t sub_2297723F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_22958D650;
  }

  else
  {
    v4 = sub_229772508;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229772508()
{
  v14 = v0;
  v1 = *(v0 + 128);
  if (!v1)
  {
    v1 = sub_229770AB8();
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 40) = MEMORY[0x277D837D0];
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  sub_229543C5C((v0 + 16), (v0 + 48));

  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v13 = v1;
  v4 = *(v0 + 72);
  v5 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 48, v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  sub_2297FE940(*v7, v7[1], 0x4E65636976726553, 0xEB00000000656D61, v3, &v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  v8 = v13;
  *(v0 + 144) = v13;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_22958D534;
  v10 = *(v0 + 104);
  v11 = *(v0 + 96);

  return sub_2297712F4(v8, v11, v10);
}

uint64_t sub_2297726E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229569B30;

  return sub_229772344(a1, a2, a3, a4);
}

id sub_2297727CC()
{
  v1 = [*v0 accessory];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 home];
  v4 = [v3 backingStore];

  return v4;
}

unint64_t *sub_229772854(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_229772A2C(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_2297728CC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_229772A2C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_229772854(v8, v4, v2);
  result = MEMORY[0x22AAD4E50](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_229772A2C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = result;
  v20 = 0;
  v3 = 0;
  v22 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(v22 + 48) + 16 * v12);
    v14 = v13[1];
    v21[0] = *v13;
    v21[1] = v14;
    MEMORY[0x28223BE20](result);
    v17[2] = v21;

    v15 = sub_22986A5E0(sub_22959E60C, v17, &unk_283CDA2E8);

    if ((v15 & 1) == 0)
    {
      *(v19 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_229772BD4(v19, v18, v20, v22);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_229772BD4(v19, v18, v20, v22);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229772BD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
  result = sub_22A4DE40C();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_2295404B0(v17 + 32 * v16, v33);
    sub_229543C5C(v33, v32);
    sub_22A4DE77C();

    sub_22A4DD6BC();
    result = sub_22A4DE7BC();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_229543C5C(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
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

uint64_t sub_229772E24(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v52 = sub_22A4DB7DC();
  v49 = *(v52 - 8);
  v7 = MEMORY[0x28223BE20](v52);
  v51 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v37 - v9;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882110, &qword_22A57DD30);
  result = sub_22A4DE40C();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v42;
  }

  v13 = 0;
  v40 = v49 + 16;
  v41 = result;
  v50 = v49 + 32;
  v14 = result + 64;
  v38 = a2;
  v39 = a4;
  while (v12)
  {
    v46 = a3;
    v15 = __clz(__rbit64(v12));
    v44 = (v12 - 1) & v12;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = a4[6];
    v20 = v49;
    v48 = *(v49 + 72);
    v21 = v43;
    v22 = v52;
    (*(v49 + 16))(v43, v19 + v48 * v18, v52);
    v23 = (a4[7] + 24 * v18);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v45 = *(v20 + 32);
    v45(v51, v21, v22);
    v11 = v41;
    sub_2295AEE34(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v47 = v25;

    v27 = v26;
    result = sub_22A4DD4EC();
    v28 = -1 << *(v11 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v14 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v45)(*(v11 + 48) + v31 * v48, v51, v52);
    v36 = (*(v11 + 56) + 24 * v31);
    *v36 = v47;
    v36[1] = v24;
    v36[2] = v26;
    ++*(v11 + 16);
    a3 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
      goto LABEL_32;
    }

    a2 = v38;
    a4 = v39;
    v12 = v44;
    if (v46 == 1)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = v42[v13];
    ++v16;
    if (v17)
    {
      v46 = a3;
      v15 = __clz(__rbit64(v17));
      v44 = (v17 - 1) & v17;
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

uint64_t sub_2297731F0(void *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 appData];
  if (!v6)
  {
    v7 = [a1 uuid];
    sub_22A4DB79C();

    v8 = objc_allocWithZone(HMDApplicationData);
    v9 = sub_22A4DB77C();
    v6 = [v8 initWithParentUUID_];

    (*(v3 + 8))(v5, v2);
  }

  if (qword_281401968 != -1)
  {
    swift_once();
  }

  v10 = sub_22A4DD5AC();
  v11 = [v6 applicationDataForIdentifier_];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_22A4DD49C();

  sub_22976EEB8(v12);
  v14 = v13;

  if (!v14)
  {
    return 0;
  }

  v15 = sub_22A4DD5EC();
  if (!*(v14 + 16))
  {

    goto LABEL_13;
  }

  v17 = sub_229543DBC(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  sub_2295404B0(*(v14 + 56) + 32 * v17, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if (swift_dynamicCast())
  {
    return v21[1];
  }

  else
  {
    return 0;
  }
}

id sub_2297734A8(void *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 appData];
  if (!v6)
  {
    result = [a1 uuid];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;
    sub_22A4DB79C();

    v9 = objc_allocWithZone(HMDApplicationData);
    v10 = sub_22A4DB77C();
    v6 = [v9 initWithParentUUID_];

    (*(v3 + 8))(v5, v2);
  }

  if (qword_281401968 != -1)
  {
    swift_once();
  }

  v11 = sub_22A4DD5AC();
  v12 = [v6 applicationDataForIdentifier_];

  if (!v12)
  {
    return 0;
  }

  v13 = sub_22A4DD49C();

  sub_22976EEB8(v13);
  v15 = v14;

  if (!v15)
  {
    return 0;
  }

  v16 = sub_22A4DD5EC();
  if (!*(v15 + 16))
  {

    goto LABEL_14;
  }

  v18 = sub_229543DBC(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  sub_2295404B0(*(v15 + 56) + 32 * v18, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if (swift_dynamicCast())
  {
    return v21[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22977376C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = a1;
  v4 = 0x676E696E6E7572;
  if (a1 != 2)
  {
    v4 = 0x646570706F7473;
  }

  v5 = 0xD000000000000014;
  v6 = 0x800000022A589210;
  if (!a1)
  {
    v5 = 0x7472617453746F6ELL;
    v6 = 0xEA00000000006465;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (a2 > 1u)
  {
    v10 = a2 == 2;
    v2 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    if (a2 == 2)
    {
      v11 = 0x676E696E6E7572;
    }

    else
    {
      v11 = 0x646570706F7473;
    }
  }

  else
  {
    v9 = 0x800000022A589210;
    v10 = a2 == 0;
    if (a2)
    {
      v11 = 0xD000000000000014;
    }

    else
    {
      v11 = 0x7472617453746F6ELL;
    }
  }

  if (v10)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_22A4DE60C();
  }

  return v13 & 1;
}

uint64_t sub_2297738A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701602409;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696E6E7572;
    }

    else
    {
      v4 = 0x6164696C61766E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E69726170657270;
    }

    else
    {
      v4 = 1701602409;
    }

    if (v3)
    {
      v5 = 0xE900000000000067;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E696E6E7572;
  if (a2 != 2)
  {
    v8 = 0x6164696C61766E69;
    v7 = 0xEB00000000646574;
  }

  if (a2)
  {
    v2 = 0x6E69726170657270;
    v6 = 0xE900000000000067;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22A4DE60C();
  }

  return v11 & 1;
}

uint64_t sub_2297739FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22A4DB21C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_22A4DB1DC();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_229773AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_229564F88(a1, v18 - v8, &unk_27D87D8F0, &qword_22A578D70);
  v10 = sub_22A4DD9DC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22953EAE4(v9, &unk_27D87D8F0, &qword_22A578D70);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_22A4DD8CC();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22A4DD9CC();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_229773D14()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  sub_22953EAE4(v0 + 168, &qword_27D880AA0, &qword_22A5824F0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_229773D98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_229773DB8, v1, 0);
}

uint64_t sub_229773DB8()
{
  v13 = v0;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8A8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2295A3E30(*(v4 + 112), *(v4 + 120), &v12);
    _os_log_impl(&dword_229538000, v2, v3, "[Register:%s] registering new service", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v8 = v0[2];
  v7 = v0[3];
  v9 = *(v7 + 120);
  v0[4] = v9;
  v10 = swift_task_alloc();
  v0[5] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;

  return MEMORY[0x2822009F8](sub_229773F60, v9, 0);
}

uint64_t sub_229773F60()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = &unk_22A5824D8;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = &unk_22A5824E0;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22977407C;

  return v6();
}

void sub_22977407C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 32);

    MEMORY[0x2822009F8](sub_2297741C4, v3, 0);
  }
}

uint64_t sub_2297741C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22977422C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_229774250, a1, 0);
}

uint64_t sub_229774250()
{
  v1 = *(v0 + 160);
  swift_beginAccess();

  MEMORY[0x22AAD09E0](v2);
  if (*((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22A4DD85C();
  }

  v3 = *(v0 + 160);
  sub_22A4DD87C();
  swift_endAccess();
  v4 = *(v3 + 120);
  *(v0 + 176) = v4;

  return MEMORY[0x2822009F8](sub_229774344, v4, 0);
}

uint64_t sub_229774344()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 216) = *(v1 + 112);
  sub_22A4DE31C();

  v3 = *(v0 + 152);
  *(v0 + 184) = *(v0 + 144);
  *(v0 + 192) = v3;

  return MEMORY[0x2822009F8](sub_229774404, v2, 0);
}

uint64_t sub_229774404()
{
  v1 = *(*(v0 + 160) + 120);
  *(v0 + 200) = v1;

  return MEMORY[0x2822009F8](sub_22977447C, v1, 0);
}

uint64_t sub_22977447C()
{
  if (*(*(v0 + 200) + 112) == 2)
  {
    v1 = *(v0 + 160);

    v2 = sub_2297745B4;
    v3 = v1;
  }

  else
  {
    v4 = *(v0 + 160);
    *(v0 + 217) = sub_22A4DE60C() & 1;

    v2 = sub_2297749A4;
    v3 = v4;
  }

  return MEMORY[0x2822009F8](v2, v3, 0);
}

uint64_t sub_2297745B4()
{
  v26 = v0;
  v1 = *(v0 + 160);
  swift_beginAccess();
  sub_229564F88(v1 + 168, v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8AB8A8);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDD0C();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 192);
    if (v5)
    {
      v7 = *(v0 + 184);
      v8 = *(v0 + 168);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_2295A3E30(*(v8 + 112), *(v8 + 120), &v25);
      *(v9 + 12) = 2080;
      v11 = sub_2295A3E30(v7, v6, &v25);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_229538000, v3, v4, "[Register:%s] activating service immediately (current state=%s)", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    else
    {
    }

    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
    v22 = __swift_project_boxed_opaque_existential_0((v0 + 16), v21);
    v23 = swift_task_alloc();
    *(v0 + 208) = v23;
    *v23 = v0;
    v23[1] = sub_229774EF0;
    v24 = *(v0 + 168);

    return sub_229775000(v24, v22, v21, v20);
  }

  else
  {

    sub_22953EAE4(v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v12 = sub_22A4DD07C();
    __swift_project_value_buffer(v12, qword_27D8AB8A8);

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 168);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2295A3E30(*(v15 + 112), *(v15 + 120), &v25);
      _os_log_impl(&dword_229538000, v13, v14, "[Register:%s] failed to retrieve device controller; unable to activate!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2297749A4()
{
  v33 = v0;
  if (*(v0 + 217) == 1)
  {
    v1 = *(v0 + 160);
    swift_beginAccess();
    sub_229564F88(v1 + 168, v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    if (*(v0 + 80))
    {
      sub_229557188((v0 + 56), v0 + 16);
      if (qword_27D87BA08 != -1)
      {
        swift_once();
      }

      v2 = sub_22A4DD07C();
      __swift_project_value_buffer(v2, qword_27D8AB8A8);

      v3 = sub_22A4DD05C();
      v4 = sub_22A4DDD0C();

      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 192);
      if (v5)
      {
        v7 = *(v0 + 184);
        v8 = *(v0 + 168);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v32 = v10;
        *v9 = 136315394;
        *(v9 + 4) = sub_2295A3E30(*(v8 + 112), *(v8 + 120), &v32);
        *(v9 + 12) = 2080;
        v11 = sub_2295A3E30(v7, v6, &v32);

        *(v9 + 14) = v11;
        _os_log_impl(&dword_229538000, v3, v4, "[Register:%s] activating service immediately (current state=%s)", v9, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v10, -1, -1);
        MEMORY[0x22AAD4E50](v9, -1, -1);
      }

      else
      {
      }

      v28 = *(v0 + 40);
      v27 = *(v0 + 48);
      v29 = __swift_project_boxed_opaque_existential_0((v0 + 16), v28);
      v30 = swift_task_alloc();
      *(v0 + 208) = v30;
      *v30 = v0;
      v30[1] = sub_229774EF0;
      v31 = *(v0 + 168);

      return sub_229775000(v31, v29, v28, v27);
    }

    sub_22953EAE4(v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v22 = sub_22A4DD07C();
    __swift_project_value_buffer(v22, qword_27D8AB8A8);

    v13 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v23))
    {
      v24 = *(v0 + 168);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2295A3E30(*(v24 + 112), *(v24 + 120), &v32);
      _os_log_impl(&dword_229538000, v13, v23, "[Register:%s] failed to retrieve device controller; unable to activate!", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v12 = sub_22A4DD07C();
    __swift_project_value_buffer(v12, qword_27D8AB8A8);

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDD0C();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 192);
    if (v15)
    {
      v17 = *(v0 + 184);
      v18 = *(v0 + 168);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2295A3E30(*(v18 + 112), *(v18 + 120), &v32);
      *(v19 + 12) = 2080;
      v21 = sub_2295A3E30(v17, v16, &v32);

      *(v19 + 14) = v21;
      _os_log_impl(&dword_229538000, v13, v14, "[Register:%s] pending until server can run (current state=%s)", v19, 0x16u);
      swift_arrayDestroy();
LABEL_16:
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      goto LABEL_17;
    }
  }

LABEL_17:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_229774EF0()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](sub_229663A04, v1, 0);
}

uint64_t sub_229775000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22A4DCD0C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297750C8, v4, 0);
}

uint64_t sub_2297750C8()
{
  v13 = v0;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  v0[10] = __swift_project_value_buffer(v1, qword_27D8AB8A8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2295A3E30(*(v4 + 112), *(v4 + 120), &v12);
    _os_log_impl(&dword_229538000, v2, v3, "[Activate:%s] Creating endpoint description", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_229775298;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return sub_2296CC70C(v10, v8, v9);
}

uint64_t sub_229775298(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_2297754FC;
  }

  else
  {
    v6 = sub_2297753CC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2297753CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRetain();

  return MEMORY[0x2822009F8](sub_22977543C, v1, 0);
}

void sub_22977543C()
{
  v1 = v0[13];
  sub_22977B050(v0[2], v0[12], v0[4], v0[5]);
  if (v1)
  {
  }

  else
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = *(v3 + 192);
    v0[14] = v4;
    v5 = *(v3 + 200);
    v0[15] = v5;
    sub_2295A1C30(v4, v5);

    MEMORY[0x2822009F8](sub_2297756C8, v2, 0);
  }
}

uint64_t sub_2297754FC()
{
  v16 = v0;
  v1 = v0[13];

  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_2295A3E30(*(v7 + 112), *(v7 + 120), &v15);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_229538000, v3, v4, "[Activate:%s] FAILED to create service description; error %@", v8, 0x16u);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2297756C8()
{
  v25 = v0;
  if (v0[14])
  {
    v1 = v0[2];

    return MEMORY[0x2822009F8](sub_229775AEC, v1, 0);
  }

  else
  {

    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCCC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[2];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2295A3E30(*(v4 + 112), *(v4 + 120), &v24);
      _os_log_impl(&dword_229538000, v2, v3, "[Activate:%s] Ready! Service has no preparation handler set; starting!", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AAD4E50](v6, -1, -1);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    swift_unknownObjectRetain();
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[9];
      v21 = v0[7];
      v22 = v0[8];
      v10 = v0[2];
      v11 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v11 = 136315394;
      *(v11 + 4) = sub_2295A3E30(*(v10 + 112), *(v10 + 120), &v24);
      *(v11 + 12) = 2080;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_22A4DC5BC();
      sub_229780CE4(&qword_27D880AB0, 255, MEMORY[0x277D17408], MEMORY[0x277D17420]);
      v12 = sub_22A4DE5CC();
      v14 = v13;
      swift_unknownObjectRelease();
      (*(v22 + 8))(v9, v21);
      v15 = sub_2295A3E30(v12, v14, &v24);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_229538000, v7, v8, "[Activate:%s] Adding endpoint to the controller on %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v11, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v16 = swift_task_alloc();
    v0[20] = v16;
    *v16 = v0;
    v16[1] = sub_22977651C;
    v17 = v0[12];
    v18 = v0[4];
    v19 = v0[5];

    return MEMORY[0x282171468](v17, v18, v19);
  }
}

uint64_t sub_229775AEC()
{
  v1 = v0[2];
  if (*(v1 + 184) <= 1u && *(v1 + 184))
  {
  }

  else
  {
    v2 = sub_22A4DE60C();

    if ((v2 & 1) == 0)
    {
      v3 = v0[2];
      *(v1 + 184) = 1;
      v4 = *(v3 + 208);
      v0[16] = v4;
      if (v4)
      {
        v0[17] = *(v0[2] + 216);

        v8 = (v4 + *v4);
        v5 = swift_task_alloc();
        v0[18] = v5;
        *v5 = v0;
        v5[1] = sub_229775CEC;

        return v8(1);
      }
    }
  }

  v7 = v0[6];

  return MEMORY[0x2822009F8](sub_229775E64, v7, 0);
}

uint64_t sub_229775CEC()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_229775DFC, v1, 0);
}

uint64_t sub_229775DFC()
{
  sub_2295571A0(v0[16], v0[17]);
  v1 = v0[6];

  return MEMORY[0x2822009F8](sub_229775E64, v1, 0);
}

uint64_t sub_229775E64()
{
  v10 = v0;

  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDD0C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[2];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2295A3E30(*(v3 + 112), *(v3 + 120), &v9);
    _os_log_impl(&dword_229538000, v1, v2, "[Activate:%s] preparing service", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v8 = (v0[14] + *v0[14]);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_229776028;

  return v8();
}

uint64_t sub_229776028()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_229776138, v1, 0);
}

uint64_t sub_229776138()
{
  v27 = v0;

  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDD0C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[14];
  v4 = v0[15];
  if (v3)
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(*(v6 + 112), *(v6 + 120), &v26);
    _os_log_impl(&dword_229538000, v1, v2, "[Activate:%s] --> ready! Service prepared.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  sub_2295571A0(v5, v4);

  swift_unknownObjectRetain();
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[9];
    v23 = v0[7];
    v24 = v0[8];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136315394;
    *(v13 + 4) = sub_2295A3E30(*(v12 + 112), *(v12 + 120), &v26);
    *(v13 + 12) = 2080;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_22A4DC5BC();
    sub_229780CE4(&qword_27D880AB0, 255, MEMORY[0x277D17408], MEMORY[0x277D17420]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    swift_unknownObjectRelease();
    (*(v24 + 8))(v11, v23);
    v17 = sub_2295A3E30(v14, v16, &v26);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_229538000, v9, v10, "[Activate:%s] Adding endpoint to the controller on %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_22977651C;
  v19 = v0[12];
  v20 = v0[4];
  v21 = v0[5];

  return MEMORY[0x282171468](v19, v20, v21);
}

uint64_t sub_22977651C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_229776E6C;
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = sub_229776658;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229776658()
{
  v1 = v0[2];
  if (*(v1 + 184) == 2)
  {

    goto LABEL_8;
  }

  v2 = sub_22A4DE60C();

  if ((v2 & 1) != 0 || (v3 = v0[2], *(v1 + 184) = 2, v4 = *(v3 + 208), (v0[22] = v4) == 0))
  {
LABEL_8:
    v7 = v0[6];

    return MEMORY[0x2822009F8](sub_2297769CC, v7, 0);
  }

  v0[23] = *(v0[2] + 216);

  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_229776854;

  return v8(2);
}

uint64_t sub_229776854()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_229776964, v1, 0);
}

uint64_t sub_229776964()
{
  sub_2295571A0(v0[22], v0[23]);
  v1 = v0[6];

  return MEMORY[0x2822009F8](sub_2297769CC, v1, 0);
}

uint64_t sub_2297769CC()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 48) + 128), *(*(v0 + 48) + 152));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_229776A6C;

  return sub_2297A4528();
}

uint64_t sub_229776A6C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_229776B84, v2, 0);
}

uint64_t sub_229776B84(uint64_t a1, uint64_t a2)
{
  v3 = v2[26];
  v4 = v2[6];
  v5 = v2[2];
  sub_229780CE4(&qword_27D880AA8, a2, type metadata accessor for PrimaryResidentMatterServer, &unk_22A582498);
  v6 = swift_task_alloc();
  v2[27] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  v7 = swift_task_alloc();
  v2[28] = v7;
  *v7 = v2;
  v7[1] = sub_229776CBC;

  return MEMORY[0x282200740]();
}

void sub_229776CBC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 48);

    MEMORY[0x2822009F8](sub_229776E04, v3, 0);
  }
}

uint64_t sub_229776E04()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229776E6C()
{
  v16 = v0;
  v1 = v0[21];

  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[21];
  if (v5)
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_2295A3E30(*(v7 + 112), *(v7 + 120), &v15);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_229538000, v3, v4, "[Activate:%s] FAILED to add server endpoint; error %@", v8, 0x16u);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_229777054(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229777078, v2, 0);
}

uint64_t sub_229777078()
{
  v14 = v0;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8A8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2295A3E30(*(v4 + 112), *(v4 + 120), &v13);
    _os_log_impl(&dword_229538000, v2, v3, "[CheckMatterDevice:%s] checking matter device", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AAD4E50](v6, -1, -1);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  v10 = *(v7 + 120);
  v0[5] = v10;
  v11 = swift_task_alloc();
  v0[6] = v11;
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v9;

  return MEMORY[0x2822009F8](sub_229777228, v10, 0);
}

uint64_t sub_229777228()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = &unk_22A582558;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = &unk_22A582560;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_229777344;

  return v6();
}

void sub_229777344()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_22977748C, v3, 0);
  }
}

uint64_t sub_22977748C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2297774F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_229777514, a2, 0);
}

uint64_t sub_229777514(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_229780CE4(&qword_27D880AA8, a2, type metadata accessor for PrimaryResidentMatterServer, &unk_22A582498);
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  v5 = *(v2 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  v6 = swift_task_alloc();
  *(v2 + 48) = v6;
  *v6 = v2;
  v6[1] = sub_229777648;

  return MEMORY[0x282200740]();
}

void sub_229777648()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 24);

    MEMORY[0x2822009F8](sub_229580884, v3, 0);
  }
}

uint64_t sub_229777788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22977782C, a4, 0);
}

uint64_t sub_22977782C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_22A4DD9DC();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v2;
  v7 = v4;

  sub_229773AF0(v1, &unk_22A582588, v6);
  sub_22953EAE4(v1, &unk_27D87D8F0, &qword_22A578D70);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22977795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_22953ED8C;

  return sub_22977C9D8(a5, a6, a4);
}

uint64_t sub_229777A3C()
{
  v0[3] = *(v0[2] + 120);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_229781094;
  v2 = v0[2];

  return sub_2297781D4(v2);
}

uint64_t sub_229777B08()
{
  v0[3] = *(v0[2] + 120);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_22962AC30;
  v2 = v0[2];

  return sub_229778620(v2);
}

uint64_t sub_229777BB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_229777BD8, a1, 0);
}

uint64_t sub_229777BD8()
{
  v1 = v0[10];
  sub_22957F1C4(v0[11], (v0 + 2));
  swift_beginAccess();
  sub_229780ECC((v0 + 2), v1 + 168);
  swift_endAccess();
  v0[12] = *(v1 + 120);

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_229777CB4;
  v3 = v0[10];

  return sub_229778DD8(v3);
}

uint64_t sub_229777CB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_229777DC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_229777DE8, a1, 0);
}

uint64_t sub_229777DE8()
{
  v1 = v0[3];
  v2 = *(v0[2] + 120);
  v0[4] = v2;
  v3 = *__swift_project_boxed_opaque_existential_0(v1, v1[3]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22976CCF4;
  v5 = v0[2];

  return sub_22977FECC(v5, v3, v2);
}

uint64_t sub_229777ED0()
{
  sub_22A4DE77C();
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

uint64_t sub_229777F9C(uint64_t a1)
{
  sub_22A4DD6BC();
}

uint64_t sub_229778054(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DD6BC();

  return sub_22A4DE7BC();
}

unint64_t sub_22977811C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_229780340(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22977814C(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006465;
  v3 = 0x7472617453746F6ELL;
  v4 = 0x676E696E6E7572;
  if (*v1 != 2)
  {
    v4 = 0x646570706F7473;
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000022A589210;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_2297781D4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2297781F4, v1, 0);
}

uint64_t sub_2297781F4()
{
  if (*(v0[6] + 112) - 1 >= 2)
  {
    v7 = v0[5];

    return MEMORY[0x2822009F8](sub_229778358, v7, 0);
  }

  else
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v1 = sub_22A4DD07C();
    __swift_project_value_buffer(v1, qword_27D8AB8A8);
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDD0C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_229538000, v2, v3, "[Start] MatterServer is already started; ignoring duplicate call.", v4, 2u);
      MEMORY[0x22AAD4E50](v4, -1, -1);
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_229778358()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  v0[7] = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_2297783E0, v2, 0);
}

uint64_t sub_2297783E0()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB8A8);
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDD0C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_229538000, v4, v5, "[Start] %ld services currently registered.", v6, 0xCu);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v7 = v0[5];
  v8 = v0[6];

  *(v8 + 112) = 1;

  return MEMORY[0x2822009F8](sub_229778548, v7, 0);
}

uint64_t sub_229778548()
{
  v1 = __swift_project_boxed_opaque_existential_0((*(v0 + 40) + 128), *(*(v0 + 40) + 152));
  v2 = *v1;
  *(v0 + 64) = *v1;

  return MEMORY[0x2822009F8](sub_2297785BC, v2, 0);
}

uint64_t sub_2297785BC()
{
  sub_22977B5C8(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229778620(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_229778640, v1, 0);
}

uint64_t sub_229778640()
{
  v12 = v0;
  v1 = *(v0 + 40);
  if (*(v1 + 112) == 3)
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8AB8A8);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCDC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 56) = *(v1 + 112);
      sub_22A4DE31C();
      v7 = sub_2295A3E30(*(v0 + 16), *(v0 + 24), &v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_229538000, v3, v4, "[Stop] skipped; nothing to stop (current state %s).", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AAD4E50](v6, -1, -1);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v1 + 112) = 3;
    v10 = swift_task_alloc();
    *(v0 + 48) = v10;
    *v10 = v0;
    v10[1] = sub_22969AAF8;

    return sub_229778890();
  }
}

uint64_t sub_2297788B0()
{
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  v0[9] = __swift_project_value_buffer(v1, qword_27D8AB8A8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    v7 = *(v5 + 112);
    if (v7 >> 62)
    {
      v8 = sub_22A4DE0EC();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v8;

    _os_log_impl(&dword_229538000, v2, v3, "[Stop] stopping %ld services.", v6, 0xCu);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  else
  {
  }

  v9 = __swift_project_boxed_opaque_existential_0((v0[8] + 128), *(v0[8] + 152));
  v0[10] = v9;
  v10 = *v9;

  return MEMORY[0x2822009F8](sub_229778A58, v10, 0);
}

uint64_t sub_229778A58()
{
  v1 = *(v0 + 64);
  sub_2297A43C0();

  return MEMORY[0x2822009F8](sub_229778AC8, v1, 0);
}

uint64_t sub_229778AC8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = sub_229780CE4(&qword_27D880AA8, a2, type metadata accessor for PrimaryResidentMatterServer, &unk_22A582498);
  v5 = swift_task_alloc();
  *(v2 + 88) = v5;
  *v5 = v2;
  v5[1] = sub_229778BD0;
  v6 = *(v2 + 64);
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v5, v7, v8, v3, v4, &unk_22A5825E0, v6, v9);
}

uint64_t sub_229778BD0()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_229778CE0, v1, 0);
}

uint64_t sub_229778CE0()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v1 + 112) = MEMORY[0x277D84F90];

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[Stop] complete.", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_229778DD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_229778DF8, v1, 0);
}

uint64_t sub_229778DF8()
{
  v1 = v0[3];
  if (*(v1 + 112) > 1u)
  {
    if (*(v1 + 112) == 2)
    {
      if (qword_27D87BA08 != -1)
      {
        swift_once();
      }

      v8 = sub_22A4DD07C();
      __swift_project_value_buffer(v8, qword_27D8AB8A8);
      v9 = sub_22A4DD05C();
      v10 = sub_22A4DDCDC();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_20;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "[Controller] controller received but it already had one?";
      goto LABEL_19;
    }
  }

  else if (*(v1 + 112))
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8AB8A8);
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCDC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_229538000, v3, v4, "[Controller] Moving to running!", v5, 2u);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }

    *(v1 + 112) = 2;
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_22958101C;

    return sub_2297790E0();
  }

  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v13 = sub_22A4DD07C();
  __swift_project_value_buffer(v13, qword_27D8AB8A8);
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCDC();
  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_20;
  }

  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = "[Controller] MatterServer is not started yet; controller should not be ready!";
LABEL_19:
  _os_log_impl(&dword_229538000, v9, v10, v12, v11, 2u);
  MEMORY[0x22AAD4E50](v11, -1, -1);
LABEL_20:

  v14 = v0[1];

  return v14();
}

uint64_t sub_229779100()
{
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_27D8AB8A8);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    v7 = *(v5 + 112);
    if (v7 >> 62)
    {
      v8 = sub_22A4DE0EC();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v8;

    _os_log_impl(&dword_229538000, v2, v3, "[Activate] activating %ld services.", v6, 0xCu);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 144);
  swift_beginAccess();
  sub_229564F88(v9 + 168, v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
  if (*(v0 + 80))
  {
    v10 = *(v0 + 144);
    sub_229557188((v0 + 56), v0 + 16);
    v12 = sub_229780CE4(&qword_27D880AA8, v11, type metadata accessor for PrimaryResidentMatterServer, &unk_22A582498);
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = v0 + 16;
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_22977945C;
    v15 = MEMORY[0x277D84F78] + 8;
    v16 = MEMORY[0x277D84F78] + 8;
    v17 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v14, v15, v16, v10, v12, &unk_22A5825A8, v13, v17);
  }

  else
  {
    sub_22953EAE4(v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_229538000, v18, v19, "[Activate] .. failed to get a device controller!", v20, 2u);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22977945C()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_229779588, v1, 0);
}

uint64_t sub_229779588(uint64_t a1)
{
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[Activate] complete.", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_229779660()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_2297796D0()
{
  result = qword_27D880A98;
  if (!qword_27D880A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D880A98);
  }

  return result;
}

uint64_t sub_229779724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297797D0, a3, 0);
}

void sub_2297797D0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (v2 >> 62)
  {
    v23 = *(v1 + 112);
    v24 = sub_22A4DE0EC();
    v2 = v23;
    v3 = v24;
    if (!v24)
    {
LABEL_18:

      v22 = *(v0 + 8);

      v22();
      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_18;
    }
  }

  if (v3 >= 1)
  {
    v26 = **(v0 + 96);
    v25 = v2 & 0xC000000000000001;
    v4 = v2;

    v5 = v4;
    v6 = 0;
    v27 = v3;
    v28 = v4;
    while (1)
    {
      if (v25)
      {
        v9 = MEMORY[0x22AAD13F0](v6, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v6 + 32);
      }

      v10 = *(v0 + 112);
      v11 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = sub_22A4DD9DC();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v11, 1, 1, v13);
      v15 = swift_allocObject();
      v15[2] = 0;
      v16 = v15 + 2;
      v15[3] = 0;
      v15[4] = v12;
      v15[5] = v9;
      sub_229564F88(v11, v10, &unk_27D87D8F0, &qword_22A578D70);
      LODWORD(v10) = (*(v14 + 48))(v10, 1, v13);

      v17 = *(v0 + 112);
      if (v10 == 1)
      {
        sub_22953EAE4(*(v0 + 112), &unk_27D87D8F0, &qword_22A578D70);
        if (!*v16)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_22A4DD9CC();
        (*(v14 + 8))(v17, v13);
        if (!*v16)
        {
LABEL_14:
          v18 = 0;
          v20 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_22A4DD8CC();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_15:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_22A5825F0;
      *(v21 + 24) = v15;

      if (v20 | v18)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      v8 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v7;
      *(v0 + 88) = v26;
      swift_task_create();

      sub_22953EAE4(v8, &unk_27D87D8F0, &qword_22A578D70);
      v5 = v28;
      if (v27 == v6)
      {

        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_229779B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return MEMORY[0x2822009F8](sub_229779B9C, a4, 0);
}

uint64_t sub_229779B9C()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_229564F88(v1 + 168, v0 + 56, &qword_27D880AA0, &qword_22A5824F0);

  return MEMORY[0x2822009F8](sub_229779C30, 0, 0);
}

uint64_t sub_229779C30()
{
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_229779D54;
    v5 = *(v0 + 128);

    return sub_22977A220(v5, v3, v2, v1);
  }

  else
  {
    sub_22953EAE4(v0 + 56, &qword_27D880AA0, &qword_22A5824F0);
    v7 = *(v0 + 128);

    return MEMORY[0x2822009F8](sub_229779EB8, v7, 0);
  }
}

uint64_t sub_229779D54()
{

  return MEMORY[0x2822009F8](sub_229779E50, 0, 0);
}

uint64_t sub_229779E50()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_229779EB8, v1, 0);
}

uint64_t sub_229779EB8()
{
  v1 = v0[16];
  if (*(v1 + 184) > 2u)
  {
  }

  else
  {
    v2 = sub_22A4DE60C();

    if ((v2 & 1) == 0)
    {
      v3 = v0[16];
      *(v1 + 184) = 3;
      v4 = *(v3 + 208);
      v0[18] = v4;
      if (v4)
      {
        v0[19] = *(v0[16] + 216);

        v8 = (v4 + *v4);
        v5 = swift_task_alloc();
        v0[20] = v5;
        *v5 = v0;
        v5[1] = sub_22977A0B0;

        return v8(3);
      }
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22977A0B0()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](sub_22977A1C0, v1, 0);
}

uint64_t sub_22977A1C0()
{
  sub_2295571A0(v0[18], v0[19]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22977A220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v7 = sub_22A4DDD7C();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = sub_22A4DDD5C();
  v5[18] = swift_task_alloc();
  sub_22A4DD29C();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22977A348, a1, 0);
}

uint64_t sub_22977A348()
{
  v1 = v0[13];
  v2 = v0[9];
  swift_beginAccess();
  v0[20] = *(v2 + 168);
  v0[21] = *(v2 + 176);
  swift_unknownObjectRetain();

  return MEMORY[0x2822009F8](sub_22977A3DC, v1, 0);
}

uint64_t sub_22977A3DC()
{
  v20 = v0;
  v1 = v0[20];
  if (v1 && (v2 = v0[21], v0[5] = v1, v0[6] = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AC0, &qword_22A582608), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedTypeWitness(), (swift_dynamicCast() & 1) != 0))
  {
    v18 = v0[7];
    v0[22] = v18;
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v3 = sub_22A4DD07C();
    __swift_project_value_buffer(v3, qword_27D8AB8A8);

    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[9];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2295A3E30(*(v6 + 112), *(v6 + 120), &v19);
      _os_log_impl(&dword_229538000, v4, v5, "[Invalidate:%s] Removing endpoint from the controller", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AAD4E50](v8, -1, -1);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }

    v9 = v0[16];
    v10 = v0[15];
    v17 = v0[14];
    sub_229562F68(0, &qword_281401980, 0x277D85C78);
    sub_22A4DD28C();
    v0[8] = MEMORY[0x277D84F90];
    sub_229780CE4(&qword_281401990, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
    sub_22955A264();
    sub_22A4DE03C();
    (*(v10 + 104))(v9, *MEMORY[0x277D85260], v17);
    v11 = sub_22A4DDDCC();
    v0[23] = v11;
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_22977A7EC;
    v13 = v0[11];
    v14 = v0[12];

    return MEMORY[0x282171470](v18, v11, nullsub_1, 0, v13, v14);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22977A7EC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22977A914, v2, 0);
}

uint64_t sub_22977A914()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22977A988, v1, 0);
}

uint64_t sub_22977A988()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22977AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22977AAB4, a3, 0);
}

void sub_22977AAB4()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (v2 >> 62)
  {
    v23 = *(v1 + 112);
    v24 = sub_22A4DE0EC();
    v2 = v23;
    v3 = v24;
    if (!v24)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v26 = **(v0 + 136);
  v25 = v2 & 0xC000000000000001;
  v4 = v2;

  v5 = v4;
  v6 = 0;
  v27 = v3;
  v28 = v4;
  do
  {
    v29 = v6;
    if (v25)
    {
      v9 = MEMORY[0x22AAD13F0](v6, v5);
    }

    else
    {
      v9 = *(v5 + 8 * v6 + 32);
    }

    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 144);
    v13 = *(v0 + 152);
    v14 = sub_22A4DD9DC();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v10, 1, 1, v14);
    sub_22957F1C4(v13, v0 + 16);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    sub_229557188((v0 + 16), (v16 + 4));
    v16[9] = v12;
    v16[10] = v9;
    sub_229564F88(v10, v11, &unk_27D87D8F0, &qword_22A578D70);
    LODWORD(v10) = (*(v15 + 48))(v11, 1, v14);

    v17 = *(v0 + 160);
    if (v10 == 1)
    {
      sub_22953EAE4(*(v0 + 160), &unk_27D87D8F0, &qword_22A578D70);
    }

    else
    {
      sub_22A4DD9CC();
      (*(v15 + 8))(v17, v14);
    }

    if (v16[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_22A4DD8CC();
      v20 = v19;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = swift_allocObject();
    *(v21 + 16) = &unk_22A5825C0;
    *(v21 + 24) = v16;

    if (v20 | v18)
    {
      v7 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v18;
      *(v0 + 80) = v20;
    }

    else
    {
      v7 = 0;
    }

    v6 = v29 + 1;
    v8 = *(v0 + 168);
    *(v0 + 112) = 1;
    *(v0 + 120) = v7;
    *(v0 + 128) = v26;
    swift_task_create();

    sub_22953EAE4(v8, &unk_27D87D8F0, &qword_22A578D70);
    v5 = v28;
  }

  while (v27 != v29 + 1);

LABEL_19:

  v22 = *(v0 + 8);

  v22();
}

uint64_t sub_22977AE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22977AEA0, 0, 0);
}

uint64_t sub_22977AEA0()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22977AF5C;
  v6 = v0[4];

  return sub_229775000(v6, v4, v3, v2);
}

uint64_t sub_22977AF5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22977B050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_beginAccess();
  *(a1 + 168) = a2;
  *(a1 + 176) = AssociatedConformanceWitness;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_22977B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22977B204, a4, 0);
}

uint64_t sub_22977B204()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = sub_22A4DD9DC();
    v5 = *(v4 - 8);
    v23 = *(v5 + 56);
    v21 = v4;
    v22 = (v5 + 48);
    v20 = (v5 + 8);
    do
    {
      v26 = v2;
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v23(v8, 1, 1, v4);
      v25 = v3;
      sub_22957F1C4(v3, v0 + 16);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v11;
      sub_229557188((v0 + 16), (v12 + 5));
      v12[10] = v10;
      sub_229564F88(v8, v9, &unk_27D87D8F0, &qword_22A578D70);
      LODWORD(v9) = (*v22)(v9, 1, v4);

      v14 = *(v0 + 144);
      if (v9 == 1)
      {
        sub_22953EAE4(*(v0 + 144), &unk_27D87D8F0, &qword_22A578D70);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22A4DD9CC();
        (*v20)(v14, v4);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_22A4DD8CC();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:

      if (v16 | v15)
      {
        v6 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v16;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 152);
      *(v0 + 88) = 1;
      *(v0 + 96) = v6;
      *(v0 + 104) = v24;
      swift_task_create();

      sub_22953EAE4(v7, &unk_27D87D8F0, &qword_22A578D70);
      v3 = v25 + 40;
      v2 = v26 - 1;
      v4 = v21;
    }

    while (v26 != 1);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22977B4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = *__swift_project_boxed_opaque_existential_0(a5, a5[3]);
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_2297810A0;

  return sub_22977C9D8(v9, a6, a4);
}

void sub_22977B5C8(uint64_t a1)
{
  if (qword_27D87BA10 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8C0);
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDD0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_229538000, v3, v4, "[START]", v5, 2u);
    MEMORY[0x22AAD4E50](v5, -1, -1);
  }

  v1[16] = &off_283CE3CC8;
  swift_unknownObjectWeakAssign();
  v6 = v1[17];
  v7 = swift_allocObject();
  swift_weakInit();
  v24 = sub_229780D2C;
  v25 = v7;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_2297739FC;
  v23 = &block_descriptor_30;
  v8 = _Block_copy(&v20);

  v9 = [v6 addObserverForName:@"HMDAccessoryConnectedNotification" object:0 queue:0 usingBlock:v8];
  _Block_release(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1D0, &qword_22A578100);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22A576180;
  *(v10 + 56) = swift_getObjectType();
  *(v10 + 32) = v9;
  v1[18] = v10;
  swift_unknownObjectRetain();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong accessoryBrowser];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = [v13 chipAccessoryServerBrowser];
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = swift_allocObject();
      swift_weakInit();
      v24 = sub_229780D34;
      v25 = v15;
      v20 = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_229566C20;
      v23 = &block_descriptor_88;
      v16 = _Block_copy(&v20);

      [v14 waitForDeviceControllerWithCompletion_];
      _Block_release(v16);
      swift_unknownObjectRelease();

      return;
    }
  }

  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_229538000, v17, v18, "Unable to get the Matter server browser! Matter Services will not work.", v19, 2u);
    MEMORY[0x22AAD4E50](v19, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_22977B998(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v71 - v7;
  v9 = sub_22A4DB21C();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D87BA10 != -1)
  {
    swift_once();
  }

  v13 = sub_22A4DD07C();
  v14 = __swift_project_value_buffer(v13, qword_27D8AB8C0);
  (*(v10 + 16))(v12, a1, v9);
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDD0C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v71[2] = v14;
    v18 = v17;
    v19 = swift_slowAlloc();
    v71[1] = a1;
    v20 = v19;
    v76[0] = v19;
    *v18 = 136315138;
    v21 = sub_22A4DB1AC();
    v71[3] = a2;
    v22 = v8;
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = sub_2295A3E30(v21, v24, v76);
    v8 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_229538000, v15, v16, "Got notification: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_22A4DB1FC();
  if (!v76[3])
  {
    sub_22953EAE4(v76, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_12;
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCDC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v75 = v9;
      v76[0] = v51;
      *v50 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AC8, &qword_22A582650);
      v52 = sub_22A4DD64C();
      v54 = sub_2295A3E30(v52, v53, v76);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_229538000, v48, v49, "Ignoring notification (not HMDHAPAccessory) - is class %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAD4E50](v51, -1, -1);
      MEMORY[0x22AAD4E50](v50, -1, -1);
    }

    return;
  }

  v26 = v75;
  v27 = [v75 matterNodeID];
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v28 = sub_22A4DDEBC();
  v29 = sub_22A4DDEDC();

  if (v29)
  {
    v30 = v26;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCDC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v76[0] = v34;
      *v33 = 136315394;
      v35 = [v30 name];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      v39 = sub_2295A3E30(v36, v38, v76);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      v40 = [v30 uuid];
      v41 = v72;
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = v74;
      v43 = sub_22A4DE5CC();
      v45 = v44;
      (*(v73 + 8))(v41, v42);
      v46 = sub_2295A3E30(v43, v45, v76);

      *(v33 + 14) = v46;
      v47 = "Ignoring notification (no matterNodeID) - for %s/%s";
LABEL_19:
      _os_log_impl(&dword_229538000, v31, v32, v47, v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);

      return;
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v56 = Strong;
      v57 = sub_22A4DD9DC();
      (*(*(v57 - 8) + 56))(v8, 1, 1, v57);
      v58 = swift_allocObject();
      v58[2] = 0;
      v58[3] = 0;
      v58[4] = v56;
      v58[5] = v26;
      sub_22957F3C0(0, 0, v8, &unk_22A582660, v58);

      return;
    }

    v30 = v26;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCDC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v75 = v34;
      *v33 = 136315394;
      v59 = [v30 name];
      v60 = sub_22A4DD5EC();
      v62 = v61;

      v63 = sub_2295A3E30(v60, v62, &v75);

      *(v33 + 4) = v63;
      *(v33 + 12) = 2080;
      v64 = [v30 uuid];
      v65 = v72;
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v66 = v74;
      v67 = sub_22A4DE5CC();
      v69 = v68;
      (*(v73 + 8))(v65, v66);
      v70 = sub_2295A3E30(v67, v69, &v75);

      *(v33 + 14) = v70;
      v47 = "Ignoring notification (nil delegate) - for %s/%s";
      goto LABEL_19;
    }
  }
}

uint64_t sub_22977C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_229569B30;

  return sub_22977F14C(a5, a4);
}

uint64_t sub_22977C328(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_22A4DDE2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_22A4DDE1C();
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v6 + 16))(v9, v11, v5);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v13;
  (*(v6 + 32))(&v15[v14], v9, v5);
  sub_22957F3C0(0, 0, v4, &unk_22A582618, v15);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_22977C59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_22977C5BC, 0, 0);
}

uint64_t sub_22977C5BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_22977C784;
    v4 = v0[6];

    return sub_22977EC6C(v4, v2);
  }

  else
  {
    if (qword_27D87BA10 != -1)
    {
      swift_once();
    }

    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D8AB8C0);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_229538000, v7, v8, "Ignoring update for Matter Controller (nil delegate)", v9, 2u);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22977C784()
{

  return MEMORY[0x2822009F8](sub_22977C880, 0, 0);
}

uint64_t sub_22977C880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22977C8E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2297810A0;

  return v6(a1);
}

uint64_t sub_22977C9D8(void *a1, uint64_t a2, uint64_t a3)
{
  v3[81] = a3;
  v3[80] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AB8, &unk_22A582538);
  v3[82] = swift_task_alloc();
  v6 = sub_22A4DC6EC();
  v3[83] = v6;
  v3[84] = *(v6 - 8);
  v3[85] = swift_task_alloc();
  v7 = sub_22A4DB7DC();
  v3[86] = v7;
  v3[87] = *(v7 - 8);
  v3[88] = swift_task_alloc();
  v8 = sub_22A4DCD0C();
  v3[89] = v8;
  v3[90] = *(v8 - 8);
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  _s19MatterDeviceSupportOMa(0);
  v3[94] = swift_task_alloc();
  v3[5] = &_s16AccessoryAdapterVN;
  v3[6] = &off_283CDE8F8;
  v3[2] = a1;
  v9 = a1;

  return MEMORY[0x2822009F8](sub_22977CC00, a3, 0);
}

uint64_t sub_22977CC00()
{
  __swift_project_boxed_opaque_existential_0((v0[80] + 128), *(v0[80] + 152));
  v1 = swift_task_alloc();
  v0[95] = v1;
  *v1 = v0;
  v1[1] = sub_22977CCAC;
  v2 = v0[94];

  return sub_2296C96DC(v2, (v0 + 2));
}

uint64_t sub_22977CCAC()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 648);
  if (v0)
  {
    v4 = sub_22977D8F0;
  }

  else
  {
    v4 = sub_22977CDD8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22977CDD8()
{
  v89 = v0;
  v1 = *(v0 + 752);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F080, &unk_22A57E180);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v3 = sub_22A4DD07C();
    __swift_project_value_buffer(v3, qword_27D8AB8A8);
    sub_22957F1C4(v0 + 16, v0 + 536);
    sub_22957F1C4(v0 + 16, v0 + 576);

    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 704);
      v7 = *(v0 + 696);
      v86 = *(v0 + 688);
      v8 = *(v0 + 640);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v88 = v10;
      *v9 = 136315650;
      *(v9 + 4) = sub_2295A3E30(*(v8 + 112), *(v8 + 120), &v88);
      *(v9 + 12) = 2080;
      v11 = [*__swift_project_boxed_opaque_existential_0((v0 + 536) *(v0 + 560))];
      v12 = sub_22A4DD5EC();
      v14 = v13;

      __swift_destroy_boxed_opaque_existential_0((v0 + 536));
      v15 = sub_2295A3E30(v12, v14, &v88);

      *(v9 + 14) = v15;
      *(v9 + 22) = 2080;
      v16 = [*__swift_project_boxed_opaque_existential_0((v0 + 576) *(v0 + 600))];
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_22A4DE5CC();
      v19 = v18;
      (*(v7 + 8))(v6, v86);
      __swift_destroy_boxed_opaque_existential_0((v0 + 576));
      v20 = sub_2295A3E30(v17, v19, &v88);

      *(v9 + 24) = v20;
      _os_log_impl(&dword_229538000, v4, v5, "[%s:%s/%s][Bind] Device does not support service.", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);

LABEL_20:
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v77 = *(v0 + 8);

      return v77();
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 576));
    v52 = (v0 + 536);
    goto LABEL_19;
  }

  (*(*(v0 + 720) + 32))(*(v0 + 744), v1, *(v0 + 712));
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 744);
  v22 = *(v0 + 736);
  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v25 = sub_22A4DD07C();
  *(v0 + 776) = __swift_project_value_buffer(v25, qword_27D8AB8A8);
  sub_22957F1C4(v0 + 16, v0 + 136);
  sub_22957F1C4(v0 + 16, v0 + 176);
  v26 = *(v23 + 16);
  *(v0 + 784) = v26;
  *(v0 + 792) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v22, v21, v24);

  v27 = sub_22A4DD05C();
  v28 = sub_22A4DDCCC();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 736);
  v31 = *(v0 + 720);
  v32 = *(v0 + 712);
  if (v29)
  {
    v84 = v28;
    v33 = *(v0 + 704);
    v34 = *(v0 + 696);
    v79 = *(v0 + 688);
    v81 = *(v0 + 736);
    v35 = *(v0 + 640);
    v36 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v88 = v82;
    *v36 = 136315906;
    *(v36 + 4) = sub_2295A3E30(*(v35 + 112), *(v35 + 120), &v88);
    *(v36 + 12) = 2080;
    v37 = [*__swift_project_boxed_opaque_existential_0((v0 + 136) *(v0 + 160))];
    v38 = sub_22A4DD5EC();
    v40 = v39;

    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v41 = sub_2295A3E30(v38, v40, &v88);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2080;
    v42 = [*__swift_project_boxed_opaque_existential_0((v0 + 176) *(v0 + 200))];
    sub_22A4DB79C();

    sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = sub_22A4DE5CC();
    v45 = v44;
    (*(v34 + 8))(v33, v79);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v46 = sub_2295A3E30(v43, v45, &v88);

    *(v36 + 24) = v46;
    *(v36 + 32) = 2080;
    sub_229780CE4(&qword_27D880AB0, 255, MEMORY[0x277D17408], MEMORY[0x277D17420]);
    v47 = sub_22A4DE5CC();
    v49 = v48;
    v50 = *(v31 + 8);
    v50(v81, v32);
    v51 = sub_2295A3E30(v47, v49, &v88);

    *(v36 + 34) = v51;
    _os_log_impl(&dword_229538000, v27, v84, "[%s:%s/%s][Bind] Device supports service on %s.", v36, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v82, -1, -1);
    MEMORY[0x22AAD4E50](v36, -1, -1);
  }

  else
  {

    v50 = *(v31 + 8);
    v50(v30, v32);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  *(v0 + 800) = v50;
  v53 = *(v0 + 648);
  swift_beginAccess();
  sub_229564F88(v53 + 168, v0 + 256, &qword_27D880AA0, &qword_22A5824F0);
  if (!*(v0 + 280))
  {
    sub_22953EAE4(v0 + 256, &qword_27D880AA0, &qword_22A5824F0);
    sub_22957F1C4(v0 + 16, v0 + 296);
    sub_22957F1C4(v0 + 16, v0 + 336);

    v58 = sub_22A4DD05C();
    v59 = sub_22A4DDCEC();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 744);
    v62 = *(v0 + 712);
    if (v60)
    {
      v85 = *(v0 + 712);
      v87 = *(v0 + 744);
      v63 = *(v0 + 704);
      v64 = *(v0 + 696);
      v80 = *(v0 + 688);
      v65 = *(v0 + 640);
      v66 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v88 = v83;
      *v66 = 136315650;
      *(v66 + 4) = sub_2295A3E30(*(v65 + 112), *(v65 + 120), &v88);
      *(v66 + 12) = 2080;
      v67 = [*__swift_project_boxed_opaque_existential_0((v0 + 296) *(v0 + 320))];
      v68 = sub_22A4DD5EC();
      v70 = v69;

      __swift_destroy_boxed_opaque_existential_0((v0 + 296));
      v71 = sub_2295A3E30(v68, v70, &v88);

      *(v66 + 14) = v71;
      *(v66 + 22) = 2080;
      v72 = [*__swift_project_boxed_opaque_existential_0((v0 + 336) *(v0 + 360))];
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v73 = sub_22A4DE5CC();
      v75 = v74;
      (*(v64 + 8))(v63, v80);
      __swift_destroy_boxed_opaque_existential_0((v0 + 336));
      v76 = sub_2295A3E30(v73, v75, &v88);

      *(v66 + 24) = v76;
      _os_log_impl(&dword_229538000, v58, v59, "[%s:%s/%s][Bind] .. failed to get a device controller!", v66, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v83, -1, -1);
      MEMORY[0x22AAD4E50](v66, -1, -1);

      v50(v87, v85);
      goto LABEL_20;
    }

    v50(v61, v62);
    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
    v52 = (v0 + 296);
LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(v52);
    goto LABEL_20;
  }

  sub_229557188((v0 + 256), v0 + 216);
  v54 = *(v0 + 240);
  v55 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_0((v0 + 216), v54);
  v56 = swift_task_alloc();
  *(v0 + 808) = v56;
  *v56 = v0;
  v56[1] = sub_22977DCD8;
  v57 = *(v0 + 656);

  return MEMORY[0x282171460](v57, v54, v55);
}

uint64_t sub_22977D8F0()
{
  v28 = v0;
  v1 = v0[96];
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8A8);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  sub_22957F1C4((v0 + 2), (v0 + 12));

  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[88];
    v7 = v0[87];
    v24 = v0[86];
    v8 = v0[80];
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v9 = 136315906;
    *(v9 + 4) = sub_2295A3E30(*(v8 + 112), *(v8 + 120), &v27);
    *(v9 + 12) = 2080;
    v10 = [*__swift_project_boxed_opaque_existential_0(v0 + 7 v0[10])];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v14 = sub_2295A3E30(v11, v13, &v27);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    v15 = [*__swift_project_boxed_opaque_existential_0(v0 + 12 v0[15])];
    sub_22A4DB79C();

    sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v7 + 8))(v6, v24);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v19 = sub_2295A3E30(v16, v18, &v27);

    *(v9 + 24) = v19;
    *(v9 + 32) = 2112;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v21;
    *v25 = v21;
    _os_log_impl(&dword_229538000, v4, v5, "[%s:%s/%s][Bind] FAILED Device not bound to service; returned error %@.", v9, 0x2Au);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v22 = v0[1];

  return v22();
}

uint64_t sub_22977DCD8()
{
  v1 = *(*v0 + 648);

  return MEMORY[0x2822009F8](sub_22977DDE8, v1, 0);
}

uint64_t sub_22977DDE8()
{
  v36 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_22953EAE4(v3, &qword_27D880AB8, &unk_22A582538);
    sub_22957F1C4((v0 + 2), (v0 + 47));
    sub_22957F1C4((v0 + 2), (v0 + 52));

    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCEC();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[100];
    v8 = v0[93];
    v9 = v0[89];
    if (v6)
    {
      v33 = v0[93];
      v34 = v0[100];
      v10 = v0[88];
      v11 = v0[87];
      v31 = v0[86];
      v12 = v0[80];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_2295A3E30(*(v12 + 112), *(v12 + 120), &v35);
      *(v13 + 12) = 2080;
      v15 = [*__swift_project_boxed_opaque_existential_0(v0 + 47 v0[50])];
      v16 = sub_22A4DD5EC();
      v32 = v9;
      v18 = v17;

      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
      v19 = sub_2295A3E30(v16, v18, &v35);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      v20 = [*__swift_project_boxed_opaque_existential_0(v0 + 52 v0[55])];
      sub_22A4DB79C();

      sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = sub_22A4DE5CC();
      v23 = v22;
      (*(v11 + 8))(v10, v31);
      __swift_destroy_boxed_opaque_existential_0(v0 + 52);
      v24 = sub_2295A3E30(v21, v23, &v35);

      *(v13 + 24) = v24;
      _os_log_impl(&dword_229538000, v4, v5, "[%s:%s/%s][Bind] Device does not have a controller node ID; unable to bind.", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);

      v34(v33, v32);
    }

    else
    {

      v7(v8, v9);
      __swift_destroy_boxed_opaque_existential_0(v0 + 52);
      __swift_destroy_boxed_opaque_existential_0(v0 + 47);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v30 = v0[1];

    return v30();
  }

  else
  {
    (*(v1 + 32))(v0[85], v3, v2);
    v25 = swift_task_alloc();
    v0[102] = v25;
    *v25 = v0;
    v25[1] = sub_22977E268;
    v26 = v0[93];
    v27 = v0[85];
    v28 = v0[80];

    return sub_2296CD79C((v0 + 2), v28, v26, v27);
  }
}

uint64_t sub_22977E268()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 648);
  if (v0)
  {
    v4 = sub_22977E838;
  }

  else
  {
    v4 = sub_22977E394;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22977E394()
{
  v44 = v0;
  v1 = v0[98];
  v2 = v0[93];
  v3 = v0[91];
  v4 = v0[89];
  sub_22957F1C4((v0 + 2), (v0 + 57));
  sub_22957F1C4((v0 + 2), (v0 + 62));
  v1(v3, v2, v4);

  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDD0C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[100];
  v9 = v0[93];
  v10 = v0[91];
  v11 = v0[89];
  if (v7)
  {
    v38 = v6;
    v12 = v0[88];
    v36 = v0[100];
    v13 = v0[87];
    v35 = v0[86];
    v40 = v0[84];
    v41 = v0[83];
    v42 = v0[85];
    v14 = v0[80];
    v39 = v0[93];
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v15 = 136315906;
    *(v15 + 4) = sub_2295A3E30(*(v14 + 112), *(v14 + 120), &v43);
    *(v15 + 12) = 2080;
    v16 = [*__swift_project_boxed_opaque_existential_0(v0 + 57 v0[60])];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    __swift_destroy_boxed_opaque_existential_0(v0 + 57);
    v20 = sub_2295A3E30(v17, v19, &v43);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2080;
    v21 = [*__swift_project_boxed_opaque_existential_0(v0 + 62 v0[65])];
    sub_22A4DB79C();

    sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_22A4DE5CC();
    v24 = v23;
    (*(v13 + 8))(v12, v35);
    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    v25 = sub_2295A3E30(v22, v24, &v43);

    *(v15 + 24) = v25;
    *(v15 + 32) = 2080;
    sub_229780CE4(&qword_27D880AB0, 255, MEMORY[0x277D17408], MEMORY[0x277D17420]);
    v26 = sub_22A4DE5CC();
    v28 = v27;
    v36(v10, v11);
    v29 = sub_2295A3E30(v26, v28, &v43);

    *(v15 + 34) = v29;
    _os_log_impl(&dword_229538000, v5, v38, "[%s:%s/%s][Bind] Device bound to service on %s.", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v40 + 8))(v42, v41);
    v36(v39, v11);
  }

  else
  {
    v30 = v0[85];
    v31 = v0[84];
    v32 = v0[83];

    v8(v10, v11);
    (*(v31 + 8))(v30, v32);
    v8(v9, v11);
    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v33 = v0[1];

  return v33();
}

uint64_t sub_22977E838()
{
  v31 = v0;
  v1 = v0[100];
  v2 = v0[93];
  v3 = v0[89];
  (*(v0[84] + 8))(v0[85], v0[83]);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v4 = v0[103];
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v5 = sub_22A4DD07C();
  __swift_project_value_buffer(v5, qword_27D8AB8A8);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  sub_22957F1C4((v0 + 2), (v0 + 12));

  v6 = v4;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[88];
    v10 = v0[87];
    v27 = v0[86];
    v11 = v0[80];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v12 = 136315906;
    *(v12 + 4) = sub_2295A3E30(*(v11 + 112), *(v11 + 120), &v30);
    *(v12 + 12) = 2080;
    v13 = [*__swift_project_boxed_opaque_existential_0(v0 + 7 v0[10])];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v17 = sub_2295A3E30(v14, v16, &v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2080;
    v18 = [*__swift_project_boxed_opaque_existential_0(v0 + 12 v0[15])];
    sub_22A4DB79C();

    sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_22A4DE5CC();
    v21 = v20;
    (*(v10 + 8))(v9, v27);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v22 = sub_2295A3E30(v19, v21, &v30);

    *(v12 + 24) = v22;
    *(v12 + 32) = 2112;
    v23 = v4;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v24;
    *v28 = v24;
    _os_log_impl(&dword_229538000, v7, v8, "[%s:%s/%s][Bind] FAILED Device not bound to service; returned error %@.", v12, 0x2Au);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v25 = v0[1];

  return v25();
}

uint64_t sub_22977EC6C(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  v5 = sub_22A4DDE2C();
  v6 = MEMORY[0x277D17448];
  v2[5] = v5;
  v2[6] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);

  return MEMORY[0x2822009F8](sub_22977ED30, a2, 0);
}

uint64_t sub_22977ED30()
{
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8A8);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "[Controller] Got Matter Device Controller.", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = *(v5 + 120);
  v0[8] = v6;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v0 + 2;

  return MEMORY[0x2822009F8](sub_22977EE78, v6, 0);
}

uint64_t sub_22977EE78()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = &unk_22A582630;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = &unk_22A582638;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_22977EF94;

  return v6();
}

void sub_22977EF94()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 64);

    MEMORY[0x2822009F8](sub_22977F0DC, v3, 0);
  }
}

uint64_t sub_22977F0DC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22977F14C(void *a1, uint64_t a2)
{
  v2[12] = a2;
  v2[5] = &_s16AccessoryAdapterVN;
  v2[6] = &off_283CDE8F8;
  v2[2] = a1;
  v4 = a1;

  return MEMORY[0x2822009F8](sub_22977F1D4, a2, 0);
}

uint64_t sub_22977F1D4()
{
  v16 = v0;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D8AB8A8);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDD0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = [*__swift_project_boxed_opaque_existential_0(v0 + 7 v0[10])];
    v7 = sub_22A4DD5EC();
    v9 = v8;

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v10 = sub_2295A3E30(v7, v9, &v15);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_229538000, v2, v3, "[Connect] device %s did connect!", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AAD4E50](v5, -1, -1);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  v11 = v0[12];
  v12 = *(v11 + 120);
  v0[13] = v12;
  v13 = swift_task_alloc();
  v0[14] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v0 + 2;

  return MEMORY[0x2822009F8](sub_22977F3E4, v12, 0);
}

uint64_t sub_22977F3E4()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = &unk_22A582678;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  *(v3 + 16) = &unk_22A582680;
  *(v3 + 24) = v2;
  v6 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_22977F500;

  return v6();
}

void sub_22977F500()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 104);

    MEMORY[0x2822009F8](sub_22977F648, v3, 0);
  }
}

uint64_t sub_22977F648()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22977F6B8(void *a1, uint64_t a2)
{
  v2[23] = a2;
  v5 = sub_22A4DB7DC();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[5] = &_s16AccessoryAdapterVN;
  v2[6] = &off_283CDE8F8;
  v2[2] = a1;
  v6 = a1;

  return MEMORY[0x2822009F8](sub_22977F7A8, a2, 0);
}

uint64_t sub_22977F7A8()
{
  v33 = v1;
  if (qword_27D87BA08 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB8A8);
  sub_22957F1C4((v1 + 2), (v1 + 7));
  sub_22957F1C4((v1 + 2), (v1 + 12));
  swift_retain_n();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  if (!os_log_type_enabled(v3, v4))
  {

    __swift_destroy_boxed_opaque_existential_0(v1 + 12);
    __swift_destroy_boxed_opaque_existential_0(v1 + 7);
    goto LABEL_8;
  }

  v6 = v1[25];
  v5 = v1[26];
  v7 = v1[24];
  v30 = v1[23];
  v0 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v32 = v31;
  *v0 = 136315650;
  v8 = [*__swift_project_boxed_opaque_existential_0(v1 + 7 v1[10])];
  v9 = sub_22A4DD5EC();
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v12 = sub_2295A3E30(v9, v11, &v32);

  *(v0 + 4) = v12;
  *(v0 + 12) = 2080;
  v13 = [*__swift_project_boxed_opaque_existential_0(v1 + 12 v1[15])];
  sub_22A4DB79C();

  sub_229780CE4(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v14 = sub_22A4DE5CC();
  v16 = v15;
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0(v1 + 12);
  v17 = sub_2295A3E30(v14, v16, &v32);

  *(v0 + 14) = v17;
  *(v0 + 22) = 2048;
  swift_beginAccess();
  v18 = *(v30 + 112);
  if (v18 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {

    *(v0 + 24) = i;

    _os_log_impl(&dword_229538000, v3, v4, "[%s/%s][Check] Device connected; checking for device support (%ld services).", v0, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v0, -1, -1);

LABEL_8:
    v20 = v1[23];
    swift_beginAccess();
    v21 = *(v20 + 112);
    v1[27] = v21;
    if (v21 >> 62)
    {
      break;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v1[28] = v22;
    if (!v22)
    {
      goto LABEL_18;
    }

LABEL_10:
    if (v22 >= 1)
    {
      v1[29] = 0;
      v23 = v1[27];

      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x22AAD13F0](0, v23);
      }

      else
      {
        v24 = *(v23 + 32);
      }

      v1[30] = v24;
      v25 = *__swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
      v26 = swift_task_alloc();
      v1[31] = v26;
      *v26 = v1;
      v26[1] = sub_22977FC5C;
      v27 = v1[23];

      return sub_22977C9D8(v25, v24, v27);
    }

    __break(1u);
LABEL_22:
    ;
  }

  v22 = sub_22A4DE0EC();
  v1[28] = v22;
  if (v22)
  {
    goto LABEL_10;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v29 = v1[1];

  return v29();
}

uint64_t sub_22977FC5C()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_22977FD6C, v1, 0);
}

uint64_t sub_22977FD6C()
{
  v1 = v0[29];
  v2 = v0[28];

  if (v1 + 1 == v2)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[29] + 1;
    v0[29] = v5;
    v6 = v0[27];
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v0[30] = v7;
    v8 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = swift_task_alloc();
    v0[31] = v9;
    *v9 = v0;
    v9[1] = sub_22977FC5C;
    v10 = v0[23];

    return sub_22977C9D8(v8, v7, v10);
  }
}

uint64_t sub_22977FECC(uint64_t a1, void *a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v3[5] = &_s16AccessoryAdapterVN;
  v3[6] = &off_283CDE8F8;
  v3[2] = a2;
  v5 = a2;

  return MEMORY[0x2822009F8](sub_22977FF54, a3, 0);
}

uint64_t sub_22977FF54()
{
  if (*(v0[8] + 112) <= 1u)
  {
    if (*(v0[8] + 112))
    {
      if (qword_27D87BA08 != -1)
      {
        swift_once();
      }

      v10 = sub_22A4DD07C();
      __swift_project_value_buffer(v10, qword_27D8AB8A8);
      v2 = sub_22A4DD05C();
      v3 = sub_22A4DDCDC();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_20;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "[Device Connect] MatterServer is running but does not yet have a device controller; dropping.";
    }

    else
    {
      if (qword_27D87BA08 != -1)
      {
        swift_once();
      }

      v1 = sub_22A4DD07C();
      __swift_project_value_buffer(v1, qword_27D8AB8A8);
      v2 = sub_22A4DD05C();
      v3 = sub_22A4DDCDC();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_20;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "[Device Connect] MatterServer is not started yet; dropping.";
    }

LABEL_19:
    _os_log_impl(&dword_229538000, v2, v3, v5, v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
LABEL_20:

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v12 = v0[1];

    return v12();
  }

  if (*(v0[8] + 112) != 2)
  {
    if (qword_27D87BA08 != -1)
    {
      swift_once();
    }

    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8AB8A8);
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCDC();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_20;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "[Device Connect] MatterServer is stopped; dropping notification.";
    goto LABEL_19;
  }

  v6 = *__swift_project_boxed_opaque_existential_0(v0 + 2, &_s16AccessoryAdapterVN);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_229780244;
  v8 = v0[7];

  return sub_22977F6B8(v6, v8);
}

uint64_t sub_229780244()
{
  v1 = *v0;
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_229780340(uint64_t a1, uint64_t a2)
{
  v2 = sub_22A4DE42C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22978038C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22977422C(v2, v3);
}

uint64_t sub_229780424()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_22979D6FC(v2);
}

uint64_t sub_2297804D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_22979D7E4(a1, v4);
}

uint64_t sub_229780588(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229586D38;

  return sub_22977B154(a1, a2, v6, v7, v8);
}

uint64_t sub_22978064C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22977B4FC(a1, v4, v5, v6, v1 + 5, v7);
}

uint64_t sub_229780714()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229569B30;

  return sub_2297774F4(v2, v3, v4);
}

uint64_t sub_2297807BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_229569B30;

  return sub_229777788(a1, a2, v6, v7, v8);
}

uint64_t sub_229780880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22977795C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229780948(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_22977AA04(a1, a2, v7, v6);
}

uint64_t sub_2297809FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22977AE7C(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_229780AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_229586D38;

  return sub_22977C8E0(a1, v4);
}

uint64_t sub_229780B78(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_229586D38;

  return sub_229779724(a1, a2, v2);
}

uint64_t sub_229780C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229779B7C(a1, v4, v5, v7, v6);
}

uint64_t sub_229780CE4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_229780D3C(uint64_t a1)
{
  v4 = *(sub_22A4DDE2C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_22977C59C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_229780E34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229777BB4(v2, v3);
}

uint64_t sub_229780ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AA0, &qword_22A5824F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_229780F3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_22977C274(a1, v4, v5, v7, v6);
}

uint64_t sub_229780FFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_229777DC4(v2, v3);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2297810BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_229781104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_229781158()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D880AD0);
  __swift_project_value_buffer(v0, qword_27D880AD0);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2297811D0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = *&v2->_os_unfair_lock_opaque;
  v36 = a1;
  v37 = v3;
  v4 = sub_22A4DB7DC();
  v33 = *(v4 - 8);
  v34 = v4;
  v35 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AE8, &qword_22A5827C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v31);
  v30 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF8, &qword_22A5827D0);
  (*(v10 + 104))(v12, *MEMORY[0x277D85778], v9);
  sub_22A4DD9EC();
  (*(v10 + 8))(v12, v9);
  v18 = sub_22A4DD9DC();
  (*(*(v18 - 8) + 56))(v38, 1, 1, v18);
  v19 = v33;
  v20 = v34;
  (*(v33 + 16))(v6, v36, v34);
  v21 = *(v13 + 16);
  v36 = v17;
  v22 = v31;
  v21(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v31);
  v23 = v19;
  v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v25 = (v35 + *(v13 + 80) + v24) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v2;
  (*(v23 + 32))(&v26[v24], v6, v20);
  (*(v13 + 32))(&v26[v25], v30, v22);
  *&v26[(v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v37;

  v27 = sub_22957F3C0(0, 0, v38, &unk_22A5827E0, v26);
  os_unfair_lock_lock(v2 + 14);
  if (*&v2[16]._os_unfair_lock_opaque)
  {
    sub_22A4DDA7C();
  }

  *&v2[16]._os_unfair_lock_opaque = v27;

  os_unfair_lock_unlock(v2 + 14);

  return (*(v13 + 8))(v36, v22);
}

uint64_t sub_229781670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v7 = sub_22A4DE2CC();
  v6[35] = v7;
  v6[36] = *(v7 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v8 = sub_22A4DE2EC();
  v6[39] = v8;
  v6[40] = *(v8 - 8);
  v6[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880B00, &qword_22A5827E8);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880B08, &qword_22A5827F0);
  v6[45] = swift_task_alloc();
  v10 = sub_22A4DD3CC();
  v6[46] = v10;
  v6[47] = *(v10 - 8);
  v6[48] = swift_task_alloc();
  v11 = sub_22A4DD3EC();
  v6[49] = v11;
  v6[50] = *(v11 - 8);
  v6[51] = swift_task_alloc();
  v12 = sub_22A4DB7DC();
  v6[52] = v12;
  v6[53] = *(v12 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297819AC, 0, 0);
}

uint64_t sub_2297819AC(uint64_t a1)
{
  v25 = v1;
  if (sub_22A4DDAAC())
  {
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v2 = *(v1 + 440);
    v3 = *(v1 + 416);
    v4 = *(v1 + 424);
    v5 = *(v1 + 264);
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D880AD0);
    (*(v4 + 16))(v2, v5, v3);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v1 + 440);
    v11 = *(v1 + 416);
    v12 = *(v1 + 424);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_22A4DE5CC();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_2295A3E30(v15, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_229538000, v7, v8, "[HomeID: %s] Task was cancelled, exiting...", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
    sub_22A4DDA1C();

    v22 = *(v1 + 8);

    return v22();
  }

  else
  {
    *(v1 + 236) = *MEMORY[0x277CC5888];
    *(v1 + 80) = sub_22A4DD39C();
    *(v1 + 88) = &off_283CE7340;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 56));
    v20 = swift_task_alloc();
    *(v1 + 504) = v20;
    *v20 = v1;
    v20[1] = sub_229781D70;
    v21 = *(v1 + 264);

    return MEMORY[0x282116518](boxed_opaque_existential_1, v21);
  }
}

uint64_t sub_229781D70()
{

  if (v0)
  {

    v1 = sub_229781E88;
  }

  else
  {
    v1 = sub_229782870;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_229781E88()
{
  v82 = v0;
  __swift_deallocate_boxed_opaque_existential_1(v0 + 56);
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_22953EAE4(v0 + 56, &qword_27D880B10, &unk_22A5827F8);
  if (qword_27D87BA78 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 264);
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D880AD0);
  v7 = *(v3 + 16);
  v7(v1, v5, v4);
  v80 = v7;
  v7(v2, v5, v4);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCEC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v14 = *(v0 + 416);
  v13 = *(v0 + 424);
  if (v10)
  {
    v15 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v81 = v79;
    *v15 = 136315394;
    sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    log = v8;
    v16 = sub_22A4DE5CC();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v14);
    v20 = sub_2295A3E30(v16, v18, &v81);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_22A4DE5CC();
    v23 = v22;
    v24 = v14;
    v25 = v19;
    v19(v12, v24);
    v26 = sub_2295A3E30(v21, v23, &v81);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_229538000, log, v9, "[HomeID: %s] Failed to find EnergyVenue with homeUniqueIdentifier: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v79, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  else
  {

    v27 = *(v13 + 8);
    v27(v12, v14);
    v28 = v14;
    v25 = v27;
    v27(v11, v28);
  }

  *(v0 + 568) = v80;
  *(v0 + 560) = v25;
  if (sub_22A4DDAAC())
  {
    if (sub_22A4DDAAC())
    {
      if (qword_27D87BA78 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 440);
      v30 = *(v0 + 416);
      v31 = *(v0 + 424);
      v32 = *(v0 + 264);
      __swift_project_value_buffer(v6, qword_27D880AD0);
      (*(v31 + 16))(v29, v32, v30);
      v33 = sub_22A4DD05C();
      v34 = sub_22A4DDCCC();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v0 + 440);
      v37 = *(v0 + 416);
      v38 = *(v0 + 424);
      if (v35)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v81 = v40;
        *v39 = 136315138;
        sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v41 = sub_22A4DE5CC();
        v43 = v42;
        (*(v38 + 8))(v36, v37);
        v44 = sub_2295A3E30(v41, v43, &v81);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_229538000, v33, v34, "[HomeID: %s] Task was cancelled, exiting...", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AAD4E50](v40, -1, -1);
        MEMORY[0x22AAD4E50](v39, -1, -1);
      }

      else
      {

        (*(v38 + 8))(v36, v37);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
      sub_22A4DDA1C();

      v76 = *(v0 + 8);

      return v76();
    }

    else
    {
      *(v0 + 80) = sub_22A4DD39C();
      *(v0 + 88) = &off_283CE7340;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      v63 = swift_task_alloc();
      *(v0 + 504) = v63;
      *v63 = v0;
      v63[1] = sub_229781D70;
      v64 = *(v0 + 264);

      return MEMORY[0x282116518](boxed_opaque_existential_1, v64);
    }
  }

  else
  {
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 456);
    v46 = *(v0 + 416);
    v47 = *(v0 + 264);
    v48 = *(v0 + 424) + 16;
    *(v0 + 576) = __swift_project_value_buffer(v6, qword_27D880AD0);
    *(v0 + 584) = v48 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v80(v45, v47, v46);
    v49 = sub_22A4DD05C();
    v50 = sub_22A4DDCCC();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 456);
    v53 = *(v0 + 416);
    if (v51)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v81 = v55;
      *v54 = 136315394;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v56 = sub_22A4DE5CC();
      v57 = v25;
      v58 = v56;
      v60 = v59;
      v57(v52, v53);
      v61 = sub_2295A3E30(v58, v60, &v81);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2048;
      *(v54 + 14) = 0x409C200000000000;
      _os_log_impl(&dword_229538000, v49, v50, "[HomeID: %s] Fetching guidance stream after %f seconds", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);
    }

    else
    {

      v25(v52, v53);
    }

    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    v68 = sub_22A4DE88C();
    v70 = v69;
    sub_22A4DE6AC();
    *(v0 + 240) = v68;
    *(v0 + 248) = v70;
    *(v0 + 224) = 0;
    *(v0 + 216) = 0;
    *(v0 + 232) = 1;
    v71 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_22A4DE68C();
    sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_22A4DE2FC();
    v72 = *(v66 + 8);
    *(v0 + 592) = v72;
    *(v0 + 600) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72(v65, v67);
    v73 = swift_task_alloc();
    *(v0 + 608) = v73;
    *v73 = v0;
    v73[1] = sub_229784218;
    v75 = *(v0 + 304);
    v74 = *(v0 + 312);

    return MEMORY[0x2822008C8](v75, v0 + 216, v74, v71);
  }
}

uint64_t sub_229782870()
{
  v115 = v0;
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 480);
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = *(v0 + 264);
    v5 = sub_22A4DD07C();
    *(v0 + 512) = __swift_project_value_buffer(v5, qword_27D880AD0);
    v6 = *(v3 + 16);
    *(v0 + 520) = v6;
    *(v0 + 528) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 480);
    v12 = *(v0 + 416);
    v11 = *(v0 + 424);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v114 = v112;
      *v13 = 136315138;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v14 = sub_22A4DE5CC();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_2295A3E30(v14, v16, &v114);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_229538000, v7, v8, "[HomeID: %s] Fetching reduce guidance", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x22AAD4E50](v112, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {

      v17 = *(v11 + 8);
      v17(v10, v12);
    }

    *(v0 + 536) = v17;
    v45 = *(v0 + 472);
    v46 = *(v0 + 416);
    v48 = *(v0 + 400);
    v47 = *(v0 + 408);
    v49 = *(v0 + 392);
    v50 = *(v0 + 424) + 8;
    (*(*(v0 + 376) + 104))(*(v0 + 384), *(v0 + 236), *(v0 + 368));
    sub_22A4DD3DC();
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22A4DD37C();
    sub_22A4DD3BC();
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880B18, &qword_22A582808);
    *(v0 + 128) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_22A4DD43C();

    *(v0 + 544) = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v45, v46);
    (*(v48 + 8))(v47, v49);
    v51 = *(v0 + 120);
    v52 = __swift_project_boxed_opaque_existential_0((v0 + 96), v51);
    v53 = *(v51 - 8);
    v54 = swift_task_alloc();
    (*(v53 + 16))(v54, v52, v51);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_22A4DDAFC();

    v55 = *(v0 + 160);
    v56 = *(v0 + 168);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 136, v55);
    v57 = swift_task_alloc();
    *(v0 + 552) = v57;
    *v57 = v0;
    v57[1] = sub_2297836A8;
    v58 = *(v0 + 360);

    return MEMORY[0x282200310](v58, 0, 0, v0 + 256, v55, v56);
  }

  else
  {
    sub_22953EAE4(v0 + 56, &qword_27D880B10, &unk_22A5827F8);
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 488);
    v19 = *(v0 + 496);
    v22 = *(v0 + 416);
    v21 = *(v0 + 424);
    v23 = *(v0 + 264);
    v24 = sub_22A4DD07C();
    __swift_project_value_buffer(v24, qword_27D880AD0);
    v25 = *(v21 + 16);
    v25(v19, v23, v22);
    v113 = v25;
    v25(v20, v23, v22);
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();
    v28 = os_log_type_enabled(v26, v27);
    v30 = *(v0 + 488);
    v29 = *(v0 + 496);
    v32 = *(v0 + 416);
    v31 = *(v0 + 424);
    if (v28)
    {
      v33 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v114 = v111;
      *v33 = 136315394;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      log = v26;
      v34 = sub_22A4DE5CC();
      v36 = v35;
      v37 = *(v31 + 8);
      v37(v29, v32);
      v38 = sub_2295A3E30(v34, v36, &v114);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = sub_22A4DE5CC();
      v41 = v40;
      v42 = v32;
      v43 = v37;
      v37(v30, v42);
      v44 = sub_2295A3E30(v39, v41, &v114);

      *(v33 + 14) = v44;
      _os_log_impl(&dword_229538000, log, v27, "[HomeID: %s] Failed to find EnergyVenue with homeUniqueIdentifier: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v111, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    else
    {

      v59 = *(v31 + 8);
      v59(v30, v32);
      v60 = v32;
      v43 = v59;
      v59(v29, v60);
    }

    *(v0 + 568) = v113;
    *(v0 + 560) = v43;
    if (sub_22A4DDAAC())
    {
      if (sub_22A4DDAAC())
      {
        if (qword_27D87BA78 != -1)
        {
          swift_once();
        }

        v61 = *(v0 + 440);
        v62 = *(v0 + 416);
        v63 = *(v0 + 424);
        v64 = *(v0 + 264);
        __swift_project_value_buffer(v24, qword_27D880AD0);
        (*(v63 + 16))(v61, v64, v62);
        v65 = sub_22A4DD05C();
        v66 = sub_22A4DDCCC();
        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 440);
        v69 = *(v0 + 416);
        v70 = *(v0 + 424);
        if (v67)
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v114 = v72;
          *v71 = 136315138;
          sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v73 = sub_22A4DE5CC();
          v75 = v74;
          (*(v70 + 8))(v68, v69);
          v76 = sub_2295A3E30(v73, v75, &v114);

          *(v71 + 4) = v76;
          _os_log_impl(&dword_229538000, v65, v66, "[HomeID: %s] Task was cancelled, exiting...", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x22AAD4E50](v72, -1, -1);
          MEMORY[0x22AAD4E50](v71, -1, -1);
        }

        else
        {

          (*(v70 + 8))(v68, v69);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
        sub_22A4DDA1C();

        v108 = *(v0 + 8);

        return v108();
      }

      else
      {
        *(v0 + 80) = sub_22A4DD39C();
        *(v0 + 88) = &off_283CE7340;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        v95 = swift_task_alloc();
        *(v0 + 504) = v95;
        *v95 = v0;
        v95[1] = sub_229781D70;
        v96 = *(v0 + 264);

        return MEMORY[0x282116518](boxed_opaque_existential_1, v96);
      }
    }

    else
    {
      if (qword_27D87BA78 != -1)
      {
        swift_once();
      }

      v77 = *(v0 + 456);
      v78 = *(v0 + 416);
      v79 = *(v0 + 264);
      v80 = *(v0 + 424) + 16;
      *(v0 + 576) = __swift_project_value_buffer(v24, qword_27D880AD0);
      *(v0 + 584) = v80 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v113(v77, v79, v78);
      v81 = sub_22A4DD05C();
      v82 = sub_22A4DDCCC();
      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 456);
      v85 = *(v0 + 416);
      if (v83)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v114 = v87;
        *v86 = 136315394;
        sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v88 = sub_22A4DE5CC();
        v89 = v43;
        v90 = v88;
        v92 = v91;
        v89(v84, v85);
        v93 = sub_2295A3E30(v90, v92, &v114);

        *(v86 + 4) = v93;
        *(v86 + 12) = 2048;
        *(v86 + 14) = 0x409C200000000000;
        _os_log_impl(&dword_229538000, v81, v82, "[HomeID: %s] Fetching guidance stream after %f seconds", v86, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x22AAD4E50](v87, -1, -1);
        MEMORY[0x22AAD4E50](v86, -1, -1);
      }

      else
      {

        v43(v84, v85);
      }

      v98 = *(v0 + 288);
      v97 = *(v0 + 296);
      v99 = *(v0 + 280);
      v100 = sub_22A4DE88C();
      v102 = v101;
      sub_22A4DE6AC();
      *(v0 + 240) = v100;
      *(v0 + 248) = v102;
      *(v0 + 224) = 0;
      *(v0 + 216) = 0;
      *(v0 + 232) = 1;
      v103 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_22A4DE68C();
      sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_22A4DE2FC();
      v104 = *(v98 + 8);
      *(v0 + 592) = v104;
      *(v0 + 600) = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v104(v97, v99);
      v105 = swift_task_alloc();
      *(v0 + 608) = v105;
      *v105 = v0;
      v105[1] = sub_229784218;
      v107 = *(v0 + 304);
      v106 = *(v0 + 312);

      return MEMORY[0x2822008C8](v107, v0 + 216, v106, v103);
    }
  }
}

uint64_t sub_2297836A8()
{

  if (v0)
  {
    v1 = sub_229784D30;
  }

  else
  {
    v1 = sub_2297837B8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2297837B8()
{
  v80 = v0;
  v1 = *(v0 + 360);
  v2 = sub_22A4DD44C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 520);
    v5 = *(v0 + 464);
    v6 = *(v0 + 416);
    v7 = *(v0 + 264);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v4(v5, v7, v6);
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCCC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 536);
    v12 = *(v0 + 464);
    v13 = *(v0 + 416);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v79 = v15;
      *v14 = 136315138;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v16 = sub_22A4DE5CC();
      v18 = v17;
      v11(v12, v13);
      v19 = sub_2295A3E30(v16, v18, &v79);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_229538000, v8, v9, "[HomeID: %s] Guidance stream stopped without an error", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    else
    {

      v11(v12, v13);
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v28 = *(v0 + 536);
    v29 = *(v0 + 520);
    *(v0 + 568) = v29;
    *(v0 + 560) = v28;
    if (sub_22A4DDAAC())
    {
      if (sub_22A4DDAAC())
      {
        if (qword_27D87BA78 != -1)
        {
          swift_once();
        }

        v30 = *(v0 + 440);
        v31 = *(v0 + 416);
        v32 = *(v0 + 424);
        v33 = *(v0 + 264);
        v34 = sub_22A4DD07C();
        __swift_project_value_buffer(v34, qword_27D880AD0);
        (*(v32 + 16))(v30, v33, v31);
        v35 = sub_22A4DD05C();
        v36 = sub_22A4DDCCC();
        v37 = os_log_type_enabled(v35, v36);
        v38 = *(v0 + 440);
        v39 = *(v0 + 416);
        v40 = *(v0 + 424);
        if (v37)
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v79 = v42;
          *v41 = 136315138;
          sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v43 = sub_22A4DE5CC();
          v45 = v44;
          (*(v40 + 8))(v38, v39);
          v46 = sub_2295A3E30(v43, v45, &v79);

          *(v41 + 4) = v46;
          _os_log_impl(&dword_229538000, v35, v36, "[HomeID: %s] Task was cancelled, exiting...", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x22AAD4E50](v42, -1, -1);
          MEMORY[0x22AAD4E50](v41, -1, -1);
        }

        else
        {

          (*(v40 + 8))(v38, v39);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
        sub_22A4DDA1C();

        v77 = *(v0 + 8);

        return v77();
      }

      else
      {
        *(v0 + 80) = sub_22A4DD39C();
        *(v0 + 88) = &off_283CE7340;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        v64 = swift_task_alloc();
        *(v0 + 504) = v64;
        *v64 = v0;
        v64[1] = sub_229781D70;
        v65 = *(v0 + 264);

        return MEMORY[0x282116518](boxed_opaque_existential_1, v65);
      }
    }

    else
    {
      if (qword_27D87BA78 != -1)
      {
        swift_once();
      }

      v47 = *(v0 + 456);
      v48 = *(v0 + 416);
      v49 = *(v0 + 264);
      v50 = *(v0 + 424) + 16;
      v51 = sub_22A4DD07C();
      *(v0 + 576) = __swift_project_value_buffer(v51, qword_27D880AD0);
      *(v0 + 584) = v50 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v29(v47, v49, v48);
      v52 = sub_22A4DD05C();
      v53 = sub_22A4DDCCC();
      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 456);
      v56 = *(v0 + 416);
      if (v54)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v79 = v58;
        *v57 = 136315394;
        sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v59 = sub_22A4DE5CC();
        v61 = v60;
        v28(v55, v56);
        v62 = sub_2295A3E30(v59, v61, &v79);

        *(v57 + 4) = v62;
        *(v57 + 12) = 2048;
        *(v57 + 14) = 0x409C200000000000;
        _os_log_impl(&dword_229538000, v52, v53, "[HomeID: %s] Fetching guidance stream after %f seconds", v57, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x22AAD4E50](v58, -1, -1);
        MEMORY[0x22AAD4E50](v57, -1, -1);
      }

      else
      {

        v28(v55, v56);
      }

      v67 = *(v0 + 288);
      v66 = *(v0 + 296);
      v68 = *(v0 + 280);
      v69 = sub_22A4DE88C();
      v71 = v70;
      sub_22A4DE6AC();
      *(v0 + 240) = v69;
      *(v0 + 248) = v71;
      *(v0 + 224) = 0;
      *(v0 + 216) = 0;
      *(v0 + 232) = 1;
      v72 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_22A4DE68C();
      sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_22A4DE2FC();
      v73 = *(v67 + 8);
      *(v0 + 592) = v73;
      *(v0 + 600) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v73(v66, v68);
      v74 = swift_task_alloc();
      *(v0 + 608) = v74;
      *v74 = v0;
      v74[1] = sub_229784218;
      v76 = *(v0 + 304);
      v75 = *(v0 + 312);

      return MEMORY[0x2822008C8](v76, v0 + 216, v75, v72);
    }
  }

  else
  {
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    v22 = *(v0 + 336);
    *(v0 + 200) = v2;
    *(v0 + 208) = &off_283CE4900;
    v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    (*(v3 + 32))(v23, v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
    sub_22A4DDA0C();
    (*(v21 + 8))(v20, v22);
    v24 = *(v0 + 160);
    v25 = *(v0 + 168);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 136, v24);
    v26 = swift_task_alloc();
    *(v0 + 552) = v26;
    *v26 = v0;
    v26[1] = sub_2297836A8;
    v27 = *(v0 + 360);

    return MEMORY[0x282200310](v27, 0, 0, v0 + 256, v24, v25);
  }
}

uint64_t sub_229784218()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 304);
  v5 = *(*v1 + 280);
  *(*v1 + 616) = v0;

  v3(v4, v5);
  if (v0)
  {
    v6 = sub_229784764;
  }

  else
  {
    (*(v2[40] + 8))(v2[41], v2[39]);
    v6 = sub_2297843B0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2297843B0(uint64_t a1)
{
  v25 = v1;
  if (sub_22A4DDAAC())
  {
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v2 = v1[55];
    v3 = v1[52];
    v4 = v1[53];
    v5 = v1[33];
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D880AD0);
    (*(v4 + 16))(v2, v5, v3);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v1[55];
    v11 = v1[52];
    v12 = v1[53];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_22A4DE5CC();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_2295A3E30(v15, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_229538000, v7, v8, "[HomeID: %s] Task was cancelled, exiting...", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
    sub_22A4DDA1C();

    v22 = v1[1];

    return v22();
  }

  else
  {
    v1[10] = sub_22A4DD39C();
    v1[11] = &off_283CE7340;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 7);
    v20 = swift_task_alloc();
    v1[63] = v20;
    *v20 = v1;
    v20[1] = sub_229781D70;
    v21 = v1[33];

    return MEMORY[0x282116518](boxed_opaque_existential_1, v21);
  }
}

uint64_t sub_229784764()
{
  v46 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 568);
  v3 = *(v0 + 448);
  v4 = *(v0 + 416);
  v5 = *(v0 + 264);
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  v2(v3, v5, v4);
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 560);
  v11 = *(v0 + 448);
  v12 = *(v0 + 416);
  if (v9)
  {
    v43 = *(v0 + 616);
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v13 = 136315394;
    sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    v10(v11, v12);
    v17 = sub_2295A3E30(v14, v16, &v45);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    v18 = v43;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v42 = v19;
    _os_log_impl(&dword_229538000, v7, v8, "[HomeID: %s] Sleep threw an error: %@", v13, 0x16u);
    sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x22AAD4E50](v44, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    if ((sub_22A4DDAAC() & 1) == 0)
    {
LABEL_3:
      *(v0 + 80) = sub_22A4DD39C();
      *(v0 + 88) = &off_283CE7340;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      v21 = swift_task_alloc();
      *(v0 + 504) = v21;
      *v21 = v0;
      v21[1] = sub_229781D70;
      v22 = *(v0 + 264);

      return MEMORY[0x282116518](boxed_opaque_existential_1, v22);
    }
  }

  else
  {

    v10(v11, v12);
    if ((sub_22A4DDAAC() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27D87BA78 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 440);
  v24 = *(v0 + 416);
  v25 = *(v0 + 424);
  v26 = *(v0 + 264);
  v27 = sub_22A4DD07C();
  __swift_project_value_buffer(v27, qword_27D880AD0);
  (*(v25 + 16))(v23, v26, v24);
  v28 = sub_22A4DD05C();
  v29 = sub_22A4DDCCC();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 440);
  v32 = *(v0 + 416);
  v33 = *(v0 + 424);
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136315138;
    sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v36 = sub_22A4DE5CC();
    v38 = v37;
    (*(v33 + 8))(v31, v32);
    v39 = sub_2295A3E30(v36, v38, &v45);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_229538000, v28, v29, "[HomeID: %s] Task was cancelled, exiting...", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v31, v32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
  sub_22A4DDA1C();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_229784D30()
{
  v75 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v1(v2, v5, v3);
  v6 = v4;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 536);
  v11 = *(v0 + 432);
  v12 = *(v0 + 416);
  if (v9)
  {
    v72 = v7;
    v13 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v73;
    *v13 = 136315394;
    sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    v10(v11, v12);
    v17 = sub_2295A3E30(v14, v16, &v74);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    v18 = v4;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v71 = v19;
    _os_log_impl(&dword_229538000, v72, v8, "[HomeID: %s] Guidance stream stopped with error: %@", v13, 0x16u);
    sub_22953EAE4(v71, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v71, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AAD4E50](v73, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  else
  {

    v10(v11, v12);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v20 = *(v0 + 536);
  v21 = *(v0 + 520);
  *(v0 + 568) = v21;
  *(v0 + 560) = v20;
  if (sub_22A4DDAAC())
  {
    if (sub_22A4DDAAC())
    {
      if (qword_27D87BA78 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 440);
      v23 = *(v0 + 416);
      v24 = *(v0 + 424);
      v25 = *(v0 + 264);
      v26 = sub_22A4DD07C();
      __swift_project_value_buffer(v26, qword_27D880AD0);
      (*(v24 + 16))(v22, v25, v23);
      v27 = sub_22A4DD05C();
      v28 = sub_22A4DDCCC();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 440);
      v31 = *(v0 + 416);
      v32 = *(v0 + 424);
      if (v29)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v74 = v34;
        *v33 = 136315138;
        sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v35 = sub_22A4DE5CC();
        v37 = v36;
        (*(v32 + 8))(v30, v31);
        v38 = sub_2295A3E30(v35, v37, &v74);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_229538000, v27, v28, "[HomeID: %s] Task was cancelled, exiting...", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x22AAD4E50](v34, -1, -1);
        MEMORY[0x22AAD4E50](v33, -1, -1);
      }

      else
      {

        (*(v32 + 8))(v30, v31);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8);
      sub_22A4DDA1C();

      v69 = *(v0 + 8);

      return v69();
    }

    else
    {
      *(v0 + 80) = sub_22A4DD39C();
      *(v0 + 88) = &off_283CE7340;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      v56 = swift_task_alloc();
      *(v0 + 504) = v56;
      *v56 = v0;
      v56[1] = sub_229781D70;
      v57 = *(v0 + 264);

      return MEMORY[0x282116518](boxed_opaque_existential_1, v57);
    }
  }

  else
  {
    if (qword_27D87BA78 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 456);
    v40 = *(v0 + 416);
    v41 = *(v0 + 264);
    v42 = *(v0 + 424) + 16;
    v43 = sub_22A4DD07C();
    *(v0 + 576) = __swift_project_value_buffer(v43, qword_27D880AD0);
    *(v0 + 584) = v42 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v39, v41, v40);
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCCC();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 456);
    v48 = *(v0 + 416);
    if (v46)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v74 = v50;
      *v49 = 136315394;
      sub_229785DF0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v51 = sub_22A4DE5CC();
      v53 = v52;
      v20(v47, v48);
      v54 = sub_2295A3E30(v51, v53, &v74);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2048;
      *(v49 + 14) = 0x409C200000000000;
      _os_log_impl(&dword_229538000, v44, v45, "[HomeID: %s] Fetching guidance stream after %f seconds", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      MEMORY[0x22AAD4E50](v49, -1, -1);
    }

    else
    {

      v20(v47, v48);
    }

    v59 = *(v0 + 288);
    v58 = *(v0 + 296);
    v60 = *(v0 + 280);
    v61 = sub_22A4DE88C();
    v63 = v62;
    sub_22A4DE6AC();
    *(v0 + 240) = v61;
    *(v0 + 248) = v63;
    *(v0 + 224) = 0;
    *(v0 + 216) = 0;
    *(v0 + 232) = 1;
    v64 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_22A4DE68C();
    sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_22A4DE2FC();
    v65 = *(v59 + 8);
    *(v0 + 592) = v65;
    *(v0 + 600) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v65(v58, v60);
    v66 = swift_task_alloc();
    *(v0 + 608) = v66;
    *v66 = v0;
    v66[1] = sub_229784218;
    v68 = *(v0 + 304);
    v67 = *(v0 + 312);

    return MEMORY[0x2822008C8](v68, v0 + 216, v67, v64);
  }
}

uint64_t sub_229785674()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22953EAE4(v0 + 64, &unk_27D880B20, &qword_22A582818);

  return swift_deallocClassInstance();
}

void sub_2297856E8()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 14);
  if (*&v1[16]._os_unfair_lock_opaque)
  {
    sub_22A4DDA7C();
  }

  os_unfair_lock_unlock(v1 + 14);
}

uint64_t sub_22978574C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880AF0, &qword_22A5827C8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229569B30;

  return sub_229781670(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_2297858E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22A4DE2CC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2297859E8, 0, 0);
}

uint64_t sub_2297859E8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_22A4DE2EC();
  v5 = sub_229785DF0(&qword_281401730, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22A4DE68C();
  sub_229785DF0(&unk_281401738, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22A4DE2FC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_229785B78;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_229785B78()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229785D34, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_229785D34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AAD4E50);
  }

  return result;
}

uint64_t sub_229785DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229785E38()
{
  v0 = [swift_getObjCClassFromMetadata() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

uint64_t sub_229785F6C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v4 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v4);
  sub_22978620C(&v4[2], v1, a1);
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

id sub_229786030(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_configuredAsValenciaThermostat];
  *v6 = 0;
  v6[4] = 0;
  v7 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage];
  *v7 = 0;
  *(v7 + 5) = 0;
  *(v7 + 24) = 0u;
  *(v7 + 8) = 0u;
  v8 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserver];
  *v8 = 0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 5) = 0;
  v9 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserverTask];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator] = 0;
  v10 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_dataSource];
  *v10 = a1;
  *(v10 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_22978620C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564F88(a1, &v17, &qword_27D880BE8, &qword_22A582848);
  if (v18)
  {
    return sub_229557188(&v17, a3);
  }

  v19 = a2;
  sub_22953EAE4(a1, &qword_27D880BE8, &qword_22A582848);
  sub_22953EAE4(&v17, &qword_27D880BE8, &qword_22A582848);
  sub_229785E38();
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_229538000, v11, v12, "Initializing DefaultHAPAccessoryClimateStorage", v13, 2u);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = v19;
  v15 = [v19 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  swift_dynamicCastClassUnconditional();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_22970BCE0(v14, a3);
  swift_unknownObjectRelease();
  return sub_22957F1C4(a3, a1);
}

void sub_229786530()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - v6;
  sub_229690ADC();
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v8 = v0;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v48 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v47 = v13;
    *v12 = 136315138;
    v50 = 91;
    v51 = 0xE100000000000000;
    v52 = v13;
    v14 = [v8 logIdentifier];
    v15 = v5;
    v16 = sub_22A4DD5EC();
    v49 = v2;
    v18 = v17;

    v19 = v16;
    v5 = v15;
    MEMORY[0x22AAD08C0](v19, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(v50, v51, &v52);
    v2 = v49;

    *(v12 + 4) = v20;
    _os_log_impl(&dword_229538000, v9, v10, "%s Configuring swift extensions", v12, 0xCu);
    v21 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x22AAD4E50](v21, -1, -1);
    v22 = v12;
    v1 = v48;
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  v23 = *(v2 + 8);
  v23(v7, v1);
  v24 = [v8 home];
  if (v24)
  {
    v25 = v24;
    v26 = [v8 swiftExtensions];
    swift_unknownObjectRelease();
    v27 = [v25 notificationCenter];
    v28 = objc_allocWithZone(type metadata accessor for LocalPresenceBulletinNotificationCoordinator(0));
    v29 = v8;
    v30 = sub_22983C084(v29, v27);

    sub_22983A244();
    v31 = [v29 swiftExtensions];

    _s15SwiftExtensionsCMa_1();
    v32 = swift_dynamicCastClassUnconditional();
    v33 = *(v32 + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator);
    *(v32 + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator) = v30;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_22A4DDC0C();
    sub_22A4DD08C();
    v34 = v8;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 136315138;
      v50 = 91;
      v51 = 0xE100000000000000;
      v52 = v38;
      v39 = [v34 logIdentifier];
      v49 = v2;
      v40 = v39;
      v41 = sub_22A4DD5EC();
      v48 = v5;
      v42 = v41;
      v44 = v43;

      MEMORY[0x22AAD08C0](v42, v44);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v45 = sub_2295A3E30(v50, v51, &v52);

      *(v37 + 4) = v45;
      _os_log_impl(&dword_229538000, v35, v36, "%s Failed to configure swift extensions. Home is nil", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      v46 = v48;
    }

    else
    {

      v46 = v5;
    }

    v23(v46, v1);
  }
}

id sub_229786A30(void *a1)
{
  v3 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator);
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRelease();
    v6 = sub_22983A430(a1);

    result = v6;
    if (v6)
    {
      return result;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

void *sub_229786B3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  MEMORY[0x28223BE20](v39);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(v5 + 16);
  v17(&v34 - v15, a1, v4);
  v40 = v5;
  v18 = *(v5 + 56);
  v18(v16, 0, 1, v4);
  v37 = v2;
  v19 = [v2 swiftExtensions];
  v36 = _s15SwiftExtensionsCMa_1();
  v20 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator);
  if (v20)
  {
    v21 = v20;
    swift_unknownObjectRelease();
    v22 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_messageTargetUUID;
    swift_beginAccess();
    v17(v14, &v21[v22], v4);

    v23 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v23 = 1;
  }

  v18(v14, v23, 1, v4);
  v24 = *(v39 + 48);
  sub_229564F88(v16, v8, &unk_27D87D2A0, &unk_22A578BD0);
  sub_229564F88(v14, &v8[v24], &unk_27D87D2A0, &unk_22A578BD0);
  v25 = v40;
  v26 = *(v40 + 48);
  if (v26(v8, 1, v4) == 1)
  {
    sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
    if (v26(&v8[v24], 1, v4) == 1)
    {
      sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
LABEL_12:
      v31 = [v37 swiftExtensions];
      v28 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceBulletinNotificationCoordinator);
      v32 = v28;
      swift_unknownObjectRelease();
      return v28;
    }

    goto LABEL_9;
  }

  v27 = v38;
  sub_229564F88(v8, v38, &unk_27D87D2A0, &unk_22A578BD0);
  if (v26(&v8[v24], 1, v4) == 1)
  {
    sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v25 + 8))(v27, v4);
LABEL_9:
    sub_22953EAE4(v8, &qword_27D87DBA0, &qword_22A57A158);
    return 0;
  }

  v29 = v35;
  (*(v25 + 32))(v35, &v8[v24], v4);
  sub_2295B2378();
  LODWORD(v39) = sub_22A4DD58C();
  v30 = *(v25 + 8);
  v30(v29, v4);
  sub_22953EAE4(v14, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
  v30(v27, v4);
  sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
  if (v39)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_229787078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_229569C24(a1, v20 - v9);
  v11 = sub_22A4DD9DC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22953EAE4(v10, &unk_27D87D8F0, &qword_22A578D70);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_22A4DD8CC();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22A4DD9CC();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

void sub_229787290(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8FC();
  }
}

void sub_229787320(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = [v1 featuresDataSource];
  if (v15)
  {
    v16 = [v15 isActivityHistory2025Enabled];
    swift_unknownObjectRelease();
    if (v16)
    {
      sub_22A4DDBFC();
      v17 = a1;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDD0C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v52 = v8;
        v50 = v21;
        v55 = v21;
        *v20 = 136315138;
        v22 = [v17 name];
        v51 = v9;
        v23 = v22;
        v24 = v7;
        v25 = sub_22A4DD5EC();
        v53 = ObjectType;
        v26 = v17;
        v28 = v27;

        v29 = v25;
        v7 = v24;
        v30 = sub_2295A3E30(v29, v28, &v55);
        v17 = v26;
        ObjectType = v53;

        *(v20 + 4) = v30;
        _os_log_impl(&dword_229538000, v18, v19, "[EnergyKit] Received '%s' message", v20, 0xCu);
        v31 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x22AAD4E50](v31, -1, -1);
        MEMORY[0x22AAD4E50](v20, -1, -1);

        (*(v51 + 8))(v14, v52);
      }

      else
      {

        (*(v9 + 8))(v14, v8);
      }

      v44 = sub_22A4DD9DC();
      (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v17;
      v45[5] = v2;
      v45[6] = ObjectType;
      v46 = v17;
      v47 = v2;
      sub_22957F3C0(0, 0, v7, &unk_22A582A30, v45);
    }

    else
    {
      sub_22A4DDBFC();
      v32 = a1;
      v33 = sub_22A4DD05C();
      v34 = sub_22A4DDCCC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v55 = v36;
        *v35 = 136315138;
        v37 = [v32 name];
        v53 = v32;
        v38 = v9;
        v39 = v37;
        v40 = sub_22A4DD5EC();
        v42 = v41;

        v43 = sub_2295A3E30(v40, v42, &v55);

        *(v35 + 4) = v43;
        _os_log_impl(&dword_229538000, v33, v34, "[EnergyKit] Ignoring '%s' message", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x22AAD4E50](v36, -1, -1);
        MEMORY[0x22AAD4E50](v35, -1, -1);

        (*(v38 + 8))(v12, v8);
        v32 = v53;
      }

      else
      {

        (*(v9 + 8))(v12, v8);
      }

      type metadata accessor for HMError(0);
      v54 = 48;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_229793150(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      v48 = v55;
      v49 = sub_22A4DB3DC();

      [v32 respondWithError_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22978788C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = sub_22A4DB7DC();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = sub_22A4DD07C();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v9 = sub_22A4DDCBC();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229787A2C, 0, 0);
}

uint64_t sub_229787A2C()
{
  v1 = [v0[11] messagePayload];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_22A4DD49C();
  }

  else
  {
    sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  sub_22979275C();
  sub_229790B38();
  sub_22A4DD0CC();
  v0[26] = 0;
  v56 = v0;
  v3 = v0 + 8;
  v4 = v0[5];
  v5 = v0[6];
  v0[27] = v4;
  v0[28] = v5;
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  v0[8] = MEMORY[0x277D84F90];
  if (v7 != 1)
  {
LABEL_32:
    v35 = v4;
    v36 = v0[12];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880C58, &qword_22A582980);
    v38 = swift_task_alloc();
    v39 = v6;
    v40 = v38;
    v0[29] = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v35;
    *(v38 + 32) = v5;
    *(v38 + 40) = v39;
    *(v38 + 48) = v3;
    v41 = swift_task_alloc();
    v0[30] = v41;
    *v41 = v0;
    v41[1] = sub_229788214;
    v13 = &unk_22A582A40;
    v8 = v0 + 9;
    v9 = v37;
    v10 = v37;
    v11 = 0;
    v12 = 0;
    v14 = v40;
    v15 = v37;

    return MEMORY[0x282200600](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v8 = [v0[12] homes];
  if (v8)
  {
    v16 = v8;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v17 = sub_22A4DD83C();

    if (!(v17 >> 62))
    {
      goto LABEL_7;
    }

LABEL_30:
    v8 = sub_22A4DE0EC();
    v18 = v8;
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  v17 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_30;
  }

LABEL_7:
  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_8:
  v19 = 0;
  v52 = v17 & 0xC000000000000001;
  v43 = v17 + 32;
  v44 = v17 & 0xFFFFFFFFFFFFFF8;
  v49 = v4 + 56;
  v45 = v0[15];
  v55 = (v45 + 8);
  v48 = v0 + 8;
  v47 = v5;
  v46 = v6;
  v50 = v18;
  v51 = v17;
  while (v52)
  {
    v8 = MEMORY[0x22AAD13F0](v19, v17);
    v20 = __OFADD__(v19, 1);
    v21 = (v19 + 1);
    if (v20)
    {
      goto LABEL_35;
    }

LABEL_17:
    v53 = v21;
    v54 = v8;
    v22 = [v8 spiClientIdentifier];
    sub_22A4DB79C();

    if (*(v4 + 16))
    {
      sub_229793150(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_22A4DD4EC();
      v24 = -1 << *(v4 + 32);
      v25 = v23 & ~v24;
      if ((*(v49 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v26 = v4;
        v27 = ~v24;
        v28 = *(v45 + 72);
        v29 = *(v45 + 16);
        while (1)
        {
          v30 = v56[16];
          v31 = v56[14];
          v29(v30, *(v26 + 48) + v25 * v28, v31);
          sub_229793150(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v32 = sub_22A4DD58C();
          v33 = *v55;
          (*v55)(v30, v31);
          if (v32)
          {
            break;
          }

          v25 = (v25 + 1) & v27;
          if (((*(v49 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            v4 = v26;
            v5 = v47;
            v3 = v48;
            v6 = v46;
            goto LABEL_24;
          }
        }

        v0 = v56;
        v33(v56[17], v56[14]);
        v34 = v54;
        v3 = v48;
        MEMORY[0x22AAD09E0]();
        if (*((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v4 = v26;
        v5 = v47;
        v6 = v46;
      }

      else
      {
        v33 = *v55;
LABEL_24:
        v0 = v56;
        v33(v56[17], v56[14]);
      }

      v18 = v50;
      v17 = v51;
    }

    else
    {
      (*v55)(v0[17], v0[14]);
    }

    v19 = v53;

    if (v53 == v18)
    {
      goto LABEL_31;
    }
  }

  if (v19 >= *(v44 + 16))
  {
    goto LABEL_36;
  }

  v8 = *(v43 + 8 * v19);
  v20 = __OFADD__(v19, 1);
  v21 = (v19 + 1);
  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return MEMORY[0x282200600](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_229788214()
{

  return MEMORY[0x2822009F8](sub_229788348, 0, 0);
}

uint64_t sub_229788348()
{
  v40 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[11];
  sub_229789BA8(v0[9], v1);

  sub_22A4DDBFC();
  (*(v4 + 16))(v2, v1, v3);
  v6 = v5;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[24];
  v12 = v0[21];
  v13 = v0[22];
  v14 = v0[18];
  v15 = v0[19];
  if (v9)
  {
    v16 = v0[11];
    v35 = v8;
    v17 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v39[0] = v36;
    *v17 = 136315394;
    v18 = [v16 name];
    v37 = v14;
    v38 = v12;
    v19 = sub_22A4DD5EC();
    v21 = v20;

    v22 = sub_2295A3E30(v19, v21, v39);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_22A4DBA6C();
    v25 = v24;
    v26 = *(v10 + 8);
    v26(v11, v13);
    v27 = sub_2295A3E30(v23, v25, v39);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_229538000, v7, v35, "[EnergyKit] '%s' response: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    (*(v15 + 8))(v38, v37);
  }

  else
  {

    v26 = *(v10 + 8);
    v26(v11, v13);
    (*(v15 + 8))(v12, v14);
  }

  v28 = v0[26];
  sub_229793150(&qword_27D880C48, MEMORY[0x277CCE698], MEMORY[0x277CCE6A0]);
  sub_22A4DD0BC();
  if (v28)
  {
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A595720);
    swift_getErrorValue();
    sub_22A4DE5EC();
    return sub_22A4DE39C();
  }

  else
  {
    v30 = v0[25];
    v31 = v0[22];
    v32 = v0[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v33 = sub_22A4DD47C();

    [v32 respondWithPayload_];

    v26(v30, v31);

    v34 = v0[1];

    return v34();
  }
}

void sub_22978880C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = [v1 featuresDataSource];
  if (v15)
  {
    v16 = [v15 isActivityHistory2025Enabled];
    swift_unknownObjectRelease();
    if (v16)
    {
      sub_22A4DDBFC();
      v17 = a1;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDD0C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v52 = v8;
        v50 = v21;
        v55 = v21;
        *v20 = 136315138;
        v22 = [v17 name];
        v51 = v9;
        v23 = v22;
        v24 = v7;
        v25 = sub_22A4DD5EC();
        v53 = ObjectType;
        v26 = v17;
        v28 = v27;

        v29 = v25;
        v7 = v24;
        v30 = sub_2295A3E30(v29, v28, &v55);
        v17 = v26;
        ObjectType = v53;

        *(v20 + 4) = v30;
        _os_log_impl(&dword_229538000, v18, v19, "[EnergyKit] Received '%s' message", v20, 0xCu);
        v31 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x22AAD4E50](v31, -1, -1);
        MEMORY[0x22AAD4E50](v20, -1, -1);

        (*(v51 + 8))(v14, v52);
      }

      else
      {

        (*(v9 + 8))(v14, v8);
      }

      v44 = sub_22A4DD9DC();
      (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v2;
      v45[5] = v17;
      v45[6] = ObjectType;
      v46 = v17;
      v47 = v2;
      sub_22957F3C0(0, 0, v7, &unk_22A582960, v45);
    }

    else
    {
      sub_22A4DDBFC();
      v32 = a1;
      v33 = sub_22A4DD05C();
      v34 = sub_22A4DDCCC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v55 = v36;
        *v35 = 136315138;
        v37 = [v32 name];
        v53 = v32;
        v38 = v9;
        v39 = v37;
        v40 = sub_22A4DD5EC();
        v42 = v41;

        v43 = sub_2295A3E30(v40, v42, &v55);

        *(v35 + 4) = v43;
        _os_log_impl(&dword_229538000, v33, v34, "[EnergyKit] Ignoring '%s' message", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x22AAD4E50](v36, -1, -1);
        MEMORY[0x22AAD4E50](v35, -1, -1);

        (*(v38 + 8))(v12, v8);
        v32 = v53;
      }

      else
      {

        (*(v9 + 8))(v12, v8);
      }

      type metadata accessor for HMError(0);
      v54 = 48;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_229793150(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      v48 = v55;
      v49 = sub_22A4DB3DC();

      [v32 respondWithError_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_229788D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v8 = sub_22A4DD07C();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v9 = sub_22A4DDCBC();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[14] = v10;
  v11 = swift_task_alloc();
  v6[15] = v11;
  *v11 = v6;
  v11[1] = sub_229788EE0;

  return sub_2297893F4(v10, a4);
}

uint64_t sub_229788EE0()
{

  return MEMORY[0x2822009F8](sub_229788FDC, 0, 0);
}

uint64_t sub_229788FDC()
{
  v41 = v0;
  sub_229793150(&qword_27D880C48, MEMORY[0x277CCE698], MEMORY[0x277CCE6A0]);
  sub_22A4DD0BC();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[6];
  sub_22A4DDBFC();
  (*(v4 + 16))(v2, v1, v3);
  v6 = v5;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[8];
  v15 = v0[9];
  if (v9)
  {
    v16 = v0[6];
    v36 = v8;
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v17 = 136315394;
    v18 = [v16 name];
    v38 = v14;
    v39 = v12;
    v19 = sub_22A4DD5EC();
    v21 = v20;

    v22 = sub_2295A3E30(v19, v21, &v40);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_22A4DBA6C();
    v25 = v24;
    v26 = v13;
    v27 = *(v10 + 8);
    v27(v11, v26);
    v28 = sub_2295A3E30(v23, v25, &v40);

    *(v17 + 14) = v28;
    _os_log_impl(&dword_229538000, v7, v36, "[EnergyKit] '%s' response: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    (*(v15 + 8))(v39, v38);
  }

  else
  {

    v29 = v13;
    v27 = *(v10 + 8);
    v27(v11, v29);
    (*(v15 + 8))(v12, v14);
  }

  v30 = v0[14];
  v31 = v0[11];
  v32 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v33 = sub_22A4DD47C();

  [v32 respondWithPayload_];

  v27(v30, v31);

  v34 = v0[1];

  return v34();
}