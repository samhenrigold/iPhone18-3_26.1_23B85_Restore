uint64_t sub_21E56A8E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21E56A5D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21E56A930()
{
  type metadata accessor for INIntentAllowListProvider();
  swift_allocObject();
  result = sub_21E56A96C();
  qword_2812269C0 = result;
  return result;
}

uint64_t sub_21E56A96C()
{
  v1 = sub_21E56A9C0();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_21E56A9C0()
{
  v0 = sub_21E57B5EC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  v7 = sub_21E56ACEC();
  if (v7)
  {
    v8 = v7;
    sub_21E57B5BC();
    v9 = sub_21E57B5DC();
    v10 = sub_21E57B85C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v0;
      v27 = v12;
      v13 = v12;
      *v11 = 136315138;
      v14 = sub_21E57BC2C();
      v16 = sub_21E5553D8(v14, v15, &v27);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_21E527000, v9, v10, "%s: INIntentAllowList exist on Trial, override the list from project", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223D5D740](v13, -1, -1);
      MEMORY[0x223D5D740](v11, -1, -1);

      (*(v1 + 8))(v6, v26);
    }

    else
    {

      (*(v1 + 8))(v6, v0);
    }
  }

  else
  {
    v17 = sub_21E56B490();
    if (v17)
    {
      return v17;
    }

    else
    {
      sub_21E57B5BC();
      v19 = sub_21E57B5DC();
      v20 = sub_21E57B86C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v21 = 136315138;
        v23 = sub_21E57BC2C();
        v25 = sub_21E5553D8(v23, v24, &v27);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_21E527000, v19, v20, "%s: Cannot load project INIntentAllowList, falling back to empty allow list", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x223D5D740](v22, -1, -1);
        MEMORY[0x223D5D740](v21, -1, -1);
      }

      (*(v1 + 8))(v4, v0);
      type metadata accessor for DeniedIntentParameters();
      v8 = MEMORY[0x277D84F90];
      sub_21E57B62C();
    }
  }

  return v8;
}

uint64_t sub_21E56ACEC()
{
  v1 = v0;
  v2 = sub_21E57ABEC();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v54 = &v51 - v5;
  v6 = sub_21E57ADEC();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E57B5EC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v61 = [objc_opt_self() clientWithIdentifier_];
  sub_21E57B5BC();
  v18 = sub_21E57B5DC();
  v19 = sub_21E57B85C();
  v20 = os_log_type_enabled(v18, v19);
  v57 = v1;
  v52 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v51 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v62[0] = v23;
    *v22 = 136315138;
    v24 = sub_21E57BC2C();
    v58 = v8;
    v26 = v9;
    v27 = sub_21E5553D8(v24, v25, v62);
    v8 = v58;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_21E527000, v18, v19, "%s: looking for INIntent allow list on Trial.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x223D5D740](v23, -1, -1);
    MEMORY[0x223D5D740](v22, -1, -1);

    v28 = v26;
  }

  else
  {

    v28 = v9;
  }

  v29 = *(v28 + 8);
  v29(v17, v8);
  sub_21E57ADAC();
  v30 = sub_21E57B66C();

  v32 = v59;
  v31 = v60;
  (*(v60 + 13))(v59, *MEMORY[0x277D60418], v6);
  sub_21E57ADDC();
  (*(v31 + 1))(v32, v6);
  v33 = sub_21E57B66C();

  v34 = [v61 levelForFactor:v30 withNamespaceName:v33];

  v35 = sub_21E57AD8C();
  if (v36)
  {
    v62[0] = v35;
    v62[1] = v36;

    MEMORY[0x223D5CBD0](47, 0xE100000000000000);

    v37 = v53;
    sub_21E57ABBC();

    v38 = v54;
    sub_21E57ABCC();
    v39 = v56;
    v40 = *(v55 + 8);
    v40(v37, v56);
    v41 = sub_21E56B8C8(v38);

    v40(v38, v39);
  }

  else
  {
    v43 = v52;
    sub_21E57B5BC();
    v44 = sub_21E57B5DC();
    v45 = sub_21E57B85C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v62[0] = v47;
      *v46 = 136315138;
      v48 = sub_21E57BC2C();
      v60 = v29;
      v50 = sub_21E5553D8(v48, v49, v62);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_21E527000, v44, v45, "%s: No INIntent allow list on Trial.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x223D5D740](v47, -1, -1);
      MEMORY[0x223D5D740](v46, -1, -1);

      v60(v43, v8);
    }

    else
    {

      v29(v43, v8);
    }

    return 0;
  }

  return v41;
}

uint64_t sub_21E56B490()
{
  v0 = sub_21E57ABEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21E57B5EC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  sub_21E57B5BC();
  v10 = sub_21E57B5DC();
  v11 = sub_21E57B85C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = v3;
    v36 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136315138;
    v15 = sub_21E57BC2C();
    v34 = v1;
    v17 = sub_21E5553D8(v15, v16, &v38);
    v1 = v34;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_21E527000, v10, v11, "%s: loading INIntent allow list from project resources.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x223D5D740](v14, -1, -1);
    v18 = v13;
    v3 = v35;
    v4 = v36;
    MEMORY[0x223D5D740](v18, -1, -1);
  }

  v19 = *(v4 + 8);
  v19(v9, v3);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_21E546314(0xD000000000000011, 0x800000021E57E290, 0x7473696C70, 0xE500000000000000, v21);

  if (v22)
  {
    v23 = v37;
    sub_21E57ABDC();

    v24 = sub_21E56B8C8(v23);
    (*(v1 + 8))(v23, v0);
  }

  else
  {
    sub_21E57B5BC();
    v25 = sub_21E57B5DC();
    v26 = sub_21E57B86C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      v29 = sub_21E57BC2C();
      v31 = sub_21E5553D8(v29, v30, &v38);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_21E527000, v25, v26, "%s: unable to get a path to the list of allowed INIntents", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x223D5D740](v28, -1, -1);
      MEMORY[0x223D5D740](v27, -1, -1);
    }

    v19(v7, v3);
    return 0;
  }

  return v24;
}

uint64_t sub_21E56B8C8(uint64_t a1)
{
  v1 = sub_21E57B5EC();
  v49 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - v3;
  sub_21E57AB9C();
  swift_allocObject();
  v5 = sub_21E57AB8C();
  v6 = sub_21E57ABFC();
  v46 = v4;
  v8 = v7;
  v9 = v6;
  sub_21E56C180();
  sub_21E57AB7C();
  v41 = v9;
  v42 = v8;
  v44 = v5;
  v45 = v1;
  v10 = v52[1];
  v43 = v52[0];
  type metadata accessor for DeniedIntentParameters();
  v11 = sub_21E57B62C();
  v51 = sub_21E5351E4();
  if (v51)
  {
    v12 = 0;
    v50 = v10 & 0xC000000000000001;
    v47 = v10 & 0xFFFFFFFFFFFFFF8;
    v48 = v10;
    while (1)
    {
      if (v50)
      {
        v13 = MEMORY[0x223D5CE50](v12, v10);
      }

      else
      {
        if (v12 >= *(v47 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11[2] && (v15 = *(v13 + 16), , sub_21E52F7C4(v15), v17 = v16, , (v17 & 1) != 0))
      {
      }

      else
      {
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);

        swift_isUniquelyReferenced_nonNull_native();
        v52[0] = v11;
        v20 = sub_21E52F7C4(v19);
        if (__OFADD__(v11[2], (v21 & 1) == 0))
        {
          goto LABEL_26;
        }

        v22 = v20;
        v23 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D10, "<7");
        if (sub_21E57BA1C())
        {
          v24 = sub_21E52F7C4(v19);
          if ((v23 & 1) != (v25 & 1))
          {
            goto LABEL_29;
          }

          v22 = v24;
        }

        v11 = v52[0];
        if (v23)
        {
          *(*(v52[0] + 56) + 8 * v22) = v13;
        }

        else
        {
          *(v52[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
          v26 = (v11[6] + 16 * v22);
          *v26 = v19;
          v26[1] = v18;
          *(v11[7] + 8 * v22) = v13;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_28;
          }

          v11[2] = v29;
        }

        v10 = v48;
      }

      ++v12;
      if (v14 == v51)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_21E57BB6C();
    __break(1u);
  }

  else
  {
LABEL_21:

    v30 = v46;
    sub_21E57B5BC();
    swift_bridgeObjectRetain_n();
    v31 = sub_21E57B5DC();
    v32 = sub_21E57B85C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v52[0] = v34;
      *v33 = 136315394;
      v35 = sub_21E57BC2C();
      v37 = sub_21E5553D8(v35, v36, v52);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      v38 = v11[2];

      *(v33 + 14) = v38;

      _os_log_impl(&dword_21E527000, v31, v32, "%s: loaded %ld intents", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x223D5D740](v34, -1, -1);
      MEMORY[0x223D5D740](v33, -1, -1);
      sub_21E53505C(v41, v42);
    }

    else
    {

      sub_21E53505C(v41, v42);
    }

    (*(v49 + 8))(v30, v45);

    return v43;
  }

  return result;
}

uint64_t sub_21E56BF5C()
{

  return v0;
}

uint64_t sub_21E56BF84()
{
  sub_21E56BF5C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_21E56BFDC()
{
  result = qword_281225C30;
  if (!qword_281225C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225C30);
  }

  return result;
}

unint64_t sub_21E56C030(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8CF0, &unk_21E57E298);
    sub_21E56C0B4(v4);
    OUTLINED_FUNCTION_7_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E56C0B4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC88E0, &unk_21E57C450);
    OUTLINED_FUNCTION_7_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21E56C118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88E8, &qword_21E57C660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21E56C180()
{
  result = qword_281225DC8;
  if (!qword_281225DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeniedIntentParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21E56C2C4()
{
  result = qword_27CEC8D18;
  if (!qword_27CEC8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D18);
  }

  return result;
}

unint64_t sub_21E56C31C()
{
  result = qword_281225C20;
  if (!qword_281225C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225C20);
  }

  return result;
}

unint64_t sub_21E56C374()
{
  result = qword_281225C28;
  if (!qword_281225C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225C28);
  }

  return result;
}

unint64_t sub_21E56C3C8()
{
  result = qword_281225DE0;
  if (!qword_281225DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DE0);
  }

  return result;
}

unint64_t sub_21E56C41C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8D28, &qword_21E57E478);
    sub_21E56C500(v4);
    OUTLINED_FUNCTION_7_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E56C49C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8958, &unk_21E57C580);
    OUTLINED_FUNCTION_7_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21E56C500(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_0(a1);
  if (!result)
  {
    type metadata accessor for DeniedIntentParameters();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for INIntentAllowList.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21E56C61C()
{
  result = qword_27CEC8D50;
  if (!qword_27CEC8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D50);
  }

  return result;
}

unint64_t sub_21E56C674()
{
  result = qword_281225DD0;
  if (!qword_281225DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DD0);
  }

  return result;
}

unint64_t sub_21E56C6CC()
{
  result = qword_281225DD8;
  if (!qword_281225DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DD8);
  }

  return result;
}

uint64_t sub_21E56C778(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_source;
  v4 = *MEMORY[0x277D55840];
  v5 = sub_21E57B3DC();
  (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_histogram) = a1;
  v6 = [objc_allocWithZone(MEMORY[0x277D23B78]) init];
  *(v1 + OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_appShortcutProvider) = v6;
  return v1;
}

uint64_t sub_21E56C824(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v112 = a2;
  v113 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  OUTLINED_FUNCTION_13_1(v4);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_9();
  v111 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  OUTLINED_FUNCTION_13_1(v7);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_9();
  v110 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  OUTLINED_FUNCTION_13_1(v10);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_9();
  v109 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  OUTLINED_FUNCTION_13_1(v13);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_9();
  v108 = v15;
  v107 = sub_21E57B3DC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v106 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  i = &v91 - v27;
  v122 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v29)
  {
    return MEMORY[0x277D84F90];
  }

  v102 = a1 & 0xC000000000000001;
  v94 = a1 & 0xFFFFFFFFFFFFFF8;
  v93 = a1 + 32;
  v99 = v21 + 1;
  v105 = *MEMORY[0x277D55840];
  v104 = (v17 + 104);
  v17 = 0;
  *&v26 = 136315394;
  v91 = v26;
  *&v26 = 136315650;
  v92 = v26;
  v117 = MEMORY[0x277D84F90];
  v96 = a1;
  v97 = i;
  v100 = v29;
  v98 = v25;
  do
  {
    if (v102)
    {
      v30 = MEMORY[0x223D5CE50](v17, a1);
    }

    else
    {
      if (v17 >= *(v94 + 16))
      {
        goto LABEL_58;
      }

      v30 = *(v93 + 8 * v17);
    }

    v21 = v30;
    if (__OFADD__(v17++, 1))
    {
      goto LABEL_57;
    }

    v103 = v17;
    v121 = MEMORY[0x277D84F90];
    v32 = WFAllGroupedPhrasesForAutoShortcut();
    if (v32)
    {
      v17 = v32;
      v118 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8C70, &qword_21E57DBD8);
      v25 = sub_21E57B78C();

      v33 = *(v25 + 2);
      if (v33)
      {
        a1 = 0;
        v119 = (v25 + 32);
        i = MEMORY[0x277D84F90];
        do
        {
          if (a1 >= *(v25 + 2))
          {
            goto LABEL_56;
          }

          v17 = *(v119 + 8 * a1);
          if (v17 >> 62)
          {
            v21 = sub_21E57BA4C();
            if (v21)
            {
LABEL_16:
              sub_21E55BF7C();
              if ((v17 & 0xC000000000000001) != 0)
              {

                v35 = MEMORY[0x223D5CE50](0, v17);
              }

              else
              {
                v34 = *(v17 + 32);

                v35 = v34;
              }

              v36 = v35;
              for (i = 0; v21 != i; ++i)
              {
                if ((v17 & 0xC000000000000001) != 0)
                {
                  v37 = MEMORY[0x223D5CE50](i, v17);
                }

                else
                {
                  if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_55;
                  }

                  v37 = *(v17 + 8 * i + 32);
                }

                v38 = v37;
                if (__OFADD__(i, 1))
                {
                  __break(1u);
LABEL_55:
                  __break(1u);
LABEL_56:
                  __break(1u);
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
LABEL_59:
                  v29 = sub_21E57BA4C();
                  goto LABEL_3;
                }

                if ([v37 isPrimary])
                {

                  v44 = [v38 localizedPhrase];
                  v45 = sub_21E57B67C();
                  v47 = v46;

                  OUTLINED_FUNCTION_8_4();
                  v21 = &v121;
                  sub_21E545A3C();
                  v17 = *(v121 + 16);
                  sub_21E52F384(v17);
                  OUTLINED_FUNCTION_7_6();
                  *(v48 + 32) = v45;
                  *(v48 + 40) = v47;
                  v121 = i;
                  swift_endAccess();

                  goto LABEL_29;
                }
              }

              v39 = [v36 localizedPhrase];
              v40 = sub_21E57B67C();
              v42 = v41;

              OUTLINED_FUNCTION_8_4();
              v21 = &v121;
              sub_21E545A3C();
              v17 = *(v121 + 16);
              sub_21E52F384(v17);
              OUTLINED_FUNCTION_7_6();
              *(v43 + 32) = v40;
              *(v43 + 40) = v42;
              v121 = i;
              swift_endAccess();
              v38 = v36;
LABEL_29:
            }
          }

          else
          {
            v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v21)
            {
              goto LABEL_16;
            }
          }

          ++a1;
        }

        while (a1 != v33);

        a1 = v96;
      }

      else
      {

        i = MEMORY[0x277D84F90];
      }

      v53 = v97;
      sub_21E57B5BC();
      v54 = v118;
      v21 = sub_21E57B5DC();
      v55 = sub_21E57B85C();

      v56 = os_log_type_enabled(v21, v55);
      v25 = v98;
      v115 = v54;
      if (v56)
      {
        v57 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v120[0] = v119;
        *v57 = v92;
        v58 = [v54 bundleIdentifier];
        sub_21E57B67C();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10_6();
        *(v57 + 4) = v58;
        *(v57 + 12) = 2080;
        v59 = [v54 actionIdentifier];
        sub_21E57B67C();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10_6();
        *(v57 + 14) = v59;
        *(v57 + 22) = 2080;

        v61 = MEMORY[0x223D5CC90](v60, MEMORY[0x277D837D0]);
        v63 = v62;

        v64 = sub_21E5553D8(v61, v63, v120);

        *(v57 + 24) = v64;
        _os_log_impl(&dword_21E527000, v21, v55, "getThirdPartyPhrases: %s %s: %s", v57, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();

        OUTLINED_FUNCTION_3_10();
        v66 = v97;
      }

      else
      {

        OUTLINED_FUNCTION_3_10();
        v66 = v53;
      }

      v65(v66, v101);
      v67 = i;
      i = *(i + 16);
      if (i)
      {
        v114 = sub_21E57B5AC();

        v95 = v67;
        v68 = v67 + 40;
        v69 = v115;
        do
        {
          v119 = *(v68 - 8);

          v70 = [v69 bundleIdentifier];
          v71 = sub_21E57B67C();
          v117 = v72;
          v118 = v71;

          v73 = [v69 actionIdentifier];
          v116 = sub_21E57B67C();

          (*v104)(v106, v105, v107);
          v74 = sub_21E57B1FC();
          OUTLINED_FUNCTION_11_0(v108, v75, v76, v74);
          v77 = sub_21E57AC4C();
          OUTLINED_FUNCTION_11_0(v109, v78, v79, v77);
          v80 = sub_21E57B5FC();
          OUTLINED_FUNCTION_11_0(v110, v81, v82, v80);
          v83 = sub_21E57B04C();
          OUTLINED_FUNCTION_11_0(v111, v84, v85, v83);
          v86 = v114;
          v87 = sub_21E57B59C();
          v120[3] = v86;
          v120[4] = MEMORY[0x277D55898];
          v120[0] = v87;
          sub_21E57B4AC();
          swift_allocObject();

          sub_21E57B44C();

          v21 = &v122;
          MEMORY[0x223D5CC60](v88);
          if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21E57B7AC();
          }

          sub_21E57B7CC();

          v68 += 16;
          --i;
          v69 = v115;
        }

        while (i);
        v117 = v122;

        swift_bridgeObjectRelease_n();
        a1 = v96;
        v25 = v98;
      }

      else
      {
      }
    }

    else
    {
      sub_21E57B5BC();
      i = v21;
      v21 = v25;
      v49 = sub_21E57B5DC();
      v50 = sub_21E57B86C();

      if (os_log_type_enabled(v49, v50))
      {
        v21 = swift_slowAlloc();
        v120[0] = swift_slowAlloc();
        *v21 = v91;
        v51 = [i bundleIdentifier];
        sub_21E57B67C();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10_6();
        *(v21 + 4) = v51;
        *(v21 + 6) = 2080;
        v52 = [i actionIdentifier];
        sub_21E57B67C();
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_10_6();
        *(v21 + 14) = v52;
        _os_log_impl(&dword_21E527000, v49, v50, "getThirdPartyPhrases: Failed to get grouped phrases for %s - %s", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_39();
      }

      else
      {
      }

      OUTLINED_FUNCTION_3_10();
      v89(v25, v101);
    }

    v17 = v103;
  }

  while (v103 != v100);
  return v117;
}

uint64_t sub_21E56D398(uint64_t a1)
{
  v2 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E57B5BC();
  v8 = sub_21E57B5DC();
  v9 = sub_21E57B84C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21E527000, v8, v9, "Ranking App Shortcut phrases", v10, 2u);
    OUTLINED_FUNCTION_39();
  }

  (*(v4 + 8))(v7, v2);

  sub_21E5427F8(a1);
}

uint64_t sub_21E56D4EC()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_source;
  v2 = sub_21E57B3DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_21E56D56C()
{
  sub_21E56D4EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AppShortcutsSource(uint64_t a1)
{
  result = qword_2812262E0;
  if (!qword_2812262E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E56D618(uint64_t a1)
{
  result = sub_21E57B3DC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E56D6C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete18AppShortcutsSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E56D740(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E568168;

  return sub_21E56D814(v8, a2, a3, v7);
}

uint64_t sub_21E56D814(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v4[10] = *a4;
  v6 = sub_21E57B5EC();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for DefaultEligibilityCriteria();
  v4[16] = v7;
  v4[5] = v7;
  v4[6] = &off_282F92F38;
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_21E56D944);
}

uint64_t sub_21E56D944()
{
  v18 = v0;
  v1 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[16]);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));

  v0[17] = sub_21E529EAC(v2);
  sub_21E57B5BC();
  v3 = sub_21E57B5DC();
  v4 = sub_21E57B84C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_21E57BC2C();
    v13 = sub_21E5553D8(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21E527000, v3, v4, "%s: Fetching phrases", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_39();
  }

  v14 = *(v7 + 8);
  v14(v6, v8);
  v0[18] = v14;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_21E56DB4C;

  return sub_21E5589A4();
}

uint64_t sub_21E56DB4C(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_21E56DC6C);
}

uint64_t sub_21E56DC6C(uint64_t a1)
{
  v30 = v1;
  sub_21E57B5BC();

  v2 = sub_21E57B5DC();
  v3 = sub_21E57B84C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = sub_21E5351E4();

    _os_log_impl(&dword_21E527000, v2, v3, "AppShortcutsSouce: created %ld phrases from LNAutoShortcutsProvider", v4, 0xCu);
    OUTLINED_FUNCTION_39();
  }

  else
  {
  }

  (*(v1 + 144))(*(v1 + 112), *(v1 + 88));
  result = sub_21E5351E4();
  if (result)
  {
    v6 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = *(v1 + 160) & 0xC000000000000001;
    v27 = result;
    v26 = v8;
    do
    {
      if (v8)
      {
        MEMORY[0x223D5CE50](v7, *(v1 + 160));
      }

      else
      {
      }

      sub_21E57B5BC();

      v9 = sub_21E57B5DC();
      v10 = sub_21E57B84C();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v1 + 144);
      v13 = *(v1 + 104);
      v28 = *(v1 + 88);
      if (v11)
      {
        v14 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v14 = 136315650;
        v15 = sub_21E57B45C();
        v17 = sub_21E5553D8(v15, v16, &v29);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        v18 = sub_21E57B47C();
        v20 = sub_21E5553D8(v18, v19, &v29);

        *(v14 + 14) = v20;
        *(v14 + 22) = 2080;
        v21 = sub_21E57B40C();
        v23 = sub_21E5553D8(v21, v22, &v29);

        *(v14 + 24) = v23;
        v8 = v26;
        _os_log_impl(&dword_21E527000, v9, v10, "Phrase: %s, BundleId: %s, ActionId: %s", v14, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_39();
        v6 = v27;
        OUTLINED_FUNCTION_39();
      }

      else
      {
      }

      v12(v13, v28);
      ++v7;
    }

    while (v6 != v7);
  }

  sub_21E56D398(*(v1 + 160));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  v24 = *(v1 + 8);
  v25 = *(v1 + 160);

  return v24(v25);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_21E5553D8(v0, v1, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_9_7()
{
}

uint64_t OUTLINED_FUNCTION_10_6()
{
}

BOOL sub_21E56E084(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_21E56E134(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21E57B6CC();
    v3 = sub_21E57B72C();

    return v3;
  }

  return result;
}

uint64_t sub_21E56E1F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v4 || (sub_21E57BB3C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7954746E65746E69 && a2 == 0xEA00000000006570;
    if (v6 || (sub_21E57BB3C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000021E57F380 == a2;
      if (v7 || (sub_21E57BB3C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000021E57FED0 == a2;
        if (v8 || (sub_21E57BB3C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000021E57FEF0 == a2;
          if (v9 || (sub_21E57BB3C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000014 && 0x800000021E57FF10 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_21E57BB3C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21E56E3F4(char a1)
{
  result = 0x656D614E65707974;
  switch(a1)
  {
    case 1:
      result = 0x7954746E65746E69;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21E56E4BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D88, &qword_21E57E800);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E573530();
  sub_21E57BBEC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  OUTLINED_FUNCTION_29_1(v11, v12);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_29_1(v13, v14);
    v17 = v3[4];
    HIBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
    sub_21E573584(&qword_27CEC8A80);
    OUTLINED_FUNCTION_1_7();
    v17 = v3[5];
    HIBYTE(v16) = 3;
    OUTLINED_FUNCTION_1_7();
    v17 = v3[6];
    HIBYTE(v16) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
    sub_21E5735EC(&qword_27CEC8D38);
    OUTLINED_FUNCTION_1_7();
    v17 = v3[7];
    HIBYTE(v16) = 5;
    OUTLINED_FUNCTION_1_7();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_21E56E6E8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D80, &qword_21E57E7F8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E573530();
  sub_21E57BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  OUTLINED_FUNCTION_11_5();
  v6 = sub_21E57BAAC();
  v8 = v7;
  LOBYTE(v26[0]) = 1;
  OUTLINED_FUNCTION_11_5();
  v18 = v6;
  v19 = sub_21E57BAAC();
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8A70, &qword_21E57CEB0);
  sub_21E573584(qword_2812260F8);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_11_5();
  sub_21E57BA9C();
  v17 = v26[0];
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_11_5();
  sub_21E57BA9C();
  v20 = v26[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8958, &unk_21E57C580);
  sub_21E5735EC(&qword_2812264D8);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_11_5();
  sub_21E57BA9C();
  v10 = v26[0];
  v27[0] = 5;
  OUTLINED_FUNCTION_11_5();
  sub_21E57BA9C();
  v11 = OUTLINED_FUNCTION_2_8();
  v12(v11);
  v16 = v28;
  *&v22 = v18;
  *(&v22 + 1) = v8;
  *&v23 = v19;
  *(&v23 + 1) = v21;
  *&v24 = v26[0];
  *(&v24 + 1) = v26[0];
  *&v25 = v26[0];
  *(&v25 + 1) = v28;
  sub_21E573240(&v22, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v26[0] = v18;
  v26[1] = v8;
  v26[2] = v19;
  v26[3] = v21;
  v26[4] = v17;
  v26[5] = v20;
  v26[6] = v10;
  v26[7] = v16;
  result = sub_21E573278(v26);
  v14 = v23;
  *a2 = v22;
  a2[1] = v14;
  v15 = v25;
  a2[2] = v24;
  a2[3] = v15;
  return result;
}

uint64_t sub_21E56EB50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6465766F72707061 && a2 == 0xEF73746E65746E49)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21E57BB3C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21E56EBF4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D68, &qword_21E57E7F0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E5733C0();
  sub_21E57BBEC();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D60, &qword_21E57E7E8);
  sub_21E573468(&qword_27CEC8D70);
  sub_21E57BAFC();
  return (*(v6 + 8))(v9, v4);
}

void *sub_21E56ED70(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D58, &qword_21E57E7E0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21E5733C0();
  sub_21E57BBDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8D60, &qword_21E57E7E8);
    sub_21E573468(&qword_281225540);
    sub_21E57BABC();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

uint64_t sub_21E56EF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E56E1F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21E56EF44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21E56E3EC();
  *a1 = result;
  return result;
}

uint64_t sub_21E56EF6C(uint64_t a1)
{
  v2 = sub_21E573530();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E56EFA8(uint64_t a1)
{
  v2 = sub_21E573530();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21E56EFE4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21E56E6E8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_21E56F044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21E56EB50(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21E56F070(uint64_t a1)
{
  v2 = sub_21E5733C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21E56F0AC(uint64_t a1)
{
  v2 = sub_21E5733C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21E56F0E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_21E56ED70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21E56F130()
{
  result = sub_21E54335C(&unk_282F92308);
  qword_2812269E8 = result;
  return result;
}

uint64_t sub_21E56F158()
{
  v0 = sub_21E57B5EC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  v7 = sub_21E57ABEC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_21E546314(0xD000000000000019, 0x800000021E57FEB0, 0x7473696C70, 0xE500000000000000, v17);

  if (v18)
  {
    sub_21E57ABDC();

    (*(v9 + 32))(v15, v13, v7);
    sub_21E57AB9C();
    swift_allocObject();
    sub_21E57AB8C();
    v19 = sub_21E57ABFC();
    v21 = v20;
    sub_21E5732A8();
    sub_21E57AB7C();
    (*(v9 + 8))(v15, v7);
    sub_21E53505C(v19, v21);

    return v26[2];
  }

  else
  {
    sub_21E57B5BC();
    v22 = sub_21E57B5DC();
    v23 = sub_21E57B85C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21E527000, v22, v23, "SiriSuggestionsPoolSource: unable to get URL to filePath. Returning 0 phrases", v24, 2u);
      OUTLINED_FUNCTION_12_2();
    }

    (*(v2 + 8))(v6, v0);
    return 0;
  }
}

uint64_t sub_21E56F5C0(uint64_t a1)
{
  v3 = sub_21E5351E4();
  v4 = v3;
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      goto LABEL_30;
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D5CE50](v5, a1);
      }

      else
      {
      }

      v7 = COERCE_DOUBLE(sub_21E57B3EC());
      if (v8)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v7;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_6();
        sub_21E543828();
        v6 = v12;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_40(v10);
        sub_21E543828();
        v6 = v13;
      }

      ++v5;

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v18 = v6;

  sub_21E571410(&v18);

  v1 = v18;
  if (v4)
  {
    if (v4 >= 1)
    {
      v14 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223D5CE50](v14, a1);
        }

        else
        {
        }

        ++v14;
        v15 = COERCE_DOUBLE(sub_21E57B3EC());
        if (v16)
        {
          v15 = 0.0;
        }

        sub_21E57A72C(v1, v15);
        sub_21E57B3FC();
      }

      while (v4 != v14);
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);

    __break(1u);
    return result;
  }

LABEL_26:
}

uint64_t sub_21E56F7B4()
{
  OUTLINED_FUNCTION_29();
  v1[35] = v2;
  v1[36] = v0;
  v3 = sub_21E57B5EC();
  v1[37] = v3;
  OUTLINED_FUNCTION_6(v3);
  v1[38] = v4;
  v1[39] = swift_task_alloc();
  v5 = sub_21E57AFEC();
  v1[40] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[41] = v6;
  v1[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC89E8, &unk_21E57C638);
  v1[43] = OUTLINED_FUNCTION_187();
  v1[44] = swift_task_alloc();
  v7 = sub_21E57B03C();
  v1[45] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[46] = v8;
  v1[47] = OUTLINED_FUNCTION_187();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v9 = sub_21E57B06C();
  v1[50] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[51] = v10;
  v1[52] = OUTLINED_FUNCTION_187();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v11 = sub_21E57B08C();
  v1[62] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[63] = v12;
  v1[64] = OUTLINED_FUNCTION_187();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_21E56FA70(__n128 a1)
{
  v198 = v1;
  v2 = *(v1 + 280);
  v3 = MEMORY[0x277D84F90];
  *(v1 + 272) = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = *(v1 + 504);
    v6 = *(v1 + 408);
    v7 = *(v1 + 368);
    v170 = *(v1 + 336);
    v8 = (v2 + 32);
    v163 = (*(v1 + 304) + 8);
    LODWORD(v164) = *MEMORY[0x277D60878];
    v169 = *(v1 + 328) + 104;
    v168 = (v7 + 16);
    v189 = (v6 + 16);
    v187 = (v6 + 8);
    v188 = v6;
    v167 = v7 + 8;
    HIDWORD(v164) = *MEMORY[0x277D60868];
    v186 = *MEMORY[0x277D60928];
    v184 = (v5 + 8);
    v185 = (v5 + 104);
    a1.n128_u64[0] = 136315394;
    v162 = a1;
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[3];
      *(v1 + 48) = v8[2];
      *(v1 + 64) = v11;
      *(v1 + 16) = v9;
      *(v1 + 32) = v10;
      v12 = *(v1 + 48);
      if (v12)
      {
        sub_21E573240(v1 + 16, v1 + 208);
        v13 = v12;
      }

      else
      {
        sub_21E573240(v1 + 16, v1 + 80);
        v13 = sub_21E57B62C();
      }

      v14 = *(v1 + 56);
      v195 = v3;

      if (v14)
      {
        v194 = v14;
      }

      else
      {
        v194 = sub_21E57B62C();
      }

      v16 = *(v1 + 32);
      v15 = *(v1 + 40);
      v191 = v8;
      v192 = *(v1 + 16);
      v17 = v16 == 0x6E6F69746361 && v15 == 0xE600000000000000;
      v190 = v4;
      if (v17 || (OUTLINED_FUNCTION_18_3(0x6E6F69746361) & 1) != 0)
      {

        sub_21E52D2D4(0x656C67676F547369, 0xEE006E6F69746341, v13);
        if (v18 && (v19 = sub_21E57B7DC(), v19 != 2) && (v19 & 1) != 0)
        {
          v20 = *(v1 + 528);
          v21 = *(v1 + 488);
          v22 = *(v1 + 496);
          v179 = *(v1 + 480);
          v23 = *(v1 + 400);

          swift_isUniquelyReferenced_nonNull_native();
          v24 = OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_10_7(v24 & 0xFFFF0000FFFFFFFFLL | 0x6E4F00000000, 0xE600000000000000, v25, v26, v27);

          OUTLINED_FUNCTION_27_1();
          sub_21E57B21C();
          v177 = *v185;
          (*v185)(v20, v186, v22);
          sub_21E57B07C();
          sub_21E539508(v194);
          sub_21E57B05C();
          v28 = v179;
          v180 = *v189;
          (*v189)(v28, v21, v23);
          v29 = v195;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = OUTLINED_FUNCTION_5_6();
            sub_21E5438E4(v141, v142, v143, v195);
            v29 = v144;
          }

          v31 = *(v29 + 16);
          v30 = *(v29 + 24);
          if (v31 >= v30 >> 1)
          {
            v145 = OUTLINED_FUNCTION_6_6(v30);
            sub_21E5438E4(v145, v146, v147, v29);
            v196 = v148;
          }

          else
          {
            v196 = v29;
          }

          v32 = *(v1 + 520);
          v33 = *(v1 + 496);
          v165 = *(v1 + 472);
          v166 = *(v1 + 464);
          v34 = *(v1 + 400);
          *(v196 + 16) = v31 + 1;
          OUTLINED_FUNCTION_23_2();
          v173 = v35;
          v171 = *(v36 + 72);
          v175 = *(v36 + 32);
          v175(v196 + v35 + v171 * v31);
          swift_isUniquelyReferenced_nonNull_native();
          v37 = OUTLINED_FUNCTION_15_3();
          OUTLINED_FUNCTION_10_7(v37 | 0x66664F00000000, 0xE700000000000000, v38, v39, v40);

          OUTLINED_FUNCTION_27_1();
          sub_21E57B21C();
          v177(v32, v186, v33);
          sub_21E57B07C();
          sub_21E539508(v194);

          sub_21E57B05C();
          v180(v166, v165, v34);
          v42 = *(v196 + 16);
          v41 = *(v196 + 24);
          if (v42 >= v41 >> 1)
          {
            v149 = OUTLINED_FUNCTION_40(v41);
            sub_21E5438E4(v149, v150, 1, v196);
            v196 = v151;
          }

          v181 = *(v1 + 528);
          v43 = *(v1 + 520);
          v45 = *(v1 + 488);
          v44 = *(v1 + 496);
          v46 = *(v1 + 472);
          v193 = *(v1 + 464);
          v47 = *(v1 + 400);
          sub_21E573278(v1 + 16);
          v48 = *v187;
          (*v187)(v46, v47);
          v49 = *v184;
          (*v184)(v43, v44);
          v48(v45, v47);
          v49(v181, v44);
          v3 = v196;
          *(v196 + 16) = v42 + 1;
          (v175)(v196 + v173 + v42 * v171, v193, v47);
        }

        else
        {
          v50 = *(v1 + 512);
          v51 = *(v1 + 496);
          v53 = *(v1 + 448);
          v52 = *(v1 + 456);
          v54 = *(v1 + 400);

          OUTLINED_FUNCTION_27_1();
          sub_21E57B21C();
          (*v185)(v50, v186, v51);
          sub_21E57B07C();
          sub_21E539508(v194);

          sub_21E57B05C();
          (*v189)(v53, v52, v54);
          v55 = v195;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = OUTLINED_FUNCTION_5_6();
            sub_21E5438E4(v126, v127, v128, v195);
            v55 = v129;
          }

          v57 = *(v55 + 16);
          v56 = *(v55 + 24);
          if (v57 >= v56 >> 1)
          {
            v130 = OUTLINED_FUNCTION_6_6(v56);
            sub_21E5438E4(v130, v131, v132, v55);
            v55 = v133;
          }

          v58 = *(v1 + 512);
          v59 = *(v1 + 496);
          v61 = *(v1 + 448);
          v60 = *(v1 + 456);
          v62 = *(v1 + 400);
          sub_21E573278(v1 + 16);
          (*(v188 + 8))(v60, v62);
          (*v184)(v58, v59);
          v3 = v55;
          *(v55 + 16) = v57 + 1;
          OUTLINED_FUNCTION_23_2();
          (*(v188 + 32))(v55 + v63 + *(v188 + 72) * v57, v61, v62);
        }
      }

      else
      {
        v64 = v16 == 0x746E65746E496E69 && v15 == 0xE800000000000000;
        if (v64 || (v65 = OUTLINED_FUNCTION_18_3(0x746E65746E496E69), (v65 & 1) != 0))
        {
          v176 = *(v1 + 440);
          v178 = *(v1 + 432);
          v182 = *(v1 + 400);
          v72 = *(v1 + 384);
          v73 = *(v1 + 352);
          v172 = *(v1 + 392);
          v174 = *(v1 + 360);
          v75 = *(v1 + 336);
          v74 = *(v1 + 344);
          v76 = *(v1 + 320);

          v77 = sub_21E57098C();
          *v75 = v192;
          v85 = OUTLINED_FUNCTION_26_2(v77, v78, v79, v80, v81, v82, v83, v84, v162.n128_i64[0], v162.n128_i64[1], v163, v164, v165, v166, v167, v168, v169, v170);
          v86(v85, HIDWORD(v164), v76);

          sub_21E539720(v13);

          sub_21E563058(v73, v74, &qword_27CEC89E8, &unk_21E57C638);
          OUTLINED_FUNCTION_25_4();
          sub_21E57AFFC();
          (*v168)(v172, v72, v174);
          sub_21E539508(v194);

          sub_21E57B05C();
          (*v189)(v178, v176, v182);
          v87 = v195;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v134 = OUTLINED_FUNCTION_5_6();
            sub_21E5438E4(v134, v135, v136, v195);
            v87 = v137;
          }

          v89 = *(v87 + 16);
          v88 = *(v87 + 24);
          if (v89 >= v88 >> 1)
          {
            v138 = OUTLINED_FUNCTION_40(v88);
            sub_21E5438E4(v138, v139, 1, v87);
            v87 = v140;
          }

          v91 = *(v1 + 432);
          v90 = *(v1 + 440);
          v92 = *(v1 + 400);
          v93 = *(v1 + 352);
          sub_21E573278(v1 + 16);
          (*(v188 + 8))(v90, v92);
          v94 = OUTLINED_FUNCTION_24_1();
          v95(v94);
          sub_21E56514C(v93, &qword_27CEC89E8, &unk_21E57C638);
          v3 = v87;
          *(v87 + 16) = v89 + 1;
          OUTLINED_FUNCTION_23_2();
          (*(v188 + 32))(v87 + v96 + *(v188 + 72) * v89, v91, v92);
        }

        else
        {
          if (v16 != 0x6E65746E49707061 || v15 != 0xE900000000000074)
          {
            v65 = OUTLINED_FUNCTION_18_3(0x6E65746E49707061);
            if ((v65 & 1) == 0)
            {

              sub_21E57B5BC();
              sub_21E573240(v1 + 16, v1 + 144);
              v115 = sub_21E57B5DC();
              v116 = sub_21E57B84C();
              sub_21E573278(v1 + 16);
              v117 = os_log_type_enabled(v115, v116);
              v118 = *(v1 + 312);
              v119 = *(v1 + 296);
              if (v117)
              {
                v120 = v4;
                v121 = swift_slowAlloc();
                v197 = swift_slowAlloc();
                *v121 = v162.n128_u32[0];
                *(v121 + 4) = sub_21E5553D8(v16, v15, &v197);
                *(v121 + 12) = 2080;

                v122 = OUTLINED_FUNCTION_27_1();
                v125 = sub_21E5553D8(v122, v123, v124);

                *(v121 + 14) = v125;
                _os_log_impl(&dword_21E527000, v115, v116, "StaticSuggestion:getSuggestions: Unsupported intentType %s for intent %s", v121, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_12_2();
                v4 = v120;
                v8 = v191;
                OUTLINED_FUNCTION_39();
              }

              sub_21E573278(v1 + 16);
              (*v163)(v118, v119);
              v3 = v195;
              goto LABEL_40;
            }
          }

          v99 = *(v1 + 416);
          v98 = *(v1 + 424);
          v100 = *(v1 + 392);
          v183 = *(v1 + 400);
          v101 = *(v1 + 376);
          v102 = *(v1 + 360);
          v103 = *(v1 + 320);
          **(v1 + 336) = v192;
          v104 = OUTLINED_FUNCTION_26_2(v65, v66, v103, v67, v68, v69, v70, v71, v162.n128_i64[0], v162.n128_i64[1], v163, v164, v165, v166, v167, v168, v169, v170);
          v105(v104, v164);

          sub_21E539720(v13);

          sub_21E57B00C();
          (*v168)(v100, v101, v102);
          sub_21E539508(v194);

          sub_21E57B05C();
          (*v189)(v99, v98, v183);
          v106 = v195;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v152 = OUTLINED_FUNCTION_5_6();
            sub_21E5438E4(v152, v153, v154, v195);
            v106 = v155;
          }

          v108 = *(v106 + 16);
          v107 = *(v106 + 24);
          if (v108 >= v107 >> 1)
          {
            v156 = OUTLINED_FUNCTION_6_6(v107);
            sub_21E5438E4(v156, v157, v158, v106);
            v106 = v159;
          }

          v110 = *(v1 + 416);
          v109 = *(v1 + 424);
          v111 = *(v1 + 400);
          sub_21E573278(v1 + 16);
          (*(v188 + 8))(v109, v111);
          v112 = OUTLINED_FUNCTION_24_1();
          v113(v112);
          v3 = v106;
          *(v106 + 16) = v108 + 1;
          OUTLINED_FUNCTION_23_2();
          (*(v188 + 32))(v106 + v114 + *(v188 + 72) * v108, v110, v111);
        }
      }

      v4 = v190;
      v8 = v191;
LABEL_40:
      v8 += 4;
      --v4;
    }

    while (v4);
  }

  *(v1 + 536) = v3;
  __swift_project_boxed_opaque_existential_1((*(v1 + 288) + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_suggestionsForIntentProvider), *(*(v1 + 288) + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_suggestionsForIntentProvider + 24));
  v160 = swift_task_alloc();
  *(v1 + 544) = v160;
  *v160 = v1;
  v160[1] = sub_21E570710;

  return sub_21E5615B8();
}

uint64_t sub_21E570710()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v4 = v3;
  *(v6 + 552) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E570818()
{
  v1 = *(v0 + 552);
  if (v1)
  {
    sub_21E54A558(v1);
  }

  v4 = *(v0 + 272);

  OUTLINED_FUNCTION_9_0();

  return v2(v4);
}

uint64_t sub_21E57098C()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  v6 = v2 == 0xD000000000000029 && 0x800000021E57FE30 == v1;
  if (!v6 && (sub_21E57BB3C() & 1) == 0)
  {
    v13 = v3 == 0xD000000000000024 && 0x800000021E57FE60 == v1;
    if (!v13 && (sub_21E57BB3C() & 1) == 0 || !v0)
    {
      goto LABEL_33;
    }

    v14 = OUTLINED_FUNCTION_30_1();
    if (v15)
    {
      if (v14 == 0x636973756DLL && v15 == 0xE500000000000000)
      {
      }

      else
      {
        v17 = sub_21E57BB3C();

        if ((v17 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v11 = MEMORY[0x277CD3EC0];
      goto LABEL_14;
    }

LABEL_27:
    v18 = OUTLINED_FUNCTION_30_1();
    if (v19)
    {
      if (v18 == 1937204590 && v19 == 0xE400000000000000)
      {
      }

      else
      {
        v21 = sub_21E57BB3C();

        if ((v21 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_21E535114(0, &qword_2812254F0, 0x277CD3EC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8938, &qword_21E57E680);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_21E57E5F0;
      v38 = objc_allocWithZone(MEMORY[0x277CD3DB8]);
      OUTLINED_FUNCTION_25_4();
      *(v37 + 32) = sub_21E57130C(v39, v40, v41, v42, 7, 0);
      v43 = sub_21E57B87C();
      sub_21E56228C(0xD000000000000012, 0x800000021E57FE90);
      *v5 = v43;
      goto LABEL_37;
    }

LABEL_33:
    sub_21E57B08C();
    OUTLINED_FUNCTION_26();
    goto LABEL_38;
  }

  if (!v0)
  {
    goto LABEL_13;
  }

  v7 = sub_21E52D2D4(0x656D686361747461, 0xEA0000000000746ELL, v0);
  if (!v8)
  {
    goto LABEL_13;
  }

  if (v7 == 0x6E6F697461636F6CLL && v8 == 0xE800000000000000)
  {

    goto LABEL_35;
  }

  v10 = sub_21E57BB3C();

  if (v10)
  {
LABEL_35:
    v26 = [objc_opt_self() attachmentWithCurrentLocation];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8938, &qword_21E57E680);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21E57E5F0;
    *(v27 + 32) = v26;
    v28 = objc_allocWithZone(MEMORY[0x277CD4078]);
    OUTLINED_FUNCTION_25_4();
    v12 = sub_21E571168(v29, v30, v31, v32, 0, 0, 0, 0, 0, 0, v27);
    goto LABEL_36;
  }

LABEL_13:
  v11 = MEMORY[0x277CD4078];
LABEL_14:
  v12 = [objc_allocWithZone(v11) init];
LABEL_36:
  *v5 = v12;
LABEL_37:
  v33 = *MEMORY[0x277D60918];
  v34 = sub_21E57B08C();
  OUTLINED_FUNCTION_8_3();
  (*(v35 + 104))(v5, v33, v34);
  v22 = v5;
  v23 = 0;
  v24 = 1;
  v25 = v34;
LABEL_38:

  return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_21E570D6C()
{
  v1 = OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_source;
  sub_21E57B3DC();
  OUTLINED_FUNCTION_8_3();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_appFinderProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_suggestionsForIntentProvider));
  return v0;
}

uint64_t sub_21E570DE4()
{
  sub_21E570D6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for StaticSuggestionsSource(uint64_t a1)
{
  result = qword_281225B48;
  if (!qword_281225B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E570E90(uint64_t a1)
{
  result = sub_21E57B3DC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21E570F2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriAutoComplete23StaticSuggestionsSource_source;
  v5 = sub_21E57B3DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21E570FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21E57107C;

  return sub_21E572B6C(v8, a2, a3, v7);
}

uint64_t sub_21E57107C()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_32();
  v3 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v4 = v3;

  OUTLINED_FUNCTION_9_0();

  return v5(v2);
}

id sub_21E571168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a1)
  {
    sub_21E535114(0, &qword_2812254C0, 0x277CD3E90);
    v16 = sub_21E57B77C();

    if (a4)
    {
LABEL_3:
      v17 = sub_21E57B66C();

      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  if (a7)
  {
    v18 = sub_21E57B66C();
  }

  else
  {
    v18 = 0;
  }

  if (a9)
  {
    v19 = sub_21E57B66C();
  }

  else
  {
    v19 = 0;
  }

  if (a11)
  {
    sub_21E535114(0, &qword_2812254D0, 0x277CD4070);
    v20 = sub_21E57B77C();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v11 initWithRecipients:v16 outgoingMessageType:a2 content:v17 speakableGroupName:a5 conversationIdentifier:v18 serviceName:v19 sender:a10 attachments:v20];

  return v21;
}

id sub_21E57130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (!a2)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_21E57B66C();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_21E57B66C();

LABEL_6:
  v13 = [v7 initWithIdentifier:v11 title:v12 type:a5 artwork:a6];

  return v13;
}

uint64_t sub_21E5713CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21E57BB3C() & 1;
  }
}

uint64_t sub_21E571410(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21E565138(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21E57147C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21E57147C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21E57BB0C();
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
        v6 = sub_21E57B7BC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21E5715CC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_21E571570(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21E571570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21E5715CC(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E543698();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_21E543698();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
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

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_21E571BA8((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_21E571A7C(&v79, *result, a3);
LABEL_89:
}

uint64_t sub_21E571A7C(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21E564BC8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21E571BA8((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21E571BA8(char *a1, char *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_21E5626D0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_21E5626D0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_21E571D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_21E57B10C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_21E57B5EC();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88F8, &unk_21E57C470);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8900, &unk_21E57C620);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC88D8, &unk_21E57D3B0);
  v2[16] = swift_task_alloc();
  v6 = sub_21E57B3DC();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v7 = sub_21E57B25C();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8908, &qword_21E57C480);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v8 = sub_21E57B23C();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v9 = sub_21E57AFDC();
  v2[29] = v9;
  v2[30] = *(v9 - 8);
  v2[31] = swift_task_alloc();
  v10 = sub_21E57AF9C();
  v2[32] = v10;
  v2[33] = *(v10 - 8);
  v2[34] = swift_task_alloc();
  v2[5] = type metadata accessor for DefaultEligibilityCriteria();
  v2[6] = &off_282F92F38;
  v2[2] = a2;

  v2[7] = MEMORY[0x277D84F90];
  v11 = swift_task_alloc();
  v2[35] = v11;
  *v11 = v2;
  v11[1] = sub_21E572194;

  return sub_21E56F7B4();
}

uint64_t sub_21E572194()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E572280()
{
  v98 = v0;
  v1 = v0[36];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[33];
    v72 = v0[24];
    v4 = v0[9];
    v5 = *(v3 + 16);
    v3 += 16;
    v83 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v82 = *(v3 + 56);
    v86 = (v0[30] + 8);
    v81 = (v0[27] + 8);
    v80 = (v0[21] + 8);
    v73 = *MEMORY[0x277D61238];
    v78 = *MEMORY[0x277D60E90];
    v76 = (v4 + 8);
    v77 = (v4 + 104);
    v79 = (v3 - 8);
    v75 = *MEMORY[0x277D55850];
    v85 = MEMORY[0x277D84F90];
    v74 = (v0[18] + 104);
    while (1)
    {
      v95 = v6;
      v96 = v2;
      v7 = v0[31];
      v9 = v0[28];
      v8 = v0[29];
      v10 = v0[25];
      v91 = v0[24];
      v11 = v0[22];
      v88 = v0[26];
      v89 = v0[20];
      v83(v0[34]);
      sub_21E57AF5C();
      sub_21E57AFAC();
      v12 = *v86;
      (*v86)(v7, v8);
      sub_21E57AF6C();
      v87 = sub_21E57B22C();
      v94 = v13;
      (*v81)(v9, v88);
      sub_21E57AF5C();
      sub_21E57AFBC();
      v12(v7, v8);
      sub_21E57B24C();
      (*v80)(v11, v89);
      sub_21E563058(v10, v91, &qword_27CEC8908, &qword_21E57C480);
      v14 = sub_21E57B1FC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, 1, v14);
      v16 = v0[24];
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v17 = *(v14 - 8);
      v18 = (*(v17 + 88))(v16, v14);
      v19 = v0[24];
      if (v18 != v73)
      {
        (*(v17 + 8))(v0[24], v14);
        goto LABEL_8;
      }

      (*(v17 + 96))(v0[24], v14);
      v20 = *v19;
      v21 = *(v72 + 8);
LABEL_9:
      if (qword_281225B58 != -1)
      {
        swift_once();
      }

      v25 = qword_2812269E8;

      LOBYTE(v25) = sub_21E543EB0(v20, v21, v25);

      v92 = v20;
      if (v25 & 1) != 0 || (__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), , v31 = sub_21E54A03C(v20), , (v31))
      {
        v32 = v0[31];
        v33 = v0[25];
        v34 = v0[23];
        v90 = v0[19];
        v84 = v0[29];
        (*v74)(v90, v75, v0[17], v26, v27, v28, v29, v30, v67, v68, v69, v70, v71);
        sub_21E563058(v33, v34, &qword_27CEC8908, &qword_21E57C480);
        sub_21E57AC4C();
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
        sub_21E57B5FC();
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);

        sub_21E57AF5C();
        sub_21E57AFCC();
        v12(v32, v84);
        sub_21E57B04C();
        OUTLINED_FUNCTION_26();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
        v47 = sub_21E57B5AC();
        v48 = sub_21E57B59C();
        v97[3] = v47;
        v97[4] = MEMORY[0x277D55898];
        v97[0] = v48;
        sub_21E57B4AC();
        swift_allocObject();
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v68 = v34;
        v67 = v90;
        OUTLINED_FUNCTION_25_4();
        sub_21E57B44C();

        MEMORY[0x223D5CC60](v49);
        v50 = *((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v50 >> 1)
        {
          OUTLINED_FUNCTION_40(v50);
          sub_21E57B7AC();
        }

        v51 = v0[34];
        v52 = v0[32];
        v53 = v0[25];
        sub_21E57B7CC();

        sub_21E56514C(v53, &qword_27CEC8908, &qword_21E57C480);
        (*v79)(v51, v52);
        v54 = v0[7];

        v0[7] = v54;
      }

      else
      {

        sub_21E57B5BC();

        v55 = sub_21E57B5DC();
        v56 = sub_21E57B85C();

        v57 = os_log_type_enabled(v55, v56);
        v58 = v0[34];
        v93 = v0[32];
        v59 = v0[25];
        if (v57)
        {
          v60 = swift_slowAlloc();
          v97[0] = swift_slowAlloc();
          *v60 = 136315394;
          v61 = sub_21E5553D8(v87, v94, v97);

          *(v60 + 4) = v61;
          *(v60 + 12) = 2080;

          v62 = sub_21E5553D8(v92, v21, v97);

          *(v60 + 14) = v62;
          _os_log_impl(&dword_21E527000, v55, v56, "Not adding suggestion %s because the app %s is not installed", v60, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_12_2();
        }

        else
        {
        }

        v63 = OUTLINED_FUNCTION_21_2();
        v64(v63);
        sub_21E56514C(v59, &qword_27CEC8908, &qword_21E57C480);
        (*v79)(v58, v93);

        v54 = v85;
      }

      v85 = v54;
      v6 = v95 + v82;
      v2 = v96 - 1;
      if (v96 == 1)
      {

        goto LABEL_23;
      }
    }

    sub_21E56514C(v16, &qword_27CEC8908, &qword_21E57C480);
LABEL_8:
    v22 = v0[10];
    v23 = v0[8];
    (*v77)(v22, v78, v23);
    v20 = sub_21E57B0FC();
    v21 = v24;
    (*v76)(v22, v23);
    goto LABEL_9;
  }

  v85 = MEMORY[0x277D84F90];
LABEL_23:
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  OUTLINED_FUNCTION_9_0();

  return v65(v85);
}

uint64_t sub_21E572B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[25] = a2;
  v6 = sub_21E57B5EC();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[21] = type metadata accessor for DefaultEligibilityCriteria();
  v4[22] = &off_282F92F38;
  v4[18] = a1;

  return MEMORY[0x2822009F8](sub_21E572C64);
}

uint64_t sub_21E572C64(uint64_t a1)
{
  sub_21E57B5BC();
  v2 = sub_21E57B5DC();
  v3 = sub_21E57B85C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21E527000, v2, v3, "StaticSuggestionsSource: fetching phrases from static list file", v4, 2u);
    OUTLINED_FUNCTION_39();
  }

  v5 = *(v1 + 248);
  v6 = *(v1 + 224);
  v7 = *(v1 + 232);

  v8 = *(v7 + 8);
  *(v1 + 256) = v8;
  v8(v5, v6);
  v9 = sub_21E56F158();
  if (v9)
  {
    v10 = v9;
    v12 = *(v1 + 200);
    v11 = *(v1 + 208);

    v13 = sub_21E56E134(2, v12, v11);
    v39 = MEMORY[0x223D5CB90](v13);
    v15 = v14;

    v17 = 0;
    v18 = *(v10 + 16);
    v19 = MEMORY[0x277D84F90];
LABEL_5:
    v38 = v19;
    *(v1 + 264) = v19;
    v20 = (v17 << 6) | 0x20;
    while (v18 != v17)
    {
      if (v17 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      v21 = *(v10 + v20);
      v22 = *(v10 + v20 + 16);
      v23 = *(v10 + v20 + 48);
      *(v1 + 48) = *(v10 + v20 + 32);
      *(v1 + 64) = v23;
      *(v1 + 16) = v21;
      *(v1 + 32) = v22;
      if (*(v1 + 64))
      {
        v24 = *(v1 + 64);
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      *(v1 + 184) = v39;
      *(v1 + 192) = v15;
      v25 = swift_task_alloc();
      *(v25 + 16) = v1 + 184;
      sub_21E573240(v1 + 16, v1 + 80);

      v26 = sub_21E56E084(sub_21E540070, v25, v24);

      if (!v26)
      {
        v19 = v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21E5628A0(0, *(v38 + 16) + 1, 1);
          v19 = v38;
        }

        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          v33 = OUTLINED_FUNCTION_40(v27);
          result = sub_21E5628A0(v33, v28 + 1, 1);
          v19 = v38;
        }

        ++v17;
        *(v19 + 16) = v28 + 1;
        v29 = (v19 + (v28 << 6));
        v30 = *(v1 + 16);
        v31 = *(v1 + 32);
        v32 = *(v1 + 64);
        v29[4] = *(v1 + 48);
        v29[5] = v32;
        v29[2] = v30;
        v29[3] = v31;
        goto LABEL_5;
      }

      result = sub_21E573278(v1 + 16);
      v20 += 64;
      ++v17;
    }

    v34 = *__swift_project_boxed_opaque_existential_1((v1 + 144), *(v1 + 168));
    v35 = swift_task_alloc();
    *(v1 + 272) = v35;
    *v35 = v1;
    v35[1] = sub_21E572FEC;

    return sub_21E571D48(v38, v34);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 144));

    OUTLINED_FUNCTION_9_0();
    v37 = MEMORY[0x277D84F90];

    return v36(v37);
  }
}

uint64_t sub_21E572FEC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_10_0();
  *v4 = v3;
  *(v6 + 280) = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_21E5730F4()
{
  sub_21E56F5C0(*(v0 + 280));
  sub_21E57B5BC();

  v1 = sub_21E57B5DC();
  v2 = sub_21E57B84C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = sub_21E5351E4();

    _os_log_impl(&dword_21E527000, v1, v2, "StaticSuggestionsSource: created %ld phrases", v3, 0xCu);
    OUTLINED_FUNCTION_12_2();
  }

  else
  {
  }

  (*(v0 + 256))(*(v0 + 240), *(v0 + 224));
  v4 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));

  OUTLINED_FUNCTION_9_0();

  return v5(v4);
}

unint64_t sub_21E5732A8()
{
  result = qword_281225798;
  if (!qword_281225798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225798);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21E573320(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21E573360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E5733C0()
{
  result = qword_2812257B0;
  if (!qword_2812257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257B0);
  }

  return result;
}

unint64_t sub_21E573414()
{
  result = qword_2812256C8;
  if (!qword_2812256C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812256C8);
  }

  return result;
}

uint64_t sub_21E573468(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8D60, &qword_21E57E7E8);
    v1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E5734DC()
{
  result = qword_27CEC8D78;
  if (!qword_27CEC8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D78);
  }

  return result;
}

unint64_t sub_21E573530()
{
  result = qword_2812256E0;
  if (!qword_2812256E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812256E0);
  }

  return result;
}

uint64_t sub_21E573584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8A70, &qword_21E57CEB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21E5735EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_19_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC8958, &unk_21E57C580);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticSuggestionApprovedIntent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StaticSuggestionApprovedIntent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StaticSuggestionApprovedList.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21E573868()
{
  result = qword_27CEC8D90;
  if (!qword_27CEC8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D90);
  }

  return result;
}

unint64_t sub_21E5738C0()
{
  result = qword_27CEC8D98;
  if (!qword_27CEC8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC8D98);
  }

  return result;
}

unint64_t sub_21E573918()
{
  result = qword_2812256D0;
  if (!qword_2812256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812256D0);
  }

  return result;
}

unint64_t sub_21E573970()
{
  result = qword_2812256D8;
  if (!qword_2812256D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812256D8);
  }

  return result;
}

unint64_t sub_21E5739C8()
{
  result = qword_2812257A0;
  if (!qword_2812257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257A0);
  }

  return result;
}

unint64_t sub_21E573A20()
{
  result = qword_2812257A8;
  if (!qword_2812257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812257A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return sub_21E57BADC();
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  return sub_21E545F30(a1, a2, 0x41676E6974746573, 0xED00006E6F697463, a5);
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1)
{

  return sub_21E57BB3C();
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1, uint64_t a2)
{

  return sub_21E57BAEC();
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return sub_21E52D2D4(v1, 0xE900000000000065, v0);
}

uint64_t IndexUpdateType.description.getter()
{
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      v8 = 0x6369666963657073;
      v6 = MEMORY[0x277D84A28];
      goto LABEL_13;
    case 2:
      v5 = 0x6174736E49707061;
      goto LABEL_11;
    case 3:
      sub_21E57B94C();

      v5 = 0x736E496E55707061;
LABEL_11:
      v8 = v5;
      v6 = MEMORY[0x277D837D0];
LABEL_13:
      v2 = MEMORY[0x223D5CC90](v1, v6);
      break;
    default:
      v8 = 678194273;
      if (v1)
      {
        v2 = 1702195828;
      }

      else
      {
        v2 = 0x65736C6166;
      }

      if (v1)
      {
        v3 = 0xE400000000000000;
      }

      else
      {
        v3 = 0xE500000000000000;
      }

      v4 = v3;
      break;
  }

  MEMORY[0x223D5CBD0](v2, v4);

  MEMORY[0x223D5CBD0](41, 0xE100000000000000);
  return v8;
}

uint64_t static IndexUpdateType.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  switch(v4)
  {
    case 1u:
      if (v6 != 1)
      {
        goto LABEL_11;
      }

      v29 = *a1;
      sub_21E5740FC(v3, 1u);
      sub_21E5740FC(v3, 1u);
      sub_21E5740FC(v5, 1u);
      OUTLINED_FUNCTION_6_7();
      sub_21E5781A0(&v29, v22, v23, sub_21E578974, sub_21E578410);
      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_6_7();
      sub_21E5781A0(&v29, v24, v25, sub_21E578974, sub_21E578410);
      v26 = OUTLINED_FUNCTION_19_2();
      sub_21E5741B8(v26, v27);
      OUTLINED_FUNCTION_23_3();

      sub_21E574114(v3, 1u);
      v14 = v5;
      v15 = 1;
      goto LABEL_10;
    case 2u:
      if (v6 != 2)
      {
        goto LABEL_11;
      }

      v29 = *a1;
      sub_21E5740FC(v3, 2u);
      sub_21E5740FC(v3, 2u);
      sub_21E5740FC(v5, 2u);
      OUTLINED_FUNCTION_0_6();
      sub_21E5781A0(&v29, v8, v9, sub_21E57846C, sub_21E578348);
      OUTLINED_FUNCTION_25_5();
      OUTLINED_FUNCTION_0_6();
      sub_21E5781A0(&v29, v10, v11, sub_21E57846C, sub_21E578348);
      v12 = OUTLINED_FUNCTION_19_2();
      sub_21E57412C(v12, v13);
      OUTLINED_FUNCTION_23_3();

      sub_21E574114(v3, 2u);
      v14 = v5;
      v15 = 2;
      goto LABEL_10;
    case 3u:
      if (v6 == 3)
      {
        v29 = *a1;
        sub_21E5740FC(v3, 3u);
        sub_21E5740FC(v3, 3u);
        sub_21E5740FC(v5, 3u);
        OUTLINED_FUNCTION_0_6();
        sub_21E5781A0(&v29, v16, v17, sub_21E57846C, sub_21E578348);
        OUTLINED_FUNCTION_25_5();
        OUTLINED_FUNCTION_0_6();
        sub_21E5781A0(&v29, v18, v19, sub_21E57846C, sub_21E578348);
        v20 = OUTLINED_FUNCTION_19_2();
        sub_21E57412C(v20, v21);
        OUTLINED_FUNCTION_23_3();

        sub_21E574114(v3, 3u);
        v14 = v5;
        v15 = 3;
LABEL_10:
        sub_21E574114(v14, v15);
        return v2 & 1;
      }

      else
      {
LABEL_11:

LABEL_12:
        sub_21E5740FC(v5, v6);
        sub_21E574114(v3, v4);
        sub_21E574114(v5, v6);
        v7 = 0;
        return v7 & 1;
      }

    default:
      if (*(a2 + 8))
      {
        goto LABEL_12;
      }

      sub_21E574114(*a1, 0);
      sub_21E574114(v5, 0);
      v7 = v5 ^ v3 ^ 1;
      return v7 & 1;
  }
}

double sub_21E5740FC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 2)
  {
  }

  return result;
}

uint64_t sub_21E574114(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 2)
  {
  }

  return result;
}

uint64_t sub_21E57412C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21E57BB3C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21E5741B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_21E574214(uint64_t *a1)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *v1;
  v9 = *(v1 + 8);
  v19 = *a1;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  if ((static IndexUpdateType.== infix(_:_:)(&v19, &v21) & 1) == 0)
  {
    switch(v9)
    {
      case 1:
        if (v7 == 1)
        {
          v14 = 0;
LABEL_18:
          if (v14 != *(v6 + 16))
          {
            v15 = *(v6 + 32 + 8 * v14++);
            v16 = *(v8 + 16);
            v17 = (v8 + 32);
            while (v16)
            {
              v18 = *v17++;
              --v16;
              if (v18 == v15)
              {
                goto LABEL_18;
              }
            }
          }
        }

        break;
      case 2:
        if (v7 == 2)
        {
          OUTLINED_FUNCTION_27_2();
          do
          {
            if (v3 + v4 == -1)
            {
              break;
            }

            if (++v4 >= *(v6 + 16))
            {
              __break(1u);
              goto LABEL_25;
            }

            OUTLINED_FUNCTION_22_2(v10);
            MEMORY[0x28223BE20](v11);
            OUTLINED_FUNCTION_21_3();
            sub_21E56E084(sub_21E540C2C, v2, v8);
            OUTLINED_FUNCTION_23_3();

            v10 = v5;
          }

          while ((v2 & 1) != 0);
        }

        break;
      case 3:
        if (v7 == 3)
        {
          OUTLINED_FUNCTION_27_2();
          while (v3 + v4 != -1)
          {
            if (++v4 >= *(v6 + 16))
            {
LABEL_25:
              __break(1u);
              return;
            }

            OUTLINED_FUNCTION_22_2(v12);
            MEMORY[0x28223BE20](v13);
            OUTLINED_FUNCTION_21_3();
            sub_21E56E084(sub_21E540070, v2, v8);
            OUTLINED_FUNCTION_23_3();

            v12 = v5;
            if ((v2 & 1) == 0)
            {
              return;
            }
          }
        }

        break;
      default:
        return;
    }
  }
}

uint64_t IndexUpdateType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      MEMORY[0x223D5D090](1);

      result = sub_21E579F08(a1, v2);
      break;
    case 2:
      v5 = 2;
      goto LABEL_5;
    case 3:
      v5 = 3;
LABEL_5:
      MEMORY[0x223D5D090](v5);

      result = sub_21E579E90(a1, v2);
      break;
    default:
      MEMORY[0x223D5D090](0);
      result = sub_21E57BBAC();
      break;
  }

  return result;
}

uint64_t IndexUpdateType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_21E57BB8C();
  switch(v2)
  {
    case 1:
      MEMORY[0x223D5D090](1);
      sub_21E579F08(v5, v1);
      break;
    case 2:
      v3 = 2;
      goto LABEL_5;
    case 3:
      v3 = 3;
LABEL_5:
      MEMORY[0x223D5D090](v3);
      sub_21E579E90(v5, v1);
      break;
    default:
      MEMORY[0x223D5D090](0);
      sub_21E57BBAC();
      break;
  }

  return sub_21E57BBCC();
}

uint64_t sub_21E5745B8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_21E57BB8C();
  IndexUpdateType.hash(into:)(v4);
  return sub_21E57BBCC();
}

unint64_t IndexUpdateResultInfo.description.getter()
{
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_28_2();

      OUTLINED_FUNCTION_13_2();
      updated = IndexUpdateType.description.getter();
      goto LABEL_6;
    case 2:
      v3 = 0x2D2064656C696146;
      MEMORY[0x223D5CBD0](*v0, *(v0 + 8));
      return v3;
    case 3:
      return 0xD000000000000010;
    default:
      OUTLINED_FUNCTION_28_2();

      OUTLINED_FUNCTION_13_2();
      updated = sub_21E57BB2C();
LABEL_6:
      MEMORY[0x223D5CBD0](updated);

      return v3;
  }
}

uint64_t static IndexUpdateResultInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 == 1)
      {
        v61 = *a1;
        v62 = v3;
        v59 = v5;
        v60 = v6;
        v32 = OUTLINED_FUNCTION_15_0();
        sub_21E579F58(v32, v33, 1);
        v34 = OUTLINED_FUNCTION_87();
        sub_21E579F58(v34, v35, 1);
        v36 = OUTLINED_FUNCTION_15_0();
        sub_21E579F58(v36, v37, 1);
        v38 = OUTLINED_FUNCTION_87();
        sub_21E579F58(v38, v39, 1);
        v12 = static IndexUpdateType.== infix(_:_:)(&v61, &v59);
        v40 = OUTLINED_FUNCTION_87();
        sub_21E579F7C(v40, v41, 1);
        v42 = OUTLINED_FUNCTION_15_0();
        sub_21E579F7C(v42, v43, 1);
        v44 = OUTLINED_FUNCTION_15_0();
        sub_21E579F7C(v44, v45, 1);
        v23 = OUTLINED_FUNCTION_87();
        v25 = 1;
        goto LABEL_18;
      }

      sub_21E5740FC(*a1, v3);
      goto LABEL_21;
    case 2:
      if (v7 == 2)
      {
        v13 = *a1;
        if (v2 == v5 && v3 == v6)
        {
          sub_21E579F58(v13, v3, 2);
          v52 = OUTLINED_FUNCTION_2_9();
          sub_21E579F58(v52, v53, v54);
          v55 = OUTLINED_FUNCTION_2_9();
          sub_21E579F7C(v55, v56, v57);
          v29 = OUTLINED_FUNCTION_2_9();
LABEL_23:
          sub_21E579F7C(v29, v30, v31);
          v12 = 1;
        }

        else
        {
          v12 = sub_21E57BB3C();
          v15 = OUTLINED_FUNCTION_15_0();
          sub_21E579F58(v15, v16, 2);
          v17 = OUTLINED_FUNCTION_2_9();
          sub_21E579F58(v17, v18, v19);
          v20 = OUTLINED_FUNCTION_2_9();
          sub_21E579F7C(v20, v21, v22);
          v23 = OUTLINED_FUNCTION_15_0();
          v25 = 2;
LABEL_18:
          sub_21E579F7C(v23, v24, v25);
        }
      }

      else
      {

LABEL_21:
        v46 = OUTLINED_FUNCTION_15_0();
        sub_21E579F58(v46, v47, v7);
        v48 = OUTLINED_FUNCTION_87();
        sub_21E579F7C(v48, v49, v4);
        v50 = OUTLINED_FUNCTION_15_0();
        sub_21E579F7C(v50, v51, v7);
        v12 = 0;
      }

      return v12 & 1;
    case 3:
      if (v7 != 3 || (v6 | v5) != 0)
      {
        goto LABEL_21;
      }

      v27 = OUTLINED_FUNCTION_87();
      sub_21E579F7C(v27, v28, 3);
      v29 = 0;
      v30 = 0;
      v31 = 3;
      goto LABEL_23;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_21;
      }

      v8 = OUTLINED_FUNCTION_87();
      sub_21E579F7C(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_15_0();
      sub_21E579F7C(v10, v11, 0);
      v12 = v2 == v5;
      return v12 & 1;
  }
}

uint64_t IndexUpdateManager.__allocating_init(indexBuilder:)(__int128 *a1)
{
  v2 = swift_allocObject();
  IndexUpdateManager.init(indexBuilder:)(a1);
  return v2;
}

void *IndexUpdateManager.init(indexBuilder:)(__int128 *a1)
{
  v3 = sub_21E57ADCC();
  MEMORY[0x28223BE20](v3 - 8);
  swift_defaultActor_initialize();
  v1[14] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DA0, &unk_21E57EA40);
  sub_21E57B26C();
  sub_21E57ADBC();
  v1[15] = sub_21E57AE0C();
  sub_21E57B12C();
  v1[16] = sub_21E57B11C();
  sub_21E529804(a1, (v1 + 17));
  return v1;
}

uint64_t sub_21E574A84()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  v5 = sub_21E57B5EC();
  *(v1 + 80) = v5;
  *(v1 + 88) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  *(v1 + 96) = v6;
  *(v1 + 104) = v7;
  *(v1 + 128) = *(v3 + 8);

  return MEMORY[0x2822009F8](sub_21E574B50);
}

uint64_t sub_21E574B50()
{
  v70 = v0;
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = *(v0 + 128);
      v11 = *(v0 + 104);
      v12 = *(v2 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5))));
      v13 = *v12;
      v14 = *(v12 + 8);
      v66 = *v12;
      v67 = v14;
      v68 = v11;
      v69 = v10;
      v15 = OUTLINED_FUNCTION_62_0();
      sub_21E5740FC(v15, v16);
      sub_21E574214(&v68);
      if (v17)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_21E574114(v13, v14);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    sub_21E57B5BC();
    v27 = OUTLINED_FUNCTION_62_0();
    sub_21E5740FC(v27, v28);
    v29 = OUTLINED_FUNCTION_26_3();
    sub_21E5740FC(v29, v30);
    v31 = sub_21E57B5DC();
    v32 = sub_21E57B85C();
    v33 = OUTLINED_FUNCTION_62_0();
    sub_21E574114(v33, v34);
    v35 = OUTLINED_FUNCTION_26_3();
    sub_21E574114(v35, v36);
    if (os_log_type_enabled(v31, v32))
    {
      v37 = *(v0 + 104);
      v62 = *(v0 + 88);
      v63 = *(v0 + 80);
      v65 = *(v0 + 96);
      v38 = *(v0 + 128);
      v39 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v66 = v61;
      *v39 = 136315394;
      v68 = v13;
      v69 = v14;
      v40 = OUTLINED_FUNCTION_62_0();
      sub_21E5740FC(v40, v41);
      updated = IndexUpdateType.description.getter();
      v44 = v43;
      v45 = OUTLINED_FUNCTION_62_0();
      sub_21E574114(v45, v46);
      v47 = sub_21E5553D8(updated, v44, &v66);

      *(v39 + 4) = v47;
      *(v39 + 12) = 2080;
      v68 = v37;
      v69 = v38;
      v48 = OUTLINED_FUNCTION_26_3();
      sub_21E5740FC(v48, v49);
      v50 = IndexUpdateType.description.getter();
      v52 = v51;
      v53 = OUTLINED_FUNCTION_26_3();
      sub_21E574114(v53, v54);
      v55 = sub_21E5553D8(v50, v52, &v66);

      *(v39 + 14) = v55;
      _os_log_impl(&dword_21E527000, v31, v32, "There is task pending - %s - which is going to do this work - %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D5D740](v61, -1, -1);
      MEMORY[0x223D5D740](v39, -1, -1);

      (*(v62 + 8))(v65, v63);
    }

    else
    {
      v57 = *(v0 + 88);
      v56 = *(v0 + 96);
      v58 = *(v0 + 80);

      (*(v57 + 8))(v56, v58);
    }

    v59 = *(v0 + 64);
    *v59 = v13;
    *(v59 + 8) = v14;
    *(v59 + 16) = 1;

    OUTLINED_FUNCTION_12_3();

    return v60();
  }

  else
  {
    while (1)
    {
LABEL_5:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v6)
      {
        break;
      }

      v5 = *(v2 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v18 = *(v0 + 104);
    v19 = *(v0 + 72);
    v20 = *(v0 + 128);

    swift_beginAccess();
    sub_21E5740FC(v18, v20);
    sub_21E576190(&v68, v18, v20);
    v21 = v68;
    v22 = v69;
    swift_endAccess();
    sub_21E574114(v21, v22);
    v23 = swift_allocObject();
    *(v0 + 112) = v23;
    *(v23 + 16) = v19;
    *(v23 + 24) = v18;
    *(v23 + 32) = v20;
    sub_21E5740FC(v18, v20);
    v64 = (*MEMORY[0x277D60FA8] + MEMORY[0x277D60FA8]);

    swift_task_alloc();
    OUTLINED_FUNCTION_17_3();
    *(v0 + 120) = v24;
    *v24 = v25;
    v24[1] = sub_21E575018;
    v26 = *(v0 + 64);

    return v64(v26, &unk_21E57EA58, v23, 0, 0, &type metadata for IndexUpdateResultInfo);
  }
}

uint64_t sub_21E575018()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21E575144(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_21E575168);
}

uint64_t sub_21E575168()
{
  OUTLINED_FUNCTION_152();
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  sub_21E5740FC(v1, v2);
  v9 = (*MEMORY[0x277D60420] + MEMORY[0x277D60420]);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v0 + 48) = v5;
  *v5 = v6;
  v5[1] = sub_21E575290;
  v7 = *(v0 + 16);

  return v9(v7, &unk_21E57EDD8, v4);
}

uint64_t sub_21E575290()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_12_3();

  return v3();
}

uint64_t sub_21E57538C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 49) = a4;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a1;
  return MEMORY[0x2822009F8](sub_21E5753B4);
}

uint64_t sub_21E5753B4()
{
  OUTLINED_FUNCTION_29();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 49);
    *(v0 + 40) = *(v0 + 72);
    *(v0 + 48) = v2;

    return MEMORY[0x2822009F8](sub_21E5754A0);
  }

  else
  {
    v3 = *(v0 + 56);
    *v3 = 0xD000000000000024;
    v3[1] = 0x800000021E580060;
    *(*(v0 + 56) + 16) = 2;
    OUTLINED_FUNCTION_12_3();

    return v4();
  }
}

uint64_t sub_21E5754A0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 49);
  sub_21E575EDC();
  switch(v1)
  {
    case 1:
      v2 = sub_21E5757D4;
      break;
    case 2:
      v2 = sub_21E575A18;
      break;
    case 3:
      v2 = sub_21E575C5C;
      break;
    default:
      v2 = sub_21E575560;
      break;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_21E575560()
{
  OUTLINED_FUNCTION_152();
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = v1[20];
  v4 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v3);
  OUTLINED_FUNCTION_10_8();
  v9 = (v5 + *v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v0 + 88) = v6;
  *v6 = v7;
  v6[1] = sub_21E57568C;

  return (v9)(v2 & 1, v3, v4);
}

uint64_t sub_21E57568C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E575774()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_3_11();

  return v0();
}

uint64_t sub_21E5757D4()
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_8(v1);

  return v3(v2);
}

uint64_t sub_21E5758D0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E5759B8()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_3_11();

  return v0();
}

uint64_t sub_21E575A18()
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_8(v1);

  return v3(v2);
}

uint64_t sub_21E575B14()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E575BFC()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_3_11();

  return v0();
}

uint64_t sub_21E575C5C()
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_10_8();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_8(v1);

  return v3(v2);
}

uint64_t sub_21E575D58()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 50) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_21E575E40()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 50);

  v2 = *(v0 + 56);
  if (v1 == 1)
  {
    *v2 = 0;
    v2[1] = 0;
    v3 = 3;
  }

  else
  {
    *v2 = 0xD000000000000027;
    v2[1] = 0x800000021E580090;
    v3 = 2;
  }

  *(*(v0 + 56) + 16) = v3;
  OUTLINED_FUNCTION_12_3();

  return v4();
}

uint64_t sub_21E575EDC()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_62_0();
  sub_21E579384(v0, v1, v2);
  swift_endAccess();
  return sub_21E57A398(v4, v5);
}

void *IndexUpdateManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t IndexUpdateManager.__deallocating_deinit()
{
  IndexUpdateManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21E575FE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21E57EA30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_21E576044(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21E57BB8C();
  sub_21E57B6AC();
  v8 = sub_21E57BBCC();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_21E57BB3C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_21E576F80(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_21E576190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = *v3;
  sub_21E57BB8C();
  v45 = v3;
  switch(v4)
  {
    case 1u:
      MEMORY[0x223D5D090](1);
      sub_21E579F08(v50, a2);
      break;
    case 2u:
      v8 = 2;
      goto LABEL_5;
    case 3u:
      v8 = 3;
LABEL_5:
      MEMORY[0x223D5D090](v8);
      sub_21E579E90(v50, a2);
      break;
    default:
      MEMORY[0x223D5D090](0);
      sub_21E57BBAC();
      break;
  }

  v9 = sub_21E57BBCC();
  v10 = v7 + 56;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_60:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = *v45;
    sub_21E5740FC(a2, v4);
    sub_21E5770E8(a2, v4, v12, isUniquelyReferenced_nonNull_native);
    *v45 = v50[0];
    *a1 = a2;
    *(a1 + 8) = v4;
    return 1;
  }

  v13 = ~v11;
  v47 = ~v11;
  v48 = v7 + 56;
  v46 = v7;
  while (2)
  {
    v14 = *(v7 + 48) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    switch(v16)
    {
      case 1u:
        if (v4 != 1)
        {
          sub_21E5740FC(a2, v4);
          sub_21E5740FC(v15, 1u);
          v17 = v15;
          v18 = 1;
          goto LABEL_47;
        }

        v49 = 16 * v12;
        v50[0] = *v14;
        sub_21E5740FC(v15, 1u);
        sub_21E5740FC(v15, 1u);
        sub_21E5740FC(a2, 1u);
        sub_21E5740FC(v15, 1u);
        v31 = MEMORY[0x277D84A28];
        sub_21E5781A0(v50, sub_21E5650CC, MEMORY[0x277D84A28], sub_21E578974, sub_21E578410);
        v32 = v50[0];
        v50[0] = a2;

        sub_21E5781A0(v50, sub_21E5650CC, v31, sub_21E578974, sub_21E578410);
        v33 = *(v32 + 16);
        if (v33 != *(v50[0] + 16))
        {
          goto LABEL_50;
        }

        if (v33 && v32 != v50[0])
        {
          v34 = 32;
          while (*(v32 + v34) == *(v50[0] + v34))
          {
            v34 += 8;
            if (!--v33)
            {
              goto LABEL_63;
            }
          }

LABEL_50:
          sub_21E574114(v15, 1u);
          sub_21E574114(a2, 1u);
          sub_21E574114(v15, 1u);

          goto LABEL_58;
        }

        goto LABEL_63;
      case 2u:
        if (v4 != 2)
        {
          sub_21E5740FC(a2, v4);
          sub_21E5740FC(v15, 2u);
          v17 = v15;
          v18 = 2;
          goto LABEL_47;
        }

        v49 = 16 * v12;
        v50[0] = *v14;
        sub_21E5740FC(v15, 2u);
        sub_21E5740FC(v15, 2u);
        sub_21E5740FC(a2, 2u);
        sub_21E5740FC(v15, 2u);
        v19 = MEMORY[0x277D837D0];
        sub_21E5781A0(v50, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
        v20 = v50[0];
        v50[0] = a2;

        sub_21E5781A0(v50, sub_21E5650B8, v19, sub_21E57846C, sub_21E578348);
        v21 = v50[0];
        v22 = *(v20 + 16);
        if (v22 != *(v50[0] + 16))
        {
          sub_21E574114(v15, 2u);
          sub_21E574114(a2, 2u);
          v35 = v15;
          v36 = 2;
          goto LABEL_53;
        }

        if (!v22 || v20 == v50[0])
        {
          goto LABEL_62;
        }

        v44 = a1;
        v23 = 0;
        while (1)
        {
          v24 = *(v20 + v23 + 32) == *(v21 + v23 + 32) && *(v20 + v23 + 40) == *(v21 + v23 + 40);
          if (!v24 && (sub_21E57BB3C() & 1) == 0)
          {
            break;
          }

          v23 += 16;
          if (!--v22)
          {
            goto LABEL_61;
          }
        }

        sub_21E574114(v15, 2u);
        sub_21E574114(a2, 2u);
        v37 = v15;
        v38 = 2;
        goto LABEL_56;
      case 3u:
        if (v4 != 3)
        {
          sub_21E5740FC(a2, v4);
          sub_21E5740FC(v15, 3u);
          v17 = v15;
          v18 = 3;
LABEL_47:
          sub_21E574114(v17, v18);
          sub_21E574114(a2, v4);
          goto LABEL_59;
        }

        v49 = 16 * v12;
        v50[0] = *v14;
        sub_21E5740FC(v15, 3u);
        sub_21E5740FC(v15, 3u);
        sub_21E5740FC(a2, 3u);
        sub_21E5740FC(v15, 3u);
        v25 = MEMORY[0x277D837D0];
        sub_21E5781A0(v50, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
        v26 = v50[0];
        v50[0] = a2;

        sub_21E5781A0(v50, sub_21E5650B8, v25, sub_21E57846C, sub_21E578348);
        v27 = v50[0];
        v28 = *(v26 + 16);
        if (v28 != *(v50[0] + 16))
        {
          sub_21E574114(v15, 3u);
          sub_21E574114(a2, 3u);
          v35 = v15;
          v36 = 3;
LABEL_53:
          sub_21E574114(v35, v36);

LABEL_57:
          v7 = v46;
LABEL_58:
          v13 = v47;
          v10 = v48;
LABEL_59:
          v12 = (v12 + 1) & v13;
          if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_60;
          }

          continue;
        }

        if (!v28 || v26 == v50[0])
        {
          goto LABEL_62;
        }

        v44 = a1;
        v29 = 0;
        do
        {
          v30 = *(v26 + v29 + 32) == *(v27 + v29 + 32) && *(v26 + v29 + 40) == *(v27 + v29 + 40);
          if (!v30 && (sub_21E57BB3C() & 1) == 0)
          {
            sub_21E574114(v15, 3u);
            sub_21E574114(a2, 3u);
            v37 = v15;
            v38 = 3;
LABEL_56:
            sub_21E574114(v37, v38);

            a1 = v44;
            goto LABEL_57;
          }

          v29 += 16;
          --v28;
        }

        while (v28);
LABEL_61:
        a1 = v44;
LABEL_62:
        v7 = v46;
LABEL_63:
        sub_21E574114(v15, v16);
        sub_21E574114(a2, v16);
        sub_21E574114(v15, v16);

LABEL_64:
        sub_21E574114(a2, v4);
        v41 = *(v7 + 48) + v49;
        v42 = *v41;
        *a1 = *v41;
        v43 = *(v41 + 8);
        *(a1 + 8) = v43;
        sub_21E5740FC(v42, v43);
        return 0;
      default:
        if (v4)
        {
          sub_21E5740FC(a2, v4);
          v17 = v15;
          v18 = 0;
          goto LABEL_47;
        }

        v49 = 16 * v12;
        sub_21E574114(v15, 0);
        sub_21E574114(a2, 0);
        if (((v15 ^ a2) & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_59;
    }
  }
}

uint64_t sub_21E576990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DA8, &qword_21E57EDC0);
  result = sub_21E57B92C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_21E575FE0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21E57BB8C();
    sub_21E57B6AC();
    result = sub_21E57BBCC();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21E576BEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DB0, &qword_21E57EDC8);
  result = sub_21E57B92C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_40:

    *v2 = v5;
    return result;
  }

  v37 = v1;
  v38 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v36 = 1 << *(v3 + 32);
    if (v36 >= 64)
    {
      sub_21E575FE0(0, (v36 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v36;
    }

    v2 = v37;
    *(v3 + 16) = 0;
    goto LABEL_40;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
LABEL_12:
    v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_21E57BB8C();
    switch(v18)
    {
      case 1:
        MEMORY[0x223D5D090](1);
        MEMORY[0x223D5D090](*(v17 + 16));
        v23 = *(v17 + 16);
        if (v23)
        {
          v24 = (v17 + 32);
          do
          {
            v25 = *v24++;
            MEMORY[0x223D5D0B0](v25);
            --v23;
          }

          while (v23);
        }

        break;
      case 2:
        MEMORY[0x223D5D090](2);
        MEMORY[0x223D5D090](*(v17 + 16));
        v19 = *(v17 + 16);
        if (v19)
        {
          v20 = v17 + 40;
          do
          {

            sub_21E57B6AC();

            v20 += 16;
            --v19;
          }

          while (v19);
        }

        break;
      case 3:
        MEMORY[0x223D5D090](3);
        MEMORY[0x223D5D090](*(v17 + 16));
        v21 = *(v17 + 16);
        if (v21)
        {
          v22 = v17 + 40;
          do
          {

            sub_21E57B6AC();

            v22 += 16;
            --v21;
          }

          while (v21);
        }

        break;
      default:
        MEMORY[0x223D5D090](0);
        sub_21E57BBAC();
        break;
    }

    result = sub_21E57BBCC();
    v26 = -1 << *(v5 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v30 = v18;
LABEL_34:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v35 = *(v5 + 48) + 16 * v29;
    *v35 = v17;
    *(v35 + 8) = v30;
    ++*(v5 + 16);
    v3 = v38;
    v10 = v39;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v31 = 0;
  v32 = (63 - v26) >> 6;
  v30 = v18;
  while (++v28 != v32 || (v31 & 1) == 0)
  {
    v33 = v28 == v32;
    if (v28 == v32)
    {
      v28 = 0;
    }

    v31 |= v33;
    v34 = *(v12 + 8 * v28);
    if (v34 != -1)
    {
      v29 = __clz(__rbit64(~v34)) + (v28 << 6);
      goto LABEL_34;
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

void sub_21E576F80(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_21E576990(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_21E577B94(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_21E57BB8C();
      sub_21E57B6AC();
      v16 = sub_21E57BBCC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_21E57BB3C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_21E5778DC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_21E57BB5C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void sub_21E5770E8(uint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v8 = v4;
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 <= v12 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_21E576BEC(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_21E577A34();
        goto LABEL_67;
      }

      sub_21E577DC8(v12 + 1);
    }

    v5 = 0;
    v14 = *v4;
    sub_21E57BB8C();
    switch(a2)
    {
      case 1u:
        MEMORY[0x223D5D090](1);
        sub_21E579F08(v52, result);
        break;
      case 2u:
        v15 = 2;
        goto LABEL_12;
      case 3u:
        v15 = 3;
LABEL_12:
        MEMORY[0x223D5D090](v15);
        sub_21E579E90(v52, result);
        break;
      default:
        MEMORY[0x223D5D090](0);
        sub_21E57BBAC();
        break;
    }

    v16 = sub_21E57BBCC();
    v17 = v14 + 56;
    v18 = -1 << *(v14 + 32);
    a3 = v16 & ~v18;
    if ((*(v14 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v19 = ~v18;
      v48 = v8;
      v49 = v14;
      v50 = ~v18;
      v51 = v14 + 56;
      while (1)
      {
        v20 = *(v14 + 48) + 16 * a3;
        v6 = *v20;
        v7 = *(v20 + 8);
        switch(v7)
        {
          case 1u:
            if (a2 != 1)
            {
              sub_21E5740FC(result, a2);
              sub_21E5740FC(v6, 1u);
              v21 = v6;
              v22 = 1;
              goto LABEL_54;
            }

            v52[0] = *v20;
            sub_21E5740FC(v6, 1u);
            sub_21E5740FC(v6, 1u);
            sub_21E5740FC(result, 1u);
            sub_21E5740FC(v6, 1u);
            v35 = MEMORY[0x277D84A28];
            sub_21E5781A0(v52, sub_21E5650CC, MEMORY[0x277D84A28], sub_21E578974, sub_21E578410);
            v36 = v52[0];
            v52[0] = result;

            sub_21E5781A0(v52, sub_21E5650CC, v35, sub_21E578974, sub_21E578410);
            v37 = *(v36 + 16);
            if (v37 != *(v52[0] + 16))
            {
              goto LABEL_55;
            }

            if (v37 && v36 != v52[0])
            {
              v38 = 32;
              while (*(v36 + v38) == *(v52[0] + v38))
              {
                v38 += 8;
                if (!--v37)
                {
                  goto LABEL_70;
                }
              }

LABEL_55:
              sub_21E574114(v6, 1u);
              sub_21E574114(result, 1u);
              sub_21E574114(v6, 1u);

              goto LABEL_65;
            }

            goto LABEL_70;
          case 2u:
            if (a2 != 2)
            {
              sub_21E5740FC(result, a2);
              sub_21E5740FC(v6, 2u);
              v21 = v6;
              v22 = 2;
              goto LABEL_54;
            }

            v52[0] = *v20;
            sub_21E5740FC(v6, 2u);
            sub_21E5740FC(v6, 2u);
            sub_21E5740FC(result, 2u);
            sub_21E5740FC(v6, 2u);
            v23 = MEMORY[0x277D837D0];
            sub_21E5781A0(v52, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
            v24 = v52[0];
            v52[0] = result;

            sub_21E5781A0(v52, sub_21E5650B8, v23, sub_21E57846C, sub_21E578348);
            v25 = v52[0];
            v26 = *(v24 + 16);
            if (v26 != *(v52[0] + 16))
            {
              sub_21E574114(v6, 2u);
              sub_21E574114(result, 2u);
              v39 = v6;
              v40 = 2;
              goto LABEL_60;
            }

            if (!v26 || v24 == v52[0])
            {
              goto LABEL_70;
            }

            v27 = 0;
            while (1)
            {
              v28 = *(v24 + v27 + 32) == *(v25 + v27 + 32) && *(v24 + v27 + 40) == *(v25 + v27 + 40);
              if (!v28 && (sub_21E57BB3C() & 1) == 0)
              {
                break;
              }

              v27 += 16;
              if (!--v26)
              {
                goto LABEL_70;
              }
            }

            sub_21E574114(v6, 2u);
            sub_21E574114(result, 2u);
            v41 = v6;
            v42 = 2;
            goto LABEL_63;
          case 3u:
            if (a2 == 3)
            {
              v52[0] = *v20;
              sub_21E5740FC(v6, 3u);
              sub_21E5740FC(v6, 3u);
              sub_21E5740FC(result, 3u);
              sub_21E5740FC(v6, 3u);
              v29 = MEMORY[0x277D837D0];
              sub_21E5781A0(v52, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
              v30 = v52[0];
              v52[0] = result;

              sub_21E5781A0(v52, sub_21E5650B8, v29, sub_21E57846C, sub_21E578348);
              v31 = v52[0];
              v32 = *(v30 + 16);
              if (v32 == *(v52[0] + 16))
              {
                if (!v32 || v30 == v52[0])
                {
                  goto LABEL_70;
                }

                v33 = 0;
                while (1)
                {
                  v34 = *(v30 + v33 + 32) == *(v31 + v33 + 32) && *(v30 + v33 + 40) == *(v31 + v33 + 40);
                  if (!v34 && (sub_21E57BB3C() & 1) == 0)
                  {
                    break;
                  }

                  v33 += 16;
                  if (!--v32)
                  {
                    goto LABEL_70;
                  }
                }

                sub_21E574114(v6, 3u);
                sub_21E574114(result, 3u);
                v41 = v6;
                v42 = 3;
LABEL_63:
                sub_21E574114(v41, v42);

                v8 = v48;
              }

              else
              {
                sub_21E574114(v6, 3u);
                sub_21E574114(result, 3u);
                v39 = v6;
                v40 = 3;
LABEL_60:
                sub_21E574114(v39, v40);
              }

              v14 = v49;
LABEL_65:
              v19 = v50;
              v17 = v51;
            }

            else
            {
              sub_21E5740FC(result, a2);
              sub_21E5740FC(v6, 3u);
              v21 = v6;
              v22 = 3;
LABEL_54:
              sub_21E574114(v21, v22);
              sub_21E574114(result, a2);
            }

LABEL_66:
            a3 = (a3 + 1) & v19;
            if (((*(v17 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              goto LABEL_67;
            }

            break;
          default:
            if (a2)
            {
              sub_21E5740FC(result, a2);
              v21 = v6;
              v22 = 0;
              goto LABEL_54;
            }

            sub_21E574114(*v20, 0);
            sub_21E574114(result, 0);
            if (((v6 ^ result) & 1) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_66;
        }
      }
    }
  }

LABEL_67:
  v43 = *v8;
  *(*v8 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v44 = *(v43 + 48) + 16 * a3;
  *v44 = result;
  *(v44 + 8) = a2;
  v45 = *(v43 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
LABEL_70:
    sub_21E574114(v6, v7);
    sub_21E574114(result, v7);
    sub_21E574114(v6, v7);

LABEL_71:
    sub_21E57BB5C();
    __break(1u);

    __break(1u);
  }

  else
  {
    *(v43 + 16) = v47;
  }
}

void sub_21E5778DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DA8, &qword_21E57EDC0);
  v2 = *v0;
  v3 = sub_21E57B91C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_21E577A34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DB0, &qword_21E57EDC8);
  v2 = *v0;
  v3 = sub_21E57B91C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        sub_21E5740FC(v19, v20);
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_21E577B94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DA8, &qword_21E57EDC0);
  result = sub_21E57B92C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_21E57BB8C();

        sub_21E57B6AC();
        result = sub_21E57BBCC();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21E577DC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC8DB0, &qword_21E57EDC8);
  result = sub_21E57B92C();
  v5 = result;
  if (*(v3 + 16))
  {
    v36 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v37 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        sub_21E57BB8C();
        v38 = v18;
        switch(v18)
        {
          case 1:
            MEMORY[0x223D5D090](1);
            MEMORY[0x223D5D090](*(v17 + 16));
            v23 = *(v17 + 16);
            if (!v23)
            {
              goto LABEL_26;
            }

            v24 = (v17 + 32);
            do
            {
              v25 = *v24++;
              MEMORY[0x223D5D0B0](v25);
              --v23;
            }

            while (v23);
            sub_21E5740FC(v17, 1u);
            break;
          case 2:
            MEMORY[0x223D5D090](2);
            MEMORY[0x223D5D090](*(v17 + 16));
            v19 = *(v17 + 16);
            if (!v19)
            {
              goto LABEL_26;
            }

            v20 = v17 + 40;
            do
            {

              sub_21E57B6AC();

              v20 += 16;
              --v19;
            }

            while (v19);
            break;
          case 3:
            MEMORY[0x223D5D090](3);
            MEMORY[0x223D5D090](*(v17 + 16));
            v21 = *(v17 + 16);
            if (v21)
            {

              v22 = v17 + 40;
              do
              {

                sub_21E57B6AC();

                v22 += 16;
                --v21;
              }

              while (v21);
            }

            else
            {
LABEL_26:
            }

            break;
          default:
            MEMORY[0x223D5D090](0);
            sub_21E57BBAC();
            break;
        }

        result = sub_21E57BBCC();
        v26 = -1 << *(v5 + 32);
        v27 = result & ~v26;
        v28 = v27 >> 6;
        if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
        {
          break;
        }

        v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
        v30 = v38;
LABEL_36:
        *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v35 = *(v5 + 48) + 16 * v29;
        *v35 = v17;
        *(v35 + 8) = v30;
        ++*(v5 + 16);
        v3 = v36;
        v10 = v37;
        if (!v37)
        {
          goto LABEL_7;
        }
      }

      v31 = 0;
      v32 = (63 - v26) >> 6;
      v30 = v38;
      while (++v28 != v32 || (v31 & 1) == 0)
      {
        v33 = v28 == v32;
        if (v28 == v32)
        {
          v28 = 0;
        }

        v31 |= v33;
        v34 = *(v12 + 8 * v28);
        if (v34 != -1)
        {
          v29 = __clz(__rbit64(~v34)) + (v28 << 6);
          goto LABEL_36;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_40;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v37 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_40:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21E5781A0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_21E57823C(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_21E57823C(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_21E57BB0C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v11 = sub_21E57B7BC();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_21E578348(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_21E57BB3C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_21E578410(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21E57846C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_21E57BB3C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_21E57BB3C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_21E57BB3C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E543698();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_21E543698();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_21E57906C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_21E578E14(&v91, *result, a3);
LABEL_102:
}

void sub_21E578974(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21E543698();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_21E543698();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
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

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_21E579210((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_21E578F40(&v77, *result, a3);
LABEL_89:
}

uint64_t sub_21E578E14(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21E564BC8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21E57906C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21E578F40(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21E564BC8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21E579210((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21E57906C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_21E52981C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_21E57BB3C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_21E52981C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_21E57BB3C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_21E579210(char *a1, char *a2, uint64_t *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_21E5626D0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_21E5626D0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = (v6 - 8);
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 1))
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_21E579384@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  sub_21E57BB8C();
  v48 = a3;
  switch(a2)
  {
    case 1u:
      MEMORY[0x223D5D090](1);
      sub_21E579F08(v50, a1);
      break;
    case 2u:
      v9 = 2;
      goto LABEL_5;
    case 3u:
      v9 = 3;
LABEL_5:
      MEMORY[0x223D5D090](v9);
      sub_21E579E90(v50, a1);
      break;
    default:
      MEMORY[0x223D5D090](0);
      sub_21E57BBAC();
      break;
  }

  result = sub_21E57BBCC();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  v13 = result & ~v12;
  if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_59:
    *v48 = 0;
    *(v48 + 8) = -1;
    return result;
  }

  v14 = ~v12;
  v46 = ~v12;
  v47 = v8;
  v45 = v8 + 56;
  while (2)
  {
    v15 = *(v8 + 48) + 16 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    switch(v17)
    {
      case 1u:
        if (a2 != 1)
        {
          sub_21E5740FC(a1, a2);
          sub_21E5740FC(v16, 1u);
          v18 = v16;
          v19 = 1;
          goto LABEL_47;
        }

        v49 = 16 * v13;
        v50[0] = *v15;
        sub_21E5740FC(v16, 1u);
        sub_21E5740FC(v16, 1u);
        sub_21E5740FC(a1, 1u);
        sub_21E5740FC(v16, 1u);
        v32 = MEMORY[0x277D84A28];
        sub_21E5781A0(v50, sub_21E5650CC, MEMORY[0x277D84A28], sub_21E578974, sub_21E578410);
        v33 = v50[0];
        v50[0] = a1;

        sub_21E5781A0(v50, sub_21E5650CC, v32, sub_21E578974, sub_21E578410);
        v34 = *(v33 + 16);
        if (v34 != *(v50[0] + 16))
        {
          goto LABEL_50;
        }

        if (v34 && v33 != v50[0])
        {
          v35 = 32;
          while (*(v33 + v35) == *(v50[0] + v35))
          {
            v35 += 8;
            if (!--v34)
            {
              goto LABEL_61;
            }
          }

LABEL_50:
          sub_21E574114(v16, 1u);
          sub_21E574114(a1, 1u);
          sub_21E574114(v16, 1u);

          v14 = v46;
          v8 = v47;
          goto LABEL_58;
        }

        goto LABEL_61;
      case 2u:
        if (a2 != 2)
        {
          sub_21E5740FC(a1, a2);
          sub_21E5740FC(v16, 2u);
          v18 = v16;
          v19 = 2;
          goto LABEL_47;
        }

        v49 = 16 * v13;
        v50[0] = *v15;
        sub_21E5740FC(v16, 2u);
        sub_21E5740FC(v16, 2u);
        sub_21E5740FC(a1, 2u);
        sub_21E5740FC(v16, 2u);
        v20 = MEMORY[0x277D837D0];
        sub_21E5781A0(v50, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
        v21 = v50[0];
        v50[0] = a1;

        sub_21E5781A0(v50, sub_21E5650B8, v20, sub_21E57846C, sub_21E578348);
        v22 = v50[0];
        v23 = *(v21 + 16);
        if (v23 != *(v50[0] + 16))
        {
          sub_21E574114(v16, 2u);
          sub_21E574114(a1, 2u);
          v36 = v16;
          v37 = 2;
          goto LABEL_53;
        }

        if (!v23 || v21 == v50[0])
        {
          goto LABEL_61;
        }

        v44 = v4;
        v24 = 0;
        while (1)
        {
          v25 = *(v21 + v24 + 32) == *(v22 + v24 + 32) && *(v21 + v24 + 40) == *(v22 + v24 + 40);
          if (!v25 && (sub_21E57BB3C() & 1) == 0)
          {
            break;
          }

          v24 += 16;
          if (!--v23)
          {
            goto LABEL_60;
          }
        }

        sub_21E574114(v16, 2u);
        sub_21E574114(a1, 2u);
        v38 = v16;
        v39 = 2;
        goto LABEL_56;
      case 3u:
        if (a2 != 3)
        {
          sub_21E5740FC(a1, a2);
          sub_21E5740FC(v16, 3u);
          v18 = v16;
          v19 = 3;
LABEL_47:
          sub_21E574114(v18, v19);
          result = sub_21E574114(a1, a2);
LABEL_58:
          v13 = (v13 + 1) & v14;
          if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_59;
          }

          continue;
        }

        v49 = 16 * v13;
        v50[0] = *v15;
        sub_21E5740FC(v16, 3u);
        sub_21E5740FC(v16, 3u);
        sub_21E5740FC(a1, 3u);
        sub_21E5740FC(v16, 3u);
        v26 = MEMORY[0x277D837D0];
        sub_21E5781A0(v50, sub_21E5650B8, MEMORY[0x277D837D0], sub_21E57846C, sub_21E578348);
        v27 = v50[0];
        v50[0] = a1;

        sub_21E5781A0(v50, sub_21E5650B8, v26, sub_21E57846C, sub_21E578348);
        v28 = v50[0];
        v29 = *(v27 + 16);
        if (v29 != *(v50[0] + 16))
        {
          sub_21E574114(v16, 3u);
          sub_21E574114(a1, 3u);
          v36 = v16;
          v37 = 3;
LABEL_53:
          sub_21E574114(v36, v37);

LABEL_57:
          v14 = v46;
          v8 = v47;
          v11 = v45;
          goto LABEL_58;
        }

        if (v29 && v27 != v50[0])
        {
          v44 = v4;
          v30 = 0;
          while (1)
          {
            v31 = *(v27 + v30 + 32) == *(v28 + v30 + 32) && *(v27 + v30 + 40) == *(v28 + v30 + 40);
            if (!v31 && (sub_21E57BB3C() & 1) == 0)
            {
              break;
            }

            v30 += 16;
            if (!--v29)
            {
LABEL_60:
              v4 = v44;
              goto LABEL_61;
            }
          }

          sub_21E574114(v16, 3u);
          sub_21E574114(a1, 3u);
          v38 = v16;
          v39 = 3;
LABEL_56:
          sub_21E574114(v38, v39);

          v4 = v44;
          goto LABEL_57;
        }

LABEL_61:
        sub_21E574114(v16, v17);
        sub_21E574114(a1, v17);
        sub_21E574114(v16, v17);

LABEL_62:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *v4;
        v50[0] = *v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21E577A34();
          v41 = v50[0];
        }

        v42 = *(v41 + 48) + v49;
        v43 = *v42;
        LOBYTE(v42) = *(v42 + 8);
        *v48 = v43;
        *(v48 + 8) = v42;
        result = sub_21E579B6C(v13);
        *v4 = v50[0];
        return result;
      default:
        if (a2)
        {
          sub_21E5740FC(a1, a2);
          v18 = v16;
          v19 = 0;
          goto LABEL_47;
        }

        v49 = 16 * v13;
        sub_21E574114(v16, 0);
        result = sub_21E574114(a1, 0);
        if (((v16 ^ a1) & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
    }
  }
}

unint64_t sub_21E579B6C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21E57B90C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v30 = (v8 + 1) & v7;
      v31 = v4;
      do
      {
        v9 = v7;
        v32 = 16 * v6;
        v10 = *(v3 + 48) + 16 * v6;
        v11 = *v10;
        v12 = *(v10 + 8);
        sub_21E57BB8C();
        switch(v12)
        {
          case 1:
            MEMORY[0x223D5D090](1);
            MEMORY[0x223D5D090](*(v11 + 16));
            v17 = *(v11 + 16);
            if (!v17)
            {
              goto LABEL_18;
            }

            v18 = (v11 + 32);
            do
            {
              v19 = *v18++;
              MEMORY[0x223D5D0B0](v19);
              --v17;
            }

            while (v17);
            sub_21E5740FC(v11, 1u);
            break;
          case 2:
            MEMORY[0x223D5D090](2);
            MEMORY[0x223D5D090](*(v11 + 16));
            v13 = *(v11 + 16);
            if (!v13)
            {
              goto LABEL_18;
            }

            v14 = v11 + 40;
            do
            {

              sub_21E57B6AC();

              v14 += 16;
              --v13;
            }

            while (v13);
            break;
          case 3:
            MEMORY[0x223D5D090](3);
            MEMORY[0x223D5D090](*(v11 + 16));
            v15 = *(v11 + 16);
            if (v15)
            {

              v16 = v11 + 40;
              do
              {

                sub_21E57B6AC();

                v16 += 16;
                --v15;
              }

              while (v15);
            }

            else
            {
LABEL_18:
            }

            break;
          default:
            MEMORY[0x223D5D090](0);
            sub_21E57BBAC();
            break;
        }

        v20 = sub_21E57BBCC();
        sub_21E574114(v11, v12);
        v7 = v9;
        v21 = v20 & v9;
        if (v2 >= v30)
        {
          v22 = v21 < v30 || v2 < v21;
        }

        else
        {
          v22 = v21 < v30 && v2 < v21;
        }

        v4 = v31;
        if (!v22)
        {
          v23 = *(v3 + 48);
          v24 = (v23 + 16 * v2);
          v25 = (v23 + v32);
          v26 = 16 * v2 != v32 || v24 >= v25 + 1;
          v2 = v6;
          if (v26)
          {
            *v24 = *v25;
            v2 = v6;
          }
        }

        v6 = (v6 + 1) & v9;
      }

      while (((*(v31 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_21E579E90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D5D090](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_21E57B6AC();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21E579F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x223D5D090](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = MEMORY[0x223D5D0B0](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

double sub_21E579F58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
    return sub_21E5740FC(a1, a2);
  }

  return result;
}

uint64_t sub_21E579F7C(uint64_t result, unsigned __int8 a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return sub_21E574114(result, a2);
  }

  return result;
}

uint64_t sub_21E579FA0()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_4(v1);

  return sub_21E575144(v3, v4, v5, v6);
}

unint64_t sub_21E57A040()
{
  result = qword_281225DE8;
  if (!qword_281225DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281225DE8);
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

uint64_t sub_21E57A0B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_21E57A0F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t get_enum_tag_for_layout_string_16SiriAutoComplete21IndexUpdateResultInfoO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21E57A17C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_21E57A1BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21E57A200(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t dispatch thunk of IndexUpdateManager.update(type:)()
{
  OUTLINED_FUNCTION_152();
  v3 = v2;
  v5 = v4;
  v9 = (*(*v0 + 152) + **(*v0 + 152));
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_21E57A56C;

  return v9(v5, v3);
}

uint64_t sub_21E57A398(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_21E574114(a1, a2);
  }

  return a1;
}

uint64_t objectdestroyTm()
{

  sub_21E574114(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21E57A3F0()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_17_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_4(v1);

  return sub_21E57538C(v3, v4, v5, v6);
}

uint64_t sub_21E57A48C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_12_3();

  return v3();
}

uint64_t OUTLINED_FUNCTION_3_11()
{
  *v0 = v1;
  v0[1] = 0;
  *(*(v2 + 56) + 16) = 0;
  return v2 + 8;
}

uint64_t OUTLINED_FUNCTION_8_5()
{
  v1 = *(v0 + 80);
  v2 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  return v2;
}

double OUTLINED_FUNCTION_21_3()
{

  return result;
}

void OUTLINED_FUNCTION_22_2(uint64_t *a1@<X8>)
{
  v2 = *a1;
  *(v1 - 112) = *(a1 - 1);
  *(v1 - 104) = v2;
}

double OUTLINED_FUNCTION_25_5()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return sub_21E57B94C();
}

uint64_t sub_21E57A72C(uint64_t a1, double a2)
{
  v4 = sub_21E57B5EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  if (*(a1 + 16) > 1uLL)
  {
    v17 = sub_21E57AA64(a1, a2);
    if (v18)
    {
      sub_21E57B5BC();
      v19 = sub_21E57B5DC();
      v20 = sub_21E57B86C();
      if (os_log_type_enabled(v19, v20))
      {
        swift_slowAlloc();
        v28 = OUTLINED_FUNCTION_2_10();
        *a1 = 136315394;
        v21 = OUTLINED_FUNCTION_0_7("normalizedScoreOf(value:inSortedList:)");
        OUTLINED_FUNCTION_4_10(v21);
        _os_log_impl(&dword_21E527000, v19, v20, "Function: %s > Unable to calculate a normalized score for value %f since it does not exist in the list", a1, 0x16u);
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_12_2();
      }

      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      v22 = v17;
      result = sub_21E57AAA4(a1, a2);
      if (v23)
      {
        sub_21E57B5BC();
        v24 = sub_21E57B5DC();
        v25 = sub_21E57B86C();
        if (os_log_type_enabled(v24, v25))
        {
          swift_slowAlloc();
          v28 = OUTLINED_FUNCTION_2_10();
          *a1 = 136315394;
          v26 = OUTLINED_FUNCTION_0_7("normalizedScoreOf(value:inSortedList:)");
          OUTLINED_FUNCTION_4_10(v26);
          _os_log_impl(&dword_21E527000, v24, v25, "Function: %s > Unable to calculate a normalized score for value %f since it does not exist in the list", a1, 0x16u);
          OUTLINED_FUNCTION_1_9();
          OUTLINED_FUNCTION_12_2();
        }

        return (*(v5 + 8))(v11, v4);
      }

      else if (__OFADD__(v22, result))
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21E57B5BC();
    v14 = sub_21E57B5DC();
    v15 = sub_21E57B86C();
    if (os_log_type_enabled(v14, v15))
    {
      swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_2_10();
      *a1 = 136315138;
      *(a1 + 4) = OUTLINED_FUNCTION_0_7("normalizedScoreOf(value:inSortedList:)");
      _os_log_impl(&dword_21E527000, v14, v15, "Function: %s > Skipping normalized score calculation for a list with less than two elements", a1, 0xCu);
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_12_2();
    }

    return (*(v5 + 8))(v13, v4);
  }

  return result;
}

uint64_t sub_21E57AA64(uint64_t a1, double a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a1 + 16) == i)
    {
      return 0;
    }

    if (*(a1 + 32 + 8 * i) == a2)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_21E57AAA4(uint64_t a1, double a2)
{
  result = *(a1 + 16);
  v4 = a1 + 24;
  do
  {
    v5 = result;
    if (!result)
    {
      break;
    }

    --result;
  }

  while (*(v4 + 8 * v5) != a2);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7@<X0>(uint64_t a1@<X8>)
{

  return sub_21E5553D8(0xD000000000000026, (a1 - 32) | 0x8000000000000000, (v1 - 88));
}

void OUTLINED_FUNCTION_1_9()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223D5D740);
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v2;
  return result;
}