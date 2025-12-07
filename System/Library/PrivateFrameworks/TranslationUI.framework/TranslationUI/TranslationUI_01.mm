unint64_t sub_26F3BDC0C()
{
  result = qword_280F66BA0[0];
  if (!qword_280F66BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F66BA0);
  }

  return result;
}

unint64_t sub_26F3BDC64()
{
  result = qword_2806DED20;
  if (!qword_2806DED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DED20);
  }

  return result;
}

unint64_t sub_26F3BDCBC()
{
  result = qword_2806DED28;
  if (!qword_2806DED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DED28);
  }

  return result;
}

unint64_t sub_26F3BDD14()
{
  result = qword_2806DED30;
  if (!qword_2806DED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DED30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsLogger.InteractionLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreAnalyticsLogger.InteractionLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F3BDF38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
    v3 = sub_26F4A0288();
    v4 = a1 + 32;

    while (1)
    {
      sub_26F3B8DD4(v4, &v11, &qword_2806DF000, &qword_26F4A2F40);
      v5 = v11;
      result = sub_26F45FE00(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26F3BE15C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F3BE060(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED38, &qword_26F4A2F30);
    v3 = sub_26F4A0288();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26F45FD88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_26F3BE15C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26F3BE194()
{
  result = qword_2806DED48;
  if (!qword_2806DED48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806DED48);
  }

  return result;
}

unint64_t sub_26F3BE1E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED78, &qword_26F4A2F78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFC0, &unk_26F4A2F80);
    v7 = sub_26F4A0288();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26F3B8DD4(v9, v5, &qword_2806DED78, &qword_26F4A2F78);
      result = sub_26F45FF48(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26F49D968();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
      result = sub_26F3BEFCC(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F3BE3F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED68, &qword_26F4A2F68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED70, &qword_26F4A2F70);
    v7 = sub_26F4A0288();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26F3B8DD4(v9, v5, &qword_2806DED68, &qword_26F4A2F68);
      result = sub_26F45FE94(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TextModel(0);
      sub_26F3BEF64(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for TextModel);
      v16 = v7[7];
      v17 = sub_26F49D968();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F3BE610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED88, &qword_26F4A2F90);
    v3 = sub_26F4A0288();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26F45FD88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26F3BE714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED60, &qword_26F4A2F58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFA0, &qword_26F4A2F60);
    v7 = sub_26F4A0288();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26F3B8DD4(v9, v5, &qword_2806DED60, &qword_26F4A2F58);
      result = sub_26F45FF48(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26F49D968();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for VisualTranslationModel(0);
      result = sub_26F3BEF64(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for VisualTranslationModel);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_26F3BE930(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_26F3BD9D8(MEMORY[0x277D84F90]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v67 = a1;

  v8 = 0;
  v66 = a1 + 64;
  while (v6)
  {
    v12 = v8;
LABEL_17:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v67 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_26F3B2DBC(*(v67 + 56) + 32 * v16, v70);
    *&v71 = v19;
    *(&v71 + 1) = v18;
    sub_26F3BE15C(v70, &v72);

    v14 = v12;
LABEL_18:
    v74 = v71;
    v75[0] = v72;
    v75[1] = v73;
    v20 = *(&v71 + 1);
    if (!*(&v71 + 1))
    {

      return v2;
    }

    v21 = v74;
    sub_26F3BE15C(v75, &v71);
    sub_26F3B2DBC(&v71, v70);
    if (swift_dynamicCast())
    {
      v8 = v14;
      v22 = sub_26F49F898();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v2;
      v24 = v21;
      v25 = sub_26F45FD88(v21, v20);
      v27 = v2[2];
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_52;
      }

      v31 = v26;
      if (v2[3] < v30)
      {
        sub_26F3C4F14(v30, isUniquelyReferenced_nonNull_native);
        v25 = sub_26F45FD88(v24, v20);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_56;
        }

        goto LABEL_34;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_34:
        if (v31)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v60 = v25;
        sub_26F3C6B90();
        v25 = v60;
        if (v31)
        {
LABEL_5:
          v9 = v25;

          v2 = *&v70[0];
          v10 = *(*&v70[0] + 56);
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v22;

LABEL_6:
          __swift_destroy_boxed_opaque_existential_0(&v71);
          goto LABEL_7;
        }
      }

      v2 = *&v70[0];
      *(*&v70[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v54 = (v2[6] + 16 * v25);
      *v54 = v24;
      v54[1] = v20;
      *(v2[7] + 8 * v25) = v22;
      __swift_destroy_boxed_opaque_existential_0(&v71);
      v55 = v2[2];
      v29 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v29)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    sub_26F3B2DBC(&v71, v70);
    sub_26F3BE194();
    if (swift_dynamicCast())
    {
      v8 = v14;
      v33 = v68;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *&v70[0] = v2;
      v35 = v21;
      v36 = sub_26F45FD88(v21, v20);
      v38 = v2[2];
      v39 = (v37 & 1) == 0;
      v29 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v29)
      {
        goto LABEL_53;
      }

      v41 = v37;
      if (v2[3] >= v40)
      {
        if ((v34 & 1) == 0)
        {
          v61 = v36;
          sub_26F3C6B90();
          v36 = v61;
          if (v41)
          {
LABEL_42:
            v57 = v36;

            v2 = *&v70[0];
            v58 = *(*&v70[0] + 56);
            v59 = *(v58 + 8 * v57);
            *(v58 + 8 * v57) = v33;

            goto LABEL_6;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_26F3C4F14(v40, v34);
        v36 = sub_26F45FD88(v35, v20);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_56;
        }
      }

      if (v41)
      {
        goto LABEL_42;
      }

LABEL_46:
      v2 = *&v70[0];
      *(*&v70[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
      v62 = (v2[6] + 16 * v36);
      *v62 = v35;
      v62[1] = v20;
      *(v2[7] + 8 * v36) = v33;

      __swift_destroy_boxed_opaque_existential_0(&v71);
      v63 = v2[2];
      v29 = __OFADD__(v63, 1);
      v56 = v63 + 1;
      if (v29)
      {
        goto LABEL_55;
      }

LABEL_47:
      v2[2] = v56;
LABEL_7:
      v3 = v66;
    }

    else
    {
      v43 = v21;
      if (qword_2806DE778 != -1)
      {
        swift_once();
      }

      v44 = sub_26F49DCA8();
      __swift_project_value_buffer(v44, qword_2806EA878);
      sub_26F3B2DBC(&v71, v70);

      v45 = sub_26F49DC88();
      v46 = sub_26F49FDE8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v65 = v14;
        v48 = swift_slowAlloc();
        v69 = v48;
        *v47 = 136446466;
        v49 = sub_26F3B38D0(v43, v20, &v69);

        *(v47 + 4) = v49;
        *(v47 + 12) = 2082;
        sub_26F3B2DBC(v70, &v68);
        v50 = sub_26F49F938();
        v52 = v51;
        __swift_destroy_boxed_opaque_existential_0(v70);
        v53 = sub_26F3B38D0(v50, v52, &v69);

        *(v47 + 14) = v53;
        _os_log_impl(&dword_26F39E000, v45, v46, "Failed to convert Swift value to NSObject in analytics dictionary for key %{public}s: %{public}s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x274391F70](v48, -1, -1);
        MEMORY[0x274391F70](v47, -1, -1);

        __swift_destroy_boxed_opaque_existential_0(&v71);
        v8 = v65;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v70);
        __swift_destroy_boxed_opaque_existential_0(&v71);
        v8 = v14;
      }
    }
  }

  if (v7 <= v8 + 1)
  {
    v13 = v8 + 1;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      v6 = 0;
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      goto LABEL_18;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_26F4A04A8();
  __break(1u);
  return result;
}

uint64_t sub_26F3BEF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F3BEFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3BF054(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_26F3BF0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26F3BF130@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB88, &qword_26F4A26A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB20, &qword_26F4A9FF0);
  v13 = *(v12 - 8);
  v29 = v12;
  v30 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  sub_26F49DF48();
  v16 = sub_26F49DF68();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  v27 = a3;
  v28 = a4;
  *(v17 + 40) = a4;

  sub_26F3ACF68(a3, a4);
  sub_26F49F388();
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_26F49EEC8();
  v22 = v21;
  LOBYTE(a4) = v23;
  v36 = a1;
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
  sub_26F49F368();
  v32 = a1;
  v33 = a2;
  v34 = v27;
  v35 = v28;
  sub_26F3BF764();
  v24 = v29;
  sub_26F49F038();

  sub_26F3B8D40(v20, v22, a4 & 1);

  return (*(v30 + 8))(v15, v24);
}

uint64_t sub_26F3BF4A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB88, &qword_26F4A26A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_26F49DF48();
  v11 = sub_26F49DF68();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  sub_26F3ACF68(a3, a4);
  return sub_26F49F388();
}

uint64_t sub_26F3BF60C@<X0>(uint64_t a1@<X8>)
{
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_26F49EEC8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_26F3BF764()
{
  result = qword_2806DEB28;
  if (!qword_2806DEB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEB20, &qword_26F4A9FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEB28);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26F3BF810()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t DetectableLanguagePicker.init(isDetected:selectedOption:preferredLocales:oppositeLocale:languageModels:sourceUsesOCR:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for DetectableLanguagePicker(0);
  v18 = v17[6];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_26F3BF978(a4, a9 + v17[5]);
  *(a9 + v18) = a5;
  v19 = v17[7];
  v20 = sub_26F49DAB8();
  result = (*(*(v20 - 8) + 32))(a9 + v19, a6, v20);
  *(a9 + v17[8]) = a7;
  *(a9 + v17[9]) = a8;
  return result;
}

uint64_t type metadata accessor for DetectableLanguagePicker(uint64_t a1)
{
  result = qword_2806DEDB0;
  if (!qword_2806DEDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3BF978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DetectableLanguagePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E6B8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA8, &qword_26F4A3058);
  return sub_26F3BFA3C(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_26F3BFA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDF0, &qword_26F4A3118);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v56 - v6;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v64 = *a1;
  v65 = v8;
  v66 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v63, v10);
  if (v63 == 1)
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_26F49D7D8();
    v15 = v14;

    v64 = v13;
    v65 = v15;
    sub_26F3BDC0C();
    v16 = sub_26F49EED8();
    v18 = v17;
    LOBYTE(v15) = v19;
    sub_26F49ED68();
    sub_26F49ECB8();

    v20 = sub_26F49EEA8();
    v22 = v21;
    v24 = v23;
    v60 = v25;

    sub_26F3B8D40(v16, v18, v15 & 1);

    sub_26F49F288();
    v26 = v22;
    v27 = sub_26F49EE68();
    v29 = v28;
    LODWORD(v59) = v30;
    v32 = v31;

    sub_26F3B8D40(v20, v26, v24 & 1);

    v33 = sub_26F49F5F8();
    v34 = v59;
    v35 = v59 & 1;
    v59 = v29;
    v60 = v27;
    sub_26F3B0EE4(v27, v29, v34 & 1);
    v58 = v32;

    v57 = v33;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v35 = 0;
    v57 = 0;
    v58 = 0;
  }

  v36 = type metadata accessor for DetectableLanguagePicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  sub_26F49F468();
  v37 = *(a1 + v36[6]);
  v38 = type metadata accessor for LIDOrLanguagePicker(0);
  v39 = v38[6];
  v40 = v36[7];
  v41 = sub_26F49DAB8();
  v42 = a1;
  v43 = *(v41 - 8);
  (*(v43 + 16))(&v7[v39], v42 + v40, v41);
  (*(v43 + 56))(&v7[v39], 0, 1, v41);
  v44 = v36[9];
  v45 = *(v42 + v36[8]);
  LOBYTE(v43) = *(v42 + v44);
  KeyPath = swift_getKeyPath();
  *&v7[v38[5]] = v37;
  *&v7[v38[7]] = v45;
  v7[v38[8]] = v43;
  v47 = &v7[v38[9]];
  *v47 = KeyPath;
  v47[8] = 0;
  v48 = v62;
  sub_26F3C040C(v7, v62);
  v50 = v60;
  v49 = v61;
  v52 = v58;
  v51 = v59;
  *v61 = v60;
  v49[1] = v51;
  v49[2] = v35;
  v49[3] = v52;
  v53 = v57;
  v49[4] = v57;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDF8, &qword_26F4A3148);
  sub_26F3C040C(v48, v49 + *(v54 + 48));

  sub_26F3C047C(v50, v51, v35, v52, v53);
  sub_26F3C04CC(v50, v51, v35, v52, v53);
  sub_26F3C051C(v7);
  sub_26F3C051C(v48);
  return sub_26F3C04CC(v50, v51, v35, v52, v53);
}

uint64_t sub_26F3BFEA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F49E6B8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA8, &qword_26F4A3058);
  return sub_26F3BFA3C(v1, (a1 + *(v3 + 44)));
}

uint64_t _s13TranslationUI24DetectableLanguagePickerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-v8];
  v10 = a1[1];
  v11 = *(a1 + 16);
  v27 = *a1;
  v28 = v10;
  v29 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v26);
  v13 = v26;
  v14 = a2[1];
  v15 = *(a2 + 16);
  v27 = *a2;
  v28 = v14;
  v29 = v15;
  MEMORY[0x274390240](&v26, v12);
  if (v13 != v26)
  {
    goto LABEL_10;
  }

  v16 = type metadata accessor for DetectableLanguagePicker(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  MEMORY[0x274390240]();
  MEMORY[0x274390240](v17);
  v18 = _s13TranslationUI14LanguageOptionO2eeoiySbAC_ACtFZ_0(v9, v6);
  sub_26F3C03B0(v6);
  sub_26F3C03B0(v9);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = v16[6];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_10;
    }

    v22 = sub_26F42DB78(v20, v21);

    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v21)
  {
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  if ((MEMORY[0x27438E800](a1 + v16[7], a2 + v16[7]) & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = sub_26F42DD8C(*(a1 + v16[8]), *(a2 + v16[8]));
  return v23 & 1;
}

void sub_26F3C0128(uint64_t a1)
{
  sub_26F3C02FC(319, &qword_2806DEDC0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_26F3C0240(319);
    if (v2 <= 0x3F)
    {
      sub_26F3C0298(319);
      if (v3 <= 0x3F)
      {
        sub_26F49DAB8();
        if (v4 <= 0x3F)
        {
          sub_26F3C02FC(319, &qword_280F656F8, &type metadata for LanguageModel, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F3C0240(uint64_t a1)
{
  if (!qword_2806DEDC8)
  {
    type metadata accessor for LanguageOption(255);
    v1 = sub_26F49F488();
    if (!v2)
    {
      atomic_store(v1, &qword_2806DEDC8);
    }
  }
}

void sub_26F3C0298(uint64_t a1)
{
  if (!qword_280F65708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEDD0, &qword_26F4A3100);
    v1 = sub_26F49FFC8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F65708);
    }
  }
}

void sub_26F3C02FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26F3C034C()
{
  result = qword_2806DEDD8;
  if (!qword_2806DEDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DEDE0, &qword_26F4A3108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEDD8);
  }

  return result;
}

uint64_t sub_26F3C03B0(uint64_t a1)
{
  v2 = type metadata accessor for LanguageOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3C040C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDF0, &qword_26F4A3118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_26F3C047C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_26F3B0EE4(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26F3C04CC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_26F3B8D40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26F3C051C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDF0, &qword_26F4A3118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *DisambiguationResultModel.disambiguableResult.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult);
  v2 = v1;
  return v1;
}

void sub_26F3C05B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  swift_beginAccess();
  *(v3 + v4) = v2;

  v5 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (*(v3 + v5))
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

double sub_26F3C064C()
{
  swift_beginAccess();

  return result;
}

void sub_26F3C0694(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

void (*sub_26F3C071C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26F3C0780;
}

void sub_26F3C0780(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    if (*(v4 + v5))
    {
      sub_26F3C3338();
    }

    else
    {
      sub_26F3C2694();
    }
  }
}

void sub_26F3C0808(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  if (v2)
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

uint64_t sub_26F3C086C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_26F3C08C0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  *(v1 + v3) = v2;
  if (v2)
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

uint64_t (*sub_26F3C0920(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_26F3C09A8;
}

void sub_26F3C09A8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(v3[3] + v3[4]))
    {
      sub_26F3C3338();
    }

    else
    {
      sub_26F3C2694();
    }
  }

  free(v3);
}

uint64_t sub_26F3C0AA8@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a4 = v6;
  return result;
}

uint64_t sub_26F3C0B38(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  v9 = v6;
  return sub_26F49DDB8();
}

uint64_t sub_26F3C0BC0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v3;
}

uint64_t sub_26F3C0C2C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE10, &qword_26F4A31A8);
  sub_26F49DD78();
  return swift_endAccess();
}

uint64_t sub_26F3C0CA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEF90, &qword_26F4A3650);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE10, &qword_26F4A31A8);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_26F3C0E38(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE10, &qword_26F4A31A8);
  sub_26F49DD78();
  return swift_endAccess();
}

_BYTE *DisambiguationResultModel.__allocating_init(disambiguableResult:excludedTypes:sourceLocale:targetLocale:globalAttributeProvider:linkAttributeProvider:userSelectionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = objc_allocWithZone(v10);
  v17 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  *&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes] = MEMORY[0x277D84F90];
  v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode] = 0;
  v18 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  *v18 = 0u;
  v18[1] = 0u;
  *&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult] = a1;
  v19 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider];
  *v19 = a5;
  v19[1] = a6;
  v20 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
  *v20 = a7;
  v20[1] = a8;
  swift_beginAccess();
  *&v16[v17] = a2;
  v21 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
  *v21 = a9;
  v21[1] = a10;
  v22 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  v23 = sub_26F49DAB8();
  v36 = *(v23 - 8);
  v24 = *(v36 + 16);
  v24(&v16[v22], a3, v23);
  v37 = v23;
  v24(&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale], a4, v23);
  v25 = a1;
  sub_26F3ACF68(a5, a6);
  sub_26F3ACF68(a7, a8);
  sub_26F3ACF68(a9, a10);
  v26 = [v25 sourceText];
  if (!v26)
  {
    sub_26F49F8C8();
    v26 = sub_26F49F898();
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  swift_beginAccess();
  v43 = v27;
  sub_26F3B0C24(0, &unk_280F65670, 0x277CCA898);
  sub_26F49DD68();
  swift_endAccess();
  v28 = [v25 targetText];
  if (!v28)
  {
    sub_26F49F8C8();
    v28 = sub_26F49F898();
  }

  v29 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  swift_beginAccess();
  v43 = v29;
  sub_26F49DD68();
  swift_endAccess();
  v42.receiver = v16;
  v42.super_class = v35;
  v30 = objc_msgSendSuper2(&v42, sel_init);
  [v25 setDelegate_];
  [v25 addObserver_];
  v31 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (v30[v31])
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }

  sub_26F3ACE98(a9, a10);
  sub_26F3ACE98(a7, a8);
  sub_26F3ACE98(a5, a6);

  v32 = *(v36 + 8);
  v32(a4, v37);
  v32(a3, v37);
  return v30;
}

_BYTE *DisambiguationResultModel.init(disambiguableResult:excludedTypes:sourceLocale:targetLocale:globalAttributeProvider:linkAttributeProvider:userSelectionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  *&v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes] = MEMORY[0x277D84F90];
  v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode] = 0;
  v16 = &v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  *v16 = 0u;
  v16[1] = 0u;
  *&v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult] = a1;
  v17 = &v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider];
  *v17 = a5;
  v17[1] = a6;
  v18 = &v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
  *v18 = a7;
  v18[1] = a8;
  swift_beginAccess();
  *&v10[v15] = a2;
  v19 = &v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
  *v19 = a9;
  v19[1] = a10;
  v20 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  v21 = sub_26F49DAB8();
  v33 = *(v21 - 8);
  v22 = *(v33 + 16);
  v22(&v10[v20], a3, v21);
  v34 = v21;
  v22(&v10[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale], a4, v21);
  v23 = a1;
  sub_26F3ACF68(a5, a6);
  sub_26F3ACF68(a7, a8);
  sub_26F3ACF68(a9, a10);
  v24 = [v23 sourceText];
  if (!v24)
  {
    sub_26F49F8C8();
    v24 = sub_26F49F898();
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  swift_beginAccess();
  v39 = v25;
  sub_26F3B0C24(0, &unk_280F65670, 0x277CCA898);
  sub_26F49DD68();
  swift_endAccess();
  v26 = [v23 targetText];
  if (!v26)
  {
    sub_26F49F8C8();
    v26 = sub_26F49F898();
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  swift_beginAccess();
  v39 = v27;
  sub_26F49DD68();
  swift_endAccess();
  v38.receiver = v10;
  v38.super_class = type metadata accessor for DisambiguationResultModel(0);
  v28 = objc_msgSendSuper2(&v38, sel_init);
  [v23 setDelegate_];
  [v23 addObserver_];
  v29 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (v28[v29])
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }

  sub_26F3ACE98(a9, a10);
  sub_26F3ACE98(a7, a8);
  sub_26F3ACE98(a5, a6);

  v30 = *(v33 + 8);
  v30(a4, v34);
  v30(a3, v34);
  return v28;
}

id DisambiguationResultModel.__allocating_init(withStaticSource:staticTarget:sourceLocale:targetLocale:globalAttributeProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = objc_allocWithZone(v8);
  v17 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  v18 = MEMORY[0x277D84F90];
  *&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes] = MEMORY[0x277D84F90];
  v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode] = 0;
  v19 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  *v19 = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  *&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult] = 0;
  v20 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider];
  *v20 = a7;
  v20[1] = a8;
  v21 = a7;
  v36 = a7;
  v22 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
  *v22 = 0;
  v22[1] = 0;
  swift_beginAccess();
  *&v16[v17] = v18;
  v23 = &v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  v25 = sub_26F49DAB8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(&v16[v24], a5, v25);
  v27(&v16[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale], a6, v25);
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);

  sub_26F3ACF68(v21, a8);
  v29 = sub_26F49F898();

  [v28 initWithString_];

  swift_beginAccess();
  sub_26F3B0C24(0, &unk_280F65670, 0x277CCA898);
  sub_26F49DD68();
  swift_endAccess();
  v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v31 = sub_26F49F898();

  v32 = [v30 initWithString_];

  swift_beginAccess();
  v41 = v32;
  sub_26F49DD68();
  swift_endAccess();
  v40.receiver = v16;
  v40.super_class = v38;
  v33 = objc_msgSendSuper2(&v40, sel_init);
  sub_26F3C2410();

  sub_26F3ACE98(v36, a8);
  v34 = *(v26 + 8);
  v34(a6, v25);
  v34(a5, v25);
  return v33;
}

id DisambiguationResultModel.init(withStaticSource:staticTarget:sourceLocale:targetLocale:globalAttributeProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  v14 = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes] = MEMORY[0x277D84F90];
  v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode] = 0;
  v15 = &v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource];
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  *&v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult] = 0;
  v16 = &v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider];
  *v16 = a7;
  v16[1] = a8;
  v17 = &v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
  *v17 = 0;
  v17[1] = 0;
  swift_beginAccess();
  *&v8[v13] = v14;
  v18 = &v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler];
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  v20 = sub_26F49DAB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v23 = &v8[v19];
  v24 = v20;
  v33 = v20;
  v22(v23, a5);
  (v22)(&v8[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale], a6, v24);
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);

  sub_26F3ACF68(a7, a8);
  v26 = sub_26F49F898();

  [v25 initWithString_];

  swift_beginAccess();
  sub_26F3B0C24(0, &unk_280F65670, 0x277CCA898);
  sub_26F49DD68();
  swift_endAccess();
  v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v28 = sub_26F49F898();

  v29 = [v27 initWithString_];

  swift_beginAccess();
  v37 = v29;
  sub_26F49DD68();
  swift_endAccess();
  v36.receiver = v8;
  v36.super_class = type metadata accessor for DisambiguationResultModel(0);
  v30 = objc_msgSendSuper2(&v36, sel_init);
  sub_26F3C2410();

  sub_26F3ACE98(a7, a8);
  v31 = *(v21 + 8);
  v31(a6, v33);
  v31(a5, v33);
  return v30;
}

void sub_26F3C1C70()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult);
  if (v1)
  {
    v2 = v1;
    [v2 setDelegate_];
    [v2 addObserver_];
    v3 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    if (*(v0 + v3))
    {
      sub_26F3C3338();
    }

    else
    {
      sub_26F3C2694();
    }
  }
}

uint64_t sub_26F3C1D0C(char *a1)
{
  v1 = *a1;
  v9 = *a1;
  v2 = sub_26F3C3D34(&v9);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v8 = v1;
  v5 = sub_26F3C39C4(v2, v4, &v8);

  if (*(v5 + 2))
  {
    v6 = *(v5 + 4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_26F3C1DAC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v55 = sub_26F49D968();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE38, &qword_26F4A31F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for DisambiguationLinkInfo(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult);
  if (!v14)
  {
    goto LABEL_18;
  }

  sub_26F3B8DD4(a1, v9, &qword_2806DEE38, &qword_26F4A31F8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26F3B6B4C(v9, &qword_2806DEE38, &qword_26F4A31F8);
LABEL_18:
    v25 = v56;
    *v56 = 0u;
    v25[1] = 0u;
    *(v25 + 32) = 1;
    return;
  }

  sub_26F3C8EE8(v9, v13, type metadata accessor for DisambiguationLinkInfo);
  v15 = v14;
  v16 = sub_26F49D928();
  v17 = [v15 sentenceWithUUID_];

  if (!v17)
  {
    sub_26F3C8084(v13);
LABEL_17:

    goto LABEL_18;
  }

  v18 = [v17 selectedTargetPhrase];
  if (!v18)
  {
    sub_26F3C8084(v13);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 links];
  v21 = sub_26F3B0C24(0, &qword_2806DEE40, 0x277CE1AF0);
  v22 = sub_26F49FAF8();

  if (v22 >> 62)
  {
LABEL_44:
    v23 = sub_26F4A00A8();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 < 1 || *&v13[*(v10 + 20)] >= v23)
  {
    sub_26F3C8084(v13);

LABEL_16:
    goto LABEL_17;
  }

  v48 = *&v13[*(v10 + 20)];
  v26 = [v15 sentences];
  sub_26F3B0C24(0, &qword_2806DEE48, 0x277CE1AE8);
  v27 = sub_26F49FAF8();

  v46 = v17;
  v47 = v15;
  v49 = v21;
  v50 = v19;
  v52 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
    v54 = sub_26F4A00A8();
  }

  else
  {
    v54 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v28 = 0;
  v21 = 0;
  v53 = v27 & 0xC000000000000001;
  v51 = v4 + 1;
  while (v54 != v10)
  {
    if (v53)
    {
      v29 = MEMORY[0x274390F80](v10, v27);
    }

    else
    {
      if (v10 >= *(v52 + 16))
      {
        goto LABEL_41;
      }

      v29 = *(v27 + 8 * v10 + 32);
    }

    v4 = v29;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v30 = [v29 UUID];
    sub_26F49D948();

    LOBYTE(v30) = sub_26F49D938();
    (*v51)(v6, v55);
    if (v30)
    {

      break;
    }

    v19 = v13;
    v13 = v27;
    v15 = [v4 sourceText];
    sub_26F49F8C8();

    v17 = sub_26F49F9B8();

    v31 = __OFADD__(v21, v17);
    v21 += v17;
    if (v31)
    {
      goto LABEL_42;
    }

    v32 = [v4 targetText];
    v15 = sub_26F49F8C8();

    v17 = sub_26F49F9B8();

    ++v10;
    v31 = __OFADD__(v28, v17);
    v28 += v17;
    v13 = v19;
    if (v31)
    {
      goto LABEL_43;
    }
  }

  v33 = v50;
  v34 = [v50 links];
  v35 = sub_26F49FAF8();

  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x274390F80](v48, v35);
  }

  else
  {
    if (v48 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v36 = *(v35 + 8 * v48 + 32);
  }

  v37 = v36;

  v38 = [v37 sourceRange];
  v40 = v39;
  v41 = [v37 targetRange];
  v43 = v42;

  sub_26F3C8084(v13);
  if (!__OFADD__(v38, v21))
  {
    if (!__OFADD__(v41, v28))
    {
      v44 = v56;
      *v56 = &v38[v21];
      *(v44 + 1) = v40;
      *(v44 + 2) = &v41[v28];
      *(v44 + 3) = v43;
      *(v44 + 32) = 0;
      return;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_26F3C2410()
{
  if (*&v0[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource + 8])
  {
    LOBYTE(v12) = 0;
    v1 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    v13 = v0[v1];
    v2 = sub_26F3C3DF8(&v12, &v13);
    LOBYTE(v12) = 1;
    v13 = v0[v1];
    v3 = sub_26F3C3DF8(&v12, &v13);
    v4 = sub_26F49F898();
    if (v2)
    {
      type metadata accessor for Key(0);
      sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key, &unk_26F4A20C4);
      v5 = sub_26F49F7E8();
    }

    else
    {
      v5 = 0;
    }

    v6 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString:v4 attributes:v5];

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v6;
    v7 = v0;
    sub_26F49DDB8();
    v8 = sub_26F49F898();
    if (v3)
    {
      type metadata accessor for Key(0);
      sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key, &unk_26F4A20C4);
      v9 = sub_26F49F7E8();
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString:v8 attributes:v9];

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v10;
    v11 = v7;
    sub_26F49DDB8();
  }
}

void sub_26F3C2694()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult];
  if (v2)
  {
    v3 = ObjectType;
    LOBYTE(aBlock) = 0;
    v4 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    v24 = v0[v4];
    v17 = v2;
    if (!sub_26F3C3DF8(&aBlock, &v24))
    {
      sub_26F3BDF38(MEMORY[0x277D84F90]);
    }

    LOBYTE(aBlock) = 1;
    v24 = v0[v4];
    if (!sub_26F3C3DF8(&aBlock, &v24))
    {
      sub_26F3BDF38(MEMORY[0x277D84F90]);
    }

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    type metadata accessor for Key(0);
    sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key, &unk_26F4A20C4);
    v7 = sub_26F49F7E8();

    v22 = sub_26F3C8F50;
    v23 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_26F3C3200;
    v21 = &block_descriptor_1;
    v8 = _Block_copy(&aBlock);

    v9 = [v17 generateAttributedStringForLocation:0 withGlobalAttributes:v7 attributeProvider:v8];
    _Block_release(v8);

    v10 = sub_26F49F7E8();

    v22 = sub_26F3C8F50;
    v23 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_26F3C3200;
    v21 = &block_descriptor_61;
    v11 = _Block_copy(&aBlock);

    v12 = [v17 generateAttributedStringForLocation:1 withGlobalAttributes:v10 attributeProvider:v11];
    _Block_release(v11);

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v9;
    v13 = v9;
    v14 = v0;
    sub_26F49DDB8();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v12;
    v15 = v14;
    v16 = v12;
    sub_26F49DDB8();
  }

  else
  {

    sub_26F3C2410();
  }
}

_BYTE *sub_26F3C2A6C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_26F49F918();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for DisambiguationLinkInfo(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v51 = a2;
    v19 = *&result[OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_linkAttributeProvider];
    if (!v19)
    {
      goto LABEL_9;
    }

    if (a5)
    {
      if (a5 != 1)
      {
        result = sub_26F4A0238();
        __break(1u);
        return result;
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    LOBYTE(v54) = v20;
    v21 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
    swift_beginAccess();
    LOBYTE(v53[0]) = v18[v21];
    v22 = v19(&v54, v53);
    if (v22)
    {
      v23 = v22;
    }

    else
    {
LABEL_9:
      v23 = sub_26F3BDF38(MEMORY[0x277D84F90]);
    }

    v24 = [a3 links];
    sub_26F3B0C24(0, &qword_2806DEE40, 0x277CE1AF0);
    v25 = sub_26F49FAF8();

    v26 = sub_26F3C3074(a4, v25);
    v28 = v27;

    if (v28)
    {

      if (qword_2806DE780 != -1)
      {
        swift_once();
      }

      v29 = sub_26F49DCA8();
      __swift_project_value_buffer(v29, qword_2806EA890);
      v30 = sub_26F49DC88();
      v31 = sub_26F49FDE8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26F39E000, v30, v31, "LinkAttributeProvider gave invalid arguments; can't find linkConfiguration inside node", v32, 2u);
        MEMORY[0x274391F70](v32, -1, -1);
      }

      return 0;
    }

    v33 = [v51 UUID];
    sub_26F49D948();

    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      *&v16[*(v11 + 20)] = v26;
      sub_26F49D728();
      swift_allocObject();
      sub_26F49D718();
      sub_26F3C8568(&qword_2806DF008, type metadata accessor for DisambiguationLinkInfo, &protocol conformance descriptor for DisambiguationLinkInfo);
      v43 = sub_26F49D708();
      v45 = v44;

      sub_26F49F908();
      v46 = sub_26F49F8E8();
      if (v47)
      {
        v48 = *MEMORY[0x277D77208];
        v55 = MEMORY[0x277D837D0];
        *&v54 = v46;
        *(&v54 + 1) = v47;
        sub_26F3BE15C(&v54, v53);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v23;
        sub_26F497EBC(v53, v48, isUniquelyReferenced_nonNull_native);
        sub_26F3C8F70(v43, v45);

        sub_26F3C8084(v16);
        return v52;
      }

      sub_26F3C8F70(v43, v45);
      if (qword_2806DE780 == -1)
      {
        goto LABEL_19;
      }
    }

    swift_once();
LABEL_19:
    v34 = sub_26F49DCA8();
    __swift_project_value_buffer(v34, qword_2806EA890);
    sub_26F3C8E80(v16, v13, type metadata accessor for DisambiguationLinkInfo);
    v35 = sub_26F49DC88();
    v36 = sub_26F49FDD8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v54 = v38;
      *v37 = 136446210;
      v39 = DisambiguationLinkInfo.description.getter();
      v41 = v40;
      sub_26F3C8084(v13);
      v42 = sub_26F3B38D0(v39, v41, &v54);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_26F39E000, v35, v36, "Failed to encode link information; won't show link in string for link: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x274391F70](v38, -1, -1);
      MEMORY[0x274391F70](v37, -1, -1);
    }

    else
    {

      sub_26F3C8084(v13);
    }

    sub_26F3C8084(v16);
    return 0;
  }

  return result;
}

unint64_t sub_26F3C3074(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_26F4A00A8();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x274390F80](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_26F3B0C24(0, &qword_2806DEE40, 0x277CE1AF0);
    v8 = sub_26F49FF48();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t DisambiguationLinkInfo.init(sentenceUUID:linkIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26F49D968();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DisambiguationLinkInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

id sub_26F3C3200(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v11(v12, v13, v14, v15, a6);

  if (v16)
  {
    type metadata accessor for Key(0);
    sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key, &unk_26F4A20C4);
    v17 = sub_26F49F7E8();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_26F3C3338()
{
  LOBYTE(v60) = 0;
  v1 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  LOBYTE(v63) = v0[v1];
  if (!sub_26F3C3DF8(&v60, &v63))
  {
    sub_26F3BDF38(MEMORY[0x277D84F90]);
  }

  LOBYTE(v60) = 1;
  LOBYTE(v63) = v0[v1];
  if (!sub_26F3C3DF8(&v60, &v63))
  {
    sub_26F3BDF38(MEMORY[0x277D84F90]);
  }

  LOBYTE(v60) = 0;
  v2 = sub_26F3C3D34(&v60);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v54 = v5;
  LOBYTE(v60) = 1;
  v6 = sub_26F3C3D34(&v60);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v52 = v8;
  v9 = v0;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v12 = sub_26F49F898();
  type metadata accessor for Key(0);
  sub_26F3C8568(&qword_2806DE8E8, type metadata accessor for Key, &unk_26F4A20C4);
  v13 = sub_26F49F7E8();

  v58 = [v11 initWithString:v12 attributes:v13];

  v14 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v15 = sub_26F49F898();
  v16 = sub_26F49F7E8();

  v57 = [v14 initWithString:v15 attributes:v16];

  LOBYTE(v60) = 0;
  v17 = sub_26F3C39C4(v4, v54, &v60);

  LOBYTE(v60) = 1;
  v51 = v9;
  v53 = sub_26F3C39C4(v52, v10, &v60);

  v55 = *(v17 + 2);
  if (v55)
  {
    v18 = *MEMORY[0x277D77208];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
    v19 = 0;
    v20 = (v17 + 40);
    while (1)
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v60 = 0x414E4F4954434944;
      *&v61[0] = 0xEB000000002D5952;
      v63 = v19;
      v23 = sub_26F4A0428();
      MEMORY[0x2743907E0](v23);

      v62[0] = v18;
      v62[1] = v60;
      v62[4] = MEMORY[0x277D837D0];
      v62[2] = *&v61[0];
      v24 = sub_26F4A0288();
      v25 = v18;
      sub_26F3B8DD4(v62, &v60, &qword_2806DF000, &qword_26F4A2F40);
      v26 = v60;
      v27 = sub_26F45FE00(v60);
      if (v28)
      {
        break;
      }

      v24[(v27 >> 6) + 8] |= 1 << v27;
      *(v24[6] + 8 * v27) = v26;
      sub_26F3BE15C(v61, (v24[7] + 32 * v27));
      v29 = v24[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_29;
      }

      ++v19;
      v20 += 2;
      v24[2] = v31;
      sub_26F3B6B4C(v62, &qword_2806DF000, &qword_26F4A2F40);
      v32 = sub_26F49F7E8();

      [v58 addAttributes:v32 range:{v21, v22}];

      if (v55 == v19)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:

    v56 = *(v53 + 2);
    if (!v56)
    {
LABEL_27:

      swift_getKeyPath();
      swift_getKeyPath();
      v60 = v58;
      v47 = v58;
      v48 = v51;
      sub_26F49DDB8();
      swift_getKeyPath();
      swift_getKeyPath();
      v60 = v57;
      v49 = v48;
      v50 = v57;
      sub_26F49DDB8();

      return;
    }

    v33 = *MEMORY[0x277D77208];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
    v34 = 0;
    v35 = (v53 + 40);
    while (1)
    {
      v36 = *(v35 - 1);
      v37 = *v35;
      v60 = 0x414E4F4954434944;
      *&v61[0] = 0xEB000000002D5952;
      v63 = v34;
      v38 = sub_26F4A0428();
      MEMORY[0x2743907E0](v38);

      v59[0] = v33;
      v59[1] = v60;
      v59[4] = MEMORY[0x277D837D0];
      v59[2] = *&v61[0];
      v39 = sub_26F4A0288();
      v40 = v33;
      sub_26F3B8DD4(v59, &v60, &qword_2806DF000, &qword_26F4A2F40);
      v41 = v60;
      v42 = sub_26F45FE00(v60);
      if (v43)
      {
        break;
      }

      v39[(v42 >> 6) + 8] |= 1 << v42;
      *(v39[6] + 8 * v42) = v41;
      sub_26F3BE15C(v61, (v39[7] + 32 * v42));
      v44 = v39[2];
      v30 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v30)
      {
        goto LABEL_31;
      }

      ++v34;
      v35 += 2;
      v39[2] = v45;
      sub_26F3B6B4C(v59, &qword_2806DF000, &qword_26F4A2F40);
      v46 = sub_26F49F7E8();

      [v57 addAttributes:v46 range:{v36, v37}];

      if (v56 == v34)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

char *sub_26F3C39C4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = *a3;
  v12 = sub_26F49DAB8();
  v13 = *(v12 - 8);
  v14 = &OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_targetLocale;
  if (!v11)
  {
    v14 = &OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_sourceLocale;
  }

  (*(*(v12 - 8) + 16))(v10, v3 + *v14, v12);
  sub_26F49DAB8();
  (*(v13 + 56))(v10, 0, 1, v12);
  v15 = sub_26F49F898();
  sub_26F3B8DD4(v10, v7, &qword_2806DEFD8, &qword_26F4A3670);
  v16 = 0;
  if ((*(v13 + 48))(v7, 1, v12) != 1)
  {
    v16 = sub_26F49D9F8();
    (*(v13 + 8))(v7, v12);
  }

  v17 = [v15 lt:v16 wordRangesWithLocale:?];

  sub_26F3B0C24(0, &unk_2806DEFE0, 0x277CCAE60);
  v18 = sub_26F49FAF8();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_17:

    sub_26F3B6B4C(v10, &qword_2806DEFD8, &qword_26F4A3670);
    return MEMORY[0x277D84F90];
  }

  v19 = sub_26F4A00A8();
  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_7:
  v32 = MEMORY[0x277D84F90];
  result = sub_26F40331C(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v31 = v10;
    v21 = 0;
    v22 = v32;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x274390F80](v21, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v23 rangeValue];
      v27 = v26;

      v32 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_26F40331C((v28 > 1), v29 + 1, 1);
        v22 = v32;
      }

      ++v21;
      *(v22 + 16) = v29 + 1;
      v30 = v22 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
    }

    while (v19 != v21);
    sub_26F3B6B4C(v31, &qword_2806DEFD8, &qword_26F4A3670);

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F3C3D34(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = (v1 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource);
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_displaySource + 8))
  {
    if (v2)
    {
      v4 = v3[2];
    }

    else
    {
      v4 = *v3;
    }
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_disambiguableResult);
    if (v5)
    {
      v6 = v5;
      v7 = v6;
      v8 = &selRef_targetText;
      if (!v2)
      {
        v8 = &selRef_sourceText;
      }

      v9 = [v6 *v8];
      v4 = sub_26F49F8C8();
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

unint64_t sub_26F3C3DF8(char *a1, char *a2)
{
  v3 = v2;
  v6 = sub_26F49DA98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 1];
  v10 = *a1;
  v11 = *a2;
  sub_26F49DAA8();
  v12 = sub_26F49DA78();
  (*(v7 + 8))(v9, v6);
  v13 = _s13TranslationUI25DisambiguationResultModelC17defaultAttributes6forRTLSDySo21NSAttributedStringKeyaypGSgSb_tFZ_0(v12 == 2);
  if (!v13)
  {
    v13 = sub_26F3BDF38(MEMORY[0x277D84F90]);
  }

  v14 = v13;
  v15 = *(v3 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_globalAttributeProvider);
  if (v15 && (LOBYTE(v22) = v10, v21[0] = v11, (v16 = v15(&v22, v21)) != 0))
  {
    v17 = v16;
  }

  else
  {
    v17 = sub_26F3BDF38(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v14;
  sub_26F3C80E0(v17, sub_26F3C7D6C, 0, isUniquelyReferenced_nonNull_native, &v22);

  return v22;
}

id DisambiguationResultModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DisambiguationResultModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisambiguationResultModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F3C4218@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DisambiguationResultModel(0);
  result = sub_26F49DD48();
  *a2 = result;
  return result;
}

void DisambiguationResultModel.disambiguableResult(_:didChangeResultFor:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (*(v3 + v6))
  {
    sub_26F3C3338();
    if (!a3)
    {
      return;
    }
  }

  else
  {
    sub_26F3C2694();
    if (!a3)
    {
      return;
    }
  }

  v7 = *(v3 + OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_userSelectionHandler);
  if (v7)
  {
    v8 = a3;
    v7(a2, v8);
  }
}

void DisambiguationResultModel.disambiguableResultDidUpdate(_:)()
{
  v1 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_renderMode;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    sub_26F3C3338();
  }

  else
  {
    sub_26F3C2694();
  }
}

uint64_t DisambiguationLinkInfo.sentenceUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DisambiguationLinkInfo.sentenceUUID.setter(uint64_t a1)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DisambiguationLinkInfo.linkIndex.setter(uint64_t a1)
{
  result = type metadata accessor for DisambiguationLinkInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t DisambiguationLinkInfo.description.getter()
{
  sub_26F4A0178();
  MEMORY[0x2743907E0](0xD000000000000026, 0x800000026F4ACD60);
  sub_26F49D968();
  sub_26F3C8568(&qword_2806DEE50, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_26F4A0428();
  MEMORY[0x2743907E0](v0);

  MEMORY[0x2743907E0](0x6E496B6E696C203BLL, 0xEC0000003D786564);
  type metadata accessor for DisambiguationLinkInfo(0);
  v1 = sub_26F4A0428();
  MEMORY[0x2743907E0](v1);

  MEMORY[0x2743907E0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_26F3C482C()
{
  if (*v0)
  {
    return 0x65646E496B6E696CLL;
  }

  else
  {
    return 0x65636E65746E6573;
  }
}

uint64_t sub_26F3C4874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E65746E6573 && a2 == 0xEC00000044495555;
  if (v6 || (sub_26F4A0458() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65646E496B6E696CLL && a2 == 0xE900000000000078)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26F4A0458();

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

uint64_t sub_26F3C4974(uint64_t a1)
{
  v2 = sub_26F3C8514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F3C49B0(uint64_t a1)
{
  v2 = sub_26F3C8514();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguationLinkInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE58, &qword_26F4A3200);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F3C8514();
  sub_26F4A0598();
  v8[15] = 0;
  sub_26F49D968();
  sub_26F3C8568(&qword_2806DEE68, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_26F4A03F8();
  if (!v1)
  {
    type metadata accessor for DisambiguationLinkInfo(0);
    v8[14] = 1;
    sub_26F4A03E8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DisambiguationLinkInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_26F49D968();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEE70, &qword_26F4A3208);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DisambiguationLinkInfo(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F3C8514();
  sub_26F4A0588();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v26 = 0;
  sub_26F3C8568(&qword_2806DEE78, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v23;
  sub_26F4A0348();
  (*(v13 + 32))(v19, v6, v14);
  v25 = 1;
  v15 = sub_26F4A0338();
  (*(v12 + 8))(v8, v24);
  v17 = v19;
  v16 = v20;
  *&v19[*(v9 + 20)] = v15;
  sub_26F3C8E80(v17, v16, type metadata accessor for DisambiguationLinkInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26F3C8084(v17);
}

uint64_t sub_26F3C4F14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED58, &qword_26F4A2F50);
  v35 = v4;
  result = sub_26F4A0278();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_26F3C51B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
  v35 = v4;
  result = sub_26F4A0278();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 4;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_26F3BE15C(v22, v36);
      }

      else
      {
        sub_26F3B2DBC(v22, v36);
        v23 = v21;
      }

      sub_26F49F8C8();
      sub_26F4A0528();
      sub_26F49F9A8();
      v24 = sub_26F4A0568();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 6) + 8 * v15) = v21;
      result = sub_26F3BE15C(v36, (*(v7 + 7) + 32 * v15));
      ++*(v7 + 2);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26F3C5488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD0, &qword_26F4A3668);
  v34 = v4;
  result = sub_26F4A0278();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26F3C5730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED90, &qword_26F4AA100);
  v33 = v4;
  result = sub_26F4A0278();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_26F3BE15C(v24, v34);
      }

      else
      {
        sub_26F3B2DBC(v24, v34);
      }

      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_26F3BE15C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26F3C59E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - v6;
  v7 = sub_26F49D968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFC0, &unk_26F4A2F80);
  v43 = v4;
  result = sub_26F4A0278();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26F3BEFCC(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26F3B8DD4(v29 + v28 * v24, v47, &qword_2806DED80, &qword_26F4A3660);
      }

      sub_26F3C8568(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26F49F818();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_26F3BEFCC(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_26F3C5E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26F49D968();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TextModel(0);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED70, &qword_26F4A2F70);
  v49 = v4;
  result = sub_26F4A0278();
  v13 = result;
  if (*(v11 + 16))
  {
    v52 = v10;
    v44 = v2;
    v14 = 0;
    v48 = v11;
    v17 = *(v11 + 64);
    v16 = (v11 + 64);
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v15;
    v21 = (v18 + 63) >> 6;
    v45 = v6 + 16;
    v46 = v6;
    v50 = (v6 + 32);
    v22 = result + 64;
    v53 = v5;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v14 << 6);
      v28 = v48;
      v29 = *(v48 + 48);
      v51 = *(v47 + 72);
      v30 = v29 + v51 * v27;
      if (v49)
      {
        sub_26F3C8EE8(v30, v52, type metadata accessor for TextModel);
        v31 = *(v28 + 56);
        v32 = *(v6 + 72);
        (*(v6 + 32))(v54, v31 + v32 * v27, v53);
      }

      else
      {
        sub_26F3C8E80(v30, v52, type metadata accessor for TextModel);
        v33 = *(v28 + 56);
        v32 = *(v6 + 72);
        (*(v6 + 16))(v54, v33 + v32 * v27, v53);
      }

      sub_26F4A0528();
      sub_26F3C8568(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_26F49F828();
      result = sub_26F4A0568();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v46;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_26F3C8EE8(v52, *(v13 + 48) + v51 * v23, type metadata accessor for TextModel);
      result = (*v50)(*(v13 + 56) + v32 * v23, v54, v53);
      ++*(v13 + 16);
    }

    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v14 >= v21)
      {
        break;
      }

      v26 = v16[v14];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_35;
    }

    v41 = v48;
    v42 = 1 << *(v48 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v41 + 16) = 0;
  }

LABEL_35:
  *v3 = v13;
  return result;
}

uint64_t sub_26F3C6314(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for VisualTranslationModel(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49D968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFA0, &qword_26F4A2F60);
  v43 = v4;
  result = sub_26F4A0278();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26F3C8EE8(v27 + v28 * v24, v47, type metadata accessor for VisualTranslationModel);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_26F3C8E80(v29 + v28 * v24, v47, type metadata accessor for VisualTranslationModel);
      }

      sub_26F3C8568(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26F49F818();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_26F3C8EE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for VisualTranslationModel);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_26F3C67B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26F49D968();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFB0, &qword_26F4A3658);
  v39 = v4;
  result = sub_26F4A0278();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_26F3C8568(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26F49F818();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

id sub_26F3C6B90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED58, &qword_26F4A2F50);
  v2 = *v0;
  v3 = sub_26F4A0268();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_26F3C6CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED40, &qword_26F4A2F38);
  v2 = *v0;
  v3 = sub_26F4A0268();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_26F3B2DBC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_26F3BE15C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26F3C6E7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD0, &qword_26F4A3668);
  v2 = *v0;
  v3 = sub_26F4A0268();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_26F3C6FEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED90, &qword_26F4AA100);
  v2 = *v0;
  v3 = sub_26F4A0268();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26F3B2DBC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26F3BE15C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

char *sub_26F3C7190()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - v3;
  v34 = sub_26F49D968();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFC0, &unk_26F4A2F80);
  v5 = *v0;
  v6 = sub_26F4A0268();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_26F3B8DD4(*(v5 + 56) + v26, v35, &qword_2806DED80, &qword_26F4A3660);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_26F3BEFCC(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_26F3C74AC()
{
  v1 = v0;
  v38 = sub_26F49D968();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TextModel(0);
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED70, &qword_26F4A2F70);
  v5 = *v0;
  v6 = sub_26F4A0268();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v37;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = v35;
        v24 = *(v36 + 72) * v22;
        sub_26F3C8E80(*(v5 + 48) + v24, v35, type metadata accessor for TextModel);
        v25 = v40;
        v26 = *(v40 + 72) * v22;
        v27 = *(v5 + 56) + v26;
        v28 = v38;
        (*(v40 + 16))(v17, v27, v38);
        sub_26F3C8EE8(v23, *(v18 + 48) + v24, type metadata accessor for TextModel);
        v29 = v28;
        v5 = v34;
        result = (*(v25 + 32))(*(v18 + 56) + v26, v17, v29);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_26F3C77D4()
{
  v1 = v0;
  v2 = type metadata accessor for VisualTranslationModel(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26F49D968();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFA0, &qword_26F4A2F60);
  v5 = *v0;
  v6 = sub_26F4A0268();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_26F3C8E80(v26 + v28, v37, type metadata accessor for VisualTranslationModel);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_26F3C8EE8(v29, *(v18 + 56) + v28, type metadata accessor for VisualTranslationModel);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_26F3C7AF8()
{
  v1 = v0;
  v31 = sub_26F49D968();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806DEFB0, &qword_26F4A3658);
  v3 = *v0;
  v4 = sub_26F4A0268();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_26F3C7D6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_26F3B2DBC((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_26F3C7DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_26F3B2DBC(*(v3 + 56) + 32 * v13, &v18);
    *&v21[0] = v14;
    sub_26F3BE15C(&v18, (v21 + 8));
    result = v14;
    v16 = *&v21[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18 = v16;
      v19 = *(v21 + 8);
      v20 = *(&v21[1] + 8);
      v17(&v18);
      return sub_26F3B6B4C(&v18, &unk_2806DEF80, &unk_26F4A3640);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v21, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t _s13TranslationUI25DisambiguationResultModelC17defaultAttributes6forRTLSDySo21NSAttributedStringKeyaypGSgSb_tFZ_0(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v3 = v2;
  if (a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [v2 setAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFF0, &qword_26F4A3678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26F4A3150;
  v6 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  *(inited + 64) = sub_26F3B0C24(0, &qword_2806DEFF8, 0x277D74240);
  *(inited + 40) = v3;
  v7 = v6;
  v8 = sub_26F3BDF38(inited);
  swift_setDeallocating();
  sub_26F3B6B4C(inited + 32, &qword_2806DF000, &qword_26F4A2F40);
  return v8;
}

uint64_t sub_26F3C804C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F3C8084(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguationLinkInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F3C80E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_26F3C7DBC(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_26F3BE15C(v41, v39);
  v13 = *a5;
  result = sub_26F45FE00(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_26F3C51B8(v19, a4 & 1);
    result = sub_26F45FE00(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for Key(0);
    result = sub_26F4A04A8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_26F3C6CFC();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_26F3BE15C(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_26F3BE15C(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_26F3C7DBC(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_26F3BE15C(v41, v39);
        v30 = *a5;
        result = sub_26F45FE00(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_26F3C51B8(v34, 1);
          result = sub_26F45FE00(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_0(v29);
          sub_26F3BE15C(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_26F3BE15C(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_26F3C7DBC(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_26F3C8E34(v42);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s13TranslationUI25DisambiguationResultModelC13excludedTypes3forShySo8NSNumberCGSgSo016_LTDisambiguableD0C_tF_0()
{
  v1 = OBJC_IVAR____TtC13TranslationUI25DisambiguationResultModel_excludedTypes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v8 = MEMORY[0x277D84F90];

    sub_26F4A01F8();
    v5 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      sub_26F4A01D8();
      sub_26F4A0208();
      sub_26F4A0218();
      sub_26F4A01E8();
      v5 += 8;
      --v3;
    }

    while (v3);

    v4 = v8;
  }

  v6 = sub_26F4040F0(v4);

  return v6;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26F3C8514()
{
  result = qword_2806DEE60;
  if (!qword_2806DEE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEE60);
  }

  return result;
}

uint64_t sub_26F3C8568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F3C85B4()
{
  result = qword_2806DEE80;
  if (!qword_2806DEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEE80);
  }

  return result;
}

unint64_t sub_26F3C860C()
{
  result = qword_2806DEE88;
  if (!qword_2806DEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEE88);
  }

  return result;
}

void sub_26F3C8674(uint64_t a1)
{
  sub_26F49DAB8();
  if (v1 <= 0x3F)
  {
    sub_26F3C8A8C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F3C8A8C(uint64_t a1)
{
  if (!qword_280F65778)
  {
    sub_26F3B0C24(255, &unk_280F65670, 0x277CCA898);
    v1 = sub_26F49DDC8();
    if (!v2)
    {
      atomic_store(v1, &qword_280F65778);
    }
  }
}

uint64_t sub_26F3C8B4C(uint64_t a1)
{
  result = sub_26F49D968();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13TranslationUI25DisambiguationResultModelC13DisplaySource33_EC64E676C7883071BB2EA3C0071FEC01LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26F3C8BD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_26F3C8C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_26F3C8C80(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_26F3C8CC8()
{
  result = qword_2806DEF50;
  if (!qword_2806DEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEF50);
  }

  return result;
}

unint64_t sub_26F3C8D20()
{
  result = qword_2806DEF58;
  if (!qword_2806DEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEF58);
  }

  return result;
}

unint64_t sub_26F3C8D78()
{
  result = qword_2806DEF60;
  if (!qword_2806DEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEF60);
  }

  return result;
}

unint64_t sub_26F3C8DCC()
{
  result = qword_2806DEF70;
  if (!qword_2806DEF70)
  {
    sub_26F3B0C24(255, &qword_2806DEF68, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DEF70);
  }

  return result;
}

void sub_26F3C8E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_26F3C8E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F3C8EE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F3C8F70(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_26F3C8FE8@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v17[0] = *v2;
  v17[1] = v4;
  v18 = *(v2 + 32);
  v5 = sub_26F49E6D8();
  v15 = 1;
  sub_26F3C91A4(v17, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v20, __src, sizeof(v20));
  sub_26F3B8DD4(__dst, v12, &qword_2806DF0E8, &qword_26F4A3858);
  sub_26F3B6B4C(v20, &qword_2806DF0E8, &qword_26F4A3858);
  memcpy(&v14[7], __dst, 0x108uLL);
  v6 = v15;
  v7 = sub_26F49EC48();
  v12[0] = 0;
  sub_26F49F5A8();
  sub_26F49E3D8();
  *&v16[55] = *&__src[48];
  *&v16[71] = *&__src[64];
  *&v16[87] = *&__src[80];
  *&v16[103] = *&__src[96];
  *&v16[7] = *__src;
  *&v16[23] = *&__src[16];
  *&v16[39] = *&__src[32];
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  memcpy((a2 + 17), v14, 0x10FuLL);
  *(a2 + 288) = v7;
  *(a2 + 296) = 0x4020000000000000;
  *(a2 + 304) = xmmword_26F4A3680;
  *(a2 + 320) = 0x4020000000000000;
  *(a2 + 328) = 0;
  v8 = *&v16[80];
  *(a2 + 393) = *&v16[64];
  *(a2 + 409) = v8;
  *(a2 + 425) = *&v16[96];
  *(a2 + 440) = *&v16[111];
  v9 = *&v16[16];
  *(a2 + 329) = *v16;
  *(a2 + 345) = v9;
  result = *&v16[32];
  v11 = *&v16[48];
  *(a2 + 361) = *&v16[32];
  *(a2 + 377) = v11;
  return result;
}

uint64_t sub_26F3C91A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26F49E808();
  LOBYTE(v23) = 1;
  sub_26F3C9624(&v29);
  v61 = v32;
  v62 = v33;
  v63 = v34;
  v64 = v35;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v65[1] = v30;
  v65[0] = v29;
  v65[2] = v31;
  v65[3] = v32;
  v65[4] = v33;
  v65[5] = v34;
  v65[6] = v35;
  sub_26F3B8DD4(&v58, v46, &qword_2806DF0F0, &qword_26F4A3860);
  sub_26F3B6B4C(v65, &qword_2806DF0F0, &qword_26F4A3860);
  *&v57[55] = v61;
  *&v57[71] = v62;
  *&v57[87] = v63;
  *&v57[103] = v64;
  *&v57[7] = v58;
  *&v57[23] = v59;
  *&v57[39] = v60;
  KeyPath = swift_getKeyPath();
  v18 = sub_26F49F2B8();
  sub_26F49ECA8();
  sub_26F49ED28();
  v17 = sub_26F49ED58();

  v6 = swift_getKeyPath();
  sub_26F49F5A8();
  sub_26F49E0C8();
  if (*(a1 + 32))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = sub_26F49F228();
  v9 = swift_getKeyPath();
  v23 = v4;
  v24[0] = 1;
  *&v24[65] = *&v57[64];
  *&v24[81] = *&v57[80];
  *&v24[97] = *&v57[96];
  *&v24[1] = *v57;
  *&v24[17] = *&v57[16];
  *&v24[33] = *&v57[32];
  *&v24[49] = *&v57[48];
  *&v24[112] = *&v57[111];
  *&v24[120] = KeyPath;
  v35 = *&v24[80];
  v36 = *&v24[96];
  v31 = *&v24[16];
  v32 = *&v24[32];
  v33 = *&v24[48];
  v34 = *&v24[64];
  v29 = v4;
  v30 = *v24;
  v37 = *&v24[112];
  *&v26 = v18;
  *(&v26 + 1) = v6;
  *v27 = v17;
  *&v27[8] = v20;
  *&v27[24] = v21;
  *&v27[40] = v22;
  *&v27[56] = v7;
  *&v28 = v9;
  *(&v28 + 1) = v8;
  *&v19[7] = v26;
  *&v19[23] = *v27;
  *&v19[87] = v28;
  *&v19[71] = *&v27[48];
  *&v19[55] = *&v27[32];
  *&v19[39] = *&v27[16];
  v10 = *v24;
  *a2 = v4;
  *(a2 + 16) = v10;
  v11 = v31;
  v12 = v32;
  v13 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v13;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  v14 = v35;
  v15 = v37;
  *(a2 + 112) = v36;
  *(a2 + 128) = v15;
  *(a2 + 96) = v14;
  *(a2 + 209) = *&v19[48];
  *(a2 + 225) = *&v19[64];
  *(a2 + 241) = *&v19[80];
  *(a2 + 161) = *v19;
  *(a2 + 177) = *&v19[16];
  v25 = 0;
  LOBYTE(v38) = 0;
  *(a2 + 144) = v38;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  *(a2 + 256) = *&v19[95];
  *(a2 + 193) = *&v19[32];
  v39[0] = v18;
  v39[1] = v6;
  v39[2] = v17;
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v7;
  v44 = v9;
  v45 = v8;
  sub_26F3B8DD4(&v23, v46, &qword_2806DF0F8, &qword_26F4A38F8);
  sub_26F3B8DD4(&v26, v46, &qword_2806DF100, &qword_26F4A3900);
  sub_26F3B6B4C(v39, &qword_2806DF100, &qword_26F4A3900);
  v52 = *&v57[64];
  v53 = *&v57[80];
  *v54 = *&v57[96];
  v48 = *v57;
  v49 = *&v57[16];
  v50 = *&v57[32];
  v46[0] = v4;
  v46[1] = 0;
  v47 = 1;
  v51 = *&v57[48];
  *&v54[15] = *&v57[111];
  v55 = KeyPath;
  v56 = 0;
  return sub_26F3B6B4C(v46, &qword_2806DF0F8, &qword_26F4A38F8);
}

uint64_t sub_26F3C9624@<X0>(uint64_t a2@<X8>)
{
  sub_26F3BDC0C();

  v28 = sub_26F49EED8();
  v24 = v3;
  v5 = v4;
  v26 = v6;
  *&v27 = sub_26F49F278();
  KeyPath = swift_getKeyPath();
  v5 &= 1u;
  *(&v27 + 1) = swift_getKeyPath();

  v7 = sub_26F49EED8();
  v9 = v8;
  v11 = v10;
  sub_26F49F288();
  v12 = sub_26F49EE68();
  v14 = v13;
  v23 = v15;
  v17 = v16;

  sub_26F3B8D40(v7, v9, v11 & 1);

  *&v32 = v28;
  *(&v32 + 1) = v24;
  LOBYTE(v33) = v5;
  *(&v33 + 1) = *v31;
  DWORD1(v33) = *&v31[3];
  *(&v33 + 1) = v26;
  LOWORD(v34) = 256;
  *(&v34 + 2) = v29;
  WORD3(v34) = v30;
  *(&v34 + 1) = KeyPath;
  *v35 = v27;
  *&v35[16] = 0;
  v35[24] = 1;
  v18 = v32;
  v19 = v33;
  *&v39[9] = *&v35[9];
  v38 = v34;
  *v39 = v27;
  v36 = v32;
  v37 = v33;
  v20 = *&v39[16];
  *(a2 + 48) = v27;
  *(a2 + 64) = v20;
  v21 = v38;
  *(a2 + 16) = v19;
  *(a2 + 32) = v21;
  *a2 = v18;
  *(a2 + 80) = v12;
  *(a2 + 88) = v14;
  *(a2 + 96) = v23 & 1;
  *(a2 + 104) = v17;
  sub_26F3B8DD4(&v32, v40, &qword_2806DF108, &qword_26F4A3938);
  sub_26F3B0EE4(v12, v14, v23 & 1);

  sub_26F3B8D40(v12, v14, v23 & 1);

  v40[0] = v28;
  v40[1] = v24;
  v41 = v5;
  *v42 = *v31;
  *&v42[3] = *&v31[3];
  v43 = v26;
  v44 = 256;
  v45 = v29;
  v46 = v30;
  v47 = KeyPath;
  v48 = v27;
  v49 = 0;
  v50 = 1;
  return sub_26F3B6B4C(v40, &qword_2806DF108, &qword_26F4A3938);
}

TranslationUI::DisambiguationView::Item __swiftcall DisambiguationView.Item.init(title:description:)(Swift::String title, Swift::String description)
{
  *v2 = title;
  v2[1] = description;
  result.description = description;
  result.title = title;
  return result;
}

uint64_t DisambiguationView.init(items:selection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  *a2 = sub_26F49E7F8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF070, &qword_26F4A3690);
  sub_26F3CA374(v4);
  v32 = v8;
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v7;
  v10[5] = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26F3CA54C;
  *(v11 + 24) = v10;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF078, &qword_26F4A36B8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF080, &qword_26F4A36C0);
  v14 = sub_26F3B18CC(&qword_2806DF088, &qword_2806DF078, &qword_26F4A36B8, MEMORY[0x277D83980]);
  v15 = sub_26F3B18CC(&qword_2806DF090, &qword_2806DF080, &qword_26F4A36C0, MEMORY[0x277CE14C0]);
  sub_26F49F4B8(&v32, KeyPath, sub_26F3CA558, v11, v12, v13, v14, MEMORY[0x277D83B98], v15);
  v16 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  v17 = sub_26F49F218();
  v18 = sub_26F49F5A8();
  v20 = v19;
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF098, &qword_26F4A36C8) + 36));
  *v21 = v17;
  v21[1] = v18;
  v21[2] = v20;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A0, &unk_26F4A36D0) + 36));
  v23 = *(sub_26F49E3A8() + 20);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_26F49E7C8();
  (*(*(v25 - 8) + 104))(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #10.0 }

  *v22 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A8, &qword_26F4A7B20);
  *&v22[*(result + 36)] = 256;
  return result;
}

uint64_t sub_26F3C9B80@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v68 = a6;
  v66 = a3;
  v67 = a1;
  v78 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF110, &qword_26F4A3940);
  v11 = *(v10 - 8);
  v75 = v10;
  v76 = v11;
  MEMORY[0x28223BE20](v10);
  v64 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF118, &qword_26F4A3948);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v63 - v16;
  v69 = sub_26F49E358();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF120, &qword_26F4A3950);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF128, &qword_26F4A3958);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  v65 = *a2;
  v27 = *(a2 + 2);
  v28 = *(a2 + 3);
  v29 = swift_allocObject();
  v30 = v66;
  v29[2] = v66;
  v29[3] = a4;
  v31 = v68;
  v29[4] = a5;
  v29[5] = v31;
  v32 = v67;
  v29[6] = v67;
  v79 = v65;
  v80 = v27;
  v81 = v28;
  v82 = v32;
  v83 = v30;
  v33 = v32;
  v34 = v30;
  v84 = a4;
  v85 = a5;
  v86 = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF130, &qword_26F4A3960);
  sub_26F3CAA24();
  sub_26F49F398();
  sub_26F49E348();
  sub_26F3B18CC(&qword_2806DF158, &qword_2806DF120, &qword_26F4A3950, MEMORY[0x277CDF028]);
  sub_26F3CAB30();
  v35 = v26;
  v36 = v69;
  sub_26F49EF48();
  (*(v70 + 8))(v18, v36);
  (*(v20 + 8))(v22, v19);
  if (*(v34 + 16) - 1 == v33)
  {
    v37 = 1;
    v38 = v75;
    v39 = v72;
  }

  else
  {
    v40 = v64;
    sub_26F49F498();
    v41 = [objc_opt_self() separatorColor];
    v42 = sub_26F49F218();
    v43 = sub_26F49EC48();
    v44 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF168, &qword_26F4A3970) + 36);
    *v44 = v42;
    *(v44 + 8) = v43;
    sub_26F49F5A8();
    sub_26F49E0C8();
    v45 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF170, &qword_26F4A3978) + 36));
    v46 = v88;
    *v45 = v87;
    v45[1] = v46;
    v45[2] = v89;
    LOBYTE(v42) = sub_26F49EC78();
    sub_26F49DF78();
    v47 = v75;
    v48 = v40 + *(v75 + 36);
    *v48 = v42;
    *(v48 + 8) = v49;
    *(v48 + 16) = v50;
    *(v48 + 24) = v51;
    *(v48 + 32) = v52;
    *(v48 + 40) = 0;
    v39 = v72;
    sub_26F3CAB88(v40, v72);
    v37 = 0;
    v38 = v47;
  }

  (*(v76 + 56))(v39, v37, 1, v38);
  v53 = v73;
  v54 = *(v73 + 16);
  v55 = v71;
  v56 = v35;
  v57 = v74;
  v54(v71, v35, v74);
  v58 = v77;
  sub_26F3B8DD4(v39, v77, &qword_2806DF118, &qword_26F4A3948);
  v59 = v78;
  v54(v78, v55, v57);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF178, &unk_26F4A3980);
  sub_26F3B8DD4(v58, &v59[*(v60 + 48)], &qword_2806DF118, &qword_26F4A3948);
  sub_26F3B6B4C(v39, &qword_2806DF118, &qword_26F4A3948);
  v61 = *(v53 + 8);
  v61(v56, v57);
  sub_26F3B6B4C(v58, &qword_2806DF118, &qword_26F4A3948);
  return (v61)(v55, v57);
}

void *sub_26F3CA260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a9;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  result = MEMORY[0x274390240](v18, v15);
  v17 = v18[0] == a5;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v17;
  *(a8 + 33) = 0;
  return result;
}

uint64_t sub_26F3CA310@<X0>(uint64_t a1@<X8>)
{
  result = sub_26F49E628();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_26F3CA374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (a1 + 56);
    v24 = *(a1 + 16);
    while (1)
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v10 = *(v6 - 1);
      v9 = *v6;
      if (v4)
      {

        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF188, &qword_26F4A3990);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 40;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = v15 + 4;
        v18 = v2[3] >> 1;
        v5 = &v15[5 * v18 + 4];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (v2[2])
        {
          if (v15 != v2 || v17 >= &v2[5 * v18 + 4])
          {
            memmove(v17, v2 + 4, 40 * v18);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v15;
        v1 = v24;
        v11 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v11)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }

      *v5 = v3;
      v5[1] = v8;
      v5[2] = v7;
      v5[3] = v10;
      v5[4] = v9;
      v5 += 5;
      v6 += 4;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v11 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v11)
    {
      goto LABEL_30;
    }

    v2[2] = v23;
  }
}

uint64_t sub_26F3CA5A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F3CA5EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26F3CA63C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26F3CA684(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26F3CA6D4()
{
  result = qword_2806DF0B0;
  if (!qword_2806DF0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF0A0, &unk_26F4A36D0);
    sub_26F3CA78C();
    sub_26F3B18CC(&qword_2806DF0E0, &qword_2806DF0A8, &qword_26F4A7B20, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF0B0);
  }

  return result;
}

unint64_t sub_26F3CA78C()
{
  result = qword_2806DF0B8;
  if (!qword_2806DF0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF098, &qword_26F4A36C8);
    sub_26F3B18CC(&qword_2806DF0C0, &qword_2806DF0C8, &qword_26F4A37B8, MEMORY[0x277CE1198]);
    sub_26F3B18CC(&qword_2806DF0D0, &qword_2806DF0D8, &qword_26F4A37C0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF0B8);
  }

  return result;
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

uint64_t sub_26F3CA884(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_26F3CA8CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t objectdestroyTm_3(uint64_t a1)
{

  return swift_deallocObject();
}

unint64_t sub_26F3CAA24()
{
  result = qword_2806DF138;
  if (!qword_2806DF138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF130, &qword_26F4A3960);
    sub_26F3CAADC();
    sub_26F3B18CC(&qword_2806DF148, &qword_2806DF150, &qword_26F4A3968, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF138);
  }

  return result;
}

unint64_t sub_26F3CAADC()
{
  result = qword_2806DF140;
  if (!qword_2806DF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF140);
  }

  return result;
}

unint64_t sub_26F3CAB30()
{
  result = qword_2806DF160;
  if (!qword_2806DF160)
  {
    sub_26F49E358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF160);
  }

  return result;
}

uint64_t sub_26F3CAB88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF110, &qword_26F4A3940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F3CABF8()
{
  result = qword_2806DF190;
  if (!qword_2806DF190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF198, &qword_26F4A3998);
    sub_26F3CAC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF190);
  }

  return result;
}

unint64_t sub_26F3CAC84()
{
  result = qword_2806DF1A0;
  if (!qword_2806DF1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF1A8, &qword_26F4A39A0);
    sub_26F3B18CC(&qword_2806DF1B0, &qword_2806DF1B8, &qword_26F4A39A8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF1A0);
  }

  return result;
}

uint64_t sub_26F3CAD48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26F49F2C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49E018();
  v6 = v85;
  v43 = v87;
  v44 = v86;
  v7 = v88;
  v8 = v89;
  v41 = v89;
  v9 = v90;
  v10 = [objc_opt_self() secondarySystemFillColor];
  v45 = sub_26F49F218();
  KeyPath = swift_getKeyPath();
  v42 = KeyPath;
  v12 = COERCE_DOUBLE(sub_26F49EBC8());
  if (v13)
  {
    v12 = 0.0;
  }

  v14 = fmax(v12, 0.1);
  sub_26F49E018();
  v15 = sub_26F49F5F8();
  v38 = v15;
  v39 = sub_26F49EBC8();
  v17 = v16 & 1;
  v84 = v16 & 1;
  sub_26F49F668();
  v19 = v18;
  v21 = v20;
  sub_26F49F2B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v40 = sub_26F49F2F8();

  (*(v3 + 8))(v5, v2);
  sub_26F49F5A8();
  sub_26F49E0C8();
  v22 = v91;
  v23 = v92;
  v24 = v93;
  v25 = v94;
  *&v56 = v6;
  v26 = v43;
  v27 = v44;
  *(&v56 + 1) = __PAIR64__(v43, v44);
  *&v57 = v7;
  *(&v57 + 1) = v8;
  *&v58 = v9;
  *(&v58 + 1) = KeyPath;
  v59 = v45;
  *&v51[0] = v45;
  v48 = v56;
  v49 = v57;
  v50 = v58;
  *&v60[0] = 0;
  *(v60 + 1) = v14;
  v60[1] = v53;
  v60[2] = v54;
  *&v61 = v55;
  *(&v61 + 1) = v15;
  v28 = v39;
  *&v62 = v39;
  BYTE8(v62) = v17;
  HIDWORD(v62) = *&v52[3];
  *(&v62 + 9) = *v52;
  *&v63 = 0xBFF921FB54442D18;
  *(&v63 + 1) = v19;
  v64 = v21;
  *(&v51[2] + 8) = v54;
  *(&v51[1] + 8) = v53;
  *(v51 + 8) = v60[0];
  *(&v51[6] + 1) = v21;
  *(&v51[5] + 8) = v63;
  *(&v51[4] + 8) = v62;
  *(&v51[3] + 8) = v61;
  v47 = v92;
  v46 = v94;
  v29 = v57;
  *a1 = v56;
  *(a1 + 16) = v29;
  v30 = v50;
  v31 = v51[0];
  v32 = v51[2];
  *(a1 + 64) = v51[1];
  *(a1 + 80) = v32;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  v33 = v51[3];
  v34 = v51[4];
  v35 = v51[6];
  *(a1 + 128) = v51[5];
  *(a1 + 144) = v35;
  *(a1 + 96) = v33;
  *(a1 + 112) = v34;
  *(a1 + 160) = v40;
  *(a1 + 168) = v22;
  *(a1 + 176) = v23;
  *(a1 + 184) = v24;
  *(a1 + 192) = v25;
  *(a1 + 200) = v95;
  sub_26F3B8DD4(&v56, v65, &qword_2806DF238, &qword_26F4A3B38);
  sub_26F3B8DD4(v60, v65, &qword_2806DF240, &qword_26F4A3B40);
  v65[0] = 0;
  *&v65[1] = v14;
  v66 = v53;
  v67 = v54;
  v68 = v55;
  v69 = v38;
  v70 = v28;
  v71 = v17;
  *v72 = *v52;
  *&v72[3] = *&v52[3];
  v73 = 0xBFF921FB54442D18;
  v74 = v19;
  v75 = v21;
  sub_26F3B6B4C(v65, &qword_2806DF240, &qword_26F4A3B40);
  v76 = v6;
  v77 = v27;
  v78 = v26;
  v79 = v7;
  v80 = v41;
  v81 = v9;
  v82 = v42;
  v83 = v45;
  return sub_26F3B6B4C(&v76, &qword_2806DF238, &qword_26F4A3B38);
}

double sub_26F3CB1C4@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_26F49F5A8();
  v5 = v4;
  sub_26F3CAD48(&v14);
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v28 = v14;
  v29 = v15;
  v42[10] = v24;
  v42[11] = v25;
  v42[12] = v26;
  v42[6] = v20;
  v42[7] = v21;
  v42[8] = v22;
  v42[9] = v23;
  v42[2] = v16;
  v42[3] = v17;
  v42[4] = v18;
  v42[5] = v19;
  v41 = v27;
  v43 = v27;
  v42[0] = v14;
  v42[1] = v15;
  sub_26F3B8DD4(&v28, &v13, &qword_2806DF230, &qword_26F4A3B00);
  sub_26F3B6B4C(v42, &qword_2806DF230, &qword_26F4A3B00);
  *a2 = v3;
  *(a2 + 8) = v5;
  v6 = v39;
  *(a2 + 176) = v38;
  *(a2 + 192) = v6;
  *(a2 + 208) = v40;
  *(a2 + 224) = v41;
  v7 = v35;
  *(a2 + 112) = v34;
  *(a2 + 128) = v7;
  v8 = v37;
  *(a2 + 144) = v36;
  *(a2 + 160) = v8;
  v9 = v31;
  *(a2 + 48) = v30;
  *(a2 + 64) = v9;
  v10 = v33;
  *(a2 + 80) = v32;
  *(a2 + 96) = v10;
  result = *&v28;
  v12 = v29;
  *(a2 + 16) = v28;
  *(a2 + 32) = v12;
  return result;
}

TranslationUI::DownloadProgressView __swiftcall DownloadProgressView.init(fractionCompleted:)(TranslationUI::DownloadProgressView fractionCompleted)
{
  *v2 = *&fractionCompleted.fractionCompleted.is_nil;
  *(v2 + 8) = v1 & 1;
  return fractionCompleted;
}

uint64_t DownloadProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_26F49F2C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1C0, &unk_26F4A39C0);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1C8, &qword_26F4A6790);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1D0, &qword_26F4A39D0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  if (v1[1])
  {
    sub_26F49F2B8();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v15 = sub_26F49F2F8();

    (*(v3 + 8))(v5, v2);
    sub_26F49ECA8();
    sub_26F49ED08();
    v16 = sub_26F49ED58();

    KeyPath = swift_getKeyPath();
    sub_26F49F5A8();
    sub_26F49E0C8();
    *v7 = v15;
    *(v7 + 1) = KeyPath;
    *(v7 + 2) = v16;
    v18 = v28;
    *(v7 + 24) = v27;
    *(v7 + 40) = v18;
    *(v7 + 56) = v29;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1D8, &qword_26F4A3A08);
    sub_26F3CB7FC();
    sub_26F3CB960();
    return sub_26F49E928();
  }

  else
  {
    v20 = *v1;
    BYTE8(v27) = 0;
    v26 = 0x3FF0000000000000;
    *&v27 = v20;
    sub_26F3B8CEC();
    sub_26F49E048();
    sub_26F3B18CC(&qword_2806DF1E8, &qword_2806DF1C8, &qword_26F4A6790, MEMORY[0x277CDD7F8]);
    sub_26F3CB90C();
    sub_26F49EF18();
    (*(v9 + 8))(v11, v8);
    sub_26F49F5A8();
    sub_26F49E0C8();
    v21 = &v14[*(v12 + 36)];
    v22 = v28;
    *v21 = v27;
    *(v21 + 1) = v22;
    *(v21 + 2) = v29;
    sub_26F3A1ECC(v14, v7);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF1D8, &qword_26F4A3A08);
    sub_26F3CB7FC();
    sub_26F3CB960();
    sub_26F49E928();
    return sub_26F3A1F3C(v14);
  }
}

uint64_t sub_26F3CB7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49E588();
  *a1 = result;
  return result;
}

unint64_t sub_26F3CB7FC()
{
  result = qword_2806DF1E0;
  if (!qword_2806DF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF1D0, &qword_26F4A39D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF1C8, &qword_26F4A6790);
    sub_26F3B18CC(&qword_2806DF1E8, &qword_2806DF1C8, &qword_26F4A6790, MEMORY[0x277CDD7F8]);
    sub_26F3CB90C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF1E0);
  }

  return result;
}

unint64_t sub_26F3CB90C()
{
  result = qword_2806DF1F0;
  if (!qword_2806DF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF1F0);
  }

  return result;
}

unint64_t sub_26F3CB960()
{
  result = qword_2806DF1F8;
  if (!qword_2806DF1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF1D8, &qword_26F4A3A08);
    sub_26F3CB9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF1F8);
  }

  return result;
}

unint64_t sub_26F3CB9EC()
{
  result = qword_2806DF200;
  if (!qword_2806DF200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF208, &unk_26F4A3A10);
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF200);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadProgressView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_26F3CBB30()
{
  result = qword_2806DF220;
  if (!qword_2806DF220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF228, &qword_26F4A3AA8);
    sub_26F3CB7FC();
    sub_26F3CB960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF220);
  }

  return result;
}

id sub_26F3CBD4C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EmptyViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26F3CBDA4(uint64_t a1)
{
  result = _LTIsInternalInstall();
  byte_280F67E58 = result;
  return result;
}

void sub_26F3CBDC4()
{
  v0 = sub_26F49F898();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_280F67E59 = v2;
}

uint64_t sub_26F3CBE28()
{
  if (qword_280F65AE0 != -1)
  {
    result = swift_once();
  }

  if (byte_280F67E58 == 1)
  {
    if (qword_280F65AE8 != -1)
    {
      result = swift_once();
    }

    v0 = byte_280F67E59;
  }

  else
  {
    v0 = 0;
  }

  byte_2806EA860 = v0;
  return result;
}

uint64_t sub_26F3CBEC4(uint64_t a1, unint64_t a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v4 = sub_26F49F918();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49F908();
  v8 = sub_26F49F8D8();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
LABEL_5:
    if (qword_2806DE790 != -1)
    {
      swift_once();
    }

    v16 = sub_26F49DCA8();
    __swift_project_value_buffer(v16, qword_2806EA8C0);

    v17 = sub_26F49DC88();
    v18 = sub_26F49FDD8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136380675;
      *(v19 + 4) = sub_26F3B38D0(a1, a2, v30);
      _os_log_impl(&dword_26F39E000, v17, v18, "Failed to decode Environment variable since object was not a dictionary: %{private}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x274391F70](v20, -1, -1);
      MEMORY[0x274391F70](v19, -1, -1);
    }

    goto LABEL_13;
  }

  v11 = objc_opt_self();
  v12 = sub_26F49D898();
  v30[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:16 error:v30];

  if (v13)
  {
    v14 = v30[0];
    sub_26F4A0038();
    sub_26F3CC308(v8, v10);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF260, &qword_26F4A3B78);
    if (swift_dynamicCast())
    {
      return v29[1];
    }

    goto LABEL_5;
  }

  v21 = v30[0];
  v22 = sub_26F49D7F8();

  swift_willThrow();
  sub_26F3CC308(v8, v10);
  if (qword_2806DE790 != -1)
  {
    swift_once();
  }

  v23 = sub_26F49DCA8();
  __swift_project_value_buffer(v23, qword_2806EA8C0);
  v24 = v22;
  v17 = sub_26F49DC88();
  v25 = sub_26F49FDD8();

  if (!os_log_type_enabled(v17, v25))
  {

    return 0;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v26 = 138412290;
  v28 = sub_26F49D7E8();
  *(v26 + 4) = v28;
  *v27 = v28;
  _os_log_impl(&dword_26F39E000, v17, v25, "Failed to decode Environment variable: %@", v26, 0xCu);
  sub_26F3CC31C(v27);
  MEMORY[0x274391F70](v27, -1, -1);
  MEMORY[0x274391F70](v26, -1, -1);

LABEL_13:
  return 0;
}

uint64_t sub_26F3CC308(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26F3C8F70(result, a2);
  }

  return result;
}

uint64_t sub_26F3CC31C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF258, &qword_26F4A6220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ErrorStateView.Context.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

__n128 ErrorStateView.init(context:title:details:actionTitle:action:closeAction:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  result = a12;
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  return result;
}

uint64_t ErrorStateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF268, &qword_26F4A3B90);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF270, &qword_26F4A3B98);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF278, &qword_26F4A3BA0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v42 - v13;
  v15 = *(v1 + 80);
  v43[4] = *(v1 + 64);
  v43[5] = v15;
  v43[6] = *(v1 + 96);
  v44 = *(v1 + 112);
  v16 = *(v1 + 16);
  v43[0] = *v1;
  v43[1] = v16;
  v17 = *(v1 + 48);
  v43[2] = *(v1 + 32);
  v43[3] = v17;
  *v6 = sub_26F49E6C8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF280, &qword_26F4A3BA8);
  sub_26F3CC7B4(v43, &v6[*(v18 + 44)]);
  v19 = sub_26F49EC48();
  sub_26F49DF78();
  v20 = &v6[*(v4 + 44)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_26F49F5A8();
  sub_26F49E3D8();
  sub_26F3BBAEC(v6, v10, &qword_2806DF268, &qword_26F4A3B90);
  v25 = &v10[*(v8 + 44)];
  v26 = v42[5];
  *(v25 + 4) = v42[4];
  *(v25 + 5) = v26;
  *(v25 + 6) = v42[6];
  v27 = v42[1];
  *v25 = v42[0];
  *(v25 + 1) = v27;
  v28 = v42[3];
  *(v25 + 2) = v42[2];
  *(v25 + 3) = v28;
  v29 = [objc_opt_self() systemGroupedBackgroundColor];
  v30 = sub_26F49F218();
  LOBYTE(v8) = sub_26F49EC48();
  sub_26F3BBAEC(v10, v14, &qword_2806DF270, &qword_26F4A3B98);
  v31 = &v14[*(v12 + 44)];
  *v31 = v30;
  v31[8] = v8;
  v32 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF288, &unk_26F4A3BB0) + 36));
  v33 = *(sub_26F49E3A8() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_26F49E7C8();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #9.0 }

  *v32 = _Q0;
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF0A8, &qword_26F4A7B20) + 36)] = 256;
  return sub_26F3BBAEC(v14, a1, &qword_2806DF278, &qword_26F4A3BA0);
}

uint64_t sub_26F3CC7B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF310, &qword_26F4A3E40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF318, &qword_26F4A3E48);
  MEMORY[0x28223BE20](v8 - 8);
  v25 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF320, &qword_26F4A3E50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  *v18 = sub_26F49E808();
  *(v18 + 1) = 0x4030000000000000;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF328, &qword_26F4A3E58);
  sub_26F3CCB14(a1, &v18[*(v19 + 44)]);
  if (a1[13])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF338, &qword_26F4A3E68);
    sub_26F3CEFA0();
    sub_26F49F398();
    (*(v5 + 32))(v12, v7, v4);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v5 + 56))(v12, v20, 1, v4);
  sub_26F3B8DD4(v18, v15, &qword_2806DF320, &qword_26F4A3E50);
  v21 = v25;
  sub_26F3B8DD4(v12, v25, &qword_2806DF318, &qword_26F4A3E48);
  sub_26F3B8DD4(v15, a2, &qword_2806DF320, &qword_26F4A3E50);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF330, &qword_26F4A3E60);
  sub_26F3B8DD4(v21, a2 + *(v22 + 48), &qword_2806DF318, &qword_26F4A3E48);
  sub_26F3B6B4C(v12, &qword_2806DF318, &qword_26F4A3E48);
  sub_26F3B6B4C(v18, &qword_2806DF320, &qword_26F4A3E50);
  sub_26F3B6B4C(v21, &qword_2806DF318, &qword_26F4A3E48);
  return sub_26F3B6B4C(v15, &qword_2806DF320, &qword_26F4A3E50);
}

uint64_t sub_26F3CCB14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF368, &qword_26F4A3E88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF370, &qword_26F4A3E90);
  MEMORY[0x28223BE20](v7 - 8);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = sub_26F49E808();
  v47 = 0;
  sub_26F3CCFD4(a1, &v43);
  v50 = *&v44[16];
  v51 = *&v44[32];
  v52 = *&v44[48];
  v53 = *&v44[64];
  v48 = v43;
  v49 = *v44;
  v54[2] = *&v44[16];
  v54[3] = *&v44[32];
  v54[4] = *&v44[48];
  v54[5] = *&v44[64];
  v54[0] = v43;
  v54[1] = *v44;
  sub_26F3B8DD4(&v48, &v41, &qword_2806DF378, &qword_26F4A3E98);
  sub_26F3B6B4C(v54, &qword_2806DF378, &qword_26F4A3E98);
  *&v46[39] = v50;
  *&v46[55] = v51;
  *&v46[71] = v52;
  *&v46[87] = v53;
  *&v46[7] = v48;
  *&v46[23] = v49;
  v13 = v47;
  if (a1[8] && a1[11])
  {
    v37 = &v33;
    v34 = a1[12];
    MEMORY[0x28223BE20](v34);
    v35 = v14;
    v36 = &v33 - 6;
    *(&v33 - 4) = v16;
    *(&v33 - 3) = v15;
    *(&v33 - 16) = v17 & 1;
    *(&v33 - 1) = v18;

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF390, &qword_26F4A3EB0);
    v38 = v12;
    v19 = v13;
    v20 = v4;
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF358, &qword_26F4A3E78);
    v22 = sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78, MEMORY[0x277CDEFF0]);
    v23 = sub_26F3CF264();
    *&v43 = v21;
    *(&v43 + 1) = &type metadata for ActionButtonLabelStyle;
    v4 = v20;
    v13 = v19;
    *v44 = v22;
    *&v44[8] = v23;
    v12 = v38;
    swift_getOpaqueTypeConformance2();
    v24 = v39;
    sub_26F49F398();
    (*(v5 + 32))(v11, v24, v4);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v5 + 56))(v11, v25, 1, v4);
  v26 = v40;
  sub_26F3B8DD4(v11, v40, &qword_2806DF370, &qword_26F4A3E90);
  *&v41 = v12;
  *(&v41 + 1) = 0x4000000000000000;
  v42[0] = v13;
  *&v42[17] = *&v46[16];
  *&v42[1] = *v46;
  *&v42[81] = *&v46[80];
  *&v42[65] = *&v46[64];
  *&v42[49] = *&v46[48];
  v27 = *&v46[95];
  *&v42[96] = *&v46[95];
  *&v42[33] = *&v46[32];
  v28 = *&v42[32];
  *(a2 + 32) = *&v42[16];
  *(a2 + 48) = v28;
  *(a2 + 112) = v27;
  v29 = *&v42[80];
  *(a2 + 80) = *&v42[64];
  *(a2 + 96) = v29;
  *(a2 + 64) = *&v42[48];
  v30 = *v42;
  *a2 = v41;
  *(a2 + 16) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF380, &qword_26F4A3EA0);
  sub_26F3B8DD4(v26, a2 + *(v31 + 48), &qword_2806DF370, &qword_26F4A3E90);
  sub_26F3B8DD4(&v41, &v43, &qword_2806DF388, &qword_26F4A3EA8);
  sub_26F3B6B4C(v11, &qword_2806DF370, &qword_26F4A3E90);
  sub_26F3B6B4C(v26, &qword_2806DF370, &qword_26F4A3E90);
  *&v44[49] = *&v46[48];
  *&v44[65] = *&v46[64];
  *v45 = *&v46[80];
  *&v44[1] = *v46;
  *&v44[17] = *&v46[16];
  *&v43 = v12;
  *(&v43 + 1) = 0x4000000000000000;
  v44[0] = v13;
  *&v45[15] = *&v46[95];
  *&v44[33] = *&v46[32];
  return sub_26F3B6B4C(&v43, &qword_2806DF388, &qword_26F4A3EA8);
}

uint64_t sub_26F3CCFD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  LOWORD(v37) = 256;
  v3 = sub_26F49EEC8();
  v5 = v4;
  v7 = v6;
  sub_26F49EC98();
  v8 = sub_26F49EEA8();
  v10 = v9;
  v12 = v11;

  sub_26F3B8D40(v3, v5, v7 & 1);

  v13 = sub_26F49EE98();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_26F3B8D40(v8, v10, v12 & 1);

  v20 = a1[6];
  if (v20)
  {
    v44 = a1[5];
    v45 = v20;
    sub_26F3BDC0C();

    v21 = sub_26F49EED8();
    v20 = v22;
    v24 = v23;
    v26 = v25;
    v27 = sub_26F49EC98();
    KeyPath = swift_getKeyPath();
    LOBYTE(v44) = v24 & 1;
    v29 = v24 & 1;
    v30 = [objc_opt_self() secondaryLabelColor];
    v31 = sub_26F49F218();
    v32 = 256;
  }

  else
  {
    v21 = 0;
    v26 = 0;
    KeyPath = 0;
    v27 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
  }

  v33 = v17 & 1;
  v39[64] = v33;
  *&v40 = v21;
  *(&v40 + 1) = v20;
  *&v41 = v29;
  *(&v41 + 1) = v26;
  *&v42 = v32;
  *(&v42 + 1) = KeyPath;
  *&v43 = v27;
  *(&v43 + 1) = v31;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v33;
  *(a2 + 24) = v19;
  v34 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v34;
  v35 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v35;
  v44 = v21;
  v45 = v20;
  v46 = v29;
  v47 = v26;
  v48 = v32;
  v49 = KeyPath;
  v50 = v27;
  v51 = v31;
  sub_26F3B0EE4(v13, v15, v33);

  sub_26F3B8DD4(&v40, v39, &qword_2806DF3A0, &qword_26F4A3EB8);
  sub_26F3B6B4C(&v44, &qword_2806DF3A0, &qword_26F4A3EB8);
  sub_26F3B8D40(v13, v15, v33);
}

uint64_t sub_26F3CD268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;

  sub_26F49F318();
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78, MEMORY[0x277CDEFF0]);
  sub_26F3CF264();
  sub_26F49EF38();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26F3CD3F4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_26F49E6F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF348, &qword_26F4A3E70);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  sub_26F49E768();
  sub_26F49F318();
  sub_26F49E6E8();
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78, MEMORY[0x277CDEFF0]);
  sub_26F3CF20C(&qword_2806DF360, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_26F49EF38();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v12 = sub_26F49EC98();
  KeyPath = swift_getKeyPath();
  v14 = &v11[*(v9 + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  sub_26F3CF094();
  v15 = v20;
  sub_26F49F0E8();
  sub_26F3B6B4C(v11, &qword_2806DF348, &qword_26F4A3E70);
  v16 = [objc_opt_self() tertiaryLabelColor];
  v17 = sub_26F49F218();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF338, &qword_26F4A3E68);
  *(v15 + *(result + 36)) = v17;
  return result;
}

uint64_t static ErrorStateView.airplaneMode(sourceLocale:targetLocale:context:)@<X0>(unsigned __int8 *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v46 = *a1;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v11 = sub_26F49D9F8();
  v12 = sub_26F49D9F8();
  v13 = [v11 lt:3 displayNameForContext:v12 inTargetLocale:?];

  v14 = 0x45474155474E414CLL;
  if (v13)
  {
    v44 = sub_26F49F8C8();
    v45 = v15;
  }

  else
  {
    v44 = 0x45474155474E414CLL;
    v45 = 0xE800000000000000;
  }

  v16 = *(v5 + 8);
  v16(v10, v4);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v17 = sub_26F49D9F8();
  v18 = sub_26F49D9F8();
  v19 = [v17 lt:3 displayNameForContext:v18 inTargetLocale:?];

  if (v19)
  {
    v14 = sub_26F49F8C8();
    v21 = v20;
  }

  else
  {
    v21 = 0xE800000000000000;
  }

  v16(v7, v4);
  v22 = [objc_opt_self() mainBundle];
  sub_26F49D7D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF290, &unk_26F4A3BC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26F4A3B80;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = sub_26F3CDADC();
  v26 = v45;
  *(v23 + 32) = v44;
  *(v23 + 40) = v26;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 64) = v25;
  *(v23 + 72) = v14;
  *(v23 + 80) = v21;
  v27 = sub_26F49F8F8();
  v29 = v28;

  v30 = sub_26F49E768();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_26F49F898();
  v38 = SFLocalizableWAPIStringKeyForKey();

  sub_26F49F8C8();
  result = sub_26F49E768();
  *a2 = v46;
  *(a2 + 8) = v30;
  *(a2 + 16) = v32;
  *(a2 + 24) = v34 & 1;
  *(a2 + 32) = v36;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29;
  *(a2 + 56) = result;
  *(a2 + 64) = v41;
  *(a2 + 72) = v40 & 1;
  *(a2 + 80) = v42;
  *(a2 + 88) = sub_26F3CDB30;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return result;
}

unint64_t sub_26F3CDADC()
{
  result = qword_2806DF298;
  if (!qword_2806DF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF298);
  }

  return result;
}

uint64_t sub_26F3CDB30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_26F49FC08();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_26F49FBD8();
  v4 = sub_26F49FBC8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_26F40570C(0, 0, v2, &unk_26F4A3E38, v5);
}

uint64_t sub_26F3CDC3C()
{
  sub_26F49FBD8();
  *(v0 + 16) = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F3CDCD0, v2, v1);
}

uint64_t sub_26F3CDCD0()
{

  sub_26F45AA88(2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ErrorStateView.missingOfflineAssets(context:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_26F49D878();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v47 = *a1;
  sub_26F49D868();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = *(v8 + 32);
    v46(v12, v6, v7);
    v15 = sub_26F49E768();
    v43 = v16;
    v44 = v15;
    v42 = v17;
    v45 = v18;
    v41 = v8;
    if (qword_2806DE7D8 != -1)
    {
      swift_once();
    }

    v19 = sub_26F49D7D8();
    v39 = v20;
    v40 = v19;
    v21 = sub_26F49F898();
    v22 = SFLocalizableWAPIStringKeyForKey();

    sub_26F49F8C8();
    v38 = sub_26F49E768();
    v24 = v23;
    v26 = v25;
    v28 = v27 & 1;
    v29 = v7;
    v30 = v7;
    v31 = v46;
    v46(v14, v12, v29);
    v32 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v33 = swift_allocObject();
    result = v31(v33 + v32, v14, v30);
    *a2 = v47;
    v34 = v43;
    *(a2 + 8) = v44;
    *(a2 + 16) = v34;
    *(a2 + 24) = v42 & 1;
    v36 = v39;
    v35 = v40;
    *(a2 + 32) = v45;
    *(a2 + 40) = v35;
    v37 = v38;
    *(a2 + 48) = v36;
    *(a2 + 56) = v37;
    *(a2 + 64) = v24;
    *(a2 + 72) = v28;
    *(a2 + 80) = v26;
    *(a2 + 88) = sub_26F3CE76C;
    *(a2 + 96) = v33;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
  }

  return result;
}

uint64_t sub_26F3CE0A8(uint64_t a1)
{
  v2 = sub_26F49D878();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_26F49FC08();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  sub_26F49FBD8();
  v10 = sub_26F49FBC8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  (*(v3 + 32))(v12 + v11, v5, v2);
  sub_26F4059FC(0, 0, v8, &unk_26F4A3E28, v12);
}

uint64_t sub_26F3CE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_26F49FBD8();
  v4[4] = sub_26F49FBC8();
  v6 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F3CE32C, v6, v5);
}

uint64_t sub_26F3CE32C()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    v3 = sub_26F49D828();
    sub_26F3BDADC(MEMORY[0x277D84F90]);
    v4 = sub_26F49F7E8();

    v5 = [v2 openSensitiveURL:v3 withOptions:v4];
  }

  else
  {
    v5 = 2;
  }

  **(v0 + 16) = v5;
  v6 = *(v0 + 8);

  return v6();
}

double static ErrorStateView.noInternetConnection(context:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *a1;
  v3 = sub_26F49E768();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (qword_2806DE7D8 != -1)
  {
    swift_once();
  }

  v18 = sub_26F49D7D8();
  v19 = v10;
  MEMORY[0x2743907E0](10, 0xE100000000000000);
  v11 = sub_26F49F898();
  v12 = SFLocalizableWAPIStringKeyForKey();

  sub_26F49F8C8();
  v13 = sub_26F49D7D8();
  v15 = v14;

  MEMORY[0x2743907E0](v13, v15);

  *a2 = v17;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  result = 0.0;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return result;
}

uint64_t sub_26F3CE60C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2F0, &qword_26F4A3DD0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  sub_26F49EA78();
  v5 = sub_26F49EC98();
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(v2 + 36)];
  *v7 = KeyPath;
  v7[1] = v5;
  sub_26F3CEC28();
  sub_26F49F0E8();
  sub_26F3B6B4C(v4, &qword_2806DF2F0, &qword_26F4A3DD0);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_26F49F298();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF308, &unk_26F4A3E10);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_26F3CE76C()
{
  v1 = *(sub_26F49D878() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F3CE0A8(v2);
}

unint64_t sub_26F3CE7D0()
{
  result = qword_2806DF2A8;
  if (!qword_2806DF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI18LocalizedStringKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26F3CE884(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26F3CE8CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F3CE948()
{
  result = qword_2806DF2B0;
  if (!qword_2806DF2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF288, &unk_26F4A3BB0);
    sub_26F3CEA00();
    sub_26F3B18CC(&qword_2806DF0E0, &qword_2806DF0A8, &qword_26F4A7B20, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2B0);
  }

  return result;
}

unint64_t sub_26F3CEA00()
{
  result = qword_2806DF2B8;
  if (!qword_2806DF2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF278, &qword_26F4A3BA0);
    sub_26F3CEAB8();
    sub_26F3B18CC(&qword_2806DF2E0, &qword_2806DF2E8, &qword_26F4A3D78, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2B8);
  }

  return result;
}

unint64_t sub_26F3CEAB8()
{
  result = qword_2806DF2C0;
  if (!qword_2806DF2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF270, &qword_26F4A3B98);
    sub_26F3CEB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2C0);
  }

  return result;
}

unint64_t sub_26F3CEB44()
{
  result = qword_2806DF2C8;
  if (!qword_2806DF2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF268, &qword_26F4A3B90);
    sub_26F3B18CC(&qword_2806DF2D0, &qword_2806DF2D8, &qword_26F4A3D70, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2C8);
  }

  return result;
}

unint64_t sub_26F3CEC28()
{
  result = qword_2806DF2F8;
  if (!qword_2806DF2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF2F0, &qword_26F4A3DD0);
    sub_26F3CF20C(&qword_2806DF300, MEMORY[0x277CDE230], MEMORY[0x277CDE228]);
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF2F8);
  }

  return result;
}

uint64_t sub_26F3CED10(uint64_t a1)
{
  v4 = *(sub_26F49D878() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F3CF3AC;

  return sub_26F3CE294(a1, v6, v7, v1 + v5);
}

uint64_t sub_26F3CEE00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F3CEEAC;

  return sub_26F3CDC3C();
}

uint64_t sub_26F3CEEAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_26F3CEFA0()
{
  result = qword_2806DF340;
  if (!qword_2806DF340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF338, &qword_26F4A3E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF348, &qword_26F4A3E70);
    sub_26F3CF094();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DEC98, &qword_2806DECA0, &qword_26F4A3E80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF340);
  }

  return result;
}

unint64_t sub_26F3CF094()
{
  result = qword_2806DF350;
  if (!qword_2806DF350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF348, &qword_26F4A3E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF358, &qword_26F4A3E78);
    sub_26F49E6F8();
    sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78, MEMORY[0x277CDEFF0]);
    sub_26F3CF20C(&qword_2806DF360, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF350);
  }

  return result;
}

uint64_t sub_26F3CF20C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F3CF264()
{
  result = qword_2806DF398;
  if (!qword_2806DF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF398);
  }

  return result;
}

unint64_t sub_26F3CF2B8()
{
  result = qword_2806DF3A8;
  if (!qword_2806DF3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF308, &unk_26F4A3E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF2F0, &qword_26F4A3DD0);
    sub_26F3CEC28();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806DEC98, &qword_2806DECA0, &qword_26F4A3E80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF3A8);
  }

  return result;
}

unint64_t sub_26F3CF3B0(uint64_t a1)
{
  sub_26F4A0178();

  if (a1)
  {
    v2 = 0xEA00000000002C64;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x2743907E0]((a1 << 63 >> 63) & 0x65646E617078652ELL, v2);

  v3 = (a1 << 62 >> 63) & 0x736E65646E6F632ELL;
  if ((a1 & 2) != 0)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x2743907E0](v3, v4);

  MEMORY[0x2743907E0](15965, 0xE200000000000000);
  return 0xD000000000000011;
}

BOOL sub_26F3CF4FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26F3CF52C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26F3CF558@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_26F3CF618@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_26F3B0E74(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_26F3CF658()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ExpandingText(0) + 48);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26F3CF7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ExpandingText(0);
  sub_26F3B8DD4(v1 + *(v10 + 52), v9, &qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F49E2E8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26F49FDE8();
    v13 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ExpandingText.init(_:isExpanded:_:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = type metadata accessor for ExpandingText(0);
  v14 = v13[6];
  v15 = sub_26F49DAB8();
  (*(*(v15 - 8) + 56))(a9 + v14, 1, 1, v15);
  v16 = (a9 + v13[7]);
  v17 = a9 + v13[8];
  sub_26F49F338();
  *v17 = v29;
  *(v17 + 8) = *(&v29 + 1);
  v18 = (a9 + v13[9]);
  sub_26F49F338();
  *v18 = v29;
  v19 = v13[10];
  sub_26F49F338();
  *(a9 + v19) = v29;
  v20 = a9 + v13[11];
  sub_26F49F338();
  *v20 = v29;
  *(v20 + 8) = *(&v29 + 1);
  v21 = a9 + v13[12];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v13[13];
  *(a9 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  swift_storeEnumTagMultiPayload();
  sub_26F49EE48();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  result = sub_26F3D27D4(a6, a9 + v14);
  *v16 = a7;
  v16[1] = a8;
  return result;
}

uint64_t type metadata accessor for ExpandingText(uint64_t a1)
{
  result = qword_2806DF440;
  if (!qword_2806DF440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_26F3CFBF8()
{
  v1 = v0;
  v2 = type metadata accessor for ExpandingText(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B8, &qword_26F4A41C0);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C0, &qword_26F4A8460);
  MEMORY[0x28223BE20](v10 - 8);
  v78 = &v65 - v11;
  v12 = sub_26F49EE38();
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_26F49EE58();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = (v0 + v2[9]);
  v20 = *v19;
  v21 = v19[1];
  *&v85 = *v19;
  *(&v85 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F348();
  if (v84 <= 0.0 || (v85 = *(v0 + v2[10]), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B0, &qword_26F4A41B8), sub_26F49F348(), *&v84 == 3))
  {
    if (qword_2806DE798 != -1)
    {
      swift_once();
    }

    v22 = sub_26F49DCA8();
    __swift_project_value_buffer(v22, qword_2806EA8D8);
    sub_26F3D2844(v0, v7);
    sub_26F3D2844(v0, v4);
    v23 = sub_26F49DC88();
    v24 = sub_26F49FDC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = COERCE_DOUBLE(swift_slowAlloc());
      v84 = v26;
      *v25 = 134218242;
      v27 = sub_26F49F9B8();
      sub_26F3D35E4(v7);
      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      v28 = &v4[v2[9]];
      v29 = *v28;
      v30 = *(v28 + 1);
      *&v85 = v29;
      *(&v85 + 1) = v30;
      sub_26F49F348();
      if (v83 > 0.0)
      {
        v31 = 0xD000000000000012;
      }

      else
      {
        v31 = 0xD000000000000013;
      }

      if (v83 <= 0.0)
      {
        v32 = "all layoutsChecked";
      }

      else
      {
        v32 = "<LayoutOptions: [";
      }

      sub_26F3D35E4(v4);
      v33 = sub_26F3B38D0(v31, v32 | 0x8000000000000000, &v84);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_26F39E000, v23, v24, "Text of len %ld hard isMultiline due to: %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(*&v26);
      MEMORY[0x274391F70](*&v26, -1, -1);
      MEMORY[0x274391F70](v25, -1, -1);
    }

    else
    {
      sub_26F3D35E4(v7);

      sub_26F3D35E4(v4);
    }

    return 1;
  }

  else
  {
    v76 = v12;
    *&v85 = v20;
    *(&v85 + 1) = v21;
    sub_26F49F348();
    v35 = *(v82 + 16);
    v66 = v2[14];
    v68 = v35;
    v35(v18, (v0 + v66), v80);
    if (!sub_26F3CF658())
    {
      sub_26F49ECA8();
    }

    v36 = sub_26F49EEA8();
    v38 = v37;
    v40 = v39;

    v41 = sub_26F49EE08();
    v42 = *(v41 - 8);
    v74 = *(v42 + 56);
    v75 = v41;
    v73 = v42 + 56;
    v74(v78, 1, 1);
    v43 = sub_26F49EEB8();
    v44 = *(v43 - 8);
    v45 = *(v44 + 56);
    v72 = v43;
    v71 = v45;
    v70 = v44 + 56;
    (v45)(v79, 1, 1);
    sub_26F49EE28();
    sub_26F49EE18();
    v47 = v46;
    sub_26F3B8D40(v36, v38, v40 & 1);

    v48 = *(v81 + 8);
    v81 += 8;
    v69 = v48;
    v48(v14, v76);
    v49 = *(v82 + 8);
    v50 = v80;
    v82 += 8;
    v67 = v49;
    v49(v18, v80);
    v68(v77, &v1[v66], v50);
    v51 = *(v1 + 1);
    *&v85 = *v1;
    *(&v85 + 1) = v51;
    sub_26F3BDC0C();

    v52 = sub_26F49EED8();
    v54 = v53;
    v56 = v55;
    if (!sub_26F3CF658())
    {
      sub_26F49ECA8();
    }

    v57 = sub_26F49EEA8();
    v59 = v58;
    v61 = v60;
    sub_26F3B8D40(v52, v54, v56 & 1);

    (v74)(v78, 1, 1, v75);
    v71(v79, 1, 1, v72);
    sub_26F49EE28();
    v62 = v77;
    sub_26F49EE18();
    v64 = v63;
    sub_26F3B8D40(v57, v59, v61 & 1);

    v69(v14, v76);
    v67(v62, v80);
    return v47 < v64;
  }
}

uint64_t sub_26F3D0438@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF528, &qword_26F4A4218);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF530, &unk_26F4A83F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = sub_26F49F258();
  if (a1)
  {
    sub_26F49E768();
    v17 = sub_26F49EEC8();
    v69 = v16;
    v70 = v12;
    v18 = v17;
    v67 = v6;
    v20 = v19;
    v21 = v15;
    v23 = v22;
    sub_26F49ECA8();
    v71 = a3;
    v64 = sub_26F49EEA8();
    v65 = v9;
    v66 = a2;
    v25 = v24;
    v68 = v7;
    v27 = v26;
    v29 = v28;

    v30 = v23 & 1;
    v15 = v21;
    sub_26F3B8D40(v18, v20, v30);

    LOBYTE(v20) = sub_26F49EC78();
    sub_26F49DF78();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v27 &= 1u;
    LOBYTE(v89) = v27;
    LOBYTE(v86) = 0;
    v39 = sub_26F49F248();
    KeyPath = swift_getKeyPath();
    v41 = sub_26F49EC78();
    sub_26F49DF78();
    LOBYTE(v86) = 0;
    *&v89 = v64;
    *(&v89 + 1) = v25;
    LOBYTE(v90[0]) = v27;
    *(&v90[0] + 1) = v29;
    LOBYTE(v90[1]) = v20;
    *(&v90[1] + 1) = v32;
    *&v90[2] = v34;
    *(&v90[2] + 1) = v36;
    *&v90[3] = v38;
    BYTE8(v90[3]) = 0;
    *&v90[4] = KeyPath;
    *(&v90[4] + 1) = v39;
    LOBYTE(v90[5]) = v41;
    v16 = v69;
    *(&v90[5] + 1) = v42;
    *&v90[6] = v43;
    *(&v90[6] + 1) = v44;
    *&v90[7] = v45;
    BYTE8(v90[7]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF540, &unk_26F4A8430);
    sub_26F3D3734();
    v46 = v65;
    v12 = v70;
    sub_26F49F078();
    v75[6] = v90[5];
    v76[0] = v90[6];
    *(v76 + 9) = *(&v90[6] + 9);
    v75[2] = v90[1];
    v75[3] = v90[2];
    v75[4] = v90[3];
    v75[5] = v90[4];
    v75[0] = v89;
    v75[1] = v90[0];
    sub_26F3B6B4C(v75, &qword_2806DF540, &unk_26F4A8430);
    v47 = sub_26F49E6D8();
    v74 = 0;
    sub_26F3D0A2C(&v89);
    v81 = v90[3];
    v82 = v90[4];
    v83 = v90[5];
    v77 = v89;
    v78 = v90[0];
    v79 = v90[1];
    v80 = v90[2];
    v84[0] = v89;
    v84[1] = v90[0];
    v84[2] = v90[1];
    v84[3] = v90[2];
    v84[4] = v90[3];
    v84[5] = v90[4];
    v85 = v90[5];
    sub_26F3B8DD4(&v77, &v86, &qword_2806DF570, &qword_26F4A4260);
    a3 = v71;
    sub_26F3B6B4C(v84, &qword_2806DF570, &qword_26F4A4260);
    *(&v73[3] + 7) = v80;
    *(&v73[4] + 7) = v81;
    *(&v73[5] + 7) = v82;
    *(v73 + 7) = v77;
    *(&v73[1] + 7) = v78;
    *(&v73[6] + 7) = v83;
    *(&v73[2] + 7) = v79;
    LOBYTE(v20) = v74;
    v48 = sub_26F49F5A8();
    v86 = v47;
    LOBYTE(v87[0]) = v20;
    *(&v87[3] + 1) = v73[3];
    v49 = v73[3];
    v50 = v73[4];
    *(&v87[4] + 1) = v73[4];
    v51 = v73[5];
    *(&v87[5] + 1) = v73[5];
    *(&v87[5] + 10) = *(&v73[5] + 9);
    *(v87 + 1) = v73[0];
    v52 = v73[0];
    v53 = v73[1];
    *(&v87[1] + 1) = v73[1];
    v54 = v73[2];
    *(&v87[2] + 1) = v73[2];
    *&v88 = v48;
    *(&v88 + 1) = v55;
    v56 = v67;
    v57 = (v46 + *(v67 + 36));
    v58 = v87[6];
    v57[6] = v87[5];
    v57[7] = v58;
    v57[8] = v88;
    v59 = v87[2];
    v57[2] = v87[1];
    v57[3] = v59;
    v60 = v87[4];
    v57[4] = v87[3];
    v57[5] = v60;
    v61 = v87[0];
    *v57 = v86;
    v57[1] = v61;
    *(&v90[3] + 1) = v49;
    *(&v90[4] + 1) = v50;
    *(&v90[5] + 1) = v51;
    *(&v90[5] + 10) = *(&v73[5] + 9);
    *(v90 + 1) = v52;
    *(&v90[1] + 1) = v53;
    v89 = v47;
    LOBYTE(v90[0]) = v20;
    *(&v90[2] + 1) = v54;
    *&v90[7] = v48;
    *(&v90[7] + 1) = v55;
    sub_26F3B8DD4(&v86, &v72, &qword_2806DF578, &unk_26F4A8440);
    sub_26F3B6B4C(&v89, &qword_2806DF578, &unk_26F4A8440);
    sub_26F3BBAEC(v46, v15, &qword_2806DF528, &qword_26F4A4218);
    (*(v68 + 56))(v15, 0, 1, v56);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v6);
  }

  sub_26F3B8DD4(v15, v12, &qword_2806DF530, &unk_26F4A83F0);
  *a3 = v16;
  *(a3 + 8) = 256;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF538, &qword_26F4A4220);
  sub_26F3B8DD4(v12, a3 + *(v62 + 48), &qword_2806DF530, &unk_26F4A83F0);

  sub_26F3B6B4C(v15, &qword_2806DF530, &unk_26F4A83F0);
  sub_26F3B6B4C(v12, &qword_2806DF530, &unk_26F4A83F0);
}

uint64_t sub_26F3D0A2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF580, &qword_26F4A4268);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26F4A3B80;
  sub_26F49F258();
  sub_26F3D0C04();
  v3 = sub_26F49F268();

  *(v2 + 32) = v3;
  sub_26F49F258();
  sub_26F3D0C04();
  v4 = sub_26F49F268();

  *(v2 + 40) = v4;
  sub_26F49F678();
  sub_26F49F688();
  MEMORY[0x274390330](v2);
  sub_26F49E268();
  sub_26F49F5A8();
  sub_26F49E0C8();
  v5 = sub_26F49F248();
  v6 = v19;
  v12[2] = v18;
  v12[3] = v19;
  v12[4] = v20;
  v7 = v20;
  v8 = v21;
  v13 = v21;
  v10 = v17;
  v12[0] = v16;
  v9 = v16;
  v12[1] = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 80) = v8;
  *(a1 + 88) = v5;
  *(a1 + 96) = 256;
  sub_26F3B8DD4(v12, v14, &qword_2806DF588, &unk_26F4A8450);
  v14[2] = v18;
  v14[3] = v19;
  v14[4] = v20;
  v15 = v21;
  v14[0] = v16;
  v14[1] = v17;
  return sub_26F3B6B4C(v14, &qword_2806DF588, &unk_26F4A8450);
}

uint64_t sub_26F3D0C04()
{
  v1 = sub_26F49E2E8();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = sub_26F49DA98();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_26F49DAB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ExpandingText(0);
  sub_26F3B8DD4(v0 + *(v17 + 24), v12, &qword_2806DEFD8, &qword_26F4A3670);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3CF7AC(v6);
    v19 = v26;
    v18 = v27;
    (*(v26 + 104))(v3, *MEMORY[0x277CDFA90], v27);
    v20 = sub_26F49E2D8();
    v21 = *(v19 + 8);
    v21(v3, v18);
    v21(v6, v18);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_26F49DAA8();
    v22 = sub_26F49DA78();
    (*(v24 + 8))(v9, v25);
    (*(v14 + 8))(v16, v13);
    v20 = v22 == 2;
  }

  return v20 & 1;
}

uint64_t ExpandingText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v64 = sub_26F49E2E8();
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B8, &qword_26F4A3F28) - 8;
  MEMORY[0x28223BE20](v54);
  v5 = (&v53 - v4);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3C0, &qword_26F4A3F30) - 8;
  MEMORY[0x28223BE20](v56);
  v55 = &v53 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3C8, &qword_26F4A3F38) - 8;
  MEMORY[0x28223BE20](v63);
  v58 = &v53 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3D0, &qword_26F4A3F40);
  MEMORY[0x28223BE20](v67);
  v66 = &v53 - v8;
  v9 = type metadata accessor for ExpandingText(0);
  v10 = *(v9 - 8);
  v57 = v9 - 8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F3D2844(v1, v12);
  sub_26F49FBD8();
  v13 = sub_26F49FBC8();
  v14 = *(v10 + 80);
  v15 = (v14 + 32) & ~v14;
  v65 = v11;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_26F3D28AC(v12, v16 + v15);
  sub_26F3D2844(v1, v12);
  v18 = sub_26F49FBC8();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  sub_26F3D28AC(v12, v19 + v15);
  sub_26F49F478();
  v20 = v74;
  v61 = *(&v74 + 1);
  v62 = v74;
  LODWORD(v18) = v75;
  *v5 = sub_26F49F5C8();
  v5[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3D8, &qword_26F4A3F48);
  sub_26F3D185C(v2, v20, *(&v20 + 1), v18, v5 + *(v22 + 44));
  v23 = (v5 + *(v54 + 44));
  *v23 = CGPointMake;
  v23[1] = 0;
  KeyPath = swift_getKeyPath();
  v25 = sub_26F3D0C04();
  v26 = v60;
  v27 = MEMORY[0x277CDFA90];
  if ((v25 & 1) == 0)
  {
    v27 = MEMORY[0x277CDFA88];
  }

  v28 = v59;
  v29 = v64;
  (*(v60 + 104))(v59, *v27, v64);
  v30 = v55;
  v31 = &v55[*(v56 + 44)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E0, &qword_26F4A82B0);
  (*(v26 + 32))(v31 + *(v32 + 28), v28, v29);
  *v31 = KeyPath;
  sub_26F3BBAEC(v5, v30, &qword_2806DF3B8, &qword_26F4A3F28);
  sub_26F49F5A8();
  sub_26F49E3D8();
  v33 = v58;
  sub_26F3BBAEC(v30, v58, &qword_2806DF3C0, &qword_26F4A3F30);
  v34 = (v33 + *(v63 + 44));
  v35 = v79;
  v34[4] = v78;
  v34[5] = v35;
  v34[6] = v80;
  v36 = v75;
  *v34 = v74;
  v34[1] = v36;
  v37 = v77;
  v34[2] = v76;
  v34[3] = v37;
  v38 = v2;
  v39 = (v2 + *(v57 + 44));
  *&v37 = *v39;
  v40 = v39[1];
  v72 = v37;
  v73 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEAA0, &qword_26F4A2550);
  sub_26F49F368();
  v41 = v69;
  v42 = v70;
  v43 = v71;
  v44 = sub_26F49F5A8();
  v46 = v45;
  v47 = v66;
  sub_26F3BBAEC(v33, v66, &qword_2806DF3C8, &qword_26F4A3F38);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E8, &qword_26F4A3F50) + 36));
  *v48 = sub_26F3D2654;
  v48[1] = 0;
  v48[2] = v44;
  v48[3] = v46;
  v49 = swift_allocObject();
  *(v49 + 2) = v41;
  *(v49 + 3) = v42;
  *(v49 + 4) = v43;
  v50 = (v47 + *(v67 + 36));
  *v50 = sub_26F3D2C7C;
  v50[1] = v49;
  LOBYTE(v69) = sub_26F3CFBF8();
  sub_26F3D2844(v38, v12);
  v51 = swift_allocObject();
  sub_26F3D28AC(v12, v51 + ((v14 + 16) & ~v14));
  sub_26F3D2D08();
  sub_26F49F168();

  return sub_26F3B6B4C(v47, &qword_2806DF3D0, &qword_26F4A3F40);
}

void *sub_26F3D16C4@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if (*(a1 + 24))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    result = MEMORY[0x274390240](&v5, v3);
  }

  else
  {
    type metadata accessor for ExpandingText(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
    result = sub_26F49F348();
  }

  *a2 = v5;
  return result;
}

uint64_t sub_26F3D1778(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    sub_26F49F458();
  }

  else
  {
    type metadata accessor for ExpandingText(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
    return sub_26F49F358();
  }
}

uint64_t sub_26F3D185C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v99 = a4;
  v98 = a3;
  v97 = a2;
  v106 = a5;
  v89 = sub_26F49E358();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ExpandingText(0);
  v80 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v81 = v7;
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4C8, &unk_26F4A8360);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v79 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D0, &qword_26F4A41C8);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v83 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4D8, &unk_26F4A8370);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4E0, &qword_26F4A41D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4E8, &unk_26F4A8380);
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4F0, &qword_26F4A41D8);
  MEMORY[0x28223BE20](v96);
  v94 = &v79 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4F8, &unk_26F4A8390);
  MEMORY[0x28223BE20](v95);
  v101 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v25);
  v100 = &v79 - v26;
  v27 = a1[1];
  *&v111 = *a1;
  *(&v111 + 1) = v27;
  sub_26F3BDC0C();

  v93 = sub_26F49EED8();
  v92 = v28;
  v30 = v29;
  v91 = v31;
  sub_26F49F578();
  sub_26F49E3D8();
  v32 = v30 & 1;
  v118 = v30 & 1;
  v33 = a1;
  if (sub_26F3CFBF8())
  {
    v34 = v97;
    v108 = v97;
    v35 = v98;
    v109 = v98;
    v36 = v99 & 1;
    v110 = v99 & 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    MEMORY[0x274390240](&v107, v37);
    if (v107)
    {
      v38 = 0;
    }

    else
    {
      v39 = v33 + *(v90 + 44);
      v40 = *v39;
      v41 = *(v39 + 1);
      LOBYTE(v108) = v40;
      v109 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00);
      sub_26F49F348();
      v38 = v107;
    }
  }

  else
  {
    v34 = v97;
    v35 = v98;
    v38 = 0;
    v36 = v99 & 1;
  }

  *v16 = sub_26F49E6D8();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF500, &qword_26F4A41E0);
  sub_26F3D0438(v38, v33, &v16[*(v42 + 44)]);
  sub_26F3BBAEC(v16, &v19[*(v17 + 36)], &qword_2806DF4E0, &qword_26F4A41D0);
  v43 = v92;
  *v19 = v93;
  *(v19 + 1) = v43;
  v19[16] = v32;
  *(v19 + 3) = v91;
  v44 = v116;
  *(v19 + 6) = v115;
  *(v19 + 7) = v44;
  *(v19 + 8) = v117;
  v45 = v112;
  *(v19 + 2) = v111;
  *(v19 + 3) = v45;
  v46 = v114;
  *(v19 + 4) = v113;
  *(v19 + 5) = v46;
  v47 = v34;
  v108 = v34;
  v109 = v35;
  v48 = v35;
  v110 = v36;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v107);
  v50 = v107;
  v51 = (v107 & 1) == 0;
  KeyPath = swift_getKeyPath();
  v53 = v19;
  v54 = v94;
  sub_26F3BBAEC(v53, v94, &qword_2806DF4E8, &unk_26F4A8380);
  v55 = v54 + *(v96 + 36);
  *v55 = KeyPath;
  *(v55 + 8) = v51;
  *(v55 + 16) = v50;
  sub_26F3BBAEC(v54, v24, &qword_2806DF4F0, &qword_26F4A41D8);
  v24[*(v95 + 36)] = 0;
  v56 = v100;
  sub_26F3BBAEC(v24, v100, &qword_2806DF4F8, &unk_26F4A8390);
  if (sub_26F3CFBF8())
  {
    v108 = v47;
    v109 = v48;
    v110 = v36;
    MEMORY[0x274390240](&v107, v49);
    v57 = v103;
    if ((v107 & 1) != 0 || (v58 = v33 + *(v90 + 44), v59 = *v58, v60 = *(v58 + 1), LOBYTE(v108) = v59, v109 = v60, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED98, &qword_26F4A4C00), sub_26F49F348(), v107 != 1))
    {
      v73 = 1;
      v72 = v104;
    }

    else
    {
      v61 = v82;
      sub_26F3D2844(v33, v82);
      v62 = (*(v80 + 80) + 33) & ~*(v80 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = v47;
      *(v63 + 24) = v48;
      *(v63 + 32) = v36;
      v64 = sub_26F3D28AC(v61, v63 + v62);
      MEMORY[0x28223BE20](v64);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF510, &unk_26F4A83E0);
      sub_26F3D36B0();
      v65 = v84;
      sub_26F49F398();
      v66 = v87;
      sub_26F49E348();
      sub_26F3B18CC(&qword_2806DF520, &qword_2806DF4C8, &unk_26F4A8360, MEMORY[0x277CDF028]);
      sub_26F3CAB30();
      v67 = v83;
      v68 = v86;
      v69 = v89;
      sub_26F49EF48();
      (*(v88 + 8))(v66, v69);
      (*(v85 + 8))(v65, v68);
      v70 = sub_26F49F228();
      v71 = v104;
      *(v67 + *(v104 + 36)) = v70;
      sub_26F3BBAEC(v67, v57, &qword_2806DF4D0, &qword_26F4A41C8);
      v72 = v71;
      v73 = 0;
    }
  }

  else
  {
    v73 = 1;
    v72 = v104;
    v57 = v103;
  }

  (*(v102 + 56))(v57, v73, 1, v72);
  v74 = v101;
  sub_26F3B8DD4(v56, v101, &qword_2806DF4F8, &unk_26F4A8390);
  v75 = v105;
  sub_26F3A2864(v57, v105);
  v76 = v106;
  sub_26F3B8DD4(v74, v106, &qword_2806DF4F8, &unk_26F4A8390);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF508, &unk_26F4A83D0);
  sub_26F3A2864(v75, v76 + *(v77 + 48));
  sub_26F3B6B4C(v57, &qword_2806DF4D8, &unk_26F4A8370);
  sub_26F3B6B4C(v56, &qword_2806DF4F8, &unk_26F4A8390);
  sub_26F3B6B4C(v75, &qword_2806DF4D8, &unk_26F4A8370);
  return sub_26F3B6B4C(v74, &qword_2806DF4F8, &unk_26F4A8390);
}

uint64_t sub_26F3D2384(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v8 = a1;
  v9 = a2;
  v10 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
  MEMORY[0x274390240](&v7);
  LOBYTE(v8) = (v7 & 1) == 0;
  sub_26F49F458();

  result = type metadata accessor for ExpandingText(0);
  v6 = (a4 + *(result + 28));
  if (*v6)
  {
    return (*v6)();
  }

  return result;
}

void sub_26F3D2458(uint64_t a1@<X8>)
{
  sub_26F49E768();
  v2 = sub_26F49EEC8();
  v4 = v3;
  v6 = v5;
  sub_26F49ECA8();
  v7 = sub_26F49EEA8();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_26F3B8D40(v2, v4, v6 & 1);

  LOBYTE(v2) = sub_26F49EC78();
  sub_26F49DF78();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 72) = 0;
}

uint64_t sub_26F3D258C(uint64_t a1)
{
  v2 = sub_26F49E2E8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26F49E498();
}

uint64_t sub_26F3D2678(uint64_t a1, char *a2, uint64_t a3)
{
  type metadata accessor for ExpandingText(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF4B0, &qword_26F4A41B8);
  sub_26F49F348();
  if (v5 == 3)
  {
    sub_26F3CFBF8();
  }

  sub_26F49F348();
  sub_26F49F358();

  if (*(a3 + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDE8, &qword_26F4A3110);
    sub_26F49F458();
  }

  return result;
}

uint64_t sub_26F3D27D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3D2844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandingText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3D28AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandingText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_26F3D2910@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ExpandingText(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26F3D16C4(v4, a1);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for ExpandingText(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  if (*(v0 + v2 + 24))
  {
  }

  v4 = v1[6];
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v1[7]))
  {
  }

  j__swift_release(*(v3 + v1[12]));
  v7 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3B0, &unk_26F4A8280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F49E2E8();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = v1[14];
  v10 = sub_26F49EE58();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_26F3D2C08(char *a1)
{
  v3 = *(type metadata accessor for ExpandingText(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26F3D1778(a1, v4, v5, v6);
}

uint64_t sub_26F3D2C88(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for ExpandingText(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F3D2678(a1, a2, v6);
}

unint64_t sub_26F3D2D08()
{
  result = qword_2806DF3F0;
  if (!qword_2806DF3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3D0, &qword_26F4A3F40);
    sub_26F3D2DC0();
    sub_26F3B18CC(&qword_2806DE9B0, &qword_2806DE990, &qword_26F4A2488, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF3F0);
  }

  return result;
}

unint64_t sub_26F3D2DC0()
{
  result = qword_2806DF3F8;
  if (!qword_2806DF3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3E8, &qword_26F4A3F50);
    sub_26F3D2E78();
    sub_26F3B18CC(&qword_280F65738, &qword_2806DE988, &qword_26F4A2480, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF3F8);
  }

  return result;
}

unint64_t sub_26F3D2E78()
{
  result = qword_2806DF400;
  if (!qword_2806DF400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3C8, &qword_26F4A3F38);
    sub_26F3D2F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF400);
  }

  return result;
}

unint64_t sub_26F3D2F04()
{
  result = qword_2806DF408;
  if (!qword_2806DF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3C0, &qword_26F4A3F30);
    sub_26F3D2FBC();
    sub_26F3B18CC(&qword_2806DF430, &qword_2806DF3E0, &qword_26F4A82B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF408);
  }

  return result;
}

unint64_t sub_26F3D2FBC()
{
  result = qword_2806DF410;
  if (!qword_2806DF410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF3B8, &qword_26F4A3F28);
    sub_26F3B18CC(&qword_2806DF418, &qword_2806DF420, &qword_26F4A8290, MEMORY[0x277CE11A8]);
    sub_26F3D3074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF410);
  }

  return result;
}

unint64_t sub_26F3D3074()
{
  result = qword_2806DF428;
  if (!qword_2806DF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF428);
  }

  return result;
}

void sub_26F3D310C(uint64_t a1)
{
  sub_26F3D33AC(319, &qword_2806DF450, &qword_2806DEDE8, &qword_26F4A3110, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26F3D3410(319, &qword_280F66C80, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26F3D33AC(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26F3D3360(319, &qword_2806DF468, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_26F3D3360(319, &qword_2806DEA48, MEMORY[0x277D85048]);
          if (v5 <= 0x3F)
          {
            sub_26F3D3360(319, &qword_2806DF470, &type metadata for LayoutOptions);
            if (v6 <= 0x3F)
            {
              sub_26F3D33AC(319, &qword_2806DF478, &qword_2806DF480, &qword_26F4A3FD0, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_26F3D3410(319, &qword_2806DF488, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_26F49EE58();
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

void sub_26F3D3360(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26F49F378();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26F3D33AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_26F3D3410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F3D3488()
{
  result = qword_2806DF490;
  if (!qword_2806DF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF490);
  }

  return result;
}

unint64_t sub_26F3D34E0()
{
  result = qword_2806DF498;
  if (!qword_2806DF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF498);
  }

  return result;
}

unint64_t sub_26F3D3538()
{
  result = qword_2806DF4A0;
  if (!qword_2806DF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF4A0);
  }

  return result;
}

unint64_t sub_26F3D3590()
{
  result = qword_2806DF4A8;
  if (!qword_2806DF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF4A8);
  }

  return result;
}

uint64_t sub_26F3D35E4(uint64_t a1)
{
  v2 = type metadata accessor for ExpandingText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3D3640()
{
  v1 = *(type metadata accessor for ExpandingText(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_26F3D2384(v2, v3, v4, v5);
}

unint64_t sub_26F3D36B0()
{
  result = qword_2806DF518;
  if (!qword_2806DF518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF510, &unk_26F4A83E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF518);
  }

  return result;
}

unint64_t sub_26F3D3734()
{
  result = qword_2806DF548;
  if (!qword_2806DF548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF540, &unk_26F4A8430);
    sub_26F3D37C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF548);
  }

  return result;
}

unint64_t sub_26F3D37C0()
{
  result = qword_2806DF550;
  if (!qword_2806DF550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DF558, &qword_26F4A4258);
    sub_26F3D36B0();
    sub_26F3B18CC(&qword_2806DF560, &qword_2806DF568, &unk_26F4A45A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DF550);
  }

  return result;
}

uint64_t sub_26F3D3884()
{
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}