uint64_t PhysicalValue.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA743920](*&v2);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t PhysicalValue.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74830, &qword_1D9F3A628);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EA86B0();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v15[15] = 0;
    sub_1D9F2B86C();
    v10 = v9;
    v15[14] = 1;
    v12 = sub_1D9F2B84C();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
    *(a2 + 2) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EA89C8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA743920](*&v2);

  return sub_1D9F2B18C();
}

uint64_t sub_1D9EA8A2C()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA743920](*&v2);
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EA8AA4()
{
  result = qword_1ECB74838;
  if (!qword_1ECB74838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74838);
  }

  return result;
}

uint64_t sub_1D9EA8AF8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

unint64_t sub_1D9EA8B64()
{
  result = qword_1ECB74840;
  if (!qword_1ECB74840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74840);
  }

  return result;
}

unint64_t sub_1D9EA8BBC()
{
  result = qword_1ECB74848;
  if (!qword_1ECB74848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74848);
  }

  return result;
}

unint64_t sub_1D9EA8C14()
{
  result = qword_1ECB74850;
  if (!qword_1ECB74850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74850);
  }

  return result;
}

VisualActionPredictionSupport::ExecutionType_optional __swiftcall ExecutionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D9EA8D40()
{
  result = qword_1ECB74858;
  if (!qword_1ECB74858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74858);
  }

  return result;
}

unint64_t sub_1D9EA8DA4()
{
  result = qword_1ECB74860;
  if (!qword_1ECB74860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74860);
  }

  return result;
}

uint64_t SceneDescriptorEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74298, &unk_1D9F3A9B0);
  *a1 = sub_1D9F2A9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB742A0, &qword_1D9F37C90);
  a1[1] = sub_1D9F2A9AC();
  result = sub_1D9F2A9AC();
  a1[2] = result;
  return result;
}

uint64_t sub_1D9EA8F78(uint64_t *a1)
{

  sub_1D9F2A98C();
}

uint64_t (*SceneDescriptorEntity.descriptionText.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D9F2A96C();
  return sub_1D9EA9064;
}

uint64_t sub_1D9EA90C0(uint64_t *a1)
{

  sub_1D9F2A98C();
}

uint64_t (*SceneDescriptorEntity.textList.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D9F2A96C();
  return sub_1D9EAA620;
}

uint64_t sub_1D9EA9204(uint64_t *a1)
{

  sub_1D9F2A98C();
}

uint64_t (*SceneDescriptorEntity.imageFrameResourceIDString.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1D9F2A96C();
  return sub_1D9EAA620;
}

void sub_1D9EA92F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1D9EA9360@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74298, &unk_1D9F3A9B0);
  *a1 = sub_1D9F2A9AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB742A0, &qword_1D9F37C90);
  a1[1] = sub_1D9F2A9AC();
  result = sub_1D9F2A9AC();
  a1[2] = result;
  return result;
}

uint64_t sub_1D9EA93D8(uint64_t a1)
{
  v2 = sub_1D9EAA4B0();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

uint64_t sub_1D9EA9424(uint64_t a1)
{
  sub_1D9EAA4B0();

  return sub_1D9F2A93C();
}

uint64_t sub_1D9EA94A8(uint64_t a1)
{
  v2 = sub_1D9EAA07C();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1D9EA94F4(uint64_t a1)
{
  v2 = sub_1D9E913A8();

  return MEMORY[0x1EEDB4080](a1, v2);
}

uint64_t sub_1D9EA9540(uint64_t a1)
{
  v2 = sub_1D9EAA32C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t SceneDescriptorEntity.convertToSystemIntentValue()@<X0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v72 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v80 = v69 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v69 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v69 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74420, &unk_1D9F386E0);
  v12 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v14 = v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73898, &qword_1D9F32250);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74278, &qword_1D9F37C70);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v69 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v75 = v69 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v69 - v25;
  v27 = *v1;
  v28 = v1[2];
  if (qword_1EE0F1238 != -1)
  {
    swift_once();
  }

  v29 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v29, qword_1EE0F1240);

  v30 = sub_1D9F2AE6C();
  v31 = sub_1D9F2B42C();
  v32 = v28;
  v33 = v31;
  v74 = v32;

  v78 = v27;

  v34 = os_log_type_enabled(v30, v33);
  v82 = v26;
  v79 = v22;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v73 = v9;
    v36 = v11;
    v37 = v35;
    v38 = swift_slowAlloc();
    v85 = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_1D9E71CA4(0xD000000000000015, 0x80000001D9F3A9C0, &v85);
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_1D9E71CA4(0xD00000000000001CLL, 0x80000001D9F49360, &v85);
    _os_log_impl(&dword_1D9E39000, v30, v33, "%s.%s", v37, 0x16u);
    swift_arrayDestroy();
    v39 = v38;
    v26 = v82;
    MEMORY[0x1DA744270](v39, -1, -1);
    v40 = v37;
    v11 = v36;
    v9 = v73;
    MEMORY[0x1DA744270](v40, -1, -1);
  }

  sub_1D9F2A97C();
  v41 = v85;
  v42 = v80;
  if (v85)
  {
    v43 = sub_1D9F2ABDC();
    (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74868, &unk_1D9F3A9D0);
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74870, &qword_1D9F452B0) - 8);
    v71 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D9F2F8F0;
    v46 = *(v41 + 16);
    if (v46)
    {
      v69[0] = v45;
      v73 = v9;
      v70 = v11;
      v84 = MEMORY[0x1E69E7CC0];
      sub_1D9E9484C(0, v46, 0);
      v47 = v84;
      sub_1D9EAA024();
      v69[1] = v41;
      v48 = (v41 + 40);
      do
      {
        v49 = *v48;
        v85 = *(v48 - 1);
        v86 = v49;

        sub_1D9F2A95C();
        v84 = v47;
        v51 = *(v47 + 16);
        v50 = *(v47 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1D9E9484C((v50 > 1), v51 + 1, 1);
          v47 = v84;
        }

        *(v47 + 16) = v51 + 1;
        (*(v12 + 32))(v47 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v51, v14, v83);
        v48 += 2;
        --v46;
      }

      while (v46);

      v52 = v76;
      v11 = v70;
      v26 = v82;
      v9 = v73;
    }

    else
    {

      v52 = v76;
    }

    sub_1D9EAA024();
    sub_1D9F2A9BC();
    v54 = v75;
    sub_1D9F2A9CC();
    v53 = 0;
    v42 = v80;
  }

  else
  {
    v53 = 1;
    v54 = v75;
    v52 = v76;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74290, &unk_1D9F37C80);
  (*(*(v55 - 8) + 56))(v54, v53, 1, v55);
  sub_1D9E68C38(v54, v26, &qword_1ECB74278, &qword_1D9F37C70);
  sub_1D9F2A97C();
  if (v86)
  {
    sub_1D9F2AD1C();
  }

  else
  {
    v56 = sub_1D9F2AD7C();
    (*(*(v56 - 8) + 56))(v9, 1, 1, v56);
  }

  sub_1D9E68C38(v9, v11, &qword_1ECB76010, &unk_1D9F3A9C0);
  sub_1D9F2A97C();
  v57 = v86;
  v83 = v85;
  v58 = v82;
  v59 = v79;
  sub_1D9E51E70(v82, v79, &qword_1ECB74278, &qword_1D9F37C70);
  sub_1D9E51E70(v11, v42, &qword_1ECB76010, &unk_1D9F3A9C0);
  sub_1D9E51E70(v59, v81, &qword_1ECB74278, &qword_1D9F37C70);
  v60 = sub_1D9F2AD7C();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v42, 1, v60) == 1)
  {
    sub_1D9E51FE8(v59, &qword_1ECB74278, &qword_1D9F37C70);
    sub_1D9E51FE8(v11, &qword_1ECB76010, &unk_1D9F3A9C0);
    sub_1D9E51FE8(v58, &qword_1ECB74278, &qword_1D9F37C70);
    v63 = 0xF000000000000007;
LABEL_22:
    *v52 = v83;
    v52[1] = v57;
    v68 = type metadata accessor for SceneDescriptor(0);
    sub_1D9E68C38(v81, v52 + *(v68 + 20), &qword_1ECB74278, &qword_1D9F37C70);
    *(v52 + *(v68 + 24)) = v63;
    return sub_1D9E51FE8(v42, &qword_1ECB76010, &unk_1D9F3A9C0);
  }

  v64 = v72;
  sub_1D9E51E70(v42, v72, &qword_1ECB76010, &unk_1D9F3A9C0);
  result = (v62)(v64, 1, v60);
  if (result != 1)
  {
    type metadata accessor for ExecutionResourceRetriever(0);
    v63 = swift_allocObject();
    v66 = OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_lockedState;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73EF8, &qword_1D9F35B40);
    v67 = swift_allocObject();
    *(v67 + 100) = 0;
    *(v67 + 16) = 0u;
    *(v67 + 32) = 0u;
    *(v67 + 48) = 0;
    *(v67 + 56) = 0x8000000000000000;
    *(v67 + 64) = 0u;
    *(v67 + 80) = 0u;
    *(v63 + v66) = v67;
    *(v67 + 96) = 0;
    (*(v61 + 32))(v63 + OBJC_IVAR____TtC29VisualActionPredictionSupport26ExecutionResourceRetriever_resourceID, v64, v60);
    sub_1D9E51FE8(v79, &qword_1ECB74278, &qword_1D9F37C70);
    sub_1D9E51FE8(v11, &qword_1ECB76010, &unk_1D9F3A9C0);
    sub_1D9E51FE8(v82, &qword_1ECB74278, &qword_1D9F37C70);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9EA9FD8(uint64_t a1)
{
  v2 = sub_1D9E913A8();

  return MEMORY[0x1EEDB4088](a1, v2);
}

unint64_t sub_1D9EAA024()
{
  result = qword_1ECB74878;
  if (!qword_1ECB74878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74878);
  }

  return result;
}

unint64_t sub_1D9EAA07C()
{
  result = qword_1ECB74880;
  if (!qword_1ECB74880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74880);
  }

  return result;
}

unint64_t sub_1D9EAA0D4()
{
  result = qword_1ECB74888;
  if (!qword_1ECB74888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74888);
  }

  return result;
}

unint64_t sub_1D9EAA12C()
{
  result = qword_1ECB74890;
  if (!qword_1ECB74890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74890);
  }

  return result;
}

unint64_t sub_1D9EAA184()
{
  result = qword_1ECB74898;
  if (!qword_1ECB74898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74898);
  }

  return result;
}

unint64_t sub_1D9EAA22C()
{
  result = qword_1ECB748B0;
  if (!qword_1ECB748B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748B0);
  }

  return result;
}

unint64_t sub_1D9EAA280()
{
  result = qword_1ECB748B8;
  if (!qword_1ECB748B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748B8);
  }

  return result;
}

unint64_t sub_1D9EAA2D4()
{
  result = qword_1ECB748C0;
  if (!qword_1ECB748C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748C0);
  }

  return result;
}

unint64_t sub_1D9EAA32C()
{
  result = qword_1ECB748C8;
  if (!qword_1ECB748C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748C8);
  }

  return result;
}

uint64_t sub_1D9EAA40C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1D9EAA458()
{
  result = qword_1ECB748E0;
  if (!qword_1ECB748E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748E0);
  }

  return result;
}

unint64_t sub_1D9EAA4B0()
{
  result = qword_1ECB748E8;
  if (!qword_1ECB748E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748E8);
  }

  return result;
}

unint64_t sub_1D9EAA508()
{
  result = qword_1ECB748F0;
  if (!qword_1ECB748F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB748F0);
  }

  return result;
}

uint64_t sub_1D9EAA5D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CurrencyAmount.currency.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CurrencyAmount.currency.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

VisualActionPredictionSupport::CurrencyAmount __swiftcall CurrencyAmount.init(currency:amount:)(Swift::String currency, Swift::Double amount)
{
  *v2 = currency;
  *(v2 + 16) = amount;
  result.currency = currency;
  result.amount = amount;
  return result;
}

BOOL static CurrencyAmount.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1D9F2BA1C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1D9EAA750()
{
  if (*v0)
  {
    return 0x746E756F6D61;
  }

  else
  {
    return 0x79636E6572727563;
  }
}

uint64_t sub_1D9EAA788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79636E6572727563 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F6D61 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EAA860(uint64_t a1)
{
  v2 = sub_1D9EAAA70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EAA89C(uint64_t a1)
{
  v2 = sub_1D9EAAA70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrencyAmount.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74900, &qword_1D9F3AD20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EAAA70();
  sub_1D9F2BB8C();
  v10 = 0;
  v6 = v8;
  sub_1D9F2B95C();
  if (!v6)
  {
    v9 = 1;
    sub_1D9F2B97C();
  }

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9EAAA70()
{
  result = qword_1ECB74908;
  if (!qword_1ECB74908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74908);
  }

  return result;
}

uint64_t CurrencyAmount.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1D9F2B18C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x1DA743920](*&v3);
}

uint64_t CurrencyAmount.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA743920](*&v2);
  return sub_1D9F2BB4C();
}

uint64_t CurrencyAmount.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74910, &qword_1D9F3AD28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EAAA70();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16[15] = 0;
  v9 = sub_1D9F2B84C();
  v11 = v10;
  v12 = v9;
  v16[14] = 1;
  sub_1D9F2B86C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 1) = v11;
  *(a2 + 2) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EAADA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1D9F2B18C();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x1DA743920](*&v3);
}

uint64_t sub_1D9EAADF0()
{
  v1 = *(v0 + 16);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA743920](*&v2);
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EAAE68()
{
  result = qword_1ECB74918;
  if (!qword_1ECB74918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74918);
  }

  return result;
}

BOOL sub_1D9EAAEBC(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1D9F2BA1C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1D9EAAF1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D9EAAF64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9EAAFC8()
{
  result = qword_1ECB74920;
  if (!qword_1ECB74920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74920);
  }

  return result;
}

unint64_t sub_1D9EAB020()
{
  result = qword_1ECB74928;
  if (!qword_1ECB74928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74928);
  }

  return result;
}

unint64_t sub_1D9EAB078()
{
  result = qword_1ECB74930;
  if (!qword_1ECB74930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74930);
  }

  return result;
}

VisualActionPredictionSupport::FeatureConfiguration __swiftcall FeatureConfiguration.init(isSaveActionEnabled:includesInternalApps:isSessionLogEnabled:usesToolKitForOpenAction:)(Swift::Bool_optional isSaveActionEnabled, Swift::Bool_optional includesInternalApps, Swift::Bool_optional isSessionLogEnabled, Swift::Bool_optional usesToolKitForOpenAction)
{
  v8 = v4;
  if (isSaveActionEnabled.value == 2)
  {
    *&isSaveActionEnabled.value = sub_1D9EABC28(0xD000000000000011, 0x80000001D9F49380, 0xD00000000000002CLL, 0x80000001D9F479F0, 0);
  }

  value = isSaveActionEnabled.value;
  if (includesInternalApps.value == 2)
  {
    *&isSaveActionEnabled.value = sub_1D9EABC28(0xD000000000000014, 0x80000001D9F493A0, 0xD00000000000002CLL, 0x80000001D9F479F0, 0);
    includesInternalApps.value = isSaveActionEnabled.value;
  }

  if (isSessionLogEnabled.value == 2)
  {
    *&isSaveActionEnabled.value = sub_1D9EABC28(0xD000000000000011, 0x80000001D9F493C0, 0xD00000000000002CLL, 0x80000001D9F479F0, 0);
    isSessionLogEnabled.value = isSaveActionEnabled.value;
  }

  if (usesToolKitForOpenAction.value == 2)
  {
    *&isSaveActionEnabled.value = sub_1D9EABC28(0xD000000000000015, 0x80000001D9F493E0, 0xD00000000000002CLL, 0x80000001D9F479F0, 0);
    usesToolKitForOpenAction.value = isSaveActionEnabled.value;
  }

  *v8 = value;
  v8[1] = includesInternalApps.value;
  v8[2] = isSessionLogEnabled.value;
  v8[3] = usesToolKitForOpenAction.value;
  result.isSaveActionEnabled = isSaveActionEnabled.value;
  return result;
}

unint64_t sub_1D9EAB254()
{
  v1 = 0xD000000000000013;
  v2 = 0xD000000000000018;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1D9EAB2C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EAC0CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EAB2E8(uint64_t a1)
{
  v2 = sub_1D9EABE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EAB324(uint64_t a1)
{
  v2 = sub_1D9EABE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74938, &qword_1D9F3AF70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v10[6] = v1[1];
  v8 = v1[2];
  v10[2] = v1[3];
  v10[3] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EABE58();
  sub_1D9F2BB8C();
  v14 = 0;
  sub_1D9F2B96C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_1D9F2B96C();
  v12 = 2;
  sub_1D9F2B96C();
  v11 = 3;
  sub_1D9F2B96C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t FeatureConfiguration.hash(into:)()
{
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB1C();
}

uint64_t FeatureConfiguration.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB4C();
}

uint64_t FeatureConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74948, &qword_1D9F3AF78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EABE58();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v20 = 0;
    v9 = sub_1D9F2B85C();
    v19 = 1;
    v10 = sub_1D9F2B85C();
    v18 = 2;
    v16 = sub_1D9F2B85C();
    v17 = 3;
    v12 = sub_1D9F2B85C();
    v15 = v9 & 1;
    v13 = v16 & 1;
    (*(v6 + 8))(v8, v5);
    *a2 = v15;
    a2[1] = v10 & 1;
    a2[2] = v13;
    a2[3] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EAB87C()
{
  sub_1D9F2BAFC();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  sub_1D9F2BB1C();
  return sub_1D9F2BB4C();
}

unint64_t FeatureConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v13 = v0[3];
  sub_1D9F2B68C();

  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v4, v5);

  MEMORY[0x1DA742F90](2604, 0xE200000000000000);
  MEMORY[0x1DA742F90](0xD000000000000019, 0x80000001D9F49420);

  sub_1D9F2B68C();

  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v6, v7);

  MEMORY[0x1DA742F90](10, 0xE100000000000000);
  MEMORY[0x1DA742F90](0xD00000000000001ALL, 0x80000001D9F49440);

  sub_1D9F2B68C();

  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v8, v9);

  MEMORY[0x1DA742F90](10, 0xE100000000000000);
  MEMORY[0x1DA742F90](0xD000000000000019, 0x80000001D9F49460);

  sub_1D9F2B68C();

  if (v13)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v13)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1DA742F90](v10, v11);

  MEMORY[0x1DA742F90](10, 0xE100000000000000);
  MEMORY[0x1DA742F90](0xD00000000000001ELL, 0x80000001D9F49480);

  MEMORY[0x1DA742F90](41, 0xE100000000000000);
  return 0xD000000000000016;
}

void *sub_1D9EABB90(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1D9EABBB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

BOOL sub_1D9EABC28(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, BOOL a5)
{
  v20[1] = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v10 = sub_1D9F2B11C();
  v11 = sub_1D9F2B11C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v10, v11, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    if (qword_1EE0F12A0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v13, qword_1EE0F12A8);

    v14 = sub_1D9F2AE6C();
    v15 = sub_1D9F2B42C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20[0] = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_1D9E71CA4(a1, a2, v20);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D9E71CA4(a3, a4, v20);
      *(v16 + 22) = 1024;
      *(v16 + 24) = a5;
      _os_log_impl(&dword_1D9E39000, v14, v15, "User defaults key '%s' does not exist or has invalid format in domain '%s'. Using default value '%{BOOL}d'.", v16, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v17, -1, -1);
      MEMORY[0x1DA744270](v16, -1, -1);
    }
  }

  return a5;
}

unint64_t sub_1D9EABE58()
{
  result = qword_1ECB74940;
  if (!qword_1ECB74940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74940);
  }

  return result;
}

unint64_t sub_1D9EABEB0()
{
  result = qword_1ECB74950;
  if (!qword_1ECB74950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D9EABFC8()
{
  result = qword_1ECB74958;
  if (!qword_1ECB74958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74958);
  }

  return result;
}

unint64_t sub_1D9EAC020()
{
  result = qword_1ECB74960;
  if (!qword_1ECB74960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74960);
  }

  return result;
}

unint64_t sub_1D9EAC078()
{
  result = qword_1ECB74968[0];
  if (!qword_1ECB74968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECB74968);
  }

  return result;
}

uint64_t sub_1D9EAC0CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001D9F494A0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F48BE0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D9F494C0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9F494E0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9EAC23C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1DA744500]();
  if (v4 != sub_1D9F2AEDC())
  {
    result = sub_1D9F2AF3C();
    if (v4 != result)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      v6 = -1;
LABEL_7:
      *(a2 + 16) = v6;
      return result;
    }
  }

  v7 = sub_1D9F2AF6C();
  v8 = xpc_equal(a1, v7);
  result = swift_unknownObjectRelease();
  if (v8 || (v9 = sub_1D9F2AF5C(), v10 = xpc_equal(a1, v9), result = swift_unknownObjectRelease(), v10))
  {
    *a2 = xmmword_1D9F3B1E0;
    v6 = 5;
    goto LABEL_7;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;

  return swift_unknownObjectRetain();
}

uint64_t sub_1D9EAC320(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = sub_1D9F2AF2C();
  v7 = MEMORY[0x1DA744500](a2);
  if (v7 != v6)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    v25 = v8;
    v26 = v9;
    v27 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 16) = 1;
    return result;
  }

  v25 = sub_1D9F2AD5C();
  v26 = v11;
  v12 = xpc_uuid_create(&v25);
  xpc_dictionary_set_value(a2, "uuid", v12);
  swift_unknownObjectRelease();
  v13 = type metadata accessor for ServiceEnvelope(0);
  sub_1D9F2ACCC();
  v15 = v14 * 1000000000.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v15 >= 9.22337204e18)
  {
    goto LABEL_19;
  }

  v16 = xpc_date_create(v15);
  xpc_dictionary_set_value(a2, "date", v16);
  swift_unknownObjectRelease();
  v17 = xpc_uint64_create(*(a1 + v13[6]));
  xpc_dictionary_set_value(a2, "attr", v17);
  swift_unknownObjectRelease();
  if (*(a1 + v13[7] + 8))
  {
    v18 = sub_1D9F2B15C();
    v19 = xpc_string_create((v18 + 32));
  }

  else
  {
    v19 = 0;
  }

  xpc_dictionary_set_value(a2, "type", v19);
  swift_unknownObjectRelease();
  v20 = (a1 + v13[8]);
  v21 = v20[1];
  if (v21 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_1D9F1C29C(*v20, v21);
  }

  xpc_dictionary_set_value(a2, "data", v22);
  result = swift_unknownObjectRelease();
  v23 = *(a1 + v13[9]);
  if (v23)
  {
    v24 = swift_unknownObjectRetain();
    if (xpc_dictionary_get_count(v24))
    {
      xpc_dictionary_set_value(a2, "oolv", v23);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D9EAC5DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1D9F2AD0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9F2AD7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9F2AF2C();
  v44 = a1;
  v14 = MEMORY[0x1DA744500](a1);
  if (v14 == v13)
  {
    v38 = v8;
    v19 = v39;
    v18 = v40;
    v20 = v10;
    v21 = v44;
    result = sub_1D9EAC9D4(v44, 1684632949, 0xE400000000000000, &v42);
    if (v18)
    {
      v22 = v43;
      *a2 = v42;
      *(a2 + 16) = v22;
    }

    else
    {
      sub_1D9EACB44(v21, 1702125924, 0xE400000000000000, &v42);
      v23 = sub_1D9EACD44(v21, 1920234593, 0xE400000000000000, &v42);
      v24 = v9;
      v25 = v20;
      v40 = v23;
      v27 = v5;
      v26 = sub_1D9EACEDC(v44, 1701869940, 0xE400000000000000, &v42);
      v29 = v28;
      v37 = v26;
      sub_1D9EAD0C0(v44, &v42, v41);
      v35 = v41[0];
      v36 = v41[1];
      v30 = sub_1D9EAD204(v44, 1986817903, 0xE400000000000000, &v42);
      (*(v25 + 32))(v19, v12, v24);
      v31 = type metadata accessor for ServiceEnvelope(0);
      result = (*(v6 + 32))(v19 + v31[5], v38, v27);
      *(v19 + v31[6]) = v40;
      v32 = (v19 + v31[7]);
      *v32 = v37;
      v32[1] = v29;
      v33 = (v19 + v31[8]);
      v34 = v36;
      *v33 = v35;
      v33[1] = v34;
      *(v19 + v31[9]) = v30;
    }
  }

  else
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D9F2F8F0;
    *(v16 + 32) = v13;
    *&v42 = v15;
    *(&v42 + 1) = v16;
    v43 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_1D9EAC9D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D9F2AF2C();
  v10 = MEMORY[0x1DA744500](a1);
  if (v10 == v9)
  {
    v14 = sub_1D9F2B15C();
    v15 = xpc_dictionary_get_value(a1, (v14 + 32));

    if (v15)
    {
      result = sub_1D9EE9DD8(v15, &v17);
      if (v4)
      {
        v16 = v18;
        *a4 = v17;
        *(a4 + 16) = v16;
      }
    }

    else
    {
      *a4 = a2;
      *(a4 + 8) = a3;
      *(a4 + 16) = 2;
      sub_1D9E56B78();

      return swift_willThrowTypedImpl();
    }
  }

  else
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D9F2F8F0;
    *(v12 + 32) = v9;
    *&v17 = v11;
    *(&v17 + 1) = v12;
    v18 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a4 = v11;
    *(a4 + 8) = v12;
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t sub_1D9EACB44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9F2AF2C();
  v9 = MEMORY[0x1DA744500](a1);
  if (v9 != v8)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D9F2F8F0;
    *(v11 + 32) = v8;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a4 = v10;
LABEL_3:
    *(a4 + 8) = v11;
    *(a4 + 16) = 1;
    return result;
  }

  v13 = sub_1D9F2B15C();
  v14 = xpc_dictionary_get_value(a1, (v13 + 32));

  if (v14)
  {
    v15 = sub_1D9F2AEBC();
    v16 = MEMORY[0x1DA744500](v14);
    if (v16 != v15)
    {
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D9F2F8F0;
      *(v11 + 32) = v15;
      sub_1D9E56B78();
      swift_willThrowTypedImpl();
      result = swift_unknownObjectRelease();
      *a4 = v17;
      goto LABEL_3;
    }

    xpc_date_get_value(v14);
    sub_1D9F2ACBC();
    return swift_unknownObjectRelease();
  }

  else
  {
    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = 2;
    sub_1D9E56B78();

    return swift_willThrowTypedImpl();
  }
}

void *sub_1D9EACD44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1D9F2AF2C();
  v10 = MEMORY[0x1DA744500](a1);
  if (v10 == v9)
  {
    v14 = sub_1D9F2B15C();
    v15 = xpc_dictionary_get_value(a1, (v14 + 32));

    if (v15)
    {
      result = off_1F556A1F8(&v19, v15, &v17);
      if (v4)
      {
        v16 = v18;
        *a4 = v17;
        *(a4 + 16) = v16;
      }

      else
      {
        return v19;
      }
    }

    else
    {
      *a4 = a2;
      *(a4 + 8) = a3;
      *(a4 + 16) = 2;
      *&v17 = a2;
      *(&v17 + 1) = a3;
      v18 = 2;
      sub_1D9E56B78();

      return swift_willThrowTypedImpl();
    }
  }

  else
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D9F2F8F0;
    *(v12 + 32) = v9;
    *&v17 = v11;
    *(&v17 + 1) = v12;
    v18 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a4 = v11;
    *(a4 + 8) = v12;
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t sub_1D9EACEDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D9F2AF2C();
  v7 = MEMORY[0x1DA744500](a1);
  if (v7 == v6)
  {
    v11 = sub_1D9F2B15C();
    v12 = xpc_dictionary_get_value(a1, (v11 + 32));

    if (!v12)
    {
      return 0;
    }

    v13 = sub_1D9F2AEFC();
    v14 = MEMORY[0x1DA744500](v12);
    if (v14 == v13)
    {
      xpc_string_get_string_ptr(v12);
      xpc_string_get_length(v12);
      a4 = sub_1D9F2B17C();
      swift_unknownObjectRelease();
      return a4;
    }

    v8 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v13;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = 1;
  return a4;
}

uint64_t sub_1D9EAD0C0@<X0>(void *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1D9F2AF2C();
  v10 = MEMORY[0x1DA744500](a1);
  if (v10 == v9)
  {
    v15 = sub_1D9F2B15C();
    v16 = xpc_dictionary_get_value(a1, (v15 + 32));

    if (!v16)
    {
      *a5 = xmmword_1D9F334C0;
      return result;
    }

    result = sub_1D9F1C470(v16, &v18);
    if (!v5)
    {
      *a5 = result;
      *(a5 + 8) = v17;
      return result;
    }

    v11 = v18;
    v12 = v19;
    v13 = v20;
  }

  else
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D9F2F8F0;
    *(v12 + 32) = v9;
    v18 = v11;
    v19 = v12;
    v13 = 1;
    v20 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
  }

  *a4 = v11;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  return result;
}

void *sub_1D9EAD204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9F2AF2C();
  v8 = MEMORY[0x1DA744500](a1);
  if (v8 == v7)
  {
    v12 = sub_1D9F2B15C();
    v13 = xpc_dictionary_get_value(a1, (v12 + 32));

    if (v13)
    {
      result = off_1F5567E40(&v17, v13, &v15);
      if (v4)
      {
        v14 = v16;
        *a4 = v15;
        *(a4 + 16) = v14;
      }

      else
      {
        return v17;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D9F2F8F0;
    *(v10 + 32) = v7;
    *&v15 = v9;
    *(&v15 + 1) = v10;
    v16 = 1;
    sub_1D9E56B78();
    result = swift_willThrowTypedImpl();
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t LabeledContent.label.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t LabeledContent.label.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t LabeledContent.init(_:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a5 + *(type metadata accessor for LabeledContent(0, a4, a3, a4) + 28));
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1D9EAD538(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D9EAD638(char a1)
{
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](a1 & 1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EAD680(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D9EAD6E4()
{
  sub_1D9F2BAFC();
  sub_1D9EAD610(v2, *v0);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EAD73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9EAD538(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EAD768@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D9EAE498();
  *a2 = result;
  return result;
}

uint64_t sub_1D9EAD794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9EAD7E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LabeledContent<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[2] = a4;
  v11[0] = a2;
  type metadata accessor for LabeledContent.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = sub_1D9F2B9EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9F2BB8C();
  v13 = 0;
  v9 = v11[3];
  sub_1D9F2B9AC();
  if (!v9)
  {
    v12 = 1;
    sub_1D9F2B90C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LabeledContent<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v31 = a4;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LabeledContent.CodingKeys(255, v7, v8, v9);
  swift_getWitnessTable();
  v34 = sub_1D9F2B8EC();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v30 - v10;
  v14 = type metadata accessor for LabeledContent(0, a2, v12, v13);
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v37;
  sub_1D9F2BB7C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v14;
  v18 = v32;
  v19 = v33;
  v39 = 0;
  v20 = v34;
  sub_1D9F2B89C();
  (*(v19 + 32))(v16, v36, a2);
  v38 = 1;
  v21 = sub_1D9F2B7FC();
  v22 = v37;
  v23 = &v16[*(v37 + 28)];
  v36 = v16;
  v24 = *(v18 + 8);
  v26 = v25;
  v24(v11, v20);
  *v23 = v21;
  v23[1] = v26;
  v27 = v30;
  v28 = v36;
  (*(v30 + 16))(v31, v36, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v27 + 8))(v28, v22);
}

uint64_t static LabeledContent<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1D9F2B10C())
  {
    v9 = *(type metadata accessor for LabeledContent(0, a3, v7, v8) + 28);
    v10 = (a1 + v9);
    v11 = *(a1 + v9 + 8);
    v12 = (a2 + v9);
    v13 = v12[1];
    if (v11)
    {
      if (v13)
      {
        v14 = *v10 == *v12 && v11 == v13;
        if (v14 || (sub_1D9F2BA1C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t LabeledContent<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D9F2B0EC();
  if (!*(v3 + *(a2 + 28) + 8))
  {
    return sub_1D9F2BB1C();
  }

  sub_1D9F2BB1C();

  return sub_1D9F2B18C();
}

uint64_t LabeledContent<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1D9F2BAFC();
  LabeledContent<A>.hash(into:)(v5, a1, a2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EADF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D9F2BAFC();
  LabeledContent<A>.hash(into:)(v6, a2, v4);
  return sub_1D9F2BB4C();
}

uint64_t LabeledContent<A>.stringRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[1];
  if (!v4)
  {
    return (*(a2 + 8))(*(a1 + 16));
  }

  v5 = *v3;
  v7 = (*(a2 + 8))(*(a1 + 16));
  MEMORY[0x1DA742F90](10272, 0xE200000000000000);
  MEMORY[0x1DA742F90](v5, v4);
  MEMORY[0x1DA742F90](41, 0xE100000000000000);
  return v7;
}

void sub_1D9EAE0B4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D9E95A38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9EAE13C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1D9EAE280(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t CancellationReason.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    sub_1D9F2B68C();

    v5[0] = 0xD000000000000014;
    v5[1] = 0x80000001D9F49520;
    swift_getErrorValue();
    v3 = sub_1D9F2BAAC();
    MEMORY[0x1DA742F90](v3);

    return v5[0];
  }

  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    sub_1D9F2B68C();

    strcpy(v5, "Request for ");
    HIWORD(v5[1]) = -4864;
    MEMORY[0x1DA742F90](v1, v2);
    MEMORY[0x1DA742F90](34, 0xE100000000000000);
    return v5[0];
  }

  return 0x61636F6C6C616544;
}

uint64_t sub_1D9EAE614(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D9E3CA7C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1D9EAFD4C(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_1D9F2B77C();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1D9EB0914(a1);
    sub_1D9EAEEFC(v9, a2);
    v7 = sub_1D9F2B77C();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1D9EB0914(v9);
  }

  return result;
}

uint64_t sub_1D9EAE710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1D9EB0074(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1D9EEA3F4(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1D9EB0750();
        v16 = v18;
      }

      result = sub_1D9EAFB9C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1D9EAE818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (*(a5 + 40))(a4, a5);
  v13 = v12;
  sub_1D9EAE924(v11, a4, a5);
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v5;
  sub_1D9EB0074(sub_1D9EB08D0, v14, v11, v13, isUniquelyReferenced_nonNull_native);

  *v5 = v17;
  return result;
}

uint64_t sub_1D9EAE924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 40))(a2, a3);
  v6 = v5;
  if (*(*v3 + 16) && (v7 = v4, sub_1D9EEA3F4(v4, v5), (v8 & 1) != 0))
  {

    return sub_1D9EAE710(0, 0, v7, v6);
  }

  else
  {
  }
}

uint64_t sub_1D9EAE9D0(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(char *, uint64_t (*)(), void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a4;
  v29 = a1;
  v11 = type metadata accessor for ServiceEnvelope(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v25 = *(a6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = *a2;
  v19 = a2[1];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;

  v26 = a7;
  sub_1D9E3FDA4(a3, a6, a7, v15);
  v21 = v25;
  (*(v25 + 32))(v17, v15, a6);
  v22 = swift_allocObject();
  v23 = v26;
  v22[2] = a6;
  v22[3] = v23;
  v22[4] = sub_1D9EB08E0;
  v22[5] = v20;
  v28(v17, sub_1D9EB0908, v22);

  return (*(v21 + 8))(v17, a6);
}

uint64_t sub_1D9EAEC5C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for ServiceEnvelope(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D9E3F498(AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  a2(v8);
  return sub_1D9E72374(v8);
}

uint64_t sub_1D9EAED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + *(type metadata accessor for ServiceEnvelope(0) + 28));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = *(a4 + 16);

    if (v11)
    {
      v12 = sub_1D9EEA3F4(v10, v9);
      if (v13)
      {
        v14 = v12;

        v15 = *(*(a4 + 56) + 16 * v14);
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a3;
        v17 = swift_allocObject();
        *(v17 + 16) = sub_1D9EB097C;
        *(v17 + 24) = v16;
        v21[0] = sub_1D9EB097C;
        v21[1] = v17;

        v15(a1, v21);
      }
    }

    v19 = 96;
  }

  else
  {
    v19 = 0x80;
    v10 = 3;
  }

  sub_1D9E3F7D8();
  swift_allocError();
  *v20 = v10;
  *(v20 + 8) = v9;
  *(v20 + 16) = v19;
  return swift_willThrow();
}

double sub_1D9EAEEFC@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_1D9EEA200(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D9EB0328();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1D9F2B77C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1D9E3CA7C((*(v9 + 56) + 32 * v7), a1);
    sub_1D9EAF8E8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1D9EAEFD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9F2B77C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB749F8, &unk_1D9F3B620);
  v39 = v4;
  result = sub_1D9F2B79C();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
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
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1D9E3CA7C((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1D9E722B0(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_1D9F2B0DC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
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
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1D9E3CA7C(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
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

uint64_t sub_1D9EAF378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74770, &qword_1D9F3A118);
  v33 = v4;
  result = sub_1D9F2B79C();
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
        sub_1D9E3CA7C(v24, v34);
      }

      else
      {
        sub_1D9E722B0(v24, v34);
      }

      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
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
      result = sub_1D9E3CA7C(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1D9EAF630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB749F0, &unk_1D9F3B610);
  v33 = v4;
  result = sub_1D9F2B79C();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1D9EAF8E8(int64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2B77C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D9F2B61C();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_1D9F2B0DC();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D9EAFB9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D9F2B61C() + 1) & ~v5;
    do
    {
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      v9 = sub_1D9F2BB4C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1D9EAFD4C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9F2B77C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D9EEA200(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D9EB0328();
      goto LABEL_7;
    }

    sub_1D9EAEFD8(v17, a3 & 1);
    v23 = sub_1D9EEA200(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D9EB01FC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D9F2BA6C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_1D9E3CA7C(a1, v21);
}

_OWORD *sub_1D9EAFF24(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D9EEA3F4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D9EB05AC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D9EAF378(v16, a4 & 1);
    v11 = sub_1D9EEA3F4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D9F2BA6C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1D9E3CA7C(a1, v22);
  }

  else
  {
    sub_1D9EB02BC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D9EB0074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D9EEA3F4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D9EAF630(v18, a5 & 1);
      v13 = sub_1D9EEA3F4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1D9F2BA6C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D9EB0750();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

_OWORD *sub_1D9EB01FC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D9F2B77C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1D9E3CA7C(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1D9EB02BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D9E3CA7C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1D9EB0328()
{
  v1 = v0;
  v26 = sub_1D9F2B77C();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB749F8, &unk_1D9F3B620);
  v3 = *v0;
  v4 = sub_1D9F2B78C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_1D9E722B0(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1D9E3CA7C(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
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

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

void *sub_1D9EB05AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74770, &qword_1D9F3A118);
  v2 = *v0;
  v3 = sub_1D9F2B78C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D9E722B0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D9E3CA7C(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_1D9EB0750()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB749F0, &unk_1D9F3B610);
  v2 = *v0;
  v3 = sub_1D9F2B78C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

uint64_t sub_1D9EB0914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74530, &qword_1D9F38F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ObjectEmbedding.modelName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ObjectEmbedding.modelVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall ObjectEmbedding.init(modelName:modelVersion:features:)(VisualActionPredictionSupport::ObjectEmbedding *__return_ptr retstr, Swift::String modelName, Swift::String modelVersion, Swift::OpaquePointer features)
{
  retstr->modelName = modelName;
  retstr->modelVersion = modelVersion;
  retstr->features = features;
}

{
  retstr->modelName = modelName;
  retstr->modelVersion = modelVersion;
  v5 = sub_1D9EB1448(features._rawValue);

  retstr->features._rawValue = v5;
}

uint64_t static ObjectEmbedding.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D9E4AEA8(v3, v7);
}

uint64_t sub_1D9EB0B24()
{
  v1 = 0x7265566C65646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x7365727574616566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E6C65646F6DLL;
  }
}

uint64_t sub_1D9EB0B8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EB1894(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EB0BB4(uint64_t a1)
{
  v2 = sub_1D9EB15C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB0BF0(uint64_t a1)
{
  v2 = sub_1D9EB15C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectEmbedding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A00, &unk_1D9F3B630);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = v1[2];
  v13 = v1[3];
  v14 = v7;
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB15C4();
  sub_1D9F2BB8C();
  v19 = 0;
  v8 = v15;
  sub_1D9F2B95C();
  if (!v8)
  {
    v10 = v12;
    v18 = 1;
    sub_1D9F2B95C();
    v16 = v10;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734D8, &unk_1D9F2FB10);
    sub_1D9EB1618(&qword_1EE0F1110, MEMORY[0x1E69E6458], MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ObjectEmbedding.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_1D9F2B18C();
  sub_1D9F2B18C();

  return sub_1D9E4F8D0(a1, v3);
}

uint64_t ObjectEmbedding.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9E4F8D0(v3, v1);
  return sub_1D9F2BB4C();
}

uint64_t ObjectEmbedding.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A08, &qword_1D9F3B640);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB15C4();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_1D9F2B84C();
  v11 = v10;
  v18 = v9;
  v21 = 1;
  v16 = sub_1D9F2B84C();
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB734D8, &unk_1D9F2FB10);
  v20 = 2;
  sub_1D9EB1618(&qword_1EE0F1108, MEMORY[0x1E69E6478], MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  *a2 = v18;
  a2[1] = v11;
  v14 = v17;
  a2[2] = v16;
  a2[3] = v14;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB1230()
{
  v1 = *(v0 + 32);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9E4F8D0(v3, v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB12B0(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_1D9F2B18C();
  sub_1D9F2B18C();

  return sub_1D9E4F8D0(a1, v3);
}

uint64_t sub_1D9EB1310()
{
  v1 = *(v0 + 32);
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  sub_1D9E4F8D0(v3, v1);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB138C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_1D9F2BA1C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D9E4AEA8(v3, v7);
}

uint64_t sub_1D9EB1448(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D9E9488C(0, v1, 0);
    v4 = v21;
    v5 = (a1 + 32);
    v6 = *(v21 + 16);
    do
    {
      v7 = *v5;
      v8 = *(v21 + 24);
      v9 = v6 + 1;
      if (v6 >= v8 >> 1)
      {
        sub_1D9E9488C((v8 > 1), v6 + 1, 1);
      }

      *(v21 + 16) = v9;
      *(v21 + 2 * v6 + 32) = v7;
      ++v5;
      ++v6;
      --v1;
    }

    while (v1);
  }

  else
  {
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v9)
    {
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v4 = MEMORY[0x1E69E7CC0];
  }

  sub_1D9E9486C(0, v9, 0);
  v10 = v2;
  v11 = *(v2 + 16);
  v12 = 32;
  do
  {
    _H8 = *(v4 + v12);
    v14 = *(v10 + 24);
    if (v11 >= v14 >> 1)
    {
      sub_1D9E9486C((v14 > 1), v11 + 1, 1);
    }

    __asm { FCVT            S0, H8 }

    *(v10 + 16) = v11 + 1;
    *(v10 + 4 * v11 + 32) = _S0;
    v12 += 2;
    ++v11;
    --v9;
  }

  while (v9);
LABEL_13:

  return v10;
}

unint64_t sub_1D9EB15C4()
{
  result = qword_1EE0F2B68[0];
  if (!qword_1EE0F2B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2B68);
  }

  return result;
}

uint64_t sub_1D9EB1618(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB734D8, &unk_1D9F2FB10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EB1688()
{
  result = qword_1ECB74A10;
  if (!qword_1ECB74A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A10);
  }

  return result;
}

uint64_t sub_1D9EB16DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D9EB1724(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9EB1790()
{
  result = qword_1ECB74A18;
  if (!qword_1ECB74A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A18);
  }

  return result;
}

unint64_t sub_1D9EB17E8()
{
  result = qword_1EE0F2B58;
  if (!qword_1EE0F2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2B58);
  }

  return result;
}

unint64_t sub_1D9EB1840()
{
  result = qword_1EE0F2B60;
  if (!qword_1EE0F2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2B60);
  }

  return result;
}

uint64_t sub_1D9EB1894(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t TimeoutError.reason.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TimeoutError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2B68C();

  strcpy(v4, "TimeoutError: ");
  MEMORY[0x1DA742F90](v1, v2);
  return v4[0];
}

uint64_t static TimeoutError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

uint64_t sub_1D9EB1AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EB1B3C(uint64_t a1)
{
  v2 = sub_1D9EB1CF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB1B78(uint64_t a1)
{
  v2 = sub_1D9EB1CF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeoutError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A20, &qword_1D9F3B890);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB1CF0();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9EB1CF0()
{
  result = qword_1ECB74A28;
  if (!qword_1ECB74A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A28);
  }

  return result;
}

uint64_t TimeoutError.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t TimeoutError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A30, &qword_1D9F3B898);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB1CF0();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v9 = sub_1D9F2B84C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB1F24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A20, &qword_1D9F3B890);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB1CF0();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D9EB2060()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB20B4()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EB2100()
{
  result = qword_1ECB74A38;
  if (!qword_1ECB74A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A38);
  }

  return result;
}

uint64_t sub_1D9EB2154(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

unint64_t sub_1D9EB21A8()
{
  result = qword_1ECB74A40;
  if (!qword_1ECB74A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A40);
  }

  return result;
}

unint64_t sub_1D9EB2200()
{
  result = qword_1ECB74A48;
  if (!qword_1ECB74A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A48);
  }

  return result;
}

unint64_t sub_1D9EB2258()
{
  result = qword_1ECB74A50;
  if (!qword_1ECB74A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A50);
  }

  return result;
}

uint64_t sub_1D9EB22E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PredictionResult.visualContextID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PredictionResult.clientContextID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PredictionResult(0) + 20);

  return sub_1D9EB2434(v3, a1);
}

uint64_t type metadata accessor for PredictionResult(uint64_t a1)
{
  result = qword_1EE0F3330;
  if (!qword_1EE0F3330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9EB2434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PredictionResult.rankedActions.getter()
{
  type metadata accessor for PredictionResult(0);
}

uint64_t PredictionResult.init(visualContextID:clientContextID:rankedActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D9F2AD7C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for PredictionResult(0);
  result = sub_1D9EB256C(a2, a4 + *(v9 + 20));
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_1D9EB256C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EB25E0()
{
  v1 = 0x6F43746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x634164656B6E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F436C6175736976;
  }
}

uint64_t sub_1D9EB2650@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EB3E18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EB2678(uint64_t a1)
{
  v2 = sub_1D9EB3980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB26B4(uint64_t a1)
{
  v2 = sub_1D9EB3980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictionResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A58, &unk_1D9F3BBD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB3980();
  sub_1D9F2BB8C();
  v14 = 0;
  sub_1D9F2AD7C();
  sub_1D9EB3F48(&qword_1EE0F3868, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D9F2B9AC();
  if (!v2)
  {
    v9 = type metadata accessor for PredictionResult(0);
    v13 = 1;
    sub_1D9F2B94C();
    v11[1] = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74340, &qword_1D9F37F80);
    sub_1D9EB39D4(&qword_1EE0F1180, &qword_1EE0F2268, &protocol conformance descriptor for PredictedAction, MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PredictionResult.hash(into:)(uint64_t a1)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1D9EB3F48(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D9F2B0EC();
  v10 = type metadata accessor for PredictionResult(0);
  sub_1D9EB2434(v1 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D9F2BB1C();
    sub_1D9F2B0EC();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1D9E4F52C(a1, *(v1 + *(v10 + 24)));
}

uint64_t PredictionResult.hashValue.getter()
{
  v1 = sub_1D9F2AD7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11[-1] - v6;
  sub_1D9F2BAFC();
  sub_1D9EB3F48(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D9F2B0EC();
  v8 = type metadata accessor for PredictionResult(0);
  sub_1D9EB2434(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D9F2BB1C();
    sub_1D9F2B0EC();
    (*(v2 + 8))(v4, v1);
  }

  sub_1D9E4F52C(v11, *(v0 + *(v8 + 24)));
  return sub_1D9F2BB4C();
}

uint64_t PredictionResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1D9F2AD7C();
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A60, &qword_1D9F3BBE8);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PredictionResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB3980();
  v24 = v9;
  v13 = v26;
  sub_1D9F2BB7C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v19 = v10;
  v14 = v21;
  v30 = 0;
  sub_1D9EB3F48(&qword_1EE0F3860, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v15 = v22;
  sub_1D9F2B89C();
  (*(v14 + 32))(v12, v15, v6);
  v29 = 1;
  sub_1D9F2B83C();
  v16 = v19;
  sub_1D9EB256C(v5, &v12[*(v19 + 20)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74340, &qword_1D9F37F80);
  v28 = 2;
  sub_1D9EB39D4(&qword_1EE0F1178, &qword_1EE0F2260, &protocol conformance descriptor for PredictedAction, MEMORY[0x1E69E6330]);
  sub_1D9F2B89C();
  (*(v23 + 8))(v24, v25);
  *&v12[*(v16 + 24)] = v27;
  sub_1D9EB3A70(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1D9EB3AD4(v12);
}

uint64_t sub_1D9EB3224(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9F2AD7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  sub_1D9EB3F48(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D9F2B0EC();
  sub_1D9EB2434(v2 + *(a2 + 20), v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1D9F2BB1C();
    sub_1D9F2B0EC();
    (*(v6 + 8))(v8, v5);
  }

  return sub_1D9E4F52C(a1, *(v2 + *(a2 + 24)));
}

uint64_t sub_1D9EB342C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-1] - v9;
  sub_1D9F2BAFC();
  sub_1D9EB3F48(&qword_1EE0F22A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D9F2B0EC();
  sub_1D9EB2434(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D9F2BB1C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D9F2BB1C();
    sub_1D9F2B0EC();
    (*(v5 + 8))(v7, v4);
  }

  sub_1D9E4F52C(v13, *(v2 + *(a2 + 24)));
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport0C6ResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB76010, &unk_1D9F3A9C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A78, &qword_1D9F3BE18);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((sub_1D9F2AD3C() & 1) == 0)
  {
    goto LABEL_8;
  }

  v22 = type metadata accessor for PredictionResult(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  sub_1D9EB2434(a1 + v14, v13);
  sub_1D9EB2434(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D9E51FE8(v13, &qword_1ECB76010, &unk_1D9F3A9C0);
LABEL_11:
      v17 = sub_1D9E4BC80(*(a1 + *(v22 + 24)), *(a2 + *(v22 + 24)));
      return v17 & 1;
    }

    goto LABEL_7;
  }

  sub_1D9EB2434(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D9E51FE8(v13, &qword_1ECB74A78, &qword_1D9F3BE18);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1D9EB3F48(&qword_1ECB731E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v19 = sub_1D9F2B10C();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1D9E51FE8(v13, &qword_1ECB76010, &unk_1D9F3A9C0);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1D9EB3980()
{
  result = qword_1EE0F3350;
  if (!qword_1EE0F3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3350);
  }

  return result;
}

uint64_t sub_1D9EB39D4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74340, &qword_1D9F37F80);
    sub_1D9EB3F48(a2, type metadata accessor for PredictedAction, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9EB3A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictionResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EB3AD4(uint64_t a1)
{
  v2 = type metadata accessor for PredictionResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D9EB3BA0(uint64_t a1)
{
  sub_1D9F2AD7C();
  if (v1 <= 0x3F)
  {
    sub_1D9EB3C9C(319, &qword_1EE0F3848, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D9EB3C9C(319, &qword_1EE0F2348, type metadata accessor for PredictedAction, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9EB3C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D9EB3D14()
{
  result = qword_1ECB74A70;
  if (!qword_1ECB74A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A70);
  }

  return result;
}

unint64_t sub_1D9EB3D6C()
{
  result = qword_1EE0F3340;
  if (!qword_1EE0F3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3340);
  }

  return result;
}

unint64_t sub_1D9EB3DC4()
{
  result = qword_1EE0F3348;
  if (!qword_1EE0F3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3348);
  }

  return result;
}

uint64_t sub_1D9EB3E18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436C6175736976 && a2 == 0xEF4449747865746ELL;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xEF4449747865746ELL || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x634164656B6E6172 && a2 == 0xED0000736E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D9EB3F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9EB3F90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007473694C20;
  v3 = 0x676E6970706F6853;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6569646572676E49;
    }

    else
    {
      v5 = 0x676E6970706F6853;
    }

    if (v4)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = 0xED00007473694C20;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x6F44206F54;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 1970169165;
    }

    else
    {
      v5 = 0x726568744FLL;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F44206F54;
  v9 = 0xE400000000000000;
  v10 = 1970169165;
  if (a2 != 3)
  {
    v10 = 0x726568744FLL;
    v9 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x6569646572676E49;
    v2 = 0xEB0000000073746ELL;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D9F2BA1C();
  }

  return v13 & 1;
}

VisualActionPredictionSupport::List::Category_optional __swiftcall List.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9F2B7BC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t List.Category.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E6970706F6853;
  v3 = 0x6F44206F54;
  v4 = 1970169165;
  if (v1 != 3)
  {
    v4 = 0x726568744FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6569646572676E49;
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

void sub_1D9EB422C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007473694C20;
  v4 = 0x676E6970706F6853;
  v5 = 0xE500000000000000;
  v6 = 0x6F44206F54;
  v7 = 0xE400000000000000;
  v8 = 1970169165;
  if (v2 != 3)
  {
    v8 = 0x726568744FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6569646572676E49;
    v3 = 0xEB0000000073746ELL;
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

uint64_t sub_1D9EB4390()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB4478(uint64_t a1)
{
  sub_1D9F2B18C();
}

uint64_t sub_1D9EB454C()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();

  return sub_1D9F2BB4C();
}

uint64_t List.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t List.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t List.Item.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static List.Item.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

uint64_t sub_1D9EB4768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EB47F0(uint64_t a1)
{
  v2 = sub_1D9EB49A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB482C(uint64_t a1)
{
  v2 = sub_1D9EB49A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t List.Item.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A80, &qword_1D9F3BE20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB49A4();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D9EB49A4()
{
  result = qword_1ECB74A88;
  if (!qword_1ECB74A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74A88);
  }

  return result;
}

uint64_t List.Item.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t List.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A90, &qword_1D9F3BE28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB49A4();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v9 = sub_1D9F2B84C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB4BD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A80, &qword_1D9F3BE20);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB49A4();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t List.items.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

VisualActionPredictionSupport::List __swiftcall List.init(category:title:items:)(VisualActionPredictionSupport::List::Category category, Swift::String_optional title, Swift::OpaquePointer items)
{
  *v3 = *category;
  *(v3 + 8) = title;
  *(v3 + 24) = items;
  result.title = title;
  result.items = items;
  result.category = category;
  return result;
}

uint64_t sub_1D9EB4D80()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x736D657469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726F6765746163;
  }
}

uint64_t sub_1D9EB4DD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9EB5C80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9EB4DFC(uint64_t a1)
{
  v2 = sub_1D9EB5694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB4E38(uint64_t a1)
{
  v2 = sub_1D9EB5694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t List.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74A98, &qword_1D9F3BE30);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[1] = *(v1 + 2);
  v12[2] = v9;
  v12[0] = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB5694();
  sub_1D9F2BB8C();
  v16 = v8;
  v15 = 0;
  sub_1D9EB56E8();
  sub_1D9F2B9AC();
  if (!v2)
  {
    v11 = v12[0];
    v14 = 1;
    sub_1D9F2B90C();
    v12[3] = v11;
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74AB0, &qword_1D9F3BE38);
    sub_1D9EB57E4(&qword_1ECB74AB8, sub_1D9EB573C, MEMORY[0x1E69E6300]);
    sub_1D9F2B9AC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t List.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D9F2B18C();

  sub_1D9F2BB1C();
  if (v2)
  {
    sub_1D9F2B18C();
  }

  result = MEMORY[0x1DA7438F0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 40;
    do
    {

      sub_1D9F2B18C();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t List.hashValue.getter()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  sub_1D9F2BAFC();
  List.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t List.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74AC8, &qword_1D9F3BE40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB5694();
  sub_1D9F2BB7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = 0;
    sub_1D9EB5790();
    sub_1D9F2B89C();
    v9 = v20;
    v18 = 1;
    v10 = sub_1D9F2B7FC();
    v13 = v12;
    v16[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74AB0, &qword_1D9F3BE38);
    v17 = 2;
    sub_1D9EB57E4(&qword_1ECB74AD8, sub_1D9EB585C, MEMORY[0x1E69E6330]);
    sub_1D9F2B89C();
    (*(v6 + 8))(v8, v5);
    v14 = v16[0];
    v15 = v16[1];
    *a2 = v9;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D9EB5524()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  sub_1D9F2BAFC();
  List.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB5584()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  sub_1D9F2BAFC();
  List.hash(into:)(v3);
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport4ListV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1D9EB3F90(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v5 && (v3 == v6 && v2 == v5 || (sub_1D9F2BA1C() & 1) != 0))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_7:

  return sub_1D9E49670(v4, v7);
}

unint64_t sub_1D9EB5694()
{
  result = qword_1ECB74AA0;
  if (!qword_1ECB74AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AA0);
  }

  return result;
}

unint64_t sub_1D9EB56E8()
{
  result = qword_1ECB74AA8;
  if (!qword_1ECB74AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AA8);
  }

  return result;
}

unint64_t sub_1D9EB573C()
{
  result = qword_1ECB74AC0;
  if (!qword_1ECB74AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AC0);
  }

  return result;
}

unint64_t sub_1D9EB5790()
{
  result = qword_1ECB74AD0;
  if (!qword_1ECB74AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AD0);
  }

  return result;
}

uint64_t sub_1D9EB57E4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74AB0, &qword_1D9F3BE38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9EB585C()
{
  result = qword_1ECB74AE0;
  if (!qword_1ECB74AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AE0);
  }

  return result;
}

unint64_t sub_1D9EB58B4()
{
  result = qword_1ECB74AE8;
  if (!qword_1ECB74AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74AF0, &qword_1D9F3BEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AE8);
  }

  return result;
}

unint64_t sub_1D9EB591C()
{
  result = qword_1ECB74AF8;
  if (!qword_1ECB74AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74AF8);
  }

  return result;
}

unint64_t sub_1D9EB5974()
{
  result = qword_1ECB74B00;
  if (!qword_1ECB74B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B00);
  }

  return result;
}

unint64_t sub_1D9EB59CC()
{
  result = qword_1ECB74B08;
  if (!qword_1ECB74B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B08);
  }

  return result;
}

unint64_t sub_1D9EB5A74()
{
  result = qword_1ECB74B10;
  if (!qword_1ECB74B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B10);
  }

  return result;
}

unint64_t sub_1D9EB5ACC()
{
  result = qword_1ECB74B18;
  if (!qword_1ECB74B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B18);
  }

  return result;
}

unint64_t sub_1D9EB5B24()
{
  result = qword_1ECB74B20;
  if (!qword_1ECB74B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B20);
  }

  return result;
}

unint64_t sub_1D9EB5B7C()
{
  result = qword_1ECB74B28;
  if (!qword_1ECB74B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B28);
  }

  return result;
}

unint64_t sub_1D9EB5BD4()
{
  result = qword_1ECB74B30;
  if (!qword_1ECB74B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B30);
  }

  return result;
}

unint64_t sub_1D9EB5C2C()
{
  result = qword_1ECB74B38;
  if (!qword_1ECB74B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B38);
  }

  return result;
}

uint64_t sub_1D9EB5C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D9EB5D90()
{
  result = qword_1ECB74B40;
  if (!qword_1ECB74B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B40);
  }

  return result;
}

uint64_t FlightNumber.flightNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FlightNumber.flightNumber.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FlightNumber.airline.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FlightNumber.airline.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

VisualActionPredictionSupport::FlightNumber __swiftcall FlightNumber.init(flightNumber:airline:)(Swift::String flightNumber, Swift::String airline)
{
  *v2 = flightNumber;
  v2[1] = airline;
  result.airline = airline;
  result.flightNumber = flightNumber;
  return result;
}

uint64_t static FlightNumber.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

uint64_t sub_1D9EB5FB8()
{
  if (*v0)
  {
    return 0x656E696C726961;
  }

  else
  {
    return 0x754E746867696C66;
  }
}

uint64_t sub_1D9EB5FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x754E746867696C66 && a2 == 0xEC0000007265626DLL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E696C726961 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EB60DC(uint64_t a1)
{
  v2 = sub_1D9EB62E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB6118(uint64_t a1)
{
  v2 = sub_1D9EB62E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FlightNumber.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74B48, &qword_1D9F3C400);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB62E8();
  sub_1D9F2BB8C();
  v12 = 0;
  v8 = v10[3];
  sub_1D9F2B95C();
  if (!v8)
  {
    v11 = 1;
    sub_1D9F2B95C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9EB62E8()
{
  result = qword_1ECB74B50;
  if (!qword_1ECB74B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B50);
  }

  return result;
}

uint64_t FlightNumber.hash(into:)(uint64_t a1)
{
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t FlightNumber.hashValue.getter()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t FlightNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74B58, &qword_1D9F3C408);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB62E8();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1D9F2B84C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D9F2B84C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB6624()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9EB668C(uint64_t a1)
{
  sub_1D9F2B18C();

  return sub_1D9F2B18C();
}

uint64_t sub_1D9EB66DC()
{
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

unint64_t sub_1D9EB6744()
{
  result = qword_1ECB74B60;
  if (!qword_1ECB74B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B60);
  }

  return result;
}

uint64_t sub_1D9EB6798(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D9F2BA1C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D9F2BA1C();
    }
  }

  return result;
}

unint64_t sub_1D9EB6860()
{
  result = qword_1ECB74B68;
  if (!qword_1ECB74B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B68);
  }

  return result;
}

unint64_t sub_1D9EB68B8()
{
  result = qword_1ECB74B70;
  if (!qword_1ECB74B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B70);
  }

  return result;
}

unint64_t sub_1D9EB6910()
{
  result = qword_1ECB74B78;
  if (!qword_1ECB74B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B78);
  }

  return result;
}

uint64_t sub_1D9EB69BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6172466567616D69 && a2 == 0xEA0000000000656DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EB6A4C(uint64_t a1)
{
  v2 = sub_1D9EB6DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB6A88(uint64_t a1)
{
  v2 = sub_1D9EB6DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EB6AC4(uint64_t a1)
{
  v2 = sub_1D9EB6DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB6B00(uint64_t a1)
{
  v2 = sub_1D9EB6DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Resource.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74B80, &qword_1D9F3C680);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74B88, &qword_1D9F3C688);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-v10];
  v20 = *v2;
  v12 = *(v2 + 2);
  v19 = *(v2 + 6);
  v18 = *(v2 + 4);
  v17 = *(v2 + 40);
  v21 = *(v2 + 80);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB6DA8();
  sub_1D9F2BB8C();
  sub_1D9EB6DFC();
  sub_1D9F2B8FC();
  v24 = v20;
  v25 = v12;
  v26 = v19;
  v27 = v18;
  v28 = v17;
  v13 = v2[4];
  v29 = v2[3];
  v30 = v13;
  v31 = v21;
  sub_1D9E58CD4();
  v14 = v22;
  sub_1D9F2B9AC();
  (*(v23 + 8))(v7, v14);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1D9EB6DA8()
{
  result = qword_1ECB74B90;
  if (!qword_1ECB74B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B90);
  }

  return result;
}

unint64_t sub_1D9EB6DFC()
{
  result = qword_1ECB74B98;
  if (!qword_1ECB74B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74B98);
  }

  return result;
}

uint64_t Resource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BA0, &qword_1D9F3C690);
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BA8, &unk_1D9F3C698);
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB6DA8();
  sub_1D9F2BB7C();
  if (v2)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v10 = v36;
  v11 = v23;
  v12 = sub_1D9F2B8DC();
  v13 = (2 * *(v12 + 16)) | 1;
  v32 = v12;
  v33 = v12 + 32;
  v34 = 0;
  v35 = v13;
  v14 = v9;
  if (sub_1D9E416E0() || v34 != v35 >> 1)
  {
    v15 = sub_1D9F2B6BC();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0);
    *v17 = &type metadata for Resource;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v11 + 8))(v14, v7);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v19 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  sub_1D9EB6DFC();
  sub_1D9F2B7DC();
  sub_1D9E59364();
  sub_1D9F2B89C();
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v25 = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_1D9E7F4D0(v24, v22);
  v19 = v21;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1D9EB7274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9EB72BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D9EB734C()
{
  result = qword_1ECB74BB0;
  if (!qword_1ECB74BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BB0);
  }

  return result;
}

unint64_t sub_1D9EB73A4()
{
  result = qword_1ECB74BB8;
  if (!qword_1ECB74BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BB8);
  }

  return result;
}

unint64_t sub_1D9EB73FC()
{
  result = qword_1ECB74BC0;
  if (!qword_1ECB74BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BC0);
  }

  return result;
}

unint64_t sub_1D9EB7454()
{
  result = qword_1ECB74BC8;
  if (!qword_1ECB74BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BC8);
  }

  return result;
}

unint64_t sub_1D9EB74AC()
{
  result = qword_1ECB74BD0;
  if (!qword_1ECB74BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BD0);
  }

  return result;
}

unint64_t sub_1D9EB7504()
{
  result = qword_1ECB74BD8;
  if (!qword_1ECB74BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74BD8);
  }

  return result;
}

uint64_t BundleRankingResult.RankedBundle.clientContextId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9F2AD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for BundleRankingResult.RankedBundle(uint64_t a1)
{
  result = qword_1EE0F29D8;
  if (!qword_1EE0F29D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BundleRankingResult.RankedBundle.init(clientContextId:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1D9F2AD7C();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for BundleRankingResult.RankedBundle(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1D9EB76FC()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

uint64_t sub_1D9EB7740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43746E65696C63 && a2 == 0xEF6449747865746ELL;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EB7820(uint64_t a1)
{
  v2 = sub_1D9EB7A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB785C(uint64_t a1)
{
  v2 = sub_1D9EB7A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleRankingResult.RankedBundle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BE0, &qword_1D9F3CA20);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB7A50();
  sub_1D9F2BB8C();
  v8[15] = 0;
  sub_1D9F2AD7C();
  sub_1D9EB8468(&qword_1EE0F3868, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D9F2B9AC();
  if (!v1)
  {
    type metadata accessor for BundleRankingResult.RankedBundle(0);
    v8[14] = 1;
    sub_1D9F2B97C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9EB7A50()
{
  result = qword_1EE0F29F8;
  if (!qword_1EE0F29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F29F8);
  }

  return result;
}

uint64_t BundleRankingResult.RankedBundle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v22 = sub_1D9F2AD7C();
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BE8, &qword_1D9F3CA28);
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v17 - v6;
  v8 = type metadata accessor for BundleRankingResult.RankedBundle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB7A50();
  sub_1D9F2BB7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v10;
  v11 = v20;
  v25 = 0;
  sub_1D9EB8468(&qword_1EE0F3860, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v12 = v22;
  sub_1D9F2B89C();
  v13 = v18;
  (*(v11 + 32))(v18, v5, v12);
  v24 = 1;
  sub_1D9F2B86C();
  v15 = v14;
  (*(v21 + 8))(v7, v23);
  *(v13 + *(v8 + 20)) = v15;
  sub_1D9EB7DE8(v13, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D9EB7E4C(v13);
}

uint64_t sub_1D9EB7DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleRankingResult.RankedBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EB7E4C(uint64_t a1)
{
  v2 = type metadata accessor for BundleRankingResult.RankedBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9EB7F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x754264656B6E6172 && a2 == 0xED000073656C646ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EB7F9C(uint64_t a1)
{
  v2 = sub_1D9EB81C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB7FD8(uint64_t a1)
{
  v2 = sub_1D9EB81C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleRankingResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BF0, &qword_1D9F3CA30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB81C0();

  sub_1D9F2BB8C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BF8, &qword_1D9F3CA38);
  sub_1D9EB83CC(&qword_1EE0F1138, qword_1EE0F1648, &protocol conformance descriptor for BundleRankingResult.RankedBundle, MEMORY[0x1E69E6300]);
  sub_1D9F2B9AC();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D9EB81C0()
{
  result = qword_1EE0F2950[0];
  if (!qword_1EE0F2950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0F2950);
  }

  return result;
}

uint64_t BundleRankingResult.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C00, &qword_1D9F3CA40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB81C0();
  sub_1D9F2BB7C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74BF8, &qword_1D9F3CA38);
    sub_1D9EB83CC(&qword_1EE0F1130, &qword_1EE0F1640, &protocol conformance descriptor for BundleRankingResult.RankedBundle, MEMORY[0x1E69E6330]);
    sub_1D9F2B89C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB83CC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB74BF8, &qword_1D9F3CA38);
    sub_1D9EB8468(a2, type metadata accessor for BundleRankingResult.RankedBundle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9EB8468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9EB8518(uint64_t a1)
{
  result = sub_1D9F2AD7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D9EB85B0()
{
  result = qword_1ECB74C08;
  if (!qword_1ECB74C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C08);
  }

  return result;
}

unint64_t sub_1D9EB8608()
{
  result = qword_1ECB74C10;
  if (!qword_1ECB74C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C10);
  }

  return result;
}

unint64_t sub_1D9EB8660()
{
  result = qword_1EE0F2940;
  if (!qword_1EE0F2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2940);
  }

  return result;
}

unint64_t sub_1D9EB86B8()
{
  result = qword_1EE0F2948;
  if (!qword_1EE0F2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F2948);
  }

  return result;
}

unint64_t sub_1D9EB8710()
{
  result = qword_1EE0F29E8;
  if (!qword_1EE0F29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F29E8);
  }

  return result;
}

unint64_t sub_1D9EB8768()
{
  result = qword_1EE0F29F0;
  if (!qword_1EE0F29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F29F0);
  }

  return result;
}

void ExecutionOptions.limit.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void ExecutionOptions.timeoutPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t ExecutionOptions.init(limit:timeoutPolicy:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

uint64_t sub_1D9EB880C()
{
  if (*v0)
  {
    return 0x5074756F656D6974;
  }

  else
  {
    return 0x74696D696CLL;
  }
}

uint64_t sub_1D9EB8850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1D9F2BA1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5074756F656D6974 && a2 == 0xED00007963696C6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9F2BA1C();

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

uint64_t sub_1D9EB8930(uint64_t a1)
{
  v2 = sub_1D9EB9008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EB896C(uint64_t a1)
{
  v2 = sub_1D9EB9008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C18, &unk_1D9F3CD80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v11[0] = v1[2];
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB9008();
  sub_1D9F2BB8C();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB739B0, &qword_1D9F32938);
  sub_1D9E6B720(qword_1EE0F1460, &protocol conformance descriptor for Limit<A>);
  v9 = v11[1];
  sub_1D9F2B9AC();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v14;
    v15 = 1;
    sub_1D9E6B678();
    sub_1D9F2B9AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ExecutionOptions.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  if (v0[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *v0;
    MEMORY[0x1DA7438F0](1);
  }

  MEMORY[0x1DA7438F0](v3);
  if (v2)
  {
    return MEMORY[0x1DA7438F0](0);
  }

  MEMORY[0x1DA7438F0](1);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1DA743920](v5);
}

uint64_t ExecutionOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D9F2BAFC();
  v5 = 0;
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1DA7438F0](1);
    v5 = v1;
  }

  MEMORY[0x1DA7438F0](v5);
  if (v4)
  {
    MEMORY[0x1DA7438F0](0);
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1DA743920](v6);
  }

  return sub_1D9F2BB4C();
}

uint64_t ExecutionOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C28, &qword_1D9F3CD90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9EB9008();
  sub_1D9F2BB7C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB739B0, &qword_1D9F32938);
    v16 = 0;
    sub_1D9E6B720(&qword_1EE0F1458, &protocol conformance descriptor for Limit<A>);
    sub_1D9F2B89C();
    v9 = v14;
    v10 = v15;
    v16 = 1;
    sub_1D9E6B7C4();
    sub_1D9F2B89C();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    v12 = v15;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9EB8F00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D9F2BAFC();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
  }

  MEMORY[0x1DA7438F0](v1);
  if (v4)
  {
    MEMORY[0x1DA7438F0](0);
  }

  else
  {
    MEMORY[0x1DA7438F0](1);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1DA743920](v5);
  }

  return sub_1D9F2BB4C();
}

BOOL _s29VisualActionPredictionSupport16ExecutionOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

unint64_t sub_1D9EB9008()
{
  result = qword_1ECB74C20;
  if (!qword_1ECB74C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C20);
  }

  return result;
}

unint64_t sub_1D9EB9060()
{
  result = qword_1ECB74C30;
  if (!qword_1ECB74C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C30);
  }

  return result;
}

uint64_t sub_1D9EB90B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9EB90D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1D9EB9128()
{
  result = qword_1ECB74C38;
  if (!qword_1ECB74C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C38);
  }

  return result;
}

unint64_t sub_1D9EB9180()
{
  result = qword_1ECB74C40;
  if (!qword_1ECB74C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C40);
  }

  return result;
}

unint64_t sub_1D9EB91D8()
{
  result = qword_1ECB74C48;
  if (!qword_1ECB74C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C48);
  }

  return result;
}

uint64_t sub_1D9EB922C(void *a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1D9F2B68C();

    v10[0] = 0xD000000000000014;
    v10[1] = 0x80000001D9F49520;
    swift_getErrorValue();
    v8 = sub_1D9F2BAAC();
    MEMORY[0x1DA742F90](v8);

    v5 = a1;
    v6 = a2;
    v7 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_1D9F2B68C();

    strcpy(v10, "Request for ");
    HIWORD(v10[1]) = -4864;
    MEMORY[0x1DA742F90](a1, a2);
    MEMORY[0x1DA742F90](34, 0xE100000000000000);
    v5 = a1;
    v6 = a2;
    v7 = 1;
LABEL_5:
    sub_1D9E84B4C(v5, v6, v7);
    return v10[0];
  }

  return 0x61636F6C6C616544;
}

Swift::Void __swiftcall ServiceSession.activate()()
{
  v1 = v0;
  v2 = sub_1D9F2AF8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9F2AFFC();
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v20 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v8 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v8, qword_1EE0F2380);

  v9 = sub_1D9F2AE6C();
  v10 = sub_1D9F2B42C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315394;
    v13 = sub_1D9F2BBBC();
    v15 = sub_1D9E71CA4(v13, v14, aBlock);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D9E71CA4(0x6574617669746361, 0xEA00000000002928, aBlock);
    _os_log_impl(&dword_1D9E39000, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v12, -1, -1);
    MEMORY[0x1DA744270](v11, -1, -1);
  }

  aBlock[4] = sub_1D9EBC12C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_3;
  v16 = _Block_copy(aBlock);

  v17 = v20;
  sub_1D9F2AFAC();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v18 = v23;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v17, v18, v16);
  _Block_release(v16);
  (*(v3 + 8))(v18, v2);
  (*(v22 + 8))(v17, v21);
}

uint64_t ServiceSession.sendMessage<A>(sync:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v5 = v4;
  v51 = a1;
  v54 = *v4;
  v8 = v54;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v50 = v10;
  v52 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v43 = AssociatedTypeWitness;
  v12 = sub_1D9F2BB5C();
  v13 = sub_1D9F2B59C();
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v46 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41[-v16];
  if (*(v5 + *(v8 + 152)) != 1)
  {
    goto LABEL_6;
  }

  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v18 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v18, qword_1EE0F2380);

    v19 = sub_1D9F2AE6C();
    v20 = sub_1D9F2B42C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v45 = v19;
      v22 = v21;
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v22 = 136315650;
      v23 = sub_1D9F2BBBC();
      v42 = v20;
      v25 = v9;
      v26 = sub_1D9E71CA4(v23, v24, aBlock);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1D9E71CA4(0xD000000000000012, 0x80000001D9F48CE0, aBlock);
      *(v22 + 22) = 2080;
      v27 = (*(a3 + 40))(a2, a3);
      v29 = sub_1D9E71CA4(v27, v28, aBlock);

      *(v22 + 24) = v29;
      v9 = v25;
      v30 = v45;
      _os_log_impl(&dword_1D9E39000, v45, v42, "%s.%s messageType = %s", v22, 0x20u);
      v31 = v49;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v31, -1, -1);
      MEMORY[0x1DA744270](v22, -1, -1);
    }

    else
    {
    }

LABEL_6:
    v45 = *(v12 - 8);
    (v45[7].isa)(v17, 1, 1, v12);
    v49 = *(v5 + *(*v5 + 120));
    v32 = v52;
    (*(v9 + 2))(v52, v51, a2);
    v33 = (v9[80] + 64) & ~v9[80];
    v34 = swift_allocObject();
    v35 = v54;
    *(v34 + 2) = *(v54 + 80);
    *(v34 + 3) = a2;
    *(v34 + 4) = *(v35 + 88);
    *(v34 + 5) = a3;
    *(v34 + 6) = v17;
    *(v34 + 7) = v5;
    (*(v9 + 4))(&v34[v33], v32, a2);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1D9EC6150;
    *(v36 + 24) = v34;
    aBlock[4] = sub_1D9EC6194;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D9EC1C80;
    aBlock[3] = &block_descriptor_6_1;
    v9 = _Block_copy(aBlock);

    dispatch_sync(v49, v9);
    _Block_release(v9);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if ((v33 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v37 = v46;
  v38 = v47;
  v39 = v48;
  (*(v47 + 16))(v46, v17, v48);
  result = (v45[6].isa)(v37, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_willThrow();
    }

    else
    {
      (*(*(v43 - 8) + 32))(v44, v37);
    }

    (*(v38 + 8))(v17, v39);
  }

  return result;
}

uint64_t sub_1D9EB9EB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D9EB9EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  sub_1D9EBA3A0(v7, a2, a3, a4);
  return v7;
}

uint64_t ServiceSession.addCancellationHandler(on:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9F2AF8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9F2AFFC();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + *(*v3 + 120));
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1D9EC61BC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_12_0;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_1D9F2AFAC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t ServiceSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EE0FF698;
  v4 = sub_1D9F2AD7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ServiceSession.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t *sub_1D9EBA3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = sub_1D9F2B47C();
  MEMORY[0x1EEE9AC00](v10);
  v47 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9F2B48C();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v46 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9F2AFFC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v48 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F2A93C();
  *(v5 + *(*v5 + 136)) = MEMORY[0x1E69E7CC8];
  *(v5 + *(*v5 + 144)) = MEMORY[0x1E69E7CC0];
  v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v17 = sub_1D9F2B11C();
  v18 = [v16 initWithSuiteName_];

  if (v18)
  {
    v19 = sub_1D9F2B11C();
    v20 = [v18 BOOLForKey_];
  }

  else
  {
    v20 = 0;
  }

  *(v5 + *(*v5 + 152)) = v20;
  *(v5 + qword_1EE0FF690) = 1;
  v21 = *(*v5 + 112);
  v24 = v9 + 80;
  v22 = *(v9 + 80);
  v23 = *(v24 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  (*(v26 + 16))(v5 + v21, a2, AssociatedTypeWitness);
  if (!a3)
  {
    v41[4] = v10;
    v43 = a4;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1D9F2B68C();
    v27 = a2;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v31 = v30;

    v49 = v29;
    v50 = v31;
    MEMORY[0x1DA742F90](0xD000000000000017, 0x80000001D9F495F0);
    v32 = v49;
    v33 = v50;
    v34 = *(AssociatedConformanceWitness + 16);
    v42 = v27;
    v35 = v34(AssociatedTypeWitness, AssociatedConformanceWitness);
    v41[2] = v33;
    v41[3] = v32;
    if (v35 <= 16)
    {
      if (v35 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_18;
      }

      if (v35 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_18;
      }
    }

    else
    {
      switch(v35)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_18;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_18;
        case 33:
          sub_1D9F2AFCC();
LABEL_18:
          v41[1] = sub_1D9E84F4C();
          (*(v44 + 104))(v46, *MEMORY[0x1E69E8098], v45);
          v49 = MEMORY[0x1E69E7CC0];
          sub_1D9EC6994(&unk_1EE0F22D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9F2B5FC();
          a3 = sub_1D9F2B4AC();
          (*(v26 + 8))(v42, AssociatedTypeWitness);
          a4 = v43;
          goto LABEL_19;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_18;
  }

  (*(v26 + 8))(a2, AssociatedTypeWitness);
LABEL_19:
  *(v5 + *(*v5 + 120)) = a3;
  v36 = *(*v5 + 128);
  v37 = swift_getAssociatedTypeWitness();
  v38 = *(v37 - 8);
  (*(v38 + 32))(v5 + v36, a4, v37);
  (*(v38 + 56))(v5 + v36, 0, 1, v37);
  type metadata accessor for ServiceSession.State(0, v22, v23, v39);
  swift_storeEnumTagMultiPayload();
  return v5;
}

uint64_t sub_1D9EBA9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_1D9EBAA50(v5, a2, a3);
  return v5;
}

uint64_t *sub_1D9EBAA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v4;
  v8 = sub_1D9F2B47C();
  MEMORY[0x1EEE9AC00](v8);
  v39 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D9F2B48C();
  v10 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v38 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9F2AFFC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9F2A93C();
  *(v4 + *(*v4 + 136)) = MEMORY[0x1E69E7CC8];
  *(v4 + *(*v4 + 144)) = MEMORY[0x1E69E7CC0];
  v14 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v15 = sub_1D9F2B11C();
  v16 = [v14 initWithSuiteName_];

  if (v16)
  {
    v17 = sub_1D9F2B11C();
    v18 = [v16 BOOLForKey_];
  }

  else
  {
    v18 = 0;
  }

  *(v4 + *(*v4 + 152)) = v18;
  *(v4 + qword_1EE0FF690) = 0;
  v19 = *(*v4 + 112);
  v21 = *(v7 + 80);
  v20 = *(v7 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  (*(v23 + 16))(v4 + v19, a2, AssociatedTypeWitness);
  if (!a3)
  {
    v35[4] = v8;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1D9F2B68C();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v36 = a2;
    v27 = v26;

    v41 = v25;
    v42 = v27;
    MEMORY[0x1DA742F90](0xD000000000000017, 0x80000001D9F48DA0);
    v28 = v41;
    v29 = v42;
    v30 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v35[2] = v29;
    v35[3] = v28;
    if (v30 <= 16)
    {
      if (v30 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_18;
      }

      if (v30 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_18;
      }
    }

    else
    {
      switch(v30)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_18;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_18;
        case 33:
          sub_1D9F2AFCC();
LABEL_18:
          v35[1] = sub_1D9E84F4C();
          (*(v10 + 104))(v38, *MEMORY[0x1E69E8098], v37);
          v41 = MEMORY[0x1E69E7CC0];
          sub_1D9EC6994(&unk_1EE0F22D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
          sub_1D9F2B5FC();
          a3 = sub_1D9F2B4AC();
          (*(v23 + 8))(v36, AssociatedTypeWitness);
          goto LABEL_19;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_18;
  }

  (*(v23 + 8))(a2, AssociatedTypeWitness);
LABEL_19:
  *(v4 + *(*v4 + 120)) = a3;
  v31 = *(*v4 + 128);
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 56))(v4 + v31, 1, 1, v32);
  type metadata accessor for ServiceSession.State(0, v21, v20, v33);
  swift_storeEnumTagMultiPayload();
  return v4;
}

char *ServiceSession.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v3 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v3, qword_1EE0F2380);

  v4 = sub_1D9F2AE6C();
  v5 = sub_1D9F2B42C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136315394;
    v8 = sub_1D9F2BBBC();
    v10 = sub_1D9E71CA4(v8, v9, v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1D9E71CA4(0x74696E696564, 0xE600000000000000, v22);
    _os_log_impl(&dword_1D9E39000, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v7, -1, -1);
    MEMORY[0x1DA744270](v6, -1, -1);
  }

  v22[0] = 0;
  v22[1] = 0;
  v23 = 2;
  sub_1D9EBB3A0(v22);
  v11 = qword_1EE0FF698;
  v12 = sub_1D9F2AD7C();
  (*(*(v12 - 8) + 8))(&v1[v11], v12);
  v13 = *(*v1 + 112);
  v16 = v2 + 80;
  v15 = *(v2 + 80);
  v14 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[v13], AssociatedTypeWitness);

  v18 = *(*v1 + 128);
  v20 = type metadata accessor for ServiceSession.State(0, v15, v14, v19);
  (*(*(v20 - 8) + 8))(&v1[v18], v20);

  return v1;
}

uint64_t sub_1D9EBB3A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v109 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v99 - v9;
  v112 = v10;
  v106 = sub_1D9F2B59C();
  v113 = *(v106 - 8);
  v11 = MEMORY[0x1EEE9AC00](v106);
  v99 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v99 - v13;
  v101 = v5;
  v102 = v4;
  v15 = type metadata accessor for ServiceSession.State(0, v5, v4, v14);
  v115 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v99 - v19;
  v105 = sub_1D9F2B02C();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v24 = sub_1D9F2AE8C();
  v25 = __swift_project_value_buffer(v24, qword_1EE0F2380);

  sub_1D9E84B2C(v21, v22, v23);
  v108 = v25;
  v26 = sub_1D9F2AE6C();
  v27 = sub_1D9F2B42C();

  sub_1D9E84B4C(v21, v22, v23);
  v28 = os_log_type_enabled(v26, v27);
  v110 = v15;
  v107 = v18;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v120[0] = v30;
    *v29 = 136315650;
    v31 = sub_1D9F2BBBC();
    v33 = sub_1D9E71CA4(v31, v32, v120);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1D9E71CA4(0x286C65636E61635FLL, 0xED0000293A726F66, v120);
    *(v29 + 22) = 2080;
    sub_1D9E84B2C(v21, v22, v23);
    v34 = sub_1D9EB922C(v21, v22, v23);
    v36 = sub_1D9E71CA4(v34, v35, v120);

    *(v29 + 24) = v36;
    _os_log_impl(&dword_1D9E39000, v26, v27, "%s.%s reason = %s", v29, 0x20u);
    swift_arrayDestroy();
    v37 = v30;
    v15 = v110;
    MEMORY[0x1DA744270](v37, -1, -1);
    MEMORY[0x1DA744270](v29, -1, -1);
  }

  v38 = v113;
  v39 = v116;
  if (v23 != 2 || v22 | v21)
  {
    v40 = *(v2 + *(*v2 + 120));
    v41 = v103;
    *v103 = v40;
    v42 = v15;
    v43 = v38;
    v44 = v104;
    v45 = v105;
    (*(v104 + 104))(v41, *MEMORY[0x1E69E8020], v105);
    v46 = v40;
    LOBYTE(v40) = sub_1D9F2B04C();
    v47 = v41;
    v39 = v116;
    result = (*(v44 + 8))(v47, v45);
    v38 = v43;
    v15 = v42;
    if ((v40 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  v49 = *(*v2 + 128);
  swift_beginAccess();
  (*(v115 + 16))(v114, v2 + v49, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v105 = v49;
    v59 = v106;
    (*(v38 + 32))(v39, v114, v106);

    v60 = sub_1D9F2AE6C();
    v61 = sub_1D9F2B41C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v119[0] = v63;
      *v62 = 136315138;
      v64 = ServiceSession.description.getter();
      v66 = v65;

      v67 = sub_1D9E71CA4(v64, v66, v119);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1D9E39000, v60, v61, "%s cancelled without being activated.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v68 = v63;
      v59 = v106;
      MEMORY[0x1DA744270](v68, -1, -1);
      v69 = v62;
      v15 = v110;
      MEMORY[0x1DA744270](v69, -1, -1);
    }

    else
    {
    }

    v84 = v107;
    v85 = v111;
    v86 = v113;
    v87 = v99;
    (*(v113 + 16))(v99, v116, v59);
    if ((*(v85 + 48))(v87, 1, v112) == 1)
    {
      v88 = *(v86 + 8);
      v88(v116, v59);
      v88(v87, v59);
    }

    else
    {
      v89 = v112;
      (*(v85 + 32))(v100, v87, v112);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v91 = v100;
      (*(AssociatedConformanceWitness + 32))(v89, AssociatedConformanceWitness);
      (*(v111 + 8))(v91, v89);
      (*(v113 + 8))(v116, v106);
    }

    v92 = v105;
    *v84 = v21;
    v84[1] = v22;
    *(v84 + 16) = v23;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D9E84B2C(v21, v22, v23);
    (*(v115 + 40))(v2 + v92, v84, v15);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v105 = v49;
    (*(v111 + 32))(v109, v114, v112);

    v51 = sub_1D9F2AE6C();
    v52 = sub_1D9F2B41C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v119[0] = v54;
      *v53 = 136315138;
      v55 = ServiceSession.description.getter();
      v57 = v56;

      v58 = sub_1D9E71CA4(v55, v57, v119);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_1D9E39000, v51, v52, "%s cancelling...", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1DA744270](v54, -1, -1);
      MEMORY[0x1DA744270](v53, -1, -1);
    }

    else
    {
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v70 = v112;
    v71 = swift_getAssociatedConformanceWitness();
    (*(v71 + 32))(v70, v71);

    v72 = sub_1D9F2AE6C();
    v73 = sub_1D9F2B41C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v119[0] = v75;
      *v74 = 136315138;
      v76 = ServiceSession.description.getter();
      v78 = v77;

      v79 = sub_1D9E71CA4(v76, v78, v119);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_1D9E39000, v72, v73, "%s cancelled.", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1DA744270](v75, -1, -1);
      MEMORY[0x1DA744270](v74, -1, -1);
    }

    else
    {
    }

    (*(v111 + 8))(v109, v112);
    v80 = v110;
    v81 = v115;
    v82 = v107;
    *v107 = v21;
    v82[1] = v22;
    *(v82 + 16) = v23;
    swift_storeEnumTagMultiPayload();
    v83 = v105;
    swift_beginAccess();
    sub_1D9E84B2C(v21, v22, v23);
    (*(v81 + 40))(v2 + v83, v82, v80);
LABEL_25:
    swift_endAccess();
    goto LABEL_26;
  }

  (*(v115 + 8))(v114, v15);
LABEL_26:
  v93 = *(*v2 + 136);
  swift_beginAccess();
  if (*(*(v2 + v93) + 16))
  {

    *(v2 + v93) = MEMORY[0x1E69E7CC8];
  }

  swift_endAccess();
  v94 = *(*v2 + 144);
  swift_beginAccess();
  v95 = *(v2 + v94);
  *(v2 + v94) = MEMORY[0x1E69E7CC0];
  v96 = *(v95 + 16);
  if (v96)
  {
    v97 = v95 + 40;
    do
    {
      v98 = *(v97 - 8);
      v117[0] = v21;
      v117[1] = v22;
      v118 = v23;

      v98(v117);

      v97 += 16;
      --v96;
    }

    while (v96);
  }
}

uint64_t ServiceSession.__deallocating_deinit()
{
  ServiceSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D9EBC148()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v192 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v183 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v182 = &v174 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v191 = &v174 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v179 = &v174 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v178 = &v174 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v184 = &v174 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v189 = &v174 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v181 = &v174 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v187 = &v174 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v174 - v23;
  v24 = swift_getAssociatedTypeWitness();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v180 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v188 = &v174 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v186 = &v174 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v175 = &v174 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v185 = &v174 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v198 = &v174 - v36;
  v37 = sub_1D9F2B59C();
  v196 = *(v37 - 8);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v190 = &v174 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v174 - v40;
  v193 = v3;
  v194 = v2;
  v43 = type metadata accessor for ServiceSession.State(0, v3, v2, v42);
  v202 = *(v43 - 8);
  v203 = v43;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v176 = &v174 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v200 = &v174 - v46;
  v201 = sub_1D9F2B02C();
  v47 = *(v201 - 1);
  MEMORY[0x1EEE9AC00](v201);
  v49 = (&v174 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v50 = sub_1D9F2AE8C();
  v51 = __swift_project_value_buffer(v50, qword_1EE0F2380);

  v204 = v51;
  v52 = sub_1D9F2AE6C();
  v53 = sub_1D9F2B42C();

  v54 = os_log_type_enabled(v52, v53);
  v195 = AssociatedTypeWitness;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v199 = v41;
    v56 = v55;
    v57 = swift_slowAlloc();
    v197 = v37;
    v205 = v1;
    v58 = v57;
    *&v208 = v57;
    *v56 = 136315394;
    v59 = sub_1D9F2BBBC();
    v61 = v25;
    v62 = v24;
    v63 = sub_1D9E71CA4(v59, v60, &v208);

    *(v56 + 4) = v63;
    v24 = v62;
    v25 = v61;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_1D9E71CA4(0x746176697463615FLL, 0xEB00000000292865, &v208);
    _os_log_impl(&dword_1D9E39000, v52, v53, "%s.%s", v56, 0x16u);
    swift_arrayDestroy();
    v64 = v58;
    v1 = v205;
    v37 = v197;
    MEMORY[0x1DA744270](v64, -1, -1);
    v41 = v199;
    MEMORY[0x1DA744270](v56, -1, -1);
  }

  v65 = *(v1 + *(*v1 + 120));
  *v49 = v65;
  v66 = v201;
  (*(v47 + 104))(v49, *MEMORY[0x1E69E8020], v201);
  v67 = v65;
  LOBYTE(v65) = sub_1D9F2B04C();
  (*(v47 + 8))(v49, v66);
  if (v65)
  {
    v68 = *(*v1 + 128);
    swift_beginAccess();
    v70 = v202;
    v69 = v203;
    v71 = v200;
    (*(v202 + 16))(v200, v1 + v68, v203);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v25 + 8))(v71, v24);
      }

      else
      {
        (*(v70 + 8))(v71, v69);

        v78 = sub_1D9F2AE6C();
        v79 = sub_1D9F2B43C();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *&v208 = v81;
          *v80 = 136315138;

          v82 = ServiceSession.description.getter();
          v84 = v83;

          v85 = sub_1D9E71CA4(v82, v84, &v208);

          *(v80 + 4) = v85;
          _os_log_impl(&dword_1D9E39000, v78, v79, "%s failed to activate because it is already cancelled.", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v81);
          MEMORY[0x1DA744270](v81, -1, -1);
          MEMORY[0x1DA744270](v80, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      v201 = v67;
      v73 = v196;
      (*(v196 + 32))(v41, v71, v37);
      v74 = *(v73 + 16);
      v75 = v190;
      v199 = v41;
      v74(v190, v41, v37);
      v76 = (*(v25 + 48))(v75, 1, v24);
      v205 = v1;
      if (v76 == 1)
      {
        v200 = *(v73 + 8);
        (v200)(v75, v37);
        v77 = v186;
        (*(v194 + 64))(v1 + *(*v1 + 112), v187);
        v190 = 0;
        v197 = v37;
        v88 = *(v25 + 32);
        v89 = v175;
        v88(v175, v77, v24);
        v90 = v198;
        v88(v198, v89, v24);
      }

      else
      {
        v197 = v37;
        v86 = *(v25 + 32);
        v87 = v185;
        v86(v185, v75, v24);
        v90 = v198;
        v86(v198, v87, v24);
        v190 = 0;
      }

      v91 = v188;
      v92 = v90;
      v93 = *(v25 + 16);
      v93(v188, v92, v24);

      v94 = sub_1D9F2AE6C();
      v95 = sub_1D9F2B41C();
      v96 = os_log_type_enabled(v94, v95);
      v174 = v25;
      v187 = (v25 + 16);
      v186 = v93;
      if (v96)
      {
        v97 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        *&v208 = v185;
        *v97 = 136315394;

        v98 = ServiceSession.description.getter();
        v100 = v99;

        v101 = sub_1D9E71CA4(v98, v100, &v208);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2080;
        v93(v180, v91, v24);
        v102 = sub_1D9F2B13C();
        v104 = v103;
        v200 = *(v174 + 8);
        (v200)(v91, v24);
        v105 = sub_1D9E71CA4(v102, v104, &v208);

        *(v97 + 14) = v105;
        _os_log_impl(&dword_1D9E39000, v94, v95, "%s connection = %s", v97, 0x16u);
        v106 = v185;
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v106, -1, -1);
        MEMORY[0x1DA744270](v97, -1, -1);
      }

      else
      {

        v200 = *(v25 + 8);
        (v200)(v91, v24);
      }

      v107 = sub_1D9F2AE6C();
      v108 = sub_1D9F2B41C();
      v109 = v24;
      if (os_log_type_enabled(v107, v108))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v208 = v111;
        *v110 = 136315138;

        v112 = ServiceSession.description.getter();
        v114 = v113;

        v115 = sub_1D9E71CA4(v112, v114, &v208);

        *(v110 + 4) = v115;
        _os_log_impl(&dword_1D9E39000, v107, v108, "%s activating...", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        MEMORY[0x1DA744270](v111, -1, -1);
        MEMORY[0x1DA744270](v110, -1, -1);
      }

      else
      {
      }

      v116 = v193;
      v117 = swift_allocObject();
      swift_weakInit();
      v118 = swift_allocObject();
      v119 = v194;
      v118[2] = v116;
      v118[3] = v119;
      v118[4] = v117;
      v120 = swift_allocObject();
      swift_weakInit();
      v121 = swift_allocObject();
      v121[2] = v116;
      v121[3] = v119;
      v121[4] = v120;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v122 = v195;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v124 = v118;
      v125 = v121;
      v126 = v122;
      v127 = v201;
      v194 = AssociatedConformanceWitness;
      sub_1D9E77E58(sub_1D9EC6D20, v124, sub_1D9EC6D2C, v125, v201, &v208);
      v206[0] = v208;
      v206[1] = v209;
      v207 = v210;
      v128 = v109;
      v129 = swift_getAssociatedConformanceWitness();
      v130 = *(v129 + 24);
      v131 = v127;
      v132 = v198;
      v133 = v190;
      v134 = v189;
      v201 = v129;
      v130(v206, v189, v128, v129);
      if (v133)
      {
        v203 = v128;

        v135 = v192;
        v136 = *(v192 + 32);
        v137 = v181;
        v136(v181, v134, v126);
        v138 = v191;
        v193 = v136;
        v136(v191, v137, v126);
        v139 = v182;
        v202 = *(v135 + 16);
        (v202)(v182, v138, v126);

        v140 = sub_1D9F2AE6C();
        v141 = sub_1D9F2B43C();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          *&v208 = v190;
          *v142 = 136315394;

          v143 = ServiceSession.description.getter();
          v145 = v144;

          v146 = sub_1D9E71CA4(v143, v145, &v208);

          *(v142 + 4) = v146;
          *(v142 + 12) = 2080;
          v147 = sub_1D9F2BAAC();
          v149 = v148;
          v204 = *(v192 + 8);
          v204(v139, v195);
          v150 = sub_1D9E71CA4(v147, v149, &v208);

          *(v142 + 14) = v150;
          _os_log_impl(&dword_1D9E39000, v140, v141, "%s failed to activate due to error %s.", v142, 0x16u);
          v151 = v190;
          swift_arrayDestroy();
          MEMORY[0x1DA744270](v151, -1, -1);
          v152 = v142;
          v126 = v195;
          MEMORY[0x1DA744270](v152, -1, -1);
        }

        else
        {

          v204 = *(v135 + 8);
          v204(v139, v126);
        }

        v153 = v199;
        v154 = v200;
        v167 = v183;
        (v202)(v183, v191, v126);
        v168 = sub_1D9F2BA0C();
        if (v168)
        {
          v169 = v168;
          v170 = v204;
          v204(v167, v126);
        }

        else
        {
          v169 = swift_allocError();
          v193(v171, v167, v126);
          v170 = v204;
        }

        v208 = v169;
        LOBYTE(v209) = 0;
        sub_1D9EBB3A0(&v208);
        sub_1D9E84B4C(v208, *(&v208 + 1), v209);
        v172 = v198;
        v173 = v203;
        v201[4](v203);
        v170(v191, v126);
        (v154)(v172, v173);
        (*(v196 + 8))(v153, v197);
      }

      else
      {

        v155 = v176;
        (v186)(v176, v132, v128);
        v156 = v203;
        swift_storeEnumTagMultiPayload();
        v157 = v205;
        swift_beginAccess();
        (*(v202 + 40))(v157 + v68, v155, v156);
        swift_endAccess();

        v158 = sub_1D9F2AE6C();
        v159 = sub_1D9F2B41C();
        v160 = v132;
        if (os_log_type_enabled(v158, v159))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          *&v208 = v162;
          *v161 = 136315138;

          v163 = ServiceSession.description.getter();
          v165 = v164;

          v166 = sub_1D9E71CA4(v163, v165, &v208);

          *(v161 + 4) = v166;
          _os_log_impl(&dword_1D9E39000, v158, v159, "%s activated.", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v162);
          MEMORY[0x1DA744270](v162, -1, -1);
          MEMORY[0x1DA744270](v161, -1, -1);
        }

        else
        {
        }

        (v200)(v160, v128);
        (*(v196 + 8))(v199, v197);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ServiceSession.cancel(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D9F2AF8C();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9F2AFFC();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v9 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v9, qword_1EE0F2380);

  v10 = sub_1D9F2AE6C();
  v11 = sub_1D9F2B42C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v7;
    v13 = v12;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v13 = 136315650;
    v14 = sub_1D9F2BBBC();
    v16 = sub_1D9E71CA4(v14, v15, aBlock);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1D9E71CA4(0x66286C65636E6163, 0xEC000000293A726FLL, aBlock);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_1D9E71CA4(countAndFlagsBits, object, aBlock);
    _os_log_impl(&dword_1D9E39000, v10, v11, "%s.%s reason = %s", v13, 0x20u);
    v17 = v24;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v17, -1, -1);
    v18 = v13;
    v7 = v25;
    MEMORY[0x1DA744270](v18, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = countAndFlagsBits;
  v19[4] = object;
  aBlock[4] = sub_1D9EC6200;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_18;
  v20 = _Block_copy(aBlock);

  v21 = v26;
  sub_1D9F2AFAC();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v22 = v29;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v21, v22, v20);
  _Block_release(v20);
  (*(v27 + 8))(v22, v5);
  (*(v28 + 8))(v21, v7);
}

void sub_1D9EBE028(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v8 = 1;

  sub_1D9EBB3A0(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;

  sub_1D9E84B4C(v3, v4, v5);
}

void sub_1D9EBE084(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a3;
  v6 = *v4;
  v7 = type metadata accessor for ServiceSession.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = sub_1D9F2B02C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + *(v6 + 120));
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v16 = v15;
  v17 = sub_1D9F2B04C();
  v19 = *(v12 + 8);
  v18 = (v12 + 8);
  v19(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    a1 = sub_1D9F0C798(0, a1[2] + 1, 1, a1);
    *&v10[v4] = a1;
    goto LABEL_8;
  }

  if (a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = v16;
  }

  v21 = v36;
  v22 = v37;
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v21;
  v23[4] = v22;
  v24 = *(*v4 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v10, v4 + v24, v7);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v25 = *v10;
    v26 = *(v10 + 1);
    v27 = v10[16];
    v38[0] = v25;
    v38[1] = v26;
    v39 = v27;
    v28 = a1;

    v29 = v20;
    sub_1D9EC3DFC(v38, v29, v21, v22);

    sub_1D9E84B4C(v25, v26, v27);
    return;
  }

  v30 = *(v8 + 8);
  v31 = a1;

  v18 = v20;
  v30(v10, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D9EC6CCC;
  *(v8 + 24) = v23;
  v10 = *(*v4 + 144);
  swift_beginAccess();
  a1 = *&v10[v4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v10[v4] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v34 = a1[2];
  v33 = a1[3];
  if (v34 >= v33 >> 1)
  {
    a1 = sub_1D9F0C798((v33 > 1), v34 + 1, 1, a1);
  }

  a1[2] = v34 + 1;
  v35 = &a1[2 * v34];
  v35[4] = sub_1D9EB097C;
  v35[5] = v8;
  *&v10[v4] = a1;
  swift_endAccess();
}

uint64_t ServiceSession.sendMessage<A>(_:replyQueue:replyHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v56 = a2;
  v57 = a4;
  v11 = *v6;
  v54 = v11;
  v55 = a3;
  v12 = sub_1D9F2AF8C();
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1D9F2AFFC();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v7 + *(v11 + 152)) == 1)
  {
    if (qword_1EE0F2378 != -1)
    {
      swift_once();
    }

    v21 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v21, qword_1EE0F2380);

    v22 = sub_1D9F2AE6C();
    v23 = sub_1D9F2B42C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v53 = a1;
      v25 = v24;
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v25 = 136315650;
      v26 = sub_1D9F2BBBC();
      v51 = v22;
      v28 = sub_1D9E71CA4(v26, v27, aBlock);
      v50 = v23;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1D9E71CA4(0xD000000000000027, 0x80000001D9F49550, aBlock);
      *(v25 + 22) = 2080;
      v30 = (*(a6 + 40))(a5, a6);
      v32 = sub_1D9E71CA4(v30, v31, aBlock);

      *(v25 + 24) = v32;
      v33 = v51;
      _os_log_impl(&dword_1D9E39000, v51, v50, "%s.%s messageType = %s", v25, 0x20u);
      v34 = v52;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v34, -1, -1);
      v35 = v25;
      a1 = v53;
      MEMORY[0x1DA744270](v35, -1, -1);
    }

    else
    {
    }
  }

  v53 = *(v7 + *(*v7 + 120));
  (*(v18 + 16))(&v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, a5);
  v36 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v37 = (v19 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v54;
  *(v38 + 2) = *(v54 + 80);
  *(v38 + 3) = a5;
  *(v38 + 4) = *(v39 + 88);
  *(v38 + 5) = a6;
  *(v38 + 6) = v7;
  (*(v18 + 32))(&v38[v36], v20, a5);
  v40 = v55;
  v41 = v56;
  *&v38[v37] = v56;
  v42 = &v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8];
  v43 = v57;
  *v42 = v40;
  v42[1] = v43;
  aBlock[4] = sub_1D9EC620C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_24;
  v44 = _Block_copy(aBlock);
  v45 = v41;

  sub_1D9F2AFAC();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v46 = v60;
  v47 = v62;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v17, v46, v44);
  _Block_release(v44);
  (*(v61 + 8))(v46, v47);
  (*(v58 + 8))(v17, v59);
}

uint64_t sub_1D9EBEA8C(uint64_t a1, NSObject *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v226 = a4;
  v227 = a3;
  v209 = a2;
  v229 = a1;
  v207 = *v7;
  v10 = *(v207 + 88);
  v11 = *(v207 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v202 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v203 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v208 = &v197 - v14;
  v15 = type metadata accessor for ServiceEnvelope(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v216 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v217 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v218 = &v197 - v18;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v221 = sub_1D9F2BB5C();
  v220 = *(v221 - 8);
  v19 = MEMORY[0x1EEE9AC00](v221);
  v219 = (&v197 - v20);
  v228 = *(a5 - 8);
  v21 = *(v228 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v212 = &v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  AssociatedConformanceWitness = &v197 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v201 = &v197 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v205 = &v197 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v213 = &v197 - v29;
  v210 = v11;
  v211 = v10;
  v31 = type metadata accessor for ServiceSession.State(0, v11, v10, v30);
  v223 = *(v31 - 8);
  v224 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v225 = (&v197 - v32);
  v33 = sub_1D9F2B02C();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v197 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(a6 + 40);
  v230 = a5;
  v215 = a6;
  v38 = v37(a5, a6);
  v40 = v39;
  v206 = *(v7 + *(*v7 + 152));
  v222 = v17;
  if (v206 != 1)
  {

    goto LABEL_7;
  }

  v41 = v38;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v42 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v42, qword_1EE0F2380);

    v43 = sub_1D9F2AE6C();
    v44 = sub_1D9F2B42C();

    v200 = v44;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v198 = v41;
      v46 = v45;
      v199 = swift_slowAlloc();
      v232 = v199;
      *v46 = 136315650;
      v47 = sub_1D9F2BBBC();
      v49 = sub_1D9E71CA4(v47, v48, &v232);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_1D9E71CA4(0xD00000000000002DLL, 0x80000001D9F49650, &v232);
      *(v46 + 22) = 2080;
      v50 = sub_1D9E71CA4(v198, v40, &v232);

      *(v46 + 24) = v50;
      v17 = v222;
      v51 = v43;
      _os_log_impl(&dword_1D9E39000, v43, v200, "%s.%s messageType = %s", v46, 0x20u);
      v52 = v199;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v52, -1, -1);
      MEMORY[0x1DA744270](v46, -1, -1);
    }

    else
    {
    }

LABEL_7:
    v41 = v225;
    v53 = *(v7 + *(*v7 + 120));
    *v36 = v53;
    (*(v34 + 104))(v36, *MEMORY[0x1E69E8020], v33);
    v40 = v53;
    LOBYTE(v53) = sub_1D9F2B04C();
    v54 = *(v34 + 8);
    v34 += 8;
    v54(v36, v33);
    if (v53)
    {
      break;
    }

    __break(1u);
LABEL_44:
    swift_once();
  }

  v55 = *(*v7 + 128);
  swift_beginAccess();
  (*(v223 + 16))(v41, v7 + v55, v224);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v225 = v40;
      (*(v217 + 32))(v218, v41, v17);
      v57 = v229;
      v58 = v230;
      v59 = v215;
      sub_1D9E3F498(v230, v215, v216);
      v223 = 0;
      Current = CFAbsoluteTimeGetCurrent();
      v113 = v59;
      v114 = swift_allocObject();
      swift_weakInit();
      v115 = v228;
      v116 = v205;
      v117 = v226;
      v118 = *(v228 + 16);
      AssociatedConformanceWitness = (v228 + 16);
      v213 = v118;
      (v118)(v205, v57, v58);
      v119 = (*(v115 + 80) + 80) & ~*(v115 + 80);
      v120 = (v21 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
      v121 = swift_allocObject();
      v122 = v230;
      *(v121 + 2) = v210;
      *(v121 + 3) = v122;
      *(v121 + 4) = v211;
      *(v121 + 5) = v113;
      v123 = v225;
      *(v121 + 6) = v225;
      *(v121 + 7) = v114;
      *(v121 + 8) = v227;
      *(v121 + 9) = v117;
      v124 = v116;
      v125 = v230;
      (*(v115 + 32))(&v121[v119], v124, v230);
      *&v121[v120] = Current;
      v224 = v121;
      *&v121[(v120 + 15) & 0xFFFFFFFFFFFFFFF8] = v207;
      if (v206)
      {
        v126 = qword_1EE0F2378;
        v127 = v123;

        if (v126 != -1)
        {
          swift_once();
        }

        v128 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v128, qword_1EE0F2380);
        v129 = v201;
        (v213)(v201, v229, v125);

        v130 = sub_1D9F2AE6C();
        v131 = sub_1D9F2B42C();
        if (os_log_type_enabled(v130, v131))
        {
          v132 = v129;
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v231 = v134;
          *v133 = 136315394;
          v135 = ServiceSession.description.getter();
          v137 = v136;

          v138 = sub_1D9E71CA4(v135, v137, &v231);

          *(v133 + 4) = v138;
          *(v133 + 12) = 2080;
          swift_getDynamicType();
          v139 = sub_1D9F2BBBC();
          v141 = v140;
          (*(v228 + 8))(v132, v125);
          v142 = sub_1D9E71CA4(v139, v141, &v231);

          *(v133 + 14) = v142;
          _os_log_impl(&dword_1D9E39000, v130, v131, "%s sending message %s...", v133, 0x16u);
          swift_arrayDestroy();
          v123 = v225;
          MEMORY[0x1DA744270](v134, -1, -1);
          MEMORY[0x1DA744270](v133, -1, -1);
        }

        else
        {

          (*(v228 + 8))(v129, v125);
        }
      }

      else
      {
        v143 = v123;
      }

      v144 = v209;
      v145 = v224;
      v146 = v211;
      v225 = v209;
      if (!v209)
      {
        v225 = v123;
      }

      v147 = swift_allocObject();
      v147[2] = v210;
      v147[3] = v125;
      v148 = v215;
      v147[4] = v146;
      v147[5] = v148;
      v147[6] = sub_1D9EC6B44;
      v147[7] = v145;
      v149 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v215 = v149;
      v150 = v222;
      v151 = swift_getAssociatedConformanceWitness();
      v152 = *(v151 + 48);
      v153 = v144;

      v154 = v216;
      v155 = v218;
      v156 = v223;
      v157 = v208;
      v152(v216, v225, sub_1D9EC6BE8, v147, v208, v150, v151);
      if (v156)
      {

        v158 = v202;
        v159 = *(v202 + 32);
        v160 = v203;
        v161 = AssociatedTypeWitness;
        v159(v203, v157, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v162 = sub_1D9F2BA0C();
        if (v162)
        {
          v163 = v162;

          (*(v158 + 8))(v160, v161);
        }

        else
        {
          v163 = swift_allocError();
          v159(v164, v160, v161);
        }

        v165 = v229;
        v166 = v230;
        v167 = v218;
        v168 = v212;
        sub_1D9E72374(v216);
        v169 = v228;
        if (qword_1EE0F2378 != -1)
        {
          swift_once();
        }

        v170 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v170, qword_1EE0F2380);
        (*(v169 + 16))(v168, v165, v166);

        v171 = v163;
        v172 = sub_1D9F2AE6C();
        v173 = sub_1D9F2B43C();

        if (os_log_type_enabled(v172, v173))
        {
          v174 = v163;
          v175 = v168;
          v176 = v169;
          v177 = swift_slowAlloc();
          v178 = v166;
          v230 = swift_slowAlloc();
          v231 = v230;
          *v177 = 136315650;
          v179 = ServiceSession.description.getter();
          v181 = v180;

          v182 = sub_1D9E71CA4(v179, v181, &v231);

          *(v177 + 4) = v182;
          *(v177 + 12) = 2080;
          swift_getDynamicType();
          v183 = sub_1D9F2BBBC();
          v185 = v184;
          v186 = v175;
          v163 = v174;
          v187 = v178;
          v167 = v218;
          (*(v176 + 8))(v186, v187);
          v188 = sub_1D9E71CA4(v183, v185, &v231);

          *(v177 + 14) = v188;
          *(v177 + 22) = 2080;
          swift_getErrorValue();
          v189 = sub_1D9F2BAAC();
          v191 = sub_1D9E71CA4(v189, v190, &v231);

          *(v177 + 24) = v191;
          _os_log_impl(&dword_1D9E39000, v172, v173, "%s failed to send message %s due to error %s.", v177, 0x20u);
          v192 = v230;
          swift_arrayDestroy();
          MEMORY[0x1DA744270](v192, -1, -1);
          MEMORY[0x1DA744270](v177, -1, -1);
        }

        else
        {

          (*(v169 + 8))(v168, v166);
        }

        v193 = v221;
        v194 = v220;
        v195 = v219;
        *v219 = v163;
        swift_storeEnumTagMultiPayload();
        v196 = v163;
        v227(v195);

        (*(v194 + 8))(v195, v193);
        return (*(v217 + 8))(v167, v222);
      }

      else
      {

        sub_1D9E72374(v154);
        return (*(v217 + 8))(v155, v150);
      }
    }

    else
    {
      isa = v41->isa;
      v78 = v41[1].isa;
      v79 = v41[2].isa;
      v80 = v230;
      if (qword_1EE0F2378 != -1)
      {
        swift_once();
      }

      v81 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v81, qword_1EE0F2380);
      v82 = v228;
      v83 = AssociatedConformanceWitness;
      (*(v228 + 16))(AssociatedConformanceWitness, v229, v80);

      sub_1D9E84B2C(isa, v78, v79);
      v84 = sub_1D9F2AE6C();
      v85 = sub_1D9F2B43C();
      sub_1D9E84B4C(isa, v78, v79);
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        v231 = v229;
        *v86 = 136315650;
        v225 = v84;
        v87 = ServiceSession.description.getter();
        LODWORD(v224) = v85;
        v88 = v80;
        v90 = v89;

        v91 = sub_1D9E71CA4(v87, v90, &v231);

        *(v86 + 4) = v91;
        *(v86 + 12) = 2080;
        swift_getDynamicType();
        v92 = sub_1D9F2BBBC();
        v94 = v93;
        (*(v82 + 8))(v83, v88);
        v95 = sub_1D9E71CA4(v92, v94, &v231);

        *(v86 + 14) = v95;
        *(v86 + 22) = 2080;
        sub_1D9E84B2C(isa, v78, v79);
        v96 = sub_1D9EB922C(isa, v78, v79);
        v98 = sub_1D9E71CA4(v96, v97, &v231);

        *(v86 + 24) = v98;
        v99 = v225;
        _os_log_impl(&dword_1D9E39000, v225, v224, "%s failed to send message %s because service session is cancelled for reason %s.", v86, 0x20u);
        v100 = v229;
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v100, -1, -1);
        MEMORY[0x1DA744270](v86, -1, -1);
      }

      else
      {

        (*(v82 + 8))(v83, v80);
      }

      sub_1D9E3F7D8();
      v108 = swift_allocError();
      *v109 = isa;
      *(v109 + 8) = v78;
      *(v109 + 16) = v79;
      v110 = v219;
      *v219 = v108;
      v111 = v221;
      swift_storeEnumTagMultiPayload();
      sub_1D9E84B2C(isa, v78, v79);
      v227(v110);
      sub_1D9E84B4C(isa, v78, v79);
      return (*(v220 + 8))(v110, v111);
    }
  }

  else
  {
    v60 = v229;
    if (qword_1EE0F2378 != -1)
    {
      swift_once();
    }

    v61 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v61, qword_1EE0F2380);
    v62 = v228;
    v63 = v213;
    v64 = v230;
    (*(v228 + 16))(v213, v60, v230);

    v65 = sub_1D9F2AE6C();
    v66 = sub_1D9F2B43C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v231 = v229;
      *v67 = 136315394;
      v68 = ServiceSession.description.getter();
      v70 = v69;

      v71 = sub_1D9E71CA4(v68, v70, &v231);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      swift_getDynamicType();
      v72 = sub_1D9F2BBBC();
      v74 = v73;
      (*(v62 + 8))(v63, v64);
      v75 = sub_1D9E71CA4(v72, v74, &v231);

      *(v67 + 14) = v75;
      _os_log_impl(&dword_1D9E39000, v65, v66, "%s failed to send message %s because service session is not activated.", v67, 0x16u);
      v76 = v229;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v76, -1, -1);
      MEMORY[0x1DA744270](v67, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v63, v64);
    }

    v101 = v221;
    v102 = v220;
    v103 = v219;
    sub_1D9E3F7D8();
    v104 = swift_allocError();
    *v105 = 0;
    *(v105 + 8) = 0;
    *(v105 + 16) = 0x80;
    *v103 = v104;
    swift_storeEnumTagMultiPayload();
    v227(v103);
    (*(v102 + 8))(v103, v101);
    v106 = sub_1D9F2B59C();
    return (*(*(v106 - 8) + 8))(v41, v106);
  }
}

uint64_t sub_1D9EC01B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v9 = sub_1D9F2BB5C();
  v10 = sub_1D9F2B59C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_1D9EC0340(a3, a4, a5, (&v15 - v12));
  (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
  return (*(v11 + 40))(a1, v13, v10);
}

uint64_t sub_1D9EC0340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v221 = a1;
  v218 = a4;
  v8 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v199 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v198 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v201 = &v193 - v12;
  v13 = *(v8 + 88);
  v14 = *(v8 + 80);
  v204 = swift_getAssociatedTypeWitness();
  v202 = *(v204 - 8);
  v15 = MEMORY[0x1EEE9AC00](v204);
  v203 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v207 = &v193 - v17;
  v18 = type metadata accessor for ServiceEnvelope(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v209 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v214 = &v193 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v217 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v216 = &v193 - v24;
  v223 = *(a2 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v193 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v212 = &v193 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v197 = &v193 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v200 = &v193 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v211 = &v193 - v34;
  v205 = v14;
  v206 = v13;
  v36 = type metadata accessor for ServiceSession.State(0, v14, v13, v35);
  isa = v36[-1].isa;
  v220 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v224 = (&v193 - v37);
  v38 = sub_1D9F2B02C();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = (&v193 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = *(a3 + 40);
  v213 = a3;
  v43 = v42(a2, a3);
  v45 = v44;
  v208 = v5[*(*v5 + 152)];
  v222 = AssociatedTypeWitness;
  v210 = v27;
  if (v208 == 1)
  {
    v196 = v43;
    if (qword_1EE0F2378 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  while (1)
  {
    v56 = *&v5[*(*v5 + 120)];
    *v41 = v56;
    (*(v39 + 104))(v41, *MEMORY[0x1E69E8020], v38);
    v57 = v56;
    LOBYTE(v56) = sub_1D9F2B04C();
    v58 = *(v39 + 8);
    v39 += 8;
    v58(v41, v38);
    v45 = v224;
    if (v56)
    {
      break;
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_4:
    v46 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v46, qword_1EE0F2380);

    v47 = sub_1D9F2AE6C();
    v48 = sub_1D9F2B42C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v226 = v195;
      *v49 = 136315650;
      v50 = sub_1D9F2BBBC();
      v194 = v48;
      v52 = sub_1D9E71CA4(v50, v51, &v226);
      v215 = v22;
      v53 = v52;

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_1D9E71CA4(0xD000000000000014, 0x80000001D9F48D60, &v226);
      *(v49 + 22) = 2080;
      v54 = sub_1D9E71CA4(v196, v45, &v226);

      *(v49 + 24) = v54;
      v22 = v215;
      _os_log_impl(&dword_1D9E39000, v47, v194, "%s.%s messageType = %s", v49, 0x20u);
      v55 = v195;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v55, -1, -1);
      MEMORY[0x1DA744270](v49, -1, -1);
    }

    else
    {
    }
  }

  v59 = *(*v5 + 128);
  swift_beginAccess();
  (*(isa + 2))(v45, &v5[v59], v220);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v61 = v223;
    v62 = v221;
    if (EnumCaseMultiPayload == 1)
    {
      v63 = v216;
      v64 = *(v217 + 32);
      v215 = v22;
      v64(v216, v45, v22);
      sub_1D9E3F498(a2, v213, v214);
      v224 = 0;
      Current = CFAbsoluteTimeGetCurrent();
      if (v208)
      {
        if (qword_1EE0F2378 != -1)
        {
          swift_once();
        }

        v113 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v113, qword_1EE0F2380);
        v114 = v200;
        (*(v61 + 16))(v200, v62, a2);

        v115 = a2;
        v116 = sub_1D9F2AE6C();
        v117 = sub_1D9F2B42C();
        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v225 = v119;
          *v118 = 136315394;
          v120 = ServiceSession.description.getter();
          v122 = v121;

          v123 = sub_1D9E71CA4(v120, v122, &v225);

          *(v118 + 4) = v123;
          *(v118 + 12) = 2080;
          swift_getDynamicType();
          v124 = sub_1D9F2BBBC();
          v126 = v125;
          (*(v223 + 8))(v114, v115);
          v127 = sub_1D9E71CA4(v124, v126, &v225);

          *(v118 + 14) = v127;
          _os_log_impl(&dword_1D9E39000, v116, v117, "%s sending message %s...", v118, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA744270](v119, -1, -1);
          MEMORY[0x1DA744270](v118, -1, -1);
        }

        else
        {

          (*(v61 + 8))(v114, v115);
        }

        a2 = v115;
        v63 = v216;
      }

      v193 = a2;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v128 = v215;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v130 = v224;
      v131 = v207;
      (*(AssociatedConformanceWitness + 56))(v214, v207, v128, AssociatedConformanceWitness);
      if (!v130)
      {
        v138 = v193;
        v139 = v222;
        v140 = swift_getAssociatedConformanceWitness();
        v141 = v201;
        sub_1D9E3FDA4(v139, v139, v140, v201);
        v165 = v223;
        if (v208)
        {
          v166 = v199;
          if (qword_1EE0F2378 != -1)
          {
            swift_once();
          }

          v167 = sub_1D9F2AE8C();
          __swift_project_value_buffer(v167, qword_1EE0F2380);
          v168 = v198;
          (*(v166 + 16))(v198, v141, v139);
          v169 = v197;
          (*(v165 + 16))(v197, v221, v138);

          v170 = sub_1D9F2AE6C();
          v171 = v139;
          v172 = sub_1D9F2B41C();
          v224 = v170;
          if (os_log_type_enabled(v170, v172))
          {
            v173 = swift_slowAlloc();
            v174 = v138;
            v221 = swift_slowAlloc();
            v225 = v221;
            *v173 = 136315906;
            v175 = v168;
            v176 = v171;
            v177 = ServiceSession.description.getter();
            v178 = v165;
            v180 = v179;

            v181 = sub_1D9E71CA4(v177, v180, &v225);

            *(v173 + 4) = v181;
            *(v173 + 12) = 2080;
            swift_getDynamicType();
            v182 = sub_1D9F2BBBC();
            v184 = v183;
            (*(v199 + 8))(v175, v176);
            v185 = sub_1D9E71CA4(v182, v184, &v225);

            *(v173 + 14) = v185;
            *(v173 + 22) = 2080;
            swift_getDynamicType();
            v186 = sub_1D9F2BBBC();
            v188 = v187;
            (*(v178 + 8))(v169, v174);
            v189 = sub_1D9E71CA4(v186, v188, &v225);

            *(v173 + 24) = v189;
            *(v173 + 32) = 2048;
            *(v173 + 34) = CFAbsoluteTimeGetCurrent() - Current;
            v190 = v224;
            _os_log_impl(&dword_1D9E39000, v224, v172, "%s received reply %s for message %s, took %f seconds.", v173, 0x2Au);
            v191 = v221;
            swift_arrayDestroy();
            MEMORY[0x1DA744270](v191, -1, -1);
            v192 = v173;
            v166 = v199;
            MEMORY[0x1DA744270](v192, -1, -1);

            sub_1D9E72374(v209);
            sub_1D9E72374(v214);
            (*(v217 + 8))(v216, v215);
            v139 = v176;
          }

          else
          {

            sub_1D9E72374(v209);
            sub_1D9E72374(v214);
            (*(v217 + 8))(v63, v215);
            (*(v165 + 8))(v169, v138);
            (*(v166 + 8))(v168, v171);
            v139 = v171;
          }
        }

        else
        {
          sub_1D9E72374(v209);
          sub_1D9E72374(v214);
          (*(v217 + 8))(v63, v215);
          v166 = v199;
        }

        (*(v166 + 32))(v218, v201, v139);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
        sub_1D9F2BB5C();
        return swift_storeEnumTagMultiPayload();
      }

      v132 = v202;
      v133 = *(v202 + 32);
      v134 = v203;
      v135 = v204;
      v133(v203, v131, v204);
      swift_getAssociatedConformanceWitness();
      v136 = sub_1D9F2BA0C();
      if (v136)
      {
        v137 = v136;
        (*(v132 + 8))(v134, v135);
      }

      else
      {
        v137 = swift_allocError();
        v133(v142, v134, v135);
      }

      v143 = v210;
      sub_1D9E72374(v214);
      v144 = v223;
      v145 = v193;
      v146 = v137;
      v147 = v216;
      if (qword_1EE0F2378 != -1)
      {
        swift_once();
      }

      v148 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v148, qword_1EE0F2380);
      (*(v144 + 16))(v143, v62, v145);

      v149 = v146;
      v150 = sub_1D9F2AE6C();
      v151 = sub_1D9F2B43C();

      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v225 = v153;
        *v152 = 136315650;
        v154 = ServiceSession.description.getter();
        v224 = v146;
        v156 = v155;

        v157 = sub_1D9E71CA4(v154, v156, &v225);

        *(v152 + 4) = v157;
        *(v152 + 12) = 2080;
        swift_getDynamicType();
        v158 = sub_1D9F2BBBC();
        v160 = v159;
        (*(v144 + 8))(v143, v145);
        v161 = sub_1D9E71CA4(v158, v160, &v225);

        *(v152 + 14) = v161;
        *(v152 + 22) = 2080;
        v146 = v224;
        swift_getErrorValue();
        v162 = sub_1D9F2BAAC();
        v164 = sub_1D9E71CA4(v162, v163, &v225);

        *(v152 + 24) = v164;
        _os_log_impl(&dword_1D9E39000, v150, v151, "%s failed to send message %s due to error %s.", v152, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v153, -1, -1);
        MEMORY[0x1DA744270](v152, -1, -1);

        (*(v217 + 8))(v216, v215);
      }

      else
      {

        (*(v217 + 8))(v147, v215);
        (*(v144 + 8))(v143, v145);
      }

      *v218 = v146;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
    }

    else
    {
      v83 = v45->isa;
      v84 = v45[1].isa;
      v85 = v45[2].isa;
      if (qword_1EE0F2378 != -1)
      {
        swift_once();
      }

      v86 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v86, qword_1EE0F2380);
      v87 = v212;
      (*(v61 + 16))(v212, v62, a2);

      sub_1D9E84B2C(v83, v84, v85);
      v88 = sub_1D9F2AE6C();
      v89 = sub_1D9F2B43C();
      sub_1D9E84B4C(v83, v84, v85);
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        LODWORD(v221) = v89;
        v91 = v61;
        v92 = v90;
        v224 = swift_slowAlloc();
        v225 = v224;
        *v92 = 136315650;
        v220 = v88;
        v93 = ServiceSession.description.getter();
        v95 = v94;

        v96 = sub_1D9E71CA4(v93, v95, &v225);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2080;
        swift_getDynamicType();
        v97 = sub_1D9F2BBBC();
        v99 = v98;
        (*(v91 + 8))(v87, a2);
        v100 = sub_1D9E71CA4(v97, v99, &v225);

        *(v92 + 14) = v100;
        *(v92 + 22) = 2080;
        sub_1D9E84B2C(v83, v84, v85);
        v101 = sub_1D9EB922C(v83, v84, v85);
        v103 = sub_1D9E71CA4(v101, v102, &v225);

        *(v92 + 24) = v103;
        v104 = v220;
        _os_log_impl(&dword_1D9E39000, v220, v221, "%s failed to send message %s because service session is cancelled for reason %s.", v92, 0x20u);
        v105 = v224;
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v105, -1, -1);
        MEMORY[0x1DA744270](v92, -1, -1);
      }

      else
      {

        (*(v61 + 8))(v87, a2);
      }

      sub_1D9E3F7D8();
      v110 = swift_allocError();
      *v111 = v83;
      *(v111 + 8) = v84;
      *(v111 + 16) = v85;
      *v218 = v110;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
    }

    sub_1D9F2BB5C();
    return swift_storeEnumTagMultiPayload();
  }

  v65 = v223;
  v66 = v221;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v67 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v67, qword_1EE0F2380);
  v68 = v211;
  (*(v65 + 16))(v211, v66, a2);

  v69 = sub_1D9F2AE6C();
  v70 = a2;
  v71 = sub_1D9F2B43C();
  if (os_log_type_enabled(v69, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v225 = v73;
    *v72 = 136315394;
    v74 = ServiceSession.description.getter();
    v215 = v22;
    v76 = v75;

    v77 = sub_1D9E71CA4(v74, v76, &v225);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    swift_getDynamicType();
    v78 = sub_1D9F2BBBC();
    v80 = v79;
    (*(v65 + 8))(v68, v70);
    v81 = sub_1D9E71CA4(v78, v80, &v225);

    *(v72 + 14) = v81;
    _os_log_impl(&dword_1D9E39000, v69, v71, "%s failed to send message %s because service session is not activated.", v72, 0x16u);
    swift_arrayDestroy();
    v82 = v73;
    v45 = v224;
    MEMORY[0x1DA744270](v82, -1, -1);
    MEMORY[0x1DA744270](v72, -1, -1);
  }

  else
  {

    (*(v65 + 8))(v68, v70);
  }

  sub_1D9E3F7D8();
  v106 = swift_allocError();
  *v107 = 0;
  *(v107 + 8) = 0;
  *(v107 + 16) = 0x80;
  *v218 = v106;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  sub_1D9F2BB5C();
  swift_storeEnumTagMultiPayload();
  v108 = sub_1D9F2B59C();
  return (*(*(v108 - 8) + 8))(v45, v108);
}