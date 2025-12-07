uint64_t sub_22968FD20(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_22968970C(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_22968FE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22968FEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22968FF48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22968FFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22969003C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_22A4DC77C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DCD0C();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_22A4DCDFC();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v41 - v10;
  v12 = sub_22A4DB1EC();
  v13 = sub_22A4DD5EC();
  v15 = v14;
  if (v13 == sub_22A4DD5EC() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_22A4DE60C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  sub_22A4DB1FC();
  if (!v49[3])
  {
    sub_22953EAE4(v49, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_29;
  }

  sub_229690ADC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    type metadata accessor for HMError(0);
    v50[0] = -1;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    goto LABEL_30;
  }

  v19 = v50[0];
  v20 = sub_22A4DB20C();
  if (!v20)
  {

    goto LABEL_29;
  }

  v21 = v20;
  v47 = sub_22A4DD5EC();
  v48 = v22;
  sub_22A4DE18C();
  if (!*(v21 + 16))
  {
    goto LABEL_26;
  }

  v23 = sub_2295402E8(v49);
  if ((v24 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_2295404B0(*(v21 + 56) + 32 * v23, v50);
  sub_22954045C(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v25 = v47;
  v47 = sub_22A4DD5EC();
  v48 = v26;
  sub_22A4DE18C();
  if (!*(v21 + 16))
  {
    goto LABEL_26;
  }

  v27 = sub_2295402E8(v49);
  if ((v28 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_2295404B0(*(v21 + 56) + 32 * v27, v50);
  sub_22954045C(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v41[3] = v47;
  v47 = sub_22A4DD5EC();
  v48 = v29;
  sub_22A4DE18C();
  if (!*(v21 + 16))
  {
    goto LABEL_26;
  }

  v30 = sub_2295402E8(v49);
  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_2295404B0(*(v21 + 56) + 32 * v30, v50);
  sub_22954045C(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

    goto LABEL_27;
  }

  v41[2] = v47;
  v47 = sub_22A4DD5EC();
  v48 = v32;
  sub_22A4DE18C();
  if (!*(v21 + 16) || (v33 = sub_2295402E8(v49), (v34 & 1) == 0))
  {
LABEL_26:

    sub_22954045C(v49);
LABEL_27:
    type metadata accessor for HMError(0);
    v50[0] = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();

LABEL_30:
    v37 = sub_22A4DB21C();
    (*(*(v37 - 8) + 8))(a1, v37);
    return;
  }

  v41[1] = v25;
  sub_2295404B0(*(v21 + 56) + 32 * v33, v50);
  sub_22954045C(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v35 = v50[5];
  sub_2296907D8(v21, v11);
  if (v35)
  {
    v36 = sub_22A4DB21C();
    (*(*(v36 - 8) + 8))(a1, v36);
  }

  else
  {

    sub_22A4DCCEC();
    sub_22A4DCE0C();
    sub_22A4DC76C();
    v38 = sub_22A4DB21C();
    (*(*(v38 - 8) + 8))(a1, v38);
    v39 = _s15AttributeReportVMa(0);
    v40 = v44;
    sub_229690B28(v11, &v44[v39[7]]);
    *v40 = v19;
    (*(v45 + 32))(&v40[v39[5]], v8, v6);
    (*(v42 + 32))(&v40[v39[6]], v46, v43);
  }
}

uint64_t sub_2296907D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22A4DD5EC();
  sub_22A4DE18C();
  if (!*(a1 + 16) || (v5 = sub_2295402E8(v10), (v6 & 1) == 0))
  {
    sub_22954045C(v10);
    goto LABEL_7;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v5, v11);
  sub_22954045C(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  result = sub_22A4DC76C();
  if (v2)
  {
    return result;
  }

  v8 = 0;
LABEL_8:
  v9 = sub_22A4DC77C();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t sub_229690914()
{
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A590020);
  v1 = [*v0 shortDescription];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  MEMORY[0x22AAD08C0](v2, v4);

  MEMORY[0x22AAD08C0](0xD000000000000011, 0x800000022A590040);
  _s15AttributeReportVMa(0);
  sub_22A4DCDFC();
  sub_22A4DE31C();
  MEMORY[0x22AAD08C0](0x3A65756C6176202CLL, 0xE900000000000020);
  sub_22A4DC77C();
  sub_22A4DE31C();
  MEMORY[0x22AAD08C0](41, 0xE100000000000000);
  return 0;
}

uint64_t _s15AttributeReportVMa(uint64_t a1)
{
  result = qword_27D87E950;
  if (!qword_27D87E950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_229690ADC()
{
  result = qword_281401B70;
  if (!qword_281401B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401B70);
  }

  return result;
}

uint64_t sub_229690B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E8E8, &qword_22A57C830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_229690BC0(uint64_t a1)
{
  sub_229690ADC();
  if (v1 <= 0x3F)
  {
    sub_22A4DCDFC();
    if (v2 <= 0x3F)
    {
      sub_22A4DC77C();
      if (v3 <= 0x3F)
      {
        sub_229690C74(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_229690C74(uint64_t a1)
{
  if (!qword_27D87E960)
  {
    sub_22A4DC77C();
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D87E960);
    }
  }
}

uint64_t sub_229690D74()
{
  v1 = v0;
  v2 = [v0 home];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v5 = [v2 accessories];
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v6 = sub_22A4DD83C();

    v16 = v3;
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v8 = 0;
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
      v15 = v4;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x22AAD13F0](v8, v6);
        }

        else
        {
          if (v8 >= *(v9 + 16))
          {
            goto LABEL_16;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v4 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v10 room];

        if (v12 == v1)
        {
          sub_22A4DE27C();
          sub_22A4DE2AC();
          v9 = v6 & 0xFFFFFFFFFFFFFF8;
          sub_22A4DE2BC();
          sub_22A4DE28C();
        }

        else
        {
        }

        ++v8;
        if (v4 == i)
        {
          v13 = v16;
          v4 = v15;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_19:

    if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
      v3 = sub_22A4DE3AC();
    }

    else
    {
      v3 = v13;
      sub_22A4DE61C();
    }
  }

  return v3;
}

unint64_t sub_229691098(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v26);
        v5 = isUniquelyReferenced_nonNull_bridgeObject;
        v6 = __OFADD__(v2++, 1);
        if (v6)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        v5 = *(v28 + 8 * v2);
        isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
        v6 = __OFADD__(v2++, 1);
        if (v6)
        {
          goto LABEL_41;
        }
      }

      v7 = [v5 lpAccessories];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
      v8 = sub_22A4DD83C();
      swift_unknownObjectRelease();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_22A4DE0EC() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_40;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v10;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_22A4DE0EC();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

      v13 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = v3;
        goto LABEL_21;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v33)
          {
            goto LABEL_44;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_2296989B4();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA58, &qword_22A57CBC8);
              v19 = sub_22958C168(v32, i, v8);
              v21 = *v20;
              swift_unknownObjectRetain();
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v4 = v27;
          v3 = v31;
          if (v33 >= 1)
          {
            v22 = *(v13 + 16);
            v6 = __OFADD__(v22, v33);
            v23 = v22 + v33;
            if (v6)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v4 = v27;
      v3 = v31;
      if (v33 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v4)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229691414()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87E970);
  __swift_project_value_buffer(v0, qword_27D87E970);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_22969148C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9D8, &qword_22A57CB08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA08, &qword_22A57CB70);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  v15 = _s13PresenceStateOMa(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v54 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v24 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  swift_beginAccess();
  sub_229696298(v2 + v24, v23);
  v25 = *(v12 + 56);
  sub_229696298(a1, v14);
  sub_2296986F8(v23, &v14[v25]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v27 = *(*(v26 - 8) + 48);
  v28 = v27(v14, 2, v26);
  if (!v28)
  {
    sub_229696298(v14, v21);
    v29 = v27(&v14[v25], 2, v26);
    v30 = sub_22A4DB74C();
    v31 = *(*(v30 - 8) + 8);
    if (v29)
    {
      v31(v21, v30);
      goto LABEL_8;
    }

    v52 = &v14[v25];
    v53 = v30;
    (v31)(v52);
    v31(v21, v53);
    return sub_229696360(v14);
  }

  if (v28 != 1)
  {
    if (v27(&v14[v25], 2, v26) != 2)
    {
      goto LABEL_8;
    }

    return sub_229696360(v14);
  }

  if (v27(&v14[v25], 2, v26) == 1)
  {
    return sub_229696360(v14);
  }

LABEL_8:
  sub_22953EAE4(v14, &unk_27D87EA10, &qword_22A57CB78);
  if (qword_27D87B990 != -1)
  {
    swift_once();
  }

  v32 = sub_22A4DD07C();
  __swift_project_value_buffer(v32, qword_27D87E970);

  v33 = sub_22A4DD05C();
  v34 = sub_22A4DDCCC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v58[0] = v36;
    *v35 = 136315650;
    v38 = *(v2 + 176);
    v37 = *(v2 + 184);

    v39 = sub_2295A3E30(v38, v37, v58);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2295A3E30(0xD000000000000014, 0x800000022A590150, v58);
    *(v35 + 22) = 2080;
    sub_229696298(v2 + v24, v18);
    v40 = sub_229698D5C();
    v42 = v41;
    sub_229696360(v18);
    v43 = sub_2295A3E30(v40, v42, v58);

    *(v35 + 24) = v43;
    _os_log_impl(&dword_229538000, v33, v34, "[%s] %s updated to %s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v36, -1, -1);
    MEMORY[0x22AAD4E50](v35, -1, -1);
  }

  v44 = v56;
  v45 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerContinuation;
  swift_beginAccess();
  sub_229564F88(v2 + v45, v8, &qword_27D87E9D8, &qword_22A57CB08);
  v46 = v57;
  if ((*(v44 + 48))(v8, 1, v57))
  {
    sub_22953EAE4(v8, &qword_27D87E9D8, &qword_22A57CB08);
    v47 = 1;
    v48 = v55;
  }

  else
  {
    v49 = v54;
    (*(v44 + 16))(v54, v8, v46);
    sub_22953EAE4(v8, &qword_27D87E9D8, &qword_22A57CB08);
    sub_229696298(v2 + v24, v18);
    v48 = v55;
    sub_22A4DDA0C();
    (*(v44 + 8))(v49, v46);
    v47 = 0;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9C8, &unk_22A57CAF8);
  (*(*(v50 - 8) + 56))(v48, v47, 1, v50);
  return sub_22953EAE4(v48, &qword_27D87EA08, &qword_22A57CB70);
}

uint64_t sub_229691B68()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  swift_unknownObjectRelease();

  sub_229696360(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerContinuation, &qword_27D87E9D8, &qword_22A57CB08);

  sub_22953EAE4(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer, &qword_27D87EA00, &qword_22A579B80);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s32DefaultAccessoryPresenceObserverCMa(uint64_t a1)
{
  result = qword_27D87E9B0;
  if (!qword_27D87E9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229691C64(uint64_t a1)
{
  _s13PresenceStateOMa(319);
  if (v1 <= 0x3F)
  {
    sub_229691D74(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_229691D74(uint64_t a1)
{
  if (!qword_27D87E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D881920, &qword_22A57CA70);
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D87E9C0);
    }
  }
}

uint64_t sub_229691DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9C8, &unk_22A57CAF8);
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = sub_22A4DB74C();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9D8, &qword_22A57CB08);
  v4[39] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E0, &qword_22A57CB10);
  v4[40] = v7;
  v4[41] = *(v7 - 8);
  v4[42] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  v4[43] = v8;
  v4[44] = *(v8 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = _s13PresenceStateOMa(0);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  v4[51] = v9;
  v10 = *(v9 - 8);
  v4[52] = v10;
  v4[53] = *(v10 + 64);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229692138, v3, 0);
}

uint64_t sub_229692138()
{
  v22 = v0;
  if (qword_27D87B990 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_27D87E970);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315650;
    v8 = *(v4 + 176);
    v9 = *(v4 + 184);

    v10 = sub_2295A3E30(v8, v9, &v21);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_2295A3E30(0xD000000000000014, 0x800000022A5901C0, &v21);
    *(v6 + 22) = 2080;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
    v12 = MEMORY[0x22AAD0A20](v5, v11);
    v14 = sub_2295A3E30(v12, v13, &v21);

    *(v6 + 24) = v14;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] %s - %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v15 = *(v0 + 232);
  sub_229692EF0();
  v16 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask;
  *(v0 + 456) = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask;
  if (*(v15 + v16))
  {

    sub_22A4DDA7C();
  }

  __swift_project_boxed_opaque_existential_0(*(v0 + 224), *(*(v0 + 224) + 24));
  v17 = swift_task_alloc();
  *(v0 + 464) = v17;
  *v17 = v0;
  v17[1] = sub_229692418;
  v18 = *(v0 + 448);
  v19 = *(v0 + 216);

  return sub_22969534C(v18, v19);
}

uint64_t sub_229692418()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_229692528, v1, 0);
}

uint64_t sub_229692528()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 224), *(*(v0 + 224) + 24));
  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_2296925E4;
  v2 = *(v0 + 400);
  v3 = *(v0 + 216);

  return sub_229694A80(v2, v3);
}

uint64_t sub_2296925E4()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_2296926F4, v1, 0);
}

uint64_t sub_2296926F4()
{
  v57 = v0[54];
  v59 = v0[57];
  v1 = v0[52];
  v62 = v0[56];
  v64 = v0[53];
  v60 = v0[49];
  v61 = v0[50];
  v2 = v0[45];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  v55 = v0[38];
  v56 = v0[51];
  v54 = v0[29];
  *v6 = 1;
  (*(v5 + 104))(v6, *MEMORY[0x277D85768], v7);
  sub_22A4DD9EC();
  (*(v5 + 8))(v6, v7);
  (*(v4 + 16))(v8, v2, v3);
  (*(v4 + 56))(v8, 0, 1, v3);
  v9 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerContinuation;
  swift_beginAccess();
  sub_2295E90C8(v8, v54 + v9, &qword_27D87E9D8, &qword_22A57CB08);
  swift_endAccess();
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v55, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v1 + 16))(v57, v62, v56);
  v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v13 = swift_allocObject();
  v14 = *(v1 + 32);
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v63 = v14;
  v14(v13 + v12, v57, v56);
  *(v13 + ((v64 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  *(v54 + v59) = sub_22957F3C0(0, 0, v55, &unk_22A57CB38, v13);

  sub_229696298(v61, v60);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v60, 2, v15);
  if (v17)
  {
    if (v17 == 1)
    {
      goto LABEL_9;
    }

    v19 = v0[47];
    v18 = v0[48];
    v20 = v0[29];
    (*(v16 + 56))(v18, 2, 2, v15);
    v21 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
    swift_beginAccess();
    sub_229696298(v20 + v21, v19);
    swift_beginAccess();
    sub_2296962FC(v18, v20 + v21);
    swift_endAccess();
    sub_22969148C(v19);
    sub_229696360(v19);
    sub_229696360(v18);
  }

  else
  {
    v22 = v0[36];
    v24 = v0[34];
    v23 = v0[35];
    v25 = v0[33];
    v26 = v0[29];
    (*(v24 + 32))(v0[37], v0[49], v25);
    v27 = [*(v26 + 168) now];
    sub_22A4DB70C();

    v58 = v26;
    sub_22A4DE81C();
    sub_22A4DB6EC();
    v28 = *(v24 + 8);
    v28(v23, v25);
    LOBYTE(v26) = sub_22A4DB6CC();
    v28(v22, v25);
    v29 = v0[47];
    v30 = v0[48];
    v31 = v0[37];
    v32 = v0[33];
    v33 = v0[29];
    if (v26)
    {
      (*(v0[34] + 16))(v0[48], v0[37], v0[33]);
      (*(v16 + 56))(v30, 0, 2, v15);
      v34 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
      swift_beginAccess();
      sub_229696298(v33 + v34, v29);
      swift_beginAccess();
      sub_2296962FC(v30, v33 + v34);
      swift_endAccess();
      sub_22969148C(v29);
      sub_229696360(v29);
      sub_229696360(v30);
    }

    else
    {
      v35 = v0[36];
      (*(v16 + 56))(v0[48], 2, 2, v15);
      v36 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
      swift_beginAccess();
      sub_229696298(v33 + v36, v29);
      swift_beginAccess();
      sub_2296962FC(v30, v33 + v36);
      swift_endAccess();
      sub_22969148C(v29);
      sub_229696360(v29);
      sub_229696360(v30);
      v37 = [*(v58 + 168) now];
      sub_22A4DB70C();

      sub_22A4DB65C();
      sub_22A4DB65C();
      sub_22A4DE88C();
      v28(v35, v32);
      v38 = sub_22A4DE86C();
      sub_229694014(v38, v39);
    }

    v28(v31, v32);
  }

  v40 = v0[48];
  v42 = v0[31];
  v41 = v0[32];
  v44 = v0[29];
  v43 = v0[30];
  v45 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  swift_beginAccess();
  sub_229696298(v44 + v45, v40);
  sub_22A4DDA0C();
  (*(v42 + 8))(v41, v43);
LABEL_9:
  v46 = v0[55];
  v47 = v0[56];
  v48 = v0[51];
  v49 = v0[52];
  v50 = v0[50];
  v51 = v0[26];
  (*(v0[44] + 8))(v0[45], v0[43]);
  sub_229696360(v50);
  (*(v49 + 8))(v47, v48);
  v63(v51, v46, v48);

  v52 = v0[1];

  return v52();
}

uint64_t sub_229692EF0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer;
  swift_beginAccess();
  sub_229564F88(v0 + v2, &v12, &qword_27D87EA00, &qword_22A579B80);
  if (v13)
  {
    sub_229557188(&v12, &v14);
    if (qword_27D87B990 != -1)
    {
      swift_once();
    }

    v3 = sub_22A4DD07C();
    __swift_project_value_buffer(v3, qword_27D87E970);

    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *&v12 = v7;
      *v6 = 136315394;
      v8 = *(v1 + 176);
      v9 = *(v1 + 184);

      v10 = sub_2295A3E30(v8, v9, &v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2295A3E30(0xD000000000000019, 0x800000022A5902E0, &v12);
      _os_log_impl(&dword_229538000, v4, v5, "[%s] %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v7, -1, -1);
      MEMORY[0x22AAD4E50](v6, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0(&v14, *(&v15 + 1));
    sub_22A4DBC8C();
    __swift_destroy_boxed_opaque_existential_0(&v14);
  }

  else
  {
    sub_22953EAE4(&v12, &qword_27D87EA00, &qword_22A579B80);
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  swift_beginAccess();
  sub_2295E90C8(&v14, v1 + v2, &qword_27D87EA00, &qword_22A579B80);
  return swift_endAccess();
}

uint64_t sub_229693164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = _s13PresenceStateOMa(0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA20, &unk_22A585610);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296932C4, 0, 0);
}

uint64_t sub_2296932C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  sub_22A4DDA3C();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_2296933A8;
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2296933A8()
{

  return MEMORY[0x2822009F8](sub_2296934A4, 0, 0);
}

uint64_t sub_2296934A4()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
LABEL_6:
    (*(v0[12] + 8))(v0[13], v0[11]);

    v3 = v0[1];

    return v3();
  }

  sub_2296986F8(v1, v0[9]);
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {
LABEL_5:
    sub_229696360(v0[9]);
    goto LABEL_6;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_5;
  }

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_229693614;
  v6 = v0[9];

  return sub_2296937C8(v6);
}

uint64_t sub_229693614()
{

  return MEMORY[0x2822009F8](sub_229693710, 0, 0);
}

uint64_t sub_229693710()
{
  v1 = v0[9];

  sub_229696360(v1);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_2296933A8;
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822003E8](v3, 0, 0, v4);
}

uint64_t sub_2296937C8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_22A4DB74C();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  v2[25] = swift_task_alloc();
  _s13PresenceStateOMa(0);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229693920, v1, 0);
}

uint64_t sub_229693920()
{
  v69 = v0;
  if (qword_27D87B990 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[17];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D87E970);
  sub_229696298(v2, v1);

  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = v0[27];
    v9 = v0[18];
    v10 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v68 = v66;
    *v10 = 136315906;
    v11 = *(v9 + 176);
    v12 = *(v9 + 184);

    v13 = sub_2295A3E30(v11, v12, &v68);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000012, 0x800000022A590230, &v68);
    *(v10 + 22) = 2080;
    v14 = sub_229698D5C();
    v16 = v15;
    sub_229696360(v7);
    v17 = sub_2295A3E30(v14, v16, &v68);

    *(v10 + 24) = v17;
    *(v10 + 32) = 2080;
    v18 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
    swift_beginAccess();
    sub_229696298(v9 + v18, v8);
    v19 = sub_229698D5C();
    v21 = v20;
    sub_229696360(v8);
    v22 = sub_2295A3E30(v19, v21, &v68);

    *(v10 + 34) = v22;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s - new: %s, current: %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v66, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  else
  {

    sub_229696360(v7);
  }

  v23 = v0[24];
  v24 = v0[25];
  v25 = v0[17];
  v26 = v0[18];
  v27 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  swift_beginAccess();
  v28 = *(v23 + 48);
  sub_229696298(v25, v24);
  sub_229696298(v26 + v27, v24 + v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v24, 2, v29);
  if (v32)
  {
    if (v32 != 1)
    {
      v34 = v0[26];
      v33 = v0[27];
      sub_229692EF0();
      (*(v30 + 56))(v33, 2, 2, v29);
      sub_229696298(v26 + v27, v34);
      swift_beginAccess();
      sub_2296962FC(v33, v26 + v27);
      swift_endAccess();
      sub_22969148C(v34);
      sub_229696360(v34);
      sub_229696360(v33);
    }

    sub_229696360(v24 + v28);
  }

  else
  {
    v37 = v31(v24 + v28, 2, v29);
    if (v37)
    {
      if (v37 == 1)
      {
        v39 = v0[26];
        v38 = v0[27];
        v40 = v0[25];
        v41 = v0[19];
        v42 = v0[20];
        sub_229696298(v0[17], v38);
        sub_229696298(v26 + v27, v39);
        swift_beginAccess();
        sub_2296962FC(v38, v26 + v27);
        swift_endAccess();
        sub_22969148C(v39);
        sub_229696360(v39);
        sub_229696360(v38);
        (*(v42 + 8))(v40, v41);
      }

      else
      {
        v64 = v0[22];
        v47 = v0[20];
        v46 = v0[21];
        v48 = v0[18];
        v49 = v0[19];
        (*(v47 + 32))();
        v50 = [*(v48 + 168) now];
        sub_22A4DB70C();

        v63 = v48;
        sub_22A4DE81C();
        sub_22A4DB6EC();
        v51 = *(v47 + 8);
        v51(v46, v49);
        LOBYTE(v47) = sub_22A4DB6CC();
        v52 = v51;
        v51(v64, v49);
        if (v47)
        {
          v54 = v0[26];
          v53 = v0[27];
          v65 = v0[19];
          v67 = v0[23];
          (*(v0[20] + 16))(v53);
          (*(v30 + 56))(v53, 0, 2, v29);
          sub_229696298(v26 + v27, v54);
          swift_beginAccess();
          sub_2296962FC(v53, v26 + v27);
          swift_endAccess();
          sub_22969148C(v54);
          sub_229696360(v54);
          sub_229696360(v53);
          v56 = v65;
          v55 = v67;
        }

        else
        {
          v58 = v0[22];
          v57 = v0[23];
          v59 = v0[19];
          v60 = [*(v63 + 168) now];
          sub_22A4DB70C();

          sub_22A4DB65C();
          sub_22A4DB65C();
          sub_22A4DE88C();
          v52(v58, v59);
          v61 = sub_22A4DE86C();
          sub_229694014(v61, v62);
          v55 = v57;
          v56 = v59;
        }

        v52(v55, v56);
      }
    }

    else
    {
      v43 = v0[25];
      v44 = v0[19];
      v45 = *(v0[20] + 8);
      v45(v24 + v28, v44);
      v45(v43, v44);
    }
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_229694014(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5 + 40;
  v7 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer;
  swift_beginAccess();
  sub_229564F88(v2 + v7, v23, &qword_27D87EA00, &qword_22A579B80);
  v8 = AssociatedTypeWitness;
  result = sub_22953EAE4(v23, &qword_27D87EA00, &qword_22A579B80);
  if (!v8)
  {
    if (qword_27D87B990 != -1)
    {
      swift_once();
    }

    v10 = sub_22A4DD07C();
    __swift_project_value_buffer(v10, qword_27D87E970);

    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCCC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23[0] = v22;
      *v13 = 136315650;
      v14 = v3[22];
      v15 = v3[23];

      v16 = sub_2295A3E30(v14, v15, v23);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A5901E0, v23);
      *(v13 + 22) = 2080;
      v17 = sub_22A4DE82C();
      v19 = sub_2295A3E30(v17, v18, v23);

      *(v13 + 24) = v19;
      _os_log_impl(&dword_229538000, v11, v12, "[%s] %s for %s", v13, 0x20u);
      v20 = v22;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0(v3 + 16, v3[19]);
    sub_22A4DD98C();
    v21 = sub_22A4DD9DC();
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
    swift_allocObject();
    swift_weakInit();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v23);

    sub_22A4DBAFC();

    sub_22953EAE4(v6, &unk_27D87D8F0, &qword_22A578D70);

    swift_beginAccess();
    sub_2295E90C8(v23, v3 + v7, &qword_27D87EA00, &qword_22A579B80);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_229694418()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_229694438, v2, 0);
}

uint64_t sub_229694438()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask))
  {

    sub_22A4DDA7C();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296944F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2296945AC, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2296945AC()
{
  sub_229694614();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229694614()
{
  v1 = v0;
  v2 = _s13PresenceStateOMa(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v33 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (qword_27D87B990 != -1)
  {
    swift_once();
  }

  v14 = sub_22A4DD07C();
  __swift_project_value_buffer(v14, qword_27D87E970);

  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v8;
    v19 = v5;
    v20 = v18;
    *&v34 = v18;
    *v17 = 136315394;
    v22 = *(v1 + 176);
    v21 = *(v1 + 184);

    v23 = sub_2295A3E30(v22, v21, &v34);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2295A3E30(0xD00000000000001ELL, 0x800000022A590210, &v34);
    _os_log_impl(&dword_229538000, v15, v16, "[%s] %s", v17, 0x16u);
    swift_arrayDestroy();
    v24 = v20;
    v5 = v19;
    v8 = v33;
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  v25 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer;
  swift_beginAccess();
  sub_229564F88(v1 + v25, &v34, &qword_27D87EA00, &qword_22A579B80);
  v26 = *(&v35 + 1);
  result = sub_22953EAE4(&v34, &qword_27D87EA00, &qword_22A579B80);
  if (v26)
  {
    v28 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
    swift_beginAccess();
    sub_229696298(v1 + v28, v13);
    sub_2296986F8(v13, v11);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v11, 2, v29))
    {
      sub_229696360(v11);
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_beginAccess();
      sub_2295E90C8(&v34, v1 + v25, &qword_27D87EA00, &qword_22A579B80);
      swift_endAccess();
      v31 = [*(v1 + 168) now];
      sub_22A4DB70C();

      (*(v30 + 56))(v8, 0, 2, v29);
      sub_229696298(v1 + v28, v5);
      swift_beginAccess();
      sub_2296962FC(v8, v1 + v28);
      swift_endAccess();
      sub_22969148C(v5);
      sub_229696360(v5);
      return sub_229696360(v8);
    }

    else
    {
      v32 = sub_22A4DB74C();
      return (*(*(v32 - 8) + 8))(v11, v32);
    }
  }

  return result;
}

uint64_t sub_229694A80(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22A4DB74C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_22A4DB7DC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = *(_s13PresenceStateOMa(0) - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229694C34, v2, 0);
}

void *sub_229694C34()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_0((v0[4] + 152), *(v0[4] + 176));
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_22958345C(0, v2 & ~(v2 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v6 = v0[10];
      v7 = v1 & 0xC000000000000001;
      v3 = v15;
      v14 = v1 & 0xFFFFFFFFFFFFFF8;
      v1 = v6 + 32;
      while (1)
      {
        if (v7)
        {
          MEMORY[0x22AAD13F0](v5, v0[3]);
        }

        else
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v2 = sub_22A4DE0EC();
            goto LABEL_3;
          }

          if (v5 >= *(v14 + 16))
          {
            goto LABEL_18;
          }

          swift_unknownObjectRetain();
        }

        v8 = [swift_unknownObjectRetain() uuid];
        sub_22A4DB79C();

        swift_unknownObjectRelease_n();
        v10 = *(v15 + 16);
        v9 = *(v15 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_22958345C((v9 > 1), v10 + 1, 1);
        }

        v11 = v0[11];
        v12 = v0[9];
        ++v5;
        *(v15 + 16) = v10 + 1;
        (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v11, v12);
        if (v2 == v5)
        {
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v0[18] = v3;
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_229694E7C;

    return sub_2296A68E8(v3);
  }

  return result;
}

uint64_t sub_229694E7C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_229694FB0, v2, 0);
}

uint64_t sub_229694FB0()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 1, 2, v4);
  sub_229696298(v2, v3);
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[12];
    v8 = v0[6];
    v9 = v0[20] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    v11 = (v5 + 48);
    v33 = (v8 + 8);
    v34 = (v8 + 32);
    do
    {
      v16 = v0[14];
      v17 = v0[2];
      sub_229696298(v9, v0[16]);
      sub_229696298(v17, v16);
      v18 = *v11;
      v19 = (*v11)(v16, 2, v4);
      v12 = v0[16];
      if (v19)
      {
        if (v19 == 2)
        {
          v13 = v0[2];
          v14 = v0[16];
LABEL_12:
          v12 = v13;
          goto LABEL_5;
        }
      }

      else
      {
        v20 = v0[13];
        v21 = *v34;
        (*v34)(v0[8], v0[14], v0[5]);
        sub_229696298(v12, v20);
        v22 = v18(v20, 2, v4);
        if (!v22)
        {
          v23 = v0[7];
          v30 = v0[8];
          v24 = v0[5];
          v31 = v0[2];
          v32 = v0[16];
          v21(v23, v0[13], v24);
          sub_2296987D0(&unk_27D87EBD0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v29 = sub_22A4DD54C();
          v25 = v10;
          v26 = *v33;
          (*v33)(v23, v24);
          v26(v30, v24);
          v10 = v25;
          if (v29)
          {
            v14 = v32;
          }

          else
          {
            v14 = v31;
          }

          if (v29)
          {
            v12 = v31;
          }

          else
          {
            v12 = v32;
          }

          v13 = v0[2];
          goto LABEL_5;
        }

        if (v22 == 1)
        {
          (*v33)(v0[8], v0[5]);
          v14 = v0[16];
          v13 = v0[2];
          goto LABEL_12;
        }

        (*v33)(v0[8], v0[5]);
        v12 = v0[16];
      }

      v13 = v0[2];
      v14 = v13;
LABEL_5:
      v15 = v0[15];
      sub_229696360(v14);
      sub_2296986F8(v12, v15);
      sub_2296986F8(v15, v13);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  sub_229696360(v0[17]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_22969534C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA30, &unk_22A57CD80);
  v3[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E0, &qword_22A57CB10);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229695544, v2, 0);
}

uint64_t sub_229695544(uint64_t a1)
{
  v89 = v1;
  sub_22A4DB7CC();
  if (qword_27D87B998 != -1)
  {
LABEL_35:
    swift_once();
  }

  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[15];
  v5 = v1[16];
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D8AB7A8);
  v85 = *(v5 + 16);
  v85(v2, v3, v4);
  swift_bridgeObjectRetain_n();
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[20];
  v12 = v1[15];
  v11 = v1[16];
  v13 = v1[6];
  if (v9)
  {
    v84 = v8;
    v14 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v88 = v86;
    *v14 = 136315650;
    *(v14 + 4) = sub_2295A3E30(0xD000000000000021, 0x800000022A590290, &v88);
    *(v14 + 12) = 2080;
    sub_2296987D0(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    v18 = *(v11 + 8);
    v18(v10, v12);
    v19 = sub_2295A3E30(v15, v17, &v88);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
    v21 = MEMORY[0x22AAD0A20](v13, v20);
    v23 = v22;
    swift_bridgeObjectRelease_n();
    v24 = sub_2295A3E30(v21, v23, &v88);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_229538000, v7, v84, "%s - observer: %s, rooms: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v86, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v18 = *(v11 + 8);
    v18(v10, v12);
  }

  v1[22] = v18;
  v25 = v1[19];
  v26 = v1[16];
  v82 = v1[21];
  v27 = v1[15];
  v28 = v1[11];
  v29 = v1[9];
  v30 = v1[10];
  v31 = v1[6];
  *v28 = 1;
  (*(v30 + 104))(v28, *MEMORY[0x277D85768], v29);
  _s13PresenceStateOMa(0);
  sub_22A4DD9EC();
  (*(v30 + 8))(v28, v29);
  v32 = v31;
  v33 = swift_allocObject();
  swift_weakInit();
  v85(v25, v82, v27);
  v34 = *(v26 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  v83 = *(v26 + 32);
  v83(v35 + ((v34 + 24) & ~v34), v25, v27);
  sub_22A4DD9FC();
  v88 = MEMORY[0x277D84F90];
  if (v32 >> 62)
  {
    v36 = sub_22A4DE0EC();
    if (v36)
    {
      goto LABEL_7;
    }

LABEL_37:
    v57 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v36 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_37;
  }

LABEL_7:
  v37 = 0;
  v76 = ~v34;
  v77 = v34;
  v38 = v1[7];
  v87 = v32 & 0xC000000000000001;
  v78 = v32;
  v39 = v32 & 0xFFFFFFFFFFFFFF8;
  v40 = v1[6] + 32;
  while (v87)
  {
    result = MEMORY[0x22AAD13F0](v37, v1[6]);
    v42 = result;
    v43 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_19;
    }

LABEL_13:
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if ([*(v38 + 216) objectForKey_])
    {

      result = swift_unknownObjectRelease();
    }

    else
    {
      sub_22A4DE27C();
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      result = sub_22A4DE28C();
    }

    ++v37;
    if (v43 == v36)
    {
      goto LABEL_20;
    }
  }

  if (v37 >= *(v39 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v42 = *(v40 + 8 * v37);
  result = swift_unknownObjectRetain();
  v43 = v37 + 1;
  if (!__OFADD__(v37, 1))
  {
    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  if (v36 < 1)
  {
    __break(1u);
  }

  else
  {
    v44 = 0;
    v45 = v1[16];
    v79 = v88;
    v81 = v1[6] + 32;
    v46 = (v77 + 32) & v76;
    do
    {
      if (v87)
      {
        v47 = MEMORY[0x22AAD13F0](v44, v1[6]);
      }

      else
      {
        v47 = *(v81 + 8 * v44);
        swift_unknownObjectRetain();
      }

      v48 = [*(v38 + 216) objectForKey_];
      if (v48)
      {
        v49 = v48[2];
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }

      v85(v1[18], v1[21], v1[15]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_22958B1F0(0, v49[2] + 1, 1, v49);
      }

      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_22958B1F0((v50 > 1), v51 + 1, 1, v49);
      }

      ++v44;
      v52 = v1[18];
      v53 = v1[15];
      v49[2] = v51 + 1;
      v83(v49 + v46 + *(v45 + 72) * v51, v52, v53);
      v54 = *(v38 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA38, &qword_22A57CB90);
      v55 = swift_allocObject();
      *(v55 + 16) = v49;
      v56 = v54;
      [v56 setObject:v55 forKey:v47];
      swift_unknownObjectRelease();
    }

    while (v36 != v44);
    v32 = v78;
    v57 = v79;
LABEL_38:
    v80 = v57;
    v1[23] = v57;
    v58 = [objc_opt_self() weakObjectsHashTable];
    v1[24] = v58;
    if (v36)
    {
      v59 = 0;
      v60 = v32 & 0xC000000000000001;
      v61 = v32 & 0xFFFFFFFFFFFFFF8;
      v62 = v1[6] + 32;
      do
      {
        if (v60)
        {
          v63 = MEMORY[0x22AAD13F0](v59, v1[6]);
          v64 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
LABEL_47:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v59 >= *(v61 + 16))
          {
            __break(1u);
            goto LABEL_55;
          }

          v63 = *(v62 + 8 * v59);
          swift_unknownObjectRetain();
          v64 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
            goto LABEL_47;
          }
        }

        [v58 addObject_];
        swift_unknownObjectRelease();
        ++v59;
      }

      while (v64 != v36);
    }

    v65 = v1[19];
    v66 = v1[14];
    v68 = v1[12];
    v67 = v1[13];
    v69 = v1[8];
    v85(v65, v1[21], v1[15]);
    v70 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
    (*(v67 + 16))(&v69[*(v70 + 20)], v66, v68);
    *v69 = v58;
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    swift_beginAccess();
    v59 = v58;
    sub_229891274(v69, v65);
    swift_endAccess();
    v36 = v80;
    if (v80 < 0 || (v80 & 0x4000000000000000) != 0)
    {
LABEL_55:
      if (!sub_22A4DE0EC())
      {
        goto LABEL_56;
      }

LABEL_51:
      v71 = swift_task_alloc();
      v1[25] = v71;
      *v71 = v1;
      v71[1] = sub_229695F3C;

      return sub_2296963BC(v36);
    }

    else
    {
      if (*(v80 + 16))
      {
        goto LABEL_51;
      }

LABEL_56:

      v72 = v1[21];
      v73 = v1[22];
      v74 = v1[15];
      (*(v1[13] + 8))(v1[14], v1[12]);
      v73(v72, v74);

      v75 = v1[1];

      return v75();
    }
  }

  return result;
}

uint64_t sub_229695F3C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_229696068, v1, 0);
}

uint64_t sub_229696068()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 120);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v2(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22969616C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_229693164(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_229696298(uint64_t a1, uint64_t a2)
{
  v4 = _s13PresenceStateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296962FC(uint64_t a1, uint64_t a2)
{
  v4 = _s13PresenceStateOMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_229696360(uint64_t a1)
{
  v2 = _s13PresenceStateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296963BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v2[7] = swift_task_alloc();
  v3 = _s13PresenceStateOMa(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EBC0, &qword_22A57CBA0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229696578, v1, 0);
}

uint64_t sub_229696578()
{
  v1 = 0;
  v2 = sub_229691098(*(v0 + 40));
  *(v0 + 152) = v2;
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 160) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    result = sub_22969CBB8();
    v11 = 0;
    *(v0 + 168) = result;
    v12 = *(result + 32);
    *(v0 + 248) = v12;
    v13 = 1 << v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(result + 64);
    while (v15)
    {
      v55 = v1;
      v19 = *(v0 + 168);
LABEL_26:
      v25 = *(v0 + 128);
      v24 = *(v0 + 136);
      v27 = *(v0 + 104);
      v26 = *(v0 + 112);
      v28 = *(v0 + 96);
      v53 = *(v0 + 72);
      v29 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v30 = v29 | (v11 << 6);
      (*(v26 + 16))(v25, *(v19 + 48) + *(v26 + 72) * v30, v27);
      sub_229696298(*(v19 + 56) + *(v53 + 72) * v30, v28);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      v32 = *(v31 + 48);
      (*(v26 + 32))(v24, v25, v27);
      sub_2296986F8(v28, v24 + v32);
      (*(*(v31 - 8) + 56))(v24, 0, 1, v31);
      v1 = v55;
LABEL_27:
      *(v0 + 176) = v15;
      *(v0 + 184) = v11;
      v33 = *(v0 + 144);
      sub_229698818(*(v0 + 136), v33);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
      {
        v47 = *(v0 + 48);

        swift_beginAccess();
        if (*(*(v47 + 232) + 16))
        {

          v48 = *(v0 + 8);

          return v48();
        }

        else
        {
          v52 = swift_task_alloc();
          *(v0 + 208) = v52;
          *v52 = v0;
          v52[1] = sub_2296972FC;

          return sub_22969DB2C();
        }
      }

      v35 = *(v0 + 144);
      v36 = *(v0 + 120);
      v37 = *(v0 + 88);
      v38 = *(v0 + 40);
      v39 = *(v34 + 48);
      (*(*(v0 + 112) + 32))(v36, v35, *(v0 + 104));
      sub_2296986F8(v35 + v39, v37);
      v40 = swift_task_alloc();
      *(v40 + 16) = v36;
      v41 = sub_22986A68C(sub_229698994, v40, v38);
      *(v0 + 192) = v1;

      if (v41)
      {
        v43 = *(v0 + 88);
        v42 = *(v0 + 96);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v44 - 8) + 56))(v42, 1, 2, v44);
        LOBYTE(v43) = sub_229698FEC(v43, v42);
        sub_229696360(v42);
        if ((v43 & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_0((*(v0 + 48) + 152), *(*(v0 + 48) + 176));
          v49 = swift_task_alloc();
          *(v0 + 200) = v49;
          *v49 = v0;
          v49[1] = sub_229696C80;
          v50 = *(v0 + 120);
          v51 = *(v0 + 88);

          return sub_2296A5608(v51, v50);
        }
      }

      v16 = *(v0 + 112);
      v17 = *(v0 + 120);
      v18 = *(v0 + 104);
      sub_229696360(*(v0 + 88));
      result = (*(v16 + 8))(v17, v18);
    }

    v20 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v20 <= (v11 + 1))
    {
      v21 = v11 + 1;
    }

    else
    {
      v21 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v45 = *(v0 + 136);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
        (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
        v15 = 0;
        v11 = v22;
        goto LABEL_27;
      }

      v19 = *(v0 + 168);
      v15 = *(v19 + 8 * v23 + 64);
      ++v11;
      if (v15)
      {
        v55 = v1;
        v11 = v23;
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  result = sub_22A4DE0EC();
  *(v0 + 160) = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (result < 1)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  *(v0 + 216) = 0;
  v4 = *(v0 + 152);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    v5 = *(v4 + 32);
    swift_unknownObjectRetain();
  }

  *(v0 + 224) = v5;
  v6 = *(v0 + 48);
  v7 = v6[17];
  v8 = v6[18];
  __swift_project_boxed_opaque_existential_0(v6 + 14, v7);
  v54 = (*(v8 + 24) + **(v8 + 24));
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_2296974E8;
  v10 = *(v0 + 56);

  return v54(v10, v5, v7, v8);
}

uint64_t sub_229696C80()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_229696D90, v1, 0);
}

uint64_t sub_229696D90()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_229696360(*(v0 + 88));
  result = (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 184);
  v45 = *(v0 + 192);
  v6 = *(v0 + 176);
  while (v6)
  {
    v10 = *(v0 + 168);
LABEL_13:
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v19 = *(v0 + 96);
    v44 = *(v0 + 72);
    v20 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = v20 | (v5 << 6);
    (*(v17 + 16))(v16, *(v10 + 48) + *(v17 + 72) * v21, v18);
    sub_229696298(*(v10 + 56) + *(v44 + 72) * v21, v19);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
    v23 = *(v22 + 48);
    (*(v17 + 32))(v15, v16, v18);
    sub_2296986F8(v19, v15 + v23);
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
LABEL_14:
    *(v0 + 176) = v6;
    *(v0 + 184) = v5;
    v24 = *(v0 + 144);
    sub_229698818(*(v0 + 136), v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      v38 = *(v0 + 48);

      swift_beginAccess();
      if (*(*(v38 + 232) + 16))
      {

        v39 = *(v0 + 8);

        return v39();
      }

      else
      {
        v43 = swift_task_alloc();
        *(v0 + 208) = v43;
        *v43 = v0;
        v43[1] = sub_2296972FC;

        return sub_22969DB2C();
      }
    }

    v26 = *(v0 + 144);
    v27 = *(v0 + 120);
    v28 = *(v0 + 88);
    v29 = *(v0 + 40);
    v30 = *(v25 + 48);
    (*(*(v0 + 112) + 32))(v27, v26, *(v0 + 104));
    sub_2296986F8(v26 + v30, v28);
    v31 = swift_task_alloc();
    *(v31 + 16) = v27;
    v32 = sub_22986A68C(sub_229698994, v31, v29);
    *(v0 + 192) = v45;

    if (v32)
    {
      v34 = *(v0 + 88);
      v33 = *(v0 + 96);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      (*(*(v35 - 8) + 56))(v33, 1, 2, v35);
      LOBYTE(v34) = sub_229698FEC(v34, v33);
      sub_229696360(v33);
      if ((v34 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_0((*(v0 + 48) + 152), *(*(v0 + 48) + 176));
        v40 = swift_task_alloc();
        *(v0 + 200) = v40;
        *v40 = v0;
        v40[1] = sub_229696C80;
        v41 = *(v0 + 120);
        v42 = *(v0 + 88);

        return sub_2296A5608(v42, v41);
      }
    }

    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    sub_229696360(*(v0 + 88));
    result = (*(v7 + 8))(v8, v9);
  }

  v11 = ((1 << *(v0 + 248)) + 63) >> 6;
  if (v11 <= (v5 + 1))
  {
    v12 = v5 + 1;
  }

  else
  {
    v12 = ((1 << *(v0 + 248)) + 63) >> 6;
  }

  v13 = v12 - 1;
  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v36 = *(v0 + 136);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
      v6 = 0;
      v5 = v13;
      goto LABEL_14;
    }

    v10 = *(v0 + 168);
    v6 = *(v10 + 8 * v14 + 64);
    ++v5;
    if (v6)
    {
      v5 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296972FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2296974E8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_229697DBC;
  }

  else
  {
    v4 = sub_229697620;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void *sub_229697620()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 48);
  (*(*(v0 + 72) + 56))(v4, 0, 1, *(v0 + 64));
  sub_2296986F8(v4, v3);
  v6 = *(v5 + 200);
  sub_229696298(v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA48, &unk_22A57CBB0);
  v7 = swift_allocObject();
  sub_2296986F8(v2, v7 + *(*v7 + 88));
  v8 = v6;
  [v8 setObject:v7 forKey:v1];

  swift_unknownObjectRelease();
  sub_229696360(v3);
  v9 = *(v0 + 216) + 1;
  if (v9 == *(v0 + 160))
  {
    v10 = *(v0 + 240);

    result = sub_22969CBB8();
    v12 = 0;
    *(v0 + 168) = result;
    v13 = *(result + 32);
    *(v0 + 248) = v13;
    v14 = 1 << v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & result[8];
    while (v16)
    {
      v62 = v10;
      v20 = *(v0 + 168);
LABEL_17:
      v26 = *(v0 + 128);
      v25 = *(v0 + 136);
      v28 = *(v0 + 104);
      v27 = *(v0 + 112);
      v29 = *(v0 + 96);
      v61 = *(v0 + 72);
      v30 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v31 = v30 | (v12 << 6);
      (*(v27 + 16))(v26, *(v20 + 48) + *(v27 + 72) * v31, v28);
      sub_229696298(*(v20 + 56) + *(v61 + 72) * v31, v29);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      v33 = *(v32 + 48);
      (*(v27 + 32))(v25, v26, v28);
      sub_2296986F8(v29, v25 + v33);
      (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
      v10 = v62;
LABEL_18:
      *(v0 + 176) = v16;
      *(v0 + 184) = v12;
      v34 = *(v0 + 144);
      sub_229698818(*(v0 + 136), v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        v50 = *(v0 + 48);

        swift_beginAccess();
        if (*(*(v50 + 232) + 16))
        {

          v51 = *(v0 + 8);

          return v51();
        }

        else
        {
          v60 = swift_task_alloc();
          *(v0 + 208) = v60;
          *v60 = v0;
          v60[1] = sub_2296972FC;

          return sub_22969DB2C();
        }
      }

      v36 = *(v0 + 144);
      v37 = *(v0 + 120);
      v38 = *(v0 + 88);
      v39 = *(v0 + 40);
      v40 = *(v35 + 48);
      (*(*(v0 + 112) + 32))(v37, v36, *(v0 + 104));
      sub_2296986F8(v36 + v40, v38);
      v41 = swift_task_alloc();
      *(v41 + 16) = v37;
      v42 = sub_22986A68C(sub_229698994, v41, v39);
      *(v0 + 192) = v10;

      if (v42)
      {
        v44 = *(v0 + 88);
        v43 = *(v0 + 96);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v45 - 8) + 56))(v43, 1, 2, v45);
        LOBYTE(v44) = sub_229698FEC(v44, v43);
        sub_229696360(v43);
        if ((v44 & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_0((*(v0 + 48) + 152), *(*(v0 + 48) + 176));
          v57 = swift_task_alloc();
          *(v0 + 200) = v57;
          *v57 = v0;
          v57[1] = sub_229696C80;
          v58 = *(v0 + 120);
          v59 = *(v0 + 88);

          return sub_2296A5608(v59, v58);
        }
      }

      v17 = *(v0 + 112);
      v18 = *(v0 + 120);
      v19 = *(v0 + 104);
      sub_229696360(*(v0 + 88));
      result = (*(v17 + 8))(v18, v19);
    }

    v21 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v21 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v46 = *(v0 + 136);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
        (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
        v16 = 0;
        v12 = v23;
        goto LABEL_18;
      }

      v20 = *(v0 + 168);
      v16 = *(v20 + 8 * v24 + 64);
      ++v12;
      if (v16)
      {
        v62 = v10;
        v12 = v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    *(v0 + 216) = v9;
    v48 = *(v0 + 152);
    if ((v48 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v49 = *(v48 + 8 * v9 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 224) = v49;
    v52 = *(v0 + 48);
    v53 = v52[17];
    v54 = v52[18];
    __swift_project_boxed_opaque_existential_0(v52 + 14, v53);
    v63 = (*(v54 + 24) + **(v54 + 24));
    v55 = swift_task_alloc();
    *(v0 + 232) = v55;
    *v55 = v0;
    v55[1] = sub_2296974E8;
    v56 = *(v0 + 56);

    return v63(v56, v49, v53, v54);
  }

  return result;
}

uint64_t sub_229697DBC()
{
  v69 = v0;
  v1 = *(v0 + 56);
  (*(*(v0 + 72) + 56))(v1, 1, 1, *(v0 + 64));
  sub_22953EAE4(v1, &qword_27D87EBB0, &qword_22A57C720);
  if (qword_27D87B998 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v2 = sub_22A4DD07C();
    __swift_project_value_buffer(v2, qword_27D8AB7A8);
    swift_unknownObjectRetain();
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCDC();
    swift_unknownObjectRelease();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 224);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v68[0] = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_2295A3E30(0xD00000000000001CLL, 0x800000022A5902C0, v68);
      *(v7 + 12) = 2080;
      v9 = [v6 shortDescription];
      v10 = sub_22A4DD5EC();
      v12 = v11;

      v13 = sub_2295A3E30(v10, v12, v68);

      *(v7 + 14) = v13;
      _os_log_impl(&dword_229538000, v3, v4, "%s - accessory cannot be used to monitor presence: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v8, -1, -1);
      MEMORY[0x22AAD4E50](v7, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v14 = *(v0 + 216) + 1;
    if (v14 != *(v0 + 160))
    {
      break;
    }

    v15 = sub_22969CBB8();
    v16 = 0;
    *(v0 + 168) = v15;
    v17 = *(v15 + 32);
    *(v0 + 248) = v17;
    v18 = 1 << v17;
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15[8];
    while (v20)
    {
      v24 = *(v0 + 168);
LABEL_20:
      v30 = *(v0 + 128);
      v29 = *(v0 + 136);
      v32 = *(v0 + 104);
      v31 = *(v0 + 112);
      v33 = *(v0 + 96);
      v66 = *(v0 + 72);
      v34 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v35 = v34 | (v16 << 6);
      (*(v31 + 16))(v30, *(v24 + 48) + *(v31 + 72) * v35, v32);
      sub_229696298(*(v24 + 56) + *(v66 + 72) * v35, v33);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      v37 = *(v36 + 48);
      (*(v31 + 32))(v29, v30, v32);
      sub_2296986F8(v33, v29 + v37);
      (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
LABEL_21:
      *(v0 + 176) = v20;
      *(v0 + 184) = v16;
      v38 = *(v0 + 144);
      sub_229698818(*(v0 + 136), v38);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
      {
        v54 = *(v0 + 48);

        swift_beginAccess();
        if (*(*(v54 + 232) + 16))
        {

          v55 = *(v0 + 8);

          return v55();
        }

        else
        {
          v65 = swift_task_alloc();
          *(v0 + 208) = v65;
          *v65 = v0;
          v65[1] = sub_2296972FC;

          return sub_22969DB2C();
        }
      }

      v40 = *(v0 + 144);
      v41 = *(v0 + 120);
      v42 = *(v0 + 88);
      v43 = *(v0 + 40);
      v44 = *(v39 + 48);
      (*(*(v0 + 112) + 32))(v41, v40, *(v0 + 104));
      sub_2296986F8(v40 + v44, v42);
      v45 = swift_task_alloc();
      *(v45 + 16) = v41;
      v46 = sub_22986A68C(sub_229698994, v45, v43);
      *(v0 + 192) = 0;

      if (v46)
      {
        v48 = *(v0 + 88);
        v47 = *(v0 + 96);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v49 - 8) + 56))(v47, 1, 2, v49);
        LOBYTE(v48) = sub_229698FEC(v48, v47);
        sub_229696360(v47);
        if ((v48 & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_0((*(v0 + 48) + 152), *(*(v0 + 48) + 176));
          v62 = swift_task_alloc();
          *(v0 + 200) = v62;
          *v62 = v0;
          v62[1] = sub_229696C80;
          v63 = *(v0 + 120);
          v64 = *(v0 + 88);

          return sub_2296A5608(v64, v63);
        }
      }

      v21 = *(v0 + 112);
      v22 = *(v0 + 120);
      v23 = *(v0 + 104);
      sub_229696360(*(v0 + 88));
      (*(v21 + 8))(v22, v23);
    }

    v25 = ((1 << *(v0 + 248)) + 63) >> 6;
    if (v25 <= (v16 + 1))
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = ((1 << *(v0 + 248)) + 63) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v28 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        v50 = *(v0 + 136);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
        (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
        v20 = 0;
        v16 = v27;
        goto LABEL_21;
      }

      v24 = *(v0 + 168);
      v20 = *(v24 + 8 * v28 + 64);
      ++v16;
      if (v20)
      {
        v16 = v28;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_43:
    swift_once();
  }

  *(v0 + 216) = v14;
  v52 = *(v0 + 152);
  if ((v52 & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x22AAD13F0]();
  }

  else
  {
    v53 = *(v52 + 8 * v14 + 32);
    swift_unknownObjectRetain();
  }

  *(v0 + 224) = v53;
  v57 = *(v0 + 48);
  v58 = v57[17];
  v59 = v57[18];
  __swift_project_boxed_opaque_existential_0(v57 + 14, v58);
  v67 = (*(v59 + 24) + **(v59 + 24));
  v60 = swift_task_alloc();
  *(v0 + 232) = v60;
  *v60 = v0;
  v60[1] = sub_2296974E8;
  v61 = *(v0 + 56);

  return v67(v61, v53, v58, v59);
}

uint64_t sub_229698668()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229569B30;

  return sub_2296944D4(v0);
}

uint64_t sub_2296986F8(uint64_t a1, uint64_t a2)
{
  v4 = _s13PresenceStateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22969875C(uint64_t a1)
{
  v3 = *(sub_22A4DB7DC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_22969ABEC(a1, v4, v5);
}

uint64_t sub_2296987D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229698818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EBC0, &qword_22A57CBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229698888(id *a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

unint64_t sub_2296989B4()
{
  result = qword_27D87EA60;
  if (!qword_27D87EA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87EA58, &qword_22A57CBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87EA60);
  }

  return result;
}

uint64_t _s13PresenceStateOMa(uint64_t a1)
{
  result = qword_27D87EA70;
  if (!qword_27D87EA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229698A8C(uint64_t a1)
{
  sub_229698AE4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_229698AE4()
{
  if (!qword_27D87EA80[0])
  {
    v0 = sub_22A4DB74C();
    if (!v1)
    {
      atomic_store(v0, qword_27D87EA80);
    }
  }
}

uint64_t sub_229698B2C(uint64_t a1)
{
  v2 = v1;
  v4 = _s13PresenceStateOMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = *(v8 + 56);
  sub_229696298(v2, &v20 - v9);
  sub_229696298(a1, &v10[v11]);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 2, v12);
  if (v14)
  {
    if (v14 == 1)
    {
      if (v13(&v10[v11], 2, v12) == 1)
      {
        goto LABEL_10;
      }

LABEL_8:
      sub_2296992C0(v10);
      return 0;
    }

    if (v13(&v10[v11], 2, v12) != 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_229696298(v10, v6);
    v15 = v13(&v10[v11], 2, v12);
    v16 = sub_22A4DB74C();
    v17 = *(*(v16 - 8) + 8);
    if (v15)
    {
      v17(v6, v16);
      goto LABEL_8;
    }

    v19 = v16;
    (v17)(&v10[v11]);
    v17(v6, v19);
  }

LABEL_10:
  sub_229696360(v10);
  return 1;
}

unint64_t sub_229698D5C()
{
  v1 = v0;
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s13PresenceStateOMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229696298(v1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    if (v10 == 1)
    {
      return 0x6E776F6E6B6E75;
    }

    else
    {
      return 0x646569707563636FLL;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_22A4DE1FC();

    v14 = 0xD000000000000016;
    v15 = 0x800000022A590330;
    sub_229698F94();
    v12 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v12);

    MEMORY[0x22AAD08C0](41, 0xE100000000000000);
    v13 = v14;
    (*(v3 + 8))(v5, v2);
    return v13;
  }
}

unint64_t sub_229698F94()
{
  result = qword_281403890;
  if (!qword_281403890)
  {
    sub_22A4DB74C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403890);
  }

  return result;
}

uint64_t sub_229698FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s13PresenceStateOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_229696298(a1, &v22 - v13);
  sub_229696298(a2, &v14[v15]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 2, v16);
  if (!v18)
  {
    sub_229696298(v14, v10);
    if (!v17(&v14[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = sub_22A4DB6FC();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_229696360(v14);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v14[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v14[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_2296992C0(v14);
    v19 = 0;
    return v19 & 1;
  }

  sub_229696360(v14);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_2296992C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA10, &qword_22A57CB78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_229699328()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB7A8);
  __swift_project_value_buffer(v0, qword_27D8AB7A8);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296993A0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_22969944C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2296994AC()
{
  sub_22969944C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_229699500(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s28DefaultRoomPresencePublisherC8ObserverVMa(uint64_t a1)
{
  result = qword_27D87EB08;
  if (!qword_27D87EB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229699620(uint64_t a1)
{
  sub_2296996A4();
  if (v1 <= 0x3F)
  {
    sub_2296996F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2296996A4()
{
  result = qword_27D87EB18;
  if (!qword_27D87EB18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87EB18);
  }

  return result;
}

void sub_2296996F0(uint64_t a1)
{
  if (!qword_27D87EB20)
  {
    _s13PresenceStateOMa(255);
    v1 = sub_22A4DDA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D87EB20);
    }
  }
}

uint64_t sub_229699748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  updated = _s23AccessoryPresenceUpdateVMa(0);
  v4[19] = updated;
  v4[20] = *(updated - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E830, &qword_22A57CDF0);
  v4[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E808, &qword_22A57C600);
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E838, &unk_22A57C640);
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229699910, 0, 0);
}

uint64_t sub_229699910()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_22957F1C4(Strong + 112, v0 + 56);

    sub_22967E3B8((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
    v8 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_229699AE0;
    v5 = *(v0 + 200);

    return v8(v5, v2, v3);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_229699AE0()
{

  return MEMORY[0x2822009F8](sub_229699BDC, 0, 0);
}

uint64_t sub_229699BDC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_22A4DDA3C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_229699CD0;
  v5 = v0[26];
  v6 = v0[22];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_229699CD0()
{

  return MEMORY[0x2822009F8](sub_229699DCC, 0, 0);
}

uint64_t sub_229699DCC()
{
  v1 = v0[22];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v6 = v0[1];

    return v6();
  }

  sub_2296A4E9C(v1, v0[21], _s23AccessoryPresenceUpdateVMa);
  Strong = swift_weakLoadStrong();
  v0[31] = Strong;
  if (!Strong)
  {
LABEL_6:
    v4 = v0[27];
    v3 = v0[28];
    v5 = v0[26];
    sub_2296A4F04(v0[21], _s23AccessoryPresenceUpdateVMa);
    (*(v4 + 8))(v3, v5);
    goto LABEL_7;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_6;
  }

  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_229699F94;
  v9 = v0[21];

  return sub_22969A160(v9);
}

uint64_t sub_229699F94()
{

  return MEMORY[0x2822009F8](sub_22969A090, 0, 0);
}

uint64_t sub_22969A090()
{
  v1 = v0[21];

  sub_2296A4F04(v1, _s23AccessoryPresenceUpdateVMa);
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_229699CD0;
  v3 = v0[26];
  v4 = v0[22];

  return MEMORY[0x2822003E8](v4, 0, 0, v3);
}

uint64_t sub_22969A160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  _s13PresenceStateOMa(0);
  v2[4] = swift_task_alloc();
  v2[5] = _s23AccessoryPresenceUpdateVMa(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969A220, v1, 0);
}

uint64_t sub_22969A220()
{
  v26 = v0;
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB7A8);
  sub_2296A4F64(v2, v1, _s23AccessoryPresenceUpdateVMa);
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2295A3E30(0xD000000000000017, 0x800000022A590550, &v25);
    *(v8 + 12) = 2080;
    v10 = sub_22967B364();
    v12 = v11;
    sub_2296A4F04(v7, _s23AccessoryPresenceUpdateVMa);
    v13 = sub_2295A3E30(v10, v12, &v25);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_229538000, v4, v5, "%s - %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  else
  {

    sub_2296A4F04(v7, _s23AccessoryPresenceUpdateVMa);
  }

  v15 = v0[4];
  v14 = v0[5];
  v17 = v0[2];
  v16 = v0[3];
  v18 = *v17;
  v19 = [*v17 lpRoom];
  v0[7] = v19;
  v20 = *(v16 + 200);
  sub_2296A4F64(v17 + *(v14 + 20), v15, _s13PresenceStateOMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA48, &unk_22A57CBB0);
  v21 = swift_allocObject();
  sub_2296A4E9C(v15, v21 + *(*v21 + 88), _s13PresenceStateOMa);
  v22 = v20;
  [v22 setObject:v21 forKey:v18];

  v23 = swift_task_alloc();
  v0[8] = v23;
  *v23 = v0;
  v23[1] = sub_22969A560;

  return sub_22969E378(v19);
}

uint64_t sub_22969A560(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_22969A678, v2, 0);
}

uint64_t sub_22969A678()
{
  if (*(v0 + 80) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    *v1 = v0;
    v1[1] = sub_22969A768;
    v2 = *(v0 + 56);

    return sub_22969E90C(v2);
  }

  else
  {
    swift_unknownObjectRelease();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_22969A768()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_22969A878, v1, 0);
}

uint64_t sub_22969A878()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22969A90C()
{
  v1 = *(v0 + 40);
  if (*(v1 + 192))
  {

    sub_22A4DDA7C();

    v1 = *(v0 + 40);
  }

  swift_beginAccess();
  v2 = *(*(v1 + 232) + 16);
  if (v2)
  {

    v3 = 32;
    do
    {

      sub_22A4DDA7C();

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v4 = *(v0 + 40);
  v5 = v4[17];
  v6 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v5);
  v9 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_22969AAF8;

  return v9(v5, v6);
}

uint64_t sub_22969AAF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22969ABEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_22957F6B0(0, 0, v10, &unk_22A57CDC8, v13);
}

uint64_t sub_22969ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_22969ADF0, 0, 0);
}

uint64_t sub_22969ADF0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_22969AEEC;
    v3 = *(v0 + 56);

    return sub_22969B02C(v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22969AEEC()
{

  return MEMORY[0x2822009F8](sub_22969B004, 0, 0);
}

uint64_t sub_22969B02C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_22A4DB45C();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA30, &unk_22A57CD80);
  v2[29] = swift_task_alloc();
  v5 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969B20C, v1, 0);
}

uint64_t sub_22969B20C()
{
  v108 = v0;
  v1 = v0;
  v2 = v0[31];
  v4 = v1[29];
  v3 = v1[30];
  v5 = v1[17];
  swift_beginAccess();
  sub_22969D8C8(v5, v4);
  swift_endAccess();
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_22953EAE4(v1[29], &qword_27D87EA30, &unk_22A57CD80);
LABEL_113:

    v95 = v1[1];

    return v95();
  }

  sub_2296A4E9C(v1[29], v1[32], _s28DefaultRoomPresencePublisherC8ObserverVMa);
  if (qword_27D87B998 != -1)
  {
LABEL_110:
    swift_once();
  }

  v6 = v1[28];
  v7 = v1[22];
  v8 = v1[23];
  v9 = v1[17];
  v10 = sub_22A4DD07C();
  __swift_project_value_buffer(v10, qword_27D8AB7A8);
  v11 = *(v8 + 16);
  v1[33] = v11;
  v1[34] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v6, v9, v7);
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v1[28];
  v16 = v1;
  v17 = v1[23];
  v101 = v16;
  v18 = v16[22];
  if (v14)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v107[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_2295A3E30(0xD000000000000015, 0x800000022A590500, v107);
    *(v19 + 12) = 2080;
    sub_2296A4D2C(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_22A4DE5CC();
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v15, v18);
    v25 = sub_2295A3E30(v21, v23, v107);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_229538000, v12, v13, "%s - observer: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);
  }

  else
  {

    v24 = *(v17 + 8);
    v24(v15, v18);
  }

  v1 = v101;
  v101[35] = v24;
  v26 = [*v101[32] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
  v27 = sub_22A4DD83C();
  v101[36] = v27;

  if (v27 >> 62)
  {
    v93 = sub_22A4DE0EC();
    v101[37] = v93;
    if (v93)
    {
      goto LABEL_9;
    }

LABEL_112:
    v94 = v1[32];

    sub_2296A4F04(v94, _s28DefaultRoomPresencePublisherC8ObserverVMa);
    goto LABEL_113;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v101[37] = v28;
  if (!v28)
  {
    goto LABEL_112;
  }

LABEL_9:
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    v31 = v1[36];
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x22AAD13F0](v29);
    }

    else
    {
      if (v29 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_107;
      }

      v32 = *(v31 + 8 * v29 + 32);
      swift_unknownObjectRetain();
    }

    v1[38] = v32;
    v1[39] = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_103;
    }

    v33 = *(v1[18] + 216);
    swift_unknownObjectRetain();
    v34 = [v33 objectForKey_];
    if (v34)
    {
      break;
    }

    swift_unknownObjectRelease_n();
LABEL_11:
    v29 = v1[39];
    if (v29 == v1[37])
    {
      goto LABEL_112;
    }
  }

  v100 = v32;
  v35 = v1[17];
  v36 = v34[2];

  v37 = swift_task_alloc();
  *(v37 + 16) = v35;
  v38 = sub_22959C06C(sub_2296A4E6C, v37, v36);
  v1[40] = 0;
  if (v39)
  {
    v40 = v36[2];
    v41 = v40;
  }

  else
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_108;
    }

    v103 = v38;
    while (1)
    {
      v1 = v36 + 2;
      v42 = v36[2];
      if (v40 == v42)
      {
        break;
      }

      if (v40 >= v42)
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v43 = v101[35];
      v44 = v101[27];
      v46 = v101[22];
      v45 = v101[23];
      v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v105 = v36;
      v48 = v36 + v47;
      v49 = *(v45 + 72);
      v102 = v49 * v40;
      (v101[33])(v44, &v48[v49 * v40], v46);
      v50 = sub_22A4DB78C();
      v43(v44, v46);
      if (v50)
      {
        v30 = MEMORY[0x277D84F90];
        v36 = v105;
        ++v40;
      }

      else
      {
        v51 = v103;
        v30 = MEMORY[0x277D84F90];
        if (v40 == v103)
        {
          v36 = v105;
        }

        else
        {
          if (v103 < 0)
          {
            goto LABEL_99;
          }

          v52 = *v1;
          if (v103 >= *v1)
          {
            goto LABEL_100;
          }

          v53 = v49 * v103;
          (v101[33])(v101[26], &v48[v49 * v103], v101[22]);
          if (v40 >= v52)
          {
            goto LABEL_101;
          }

          v1 = (v49 * v40);
          (v101[33])(v101[25], &v48[v102], v101[22]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_2295AFEA0(v105);
          }

          v54 = *(v101[23] + 40);
          v54(v105 + v47 + v53, v101[25], v101[22]);
          if (v40 >= v105[2])
          {
            goto LABEL_102;
          }

          v54(v105 + v47 + v102, v101[26], v101[22]);
          v51 = v103;
          v36 = v105;
        }

        v103 = v51 + 1;
        ++v40;
      }
    }

    v41 = v103;
    if (v40 < v103)
    {
      goto LABEL_104;
    }

    v1 = v101;
    if (v103 < 0)
    {
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
      goto LABEL_110;
    }
  }

  v55 = v41;
  v56 = v41 - v40;
  v57 = v40 + v56;
  if (__OFADD__(v40, v56))
  {
    goto LABEL_106;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[13] = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v57 > v36[3] >> 1)
  {
    if (v40 <= v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = v40;
    }

    v36 = sub_22958B1F0(isUniquelyReferenced_nonNull_native, v59, 1, v36);
    v1[13] = v36;
  }

  v60 = v1[18];
  sub_2296A4FE4(v55, v40, 0, MEMORY[0x277CC95F0]);

  v61 = *(v60 + 216);
  if (v36[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA38, &qword_22A57CB90);
    v62 = swift_allocObject();
    *(v62 + 16) = v36;
    v63 = v61;
    [v63 setObject:v62 forKey:v100];
    swift_unknownObjectRelease_n();

    goto LABEL_11;
  }

  v64 = v1[18];
  v65 = v61;
  [v65 removeObjectForKey_];
  swift_unknownObjectRelease();

  v66 = [*(v64 + 200) keyEnumerator];
  v1[14] = v30;
  sub_22A4DDC4C();
  sub_2296A4D2C(&qword_27D87EB30, 255, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22A4DDFBC();
  if (v1[5])
  {
    v67 = v30;
    do
    {
      while (1)
      {
        sub_229543C58((v1 + 2), (v1 + 6));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
        if (swift_dynamicCast())
        {
          if (v1[16])
          {
            break;
          }
        }

        sub_22A4DDFBC();
        if (!v1[5])
        {
          goto LABEL_57;
        }
      }

      MEMORY[0x22AAD09E0]();
      if (*((v1[14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      sub_22A4DD87C();
      v67 = v1[14];
      sub_22A4DDFBC();
      v30 = MEMORY[0x277D84F90];
    }

    while (v1[5]);
  }

  else
  {
    v67 = v30;
  }

LABEL_57:
  v69 = v1[20];
  v68 = v1[21];
  v70 = v1[19];

  (*(v69 + 8))(v68, v70);
  v1[15] = v30;
  if (v67 >> 62)
  {
    v71 = sub_22A4DE0EC();
    if (v71)
    {
LABEL_59:
      v72 = 0;
      v98 = v67 & 0xFFFFFFFFFFFFFF8;
      v99 = v67 & 0xC000000000000001;
      v96 = v71;
      v97 = v67;
      do
      {
        if (v99)
        {
          v73 = MEMORY[0x22AAD13F0](v72, v67);
          v74 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v72 >= *(v98 + 16))
          {
            goto LABEL_98;
          }

          v73 = *(v67 + 8 * v72 + 32);
          swift_unknownObjectRetain();
          v74 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_97;
          }
        }

        v104 = v74;
        v75 = v1[35];
        v76 = v1[27];
        v77 = v1[24];
        v78 = v1[22];
        v79 = [objc_msgSend(v73 lpRoom)];
        swift_unknownObjectRelease();
        sub_22A4DB79C();

        v80 = [v100 uuid];
        sub_22A4DB79C();

        LOBYTE(v80) = sub_22A4DB78C();
        v75(v77, v78);
        v75(v76, v78);
        if (v80)
        {
          sub_22A4DE27C();
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v67 = v97;
        ++v72;
      }

      while (v104 != v96);
    }
  }

  else
  {
    v71 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v71)
    {
      goto LABEL_59;
    }
  }

  v81 = v1[15];
  v1[41] = v81;
  v82 = v81 < 0 || (v81 & 0x4000000000000000) != 0;
  if (v82)
  {
    v83 = sub_22A4DE0EC();
  }

  else
  {
    v83 = *(v81 + 16);
  }

  v30 = MEMORY[0x277D84F90];
  if (v83)
  {
    if (v83 < 1)
    {
      goto LABEL_109;
    }

    for (i = 0; i != v83; ++i)
    {
      if ((v81 & 0xC000000000000001) != 0)
      {
        v85 = MEMORY[0x22AAD13F0](i, v81);
      }

      else
      {
        v85 = *(v81 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [*(v1[18] + 200) removeObjectForKey_];
      swift_unknownObjectRelease();
    }
  }

  if (v82)
  {
    result = sub_22A4DE0EC();
  }

  else
  {
    result = *(v81 + 16);
  }

  v1[42] = result;
  if (!result)
  {

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1[43] = 0;
    v87 = v1[41];
    if ((v87 & 0xC000000000000001) != 0)
    {
      v88 = MEMORY[0x22AAD13F0](0);
    }

    else
    {
      v88 = *(v87 + 32);
      swift_unknownObjectRetain();
    }

    v1[44] = v88;
    v89 = v1[18];
    v90 = v89[17];
    v91 = v89[18];
    __swift_project_boxed_opaque_existential_0(v89 + 14, v90);
    v106 = (*(v91 + 32) + **(v91 + 32));
    v92 = swift_task_alloc();
    v1[45] = v92;
    *v92 = v1;
    v92[1] = sub_22969BFD0;

    return v106(v88, v90, v91);
  }

  return result;
}

uint64_t sub_22969BFD0()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_22969C0E0, v1, 0);
}

void sub_22969C0E0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {

    swift_unknownObjectRelease();
    v3 = *(v0 + 312);
    if (v3 == *(v0 + 296))
    {
LABEL_3:
      v4 = *(v0 + 256);

      sub_2296A4F04(v4, _s28DefaultRoomPresencePublisherC8ObserverVMa);

      v5 = *(v0 + 8);

      v5();
    }

    else
    {
      v9 = *(v0 + 320);
      v10 = &selRef_notificationTrigger;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        v12 = *(v0 + 288);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x22AAD13F0](v3);
          v14 = v13;
        }

        else
        {
          if (v3 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            goto LABEL_111;
          }

          v14 = *(v12 + 8 * v3 + 32);
          v13 = swift_unknownObjectRetain();
        }

        *(v0 + 304) = v14;
        *(v0 + 312) = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v15 = *(*(v0 + 144) + 216);
        swift_unknownObjectRetain();
        v16 = [v15 v10[336]];
        if (v16)
        {
          v71 = v14;
          v17 = *(v0 + 136);
          v18 = v16[2];

          v19 = swift_task_alloc();
          *(v19 + 16) = v17;
          v20 = sub_22959C06C(sub_2296A4E6C, v19, v18);
          v67 = v9;
          *(v0 + 320) = v9;
          if (v21)
          {
            v22 = v18[2];
            v23 = v22;
          }

          else
          {
            v23 = v20;
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_109;
            }

            while (1)
            {
              v25 = v18 + 2;
              v24 = v18[2];
              if (v22 == v24)
              {
                break;
              }

              if (v22 >= v24)
              {
                goto LABEL_99;
              }

              v75 = v23;
              v77 = v18;
              v26 = *(v0 + 280);
              v27 = *(v0 + 216);
              v29 = *(v0 + 176);
              v28 = *(v0 + 184);
              v30 = v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
              v31 = *(v28 + 72);
              v72 = (*(v28 + 80) + 32) & ~*(v28 + 80);
              v74 = v31 * v22;
              (*(v0 + 264))(v27, &v30[v31 * v22], v29);
              v32 = sub_22A4DB78C();
              v26(v27, v29);
              if (v32)
              {
                v11 = MEMORY[0x277D84F90];
                v23 = v75;
                v18 = v77;
                ++v22;
              }

              else
              {
                v11 = MEMORY[0x277D84F90];
                if (v22 == v75)
                {
                  v18 = v77;
                }

                else
                {
                  if ((v75 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_102;
                  }

                  v33 = *v25;
                  if (v75 >= v33)
                  {
                    goto LABEL_103;
                  }

                  (*(v0 + 264))(*(v0 + 208), &v30[v31 * v75], *(v0 + 176));
                  if (v22 >= v33)
                  {
                    goto LABEL_104;
                  }

                  (*(v0 + 264))(*(v0 + 200), &v30[v74], *(v0 + 176));
                  v18 = v77;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v18 = sub_2295AFEA0(v77);
                  }

                  v34 = *(*(v0 + 184) + 40);
                  v34(v18 + v72 + v31 * v75, *(v0 + 200), *(v0 + 176));
                  if (v22 >= v18[2])
                  {
                    goto LABEL_105;
                  }

                  v34(v18 + v72 + v74, *(v0 + 208), *(v0 + 176));
                }

                v23 = v75 + 1;
                ++v22;
              }
            }

            if (v22 < v23)
            {
              goto LABEL_106;
            }

            if (v23 < 0)
            {
              goto LABEL_107;
            }
          }

          if (__OFADD__(v22, v23 - v22))
          {
            goto LABEL_108;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 104) = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v23 > v18[3] >> 1)
          {
            if (v22 <= v23)
            {
              v36 = v23;
            }

            else
            {
              v36 = v22;
            }

            v18 = sub_22958B1F0(isUniquelyReferenced_nonNull_native, v36, 1, v18);
            *(v0 + 104) = v18;
          }

          v37 = *(v0 + 144);
          sub_2296A4FE4(v23, v22, 0, MEMORY[0x277CC95F0]);

          v38 = *(v37 + 216);
          if (v18[2])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA38, &qword_22A57CB90);
            v39 = swift_allocObject();
            *(v39 + 16) = v18;
            v40 = v38;
            [v40 setObject:v39 forKey:v71];
            swift_unknownObjectRelease_n();

            v10 = &selRef_notificationTrigger;
            v9 = v67;
          }

          else
          {
            v41 = *(v0 + 144);
            v42 = v38;
            [v42 removeObjectForKey_];
            swift_unknownObjectRelease();

            v43 = [*(v41 + 200) keyEnumerator];
            *(v0 + 112) = v11;
            sub_22A4DDC4C();
            sub_2296A4D2C(&qword_27D87EB30, 255, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
            sub_22A4DDFBC();
            if (*(v0 + 40))
            {
              v44 = v11;
              do
              {
                while (1)
                {
                  sub_229543C58(v0 + 16, v0 + 48);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
                  if (swift_dynamicCast())
                  {
                    if (*(v0 + 128))
                    {
                      break;
                    }
                  }

                  sub_22A4DDFBC();
                  if (!*(v0 + 40))
                  {
                    goto LABEL_59;
                  }
                }

                MEMORY[0x22AAD09E0]();
                if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_22A4DD85C();
                }

                sub_22A4DD87C();
                v44 = *(v0 + 112);
                sub_22A4DDFBC();
                v11 = MEMORY[0x277D84F90];
              }

              while (*(v0 + 40));
            }

            else
            {
              v44 = v11;
            }

LABEL_59:
            v46 = *(v0 + 160);
            v45 = *(v0 + 168);
            v47 = *(v0 + 152);

            (*(v46 + 8))(v45, v47);
            *(v0 + 120) = v11;
            if (v44 >> 62)
            {
              v48 = sub_22A4DE0EC();
              if (v48)
              {
LABEL_61:
                v49 = 0;
                v73 = v44 & 0xC000000000000001;
                v69 = v44;
                v70 = v44 & 0xFFFFFFFFFFFFFF8;
                v68 = v48;
                do
                {
                  if (v73)
                  {
                    v50 = MEMORY[0x22AAD13F0](v49, v44);
                    v51 = v49 + 1;
                    if (__OFADD__(v49, 1))
                    {
                      goto LABEL_100;
                    }
                  }

                  else
                  {
                    if (v49 >= *(v70 + 16))
                    {
                      goto LABEL_101;
                    }

                    v50 = *(v44 + 8 * v49 + 32);
                    swift_unknownObjectRetain();
                    v51 = v49 + 1;
                    if (__OFADD__(v49, 1))
                    {
                      goto LABEL_100;
                    }
                  }

                  v76 = v51;
                  v52 = *(v0 + 280);
                  v53 = *(v0 + 216);
                  v54 = *(v0 + 192);
                  v55 = *(v0 + 176);
                  v56 = [objc_msgSend(v50 lpRoom)];
                  swift_unknownObjectRelease();
                  sub_22A4DB79C();

                  v57 = [v71 uuid];
                  sub_22A4DB79C();

                  LOBYTE(v57) = sub_22A4DB78C();
                  v52(v54, v55);
                  v52(v53, v55);
                  if (v57)
                  {
                    sub_22A4DE27C();
                    sub_22A4DE2AC();
                    sub_22A4DE2BC();
                    sub_22A4DE28C();
                  }

                  else
                  {
                    swift_unknownObjectRelease();
                  }

                  v44 = v69;
                  ++v49;
                }

                while (v76 != v68);
              }
            }

            else
            {
              v48 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v48)
              {
                goto LABEL_61;
              }
            }

            v58 = *(v0 + 120);
            *(v0 + 328) = v58;
            v59 = v58 < 0 || (v58 & 0x4000000000000000) != 0;
            if (v59)
            {
              v60 = sub_22A4DE0EC();
            }

            else
            {
              v60 = *(v58 + 16);
            }

            v11 = MEMORY[0x277D84F90];
            if (v60)
            {
              if (v60 < 1)
              {
                goto LABEL_110;
              }

              for (i = 0; i != v60; ++i)
              {
                if ((v58 & 0xC000000000000001) != 0)
                {
                  v62 = MEMORY[0x22AAD13F0](i, v58);
                }

                else
                {
                  v62 = *(v58 + 8 * i + 32);
                  swift_unknownObjectRetain();
                }

                [*(*(v0 + 144) + 200) removeObjectForKey_];
                swift_unknownObjectRelease();
              }
            }

            if (v59)
            {
              v13 = sub_22A4DE0EC();
            }

            else
            {
              v13 = *(v58 + 16);
            }

            v10 = &selRef_notificationTrigger;
            v9 = v67;
            *(v0 + 336) = v13;
            if (v13)
            {
              goto LABEL_96;
            }

            swift_unknownObjectRelease();
          }
        }

        else
        {
          swift_unknownObjectRelease_n();
        }

        v3 = *(v0 + 312);
        if (v3 == *(v0 + 296))
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_96:
      if (v13 >= 1)
      {
        v6 = 0;
        goto LABEL_7;
      }

LABEL_111:
      __break(1u);
    }
  }

  else
  {
    v6 = *(v0 + 344) + 1;
LABEL_7:
    *(v0 + 344) = v6;
    v7 = *(v0 + 328);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    *(v0 + 352) = v8;
    v63 = *(v0 + 144);
    v64 = v63[17];
    v65 = v63[18];
    __swift_project_boxed_opaque_existential_0(v63 + 14, v64);
    v78 = (*(v65 + 32) + **(v65 + 32));
    v66 = swift_task_alloc();
    *(v0 + 360) = v66;
    *v66 = v0;
    v66[1] = sub_22969BFD0;

    v78(v8, v64, v65);
  }
}

void *sub_22969CBB8()
{
  v1 = v0;
  v78 = sub_22A4DB74C();
  v79 = *(v78 - 8);
  v2 = MEMORY[0x28223BE20](v78);
  v66 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v77 = &v66 - v4;
  v5 = _s13PresenceStateOMa(0);
  v84 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v66 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v66 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v83 = &v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v66 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v66 - v18;
  MEMORY[0x28223BE20](v17);
  v87 = &v66 - v19;
  v88 = sub_22A4DB7DC();
  v75 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22A4DB45C();
  v90 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [*(v0 + 200) keyEnumerator];
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
  v89 = v24;
  sub_22A4DDC4C();
  sub_2296A4D2C(&qword_27D87EB30, 255, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22A4DDFBC();
  while (v94)
  {
    v86 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      sub_229543C58(&v93, v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
      if (swift_dynamicCast())
      {
        if (v92)
        {
          break;
        }
      }

      sub_22A4DDFBC();
      if (!v94)
      {
        isUniquelyReferenced_nonNull_native = v86;
        goto LABEL_11;
      }
    }

    MEMORY[0x22AAD09E0]();
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v86 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    isUniquelyReferenced_nonNull_native = v95;
    sub_22A4DDFBC();
  }

LABEL_11:

  (*(v90 + 8))(v23, v21);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_57;
  }

  v26 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
  v27 = v70;
  v28 = v87;
  v29 = v85;
  if (v26)
  {
    v30 = 0;
    v81 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v82 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v73 = v75 + 16;
    v71 = (v79 + 4);
    v68 = v79 + 1;
    v79 = (v75 + 8);
    v31 = MEMORY[0x277D84F98];
    v69 = v1;
    v86 = isUniquelyReferenced_nonNull_native;
    v80 = v26;
    while (1)
    {
      if (v82)
      {
        v33 = MEMORY[0x22AAD13F0](v30, isUniquelyReferenced_nonNull_native);
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v30 >= *(v81 + 16))
        {
          goto LABEL_54;
        }

        v33 = *(isUniquelyReferenced_nonNull_native + 8 * v30 + 32);
        swift_unknownObjectRetain();
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v26 = sub_22A4DE0EC();
          goto LABEL_13;
        }
      }

      v90 = v34;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v35 = [objc_msgSend(v33 lpRoom)];
      swift_unknownObjectRelease();
      sub_22A4DB79C();

      v36 = [*(v1 + 200) objectForKey_];
      v89 = v33;
      if (v36)
      {
        v37 = v76;
        sub_2296A4F64(v36 + *(*v36 + 88), v76, _s13PresenceStateOMa);

        sub_2296A4E9C(v37, v28, _s13PresenceStateOMa);
      }

      else
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
        (*(*(v38 - 8) + 56))(v28, 1, 2, v38);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v31;
      v39 = sub_2296DBEC0(v29);
      v41 = v31[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_55;
      }

      v45 = v40;
      if (v31[3] < v44)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      v48 = v39;
      sub_229897F38();
      v39 = v48;
      v31 = v93;
      if (v45)
      {
LABEL_31:
        v47 = *(v84 + 72) * v39;
        goto LABEL_38;
      }

LABEL_36:
      isUniquelyReferenced_nonNull_native = v39;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      v50 = v74;
      (*(*(v49 - 8) + 56))(v74, 1, 2, v49);
      v31[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
      (*(v75 + 16))(v31[6] + *(v75 + 72) * isUniquelyReferenced_nonNull_native, v29, v88);
      v47 = *(v84 + 72) * isUniquelyReferenced_nonNull_native;
      sub_2296A4E9C(v50, v31[7] + v47, _s13PresenceStateOMa);
      v51 = v31[2];
      v43 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v43)
      {
        goto LABEL_56;
      }

      v31[2] = v52;
LABEL_38:
      v53 = v31[7];
      sub_2296A4E9C(v53 + v47, v12, _s13PresenceStateOMa);
      v54 = v12;
      sub_2296A4F64(v12, v27, _s13PresenceStateOMa);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      v56 = *(*(v55 - 8) + 48);
      v57 = v56(v27, 2, v55);
      if (!v57)
      {
        v58 = *v71;
        (*v71)(v77, v27, v78);
        v59 = v72;
        sub_2296A4F64(v87, v72, _s13PresenceStateOMa);
        v60 = v56(v59, 2, v55);
        if (v60)
        {
          v1 = v69;
          if (v60 != 1)
          {
            (*v68)(v77, v78);
            sub_2296A4F04(v12, _s13PresenceStateOMa);
            v28 = v87;
            v32 = v83;
            sub_2296A4F64(v87, v83, _s13PresenceStateOMa);
LABEL_50:
            v27 = v70;
            goto LABEL_16;
          }

          (*v68)(v77, v78);
          v32 = v83;
          sub_2296A4E9C(v12, v83, _s13PresenceStateOMa);
        }

        else
        {
          v61 = v66;
          v62 = v78;
          v58(v66, v72, v78);
          sub_2296A4D2C(&unk_27D87EBD0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v63 = v77;
          v67 = sub_22A4DD54C();
          v64 = *v68;
          (*v68)(v61, v62);
          v64(v63, v62);
          if ((v67 & 1) == 0)
          {
            v12 = v54;
            sub_2296A4F04(v54, _s13PresenceStateOMa);
            v28 = v87;
            v32 = v83;
            sub_2296A4F64(v87, v83, _s13PresenceStateOMa);
            v1 = v69;
            goto LABEL_50;
          }

          v12 = v54;
          v32 = v83;
          sub_2296A4E9C(v54, v83, _s13PresenceStateOMa);
          v1 = v69;
        }

        v27 = v70;
        goto LABEL_47;
      }

      if (v57 != 1)
      {
        v32 = v83;
        sub_2296A4E9C(v12, v83, _s13PresenceStateOMa);
LABEL_47:
        v28 = v87;
        goto LABEL_16;
      }

      sub_2296A4F04(v12, _s13PresenceStateOMa);
      v28 = v87;
      v32 = v83;
      sub_2296A4F64(v87, v83, _s13PresenceStateOMa);
LABEL_16:
      isUniquelyReferenced_nonNull_native = v86;
      sub_2296A4E9C(v32, v53 + v47, _s13PresenceStateOMa);
      swift_unknownObjectRelease();
      sub_2296A4F04(v28, _s13PresenceStateOMa);
      v29 = v85;
      (*v79)(v85, v88);
      ++v30;
      if (v90 == v80)
      {
        goto LABEL_52;
      }
    }

    sub_229893870(v44, isUniquelyReferenced_nonNull_native);
    v31 = v93;
    v39 = sub_2296DBEC0(v29);
    if ((v45 & 1) != (v46 & 1))
    {
      result = sub_22A4DE67C();
      __break(1u);
      return result;
    }

LABEL_30:
    if (v45)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v31 = MEMORY[0x277D84F98];
LABEL_52:

  return v31;
}

uint64_t sub_22969D8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2296DBEC0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_229898264();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_22A4DB7DC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
    v20 = *(v13 - 8);
    sub_2296A4E9C(v12 + *(v20 + 72) * v7, a2, _s28DefaultRoomPresencePublisherC8ObserverVMa);
    sub_2297FDD94(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_22969DA64(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2296DBEC0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_229898C38();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_22A4DB7DC();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_2297FE114(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_22969DB2C()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](sub_22969DB74, v0, 0);
}

uint64_t sub_22969DB74()
{
  v1 = v0[5];
  v2 = swift_beginAccess();
  if (*(*(v1 + 232) + 16))
  {
    __break(1u);
  }

  else
  {
    v10 = v0[5];
    v11 = v0[6];
    v12 = *(v10 + 224);
    v13 = sub_22A4DDE5C();
    v0[7] = v13;

    v15 = sub_2296A4D2C(&qword_27D87EB28, v14, _s28DefaultRoomPresencePublisherCMa, &unk_22A57CD0C);
    v0[8] = v15;
    v16 = swift_task_alloc();
    v0[9] = v16;
    v16[2] = v10;
    v16[3] = v13;
    v16[4] = v11;
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_22969DD0C;
    v7 = sub_22969FB30;
    v6 = 0x800000022A58FDB0;
    v9 = MEMORY[0x277D84F78] + 8;
    v3 = v10;
    v4 = v15;
    v5 = 0xD00000000000001FLL;
    v8 = v16;
  }

  return MEMORY[0x2822007B8](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22969DD0C()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22969DE38, v1, 0);
}

uint64_t sub_22969DE38()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v2 + 224);
  v5 = sub_22A4DDE5C();
  v0[11] = v5;

  v6 = swift_task_alloc();
  v0[12] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_22969DF70;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, v2, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_2296A16CC, v6, v8);
}

uint64_t sub_22969DF70()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22969E09C, v1, 0);
}

uint64_t sub_22969E09C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = *(v2 + 224);
  v5 = sub_22A4DDE5C();
  v0[14] = v5;

  v6 = swift_task_alloc();
  v0[15] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_22969E1D4;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v7, v2, v1, 0xD00000000000001FLL, 0x800000022A58FDB0, sub_2296A3340, v6, v8);
}

uint64_t sub_22969E1D4()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22969E300, v1, 0);
}

uint64_t sub_22969E300()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22969E378(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22A4DB7DC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = *(_s13PresenceStateOMa(0) - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969E4A8, v1, 0);
}

uint64_t sub_22969E4A8()
{
  v1 = v0[2];
  v2 = sub_22969CBB8();
  v3 = [v1 uuid];
  sub_22A4DB79C();

  if (v2[2] && (v4 = sub_2296DBEC0(v0[7]), (v5 & 1) != 0))
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    sub_2296A4F64(v2[7] + *(v0[8] + 72) * v4, v7, _s13PresenceStateOMa);
    v13 = *(v10 + 8);
    v11 = v10 + 8;
    v12 = v13;
    v13(v8, v9);

    sub_2296A4E9C(v7, v6, _s13PresenceStateOMa);
  }

  else
  {
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[4];
    v17 = v0[5];

    v18 = *(v17 + 8);
    v11 = v17 + 8;
    v12 = v18;
    v18(v15, v16);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    (*(*(v19 - 8) + 56))(v14, 1, 2, v19);
  }

  v0[11] = v11;
  v0[12] = v12;
  v20 = v0[2];
  __swift_project_boxed_opaque_existential_0((v0[3] + 152), *(v0[3] + 176));
  v21 = [v20 uuid];
  sub_22A4DB79C();

  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v22[1] = sub_22969E6D8;
  v23 = v0[10];
  v24 = v0[6];

  return sub_2296A5608(v23, v24);
}

uint64_t sub_22969E6D8(char a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 112) = a1;

  v2(v3, v4);

  return MEMORY[0x2822009F8](sub_22969E864, v5, 0);
}

uint64_t sub_22969E864()
{
  sub_2296A4F04(*(v0 + 80), _s13PresenceStateOMa);

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_22969E90C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9C8, &unk_22A57CAF8);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_22A4DB74C();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  _s13PresenceStateOMa(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA30, &unk_22A57CD80);
  v2[22] = swift_task_alloc();
  v5 = _s28DefaultRoomPresencePublisherC8ObserverVMa(0);
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D190, &qword_22A5780C0);
  v2[31] = v7;
  v2[32] = *(v7 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969EC00, v1, 0);
}

uint64_t sub_22969EC00()
{
  v1 = [*(v0[11] + 216) objectForKey_];
  if (!v1)
  {
LABEL_22:

    v38 = v0[1];

    return v38();
  }

  v2 = v1[2];

  v3 = *(v2 + 16);
  if (v3)
  {
    v50 = v0[31];
    v51 = v0[32];
    v4 = v0[27];
    v5 = v0[24];
    v6 = v0[11];
    v52 = MEMORY[0x277D84F90];
    sub_22958389C(0, v3, 0);
    v7 = v52;
    v8 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v49 = v6;
    swift_beginAccess();
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v47 = (v9 - 8);
    v48 = *(v9 + 56);
    v44 = v5;
    v45 = v10;
    v46 = (v5 + 56);
    v11 = v10;
    do
    {
      v11(v0[30], v8, v0[26]);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v12 = v0[33];
      v13 = *(v50 + 48);
      v11(v12, v0[30], v0[26]);
      v14 = *(v49 + 208);
      v15 = v0[30];
      if (*(v14 + 16))
      {
        v16 = v9;

        v17 = sub_2296DBEC0(v15);
        v18 = v0[30];
        v19 = v0[26];
        if (v20)
        {
          sub_2296A4F64(*(v14 + 56) + *(v44 + 72) * v17, v12 + v13, _s28DefaultRoomPresencePublisherC8ObserverVMa);
          (*v47)(v18, v19);

          v21 = 0;
        }

        else
        {

          (*v47)(v18, v19);
          v21 = 1;
        }

        v9 = v16;
        v11 = v45;
      }

      else
      {
        (*v47)(v0[30], v0[26]);
        v21 = 1;
      }

      (*v46)(v12 + v13, v21, 1, v0[23]);
      v23 = *(v52 + 16);
      v22 = *(v52 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22958389C((v22 > 1), v23 + 1, 1);
      }

      v24 = v0[33];
      *(v52 + 16) = v23 + 1;
      sub_22957F2F8(v24, v52 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v23, &qword_27D87D190, &qword_22A5780C0);
      v8 += v48;
      --v3;
    }

    while (v3);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v0[35] = v7;
  v26 = *(v7 + 16);
  v0[36] = v26;
  if (!v26)
  {

    goto LABEL_22;
  }

  v28 = v0[31];
  v27 = v0[32];
  v29 = v0[27];
  v30 = v0[23];
  v31 = v0[24];
  v0[37] = 0;
  if (!*(v7 + 16))
  {
    __break(1u);
    return result;
  }

  v32 = v0[34];
  v33 = v0[29];
  v34 = v0[26];
  v35 = v0[22];
  sub_2296A4A0C(v7 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v32);
  v36 = *(v28 + 48);
  (*(v29 + 32))(v33, v32, v34);
  sub_22957F2F8(v32 + v36, v35, &qword_27D87EA30, &unk_22A57CD80);
  if ((*(v31 + 48))(v35, 1, v30) == 1)
  {
    v37 = v0[22];
    (*(v0[27] + 8))(v0[29], v0[26]);

    sub_22953EAE4(v37, &qword_27D87EA30, &unk_22A57CD80);
    goto LABEL_22;
  }

  v39 = v0[25];
  sub_2296A4E9C(v0[22], v39, _s28DefaultRoomPresencePublisherC8ObserverVMa);
  v40 = [*v39 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
  v41 = sub_22A4DD83C();
  v0[38] = v41;

  v42 = swift_task_alloc();
  v0[39] = v42;
  *v42 = v0;
  v42[1] = sub_22969F1D8;
  v43 = v0[21];

  return sub_229694A80(v43, v41);
}

uint64_t sub_22969F1D8()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_22969F304, v1, 0);
}

uint64_t sub_22969F304()
{
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[20];
  v5 = v0[21];
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D8AB7A8);
  (*(v4 + 16))(v1, v2, v3);
  sub_2296A4F64(v5, v6, _s13PresenceStateOMa);
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[26];
  v14 = v0[20];
  if (v10)
  {
    v59 = v9;
    log = v8;
    v15 = v0[19];
    v16 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v0[9] = v57;
    *v16 = 136315650;
    *(v16 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A590480, v0 + 9);
    *(v16 + 12) = 2080;
    sub_2296A4D2C(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v21 = sub_2295A3E30(v17, v19, v0 + 9);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    sub_2296A4F64(v14, v15, _s13PresenceStateOMa);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v23 = (*(*(v22 - 8) + 48))(v15, 2, v22);
    if (v23)
    {
      if (v23 == 1)
      {
        v24 = 0x6E776F6E6B6E75;
      }

      else
      {
        v24 = 0x646569707563636FLL;
      }

      if (v23 == 1)
      {
        v25 = 0xE700000000000000;
      }

      else
      {
        v25 = 0xE800000000000000;
      }
    }

    else
    {
      v26 = v20;
      v27 = v0[16];
      v28 = v0[17];
      v29 = v0[15];
      (*(v27 + 32))(v28, v0[19], v29);
      v0[7] = 0;
      v0[8] = 0xE000000000000000;
      sub_22A4DE1FC();

      v0[5] = 0xD000000000000016;
      v0[6] = 0x800000022A590330;
      sub_2296A4D2C(&qword_281403890, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v30 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v30);

      MEMORY[0x22AAD08C0](41, 0xE100000000000000);
      v24 = v0[5];
      v25 = v0[6];
      (*(v27 + 8))(v28, v29);
      v20 = v26;
    }

    v63 = v20;
    sub_2296A4F04(v0[20], _s13PresenceStateOMa);
    v31 = sub_2295A3E30(v24, v25, v0 + 9);

    *(v16 + 24) = v31;
    _os_log_impl(&dword_229538000, log, v59, "%s - Notifying observer %s: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v57, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  else
  {

    sub_2296A4F04(v14, _s13PresenceStateOMa);
    v63 = *(v12 + 8);
    v63(v11, v13);
  }

  v58 = v0[29];
  v56 = v0[26];
  v32 = v0[25];
  v33 = v0[21];
  v34 = v0[13];
  v35 = v0[14];
  v36 = v0[12];
  v60 = v0[37] + 1;
  loga = v0[36];
  sub_2296A4F64(v33, v0[18], _s13PresenceStateOMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  sub_22A4DDA0C();
  (*(v34 + 8))(v35, v36);
  sub_2296A4F04(v33, _s13PresenceStateOMa);
  v63(v58, v56);
  result = sub_2296A4F04(v32, _s28DefaultRoomPresencePublisherC8ObserverVMa);
  if (v60 == loga)
  {

LABEL_19:

    v50 = v0[1];

    return v50();
  }

  v38 = v0[37] + 1;
  v0[37] = v38;
  v39 = v0[35];
  if (v38 >= *(v39 + 16))
  {
    __break(1u);
    return result;
  }

  v40 = v0[34];
  v41 = v0[31];
  v42 = v0[29];
  v43 = v0[26];
  v44 = v0[27];
  v45 = v0[23];
  v46 = v0[24];
  v47 = v0[22];
  sub_2296A4A0C(v39 + ((*(v0[32] + 80) + 32) & ~*(v0[32] + 80)) + *(v0[32] + 72) * v38, v40);
  v48 = *(v41 + 48);
  (*(v44 + 32))(v42, v40, v43);
  sub_22957F2F8(v40 + v48, v47, &qword_27D87EA30, &unk_22A57CD80);
  if ((*(v46 + 48))(v47, 1, v45) == 1)
  {
    v49 = v0[22];
    (*(v0[27] + 8))(v0[29], v0[26]);

    sub_22953EAE4(v49, &qword_27D87EA30, &unk_22A57CD80);
    goto LABEL_19;
  }

  v51 = v0[25];
  sub_2296A4E9C(v0[22], v51, _s28DefaultRoomPresencePublisherC8ObserverVMa);
  v52 = [*v51 allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
  v53 = sub_22A4DD83C();
  v0[38] = v53;

  v54 = swift_task_alloc();
  v0[39] = v54;
  *v54 = v0;
  v54[1] = sub_22969F1D8;
  v55 = v0[21];

  return sub_229694A80(v55, v53);
}

uint64_t sub_22969FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  v7 = sub_22A4DB21C();
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[30] = swift_task_alloc();
  v8 = sub_22A4DDE4C();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22969FCC8, 0, 0);
}

uint64_t sub_22969FCC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[34] = @"kRoomOldNameKey";
  v1 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_22969FE0C;
  v3 = v0[30];
  v4 = v0[31];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_22969FE0C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_2296A04C0;
  }

  else
  {
    v2 = sub_22969FF20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22969FF3C()
{
  v27 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    v10 = *(v0 + 8);

    return v10();
  }

  (*(v3 + 32))(*(v0 + 232), v1, v2);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB7A8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v26);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory changed rooms notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 296) = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    goto LABEL_10;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  sub_22A4DB1FC();
  if (!*(v0 + 80))
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v21 = v0 + 56;
LABEL_29:
    sub_22953EAE4(v21, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    goto LABEL_30;
  }

  v12 = *(v0 + 184);
  *(v0 + 304) = v12;
  v13 = sub_22A4DB20C();
  if (!v13)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    swift_unknownObjectRelease();
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    goto LABEL_28;
  }

  v14 = v13;
  *(v0 + 144) = sub_22A4DD5EC();
  *(v0 + 152) = v15;
  sub_22A4DE18C();
  if (!*(v14 + 16) || (v16 = sub_2295402E8(v0 + 16), (v17 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    goto LABEL_26;
  }

  sub_2295404B0(*(v14 + 56) + 32 * v16, v0 + 88);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 112))
  {
LABEL_26:
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    swift_unknownObjectRelease();
LABEL_28:
    v21 = v0 + 88;
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    *(v0 + 312) = v19;
    v20 = swift_task_alloc();
    *(v0 + 320) = v20;
    *v20 = v0;
    v20[1] = sub_2296A054C;

    return sub_2296A0778(v12, v18, v19);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  swift_unknownObjectRelease();
LABEL_30:
  v22 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v23 = swift_task_alloc();
  *(v0 + 280) = v23;
  *v23 = v0;
  v23[1] = sub_22969FE0C;
  v24 = *(v0 + 240);
  v25 = *(v0 + 248);

  return MEMORY[0x282200308](v24, v25, v22);
}

uint64_t sub_2296A04C0()
{
  *(v0 + 176) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2296A054C()
{

  return MEMORY[0x2822009F8](sub_2296A0664, 0, 0);
}

uint64_t sub_2296A0664()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_22969FE0C;
  v6 = v0[30];
  v7 = v0[31];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_2296A0778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22A4DB7DC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A083C, v3, 0);
}

uint64_t sub_2296A083C()
{
  v44 = v0;
  v1 = v0[5];
  v2 = [*(v1 + 200) objectForKey_];
  v0[9] = v2;
  if (v2)
  {
    v3 = sub_2296A4834(v0[3], v0[4]);
    v0[10] = v3;
    if (v3)
    {
      v4 = v3;
      if (qword_27D87B998 != -1)
      {
        swift_once();
      }

      v5 = sub_22A4DD07C();
      __swift_project_value_buffer(v5, qword_27D8AB7A8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = sub_22A4DD05C();
      v7 = sub_22A4DDCCC();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v8 = &_OBJC_LABEL_PROTOCOL___HMDUserDataControllerTimerCreator;
      if (os_log_type_enabled(v6, v7))
      {
        v41 = v7;
        v9 = v0[8];
        v42 = v0[7];
        v10 = v0[6];
        v11 = v0[2];
        v38 = v11;
        v12 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v12 = 136315906;
        *(v12 + 4) = sub_2295A3E30(0xD000000000000039, 0x800000022A5904C0, &v43);
        *(v12 + 12) = 2080;
        v13 = [v11 shortDescription];
        v39 = v1;
        v14 = sub_22A4DD5EC();
        v16 = v15;

        v17 = sub_2295A3E30(v14, v16, &v43);

        *(v12 + 14) = v17;
        *(v12 + 22) = 2080;
        v18 = [v4 uuid];
        sub_22A4DB79C();

        sub_2296A4D2C(&qword_281403860, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v19 = sub_22A4DE5CC();
        v21 = v20;
        log = v6;
        v22 = *(v42 + 8);
        v22(v9, v10);
        v23 = sub_2295A3E30(v19, v21, &v43);

        *(v12 + 24) = v23;
        *(v12 + 32) = 2080;
        v24 = [objc_msgSend(v38 lpRoom)];
        swift_unknownObjectRelease();
        sub_22A4DB79C();

        v25 = sub_22A4DE5CC();
        v27 = v26;
        v22(v9, v10);
        v28 = v25;
        v1 = v39;
        v29 = sub_2295A3E30(v28, v27, &v43);

        *(v12 + 34) = v29;
        v6 = log;
        _os_log_impl(&dword_229538000, log, v41, "%s - Handling accessory changed room notification. Accessory:%s, old room uuid: %s, new room uuid: %s", v12, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v40, -1, -1);
        v30 = v12;
        v8 = &_OBJC_LABEL_PROTOCOL___HMDUserDataControllerTimerCreator;
        MEMORY[0x22AAD4E50](v30, -1, -1);
      }

      v31 = v0[2];
      v32 = *(v0[5] + 216);
      v33 = [v32 objectForKey_];
      swift_unknownObjectRelease();

      if (v33)
      {
      }

      else
      {
        [*(v1 + 200) removeObjectForKey_];
      }

      v36 = swift_task_alloc();
      v0[11] = v36;
      *v36 = v0;
      v36[1] = sub_2296A0D2C;

      return sub_22969E378(v4);
    }
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_2296A0D2C(char a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_2296A0E44, v2, 0);
}

uint64_t sub_2296A0E44()
{
  if (*(v0 + 136) == 1)
  {
    v1 = *(v0 + 80);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_2296A1054;

    return sub_22969E90C(v1);
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = *(*(v0 + 40) + 216);
    v6 = [v5 objectForKey_];
    swift_unknownObjectRelease();

    if (v6)
    {
      v7 = *(v0 + 72);
      v8 = *(v0 + 40);
      v9 = *(v0 + 16);

      [*(v8 + 200) setObject:v7 forKey:v9];
      v10 = [v9 lpRoom];
      *(v0 + 104) = v10;
      v11 = swift_task_alloc();
      *(v0 + 112) = v11;
      *v11 = v0;
      v11[1] = sub_2296A12F4;

      return sub_22969E378(v10);
    }

    else
    {

      swift_unknownObjectRelease();

      v12 = *(v0 + 8);

      return v12();
    }
  }
}

uint64_t sub_2296A1054()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2296A1164, v1, 0);
}

uint64_t sub_2296A1164()
{
  v1 = v0[2];
  v2 = *(v0[5] + 216);
  v3 = [v2 objectForKey_];
  swift_unknownObjectRelease();

  if (v3)
  {
    v4 = v0[9];
    v5 = v0[5];
    v6 = v0[2];

    [*(v5 + 200) setObject:v4 forKey:v6];
    v7 = [v6 lpRoom];
    v0[13] = v7;
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_2296A12F4;

    return sub_22969E378(v7);
  }

  else
  {

    swift_unknownObjectRelease();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_2296A12F4(char a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 137) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A1428, v2, 0);
}

uint64_t sub_2296A1428()
{
  if (*(v0 + 137) == 1)
  {
    v1 = [*(v0 + 16) lpRoom];
    *(v0 + 120) = v1;
    v2 = swift_task_alloc();
    *(v0 + 128) = v2;
    *v2 = v0;
    v2[1] = sub_2296A1530;

    return sub_22969E90C(v1);
  }

  else
  {

    swift_unknownObjectRelease();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2296A1530()
{
  v1 = *(*v0 + 40);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A165C, v1, 0);
}

uint64_t sub_2296A165C()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296A170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_22A4DB21C();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[24] = swift_task_alloc();
  v8 = sub_22A4DDE4C();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A1864, 0, 0);
}

uint64_t sub_2296A1864()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[28] = @"HMDAccessoryKey";
  v1 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2296A19A8;
  v3 = v0[24];
  v4 = v0[25];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2296A19A8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_2296A1FA0;
  }

  else
  {
    v2 = sub_2296A1ABC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296A1AD8()
{
  v24 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v10 = *(v0 + 8);

    return v10();
  }

  (*(v3 + 32))(*(v0 + 184), v1, v2);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB7A8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v23);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory added notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    goto LABEL_10;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v12 = sub_22A4DB20C();
  if (!v12)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_24;
  }

  v13 = v12;
  *(v0 + 112) = sub_22A4DD5EC();
  *(v0 + 120) = v14;
  sub_22A4DE18C();
  if (!*(v13 + 16) || (v15 = sub_2295402E8(v0 + 16), (v16 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_22;
  }

  sub_2295404B0(*(v13 + 56) + 32 * v15, v0 + 56);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_22:
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

LABEL_24:
    sub_22953EAE4(v0 + 56, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 136);
    *(v0 + 256) = v17;
    v18 = swift_task_alloc();
    *(v0 + 264) = v18;
    *v18 = v0;
    v18[1] = sub_2296A202C;

    return sub_2296A223C(v17);
  }

  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

LABEL_25:
  v19 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_2296A19A8;
  v21 = *(v0 + 192);
  v22 = *(v0 + 200);

  return MEMORY[0x282200308](v21, v22, v19);
}

uint64_t sub_2296A1FA0()
{
  *(v0 + 128) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2296A202C()
{

  return MEMORY[0x2822009F8](sub_2296A2128, 0, 0);
}

uint64_t sub_2296A2128()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_2296A19A8;
  v6 = v0[24];
  v7 = v0[25];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_2296A223C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v2[4] = swift_task_alloc();
  v3 = _s13PresenceStateOMa(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A2340, v1, 0);
}

uint64_t sub_2296A2340()
{
  v1 = v0[3];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v2);
  v8 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2296A2474;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_2296A2474()
{
  v2 = *v1;

  v3 = *(v2 + 24);
  if (v0)
  {

    v4 = sub_2296A2DE4;
  }

  else
  {
    v4 = sub_2296A25AC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296A25AC()
{
  v29 = v0;
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 56))(v2, 0, 1, v0[5]);
  sub_2296A4E9C(v2, v1, _s13PresenceStateOMa);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8AB7A8);
  swift_unknownObjectRetain();
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A5904A0, &v28);
    *(v7 + 12) = 2080;
    v9 = [v6 shortDescription];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    v13 = sub_2295A3E30(v10, v12, &v28);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_229538000, v4, v5, "%s - %s added to home. Adding to the presence map.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v14 = v0[2];
  v15 = *(v0[3] + 216);
  v16 = [v15 objectForKey_];
  swift_unknownObjectRelease();

  v17 = v0[8];
  if (v16)
  {
    v18 = v0[7];
    v19 = v0[2];
    v20 = v0[3];

    v21 = *(v20 + 200);
    sub_2296A4F64(v17, v18, _s13PresenceStateOMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA48, &unk_22A57CBB0);
    v22 = swift_allocObject();
    sub_2296A4E9C(v18, v22 + *(*v22 + 88), _s13PresenceStateOMa);
    v23 = v21;
    [v23 setObject:v22 forKey:v19];

    v24 = [v19 lpRoom];
    v0[10] = v24;
    v25 = swift_task_alloc();
    v0[11] = v25;
    *v25 = v0;
    v25[1] = sub_2296A29CC;

    return sub_22969E378(v24);
  }

  else
  {
    sub_2296A4F04(v0[8], _s13PresenceStateOMa);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_2296A29CC(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 112) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A2B00, v2, 0);
}

uint64_t sub_2296A2B00()
{
  if (*(v0 + 112) == 1)
  {
    v1 = [*(v0 + 16) lpRoom];
    *(v0 + 96) = v1;
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_2296A2C28;

    return sub_22969E90C(v1);
  }

  else
  {
    sub_2296A4F04(*(v0 + 64), _s13PresenceStateOMa);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2296A2C28()
{
  v1 = *(*v0 + 24);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A2D54, v1, 0);
}

uint64_t sub_2296A2D54()
{
  sub_2296A4F04(*(v0 + 64), _s13PresenceStateOMa);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296A2DE4()
{
  v16 = v0;
  v1 = v0[4];
  (*(v0[6] + 56))(v1, 1, 1, v0[5]);
  sub_22953EAE4(v1, &qword_27D87EBB0, &qword_22A57C720);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8AB7A8);
  swift_unknownObjectRetain();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_2295A3E30(0xD000000000000018, 0x800000022A5904A0, &v15);
    *(v6 + 12) = 2080;
    v8 = [v5 shortDescription];
    v9 = sub_22A4DD5EC();
    v11 = v10;

    v12 = sub_2295A3E30(v9, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&dword_229538000, v3, v4, "%s - accessory cannot be used to monitor presence: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2296A3034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a3;
  v35 = a7;
  v33 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_22A4DD9DC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v16;
  v21 = v9;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v10 + 32))(v23 + v19, v13, v21);
  v24 = v33;
  *(v23 + v20) = v34;
  *(v23 + v22) = v18;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;

  v25 = sub_22957F3C0(0, 0, v32, v35, v23);
  swift_beginAccess();
  v26 = *(a2 + 232);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 232) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_22958A8B4(0, v26[2] + 1, 1, v26);
    *(a2 + 232) = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_22958A8B4((v28 > 1), v29 + 1, 1, v26);
  }

  v26[2] = v29 + 1;
  v26[v29 + 4] = v25;
  *(a2 + 232) = v26;
  return swift_endAccess();
}

uint64_t sub_2296A3380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_22A4DB21C();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[24] = swift_task_alloc();
  v8 = sub_22A4DDE4C();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A34D8, 0, 0);
}

uint64_t sub_2296A34D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730);
  sub_22A4DD8FC();

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[28] = @"HMDAccessoryKey";
  v1 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2296A361C;
  v3 = v0[24];
  v4 = v0[25];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2296A361C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_2296A523C;
  }

  else
  {
    v2 = sub_2296A3730;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296A374C()
{
  v24 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_10:
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v10 = *(v0 + 8);

    return v10();
  }

  (*(v3 + 32))(*(v0 + 184), v1, v2);
  if (qword_27D87B998 != -1)
  {
    swift_once();
  }

  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8AB7A8);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A58FDB0, &v23);
    _os_log_impl(&dword_229538000, v5, v6, "%s - Received accessory removed notification", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 248) = Strong;
  if (!Strong)
  {
LABEL_9:
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    goto LABEL_10;
  }

  if (sub_22A4DDAAC())
  {

    goto LABEL_9;
  }

  v12 = sub_22A4DB20C();
  if (!v12)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_24;
  }

  v13 = v12;
  *(v0 + 112) = sub_22A4DD5EC();
  *(v0 + 120) = v14;
  sub_22A4DE18C();
  if (!*(v13 + 16) || (v15 = sub_2295402E8(v0 + 16), (v16 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_22;
  }

  sub_2295404B0(*(v13 + 56) + 32 * v15, v0 + 56);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_22:
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

LABEL_24:
    sub_22953EAE4(v0 + 56, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 136);
    *(v0 + 256) = v17;
    v18 = swift_task_alloc();
    *(v0 + 264) = v18;
    *v18 = v0;
    v18[1] = sub_2296A3C14;

    return sub_2296A3F7C(v17);
  }

  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

LABEL_25:
  v19 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_2296A361C;
  v21 = *(v0 + 192);
  v22 = *(v0 + 200);

  return MEMORY[0x282200308](v21, v22, v19);
}

uint64_t sub_2296A3C14()
{

  return MEMORY[0x2822009F8](sub_2296A3D10, 0, 0);
}

uint64_t sub_2296A3D10()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = sub_2296A4D2C(&qword_27D87DBC0, 255, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_2296A361C;
  v6 = v0[24];
  v7 = v0[25];

  return MEMORY[0x282200308](v6, v7, v4);
}

uint64_t sub_2296A3E24(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_2296A3380(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_2296A3F7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2296A3F9C, v1, 0);
}

uint64_t sub_2296A3F9C()
{
  v25 = v0;
  if ([*(v0[3] + 200) objectForKey_] && (v2 = v0[2], v1 = v0[3], , v3 = *(v1 + 216), v4 = objc_msgSend(v3, sel_objectForKey_, objc_msgSend(v2, sel_lpRoom)), swift_unknownObjectRelease(), v3, v4))
  {

    if (qword_27D87B998 != -1)
    {
      swift_once();
    }

    v5 = sub_22A4DD07C();
    __swift_project_value_buffer(v5, qword_27D8AB7A8);
    swift_unknownObjectRetain();
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCCC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[2];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_2295A3E30(0xD00000000000001ALL, 0x800000022A590460, &v24);
      *(v9 + 12) = 2080;
      v11 = [v8 shortDescription];
      v12 = sub_22A4DD5EC();
      v14 = v13;

      v15 = sub_2295A3E30(v12, v14, &v24);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_229538000, v6, v7, "%s - %s removed from home. Removing from the presence map.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    v16 = v0[3];
    v17 = v16[17];
    v18 = v16[18];
    __swift_project_boxed_opaque_existential_0(v16 + 14, v17);
    v23 = (*(v18 + 32) + **(v18 + 32));
    v19 = swift_task_alloc();
    v0[4] = v19;
    *v19 = v0;
    v19[1] = sub_2296A4324;
    v20 = v0[2];

    return v23(v20, v17, v18);
  }

  else
  {
    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_2296A4324()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2296A4434, v1, 0);
}

uint64_t sub_2296A4434()
{
  v1 = v0[2];
  [*(v0[3] + 200) removeObjectForKey_];
  v2 = [v1 lpRoom];
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2296A4500;

  return sub_22969E378(v2);
}

uint64_t sub_2296A4500(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 72) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_2296A4634, v2, 0);
}

uint64_t sub_2296A4634()
{
  if (*(v0 + 72) == 1)
  {
    v1 = [*(v0 + 16) lpRoom];
    *(v0 + 56) = v1;
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2296A4724;

    return sub_22969E90C(v1);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2296A4724()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

id sub_2296A4834(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + 216) keyEnumerator];
  v6 = &selRef_microLocationScanTriggerTypeForLogEventObserver_;
  if (![v5 nextObject])
  {
LABEL_12:

    return 0;
  }

  v7 = MEMORY[0x277D84F70];
  v21 = v5;
  while (1)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    sub_229543C58(v23, v24);
    sub_2295404B0(v24, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v24);
      goto LABEL_4;
    }

    v8 = v7;
    v9 = v6;
    v10 = v22;
    v11 = [v22 name];
    v12 = a1;
    v13 = a2;
    v14 = sub_22A4DD5EC();
    v16 = v15;

    v17 = v14;
    a2 = v13;
    if (v17 == v12 && v16 == v13)
    {
      break;
    }

    a1 = v12;
    v19 = sub_22A4DE60C();

    __swift_destroy_boxed_opaque_existential_0(v24);
    v5 = v21;
    if (v19)
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    v6 = v9;
    v7 = v8;
LABEL_4:
    if (![v5 v6[430]])
    {
      goto LABEL_12;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  v5 = v21;
LABEL_14:

  return v10;
}

uint64_t sub_2296A4A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D190, &qword_22A5780C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296A4A7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_2296A170C(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_2296A4BD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D280, &unk_22A57C730) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_22969FB70(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_2296A4D2C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2296A4D74(uint64_t a1)
{
  v4 = *(sub_22A4DB7DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_22969ADCC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2296A4E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296A4F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2296A4F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2296A4FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2296A5130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EB38, &qword_22A57CE08);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_22A4DE0EC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_22A4DE0EC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2296A5240(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = _s13PresenceStateOMa(0);
      v5 = sub_22A4DD86C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_229696298(v3, v5 + v7);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_229696298(v3, v10);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_229696360(v3);
    return v5;
  }

  return result;
}

uint64_t sub_2296A5324()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87EB40);
  __swift_project_value_buffer(v0, qword_27D87EB40);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296A539C()
{
  v1 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_homeUUID;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider));
  swift_unknownObjectRelease();
  sub_22953EAE4(v0 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer, &qword_27D87EA00, &qword_22A579B80);
  v3 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_lastWriteDate;
  v4 = sub_22A4DB74C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t _s26DefaultRoomPresenceStorageCMa(uint64_t a1)
{
  result = qword_27D87EB90;
  if (!qword_27D87EB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2296A5500(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    result = sub_22A4DB74C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2296A5608(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_22A4DB74C();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v5 = sub_22A4DB7DC();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v6 = _s13PresenceStateOMa(0);
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E890, &qword_22A57C718);
  v3[40] = swift_task_alloc();
  v3[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A588C, v2, 0);
}

uint64_t sub_2296A588C()
{
  v147 = v0;
  v1 = v0[21];
  v2 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom;
  swift_beginAccess();
  v140 = v2;
  v142 = v1;
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[20];

    v5 = sub_2296DBEC0(v4);
    if (v6)
    {
      sub_229696298(*(v3 + 56) + *(v0[34] + 72) * v5, v0[46]);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  v10 = v0[45];
  v9 = v0[46];
  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[33];
  v14 = v0[34];
  v15 = v0[19];
  v16 = *(v14 + 56);
  v16(v9, v8, 1, v13);
  sub_229696298(v15, v10);
  v139 = v16;
  v16(v10, 0, 1, v13);
  v17 = *(v12 + 48);
  sub_229564F88(v9, v11, &qword_27D87EBB0, &qword_22A57C720);
  sub_229564F88(v10, v11 + v17, &qword_27D87EBB0, &qword_22A57C720);
  v18 = *(v14 + 48);
  if (v18(v11, 1, v13) == 1)
  {
    v19 = v0[46];
    v20 = v0[33];
    sub_22953EAE4(v0[45], &qword_27D87EBB0, &qword_22A57C720);
    sub_22953EAE4(v19, &qword_27D87EBB0, &qword_22A57C720);
    if (v18(v11 + v17, 1, v20) == 1)
    {
      sub_22953EAE4(v0[40], &qword_27D87EBB0, &qword_22A57C720);
LABEL_19:
      if (qword_27D87B9A0 != -1)
      {
        swift_once();
      }

      v59 = v0[35];
      v61 = v0[28];
      v60 = v0[29];
      v62 = v0[26];
      v63 = v0[27];
      v64 = v0[20];
      v65 = v0[19];
      v66 = sub_22A4DD07C();
      __swift_project_value_buffer(v66, qword_27D87EB40);
      sub_229696298(v65, v59);
      v67 = *(v63 + 16);
      v67(v60, v64, v62);
      v67(v61, v64, v62);

      v68 = sub_22A4DD05C();
      v69 = sub_22A4DDCCC();

      v70 = os_log_type_enabled(v68, v69);
      v71 = v0[35];
      if (v70)
      {
        log = v68;
        v72 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v146 = v136;
        *v72 = 136315906;
        *(v72 + 4) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A590650, &v146);
        *(v72 + 12) = 2080;
        v73 = sub_229698D5C();
        v75 = v74;
        sub_229696360(v71);
        v76 = sub_2295A3E30(v73, v75, &v146);

        *(v72 + 14) = v76;
        *(v72 + 22) = 2080;
        v77 = *(v142 + v140);
        v137 = v69;
        if (*(v77 + 16))
        {
          v78 = v0[29];

          v79 = sub_2296DBEC0(v78);
          if (v80)
          {
            sub_229696298(*(v77 + 56) + *(v0[34] + 72) * v79, v0[42]);
            v81 = 0;
          }

          else
          {
            v81 = 1;
          }
        }

        else
        {
          v81 = 1;
        }

        v120 = v0[42];
        v121 = v0[28];
        v122 = v0[29];
        v124 = v0[26];
        v123 = v0[27];
        v139(v120, v81, 1, v0[33]);
        v125 = sub_22A4DBA6C();
        v127 = v126;
        sub_22953EAE4(v120, &qword_27D87EBB0, &qword_22A57C720);
        v128 = *(v123 + 8);
        v128(v122, v124);
        v129 = sub_2295A3E30(v125, v127, &v146);

        *(v72 + 24) = v129;
        *(v72 + 32) = 2080;
        sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v130 = sub_22A4DE5CC();
        v132 = v131;
        v128(v121, v124);
        v133 = sub_2295A3E30(v130, v132, &v146);

        *(v72 + 34) = v133;
        _os_log_impl(&dword_229538000, log, v137, "%s - Ignoring update %s since it matches pending update: %s for room: %s", v72, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v136, -1, -1);
        MEMORY[0x22AAD4E50](v72, -1, -1);
      }

      else
      {
        v114 = v0[28];
        v113 = v0[29];
        v116 = v0[26];
        v115 = v0[27];

        v117 = *(v115 + 8);
        v117(v114, v116);
        v117(v113, v116);
        sub_229696360(v71);
      }

      v145 = 0;
      goto LABEL_41;
    }

    goto LABEL_12;
  }

  v21 = v0[33];
  sub_229564F88(v0[40], v0[44], &qword_27D87EBB0, &qword_22A57C720);
  v22 = v18(v11 + v17, 1, v21);
  v24 = v0[45];
  v23 = v0[46];
  v25 = v0[44];
  if (v22 == 1)
  {
    sub_22953EAE4(v0[45], &qword_27D87EBB0, &qword_22A57C720);
    sub_22953EAE4(v23, &qword_27D87EBB0, &qword_22A57C720);
    sub_229696360(v25);
LABEL_12:
    sub_22953EAE4(v0[40], &qword_27D87E890, &qword_22A57C718);
    goto LABEL_13;
  }

  v56 = v0[40];
  v57 = v0[38];
  sub_2296986F8(v11 + v17, v57);
  v58 = sub_229698FEC(v25, v57);
  sub_229696360(v57);
  sub_22953EAE4(v24, &qword_27D87EBB0, &qword_22A57C720);
  sub_22953EAE4(v23, &qword_27D87EBB0, &qword_22A57C720);
  sub_229696360(v25);
  sub_22953EAE4(v56, &qword_27D87EBB0, &qword_22A57C720);
  if (v58)
  {
    goto LABEL_19;
  }

LABEL_13:
  v26 = v0[43];
  v28 = v0[32];
  v27 = v0[33];
  v29 = v0[21];
  v30 = v0[19];
  v31 = *(v0[27] + 16);
  v31(v28, v0[20], v0[26]);
  sub_229696298(v30, v26);
  v139(v26, 0, 1, v27);
  swift_beginAccess();
  sub_229891054(v26, v28);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer;
  swift_beginAccess();
  sub_229564F88(v29 + v32, (v0 + 2), &qword_27D87EA00, &qword_22A579B80);
  v33 = v0[5];
  sub_22953EAE4((v0 + 2), &qword_27D87EA00, &qword_22A579B80);
  if (v33)
  {
    if (qword_27D87B9A0 != -1)
    {
      swift_once();
    }

    v34 = v0[36];
    v35 = v0[30];
    v36 = v0[26];
    v38 = v0[19];
    v37 = v0[20];
    v39 = sub_22A4DD07C();
    __swift_project_value_buffer(v39, qword_27D87EB40);
    sub_229696298(v38, v34);
    v31(v35, v37, v36);
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCCC();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[36];
    v44 = v0[30];
    v46 = v0[26];
    v45 = v0[27];
    if (v42)
    {
      v47 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v146 = v143;
      *v47 = 136315650;
      *(v47 + 4) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A590650, &v146);
      *(v47 + 12) = 2080;
      v48 = sub_229698D5C();
      v50 = v49;
      sub_229696360(v43);
      v51 = sub_2295A3E30(v48, v50, &v146);

      *(v47 + 14) = v51;
      *(v47 + 22) = 2080;
      sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v52 = sub_22A4DE5CC();
      v54 = v53;
      (*(v45 + 8))(v44, v46);
      v55 = sub_2295A3E30(v52, v54, &v146);

      *(v47 + 24) = v55;
      _os_log_impl(&dword_229538000, v40, v41, "%s - Writing pending update %s for room %s on next timer fire", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v143, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
      sub_229696360(v43);
    }
  }

  else
  {
    v82 = v0[24];
    v83 = v0[22];
    v84 = v0[23];
    v85 = v0[21];
    v86 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_lastWriteDate;
    swift_beginAccess();
    (*(v84 + 16))(v82, v85 + v86, v83);
    sub_22A4DB6DC();
    v87 = *(v84 + 8);
    v87(v82, v83);
    v88 = [*(v85 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_dateProvider) now];
    sub_22A4DB70C();

    sub_22A4DB69C();
    v90 = v89;
    v144 = v87;
    v87(v82, v83);
    if (v90 < 0.0)
    {
      v90 = 1.0;
    }

    if (qword_27D87B9A0 != -1)
    {
      swift_once();
    }

    v91 = v0[37];
    v92 = v0[31];
    v93 = v0[26];
    v95 = v0[19];
    v94 = v0[20];
    v96 = sub_22A4DD07C();
    __swift_project_value_buffer(v96, qword_27D87EB40);
    sub_229696298(v95, v91);
    v31(v92, v94, v93);
    v97 = sub_22A4DD05C();
    v98 = sub_22A4DDCCC();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v0[37];
    v101 = v0[31];
    v102 = v0[26];
    v103 = v0[27];
    if (v99)
    {
      v104 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v146 = v141;
      *v104 = 136315906;
      *(v104 + 4) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A590650, &v146);
      *(v104 + 12) = 2048;
      *(v104 + 14) = v90;
      *(v104 + 22) = 2080;
      v105 = sub_229698D5C();
      v107 = v106;
      sub_229696360(v100);
      v108 = sub_2295A3E30(v105, v107, &v146);

      *(v104 + 24) = v108;
      *(v104 + 32) = 2080;
      sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v109 = sub_22A4DE5CC();
      v111 = v110;
      (*(v103 + 8))(v101, v102);
      v112 = sub_2295A3E30(v109, v111, &v146);

      *(v104 + 34) = v112;
      _os_log_impl(&dword_229538000, v97, v98, "%s - Starting timer for %f seconds to write pending update %s for room %s", v104, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v141, -1, -1);
      MEMORY[0x22AAD4E50](v104, -1, -1);
    }

    else
    {

      (*(v103 + 8))(v101, v102);
      sub_229696360(v100);
    }

    v118 = v0[25];
    v119 = v0[22];
    sub_2296A66C8(v90);
    v144(v118, v119);
  }

  v145 = 1;
LABEL_41:

  v134 = v0[1];

  return v134(v145);
}

uint64_t sub_2296A66C8(double a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider), *(v1 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider + 24));
  sub_22A4DE88C();
  sub_22A4DD98C();
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  swift_allocObject();
  swift_weakInit();
  v10[3] = swift_getAssociatedTypeWitness();
  v10[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v10);

  sub_22A4DBAFC();

  sub_22953EAE4(v5, &unk_27D87D8F0, &qword_22A578D70);

  v7 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer;
  swift_beginAccess();
  sub_22953ED1C(v10, v2 + v7);
  return swift_endAccess();
}

uint64_t sub_2296A68E8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  _s13PresenceStateOMa(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A6978, v1, 0);
}

uint64_t sub_2296A6978()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[9] = *(v2 + 112);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;

  return MEMORY[0x2822009F8](sub_2296A6A3C, 0, 0);
}

uint64_t sub_2296A6A3C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_task_alloc();
  v0[11] = v3;
  v3[2] = v2;
  v3[3] = sub_2296A71C8;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBA8, &qword_22A57CEF8);
  *v4 = v0;
  v4[1] = sub_2296A6B58;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_2296A98F4, v3, v5);
}

uint64_t sub_2296A6B58()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2296A6CAC, 0, 0);
  }

  else
  {

    v3 = v2[5];

    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_2296A6CAC()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2296A6D20, v1, 0);
}

uint64_t sub_2296A6D20()
{
  v25 = v0;
  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D87EB40);

  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_2295A3E30(0xD000000000000014, 0x800000022A590600, &v24);
    *(v8 + 12) = 2080;
    v11 = sub_22A4DB7DC();
    v12 = MEMORY[0x22AAD0A20](v7, v11);
    v14 = sub_2295A3E30(v12, v13, &v24);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    v15 = v6;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&dword_229538000, v4, v5, "%s - Failed to get presence state for roomUUIDs: %s with error: %@", v8, 0x20u);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v17 = v0[13];
  v18 = v0[8];
  v19 = v0[6];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  (*(*(v20 - 8) + 56))(v18, 1, 2, v20);
  v21 = sub_2296A5240(v18, *(v19 + 16));

  v22 = v0[1];

  return v22(v21);
}

uint64_t sub_2296A6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a2;
  v5 = _s13PresenceStateOMa(0);
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v17 = a3;
    v19 = MEMORY[0x277D84F90];
    sub_2295838DC(0, v10, 0);
    v11 = v19;
    v12 = *(sub_22A4DB7DC() - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      sub_2296A71E4(v13, v18, v9);
      v19 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2295838DC((v15 > 1), v16 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v16 + 1;
      result = sub_2296986F8(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16);
      v13 += v14;
      --v10;
    }

    while (v10);
    a3 = v17;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_2296A71E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v46[-v12];
  if (*(a2 + 16))
  {
    v14 = sub_2296DBEC0(a1);
    if (v15)
    {
      v16 = v14;
      v17 = a3;
      v18 = *(a2 + 56);
      v19 = _s13PresenceStateOMa(0);
      return sub_229696298(v18 + *(*(v19 - 8) + 72) * v16, v17);
    }
  }

  v21 = objc_opt_self();
  v22 = sub_22A4DB77C();
  v23 = [v21 findRoomWithModelID_];

  if (v23)
  {
    v24 = [v23 localPresence];
    if (v24)
    {
      sub_2296A77F0(v24, a3);
      return swift_unknownObjectRelease();
    }

    v49 = v3;
    if (qword_27D87B9A0 != -1)
    {
      swift_once();
    }

    v35 = sub_22A4DD07C();
    __swift_project_value_buffer(v35, qword_27D87EB40);
    (*(v8 + 16))(v13, a1, v7);
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCCC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50 = v48;
      *v38 = 136315394;
      *(v38 + 4) = sub_2295A3E30(0xD000000000000014, 0x800000022A590600, &v50);
      *(v38 + 12) = 2080;
      sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v47 = v37;
      v39 = sub_22A4DE5CC();
      v40 = a3;
      v42 = v41;
      (*(v8 + 8))(v13, v7);
      v43 = sub_2295A3E30(v39, v42, &v50);
      a3 = v40;

      *(v38 + 14) = v43;
      _os_log_impl(&dword_229538000, v36, v47, "%s - MKFRoomPresence is not set for roomUUID: %s", v38, 0x16u);
      v44 = v48;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v44, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    if (qword_27D87B9A0 != -1)
    {
      swift_once();
    }

    v25 = sub_22A4DD07C();
    __swift_project_value_buffer(v25, qword_27D87EB40);
    (*(v8 + 16))(v11, a1, v7);
    v26 = sub_22A4DD05C();
    v27 = sub_22A4DDCEC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v3;
      v50 = v48;
      *v28 = 136315394;
      *(v28 + 4) = sub_2295A3E30(0xD000000000000014, 0x800000022A590600, &v50);
      *(v28 + 12) = 2080;
      sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = a3;
      v30 = sub_22A4DE5CC();
      v32 = v31;
      (*(v8 + 8))(v11, v7);
      v33 = sub_2295A3E30(v30, v32, &v50);

      *(v28 + 14) = v33;
      a3 = v29;
      _os_log_impl(&dword_229538000, v26, v27, "%s - Cannot find MKFRoom with roomUUID: %s", v28, 0x16u);
      v34 = v48;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  return (*(*(v45 - 8) + 56))(a3, 1, 2, v45);
}

uint64_t sub_2296A77F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = [a1 state];
  if (!v8)
  {
LABEL_13:
    swift_unknownObjectRelease();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v12 = *(*(v29 - 8) + 56);
    v13 = v29;
    v14 = a2;
    v15 = 1;
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 unsignedIntegerValue];
  if (v10 == 1)
  {
    v16 = [a1 stateChangedTimestamp];
    if (v16)
    {
      v17 = v16;
      sub_22A4DB70C();

      swift_unknownObjectRelease();
      (*(v5 + 32))(a2, v7, v4);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
      return (*(*(v18 - 8) + 56))(a2, 0, 2, v18);
    }

    goto LABEL_13;
  }

  if (v10 == 2)
  {
    swift_unknownObjectRelease();

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a2;
    v15 = 2;
LABEL_14:

    return v12(v14, v15, 2, v13);
  }

  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v20 = sub_22A4DD07C();
  __swift_project_value_buffer(v20, qword_27D87EB40);
  swift_unknownObjectRetain();
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCEC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_2295A3E30(0x6F72662874696E69, 0xEB00000000293A6DLL, &v31);
    *(v23 + 12) = 2080;
    v30 = a1;
    swift_unknownObjectRetain();
    v25 = sub_22A4DD64C();
    v27 = sub_2295A3E30(v25, v26, &v31);

    *(v23 + 14) = v27;
    _os_log_impl(&dword_229538000, v21, v22, "%s - Invalid presenceState in MKFRoomPresence: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  swift_unknownObjectRelease();

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  return (*(*(v28 - 8) + 56))(a2, 1, 2, v28);
}

uint64_t sub_2296A7C44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_2296A7D2C;

    return sub_2296A7E28();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2296A7D2C()
{

  return MEMORY[0x2822009F8](sub_2295CA758, 0, 0);
}

uint64_t sub_2296A7E48()
{
  v17 = v0;
  *(v0 + 16) = 0u;
  v1 = *(v0 + 112);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v2 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer;
  swift_beginAccess();
  sub_22953ED1C(v0 + 16, v1 + v2);
  swift_endAccess();
  v3 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = MEMORY[0x277D84F98];
  *(v0 + 120) = v4;
  *(v1 + v3) = v5;
  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D87EB40);

  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2295A3E30(0xD000000000000012, 0x800000022A590670, &v16);
    *(v9 + 12) = 2080;
    *(v0 + 104) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB8, &qword_22A57CF28);
    v11 = sub_22A4DBA6C();
    v13 = sub_2295A3E30(v11, v12, &v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_229538000, v7, v8, "%s - Debounce timer fired: saving pending updates: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  v14[1] = sub_2296A80E0;

  return sub_2296A81F0(v4);
}

uint64_t sub_2296A80E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2296A81F0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22A4DB74C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296A82B0, v1, 0);
}

uint64_t sub_2296A82B0()
{
  v1 = v0[7];
  v2 = v0[8];
  v0[12] = *(v2 + 112);
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return MEMORY[0x2822009F8](sub_2296A8354, 0, 0);
}

uint64_t sub_2296A8354()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = swift_task_alloc();
  v0[14] = v3;
  v3[2] = v2;
  v3[3] = sub_2296A99E0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_2296A845C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v5);
}

uint64_t sub_2296A845C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2296A87F8;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 64);

    v3 = sub_2296A858C;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2296A858C()
{
  v19 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = [*(v4 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_dateProvider) now];
  sub_22A4DB70C();

  v6 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_lastWriteDate;
  swift_beginAccess();
  (*(v2 + 40))(v4 + v6, v1, v3);
  swift_endAccess();
  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D87EB40);

  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_2295A3E30(0xD000000000000016, 0x800000022A590690, &v18);
    *(v11 + 12) = 2080;
    v0[6] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB8, &qword_22A57CF28);
    v13 = sub_22A4DBA6C();
    v15 = sub_2295A3E30(v13, v14, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_229538000, v8, v9, "%s - Updated presence states: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_2296A87F8()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_2296A886C, v1, 0);
}

uint64_t sub_2296A886C()
{
  v20 = v0;
  if (qword_27D87B9A0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D87EB40);

  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_2295A3E30(0xD000000000000016, 0x800000022A590690, &v19);
    *(v9 + 12) = 2080;
    v0[5] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB8, &qword_22A57CF28);
    v12 = sub_22A4DBA6C();
    v14 = sub_2295A3E30(v12, v13, &v19);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v16;
    *v10 = v16;
    _os_log_impl(&dword_229538000, v4, v5, "%s - Failed to update presence state: %s with error: %@", v9, 0x20u);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

void sub_2296A8AF0(uint64_t a1, uint64_t a2)
{
  v67[1] = a2;
  v3 = _s13PresenceStateOMa(0);
  v77 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = v67 - v7;
  v8 = sub_22A4DB7DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v67 - v13;
  MEMORY[0x28223BE20](v12);
  v80 = v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EBC0, &qword_22A57CBA0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v83 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v67 - v19;
  v21 = *(a1 + 64);
  v74 = a1 + 64;
  v75 = v9;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v73 = (v22 + 63) >> 6;
  v82 = (v9 + 16);
  v86 = (v9 + 32);
  v84 = (v9 + 8);
  v69 = "handleTimerFired()";
  v78 = a1;

  v25 = 0;
  *&v26 = 136315394;
  v68 = v26;
  v81 = v6;
  v79 = v20;
  v88 = v14;
  while (v24)
  {
    v28 = v25;
LABEL_15:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v28 << 6);
    v34 = v78;
    v35 = v75;
    v36 = v80;
    (*(v75 + 16))(v80, *(v78 + 48) + *(v75 + 72) * v33, v8);
    v37 = v76;
    sub_229696298(*(v34 + 56) + *(v77 + 72) * v33, v76);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
    v39 = *(v38 + 48);
    v40 = *(v35 + 32);
    v31 = v83;
    v41 = v36;
    v42 = v8;
    v40(v83, v41, v8);
    sub_2296986F8(v37, v31 + v39);
    (*(*(v38 - 8) + 56))(v31, 0, 1, v38);
    v30 = v28;
    v6 = v81;
LABEL_16:
    v43 = v79;
    sub_229698818(v31, v79);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {

      v66 = v85;
      sub_2297082C0();
      v85 = v66;
      return;
    }

    v87 = v30;
    v45 = *(v44 + 48);
    (*v86)(v88, v43, v42);
    sub_2296986F8(v43 + v45, v6);
    v46 = objc_opt_self();
    v47 = sub_22A4DB77C();
    v48 = [v46 findRoomWithModelID_];

    if (v48)
    {
      if (![v48 localPresence])
      {
        v49 = v80;
        sub_22A4DB7CC();
        v50 = sub_22A4DB77C();
        (*v84)(v49, v42);
        v51 = [v48 materializeOrCreateLocalPresenceRelationWithModelID:v50 createdNew:0];
      }

      swift_getObjectType();
      v52 = v85;
      sub_2296A9398(v6);
      v85 = v52;
      if (v52)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_229696360(v6);
        (*v84)(v88, v42);
        return;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_229696360(v6);
      v8 = v42;
      (*v84)(v88, v42);
    }

    else
    {
      v53 = v72;
      if (qword_27D87B9A0 != -1)
      {
        swift_once();
      }

      v54 = sub_22A4DD07C();
      __swift_project_value_buffer(v54, qword_27D87EB40);
      v55 = v88;
      v8 = v42;
      (*v82)(v53, v88, v42);
      v56 = sub_22A4DD05C();
      v57 = sub_22A4DDCEC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v89 = v71;
        *v58 = v68;
        *(v58 + 4) = sub_2295A3E30(0xD000000000000016, v69 | 0x8000000000000000, &v89);
        *(v58 + 12) = 2080;
        sub_2296A99FC(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v70 = v57;
        v59 = sub_22A4DE5CC();
        v61 = v60;
        v62 = *v84;
        (*v84)(v53, v42);
        v63 = sub_2295A3E30(v59, v61, &v89);

        *(v58 + 14) = v63;
        _os_log_impl(&dword_229538000, v56, v70, "%s - Cannot find MKFRoom with roomUUID: %s", v58, 0x16u);
        v64 = v71;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v64, -1, -1);
        MEMORY[0x22AAD4E50](v58, -1, -1);

        v6 = v81;
        sub_229696360(v81);
        v62(v88, v42);
      }

      else
      {

        v27 = *v84;
        (*v84)(v53, v42);
        v6 = v81;
        sub_229696360(v81);
        v27(v55, v42);
      }
    }

    v25 = v87;
  }

  if (v73 <= v25 + 1)
  {
    v29 = v25 + 1;
  }

  else
  {
    v29 = v73;
  }

  v30 = v29 - 1;
  v31 = v83;
  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v28 >= v73)
    {
      v42 = v8;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA40, &qword_22A57CBA8);
      (*(*(v65 - 8) + 56))(v31, 1, 1, v65);
      v24 = 0;
      goto LABEL_16;
    }

    v24 = *(v74 + 8 * v28);
    ++v25;
    if (v24)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_2296A9398(uint64_t a1)
{
  v45 = sub_22A4DB74C();
  v48 = *(v45 - 8);
  v3 = MEMORY[0x28223BE20](v45);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v41 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = _s13PresenceStateOMa(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v47 = a1;
  sub_229696298(a1, &v41 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v46 = *(*(v20 - 8) + 48);
  v21 = v46(v19, 2, v20);
  if (v21)
  {
    if (v21 == 1)
    {
      v22 = objc_opt_self();
      v23 = sub_22A4DD5AC();
      [v22 hmErrorWithCode:3 description:0 reason:v23 suggestion:0];

      return swift_willThrow();
    }

    else
    {
      sub_229696298(v47, v14);
      if (!v46(v14, 2, v20))
      {
        (*(v48 + 8))(v14, v45);
      }

      v36 = sub_22A4DDFDC();
      [v1 setState_];

      return [v1 setStateChangedTimestamp_];
    }
  }

  else
  {
    v42 = v8;
    v43 = v17;
    v25 = v45;
    v26 = *(v48 + 32);
    v44 = v10;
    v26(v10, v19, v45);
    v27 = v1;
    v28 = [v1 stateChangedTimestamp];
    if (v28)
    {
      v29 = v26;
      v30 = v28;
      sub_22A4DB70C();

      v31 = v42;
      v29(v42, v5, v25);
      v32 = [v27 state];
      if (v32)
      {
        v33 = v32;
        if ([v32 unsignedIntegerValue] == 1)
        {
          sub_2296A99FC(&unk_27D87EBD0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v34 = sub_22A4DD53C();

          v35 = *(v48 + 8);
          v35(v31, v25);
          if (v34)
          {
            return (v35)(v44, v25);
          }
        }

        else
        {
          (*(v48 + 8))(v31, v25);
        }
      }

      else
      {
        (*(v48 + 8))(v31, v25);
      }
    }

    v37 = v43;
    sub_229696298(v47, v43);
    if (!v46(v37, 2, v20))
    {
      (*(v48 + 8))(v37, v25);
    }

    v38 = v44;
    v39 = sub_22A4DDFDC();
    [v27 setState_];

    v40 = sub_22A4DB6AC();
    [v27 setStateChangedTimestamp_];

    return (*(v48 + 8))(v38, v25);
  }
}

uint64_t sub_2296A9900()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_229569B30;

  return sub_2296A7C24(v0);
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2296A99FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2296A9A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v10 = sub_22A4DD5EC();
  if (*(a1 + 16))
  {
    v12 = sub_229543DBC(v10, v11);
    v14 = v13;

    if (v14)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v12, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v15 = sub_22A4DB74C();
      v16 = swift_dynamicCast();
      (*(*(v15 - 8) + 56))(v9, v16 ^ 1u, 1, v15);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = sub_22A4DB74C();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
LABEL_6:
  v18 = sub_22A4DD5EC();
  if (!*(a1 + 16))
  {

    goto LABEL_11;
  }

  v20 = sub_229543DBC(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v20, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v24 = 0;
    v23 = 1;
    goto LABEL_13;
  }

  v23 = 0;
  v24 = v28[1];
LABEL_13:
  sub_22966901C(v9, v7);
  v25 = sub_22A4DB74C();
  (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  v26 = a2 + *(_s21MobileAssetUpdateInfoVMa(0) + 20);
  sub_2296690E8(v7, a2);
  *v26 = v24;
  *(v26 + 8) = v23;
  return sub_2296224D4(v9);
}

unint64_t sub_2296A9D18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v3;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_22966901C(v1, boxed_opaque_existential_1);
  *(inited + 80) = sub_22A4DD5EC();
  *(inited + 88) = v5;
  v6 = v1 + *(_s21MobileAssetUpdateInfoVMa(0) + 20);
  v7 = *v6;
  v8 = *(v6 + 8);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EBE0, &qword_22A57CF58);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  *(inited + 96) = v9;
  *(inited + 104) = v8;
  v10 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v10;
}

uint64_t _s21MobileAssetUpdateInfoVMa(uint64_t a1)
{
  result = qword_2814026B8;
  if (!qword_2814026B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296A9EC0(uint64_t a1)
{
  sub_2296A9F44(319);
  if (v1 <= 0x3F)
  {
    sub_2296A9F9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2296A9F44(uint64_t a1)
{
  if (!qword_281403888)
  {
    sub_22A4DB74C();
    v1 = sub_22A4DDF9C();
    if (!v2)
    {
      atomic_store(v1, &qword_281403888);
    }
  }
}

void sub_2296A9F9C()
{
  if (!qword_281402630[0])
  {
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, qword_281402630);
    }
  }
}

uint64_t sub_2296A9FEC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EC78, &qword_22A57CFB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  if ([a1 response])
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v50 = v2;
      v51 = v6;
      v52 = v5;
      v53 = v9;
      v17 = v16;
      v18 = [v16 tracklist];
      v19 = [v18 shuffleType];

      v20 = mapToHMMediaShuffleState(v19);
      v21 = [v17 tracklist];
      v22 = [v21 repeatType];

      v23 = mapToHMMediaShuffleState(v22);
      v24 = [v17 tracklist];
      v25 = [v24 uniqueIdentifier];

      v26 = sub_22A4DD5EC();
      v28 = v27;

      LOBYTE(v54) = 1;
      *&v58 = 0;
      *(&v58 + 1) = v20;
      v59 = v23;
      *v60 = 0;
      v60[4] = 1;
      *&v60[8] = v26;
      *&v60[16] = v28;
      v61[0] = 0;
      v61[1] = v20;
      v61[2] = v23;
      v61[3] = 0;
      v62 = 0;
      v63 = 1;
      v64 = v26;
      v65 = v28;
      sub_2295F59D4(&v58, v56);
      sub_229588CF8(v61);
      sub_229541CB0(ObjectType, &off_283CDFBF8);
      sub_2295F59D4(&v58, v56);
      v29 = sub_22A4DD05C();
      v30 = sub_22A4DDCCC();
      sub_229588CF8(&v58);
      if (!os_log_type_enabled(v29, v30))
      {
LABEL_29:

        (*(v10 + 8))(v15, v53);
        v47 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EC80, &qword_22A57CFC0);
        v56[0] = v58;
        v56[1] = v59;
        v56[2] = *v60;
        v57 = *&v60[16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EC88, &qword_22A57CFC8);
        sub_22A4DDA0C();
        swift_unknownObjectRelease();
        return (*(v51 + 8))(v8, v47);
      }

      v31 = 0x6E776F6E6B6E55;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v55 = v33;
      *v32 = 136315650;
      v49 = v33;
      if (*(&v58 + 1) > 1)
      {
        if (*(&v58 + 1) != 2)
        {
          if (*(&v58 + 1) == 3)
          {
            v34 = 0xEB00000000736E6FLL;
            v35 = 0x697463656C6C6F43;
            goto LABEL_18;
          }

          goto LABEL_15;
        }

        v34 = 0xE500000000000000;
        v35 = 0x736D657449;
      }

      else
      {
        if (*(&v58 + 1))
        {
          if (*(&v58 + 1) == 1)
          {
            v34 = 0xE300000000000000;
            v35 = 6710863;
            goto LABEL_18;
          }

LABEL_15:
          v34 = 0xE700000000000000;
          v35 = 0x746C7561666564;
          goto LABEL_18;
        }

        v34 = 0xE700000000000000;
        v35 = 0x6E776F6E6B6E55;
      }

LABEL_18:
      v40 = sub_2295A3E30(v35, v34, &v55);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      if (v59 > 1)
      {
        if (v59 == 2)
        {
          v41 = 0xE300000000000000;
          v31 = 6647375;
          goto LABEL_28;
        }

        if (v59 == 3)
        {
          v41 = 0xE300000000000000;
          v31 = 7105601;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v59)
        {
          v41 = 0xE700000000000000;
          goto LABEL_28;
        }

        if (v59 == 1)
        {
          v41 = 0xE300000000000000;
          v31 = 6710863;
LABEL_28:
          v42 = sub_2295A3E30(v31, v41, &v55);

          *(v32 + 14) = v42;
          *(v32 + 22) = 2080;
          v54 = *&v60[8];
          sub_2295F59D4(&v58, v56);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
          v43 = sub_22A4DD64C();
          v45 = sub_2295A3E30(v43, v44, &v55);

          *(v32 + 24) = v45;
          _os_log_impl(&dword_229538000, v29, v30, "didFinishLoadingRequest     shuffleState: %s     repeatState: %s     mediaUniqueIdentifier: %s", v32, 0x20u);
          v46 = v49;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v46, -1, -1);
          MEMORY[0x22AAD4E50](v32, -1, -1);
          goto LABEL_29;
        }
      }

      v41 = 0xE700000000000000;
      v31 = 0x746C7561666564;
      goto LABEL_28;
    }

    swift_unknownObjectRelease();
  }

  sub_229541CB0(ObjectType, &off_283CDFBF8);
  v36 = sub_22A4DD05C();
  v37 = sub_22A4DDCEC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_229538000, v36, v37, "nil controller.response", v38, 2u);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t _s17MediaPlaybackCoreCMa(uint64_t a1)
{
  result = qword_27D87EC60;
  if (!qword_27D87EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296AA7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2296791B4(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2296AA8F4(uint64_t a1)
{
  sub_22A4DC29C();
  if (v1 <= 0x3F)
  {
    sub_2296B2580(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2296AA9E4(uint64_t a1)
{
  sub_22A4DC29C();
  if (v1 <= 0x3F)
  {
    sub_2296B2580(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2296B2580(319, &qword_27D87ECC0, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2296AAAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  sub_2296AF1D0(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22967B128(v5, a1);
  }

  sub_22A4DC28C();
  v9 = *(v7 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_27D87DF28;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_22953EAE4(v5, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}