uint64_t sub_1BF3A43F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BF3A443C()
{
  result = qword_1EDC9F9B8;
  if (!qword_1EDC9F9B8)
  {
    sub_1BF3901C0(255, &qword_1EDC9F9C0, 0x1E69943A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F9B8);
  }

  return result;
}

uint64_t sub_1BF3A44B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v47 = a3;
  v4 = sub_1BF4E81E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_1BF4E7F64();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider + 24);
  v17 = *(a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider), v16);
  v18 = *(v17 + 8);
  v44 = v15;
  v18(v16, v17);
  v19 = *MEMORY[0x1E69857A0];
  v41 = *(v5 + 104);
  v41(v12, v19, v4);
  v20 = *(a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock);
  v21 = *(v20 + 16);

  os_unfair_lock_lock(v21);
  v40 = a2;
  v22 = *(a2 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor);
  v23 = *(v20 + 16);
  v24 = v22;
  os_unfair_lock_unlock(v23);

  if (v22)
  {
    v25 = [v24 preferredBackgroundStyle];

    if (v25 == 1)
    {
      v26 = MEMORY[0x1E6985790];
    }

    else
    {
      if (v25 != 2)
      {
LABEL_7:
        v27 = v42;
        v41(v42, v19, v4);
        (*(v5 + 40))(v12, v27, v4);
        goto LABEL_8;
      }

      v26 = MEMORY[0x1E6985798];
    }

    v19 = *v26;
    goto LABEL_7;
  }

LABEL_8:
  (*(v5 + 16))(v7, v12, v4);
  v28 = v44;
  sub_1BF4E7E54();
  sub_1BF4E7E44();
  sub_1BF3A0690();
  v29 = sub_1BF4E88C4();
  v30 = *(v5 + 8);
  v30(v7, v4);
  if ((v29 & 1) == 0)
  {
    if (qword_1EDC9EFF8 != -1)
    {
      swift_once();
    }

    v31 = sub_1BF4E7B54();
    __swift_project_value_buffer(v31, qword_1EDCA6AA8);
    v32 = v40;

    v33 = sub_1BF4E7B34();
    v34 = sub_1BF4E8E84();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v12;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_1BF38D65C(*(v32 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__logIdentifier), *(v32 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__logIdentifier + 8), &v48);
      *(v36 + 12) = 2050;
      swift_beginAccess();
      *(v36 + 14) = sub_1BF4E81D4();
      _os_log_impl(&dword_1BF389000, v33, v34, "[%{public}s] Setting _preferredSystemWidgetBackgroundStyle to: %{public}ld", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1BFB5A5D0](v37, -1, -1);
      v38 = v36;
      v12 = v35;
      MEMORY[0x1BFB5A5D0](v38, -1, -1);
    }
  }

  (*(v45 + 32))(v47, v28, v46);
  return (v30)(v12, v4);
}

uint64_t type metadata accessor for DescriptorMixedEnvironmentProviderAdapter(uint64_t a1)
{
  result = qword_1EDC9DA58;
  if (!qword_1EDC9DA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF3A49B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_1BF3A4A84(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v6 = sub_1BF4E7F64();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF3A4B24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&unk_1EDC9FD80, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF3A4BB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF3A4C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D10, &qword_1BF4EDA30);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = sub_1BF4E7684();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider), *(v2 + OBJC_IVAR____TtC9ChronoKit21DataProtectionMonitor_keybagStateProvider + 24));
  sub_1BF4E7704();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v12 = sub_1BF4E7724();
  v13 = *(v4 + 48);
  (*(v8 + 16))(v6, v10, v7);
  v14 = sub_1BF4E7674();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v6[v13], a1, v14);
  v16 = (*(v8 + 88))(v6, v7);
  if (v16 == *MEMORY[0x1E6994090])
  {
    (*(v8 + 8))(v10, v7);
    v17 = *MEMORY[0x1E69859A0];
    v18 = sub_1BF4E8424();
    v19 = *(*(v18 - 8) + 104);
    v20 = v30;
    v21 = v17;
LABEL_3:
    v19(v20, v21, v18);
    return (*(v15 + 8))(&v6[v13], v14);
  }

  v23 = v30;
  if (v16 == *MEMORY[0x1E69940A0])
  {
    goto LABEL_5;
  }

  if (v16 == *MEMORY[0x1E6994080])
  {
    (*(v8 + 8))(v10, v7);
    v18 = sub_1BF4E8424();
    v19 = *(*(v18 - 8) + 104);
    v27 = MEMORY[0x1E6985998];
    if ((v12 & 1) == 0)
    {
      v27 = MEMORY[0x1E69859A0];
    }

    v21 = *v27;
    v20 = v23;
    goto LABEL_3;
  }

  if (v16 == *MEMORY[0x1E6994088])
  {
    (*(v8 + 8))(v10, v7);
    (*(v15 + 8))(&v6[v13], v14);
LABEL_15:
    v24 = MEMORY[0x1E6985990];
    goto LABEL_7;
  }

  if (v16 != *MEMORY[0x1E6994098] && v16 != *MEMORY[0x1E6994078] && v16 != *MEMORY[0x1E6994070])
  {
    if (v16 == *MEMORY[0x1E6994068])
    {
      v28 = (*(v15 + 88))(&v6[v13], v14);
      if (v28 == *MEMORY[0x1E6994040])
      {
        (*(v8 + 8))(v10, v7);
        goto LABEL_15;
      }

      if (v28 == *MEMORY[0x1E6994048])
      {
        (*(v8 + 8))(v10, v7);
        goto LABEL_6;
      }

LABEL_26:
      result = sub_1BF4E9724();
      __break(1u);
      return result;
    }

    if (v16 != *MEMORY[0x1E6994060])
    {
      goto LABEL_26;
    }
  }

LABEL_5:
  (*(v8 + 8))(v10, v7);
  (*(v15 + 8))(&v6[v13], v14);
LABEL_6:
  v24 = MEMORY[0x1E6985988];
LABEL_7:
  v25 = *v24;
  v26 = sub_1BF4E8424();
  return (*(*(v26 - 8) + 104))(v23, v25, v26);
}

void sub_1BF3A5110(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v12 + 16));
  sub_1BF38C94C(a1, v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BF38C9B4(v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v13 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
    swift_beginAccess();
    sub_1BF38C94C(v2 + v13, a2, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1BF3AEB90(&v15);
    (*(v9 + 8))(v11, v8);
    if (*(&v16 + 1) == 1)
    {
      sub_1BF38C9B4(&v15, &qword_1EBDD9B30, &qword_1BF4F5E20);
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    else
    {
      v14 = v16;
      *a2 = v15;
      *(a2 + 16) = v14;
      *(a2 + 32) = v17;
      sub_1BF38C9B4(&v18, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    }
  }

  os_unfair_lock_unlock(*(v12 + 16));
}

uint64_t sub_1BF3A53D4(id *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BB8, &unk_1BF4ED400);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = sub_1BF4E7194();
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v44 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v49 = a1;
  v50 = v1;
  sub_1BF3F4FF4(a1, v12);
  v21 = *(v14 + 56);
  v22 = 1;
  v21(v12, 0, 1, v13);
  (*(v14 + 32))(v20, v12, v13);
  LOBYTE(v12) = URL.hasRequiresReloadExtendedAttribute.getter();
  (*(v14 + 8))(v20, v13);
  if ((v12 & 1) == 0)
  {
    sub_1BF3F4FF4(v49, v9);
    v21(v9, 0, 1, v13);
    v23 = v48;
    (*(v14 + 32))(v48, v9, v13);
    sub_1BF4E7074();
    v24 = v47;
    sub_1BF4E76F4();
    sub_1BF4E7074();
    v27 = *(v14 + 8);
    v25 = v14 + 8;
    v26 = v27;
    v27(v24, v13);
    v28 = sub_1BF4E8A64();

    if ((v28 & 1) != 0 || (v29 = [objc_allocWithZone(MEMORY[0x1E698E638]) init]) == 0)
    {
      v26(v23, v13);
      v22 = 0;
    }

    else
    {
      v49 = v13;
      v50 = v25;
      v30 = v29;
      v31 = [v29 stringRepresentation];

      v32 = sub_1BF4E8914();
      v34 = v33;

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BC0, qword_1BF4ED410);
      sub_1BF38C8B4(&qword_1EDC9F088, &qword_1EBDD8BC0, qword_1BF4ED410, MEMORY[0x1E6993F88]);
      v36 = v46;
      sub_1BF4E7034();
      v38 = v45;
      v39 = *(v35 - 8);
      (*(v39 + 56))(v36, 0, 1, v35);
      sub_1BF38C94C(v36, v38, &qword_1EBDD8BB8, &unk_1BF4ED400);
      v40 = (*(v39 + 48))(v38, 1, v35);
      if (v40 == 1)
      {
        sub_1BF38C9B4(v38, &qword_1EBDD8BB8, &unk_1BF4ED400);

        v22 = 1;
      }

      else
      {
        sub_1BF4E7614();
        v42 = v51;
        v41 = v52;
        (*(v39 + 8))(v38, v35);
        if (v32 == v42 && v34 == v41)
        {

          v22 = 0;
        }

        else
        {
          v43 = sub_1BF4E9734();

          v22 = v43 ^ 1;
        }
      }

      sub_1BF38C9B4(v36, &qword_1EBDD8BB8, &unk_1BF4ED400);
      v26(v48, v49);
    }
  }

  return v22 & 1;
}

uint64_t sub_1BF3A5A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF3A5AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF3A5B24(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF3A672C(v1, a1);
  os_unfair_lock_unlock(*(v3 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();
  return sub_1BF38C9B4(a1, &qword_1EBDD9AF8, &qword_1BF4F5E00);
}

uint64_t sub_1BF3A5C18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BF3A5C80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF3A5C18(a1, v1 + v3, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  swift_endAccess();
  sub_1BF38C9B4(a1, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  sub_1BF38C94C(v1 + v3, v7, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  v4 = v8;
  result = sub_1BF38C9B4(v7, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  if (v4)
  {
    v6 = (v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    *v6 = 0;
    v6[1] = 0;
  }

  return result;
}

double sub_1BF3A5D68(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 200));

  os_unfair_lock_lock(v2 + 4);
  sub_1BF3A5E00();
  os_unfair_lock_unlock(v2 + 4);

  return result;
}

void sub_1BF3A5E28()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 216)) = *(v0 + 24);
}

uint64_t sub_1BF3A5E78(uint64_t a1, void *a2, char a3)
{
  v7 = sub_1BF4E7FF4();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E8064();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v26 - v13);
  v15 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  if (a3)
  {
    v16 = a2;
    v17 = 2;
    v18 = a2;
  }

  else
  {
    v18 = 0;
    v17 = -1;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  *(v19 + 32) = v17;
  v20 = *(v3 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v20 + 16));
  sub_1BF3A73D4(v3, a1, (v19 + 16), v14, a2, a3 & 1);
  os_unfair_lock_unlock(*(v20 + 16));
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v19;
  *(v21 + 32) = v3;
  *(v21 + 40) = a2;
  *(v21 + 48) = a3 & 1;
  aBlock[4] = sub_1BF3B78A4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_7;
  v22 = _Block_copy(aBlock);
  sub_1BF3A66F0(a2, a3 & 1);

  sub_1BF4E8014();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
  v23 = v27;
  v24 = v31;
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v11, v23, v22);
  _Block_release(v22);
  (*(v30 + 8))(v23, v24);
  (*(v28 + 8))(v11, v29);

  return sub_1BF38C9B4(v14, &qword_1EBDD95C8, &qword_1BF4F1AB0);
}

uint64_t sub_1BF3A62D0()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1BF45E734(*(v0 + 16), *(v0 + 24), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1BF3A6314()
{

  sub_1BF3B7D9C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

double sub_1BF3A6368(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BF4E7FF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF4E8064();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = *(Strong + qword_1EDC9AFD8);
    v17 = Strong;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a4;
    *(v18 + 32) = a1;
    v23 = v12;
    v19 = a2 & 1;
    *(v18 + 40) = a2 & 1;
    aBlock[4] = sub_1BF3A66FC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_82;
    v20 = _Block_copy(aBlock);

    sub_1BF3A66F0(a1, v19);
    sub_1BF4E8014();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    v22 = v11;
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v14, v10, v20);
    _Block_release(v20);
    (*(v8 + 8))(v10, v7);
    (*(v23 + 8))(v14, v22);
  }

  return result;
}

uint64_t sub_1BF3A66A4()
{

  sub_1BF3B7D9C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

double sub_1BF3A66F0(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1BF3A672C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BF4E7334();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9AE0, &qword_1BF4F5DF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  if (*(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_entrySupportsRendering) == 1)
  {
    v30 = v2;
    v12 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
    swift_beginAccess();
    sub_1BF38C94C(a1 + v12, &v27, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    v24 = *(&v28 + 1);
    sub_1BF38C9B4(&v27, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    os_unfair_lock_assert_owner(*(*(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock) + 16));
    v13 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher;
    if (*(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher) == 1)
    {
      sub_1BF38C94C(a2, &v27, &qword_1EBDD9AF8, &qword_1BF4F5E00);
      sub_1BF3A5C80(&v27);
      v14 = sub_1BF4E8594();
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      v15 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_cachedViewableEntry;
      swift_beginAccess();
      sub_1BF3A3A54(v11, a1 + v15, &unk_1EBDD9AE0, &qword_1BF4F5DF0);
      swift_endAccess();
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v16 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
      swift_beginAccess();
      sub_1BF38C94C(a1 + v16, v25, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      swift_beginAccess();
      sub_1BF3A5C18(&v27, a1 + v16, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      swift_endAccess();
      sub_1BF3ADC00(v25);
      sub_1BF38C9B4(v25, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      sub_1BF38C9B4(&v27, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    }

    else
    {
      *(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher) = 1;
      sub_1BF38C94C(a2, &v27, &qword_1EBDD9AF8, &qword_1BF4F5E00);
      sub_1BF3A5C80(&v27);
      v17 = sub_1BF4E8594();
      (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
      v18 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_cachedViewableEntry;
      swift_beginAccess();
      sub_1BF3A3A54(v11, a1 + v18, &unk_1EBDD9AE0, &qword_1BF4F5DF0);
      swift_endAccess();
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v19 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
      swift_beginAccess();
      sub_1BF38C94C(a1 + v19, v25, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      swift_beginAccess();
      sub_1BF3A5C18(&v27, a1 + v19, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      swift_endAccess();
      sub_1BF3ADC00(v25);
      sub_1BF38C9B4(v25, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      sub_1BF38C9B4(&v27, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      *(a1 + v13) = 0;
    }

    v20 = *(a2 + 24);
    sub_1BF4E7324();
    v21 = sub_1BF3AE26C(v8, &v27);
    (*(v6 + 8))(v8, v5, v21);
    result = sub_1BF38C9B4(&v27, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (v24)
    {
      if (!v20)
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        sub_1BF4E7C14();
        return sub_1BF38C9B4(&v27, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      }
    }
  }

  else
  {
    sub_1BF38C94C(a2, v25, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(v25, v26);
      sub_1BF4E85E4();
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    else
    {
      sub_1BF38C9B4(v25, &qword_1EBDD9AF8, &qword_1BF4F5E00);
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
    }

    return sub_1BF3A5C80(&v27);
  }

  return result;
}

uint64_t sub_1BF3A6CA4(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FB0, &qword_1BF4EF798);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_1BF4E8314();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = sub_1BF4E82E4();
  ExtensionManaging.extension(for:)(v12, v10, v11);

  v13 = v35;
  if (!v35)
  {
    sub_1BF38C9B4(&v33, &unk_1EBDD91B0, &unk_1BF4F0720);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_10;
  }

  v14 = v36;
  __swift_project_boxed_opaque_existential_1(&v33, v35);
  Extension.bundleStub.getter(v13, v14);
  (*(v7 + 56))(v5, 0, 1, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(&v33);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_10:
    sub_1BF38C9B4(v5, &qword_1EBDD8FB0, &qword_1BF4EF798);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1BF4E92E4();

    v33 = 0xD000000000000012;
    v34 = 0x80000001BF4FAC30;
    v24 = sub_1BF4E82E4();
    v25 = [v24 description];
    v26 = sub_1BF4E8914();
    v28 = v27;

    MEMORY[0x1BFB58C90](v26, v28);

    MEMORY[0x1BFB58C90](0x756F6620746F6E20, 0xEA0000000000646ELL);
    v29 = v33;
    v30 = v34;
    sub_1BF4225D4();
    result = swift_allocError();
    *v31 = v29;
    v31[1] = v30;
    return result;
  }

  (*(v7 + 32))(v9, v5, v6);
  v15 = sub_1BF4E8304();
  v17 = v16;
  if (v15 == sub_1BF4E8304() && v17 == v18)
  {
  }

  else
  {
    v20 = sub_1BF4E9734();

    if ((v20 & 1) == 0)
    {
      sub_1BF4225D4();
      v21 = swift_allocError();
      *v22 = 0xD000000000000046;
      v22[1] = 0x80000001BF4FAC50;
      (*(v7 + 8))(v9, v6);
      return v21;
    }
  }

  (*(v7 + 8))(v9, v6);
  return 0;
}

uint64_t Extension.bundleStub.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for WidgetExtensionInfo(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 32))(a1, a2, v8);
  v11 = *v10;
  sub_1BF38DB44(v10);
  (*(a2 + 56))(a1, a2);
  (*(a2 + 88))(a1, a2);
  v12 = sub_1BF4E7194();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  return sub_1BF4E82D4();
}

uint64_t sub_1BF3A7244@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info;
  v4 = *(type metadata accessor for WidgetExtensionInfo(0) + 40);
  v5 = sub_1BF4E7194();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BF3A731C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

double sub_1BF3A73D4(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, int a6)
{
  v181 = a6;
  v182 = a5;
  v184 = a4;
  v191 = a3;
  v8 = *a1;
  v9 = *a1;
  v185 = type metadata accessor for ReloadConfiguration(0);
  v183 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v175 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v172 = &v171 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v171 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v174 = &v171 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v177 = &v171 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v179 = &v171 - v21;
  v22 = v8[10];
  v186 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v171 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v176 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v178 = &v171 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v180 = &v171 - v30;
  v31 = qword_1EDC9AF50;

  v193 = a1;
  v192 = v31;
  v32 = sub_1BF4E7B34();
  v33 = sub_1BF4E8E84();

  v34 = os_log_type_enabled(v32, v33);
  v173 = v15;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v195 = v36;
    *v35 = 136446210;
    v37 = sub_1BF39B444();
    v39 = v22;
    v40 = sub_1BF38D65C(v37, v38, &v195);

    *(v35 + 4) = v40;
    v22 = v39;
    _os_log_impl(&dword_1BF389000, v32, v33, "%{public}s Completed", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1BFB5A5D0](v36, -1, -1);
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
  }

  v41 = *(*a2 + 144);
  swift_beginAccess();
  v42 = v9[14];

  sub_1BF4E8854();

  if (v195 == 3)
  {

    v43 = sub_1BF4E7B34();
    v44 = sub_1BF4E8E84();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v195 = v46;
      *v45 = 136446210;
      v47 = sub_1BF39B444();
      v49 = sub_1BF38D65C(v47, v48, &v195);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1BF389000, v43, v44, "%{public}s Abandoning completed reload for blocked entry", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1BFB5A5D0](v46, -1, -1);
      MEMORY[0x1BFB5A5D0](v45, -1, -1);
    }

    v50 = v191;
    v51 = *v191;
    v52 = v191[1];
    *v191 = 0;
    v50[1] = 0;
    goto LABEL_35;
  }

  swift_beginAccess();
  v53 = v9[11];
  v54 = v9[12];
  v188 = v9[16];
  sub_1BF4E8834();

  v189 = a2;
  v190 = v41;
  sub_1BF4E8854();

  if (!v195)
  {
    v184 = v9;
    v182 = v53;
    v96 = v188;
    v185 = v42;
    v183 = v22;
    v97 = v189;

    v98 = sub_1BF4E7B34();
    v99 = sub_1BF4E8E64();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v195 = v101;
      *v100 = 136446210;
      v102 = sub_1BF39B444();
      v104 = sub_1BF38D65C(v102, v103, &v195);

      *(v100 + 4) = v104;
      _os_log_impl(&dword_1BF389000, v98, v99, "%{public}s Encountered missing entry", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x1BFB5A5D0](v101, -1, -1);
      MEMORY[0x1BFB5A5D0](v100, -1, -1);
    }

    v105 = v182;
    v106 = v184;
    swift_beginAccess();
    v107 = v106[13];
    v108 = v106[15];
    v109 = v106[17];

    v110 = v183;
    v195 = v183;
    v196 = v105;
    v197 = v54;
    v198 = v107;
    v199 = v185;
    v200 = v108;
    v201 = v96;
    v202 = v109;
    type metadata accessor for ReloadTaskPair(0, &v195);
    v111 = v190;
    sub_1BF4E8854();

    if (v195)
    {
      sub_1BF4B4014();
    }

    (*(v186 + 16))(v187, v97 + v111, v110);
    v203 = 0;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    v50 = v191;
    v51 = *v191;
    v52 = v191[1];
    v112 = xmmword_1BF4F1AA0;
LABEL_34:
    *v50 = v112;
LABEL_35:
    v94 = *(v50 + 16);
    v95 = 3;
LABEL_36:
    *(v50 + 16) = v95;
LABEL_37:
    sub_1BF45E7A8(v51, v52, v94);
    return result;
  }

  swift_beginAccess();
  v55 = v9[13];
  v56 = v9[15];
  v57 = v9[17];

  v195 = v22;
  v196 = v53;
  v197 = v54;
  v198 = v55;
  v199 = v42;
  v200 = v56;
  v201 = v188;
  v202 = v57;
  type metadata accessor for ReloadTaskPair(0, &v195);
  v58 = v189;
  v59 = v190;
  sub_1BF4E8854();

  if (!v204 || (v60 = v22, v61 = sub_1BF39B43C(), , , !v61) || (v62 = *(v61 + *(*v61 + 160)), , v62 != *&v58[*(*v58 + 160)]))
  {
    v81 = sub_1BF3C4E94();
    if ((v82 & 1) == 0)
    {
      v113 = v81;

      v114 = sub_1BF4E7B34();
      v115 = sub_1BF4E8E84();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v195 = v117;
        *v116 = 136446466;
        v118 = sub_1BF39B444();
        v120 = sub_1BF38D65C(v118, v119, &v195);

        *(v116 + 4) = v120;
        *(v116 + 12) = 2050;
        *(v116 + 14) = v113;
        _os_log_impl(&dword_1BF389000, v114, v115, "%{public}s Ignored as it was replaced by task [%{public}llu]", v116, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v117);
        MEMORY[0x1BFB5A5D0](v117, -1, -1);
        MEMORY[0x1BFB5A5D0](v116, -1, -1);
      }

      v121 = v191;
      v51 = *v191;
      v52 = v191[1];
      *v191 = v113;
      v121[1] = 0;
      v94 = *(v121 + 16);
      *(v121 + 16) = 0;
      goto LABEL_37;
    }

    v83 = sub_1BF39BBFC();
    if (v84)
    {
      v85 = v83;
      v86 = v84;

      v87 = sub_1BF4E7B34();
      v88 = sub_1BF4E8E84();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v195 = v90;
        *v89 = 136446466;
        v91 = sub_1BF39B444();
        v93 = sub_1BF38D65C(v91, v92, &v195);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2082;
        *(v89 + 14) = sub_1BF38D65C(v85, v86, &v195);
        _os_log_impl(&dword_1BF389000, v87, v88, "%{public}s Ignored as it was cancelled for reason: [%{public}s]", v89, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v90, -1, -1);
        MEMORY[0x1BFB5A5D0](v89, -1, -1);
      }

      v50 = v191;
      v51 = *v191;
      v52 = v191[1];
      *v191 = v85;
      v50[1] = v86;
      v94 = *(v50 + 16);
      v95 = 1;
      goto LABEL_36;
    }

    v122 = sub_1BF4E7B34();
    v123 = sub_1BF4E8E64();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v195 = v125;
      *v124 = 136446210;
      v126 = sub_1BF39B444();
      v128 = sub_1BF38D65C(v126, v127, &v195);

      *(v124 + 4) = v128;
      _os_log_impl(&dword_1BF389000, v122, v123, "%{public}s Ignored but it had no replacing identifier or cancellation reason", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v125);
      MEMORY[0x1BFB5A5D0](v125, -1, -1);
      MEMORY[0x1BFB5A5D0](v124, -1, -1);
    }

    v50 = v191;
    v51 = *v191;
    v52 = v191[1];
    v112 = xmmword_1BF4F1A90;
    goto LABEL_34;
  }

  v63 = v180;
  v64 = v193;
  sub_1BF3A9410(v58, v182, v181 & 1, v180);
  v65 = v63;
  v66 = v184;
  sub_1BF3AB378(v65, v184);
  swift_beginAccess();

  sub_1BF4E8854();

  if (v195)
  {
    sub_1BF3A8AF8(0);
  }

  swift_beginAccess();

  sub_1BF4E8854();

  if (v194[0] && (v67 = sub_1BF3AB3E8(), , , v67))
  {
    (*(v186 + 16))(v187, &v58[v59], v60);
    v205 = 0;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    v68 = v176;
    sub_1BF3AB308(v66, v176);
    if ((*(v183 + 48))(v68, 1, v185) == 1)
    {
      sub_1BF38C9B4(v68, &qword_1EBDD95C8, &qword_1BF4F1AB0);
      swift_retain_n();

      v69 = sub_1BF4E7B34();
      v70 = sub_1BF4E8E84();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v192 = swift_slowAlloc();
        v194[0] = v192;
        *v71 = 136446466;
        v72 = sub_1BF39B444();
        v74 = sub_1BF38D65C(v72, v73, v194);

        *(v71 + 4) = v74;
        *(v71 + 12) = 2082;
        v75 = v172;
        sub_1BF39B31C(v67 + *(*v67 + 168), v172, type metadata accessor for ReloadConfiguration);

        v76 = ReloadConfiguration.description.getter();
        v78 = v77;

        v64 = v193;
        sub_1BF45EABC(v75, type metadata accessor for ReloadConfiguration);
        v79 = sub_1BF38D65C(v76, v78, v194);

        *(v71 + 14) = v79;
        _os_log_impl(&dword_1BF389000, v69, v70, "%{public}s Performing queued reload with configuration [%{public}s]", v71, 0x16u);
        v80 = v192;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v80, -1, -1);
        MEMORY[0x1BFB5A5D0](v71, -1, -1);
      }

      else
      {
      }

      sub_1BF3B3A74(v67 + *(*v67 + 144), v67 + *(*v67 + 168));
    }

    else
    {
      v155 = v177;
      sub_1BF3B4C44(v68, v177, type metadata accessor for ReloadConfiguration);
      v156 = v174;
      sub_1BF3B4CAC(v155, v174);
      v157 = v173;
      sub_1BF39B31C(v156, v173, type metadata accessor for ReloadConfiguration);

      v158 = sub_1BF4E7B34();
      v159 = sub_1BF4E8E84();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v194[0] = v161;
        *v160 = 136446466;
        v162 = sub_1BF39B444();
        v164 = sub_1BF38D65C(v162, v163, v194);

        *(v160 + 4) = v164;
        *(v160 + 12) = 2082;
        v165 = ReloadConfiguration.description.getter();
        v167 = v166;
        sub_1BF45EABC(v157, type metadata accessor for ReloadConfiguration);
        v168 = sub_1BF38D65C(v165, v167, v194);

        *(v160 + 14) = v168;
        _os_log_impl(&dword_1BF389000, v158, v159, "%{public}s Merging queued reload with configuration [%{public}s]", v160, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v161, -1, -1);
        v169 = v160;
        v64 = v193;
        MEMORY[0x1BFB5A5D0](v169, -1, -1);
      }

      else
      {

        sub_1BF45EABC(v157, type metadata accessor for ReloadConfiguration);
      }

      sub_1BF3B3A74(v67 + *(*v67 + 144), v156);
      sub_1BF45EABC(v156, type metadata accessor for ReloadConfiguration);
      sub_1BF45EABC(v177, type metadata accessor for ReloadConfiguration);
    }

    sub_1BF3B61AC(*(v64 + qword_1EDC9AFA0));
  }

  else
  {
    (*(v186 + 16))(v187, &v58[v59], v60);
    v205 = 0;
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    v130 = v178;
    sub_1BF3AB308(v66, v178);
    if ((*(v183 + 48))(v130, 1, v185) == 1)
    {
      sub_1BF38C9B4(v130, &qword_1EBDD95C8, &qword_1BF4F1AB0);

      v131 = sub_1BF4E7B34();
      v132 = sub_1BF4E8E84();

      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v194[0] = v134;
        *v133 = 136446210;
        v135 = sub_1BF39B444();
        v137 = sub_1BF38D65C(v135, v136, v194);

        *(v133 + 4) = v137;
        _os_log_impl(&dword_1BF389000, v131, v132, "%{public}s No remaining tasks", v133, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v134);
        MEMORY[0x1BFB5A5D0](v134, -1, -1);
        MEMORY[0x1BFB5A5D0](v133, -1, -1);
      }
    }

    else
    {
      v138 = v130;
      v139 = v179;
      sub_1BF3B4C44(v138, v179, type metadata accessor for ReloadConfiguration);
      v140 = v175;
      sub_1BF39B31C(v139, v175, type metadata accessor for ReloadConfiguration);

      v141 = sub_1BF4E7B34();
      v142 = sub_1BF4E8E84();

      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        v144 = v58;
        v145 = v59;
        v146 = swift_slowAlloc();
        v194[0] = v146;
        *v143 = 136446466;
        v147 = sub_1BF39B444();
        v149 = sub_1BF38D65C(v147, v148, v194);

        *(v143 + 4) = v149;
        *(v143 + 12) = 2082;
        v150 = ReloadConfiguration.description.getter();
        v152 = v151;
        sub_1BF45EABC(v140, type metadata accessor for ReloadConfiguration);
        v153 = sub_1BF38D65C(v150, v152, v194);

        *(v143 + 14) = v153;
        _os_log_impl(&dword_1BF389000, v141, v142, "%{public}s Follow-on reload from completion needed: [%{public}s]", v143, 0x16u);
        swift_arrayDestroy();
        v154 = v146;
        v59 = v145;
        v58 = v144;
        MEMORY[0x1BFB5A5D0](v154, -1, -1);
        MEMORY[0x1BFB5A5D0](v143, -1, -1);
      }

      else
      {

        sub_1BF45EABC(v140, type metadata accessor for ReloadConfiguration);
      }

      v170 = v179;
      sub_1BF3B3A74(&v58[v59], v179);
      sub_1BF45EABC(v170, type metadata accessor for ReloadConfiguration);
    }
  }

  return result;
}

double sub_1BF3A8AF8(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

uint64_t ControlEntryKey.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - v3;
  v5 = [*v0 description];
  v6 = sub_1BF4E8914();
  v8 = v7;

  v19 = 544108320;
  v20 = 0xE400000000000000;
  v9 = type metadata accessor for ControlEntryKey(0);
  sub_1BF3988F8(v0 + *(v9 + 20), v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_1BF38C9B4(v4, &qword_1EBDD8E78, &unk_1BF4EE790);
    v12 = 0xEA00000000007473;
    v13 = 0x6F68206C61636F6CLL;
  }

  else
  {
    v14 = sub_1BF4E7754();
    v12 = v15;
    (*(v11 + 8))(v4, v10);
    v13 = v14;
  }

  MEMORY[0x1BFB58C90](v13, v12);

  v16 = v19;
  v17 = v20;
  v19 = v6;
  v20 = v8;

  MEMORY[0x1BFB58C90](v16, v17);

  return v19;
}

uint64_t sub_1BF3A8D4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  swift_beginAccess();
  sub_1BF38E49C(v2 + 16, v29);
  v9 = v30;
  v10 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  ExtensionManaging.extension(for:)(a1, v9, v10);
  if (v28)
  {
    sub_1BF38E610(&v27, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v11 = v33;
    v12 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    (*(v12 + 112))(v11, v12);
    v13 = sub_1BF4E8424();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v8, 1, v13) == 1)
    {
      sub_1BF38C9B4(v8, &qword_1EBDD8AF8, &qword_1BF4EC370);
      v15 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
      swift_beginAccess();
      (*(v14 + 16))(a2, v3 + v15, v13);
    }

    else
    {
      (*(v14 + 32))(a2, v8, v13);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    sub_1BF38C9B4(&v27, &unk_1EBDD91B0, &unk_1BF4F0720);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    if ([a1 isRemote])
    {
      v16 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
      swift_beginAccess();
      v17 = sub_1BF4E8424();
      return (*(*(v17 - 8) + 16))(a2, v3 + v16, v17);
    }

    else
    {
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v19 = sub_1BF4E7B54();
      __swift_project_value_buffer(v19, qword_1EDCA69A0);
      v20 = a1;
      v21 = sub_1BF4E7B34();
      v22 = sub_1BF4E8E64();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138543362;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&dword_1BF389000, v21, v22, "Extension not found for %{public}@", v23, 0xCu);
        sub_1BF38C9B4(v24, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v24, -1, -1);
        MEMORY[0x1BFB5A5D0](v23, -1, -1);
      }

      sub_1BF4B86EC();
      swift_allocError();
      *v26 = 6;
      return swift_willThrow();
    }
  }
}

uint64_t sub_1BF3A914C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 160);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v3 + *(v7 + 176), v8, v10);
  (*(*(v7 + 168) + 56))(a1, a2, a3, v8);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BF3A92BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t ReloadTaskPair.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3A93B4(uint64_t a1)
{
  v2 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF3A9410(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v224 = a1;
  v9 = *v4;
  v233 = sub_1BF4E6D54();
  v227 = *(v233 - 1);
  MEMORY[0x1EEE9AC00](v233);
  v226 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v234 = (&v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v189 = &v174 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v174 - v16;
  v185 = sub_1BF4E8424();
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v182 = &v174 - v19;
  v20 = *(v9 + 11);
  v21 = *(v9 + 12);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v181 = sub_1BF4E90F4();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v186 = &v174 - v23;
  v188 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v187 = &v174 - v25;
  v26 = *(v9 + 10);
  v196 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v174 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v179 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v215 = &v174 - v32;
  v225 = *(v9 + 17);
  v231 = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v229 = sub_1BF4E90F4();
  v33 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v217 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v230 = &v174 - v36;
  v202 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v37);
  v200 = &v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v214 = &v174 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v216 = &v174 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v235 = &v174 - v44;
  v45 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v45 - 8);
  v219 = &v174 - v46;
  os_unfair_lock_assert_owner(*(*(v5 + qword_1EDC9AF58) + 16));
  v47 = type metadata accessor for ReloadConfiguration(0);
  v193 = *(v47 - 8);
  v48 = *(v193 + 56);
  v195 = a4;
  v199 = v47;
  v48(a4, 1, 1);
  v240 = 5;
  v201 = v5;
  v220 = a2;
  v192 = v26;
  if ((a3 & 1) == 0)
  {
    v234 = v33;
    v175 = TupleTypeMetadata2;
    v58 = *(*v224 + 144);
    swift_beginAccess();
    v59 = *(v9 + 16);
    v60 = sub_1BF4E8834();
    v61 = *(v9 + 14);

    v178 = v58;
    v177 = v60;
    v190 = v61;
    sub_1BF4E8854();
    v62 = v236;
    if (v236)
    {

      v239 = v62;
      v63 = v20;
      v210 = v59;
      nullsub_1();
      v65 = v225;
      if ((v64 & 0xC000000000000001) != 0)
      {
        v66 = sub_1BF4E9414();
        v213 = 0;
        v67 = 0;
        v68 = 0;
        v218 = v66 | 0x8000000000000000;
      }

      else
      {
        v84 = -1 << *(v64 + 32);
        v67 = ~v84;
        v85 = *(v64 + 64);
        v213 = v64 + 64;
        v86 = -v84;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        else
        {
          v87 = -1;
        }

        v68 = v87 & v85;
        v218 = v64;
      }

      v50 = v224;
      v88 = v234;
      v89 = v235;
      v211 = (v202 + 56);
      v176 = v67;
      v212 = (v67 + 64) >> 6;
      v234 = (v202 + 16);
      v209 = (v202 + 32);
      v222 = AssociatedTypeWitness - 8;
      v208 = (v88 + 16);
      v207 = v231 - 8;
      v206 = v65 + 24;
      v205 = (v202 + 8);
      v204 = v65 + 48;
      v198 = " retries remaining";
      v197 = v65 + 72;
      v203 = (v88 + 8);

      v223 = 0;
      v90 = v230;
      v91 = v213;
      v228 = v63;
      while (1)
      {
        if ((v218 & 0x8000000000000000) != 0)
        {
          if (!sub_1BF4E9454())
          {
            goto LABEL_36;
          }

          v95 = v219;
          sub_1BF4E9704();
          swift_unknownObjectRelease();
          v90 = v230;
          v96 = v234;
        }

        else
        {
          v92 = v223;
          if (!v68)
          {
            while (1)
            {
              v93 = v92 + 1;
              if (__OFADD__(v92, 1))
              {
                break;
              }

              if (v93 >= v212)
              {
                goto LABEL_36;
              }

              v68 = *(v91 + 8 * v93);
              ++v92;
              if (v68)
              {
                v223 = v93;
                goto LABEL_25;
              }
            }

            __break(1u);
            goto LABEL_74;
          }

          v93 = v223;
LABEL_25:
          v94 = __clz(__rbit64(v68));
          v68 &= v68 - 1;
          v95 = v219;
          v96 = v234;
          (*(v202 + 16))(v219, *(v218 + 48) + *(v202 + 72) * (v94 | (v93 << 6)), v63);
        }

        (*v211)(v95, 0, 1, v63);
        (*v209)(v89, v95, v63);
        v227 = v68;
        v97 = v65;
        if (a2)
        {
          sub_1BF4E8854();
        }

        else
        {
          (*(*(AssociatedTypeWitness - 8) + 56))(v90, 1, 1);
        }

        v98 = v217;
        (*v208)(v217, v90, v229);
        v99 = v216;
        v233 = *v96;
        (v233)(v216, v89, v63);
        v100 = v231;
        v101 = sub_1BF4E87F4();
        v102 = sub_1BF4E8804();
        v103 = *(*(v100 - 8) + 48);
        if (v103(v104, 1, v100) == 1)
        {
          goto LABEL_75;
        }

        (*(v97 + 24))(v98, v100, v97);
        v102(&v236, 0);
        v105 = v228;
        v226 = *v205;
        (v226)(v99, v228);
        v106 = sub_1BF4E7334();
        v107 = v215;
        (*(*(v106 - 8) + 56))(v215, 1, 1, v106);
        v108 = v214;
        (v233)(v214, v235, v105);
        v221 = v101;
        v109 = sub_1BF4E8804();
        if (v103(v110, 1, v100) == 1)
        {
          goto LABEL_76;
        }

        (*(v97 + 48))(v107, v100, v97);
        v109(&v236, 0);
        v111 = v108;
        v63 = v228;
        v50 = v226;
        (v226)(v111, v228);
        v90 = v230;
        v112 = (*(*(AssociatedTypeWitness - 8) + 48))(v230, 1);
        v91 = v213;
        v68 = v227;
        if (v112 == 1)
        {
          v113 = v200;
          (v233)(v200, v235, v63);
          v114 = v63;
          v63 = sub_1BF4E8804();
          v115 = v231;
          if (v103(v116, 1, v231) == 1)
          {
            __break(1u);
LABEL_36:
            (*v211)(v219, 1, 1, v63);
            sub_1BF39A9CC(v218);
            v117 = *(v196 + 16);
            v118 = v178;
            v119 = v192;
            v196 += 16;
            v235 = v117;
            (v117)(v191, &v50[v178], v192);
            v237 = v239;
            v120 = v201;
            swift_beginAccess();
            sub_1BF4E8834();

            sub_1BF4E8864();
            swift_endAccess();
            v121 = &v50[*(*v50 + 168)];
            v236 = *(v121 + *(v199 + 24));
            v237 = 0xA000000000000030;
            sub_1BF39C510(v236);
            v122 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v236, &v237);
            sub_1BF39C9A4(v236);
            v123 = v231;
            if ((v122 & 1) == 0)
            {
              v234 = v121;
              v236 = v239;

              swift_getWitnessTable();
              v124 = v186;
              sub_1BF4E8DD4();
              v125 = v188;
              v126 = v175;
              if ((*(v188 + 48))(v124, 1, v175) == 1)
              {
                (*(v180 + 8))(v124, v181);
              }

              else
              {
                (*(v125 + 32))(v187, v124, v126);

                v143 = v123;
                v144 = v182;
                (*(v225 + 88))(v143);
                v145 = v184;
                v146 = v183;
                v147 = v185;
                (*(v184 + 104))(v183, *MEMORY[0x1E6985988], v185);
                sub_1BF3983D4(&qword_1EDC96460, MEMORY[0x1E69859A8], MEMORY[0x1E69859C8]);
                sub_1BF4E8B54();
                sub_1BF4E8B54();
                v148 = *(v145 + 8);
                v148(v146, v147);
                v148(v144, v147);
                if (v236 == v237)
                {
                  (v235)(v191, &v50[v118], v119);
                  v149 = v179;
                  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
                  v150 = sub_1BF4E7334();
                  (*(*(v150 - 8) + 56))(v149, 0, 1, v150);
                  swift_beginAccess();
                  sub_1BF4E8834();
                  sub_1BF4E8864();
                  swift_endAccess();
                }

                (*(v188 + 8))(v187, v175);
              }
            }

            v151 = sub_1BF4E7B34();
            v152 = sub_1BF4E8E84();

            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v236 = v154;
              *v153 = 136446210;
              v155 = sub_1BF39B444();
              v157 = sub_1BF38D65C(v155, v156, &v236);

              *(v153 + 4) = v157;
              _os_log_impl(&dword_1BF389000, v151, v152, "%{public}s Reload success", v153, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v154);
              MEMORY[0x1BFB5A5D0](v154, -1, -1);
              v158 = v153;
              v120 = v201;
              MEMORY[0x1BFB5A5D0](v158, -1, -1);
            }

            v159 = v194;
            os_unfair_lock_assert_owner(*(*(v120 + qword_1EDC9AF58) + 16));
            sub_1BF3AB254();

            v160 = v195;
            sub_1BF38C9B4(v195, &qword_1EBDD95C8, &qword_1BF4F1AB0);
            sub_1BF3AB298(v159, v160);
            swift_beginAccess();

            sub_1BF4E8854();

            if (v237 == 4)
            {
              v240 = 4;
            }

            else
            {
              LOBYTE(v237) = 1;
              sub_1BF399684(&v237, &v50[v118]);
              v161 = v189;
              sub_1BF3AB308(v160, v189);
              v162 = (*(v193 + 48))(v161, 1, v199);
              sub_1BF38C9B4(v161, &qword_1EBDD95C8, &qword_1BF4F1AB0);
              v240 = v162 == 1;
            }

            goto LABEL_56;
          }

          (*(v225 + 72))(0xD000000000000013, v198 | 0x8000000000000000, v115);
          v63(&v236, 0);
          (v50)(v113, v114);
          v63 = v114;
          v90 = v230;
        }

        v89 = v235;
        (v50)(v235, v63);
        (*v203)(v90, v229);
        v50 = v224;
        a2 = v220;
        v65 = v225;
      }
    }

    goto LABEL_78;
  }

  v235 = v9;
  v49 = qword_1EDC9AF50;
  v50 = v224;

  v51 = sub_1BF4E7B34();
  v52 = sub_1BF4E8E84();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v236 = v54;
    *v53 = 136446210;
    v55 = sub_1BF39B444();
    v57 = sub_1BF38D65C(v55, v56, &v236);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_1BF389000, v51, v52, "%{public}s Reload failure", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1BFB5A5D0](v54, -1, -1);
    MEMORY[0x1BFB5A5D0](v53, -1, -1);
  }

  v69 = v195;
  v70 = v194;
  LOBYTE(v236) = 2;
  sub_1BF399684(&v236, &v50[*(*v50 + 144)]);
  v71 = sub_1BF4E6FE4();
  sub_1BF455A54(v70, &v236, v50, v71);

  sub_1BF38C9B4(v69, &qword_1EBDD95C8, &qword_1BF4F1AB0);
  v72 = v236;
  sub_1BF3AB298(v70, v69);
  v240 = v72;
  v73 = v69;
  v74 = v234;
  sub_1BF3AB308(v73, v234);
  v75 = (*(v193 + 48))(v74, 1, v199);
  sub_1BF38C9B4(v74, &qword_1EBDD95C8, &qword_1BF4F1AB0);
  if (v75 == 1)
  {
    v76 = sub_1BF4E6FE4();
    v77 = [v76 domain];
    v78 = sub_1BF4E8914();
    v80 = v79;

    if (v78 == sub_1BF4E6CE4() && v80 == v81)
    {

      v82 = v233;
      v83 = v227;
    }

    else
    {
      v127 = sub_1BF4E9734();

      v82 = v233;
      v83 = v227;
      if ((v127 & 1) == 0)
      {

        goto LABEL_56;
      }
    }

    v234 = v49;
    v128 = v76;
    v129 = [v76 code];
    v130 = v226;
    sub_1BF4E6CF4();
    v131 = sub_1BF4E6D44();
    v132 = *(v83 + 8);
    v132(v130, v82);
    if (v129 == v131 || (v133 = [v128 code], sub_1BF4E6D04(), v134 = sub_1BF4E6D44(), v132(v130, v82), v133 == v134))
    {

      v135 = sub_1BF4E7B34();
      v136 = sub_1BF4E8E84();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v236 = v138;
        *v137 = 136446210;
        v139 = sub_1BF4E96A4();
        v141 = v140;

        v142 = sub_1BF38D65C(v139, v141, &v236);

        *(v137 + 4) = v142;
        _os_log_impl(&dword_1BF389000, v135, v136, "%{public}s Blocked because of keybag", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v138);
        MEMORY[0x1BFB5A5D0](v138, -1, -1);
        MEMORY[0x1BFB5A5D0](v137, -1, -1);
      }

      else
      {
      }

      v240 = 3;
      goto LABEL_57;
    }
  }

LABEL_56:
  if (v240 == 5)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_57:

  v163 = sub_1BF4E7B34();
  v164 = sub_1BF4E8E84();

  if (!os_log_type_enabled(v163, v164))
  {

    goto LABEL_71;
  }

  v165 = swift_slowAlloc();
  v166 = swift_slowAlloc();
  v239 = v166;
  *v165 = 136446466;
  v167 = sub_1BF39B444();
  v169 = sub_1BF38D65C(v167, v168, &v239);

  *(v165 + 4) = v169;
  *(v165 + 12) = 2082;
  swift_beginAccess();
  if (v240 <= 2u)
  {
    if (!v240)
    {
      v170 = 0xE600000000000000;
      v171 = 0x64616F6C6572;
      goto LABEL_70;
    }

    if (v240 == 1)
    {
      v170 = 0xE500000000000000;
      v171 = 0x6E61656C63;
LABEL_70:
      v173 = sub_1BF38D65C(v171, v170, &v239);

      *(v165 + 14) = v173;
      _os_log_impl(&dword_1BF389000, v163, v164, "%{public}s New state: %{public}s", v165, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v166, -1, -1);
      MEMORY[0x1BFB5A5D0](v165, -1, -1);

LABEL_71:
      swift_beginAccess();
      if (v240 != 5)
      {
        v238 = v240;
        sub_1BF399684(&v238, &v50[*(*v50 + 144)]);
        return;
      }

      goto LABEL_77;
    }

    v170 = 0xE600000000000000;
    v172 = 1818845542;
LABEL_69:
    v171 = v172 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
    goto LABEL_70;
  }

  if (v240 == 3)
  {
    v170 = 0xE700000000000000;
    v171 = 0x64656B636F6C62;
    goto LABEL_70;
  }

  if (v240 == 4)
  {
    v170 = 0xE600000000000000;
    v172 = 1937072496;
    goto LABEL_69;
  }

LABEL_79:
  __break(1u);
}

uint64_t sub_1BF3AB0B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v6 + 16));
  sub_1BF38C94C(a1, v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v7 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF3A3A54(v5, v1 + v7, &qword_1EBDD9B00, &qword_1BF4F1E50);
  swift_endAccess();
  os_unfair_lock_unlock(*(v6 + 16));
  return sub_1BF38C9B4(a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

uint64_t sub_1BF3AB298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3AB308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3AB378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL _s9ChronoKit26PowerlogWidgetViewIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v14 = a1[6];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v18 = *(a2 + 40);
  v19 = *(a1 + 40);
  v17 = a2[6];
  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0 || (v2 != v6 || v4 != v8) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    return 0;
  }

  if (v3 == v7 && v5 == v9)
  {
    if (v19 != v18)
    {
      return 0;
    }

LABEL_16:
    if (v15)
    {
      v12 = qword_1BF4EE160[v14];
      v13 = v17;
      if (!v16)
      {
        v13 = 3;
        return v12 == v13;
      }
    }

    else
    {
      v13 = v17;
      if ((v16 & 1) == 0)
      {
        v12 = v14;
        return v12 == v13;
      }

      v12 = 3;
    }

    if (v13 <= 3)
    {
      if (v13 >= 3)
      {
        v13 = 4;
      }
    }

    else if (v13 <= 5)
    {
      if (v13 == 4)
      {
        v13 = 5;
      }

      else
      {
        v13 = 6;
      }
    }

    else if (v13 == 6)
    {
      v13 = 7;
    }

    else if (v13 == 7)
    {
      v13 = 8;
    }

    else
    {
      v13 = 9;
    }

    return v12 == v13;
  }

  v11 = sub_1BF4E9734();
  result = 0;
  if (v11)
  {
LABEL_15:
    if (((v19 ^ v18) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_1BF3AB5E0(char a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_1BF3AB734(v3);
}

double sub_1BF3AB604(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF3AB664(a2, a2, a3, a4);
  sub_1BF3AB5E0(a1);

  return result;
}

uint64_t sub_1BF3AB664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PowerlogViewEntry(0, *(*v4 + 80), *(*v4 + 96), a4);
  sub_1BF4E8F44();
  return v6;
}

void sub_1BF3AB734(char a1)
{
  v2 = *(v1 + *(*v1 + 120));
  if (v2 != (a1 & 1))
  {
    if (*(v1 + *(*v1 + 120)))
    {
      BSContinuousMachTimeNow();
      v3 = *(*v1 + 112);
      *(v1 + v3) = v4;
    }

    else
    {
      sub_1BF3ABB78();
      v3 = *(*v1 + 112);
      *(v1 + v3) = 0;
    }

    *(v1 + v3 + 8) = v2 ^ 1;
  }
}

uint64_t sub_1BF3AB7C0(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  PowerlogWidgetViewIdentity.hash(into:)(v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF3AB7FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = a3;
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - v8;
  swift_beginAccess();
  type metadata accessor for PowerlogViewEntry(0, v6, *(v5 + 96), v10);

  sub_1BF4E8854();

  v12 = v17;
  if (!v17)
  {
    v14[1] = v3;
    v13 = *(v7 + 16);
    v13(v9, a2, v6);
    v12 = sub_1BF3B1980(v9);
    v13(v9, a2, v6);
    v16 = v12;
    swift_beginAccess();
    sub_1BF4E8834();

    sub_1BF4E8864();
    result = swift_endAccess();
  }

  *v15 = v12;
  return result;
}

uint64_t sub_1BF3ABA0C(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF3ABA54(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF3ABAA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

double sub_1BF3ABB08(void (*a1)(__int128 *))
{
  v2 = (v1 + *(*v1 + 104));
  v3 = v2[4];
  v4 = *(v2 + 1);
  v7 = *v2;
  v8 = v4;
  v9 = v3;
  a1(&v7);
  result = v9;
  v6 = v8;
  *v2 = v7;
  *(v2 + 1) = v6;
  v2[4] = result;
  return result;
}

void sub_1BF3ABB78()
{
  v1 = BSContinuousMachTimeNow();
  v3 = v2;
  v4 = *v0;
  v5 = v0 + *(*v0 + 112);
  if ((*(v5 + 8) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v1);
    sub_1BF3ABB08(sub_1BF3AC408);
    v4 = *v0;
  }

  v6 = *(v0 + *(v4 + 120));
  v7 = v3;
  if (!v6)
  {
    v7 = 0;
  }

  *v5 = v7;
  *(v5 + 8) = v6 ^ 1;
}

void sub_1BF3ABC50(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  BSDispatchQueueAssertMain();
  v7 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  sub_1BF3ABF74(a1 + v7, v6);
  v8 = sub_1BF4E7334();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_1BF38C9B4(v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v7 == 1)
  {
    sub_1BF3ABFF8();
    swift_beginAccess();

    MEMORY[0x1BFB58DD0](v9);
    if (*((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BF4E8BE4();
    }

    sub_1BF4E8C24();
    swift_endAccess();
    if (qword_1EDC9D480 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF4E7B54();
    __swift_project_value_buffer(v10, qword_1EDCA68C8);

    v11 = sub_1BF4E7B34();
    v12 = sub_1BF4E8E84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1BF38D65C(*(a1 + 40), *(a1 + 48), v17);
      _os_log_impl(&dword_1BF389000, v11, v12, "Recorded duet widget view for: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1BFB5A5D0](v14, -1, -1);
      MEMORY[0x1BFB5A5D0](v13, -1, -1);
    }

    if (!*(v2 + 88))
    {
      sub_1BF3C36CC(v15);
    }

    v16 = *(v2 + 80);
    if (v16 >> 62)
    {
      if (sub_1BF4E9204() < 24)
      {
        return;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 24)
    {
      return;
    }

    sub_1BF4C5258(0xD000000000000012, 0x80000001BF4FEAE0);
  }
}

uint64_t sub_1BF3ABF74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF3ABFF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_1BF4E7334();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  BSDispatchQueueAssertMain();
  sub_1BF4E7324();
  v12 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_startViewDate;
  swift_beginAccess();
  v29 = *(v6 + 16);
  v29(v8, v0 + v12, v5);
  v13 = sub_1BF4E7264();
  v30 = *(v6 + 8);
  v30(v8, v5);
  if (v13)
  {
    (*(v6 + 32))(v4, v11, v5);
  }

  else
  {
    v28 = v12;
    if (qword_1EDC9D480 != -1)
    {
      swift_once();
    }

    v14 = sub_1BF4E7B54();
    __swift_project_value_buffer(v14, qword_1EDCA68C8);

    v15 = sub_1BF4E7B34();
    v16 = sub_1BF4E8E44();

    v27 = v16;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = v4;
      v18 = v17;
      v19 = v15;
      v20 = swift_slowAlloc();
      v31[0] = v20;
      *v18 = 136446210;
      *(v18 + 4) = sub_1BF38D65C(*(v1 + 40), *(v1 + 48), v31);
      _os_log_impl(&dword_1BF389000, v19, v27, "End view date < start view date for: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1BFB5A5D0](v20, -1, -1);
      v21 = v18;
      v4 = v26;
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
    }

    else
    {
    }

    v29(v8, v1 + v28, v5);
    sub_1BF4E7244();
    v22 = v30;
    v30(v8, v5);
    v22(v11, v5);
  }

  (*(v6 + 56))(v4, 0, 1, v5);
  v23 = OBJC_IVAR____TtC9ChronoKit19DuetWidgetViewEntry_endViewDate;
  swift_beginAccess();
  sub_1BF3AC398(v4, v1 + v23);
  return swift_endAccess();
}

uint64_t sub_1BF3AC398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1BF3AC408(uint64_t a1)
{
  result = *(v1 + 16) - *(v1 + 24) + *(a1 + 32);
  *(a1 + 32) = result;
  return result;
}

Swift::Void __swiftcall BlockAssertion.invalidate()()
{
  v1 = v0[2];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = v0[3];
  v3 = v0[4];
  v0[3] = 0;
  v0[4] = 0;
  os_unfair_lock_unlock(*(v1 + 16));
  if (v2)
  {

    v2(v4);
    sub_1BF3B0E64(v2, v3);

    sub_1BF3B0E64(v2, v3);
  }
}

uint64_t BlockAssertion.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 32);

    v2(v4);
    sub_1BF3B0E64(v2, v3);
  }

  sub_1BF3B0E64(*(v1 + 24), *(v1 + 32));

  return swift_deallocClassInstance();
}

uint64_t PowerlogWidgetViewIdentity.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E9824();
  if (v2)
  {
    sub_1BF4E89F4();
  }

  sub_1BF4E9824();
  if (v4)
  {
    v3 = qword_1BF4EE160[v3];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v3);
}

uint64_t sub_1BF3AC63C(uint64_t a1, int a2)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF3AC6EC()
{
  MEMORY[0x1BFB5A5D0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void sub_1BF3AC72C()
{
  v0 = MEMORY[0x1BFB59CC0]();
  if (qword_1EDC9F730 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    swift_beginAccess();
    v1 = off_1EDC9F738;
    v2 = *(off_1EDC9F738 + 2);

    if (!v2)
    {
      break;
    }

    v3 = 0;
    v4 = (v1 + 5);
    while (v3 < v1[2])
    {
      ++v3;
      v5 = *(v4 - 1);

      v5(v6);

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

LABEL_6:

  off_1EDC9F738 = MEMORY[0x1E69E7CC0];

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1BF3AC83C(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_1BF4E7B64();
}

void sub_1BF3AC91C(void *a1, void *a2)
{
  v3 = v2;
  if (qword_1EDC9EFE0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF4E7B54();
  __swift_project_value_buffer(v6, qword_1EDCA6A60);

  v7 = a2;
  v8 = a1;
  v9 = sub_1BF4E7B34();
  v10 = sub_1BF4E8E84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446722;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);

    v15 = sub_1BF38D65C(v14, v13, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = [*&v7[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key] _loggingIdentifierWithoutMetrics];
    v17 = sub_1BF4E8914();
    v19 = v18;

    v20 = sub_1BF38D65C(v17, v19, &v26);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2082;
    v21 = [v8 description];
    v22 = sub_1BF4E8914();
    v24 = v23;

    v25 = sub_1BF38D65C(v22, v24, &v26);

    *(v11 + 24) = v25;
    _os_log_impl(&dword_1BF389000, v9, v10, "[%{public}s] Updating descriptor: %{public}s with: %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v12, -1, -1);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
  }

  sub_1BF3ACB78(v8);
}

void sub_1BF3ACB78(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor;
  v6 = *(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor);
  if (a1)
  {
    if (!v6)
    {
LABEL_6:
      *(v2 + v5) = a1;
      v10 = a1;

      os_unfair_lock_unlock(*(v4 + 16));
      v11 = v10;
      sub_1BF42DC14(a1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
      sub_1BF4E7C74();
      return;
    }

    sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
    v7 = v6;
    v8 = a1;
    v9 = sub_1BF4E90A4();

    if ((v9 & 1) == 0)
    {
      v6 = *(v2 + v5);
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v12 = *(v4 + 16);

  os_unfair_lock_unlock(v12);
}

uint64_t sub_1BF3ACCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1BF3ACD5C();
  result = sub_1BF4E90E4();
  *a4 = result;
  return result;
}

unint64_t sub_1BF3ACD5C()
{
  result = qword_1EDC9D660[0];
  if (!qword_1EDC9D660[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDC9D660);
  }

  return result;
}

void sub_1BF3ACDA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *(v4 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v9 + 16));
  sub_1BF3ACE84(v4, a2, a1, a3, a4);
  v10 = *(v9 + 16);

  os_unfair_lock_unlock(v10);
}

void sub_1BF3ACE84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v73 = a4;
  v71 = a3;
  v66 = sub_1BF4E8134();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BF4E8164();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9AE0, &qword_1BF4F5DF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v58 - v13;
  v69 = sub_1BF4E8594();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v59 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v67 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = sub_1BF4E7334();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v58 - v25;
  v27 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(a1 + v27, &v74, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  if (!*(&v75 + 1))
  {
    sub_1BF38C9B4(&v74, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    v31 = *(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError + 8);
    *a5 = *(a1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
    a5[1] = v31;
    type metadata accessor for WidgetEntry.WidgetEntryError(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BA8, &qword_1BF4F5FA8);
    swift_storeEnumTagMultiPayload();

    return;
  }

  v72 = a1;
  sub_1BF38E610(&v74, &v82);
  v58 = a2;
  sub_1BF38C94C(a2, v19, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v28 = *(v21 + 48);
  if (v28(v19, 1, v20) == 1)
  {
    sub_1BF38C9B4(v19, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v29 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
    v30 = v72;
    swift_beginAccess();
    sub_1BF38C94C(v30 + v29, &v78, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (!*(&v79 + 1))
    {
      goto LABEL_11;
    }

LABEL_8:
    v58 = v21;
    v67 = a5;
    sub_1BF38E610(&v78, v81);
    __swift_project_boxed_opaque_existential_1(&v82, v83);
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    sub_1BF4E8334();
    v32 = v70;
    v33 = v84;
    sub_1BF4E85C4();
    if (v33)
    {
      (*(v58 + 8))(v23, v20);
      v34 = v67;
      sub_1BF38E49C(v81, v67);
      v34[5] = v33;
      type metadata accessor for WidgetEntry.WidgetEntryError(0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BA8, &qword_1BF4F5FA8);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      __swift_destroy_boxed_opaque_existential_1Tm(&v82);
      return;
    }

    (*(v58 + 8))(v23, v20);
    v38 = v68;
    v39 = v69;
    v40 = (*(v68 + 48))(v32, 1, v69);
    v41 = v67;
    v42 = v32;
    if (v40 == 1)
    {
      sub_1BF38C9B4(v32, &unk_1EBDD9AE0, &qword_1BF4F5DF0);
      sub_1BF38E49C(v81, v41);
      __swift_project_boxed_opaque_existential_1(&v82, v83);
      v43 = v61;
      sub_1BF4E85A4();
      v44 = v65;
      v45 = v63;
      v46 = v66;
      (*(v65 + 104))(v63, *MEMORY[0x1E69856F8], v66);
      v47 = sub_1BF4E8124();
      (*(v44 + 8))(v45, v46);
      (*(v62 + 8))(v43, v64);
      *&v78 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
      sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6310]);
      v48 = sub_1BF4E8894();
      v50 = v49;

      *(v41 + 5) = v48;
      *(v41 + 6) = v50;
      type metadata accessor for WidgetEntry.WidgetEntryError(0);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = *(v38 + 32);
      v54 = v59;
      v53(v59, v42, v39);
      v55 = v60;
      (*(v38 + 16))(v60, v54, v39);
      (*(v38 + 56))(v55, 0, 1, v39);
      v56 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_cachedViewableEntry;
      v57 = v72;
      swift_beginAccess();
      sub_1BF3A3A54(v55, v57 + v56, &unk_1EBDD9AE0, &qword_1BF4F5DF0);
      swift_endAccess();
      v53(v41, v54, v39);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BA8, &qword_1BF4F5FA8);
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    goto LABEL_20;
  }

  (*(v21 + 32))(v26, v19, v20);
  sub_1BF3AEB90(&v74);
  (*(v21 + 8))(v26, v20);
  if (*(&v75 + 1) == 1)
  {
    sub_1BF38C9B4(&v74, &qword_1EBDD9B30, &qword_1BF4F5E20);
    v78 = 0u;
    v79 = 0u;
    v80 = 0;
    goto LABEL_11;
  }

  v78 = v74;
  v79 = v75;
  v80 = v76;
  sub_1BF38C9B4(&v77, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  if (*(&v79 + 1))
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1BF38C9B4(&v78, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v35 = v58;
  if (v28(v58, 1, v20) == 1)
  {
    v36 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_configuredDate;
    v37 = v72;
    swift_beginAccess();
    (*(v21 + 16))(a5, v37 + v36, v20);
LABEL_17:
    type metadata accessor for WidgetEntry.WidgetEntryError(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9BA8, &qword_1BF4F5FA8);
    swift_storeEnumTagMultiPayload();
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1Tm(&v82);
    return;
  }

  v51 = v35;
  v52 = v67;
  sub_1BF38C94C(v51, v67, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v28(v52, 1, v20) != 1)
  {
    (*(v21 + 32))(a5, v52, v20);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t CHSConfiguredWidgetDescriptor.duetWidgetViewIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[2] = v1;
  v3 = v1;
  v4 = sub_1BF3B253C(v3);
  v6 = v5;
  *a1 = v4;
  a1[1] = v5;

  v7 = [v3 uniqueIdentifier];
  sub_1BF4E8914();

  sub_1BF399080();
  v8 = sub_1BF4E9134();
  v10 = v9;

  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v4, v6);

  a1[3] = v8;
  a1[4] = v10;
  return result;
}

uint64_t sub_1BF3ADADC(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  v4 = sub_1BF4E82E4();
  v5 = (*(v3 + 8))(v4, v2, v3);

  if (v5)
  {

    return 0;
  }

  else
  {
    sub_1BF4225D4();
    v6 = swift_allocError();
    *v8 = 0xD00000000000001DLL;
    v8[1] = 0x80000001BF4FACA0;
  }

  return v6;
}

void sub_1BF3ADC00(uint64_t a1)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  os_unfair_lock_assert_owner(*(*(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock) + 16));
  if ((*(v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_shouldSilencePublisher) & 1) == 0)
  {
    v39 = v6;
    v40 = v12;
    v42 = v1;
    v19 = (v1 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry);
    swift_beginAccess();
    v20 = v19[3];
    v41 = v19;
    if (v20)
    {
      v38 = v4;
      v21 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v37 = &v37;
      v22 = *(v20 - 8);
      v23 = MEMORY[0x1EEE9AC00](v21);
      v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25, v23);
      v4 = v38;
      sub_1BF4E8334();
      (*(v22 + 8))(v25, v20);
      v26 = *(v4 + 56);
      v26(v18, 0, 1, v3);
    }

    else
    {
      v26 = *(v4 + 56);
      v26(v18, 1, 1, v3);
    }

    sub_1BF38C94C(a1, v43, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (v44)
    {
      __swift_project_boxed_opaque_existential_1(v43, v44);
      sub_1BF4E8334();
      v26(v15, 0, 1, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
    }

    else
    {
      sub_1BF38C9B4(v43, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      v26(v15, 1, 1, v3);
    }

    v27 = *(v7 + 48);
    sub_1BF38C94C(v18, v9, &qword_1EBDD9B00, &qword_1BF4F1E50);
    sub_1BF38C94C(v15, &v9[v27], &qword_1EBDD9B00, &qword_1BF4F1E50);
    v28 = *(v4 + 48);
    if (v28(v9, 1, v3) == 1)
    {
      sub_1BF38C9B4(v15, &qword_1EBDD9B00, &qword_1BF4F1E50);
      sub_1BF38C9B4(v18, &qword_1EBDD9B00, &qword_1BF4F1E50);
      if (v28(&v9[v27], 1, v3) == 1)
      {
        v29 = &qword_1EBDD9B00;
        v30 = &qword_1BF4F1E50;
        v31 = v9;
LABEL_15:
        sub_1BF38C9B4(v31, v29, v30);
        return;
      }
    }

    else
    {
      v32 = v40;
      sub_1BF38C94C(v9, v40, &qword_1EBDD9B00, &qword_1BF4F1E50);
      if (v28(&v9[v27], 1, v3) != 1)
      {
        v33 = v39;
        (*(v4 + 32))(v39, &v9[v27], v3);
        sub_1BF3BB364(&qword_1EDC9F0C0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v34 = v32;
        v35 = sub_1BF4E88C4();
        v36 = *(v4 + 8);
        v36(v33, v3);
        sub_1BF38C9B4(v15, &qword_1EBDD9B00, &qword_1BF4F1E50);
        sub_1BF38C9B4(v18, &qword_1EBDD9B00, &qword_1BF4F1E50);
        v36(v34, v3);
        sub_1BF38C9B4(v9, &qword_1EBDD9B00, &qword_1BF4F1E50);
        if (v35)
        {
          return;
        }

        goto LABEL_14;
      }

      sub_1BF38C9B4(v15, &qword_1EBDD9B00, &qword_1BF4F1E50);
      sub_1BF38C9B4(v18, &qword_1EBDD9B00, &qword_1BF4F1E50);
      (*(v4 + 8))(v32, v3);
    }

    sub_1BF38C9B4(v9, &qword_1EBDD97C8, &qword_1BF4F5FA0);
LABEL_14:
    sub_1BF38C94C(v41, v43, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    sub_1BF4E7C14();
    v31 = v43;
    v29 = &qword_1EBDD9AF0;
    v30 = &qword_1BF4F5DF8;
    goto LABEL_15;
  }
}

double sub_1BF3AE26C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF4E7B24();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  MEMORY[0x1EEE9AC00](v60);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v50 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v50 - v19;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock) + 16));
  sub_1BF3AEB90(&v63);
  if (*(&v64 + 1) == 1)
  {
    sub_1BF38C9B4(&v63, &qword_1EBDD9B30, &qword_1BF4F5E20);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v53 = a1;
  v54 = a2;
  v72[0] = v63;
  v72[1] = v64;
  v73 = v65;
  v69 = v66;
  v70 = v67;
  v71 = v68;
  sub_1BF38C94C(v72, &v63, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v61 = v9;
  if (*(&v64 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    sub_1BF4E8334();
    v22 = *(v9 + 56);
    v22(v20, 0, 1, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
  }

  else
  {
    sub_1BF38C9B4(&v63, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    v22 = *(v9 + 56);
    v22(v20, 1, 1, v8);
  }

  v23 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_currentEntry;
  swift_beginAccess();
  v51 = v23;
  v52 = v3;
  sub_1BF38C94C(v3 + v23, &v63, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v24 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v25 = __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v50[1] = v50;
    v26 = v8;
    v27 = *(v24 - 8);
    v28 = MEMORY[0x1EEE9AC00](v25);
    v30 = v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30, v28);
    sub_1BF38C9B4(&v63, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    sub_1BF4E8334();
    (*(v27 + 8))(v30, v24);
    v31 = v61;
    v22(v17, 0, 1, v26);
  }

  else
  {
    sub_1BF38C9B4(&v63, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    v31 = v61;
    v22(v17, 1, 1, v8);
    v26 = v8;
  }

  v32 = *(v60 + 48);
  sub_1BF38C94C(v20, v12, &qword_1EBDD9B00, &qword_1BF4F1E50);
  sub_1BF38C94C(v17, &v12[v32], &qword_1EBDD9B00, &qword_1BF4F1E50);
  v33 = *(v31 + 48);
  if (v33(v12, 1, v26) == 1)
  {
    sub_1BF38C9B4(v17, &qword_1EBDD9B00, &qword_1BF4F1E50);
    sub_1BF38C9B4(v20, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v34 = v26;
    v35 = v33(&v12[v32], 1, v26);
    v36 = v61;
    if (v35 == 1)
    {
      sub_1BF38C9B4(v12, &qword_1EBDD9B00, &qword_1BF4F1E50);
LABEL_17:
      sub_1BF38C9B4(v72, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v37 = v58;
  sub_1BF38C94C(v12, v58, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v33(&v12[v32], 1, v26) == 1)
  {
    sub_1BF38C9B4(v17, &qword_1EBDD9B00, &qword_1BF4F1E50);
    sub_1BF38C9B4(v20, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v36 = v61;
    v34 = v26;
    (*(v61 + 8))(v37, v26);
LABEL_14:
    sub_1BF38C9B4(v12, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    goto LABEL_15;
  }

  v44 = v61;
  v45 = &v12[v32];
  v46 = v59;
  (*(v61 + 32))(v59, v45, v26);
  sub_1BF3BB364(&qword_1EDC9F0C0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LODWORD(v60) = sub_1BF4E88C4();
  v47 = *(v44 + 8);
  v47(v46, v26);
  sub_1BF38C9B4(v17, &qword_1EBDD9B00, &qword_1BF4F1E50);
  sub_1BF38C9B4(v20, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v34 = v26;
  v47(v58, v26);
  v36 = v44;
  sub_1BF38C9B4(v12, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v60)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_1BF4E8FF4();
  sub_1BF3901C0(0, qword_1EDC9D660, 0x1E69E9BF8);
  v38 = sub_1BF4E90D4();
  v39 = v55;
  sub_1BF4E7B14();
  sub_1BF4E7AF4();

  (*(v56 + 8))(v39, v57);
  sub_1BF38C94C(v72, &v63, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v41 = v51;
  v40 = v52;
  sub_1BF38C94C(v52 + v51, v62, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  swift_beginAccess();
  sub_1BF3A5C18(&v63, v40 + v41, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  swift_endAccess();
  sub_1BF3ADC00(v62);
  sub_1BF38C9B4(v62, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  sub_1BF38C9B4(&v63, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  sub_1BF38C9B4(v72, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
  v42 = v59;
  (*(v36 + 16))(v59, v53, v34);
  v43 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_configuredDate;
  swift_beginAccess();
  (*(v36 + 40))(v40 + v43, v42, v34);
  swift_endAccess();
LABEL_18:
  result = *&v69;
  v48 = v70;
  v49 = v54;
  *v54 = v69;
  v49[1] = v48;
  *(v49 + 4) = v71;
  return result;
}

uint64_t sub_1BF3AEB90@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock) + 16));
  v8 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v2 + v8, &v26, &qword_1EBDD9AF8, &qword_1BF4F5E00);
  if (*(&v27 + 1))
  {
    sub_1BF38E610(&v26, v29);
    __swift_project_boxed_opaque_existential_1(v29, v30);
    sub_1BF4E85D4();
    sub_1BF38C94C(&v26, &v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    v9 = *(&v22 + 1);
    sub_1BF38C9B4(&v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (v9)
    {
      goto LABEL_6;
    }

    sub_1BF38C94C(v24, &v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    v10 = *(&v22 + 1);
    sub_1BF38C9B4(&v21, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
    if (!v10)
    {
      goto LABEL_6;
    }

    v19[1] = v31;
    result = __swift_project_boxed_opaque_existential_1(v29, v30);
    v12 = v25;
    if (v25)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v24, v25);
      v19[0] = v19;
      v14 = *(v12 - 8);
      v15 = MEMORY[0x1EEE9AC00](v13);
      v17 = v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      sub_1BF4E8334();
      (*(v14 + 8))(v17, v12);
      sub_1BF4E85D4();
      (*(v5 + 8))(v7, v4);
      sub_1BF38C9B4(&v26, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      v26 = v21;
      v27 = v22;
      v28 = v23;
      sub_1BF3A3A54(v20, v24, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
LABEL_6:
      v18 = v27;
      *a2 = v26;
      *(a2 + 16) = v18;
      *(a2 + 32) = v28;
      sub_1BF38C94C(v24, a2 + 40, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      sub_1BF38C9B4(v24, &qword_1EBDD9AF0, &qword_1BF4F5DF8);
      return __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    __break(1u);
  }

  else
  {
    result = sub_1BF38C9B4(&v26, &qword_1EBDD9AF8, &qword_1BF4F5E00);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
  }

  return result;
}

void sub_1BF3AEF88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = (v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_contentLoadError);
  *v6 = a1;
  v6[1] = a2;

  v7 = *(v5 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_1BF3AEFFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = WidgetDescriptorPredicate.evaluate(with:)(a1);
  *a2 = result;
  return result;
}

void *_s9ChronoKit25WidgetDescriptorPredicateV8evaluate4withSo09CHSWidgetD0CSgSDySo20CHSExtensionIdentityCSayAGGG_tF_0(uint64_t a1)
{
  v24 = *v1;
  v3 = [*v1 extensionIdentity];
  v4 = v3;
  if (*(a1 + 16) && (v5 = sub_1BF3916CC(v3), (v6 & 1) != 0))
  {
    v7 = *(*(a1 + 56) + 8 * v5);

    if (v7 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB59570](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 kind];
        v14 = sub_1BF4E8914();
        v16 = v15;

        v17 = [v24 kind];
        v18 = sub_1BF4E8914();
        v20 = v19;

        if (v14 == v18 && v16 == v20)
        {

          return v11;
        }

        v22 = sub_1BF4E9734();

        if (v22)
        {

          return v11;
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BF3AF240()
{
  v1 = type metadata accessor for UnfairLock();
  sub_1BF4E8834();
  v2 = sub_1BF4E8834();

  sub_1BF38D774(sub_1BF3AF220, v0, v1, v2, &off_1F3DEE010);

  return v4;
}

uint64_t sub_1BF3AF390(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1BF4E8DB4();
  if (!v19)
  {
    return sub_1BF4E8BF4();
  }

  v41 = v19;
  v45 = sub_1BF4E93E4();
  v32 = sub_1BF4E93F4();
  sub_1BF4E9394();
  result = sub_1BF4E8DA4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1BF4E8DF4();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1BF4E93D4();
      result = sub_1BF4E8DC4();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF3AF7B0(void *a1, void *a2)
{
  result = (*(v2 + 32))(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

double sub_1BF3AF830@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  *a2 = *(v2 + v4);

  return result;
}

uint64_t sub_1BF3AF8B8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, void *a5@<X8>)
{
  v11 = *v5;
  v12 = sub_1BF3AF970(a1, v11, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = swift_allocObject();
  v14 = type metadata accessor for DefaultFeatureFlagEvaluator();
  result = swift_allocObject();
  v13[6] = v14;
  v13[7] = &off_1F3DF42A8;
  v13[2] = v12;
  v13[3] = result;
  *a5 = v13;
  return result;
}

uint64_t sub_1BF3AF970(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = a2;
  v11 = v10;
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      v16 = v11;
      v13 = sub_1BF4B0BF0(v15, v8, a1, v16, a3);
      MEMORY[0x1BFB5A5D0](v15, -1, -1);

      return v13;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v8);
  v12 = v11;
  v13 = sub_1BF3AFB28(v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, v12, a3);

  if (v3)
  {
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_1BF3AFB28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
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
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
    v17 = v16;

    v18 = sub_1BF4E90A4();

    if (v18)
    {
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return a5(v22, a2, v23, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return a5(v22, a2, v23, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF3AFCA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1BF4E94C4();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v31 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(*(v6 + 48) + 8 * v18);
    v20 = *(*(v6 + 56) + 8 * v18);
    v21 = v19;

    result = sub_1BF4E9094();
    v22 = -1 << *(v11 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v14 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v11 + 48) + 8 * v25) = v21;
    *(*(v11 + 56) + 8 * v25) = v20;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v31;
    if (!v7)
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

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

uint64_t DescriptorCollection.mapDescriptors<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v14[2] = DescriptorCollection.descriptors.getter();
  v13[2] = *(v7 + 80);
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = a2;
  v8 = sub_1BF4E8CA4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1BF3AF390(sub_1BF3AF7B0, v13, v8, a3, v9, WitnessTable, MEMORY[0x1E69E7288], v14);

  return v11;
}

uint64_t DescriptorCollection.descriptors.getter()
{
  swift_getKeyPath();
  sub_1BF4E9034();
  sub_1BF4E8CA4();
  sub_1BF391F90(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
  sub_1BF4E8834();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v0 = sub_1BF4E8B34();

  return v0;
}

void sub_1BF3B0160(id *a1)
{
  v3 = *a1;

  swift_getAtKeyPath();
}

unint64_t sub_1BF3B01D8()
{
  result = qword_1EDC9FFB0;
  if (!qword_1EDC9FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FFB0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF3B02DC()
{
  v1 = *v0;
  v2 = 0xD000000000000014;
  if (v1 != 6)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD00000000000001ALL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  if (v1 != 2)
  {
    v4 = 0xD000000000000018;
  }

  v5 = 0xD000000000000015;
  if (!*v0)
  {
    v5 = 0xD00000000000001CLL;
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

double sub_1BF3B03C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

void *sub_1BF3B0414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v99 = *v3;
  v6 = v99;
  v7 = v99[197];
  v107 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v86 - v10;
  v11 = v6[198];
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86 - v16;
  swift_beginAccess();
  v18 = v6[203];
  v109 = v11;
  sub_1BF4E8834();
  v103 = v3;
  v19 = v6[201];

  v106 = v7;
  v104 = v19;
  sub_1BF4E8854();

  v20 = v113;
  if (!v113)
  {
    v21 = MEMORY[0x1E69E6530];
    v22 = v109;
    swift_getTupleTypeMetadata2();
    v23 = sub_1BF4E8BF4();
    v20 = sub_1BF3B0FE8(v23, v22, v21, v18, v24);
  }

  v116 = v20;
  result = sub_1BF4E8854();
  v26 = v113;
  if (BYTE8(v113))
  {
    v26 = 0;
  }

  v27 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v27 < 1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v90 = v18;
  v28 = v12 + 16;
  v101 = *(v12 + 16);
  v101(v17, a2, v109);
  v88 = v27;
  *&v113 = v27;
  BYTE8(v113) = 0;
  v97 = v12;
  v100 = v17;
  sub_1BF4E8864();
  v105 = a2;
  v30 = v107 + 16;
  v29 = *(v107 + 16);
  v31 = v106;
  v29(v108, a1, v106);
  v32 = v116;
  *&v110 = v116;
  swift_beginAccess();
  sub_1BF4E8834();
  v91 = v32;

  sub_1BF4E8864();
  swift_endAccess();
  v33 = v92;
  v102 = a1;
  v34 = v31;
  v35 = v29;
  v36 = v28;
  v37 = v101;
  v29(v92, a1, v34);
  v38 = v93;
  v98 = v36;
  v37(v93, v105, v109);
  v39 = sub_1BF4E7B34();
  v40 = sub_1BF4E8E84();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v89 = v30;
    v42 = v41;
    v87 = swift_slowAlloc();
    *&v113 = v87;
    *v42 = 136446722;
    v43 = v106;
    v29(v108, v33, v106);
    v44 = *(v107 + 8);
    v44(v33, v43);
    LODWORD(v92) = v40;
    v45 = sub_1BF4E96A4();
    v86 = v39;
    v47 = v46;
    v44(v108, v43);
    v48 = sub_1BF38D65C(v45, v47, &v113);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2082;
    v49 = v100;
    v50 = v109;
    v101(v100, v38, v109);
    v51 = *(v97 + 8);
    v51(v38, v50);
    v52 = sub_1BF4E96A4();
    v54 = v53;
    v55 = v50;
    v35 = v29;
    v51(v49, v55);
    v37 = v101;
    v56 = v108;
    v57 = sub_1BF38D65C(v52, v54, &v113);

    *(v42 + 14) = v57;
    *(v42 + 22) = 2050;
    *(v42 + 24) = v88;
    v58 = v86;
    _os_log_impl(&dword_1BF389000, v86, v92, "%{public}s:%{public}s assertion: acquired (%{public}ld)", v42, 0x20u);
    v59 = v87;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v59, -1, -1);
    MEMORY[0x1BFB5A5D0](v42, -1, -1);

    v60 = v97;
  }

  else
  {
    v60 = v97;
    (*(v97 + 8))(v38, v109);
    (*(v107 + 8))(v33, v106);

    v49 = v100;
    v56 = v108;
  }

  v61 = swift_allocObject();
  v62 = v103;
  swift_weakInit();
  v63 = v106;
  v35(v56, v102, v106);
  v64 = v49;
  v65 = v109;
  v37(v64, v105, v109);
  v66 = v63;
  v67 = v107;
  v68 = (*(v107 + 80) + 88) & ~*(v107 + 80);
  v69 = (v95 + *(v60 + 80) + v68) & ~*(v60 + 80);
  v70 = v60;
  v71 = swift_allocObject();
  *(v71 + 2) = v66;
  *(v71 + 3) = v65;
  v72 = v99;
  *(v71 + 4) = v99[199];
  v73 = v104;
  *(v71 + 5) = v72[200];
  *(v71 + 6) = v73;
  v74 = v90;
  *(v71 + 7) = v72[202];
  *(v71 + 8) = v74;
  *(v71 + 9) = v72[204];
  *(v71 + 10) = v61;
  (*(v67 + 32))(&v71[v68], v56, v66);
  (*(v70 + 32))(&v71[v69], v100, v65);
  v75 = type metadata accessor for BlockAssertion();
  v76 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v77 = swift_allocObject();
  v78 = swift_slowAlloc();
  *v78 = 0;
  *(v77 + 16) = v78;
  v76[2] = v77;
  v76[3] = sub_1BF3E4B98;
  v76[4] = v71;
  v79 = v62 + qword_1EDCA6808;
  swift_beginAccess();
  v80 = *v79;
  if (*v79)
  {
    v81 = *(v79 + 8);
    v114 = v75;
    v115 = &protocol witness table for BlockAssertion;
    *&v113 = v76;
    sub_1BF391990(v80, v81);

    v82 = v102;
    v80(&v110, &v113, v102, v105);
    sub_1BF3B0E64(v80, v81);
    __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  }

  else
  {
    v111 = v75;
    v112 = &protocol witness table for BlockAssertion;
    *&v110 = v76;

    v82 = v102;
  }

  sub_1BF38E610(&v110, &v113);
  v83 = v62 + qword_1EDCA6810;
  swift_beginAccess();
  v84 = *v83;
  if (*v83)
  {
    v85 = *(v83 + 8);
    sub_1BF391990(v84, v85);
    v84(&v113, v82);
    sub_1BF3B0E64(v84, v85);

    __swift_destroy_boxed_opaque_existential_1Tm(&v113);
  }

  else
  {

    sub_1BF38E610(&v113, v96);
  }
}

double sub_1BF3B0E64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1BF3B0E74()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3B0EAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 88) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v6 + 8))(v0 + v8, v2);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

unint64_t sub_1BF3B0FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (sub_1BF4E8C34())
  {
    sub_1BF4E94D4();
    v14 = sub_1BF4E94C4();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1BF4E8C34();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v11;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v10 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_1BF4E8C14())
        {
          (*(v10 + 16))(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1BF4E9304();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1BF3B794C(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1BF3B1310()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key) family];

  return MEMORY[0x1EEDE7DF8](v1);
}

void EnvironmentModifiers.encode(to:)(void *a1)
{
  v2 = v1;
  v41[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v32 - v5;
  v6 = sub_1BF4E6F14();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9548, &qword_1BF4F1688);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3BC35C();
  sub_1BF4E9864();
  v13 = v2;
  LOBYTE(v41[0]) = 0;
  v14 = v39;
  sub_1BF4E9634();
  if (v14)
  {
    (*(v10 + 8))(v12, v9);
    return;
  }

  v16 = v37;
  v15 = v38;
  v39 = v8;
  LOBYTE(v41[0]) = 1;
  sub_1BF4E9664();
  v41[0] = *(v13 + 16);
  v40 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9528, &qword_1BF4F1670);
  sub_1BF3BC3B0(&unk_1EDC9F168, qword_1EDC9F1A8, MEMORY[0x1E6985758], MEMORY[0x1E69E64F0]);
  sub_1BF4E9674();
  v17 = v10;
  LOBYTE(v41[0]) = 3;
  sub_1BF4E9634();
  v18 = type metadata accessor for EnvironmentModifiers(0);
  LOBYTE(v41[0]) = 4;
  sub_1BF4E9634();
  LOBYTE(v41[0]) = 6;
  sub_1BF4E9664();
  v35 = objc_opt_self();
  v19 = *(v18 + 40);
  v33 = v13;
  sub_1BF3BC63C(*(v13 + v19));
  sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
  v20 = sub_1BF4E8B84();

  v41[0] = 0;
  v21 = [v35 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:v41];

  v22 = v41[0];
  if (!v21)
  {
    v25 = v22;
    sub_1BF4E6FF4();

    swift_willThrow();
LABEL_4:
    (*(v17 + 8))(v12, v9);
    return;
  }

  v35 = sub_1BF4E71C4();
  v24 = v23;

  v41[0] = v35;
  v41[1] = v24;
  v34 = v24;
  v40 = 5;
  sub_1BF3B01D8();
  sub_1BF4E9674();
  v26 = v15;
  sub_1BF38C94C(v33 + *(v18 + 32), v15, &qword_1EBDD9518, &qword_1BF4F1660);
  v27 = v36;
  v28 = v15;
  v29 = v16;
  if ((*(v36 + 48))(v28, 1, v16) != 1)
  {
    v30 = v39;
    (*(v27 + 32))(v39, v26, v29);
    LOBYTE(v41[0]) = 7;
    sub_1BF3A43F4(&qword_1EBDD9550, MEMORY[0x1E6968278], MEMORY[0x1E6968280]);
    sub_1BF4E9674();
    v31 = sub_1BF3B03C0(v35, v34);
    (*(v27 + 8))(v30, v29, v31);
    goto LABEL_4;
  }

  (*(v17 + 8))(v12, v9);
  sub_1BF3B03C0(v35, v34);
  sub_1BF38C9B4(v26, &qword_1EBDD9518, &qword_1BF4F1660);
}

uint64_t sub_1BF3B1980(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1BF3B19C0(a1);
  return v2;
}

uint64_t *sub_1BF3B19C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1 + *(*v1 + 104);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  v4 = v1 + *(*v1 + 112);
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v1 + *(*v1 + 120)) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

void *sub_1BF3B1A94(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90C8, &qword_1BF4F06A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90D0, &qword_1BF4F06A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void static NSRunLoop.performAfterSwiftUILayout(_:)(uint64_t a1, uint64_t a2, double a3)
{
  BSDispatchQueueAssertMain();
  v5 = CFRunLoopGetCurrent();
  if (!qword_1EDC9F978)
  {
    v6 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0, sub_1BF3AC560, 0);
    v7 = qword_1EDC9F978;
    qword_1EDC9F978 = v6;
    v8 = v6;

    if (!v8)
    {
      goto LABEL_18;
    }

    CFRunLoopAddObserver(v5, v8, *MEMORY[0x1E695E8D0]);
  }

  v9 = CFRunLoopCopyCurrentMode(v5);
  if (v9)
  {
    if (qword_1EDC9F978)
    {
      v10 = v9;
      if (CFRunLoopContainsObserver(v5, qword_1EDC9F978, v9))
      {
LABEL_9:

        goto LABEL_10;
      }

      if (qword_1EDC9F978)
      {
        CFRunLoopAddObserver(v5, qword_1EDC9F978, v10);
        goto LABEL_9;
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (qword_1EDC9F730 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  v12 = off_1EDC9F738;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_1EDC9F738 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1BF3B1A94(0, v12[2] + 1, 1, v12);
    off_1EDC9F738 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1BF3B1A94((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = sub_1BF3A2C60;
  v16[5] = v11;
  off_1EDC9F738 = v12;
  swift_endAccess();
}

uint64_t sub_1BF3B1DD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1BF3B1E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *v3;
  v18 = *(v3 + qword_1EDC9AF58);
  v10[1] = v6[5];
  v11 = *(v5 + 12);
  v12 = a3;
  v7 = *(v6 + 120);
  v13 = *(v6 + 104);
  v14 = v7;
  v15 = *(v5 + 17);
  v16 = a1;
  v17 = a2;
  v8 = type metadata accessor for UnfairLock();

  sub_1BF38D774(sub_1BF3B1F84, v10, v8, a3, &off_1F3DEE010);

  return result;
}

uint64_t sub_1BF3B1FAC(uint64_t *a1, void (*a2)(__int128 *))
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  v10 = *(*a1 + 80);
  v11 = v5;
  v6 = *(v4 + 128);
  v12 = *(v4 + 112);
  v13 = v6;
  v7 = type metadata accessor for StatefulStoreMutator(0, &v10);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(&v11 + 1) = v7;
  *&v12 = swift_getWitnessTable();
  *&v10 = v8;

  a2(&v10);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v10);
}

uint64_t sub_1BF3B20F8@<X0>(void *a3@<X8>)
{
  v5 = *v3;
  swift_beginAccess();
  v6 = *(v5 + 96);
  sub_1BF4E8834();

  sub_1BF4E8854();

  if (!v8)
  {
    return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  }

  sub_1BF4E8854();
}

uint64_t StatefulStoreMutator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

_DWORD *Assertion.mergingLifetimes(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v12, a2, v10);
  v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a1;
  (*(v8 + 32))(&v14[v13], v11, a2);
  v15 = type metadata accessor for BlockAssertion();
  v16 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();

  result = swift_slowAlloc();
  *result = 0;
  *(v17 + 16) = result;
  v16[2] = v17;
  v16[3] = sub_1BF4A68BC;
  v16[4] = v14;
  a4[3] = v15;
  a4[4] = &protocol witness table for BlockAssertion;
  *a4 = v16;
  return result;
}

uint64_t sub_1BF3B244C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF3B253C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v35 - v5;
  if ([a1 isSuggestion])
  {
    v7 = [a1 container];
    if (v7)
    {
      v8 = v7;
      if ([v7 isStack])
      {
        v9 = [v8 uniqueIdentifier];
        v10 = sub_1BF4E8914();
        v12 = v11;

        v40[0] = v10;
        v40[1] = v12;
        v38 = 14906;
        v39 = 0xE200000000000000;
        v36 = 0x413325413325;
        v37 = 0xE600000000000000;
        sub_1BF399080();
        v13 = sub_1BF4E9134();
        v15 = v14;

        strcpy(v40, "suggestion::");
        BYTE5(v40[1]) = 0;
        HIWORD(v40[1]) = -5120;
        MEMORY[0x1BFB58C90](v13, v15);

        return v40[0];
      }
    }
  }

  v17 = [a1 widget];
  v18 = [v17 extensionIdentity];
  v19 = [v17 kind];
  v20 = sub_1BF4E8914();
  v22 = v21;

  v23 = [v17 intentReference];
  v24 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  v25 = *(v3 + 16);
  v35[0] = v18;
  v25(v6, &v18[v24], v2);
  if (v23)
  {
    v26 = [v23 stableHash];
    v38 = 14906;
    v39 = 0xE200000000000000;
    v36 = v26;
    v27 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v27);

    v29 = v38;
    v28 = v39;
  }

  else
  {
    v29 = 0;
    v28 = 0xE000000000000000;
  }

  v38 = v20;
  v39 = v22;
  v36 = 14906;
  v37 = 0xE200000000000000;
  v35[1] = 0x413325413325;
  v35[2] = 0xE600000000000000;
  sub_1BF399080();
  v30 = sub_1BF4E9134();
  v32 = v31;
  v38 = sub_1BF4E76B4();
  v39 = v33;
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v30, v32);

  MEMORY[0x1BFB58C90](v29, v28);

  v16 = v38;
  (*(v3 + 8))(v6, v2);

  return v16;
}

uint64_t WidgetEntryKey.host.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetEntryKey(0) + 24);

  return sub_1BF3988F8(v3, a1);
}

uint64_t ReloadTaskPair.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1BF3B29A4()
{
  os_unfair_lock_assert_owner(*(*(v0 + qword_1EDC9AF58) + 16));
  result = *(v0 + qword_1EDC9AFA0);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + qword_1EDC9AFA0) = result + 1;
  }

  return result;
}

uint64_t sub_1BF3B29E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v74 = a3;
  v86 = a2;
  v8 = *v4;
  v85 = sub_1BF4E7B54();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v8 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v20 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v82 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  v25 = *(v8 + 88);
  v26 = *(v8 + 96);
  v27 = *(v8 + 112);
  v28 = *(v8 + 120);
  v29 = *(v8 + 128);
  v30 = *(v8 + 136);
  *&v93 = v10;
  *(&v93 + 1) = v25;
  v80 = v25;
  v89 = v26;
  v94 = v26;
  v79 = v27;
  v95 = v27;
  v96 = v28;
  v78 = v28;
  v77 = v29;
  v97 = v29;
  v98 = v30;
  v76 = v30;
  type metadata accessor for ReloadTaskPair(0, &v93);
  v81 = ReloadTaskPair.__allocating_init()();
  v31 = sub_1BF39B43C();
  v90 = v16;
  v87 = a1;
  v88 = v24;
  if (v31)
  {
    v73 = a4;
    v32 = *(v11 + 16);
    v91 = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v19, a1, v10);

    v33 = sub_1BF4E7B34();
    v34 = sub_1BF4E8E84();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v11;
    v92 = v32;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v93 = v71;
      *v37 = 134349314;
      *(v37 + 4) = v73;
      *(v37 + 12) = 2082;
      v70 = v33;
      v38 = v90;
      v32(v90, v19, v10);
      v72 = v36;
      v39 = *(v36 + 8);
      v39(v19, v10);
      v40 = v34;
      v41 = sub_1BF4E96A4();
      v43 = v42;
      v39(v38, v10);
      v36 = v72;
      v44 = sub_1BF38D65C(v41, v43, &v93);

      *(v37 + 14) = v44;
      v33 = v70;
      _os_log_impl(&dword_1BF389000, v70, v40, "Task [%{public}llu] %{public}s Replacing all tasks", v37, 0x16u);
      v45 = v71;
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1BFB5A5D0](v45, -1, -1);
      MEMORY[0x1BFB5A5D0](v37, -1, -1);
    }

    else
    {
      (*(v11 + 8))(v19, v10);
    }

    v48 = v75;
    sub_1BF3B4CAC(v74, v88);

    a4 = v73;
    a1 = v87;
    v16 = v90;
    v47 = v91;
    v46 = v92;
  }

  else
  {
    sub_1BF3B31BC(v74, v24);
    v46 = *(v11 + 16);
    v47 = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36 = v11;
    v48 = v75;
  }

  v49 = qword_1EDC99498;
  v91 = v47;
  v92 = v46;
  v46(v48, a1, v10);
  v75 = v49;
  v50 = sub_1BF4E7B34();
  v51 = sub_1BF4E8E84();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v93 = v74;
    *v52 = 134349314;
    *(v52 + 4) = a4;
    *(v52 + 12) = 2082;
    v92(v16, v48, v10);
    v53 = *(v36 + 8);
    v53(v48, v10);
    v54 = sub_1BF4E96A4();
    v55 = a4;
    v57 = v56;
    v53(v90, v10);
    v16 = v90;
    v58 = sub_1BF38D65C(v54, v57, &v93);
    a4 = v55;

    *(v52 + 14) = v58;
    _os_log_impl(&dword_1BF389000, v50, v51, "Task [%{public}llu] %{public}s Dispatching new task", v52, 0x16u);
    v59 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x1BFB5A5D0](v59, -1, -1);
    v60 = v52;
    a1 = v87;
    MEMORY[0x1BFB5A5D0](v60, -1, -1);
  }

  else
  {
    (*(v36 + 8))(v48, v10);
  }

  *&v61 = v10;
  *(&v61 + 1) = v80;
  v94 = v89;
  v93 = v61;
  v95 = v79;
  v96 = v78;
  v97 = v77;
  v98 = v76;
  type metadata accessor for ReloadTask(0, &v93);
  v92(v16, a1, v10);
  v62 = v88;
  v63 = v82;
  sub_1BF3B31BC(v88, v82);
  v64 = v84;
  (*(v83 + 16))(v84, &v75[v5], v85);
  v65 = v86;

  ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(a4, v16, v65, v63, v64);

  v67 = v81;
  sub_1BF3A8AF8(v66);

  sub_1BF3A93B4(v62);
  return v67;
}

uint64_t sub_1BF3B31BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ReloadTask.init(identifier:key:variantKeys:configuration:logger:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1BF3B32A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v24 = a1;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - v8;
  os_unfair_lock_assert_owner(*(*(v3 + qword_1EDC9AF58) + 16));
  v10 = sub_1BF39B43C();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BF39B43C();
    if (v12)
    {
      v23 = v9;
      v13 = *(*v11 + 160);
      v14 = *(v11 + v13);
      if (v14 == *(v12 + *(*v12 + 160)))
      {
        v15 = sub_1BF3AB3E8();
        if (v15)
        {
          v22 = v15;
          v16 = sub_1BF3AB3E8();
          v9 = v23;
          if (v16 && (v17 = *(v22 + *(*v22 + 160)), v17 != *(v16 + *(*v16 + 160))))
          {

            sub_1BF3B61AC(v17);

            v11 = 0;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_15;
        }

        v11 = 0;
      }

      else
      {

        sub_1BF3B61AC(v14);
        if (sub_1BF3AB3E8())
        {
          v18 = *(v11 + v13);

          sub_1BF3B61AC(v18);
        }
      }

      v9 = v23;
      goto LABEL_15;
    }
  }

  v11 = sub_1BF39B43C();
  if (v11)
  {
  }

LABEL_15:
  (*(v7 + 16))(v9, v24, v6);
  v30 = a3;
  swift_beginAccess();
  v19 = *(v5 + 104);

  v25 = v6;
  v26 = *(v5 + 88);
  v27 = v19;
  v20 = *(v5 + 128);
  v24 = *(v5 + 112);
  v28 = v24;
  v29 = v20;
  type metadata accessor for ReloadTaskPair(255, &v25);
  sub_1BF4E8834();
  sub_1BF4E8864();
  swift_endAccess();
  return v11;
}

uint64_t ReloadTaskPairResolver.deinit()
{
  v1 = qword_1EDC99498;
  v2 = sub_1BF4E7B54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

double sub_1BF3B3664(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_1BF3B1E44(sub_1BF3B1F64, v3, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1BF3B36F0(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF8, &qword_1BF4ED520);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = sub_1BF4E8424();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38C8B4(&qword_1EDC9D5C0, &qword_1EBDD8BF8, &qword_1BF4ED520, MEMORY[0x1E6993F88]);
  sub_1BF4E7034();
  v21 = v15;
  v22 = a1;
  sub_1BF4E7614();
  (*(v24 + 8))(v5, v3);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1BF38C9B4(v11, &qword_1EBDD8AF8, &qword_1BF4EC370);
  }

  v17 = v21;
  (*(v13 + 32))(v21, v11, v12);
  v18 = sub_1BF4E8404();
  v19 = v22;
  sub_1BF4C6D38(v18);

  (*(v13 + 56))(v8, 1, 1, v12);
  sub_1BF3F7A24(v19, 0xD00000000000002DLL, 0x80000001BF4F9630, v8);
  sub_1BF38C9B4(v8, &qword_1EBDD8AF8, &qword_1BF4EC370);
  return (*(v13 + 8))(v17, v12);
}

double sub_1BF3B3A74(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + qword_1EDC9AF58) + 16));
  if ((*(*v2 + 1544))(a1, a2))
  {
    v6 = sub_1BF3B3B34(a1, a2);
    if (v6)
    {
      sub_1BF397638(v6);
    }
  }

  return result;
}

void *sub_1BF3B3B34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v5 = *v2;
  v68 = sub_1BF4E7B54();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v5 + 80);
  v61 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v48[-v14];
  os_unfair_lock_assert_owner(*(*(v3 + qword_1EDC9AF58) + 16));
  swift_beginAccess();
  v15 = *(v5 + 88);
  v71 = *(v5 + 96);
  v16 = *(v5 + 112);
  v17 = *(v5 + 120);
  v18 = *(v5 + 128);
  v19 = *(v5 + 136);

  *&v73 = v10;
  *(&v73 + 1) = v15;
  v70 = v15;
  v74 = v71;
  v75 = v16;
  v76 = v17;
  v63 = v17;
  v77 = v18;
  v78 = v19;
  v62 = v19;
  type metadata accessor for ReloadTaskPair(0, &v73);
  sub_1BF4E8854();

  if (v73)
  {
    v64 = v73;
  }

  else
  {
    v64 = ReloadTaskPair.__allocating_init()();
  }

  v69 = sub_1BF3B29A4();
  swift_beginAccess();

  sub_1BF4E8854();

  v60 = v73;
  swift_beginAccess();
  sub_1BF4E8834();

  result = sub_1BF4E8854();
  v58 = v73;
  if (!v73)
  {
    __break(1u);
    goto LABEL_11;
  }

  v57 = v9;

  swift_beginAccess();

  v56 = v16;
  result = sub_1BF4E8854();
  if (!v73)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  nullsub_1();
  v22 = v21;

  v72 = v22;
  sub_1BF4E87B4();
  swift_getWitnessTable();
  v55 = sub_1BF4E8D94();
  v23 = qword_1EDC9AF50;
  v24 = v61;
  v25 = *(v61 + 16);
  v26 = v59;
  v25(v59, a1, v10);
  v54 = v23;
  v27 = sub_1BF4E7B34();
  v28 = sub_1BF4E8E84();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v52 = a1;
    v30 = v29;
    v31 = swift_slowAlloc();
    v51 = v18;
    v50 = v31;
    *&v73 = v31;
    *v30 = 134349314;
    *(v30 + 4) = v69;
    *(v30 + 12) = 2082;
    v49 = v28;
    v32 = v53;
    v25(v53, v26, v10);
    v33 = *(v24 + 8);
    v33(v26, v10);
    v34 = sub_1BF4E96A4();
    v36 = v35;
    v33(v32, v10);
    v37 = sub_1BF38D65C(v34, v36, &v73);
    v38 = v69;

    *(v30 + 14) = v37;
    _os_log_impl(&dword_1BF389000, v27, v49, "Task [%{public}llu] %{public}s Preparing reload", v30, 0x16u);
    v39 = v50;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v18 = v51;
    MEMORY[0x1BFB5A5D0](v39, -1, -1);
    v40 = v30;
    a1 = v52;
    MEMORY[0x1BFB5A5D0](v40, -1, -1);
  }

  else
  {
    (*(v24 + 8))(v26, v10);

    v38 = v69;
  }

  v41 = v57;
  sub_1BF3B43B0();

  *&v42 = v10;
  *(&v42 + 1) = v70;
  v74 = v71;
  v73 = v42;
  v75 = v56;
  v76 = v63;
  v77 = v18;
  v78 = v62;
  type metadata accessor for ReloadTaskPairResolver(0, &v73);
  v43 = *(v3 + qword_1EDC9AFC0);
  v44 = v66;
  (*(v67 + 16))(v66, v3 + v54, v68);
  v45 = v64;
  ReloadTaskPairResolver.__allocating_init(taskPair:allowDebounce:logger:)(v64, v43, v44);
  LOBYTE(v73) = v60;

  v46 = sub_1BF3B460C(a1, v55, v41, v38, &v73);

  v47 = sub_1BF3B32A8(a1, v45, v46);

  sub_1BF45EABC(v41, type metadata accessor for ReloadConfiguration);
  return v47;
}

uint64_t sub_1BF3B43F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 160);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v3 + *(v7 + 176), v8, v10);
  (*(*(v7 + 168) + 48))(a1, a2, a3, v8);
  return (*(v9 + 8))(v12, v8);
}

uint64_t ReloadTaskPairResolver.__allocating_init(taskPair:allowDebounce:logger:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + qword_1EDC994A8) = a1;
  *(v6 + qword_1EDC994A0) = a2;
  v7 = qword_1EDC99498;
  v8 = sub_1BF4E7B54();
  (*(*(v8 - 8) + 32))(v6 + v7, a3, v8);
  return v6;
}

uint64_t sub_1BF3B460C(uint64_t a1, NSObject *a2, void *a3, uint64_t a4, char *a5)
{
  v10 = *a5;
  if (sub_1BF3B4708(a3, a2, &v10))
  {

    return sub_1BF3B29E8(a1, a2, a3, a4);
  }

  else if (sub_1BF4CA89C())
  {

    return sub_1BF4C9D84(a1, a2, a3, a4);
  }

  else
  {
    sub_1BF4CAA08(a1, a3, a4);
  }
}

uint64_t sub_1BF3B4708(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 == 3)
  {
    v8 = 0;
    return v8 & 1;
  }

  v9 = sub_1BF39B43C();
  if (v9 && (v10 = *(v5 + 24), *(v9 + *(*v9 + 168) + v10) >> 61 == 3) && *(a1 + v10) >> 61 == 3 || !sub_1BF39B43C())
  {
LABEL_9:
    v8 = 1;
    return v8 & 1;
  }

  result = sub_1BF39B43C();
  if (result)
  {
    sub_1BF3B31BC(result + *(*result + 168), v7);
    v12 = sub_1BF3C4704(v7);
    sub_1BF3A93B4(v7);
    if (v12)
    {
      goto LABEL_9;
    }

    result = sub_1BF39B43C();
    if (result)
    {

      v13 = sub_1BF4E8D54();

      v8 = v13 ^ 1;
      return v8 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *ReloadTask.init(identifier:key:variantKeys:configuration:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a4;
  v25 = a5;
  v10 = *v5;
  v11 = sub_1BF4E80A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v6[*(v10 + 176)];
  *v15 = 0;
  v15[8] = 1;
  v16 = *(*v6 + 184);
  sub_1BF4E8084();
  v17 = sub_1BF4E8074();
  (*(v12 + 8))(v14, v11);
  *&v6[v16] = v17;
  v18 = *(*v6 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9010, &qword_1BF4F0108);
  v19 = swift_allocObject();
  *&v6[v18] = v19;
  *(v19 + 16) = 0;
  v20 = &v6[*(*v6 + 208)];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v6[*(*v6 + 216)] = 0;
  (*(*(*(v10 + 80) - 8) + 32))(&v6[*(*v6 + 144)], a2);
  *&v6[*(*v6 + 152)] = a3;
  *&v6[*(*v6 + 160)] = a1;
  sub_1BF3B4B88(v24, &v6[*(*v6 + 168)]);
  v21 = *(*v6 + 192);
  v22 = sub_1BF4E7B54();
  (*(*(v22 - 8) + 32))(&v6[v21], v25, v22);
  return v6;
}

uint64_t sub_1BF3B4B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ReloadTaskPairResolver.__deallocating_deinit()
{
  ReloadTaskPairResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF3B4C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF3B4CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = sub_1BF4E7334();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - v10;
  v11 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for ReloadConfiguration(0);
  v20 = v19[6];
  v21 = *(v3 + v20);
  v55 = *(a1 + v20);
  v22 = v55;
  v56 = v21;
  sub_1BF39C510(v21);
  sub_1BF39C510(v22);
  sub_1BF3B514C(&v56, &v55, &v57);
  sub_1BF39C9A4(v55);
  sub_1BF39C9A4(v56);
  v23 = v19[5];
  if (*(v3 + v23))
  {
    v24 = 1;
  }

  else
  {
    v24 = *(a1 + v23);
  }

  v53 = v24;
  v49 = v8;
  v25 = v19[8];
  if (*(v3 + v25))
  {
    v26 = 1;
  }

  else
  {
    v26 = *(a1 + v25);
  }

  v52 = v26;
  v51 = v57;
  sub_1BF39B31C(v3, v18, type metadata accessor for ReloadConfiguration.ReloadType);
  v27 = *(v6 + 48);
  if (v27(v18, 1, v5) == 1)
  {
    v28 = v54;
    result = (*(v6 + 56))(v54, 1, 1, v5);
    v30 = *(a1 + v19[7]);
    v31 = v19[9];
    v32 = *(a1 + v31);
    v33 = (v28 + v31);
    goto LABEL_21;
  }

  v46 = v20;
  v34 = v50;
  v47 = *(v6 + 32);
  v47(v50, v18, v5);
  v35 = a1;
  sub_1BF39B31C(a1, v15, type metadata accessor for ReloadConfiguration.ReloadType);
  if (v27(v15, 1, v5) == 1)
  {
    (*(v6 + 8))(v34, v5);
    v28 = v54;
    result = (*(v6 + 56))(v54, 1, 1, v5);
LABEL_13:
    v30 = *(a1 + v19[7]);
    v37 = v19[9];
    v32 = *(a1 + v37);
    v33 = (v28 + v37);
    goto LABEL_21;
  }

  v36 = v49;
  v47(v49, v15, v5);
  v28 = v54;
  if (*(a1 + v46) >> 61 == 3)
  {
    (*(v6 + 8))(v50, v5);
    v47(v28, v36, v5);
    result = (*(v6 + 56))(v28, 0, 1, v5);
    goto LABEL_13;
  }

  sub_1BF3B5254();
  v38 = v50;
  v39 = sub_1BF4E88A4();
  v40 = (v39 & 1) == 0;
  if (v39)
  {
    v41 = v38;
  }

  else
  {
    v41 = v36;
  }

  if (v40)
  {
    v42 = v38;
  }

  else
  {
    v42 = v36;
  }

  (*(v6 + 8))(v41, v5);
  v43 = v48;
  v47(v48, v42, v5);
  (*(v6 + 56))(v43, 0, 1, v5);
  v30 = *(v35 + v19[7]);
  v44 = v19[9];
  v32 = *(v35 + v44);
  v33 = (v28 + v44);
  result = sub_1BF38DAD0(v43, v28);
LABEL_21:
  *(v28 + v19[5]) = v53;
  *(v28 + v19[7]) = v30;
  *(v28 + v19[6]) = v51;
  *(v28 + v19[8]) = v52;
  *v33 = v32;
  return result;
}

unint64_t sub_1BF3B514C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v13 = 0xA000000000000030;
  v14 = v5;
  result = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v14, &v13);
  if (result & 1) != 0 || (v13 = 0xA000000000000030, v14 = v4, result = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v14, &v13), (result))
  {
    *a3 = 0xA000000000000030;
  }

  else
  {
    v7 = __ROR8__(v5 + 0x6000000000000000, 3);
    v8 = v5 >> 61 != 5 || v7 > 0xB;
    v9 = (1 << v7) & 0x84F;
    v10 = v8 || v9 == 0;
    if (v10 && v4 >> 61 == 5 && (v11 = __ROR8__(v4 + 0x6000000000000000, 3), v11 <= 0xB) && ((1 << v11) & 0x84F) != 0)
    {
      *a3 = v4;
      v12 = v4;
    }

    else
    {
      *a3 = v5;
      v12 = v5;
    }

    return sub_1BF39C510(v12);
  }

  return result;
}

unint64_t sub_1BF3B5254()
{
  result = qword_1EDC9F0C8;
  if (!qword_1EDC9F0C8)
  {
    sub_1BF4E7334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F0C8);
  }

  return result;
}

uint64_t sub_1BF3B52AC(uint64_t a1, uint64_t a2)
{
  if (!sub_1BF3B530C(a1))
  {
    return 0;
  }

  return sub_1BF3B5410(a1, a2);
}

BOOL sub_1BF3B530C(uint64_t a1)
{
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8854();

  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_1BF3B5410(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v81 = *v2;
  v4 = *(v81 + 80);
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v73 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v69[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C8, &qword_1BF4F1AB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69[-v14];
  v16 = type metadata accessor for ReloadConfiguration(0);
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v74 = &v69[-v23];
  os_unfair_lock_assert_owner(*(*&v2[qword_1EDC9AF58] + 16));
  swift_beginAccess();

  sub_1BF4E8854();

  if (v83[0] == 5)
  {
    return 0;
  }

  swift_beginAccess();

  sub_1BF4E8854();

  if (v83[0] == 4)
  {
    v72 = a1;
    swift_beginAccess();
    v25 = v72;

    v26 = v80;
    sub_1BF4E8854();

    if ((*(v79 + 48))(v15, 1, v26) == 1)
    {
      sub_1BF38C9B4(v15, &qword_1EBDD95C8, &qword_1BF4F1AB0);
      v27 = v78;
    }

    else
    {
      v31 = v15;
      v32 = v74;
      sub_1BF3B4C44(v31, v74, type metadata accessor for ReloadConfiguration);
      v27 = v78;
      if ((sub_1BF3C4704(v32) & 1) == 0)
      {
        v53 = v77;
        v54 = *(v77 + 16);
        v54(v10, v25, v4);
        sub_1BF39B31C(v27, v21, type metadata accessor for ReloadConfiguration);
        v55 = sub_1BF4E7B34();
        v56 = sub_1BF4E8E84();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v82[0] = v80;
          *v57 = 136446466;
          v58 = v76;
          v54(v76, v10, v4);
          v59 = *(v53 + 8);
          v59(v10, v4);
          v60 = sub_1BF4E96A4();
          v62 = v61;
          v59(v58, v4);
          v63 = sub_1BF38D65C(v60, v62, v82);

          *(v57 + 4) = v63;
          *(v57 + 12) = 2082;
          v64 = ReloadConfiguration.description.getter();
          v66 = v65;
          sub_1BF45EABC(v21, type metadata accessor for ReloadConfiguration);
          v67 = sub_1BF38D65C(v64, v66, v82);

          *(v57 + 14) = v67;
          _os_log_impl(&dword_1BF389000, v55, v56, "%{public}s Skipping reload with configuration: %{public}s because entry is paused, and prior task has higher priority.", v57, 0x16u);
          v68 = v80;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v68, -1, -1);
          MEMORY[0x1BFB5A5D0](v57, -1, -1);
        }

        else
        {
          (*(v53 + 8))(v10, v4);

          sub_1BF45EABC(v21, type metadata accessor for ReloadConfiguration);
        }

        sub_1BF45EABC(v74, type metadata accessor for ReloadConfiguration);
        return 0;
      }

      sub_1BF45EABC(v32, type metadata accessor for ReloadConfiguration);
    }

    v33 = v77;
    v34 = v73;
    v77 = *(v77 + 16);
    (v77)(v73, v72, v4);
    sub_1BF39B31C(v27, v18, type metadata accessor for ReloadConfiguration);
    v74 = v2;
    v35 = sub_1BF4E7B34();
    v36 = sub_1BF4E8E84();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v34;
      v38 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v82[0] = v71;
      *v38 = 136446466;
      v70 = v36;
      v39 = v76;
      (v77)(v76, v37, v4);
      v40 = *(v33 + 8);
      v40(v37, v4);
      v41 = sub_1BF4E96A4();
      v43 = v42;
      v40(v39, v4);
      v44 = v39;
      v45 = sub_1BF38D65C(v41, v43, v82);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2082;
      v46 = ReloadConfiguration.description.getter();
      v48 = v47;
      sub_1BF45EABC(v18, type metadata accessor for ReloadConfiguration);
      v49 = sub_1BF38D65C(v46, v48, v82);
      v27 = v78;

      *(v38 + 14) = v49;
      _os_log_impl(&dword_1BF389000, v35, v70, "%{public}s Delaying reload with configuration: %{public}s because entry is paused.", v38, 0x16u);
      v50 = v71;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v50, -1, -1);
      MEMORY[0x1BFB5A5D0](v38, -1, -1);
    }

    else
    {
      (*(v33 + 8))(v34, v4);

      sub_1BF45EABC(v18, type metadata accessor for ReloadConfiguration);
      v44 = v76;
    }

    (v77)(v44, v72, v4);
    v51 = v27;
    v52 = v75;
    sub_1BF39B31C(v51, v75, type metadata accessor for ReloadConfiguration);
    (*(v79 + 56))(v52, 0, 1, v80);
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8864();
    swift_endAccess();
    return 0;
  }

  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8854();

  result = *v83;
  if (*v83)
  {

    swift_beginAccess();
    if (v2[176])
    {
      return 1;
    }

    v28 = sub_1BF4E7B34();
    v29 = sub_1BF4E8E84();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BF389000, v28, v29, "StatefulStore is disabled", v30, 2u);
      MEMORY[0x1BFB5A5D0](v30, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1BF3B5EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B30, &qword_1BF4EC590);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1BF39B31C(a1, &v20 - v12, type metadata accessor for ReloadConfiguration.ReloadType);
  sub_1BF39B31C(a2, &v13[v15], type metadata accessor for ReloadConfiguration.ReloadType);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1BF39B31C(v13, v10, type metadata accessor for ReloadConfiguration.ReloadType);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = sub_1BF4E72D4();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1BF3B8DEC(v13);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BF38C9B4(v13, &qword_1EBDD8B30, &qword_1BF4EC590);
    v17 = 0;
    return v17 & 1;
  }

  sub_1BF3B8DEC(v13);
  v17 = 1;
  return v17 & 1;
}

double sub_1BF3B61AC(uint64_t a1)
{
  v2 = v1 + *(*v1 + 176);
  *v2 = a1;
  *(v2 + 8) = 0;
  return sub_1BF3B7C08();
}

uint64_t sub_1BF3B61EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FD8, &qword_1BF4EFAC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF3B6254@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t ReloadConfiguration.cost.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ReloadConfiguration(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TimelineKey.matches(widget:)(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v6 = [a1 extensionIdentity];
  v7 = sub_1BF4E90A4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [a1 kind];
  v9 = sub_1BF4E8914();
  v11 = v10;

  if (v3 == v9 && v4 == v11)
  {
  }

  else
  {
    v13 = sub_1BF4E9734();

    if ((v13 & 1) == 0)
    {
LABEL_7:
      v14 = 0;
      return v14 & 1;
    }
  }

  v15 = v5;
  v16 = [a1 intentReference];
  v17 = v16;
  if (v5)
  {
    if (v16)
    {
      sub_1BF3901C0(0, &unk_1EDC96360, 0x1E69942D0);
      v14 = sub_1BF4E90A4();
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (!v16)
    {
      v14 = 1;
      return v14 & 1;
    }

    v14 = 0;
    v15 = v16;
  }

  return v14 & 1;
}

void sub_1BF3B64C4(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, int a5)
{
  v135 = a5;
  v129 = a4;
  v8 = *a1;
  v9 = *a1;
  v11 = *(*a1 + 128);
  v166 = *(*a1 + 120);
  v10 = v166;
  v167 = v11;
  v12 = v11;
  v130 = v11;
  v161 = *(v9 + 80);
  v143 = v9;
  v160 = *(v9 + 104);
  aBlock = v161;
  v165 = v160;
  v157 = type metadata accessor for VariantReloadResult(0, &aBlock);
  v141 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v134 = &v120 - v13;
  aBlock = v161;
  v165 = v160;
  v128 = v10;
  v166 = v10;
  v167 = v12;
  v156 = type metadata accessor for VariantIdentifier(0, &aBlock);
  v138 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v133 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v163 = &v120 - v16;
  v17 = *(&v161 + 1);
  v136 = *(*(&v161 + 1) - 8);
  MEMORY[0x1EEE9AC00](v18);
  v145 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v162 = &v120 - v21;
  v22 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v152 = &v120 - v23;
  v140 = sub_1BF4E7FF4();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v132 = (&v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = sub_1BF4E8064();
  v131 = *(v137 - 1);
  MEMORY[0x1EEE9AC00](v137);
  v121 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v161;
  v159 = *(&v160 + 1);
  v27 = v160;
  v125 = type metadata accessor for StatefulStoreReloadEvent(0, v161, v160, *(&v160 + 1));
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v120 - v28;
  v29 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v148 = (&v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v120 - v32;
  v34 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v144 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v147 = &v120 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v120 - v40;
  v123 = type metadata accessor for StatefulStoreReloadVariantsEvent(0, v26, v17, v42);
  v122 = *(v123 - 8);
  v43 = MEMORY[0x1EEE9AC00](v123);
  v126 = &v120 - v44;
  v45 = *(v34 + 16);
  v150 = *(v8 + 144);
  v158 = v41;
  v46 = v41;
  v47 = v130;
  v151 = v34 + 16;
  v149 = v45;
  (v45)(v46, a1 + v150, v26, v43);
  *&aBlock = *(a1 + *(*a1 + 152));
  v48 = aBlock;
  sub_1BF4E8D84();
  v155 = v48;
  swift_bridgeObjectRetain_n();
  swift_getWitnessTable();
  v49 = v33;
  v142 = sub_1BF4E8CB4();
  v50 = *(*a1 + 168);
  v154 = a1;
  sub_1BF39B31C(a1 + v50, v33, type metadata accessor for ReloadConfiguration);
  swift_beginAccess();
  v52 = *(a2 + 16);
  v51 = *(a2 + 24);
  *&v161 = a2;
  v53 = *(a2 + 32);
  v153 = v17;
  *&v160 = v27;
  if (v53 == 255)
  {
    v57 = 0;
    v56 = v159;
  }

  else
  {
    v54 = *(v143 + 96);
    v55 = *(v143 + 136);
    *&aBlock = v26;
    *(&aBlock + 1) = v17;
    *&v165 = v54;
    *(&v165 + 1) = v27;
    v56 = v159;
    v166 = v159;
    v167 = v128;
    v168 = v47;
    v169 = v55;
    type metadata accessor for StatefulStore.StatefulStoreReloadError(0, &aBlock);
    swift_getWitnessTable();
    v17 = v153;
    v57 = swift_allocError();
    *v58 = v52;
    *(v58 + 8) = v51;
    *(v58 + 16) = v53;
  }

  StatefulStoreReloadVariantsEvent.init(key:variantKeys:configuration:error:)(v158, v142, v49, v57, v26, v17, v126);
  sub_1BF45E758(v52, v51, v53);
  sub_1BF4E7C14();
  v59 = v154;
  v149(v147, v154 + v150, v26);
  sub_1BF39B31C(v59 + v50, v148, type metadata accessor for ReloadConfiguration);
  v60 = v161;
  swift_beginAccess();
  v61 = *(v60 + 16);
  v62 = *(v60 + 24);
  v63 = *(v60 + 32);
  v158 = v26;
  if (v63 == 255)
  {
    v70 = 0;
    v69 = v160;
    v67 = v128;
  }

  else
  {
    v64 = *(v143 + 96);
    v65 = *(v143 + 136);
    *&aBlock = v26;
    *(&aBlock + 1) = v17;
    v66 = v160;
    *&v165 = v64;
    *(&v165 + 1) = v160;
    v67 = v128;
    v166 = v56;
    v167 = v128;
    v168 = v130;
    v169 = v65;
    type metadata accessor for StatefulStore.StatefulStoreReloadError(0, &aBlock);
    swift_getWitnessTable();
    v26 = v158;
    v68 = swift_allocError();
    v69 = v66;
    v70 = v68;
    *v71 = v61;
    *(v71 + 8) = v62;
    *(v71 + 16) = v63;
  }

  StatefulStoreReloadEvent.init(key:configuration:error:)(v147, v148, v70, v26, v69, v56, v127);

  sub_1BF45E758(v61, v62, v63);
  sub_1BF4E7C14();

  v72 = v161;
  swift_beginAccess();
  if (*(v72 + 32) == 255)
  {
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    v76 = *(a3 + qword_1EDC9AF58);
    os_unfair_lock_lock(*(v76 + 16));
    v77 = v154;
    sub_1BF3B8E48((v75 + 16), a3, v154);
    *&v161 = 0;
    os_unfair_lock_unlock(*(v76 + 16));
    v148 = *(a3 + qword_1EDC9AFD0);
    v78 = swift_allocObject();
    *(v78 + 2) = v75;
    *(v78 + 3) = a3;
    *(v78 + 4) = v77;
    v166 = sub_1BF3B7F80;
    v167 = v78;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v165 = sub_1BF38E868;
    *(&v165 + 1) = &block_descriptor_64;
    v79 = _Block_copy(&aBlock);

    v80 = v121;
    sub_1BF4E8014();
    v171 = MEMORY[0x1E69E7CC0];
    sub_1BF3983D4(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
    v81 = v132;
    v82 = v140;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v80, v81, v79);
    _Block_release(v79);
    (*(v139 + 8))(v81, v82);
    v131[1](v80, v137);

    v67 = v128;
    v74 = v130;
    v17 = v153;
    v73 = v161;
  }

  else
  {
    v73 = 0;
    v74 = v130;
  }

  v83 = v155;
  v84 = v152;
  if ((v155 & 0xC000000000000001) != 0)
  {
    sub_1BF4E91F4();
    sub_1BF4E8D64();
    v85 = *(&aBlock + 1);
    v83 = aBlock;
    v147 = *(&v165 + 1);
    v86 = v165;
    v87 = v166;
  }

  else
  {
    v147 = 0;
    v88 = -1 << *(v155 + 32);
    v85 = v155 + 56;
    v89 = ~v88;
    v90 = -v88;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    else
    {
      v91 = -1;
    }

    v87 = v91 & *(v155 + 56);
    v86 = v89;
  }

  v142 = qword_1EDC9AF58;
  v148 = (v136 + 56);
  v121 = v86;
  v92 = (v86 + 64) >> 6;
  v93 = (v136 + 16);
  v139 = v136 + 32;
  v132 = (v138 + 2);
  v131 = (v141 + 8);
  ++v138;
  v137 = (v136 + 8);
  v155 = v83;
  v143 = v85;
  v141 = v92;
  v146 = a3;
  v140 = v136 + 16;
  while (v83 < 0)
  {
    if (!sub_1BF4E9234())
    {
      v83 = v155;
LABEL_34:
      (*v148)(v84, 1, 1, v17);
      sub_1BF39A9CC(v83);
      (*(v124 + 8))(v127, v125);
      (*(v122 + 8))(v126, v123);
      return;
    }

    *&v161 = v73;
    v95 = v74;
    v97 = v67;
    v98 = a3;
    sub_1BF4E9704();
    swift_unknownObjectRelease();
LABEL_31:
    (*v148)(v84, 0, 1, v17);
    v101 = v162;
    (*v139)(v162, v84, v17);
    v102 = v154;
    v103 = v144;
    v104 = v158;
    v149(v144, v154 + v150, v158);
    v105 = *v93;
    v106 = v145;
    v105(v145, v101, v17);
    v107 = v106;
    v108 = v104;
    v109 = v97;
    v110 = v95;
    v111 = VariantIdentifier.init(storedKey:variantKey:)(v103, v107, v108, v17, v160, v159, v97, v95, v163);
    v170 = *(v98 + v142);
    MEMORY[0x1EEE9AC00](v111);
    *(&v120 - 4) = v112;
    *(&v120 - 3) = v102;
    *(&v120 - 2) = v101;
    v113 = type metadata accessor for UnfairLock();
    sub_1BF4E7C44();
    v114 = sub_1BF4E90F4();

    v94 = v163;
    v73 = v161;
    sub_1BF38D774(sub_1BF3B92CC, (&v120 - 6), v113, v114, &off_1F3DEE010);
    v17 = v153;

    v85 = v143;
    if (v171)
    {
      v115 = v133;
      (*v132)(v133, v94, v156);
      v116 = v134;
      if (v135)
      {
        v117 = v115;
        v118 = v129;
        sub_1BF485984(v117, v129, v158, v17, v160, v159, v109, v110, v134);
        v119 = v118;
      }

      else
      {
        sub_1BF485984(v115, 0, v158, v17, v160, v159, v109, v110, v134);
      }

      sub_1BF4E7C14();

      (*v131)(v116, v157);
      v94 = v163;
    }

    (*v138)(v94, v156);
    (*v137)(v162, v17);
    a3 = v146;
    v67 = v109;
    v74 = v110;
    v84 = v152;
    v83 = v155;
    v92 = v141;
    v93 = v140;
  }

  if (v87)
  {
    *&v161 = v73;
    v95 = v74;
    v96 = v147;
LABEL_30:
    v97 = v67;
    v98 = a3;
    v100 = __clz(__rbit64(v87));
    v87 &= v87 - 1;
    (*(v136 + 16))(v84, *(v83 + 48) + *(v136 + 72) * (v100 | (v96 << 6)), v17);
    goto LABEL_31;
  }

  v99 = v147;
  while (1)
  {
    v96 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v96 >= v92)
    {
      goto LABEL_34;
    }

    v87 = *(v85 + 8 * v96);
    ++v99;
    if (v87)
    {
      *&v161 = v73;
      v95 = v74;
      v147 = v96;
      goto LABEL_30;
    }
  }

  __break(1u);

  os_unfair_lock_unlock(*(v67 + 16));
  __break(1u);
}

uint64_t sub_1BF3B7824()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3B785C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF3B78FC()
{
  v1 = qword_1EDCA6870;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_1BF3B794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF4E8874();

  return sub_1BF3B79A8(a1, v6, a2, a3);
}

unint64_t sub_1BF3B79A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1BF4E88C4();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t _CHDMonotonicNSEC(uint64_t a1, uint64_t a2)
{
  result = -1;
  if (a1 != -1)
  {
    if ((dispatch_time_to_nsec() & 1) == 0)
    {
      _CHDMonotonicNSEC_cold_1();
    }

    return -1;
  }

  return result;
}

uint64_t dispatch thunk of StatefulStore.subscript.getter()
{
  return (*(*v0 + 1376))();
}

{
  return (*(*v0 + 1384))();
}

{
  return (*(*v0 + 1392))();
}

double sub_1BF3B7C08()
{
  v1 = *(v0 + *(*v0 + 200));

  os_unfair_lock_lock(v1 + 4);
  sub_1BF3B7DA8();
  os_unfair_lock_unlock(v1 + 4);

  return result;
}

double sub_1BF3B7CB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + *(*a1 + 208));
  if (!v3[1])
  {
    *v3 = a2;
    v3[1] = a3;

    v5 = *a1;
    v6 = *(a1 + *(*a1 + 216));
    if (v6)
    {
      __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));

      sub_1BF4E7BA4();

      v5 = *a1;
    }

    *(a1 + *(v5 + 216)) = 0;
  }

  return result;
}

void sub_1BF3B7D9C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t *ReloadTask.deinit()
{
  v1 = *v0;
  v2 = sub_1BF3B7C08();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 144), v2);

  sub_1BF3A93B4(v0 + *(*v0 + 168));
  v3 = *(*v0 + 192);
  v4 = sub_1BF4E7B54();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ReloadTask.__deallocating_deinit()
{
  ReloadTask.deinit();

  return swift_deallocClassInstance();
}

void sub_1BF3B7F8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v4 + 64;
    v6 = 1 << *(v4 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v4 + 64);
    v9 = (v6 + 63) >> 6;

    v11 = 0;
    v26 = v10;
    while (v8)
    {
LABEL_12:
      v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
      v14 = (*(v10 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v27 = *(*(v10 + 56) + v13);

      v17 = sub_1BF4E7B34();
      v18 = sub_1BF4E8E84();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v28 = v25;
        *v19 = 136446466;
        v20 = sub_1BF38D65C(v15, v16, &v28);

        *(v19 + 4) = v20;
        *(v19 + 12) = 2082;
        v21 = sub_1BF4E96A4();
        v23 = v22;

        v24 = sub_1BF38D65C(v21, v23, &v28);

        *(v19 + 14) = v24;
        _os_log_impl(&dword_1BF389000, v17, v18, "Executing event: %{public}s for successful reload of %{public}s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v25, -1, -1);
        MEMORY[0x1BFB5A5D0](v19, -1, -1);
      }

      else
      {
      }

      v8 &= v8 - 1;
      v27();

      v10 = v26;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF3B8268(uint64_t a1)
{
  v5[6] = *(v1 + qword_1EDC9AF58);
  v5[3] = a1;
  v2 = type metadata accessor for UnfairLock();
  sub_1BF4E8834();
  v3 = sub_1BF4E90F4();

  sub_1BF38D774(sub_1BF3B8358, v5, v2, v3, &off_1F3DEE010);

  return v5[7];
}

uint64_t sub_1BF3B8374()
{
  swift_beginAccess();
  sub_1BF4E8834();

  sub_1BF4E8854();
}

uint64_t sub_1BF3B8484(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1BF4E7334();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  v14 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = *(v6 + 64) + v15;
  v17 = ((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (v13 >= a2)
  {
    goto LABEL_34;
  }

  v18 = ((v17 + (v16 & ~v15) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v13 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_34;
      }
    }

LABEL_31:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v13 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_31;
    }
  }

LABEL_34:
  if (v7 == v13)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  else
  {
    v28 = (a1 + v16) & ~v15;
    if (v12 == v13)
    {
      v29 = (*(v10 + 48))(v28);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v30 = *((v17 + 10 + v28 + 6) & 0xFFFFFFFFFFFFFFF8);
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      if ((v30 + 1) >= 2)
      {
        return v30;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1BF3B86FC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v29 = *(v7 - 8);
  v8 = *(v29 + 84);
  v9 = 0;
  v10 = *(sub_1BF4E7334() - 8);
  v11 = *(v10 + 84);
  v12 = *(v29 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = v12 + v15;
  v17 = (v12 + v15) & ~v15;
  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = *(v10 + 64) + 1;
  }

  v19 = ((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v19 + v17 + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    if (((v19 + v17 + 17) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a3 - v14 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v9 = v22;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v20)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v14;
    }

    if (v20)
    {
      v24 = ~v14 + a2;
      bzero(a1, v20);
      *a1 = v24;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v20) = v23;
      }

      else
      {
        *(a1 + v20) = v23;
      }
    }

    else if (v9)
    {
      *(a1 + v20) = v23;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v20) = 0;
  }

  else if (v9)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v8 == v14)
  {
    v25 = *(v29 + 56);

    v25(a1, a2, v8, v7);
  }

  else
  {
    v26 = (a1 + v16) & ~v15;
    if (v13 == v14)
    {
      v27 = *(v10 + 56);

      v27(v26, (a2 + 1));
    }

    else
    {
      v28 = ((v19 + 10 + v26 + 6) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v28 = 0;
        *v28 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v28 = a2;
      }
    }
  }
}

uint64_t static StatefulStoreReloadEvent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1BF4E88C4() & 1) != 0 && (v10 = type metadata accessor for StatefulStoreReloadEvent(0, a3, a4, a5), (_s9ChronoKit19ReloadConfigurationV2eeoiySbAC_ACtFZ_0(a1 + *(v10 + 44), a2 + *(v10 + 44))))
  {
    return (*(a1 + *(v10 + 48)) != 0) ^ (*(a2 + *(v10 + 48)) == 0);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9ChronoKit19ReloadConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B30, &qword_1BF4EC590);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v15 = *(v14 + 56);
  sub_1BF39B31C(a1, &v27 - v12, type metadata accessor for ReloadConfiguration.ReloadType);
  sub_1BF39B31C(a2, &v13[v15], type metadata accessor for ReloadConfiguration.ReloadType);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1BF39B31C(v13, v10, type metadata accessor for ReloadConfiguration.ReloadType);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1BF38C9B4(v13, &qword_1EBDD8B30, &qword_1BF4EC590);
LABEL_14:
    v25 = 0;
    return v25 & 1;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  v17 = sub_1BF4E72D4();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  if ((v17 & 1) == 0)
  {
    sub_1BF3B8DEC(v13);
    goto LABEL_14;
  }

LABEL_8:
  sub_1BF3B8DEC(v13);
  v19 = type metadata accessor for ReloadConfiguration(0);
  if (*(a1 + *(v19 + 20)) != *(a2 + *(v19 + 20)))
  {
    goto LABEL_14;
  }

  v20 = v19;
  v21 = *(v19 + 24);
  v22 = *(a1 + v21);
  v27 = *(a2 + v21);
  v23 = v27;
  v28 = v22;
  sub_1BF39C510(v22);
  sub_1BF39C510(v23);
  v24 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v28, &v27);
  sub_1BF39C9A4(v23);
  sub_1BF39C9A4(v22);
  if ((v24 & 1) == 0 || *(a1 + v20[7]) != *(a2 + v20[7]) || *(a1 + v20[8]) != *(a2 + v20[8]))
  {
    goto LABEL_14;
  }

  v25 = *(a1 + v20[9]) ^ *(a2 + v20[9]) ^ 1;
  return v25 & 1;
}

uint64_t sub_1BF3B8DEC(uint64_t a1)
{
  v2 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF3B8E48(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v11[0] = a1;
  v4 = *(*a2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - v6;
  v9 = *(*v8 + 144);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95D0, &qword_1BF4F1C88);
  sub_1BF4E8854();

  *v11[0] = v11[2];

  (*(v5 + 16))(v7, a3 + v9, v4);
  v11[9] = 0;
  swift_beginAccess();
  sub_1BF4E8834();
  sub_1BF4E8864();
  return swift_endAccess();
}

uint64_t VariantIdentifier.init(storedKey:variantKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v17 = type metadata accessor for VariantIdentifier(0, v19);
  return (*(*(a4 - 8) + 32))(a9 + *(v17 + 68), a2, a4);
}

uint64_t sub_1BF3B9104@<X0>(__n128 **a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *a1;
  swift_beginAccess();
  v7 = v5[10];
  v8 = v5[11];
  v9 = v5[13];
  v10 = v5[16];

  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v13 = *(v6 + 7);
  v14 = v10;
  type metadata accessor for VariantReloadResult(255, v12);
  sub_1BF4E7C44();
  sub_1BF4E8834();
  sub_1BF4E8854();

  if (v15)
  {
    sub_1BF4E8854();
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

ChronoKit::DuetWidgetBudgetIdentity __swiftcall DuetWidgetBudgetIdentity.init(forUpdateConfigurations:)(Swift::OpaquePointer forUpdateConfigurations)
{
  rawValue = forUpdateConfigurations._rawValue;
  v4 = v1;
  if (!(forUpdateConfigurations._rawValue >> 62))
  {
    v5 = *((forUpdateConfigurations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  forUpdateConfigurations._rawValue = sub_1BF4E9204();
  v5 = forUpdateConfigurations._rawValue;
  if (!forUpdateConfigurations._rawValue)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = rawValue & 0xC000000000000001;
  if ((rawValue & 0xC000000000000001) != 0)
  {
LABEL_14:
    forUpdateConfigurations._rawValue = MEMORY[0x1BFB59570](0, rawValue);
    goto LABEL_6;
  }

  if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  forUpdateConfigurations._rawValue = *(rawValue + 32);
LABEL_6:
  v7 = forUpdateConfigurations._rawValue;
  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  for (i = 0; i != v5; ++i)
  {
    if (v2)
    {
      MEMORY[0x1BFB59570](i, rawValue);
      swift_unknownObjectRelease();
    }
  }

  sub_1BF3B93EC(rawValue);
  v10 = v9;
  v12 = v11;

  *v4 = v10;
  v4[1] = v12;
LABEL_17:
  result.identifier._object = v6;
  result.identifier._countAndFlagsBits = forUpdateConfigurations._rawValue;
  return result;
}

void sub_1BF3B93EC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    v8 = MEMORY[0x1BFB59570](0, a1);
LABEL_15:
    v6 = v8;
LABEL_16:
    sub_1BF3B253C(v6);

    return;
  }

LABEL_19:
  v2 = sub_1BF4E9204();
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  do
  {
    if (v4)
    {
      v5 = MEMORY[0x1BFB59570](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v5 isSuggestion])
    {
      goto LABEL_16;
    }

    ++v3;
  }

  while (v7 != v2);
  if (v4)
  {
    goto LABEL_21;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 32);
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t ReloadTaskCancellable.__allocating_init(_:description:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_1BF3B9664(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v14;
}

uint64_t sub_1BF3B9664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  type metadata accessor for ReloadTaskCancellable();
  v11 = swift_allocObject();
  sub_1BF38E610(&v13, v11 + 16);
  *(v11 + 56) = a2;
  *(v11 + 64) = a3;
  return v11;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BF3B978C()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    sub_1BF38E49C(v0 + 16, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9950, &qword_1BF4F46B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9958, &qword_1BF4F46B8);
    if (swift_dynamicCast())
    {
      sub_1BF38E610(v3, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      v1 = sub_1BF4E96A4();
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    else
    {
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_1BF4874A8(v3);
      v6[0] = 0;
      v6[1] = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FCBA0);
      v5[0] = v0;
      sub_1BF4E9404();
      MEMORY[0x1BFB58C90](62, 0xE100000000000000);
      v1 = v6[0];
    }
  }

  return v1;
}

uint64_t sub_1BF3B990C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension_info);
  v2 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  result = (*(*(v3 - 8) + 48))(v1 + v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1BF4E76B4();
    swift_endAccess();
    return v5;
  }

  return result;
}

void sub_1BF3B99E4(uint64_t a1)
{
  sub_1BF3B9AB8(319, &qword_1EDC96420, sub_1BF3B9B04);
  if (v1 <= 0x3F)
  {
    sub_1BF3BAE30(319);
    if (v2 <= 0x3F)
    {
      sub_1BF3B9AB8(319, &qword_1EDC9D600, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        sub_1BF3BAEBC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1BF3B9AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF3B9B04()
{
  if (!qword_1EDC9D750)
  {
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC9D750);
    }
  }
}

dispatch_time_t CHDMonotonicTimePlusInterval(dispatch_time_t a1, int64_t a2)
{
  _CHDMonotonicNSEC(a1, "time");

  return dispatch_time(a1, a2);
}

void sub_1BF3B9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    goto LABEL_6;
  }

  if (*(a1 + 32))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = [objc_allocWithZone(CHDMonotonicTimer) init];
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    v14[4] = sub_1BF3CAE98;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1BF38E868;
    v14[3] = &block_descriptor_13;
    v13 = _Block_copy(v14);

    [v8 activateWithTime:v9 repeat:v10 block:v13];
    _Block_release(v13);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1BF3B9DD0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF3B9E08()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void CHDMonotonicTimer.__deallocating_deinit()
{
  if (*(v0 + 32) == 1)
  {

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BF3B9F70()
{
  result = qword_1EDC9FCE0;
  if (!qword_1EDC9FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FCE0);
  }

  return result;
}

unint64_t sub_1BF3B9FC4()
{
  result = qword_1EDC9FCE8;
  if (!qword_1EDC9FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FCE8);
  }

  return result;
}

uint64_t sub_1BF3BA028()
{
  v10 = type metadata accessor for _DuetWidgetViewProvider();
  v11 = &off_1F3DF3CE0;
  v9[0] = swift_allocObject();
  type metadata accessor for DuetWidgetViewRecorder();
  v0 = swift_allocObject();
  v1 = __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4, v2);
  v6 = sub_1BF3BA188(*v4, v0);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  qword_1EDC99660 = v6;
  return result;
}

uint64_t sub_1BF3BA188(uint64_t a1, uint64_t a2)
{
  v9 = type metadata accessor for _DuetWidgetViewProvider();
  v10 = &off_1F3DF3CE0;
  *&v8 = a1;
  *(a2 + 16) = xmmword_1BF4F6AB0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  *(a2 + 80) = v4;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  v5 = [objc_opt_self() currentProcess];
  v6 = [v5 pid];

  *(a2 + 112) = [objc_opt_self() targetWithPid_];
  sub_1BF38E610(&v8, a2 + 32);
  return a2;
}

uint64_t sub_1BF3BA274@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 120, a1);
}

uint64_t sub_1BF3BA2D4()
{
  v1 = *(sub_1BF4E7334() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1BF3BA338(v2, v3);
}

uint64_t sub_1BF3BA338(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BF4E7334();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3BA414(a2, v6);
  sub_1BF3BA63C(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BF3BA414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BF4E7334();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E80E4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 32);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1BF4E80F4();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = *(v2 + 24);
    if (v17 > 0.0 && (sub_1BF4E7224(), v18 = sub_1BF4E7274(), (*(v6 + 8))(v8, v5), (v18 & 1) != 0))
    {
      sub_1BF4E71F4();
      fmod(v19, v17);
      return sub_1BF4E71E4();
    }

    else
    {
      return (*(v6 + 16))(a2, a1, v5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF3BA63C(uint64_t a1)
{
  v2 = v1;
  v61 = *v1;
  v4 = sub_1BF4E7FE4();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v63 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_1BF4E80D4();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E7334();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = sub_1BF4E80E4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + 4);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14, v16);
  v20 = v19;
  v21 = sub_1BF4E80F4();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_4:
    v24 = sub_1BF4E7B54();
    __swift_project_value_buffer(v24, qword_1EDCA6AD8);
    (*(v8 + 16))(v10, a1, v7);

    v25 = sub_1BF4E7B34();
    v26 = sub_1BF4E8E54();

    if (os_log_type_enabled(v25, v26))
    {
      v59 = v26;
      v60 = v25;
      v27 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v27 = 136446466;
      v28 = sub_1BF4E9894();
      v30 = sub_1BF38D65C(v28, v29, v68);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      if (qword_1EDC9F0F0 != -1)
      {
        swift_once();
      }

      v31 = qword_1EDC9F0F8;
      v32 = sub_1BF4E7254();
      v33 = [v31 stringFromDate_];

      v34 = sub_1BF4E8914();
      v36 = v35;

      (v21)(v10, v7);
      v37 = sub_1BF38D65C(v34, v36, v68);

      *(v27 + 14) = v37;
      v38 = v60;
      _os_log_impl(&dword_1BF389000, v60, v59, "%{public}s next update: %{public}s, privacy: .public)", v27, 0x16u);
      v39 = v58;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v39, -1, -1);
      MEMORY[0x1BFB5A5D0](v27, -1, -1);
    }

    else
    {

      (v21)(v10, v7);
    }

    v50 = v67;
    sub_1BF3C2920();
    result = sub_1BF3C2A38();
    v51 = v2[3];
    if (v51 < 9.22337204e18)
    {
      if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v51 > -9.22337204e18)
      {
        v52 = v51;
LABEL_20:
        ObjectType = swift_getObjectType();
        v54 = v63;
        *v63 = v52;
        v56 = v65;
        v55 = v66;
        (*(v65 + 104))(v54, *MEMORY[0x1E69E7F48], v66);
        MEMORY[0x1BFB592C0](v50, v54, ObjectType, INFINITY);
        swift_unknownObjectRelease();
        (*(v56 + 8))(v54, v55);
        return (*(v62 + 8))(v50, v64);
      }

      __break(1u);
      return result;
    }

    v52 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_20;
  }

  v22 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer_scheduledDate;
  swift_beginAccess();
  (*(v8 + 24))(v2 + v22, a1, v7);
  swift_endAccess();
  sub_1BF4E7224();
  LOBYTE(v22) = sub_1BF4E7274();
  v21 = *(v8 + 8);
  result = (v21)(v13, v7);
  if (v22)
  {
    if (qword_1EDC9F998 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v40 = OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer;
  if (*(v2 + OBJC_IVAR____TtC9ChronoKit17WidgetUpdateTimer__timer))
  {
    v41 = qword_1EDC9F998;
    swift_unknownObjectRetain();
    if (v41 != -1)
    {
      swift_once();
    }

    v42 = sub_1BF4E7B54();
    __swift_project_value_buffer(v42, qword_1EDCA6AD8);

    v43 = sub_1BF4E7B34();
    v44 = sub_1BF4E8E54();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_1BF4E9894();
      v49 = sub_1BF38D65C(v47, v48, v68);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1BF389000, v43, v44, "%{public}s canceled", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1BFB5A5D0](v46, -1, -1);
      MEMORY[0x1BFB5A5D0](v45, -1, -1);
    }

    swift_getObjectType();
    sub_1BF4E8FB4();
    swift_unknownObjectRelease();
    *(v2 + v40) = 0.0;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BF3BAE30(uint64_t a1)
{
  if (!qword_1EDC96480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9AF0, &qword_1BF4F5DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC96480);
    }
  }
}

void sub_1BF3BAEBC(uint64_t a1)
{
  if (!qword_1EDC96488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9AF0, &qword_1BF4F5DF8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC96488);
    }
  }
}

uint64_t sub_1BF3BAF38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v4 = a1;
  v5 = *(*a2 + 88);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - v6;
  v9 = *(v8 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v16 = *(v15 + 120);
  *&v17 = v9;
  *(&v17 + 1) = v5;
  v18 = *(v15 + 128);
  v24 = *(v14 + 104);
  v30[0] = v17;
  v30[1] = v24;
  v26 = v16;
  v31 = v16;
  v32 = v18;
  v25 = type metadata accessor for VariantIdentifier(0, v30);
  v19 = *(v25 - 8);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v22 = &v24 - v21;
  if (v4)
  {

    sub_1BF4E7C14();
  }

  (*(v10 + 16))(v13, v29, v9, v20);
  (*(v27 + 16))(v7, v28, v5);
  VariantIdentifier.init(storedKey:variantKey:)(v13, v7, v9, v5, v24, *(&v24 + 1), v26, v18, v22);

  sub_1BF4E7C14();

  return (*(v19 + 8))(v22, v25);
}

void sub_1BF3BB304(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock);
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF3AE26C(a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1BF3BB364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double WidgetUpdateTimer.scheduleUpdate(on:)(uint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BF4E8064();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7334();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v17[1] = *(v1 + 32);
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1BF3BA2D4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_14;
  v15 = _Block_copy(aBlock);

  sub_1BF4E8014();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1BF3A1144(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v8, v5, v15);
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);

  return result;
}

uint64_t sub_1BF3BB778()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

double sub_1BF3BB844(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BF39FDFC();
  }

  return result;
}

unint64_t sub_1BF3BB8B0()
{
  result = qword_1EDC9F350[0];
  if (!qword_1EDC9F350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9F350);
  }

  return result;
}

uint64_t sub_1BF3BB904(uint64_t a1, double a2)
{
  v3 = *(v2 + 8);
  sub_1BF4E9804();
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = 3;
        goto LABEL_15;
      case 4:
        v4 = 4;
        goto LABEL_15;
      case 5:
        v4 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        v4 = 0;
        goto LABEL_15;
      case 1:
        v4 = 1;
        goto LABEL_15;
      case 2:
        v4 = 2;
LABEL_15:
        MEMORY[0x1BFB59A70](v4);
        return sub_1BF4E9844();
    }
  }

  MEMORY[0x1BFB59A70](5);
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

double sub_1BF3BB9E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EDC9EFE8 != -1)
    {
      swift_once();
    }

    v6 = sub_1BF4E7B54();
    __swift_project_value_buffer(v6, qword_1EDCA6A78);

    v7 = sub_1BF4E7B34();
    v8 = sub_1BF4E8E54();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v9 = 136446466;
      v10 = v5[2];
      v11 = v5[3];

      v12 = sub_1BF38D65C(v10, v11, &v22);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2050;
      v14 = *(v2 + 16);
      MEMORY[0x1EEE9AC00](v13);
      sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
      KeyPath = swift_getKeyPath();

      sub_1BF3FEE8C(v14, KeyPath);
      v17 = v16;

      if (v17 >> 62)
      {
        v18 = sub_1BF4E9204();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 14) = v18;

      _os_log_impl(&dword_1BF389000, v7, v8, "[%{public}s] Descriptors did change: %{public}ld", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
      MEMORY[0x1BFB5A5D0](v9, -1, -1);
    }

    else
    {
    }

    v19 = v5[10];
    v20 = *(v19 + 16);

    os_unfair_lock_lock(v20);
    sub_1BF3BBCCC(v5, v2);
    os_unfair_lock_unlock(*(v19 + 16));
  }

  return result;
}

uint64_t sub_1BF3BBCCC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 88) allObjects];
  type metadata accessor for WidgetEntry(0);
  v4 = sub_1BF4E8BA4();

  if (v4 >> 62)
  {
    goto LABEL_51;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_3:
    v6 = 0;
    v54 = *(a2 + 16);
    v55 = v4 & 0xC000000000000001;
    v51 = v4 + 32;
    v52 = v4 & 0xFFFFFFFFFFFFFF8;
    v49 = v5;
    v50 = v4;
    while (1)
    {
      if (v55)
      {
        v7 = MEMORY[0x1BFB59570](v6, v4);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v6 >= *(v52 + 16))
        {
          goto LABEL_50;
        }

        v7 = *(v51 + 8 * v6);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_49;
        }
      }

      v56 = v7;
      v9 = *&v7[OBJC_IVAR____TtC9ChronoKit11WidgetEntry_key];
      v10 = [v9 extensionIdentity];
      a2 = v10;
      if (*(v54 + 16))
      {
        v11 = sub_1BF3916CC(v10);
        if (v12)
        {
          break;
        }
      }

LABEL_5:
      if (v6 == v5)
      {
      }
    }

    v53 = v6;
    v13 = *(*(v54 + 56) + 8 * v11);

    if (v13 >> 62)
    {
      v14 = sub_1BF4E9204();
      if (v14)
      {
LABEL_16:
        v4 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB59570](v4, v13);
            v16 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v15 = *(v13 + 8 * v4 + 32);
            v16 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v5 = sub_1BF4E9204();
              if (!v5)
              {
              }

              goto LABEL_3;
            }
          }

          v57 = v16;
          v58 = v15;
          v17 = [v15 kind];
          v18 = sub_1BF4E8914();
          v20 = v19;

          v21 = v9;
          v22 = [v9 kind];
          v23 = sub_1BF4E8914();
          v25 = v24;

          if (v18 == v23 && v20 == v25)
          {

            goto LABEL_32;
          }

          a2 = sub_1BF4E9734();

          if (a2)
          {

LABEL_32:

            v27 = *&v56[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock];
            v28 = *(v27 + 16);
            v29 = v58;
            os_unfair_lock_lock(v28);
            v30 = OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor;
            v31 = *&v56[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__lock_descriptor];
            if (v31)
            {
              sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
              a2 = v29;
              v32 = v31;
              v33 = sub_1BF4E90A4();

              if (v33)
              {
                os_unfair_lock_unlock(*(v27 + 16));

                goto LABEL_46;
              }

              v34 = v56;
              v35 = *&v56[v30];
            }

            else
            {
              v34 = v56;
              v35 = 0;
            }

            *&v34[v30] = v58;
            v36 = v34;
            v37 = v29;

            os_unfair_lock_unlock(*(v27 + 16));
            v38 = *&v36[OBJC_IVAR____TtC9ChronoKit11WidgetEntry__environmentProvider];
            v39 = *(v38 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock);
            v40 = *(v39 + 16);
            v9 = v37;

            os_unfair_lock_lock(v40);
            v41 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor;
            v42 = *(v38 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor);
            if (v42)
            {
              sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
              v43 = v9;
              v44 = v42;
              v45 = sub_1BF4E90A4();

              v5 = v49;
              v6 = v53;
              if (v45)
              {
                os_unfair_lock_unlock(*(v39 + 16));

LABEL_43:
                a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
                sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
                sub_1BF4E7C74();

                v4 = v50;
                goto LABEL_5;
              }

              v46 = *(v38 + v41);
            }

            else
            {
              v46 = 0;
              v5 = v49;
              v6 = v53;
            }

            *(v38 + v41) = v58;
            v47 = v9;

            os_unfair_lock_unlock(*(v39 + 16));

            sub_1BF39FDFC();

            goto LABEL_43;
          }

          ++v4;
          v9 = v21;
        }

        while (v57 != v14);
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_16;
      }
    }

LABEL_46:
    v9 = v56;
    v5 = v49;
    v4 = v50;
    v6 = v53;
    goto LABEL_5;
  }
}

uint64_t sub_1BF3BC234()
{
  v0 = sub_1BF4E7B54();
  __swift_allocate_value_buffer(v0, qword_1EDCA6A60);
  __swift_project_value_buffer(v0, qword_1EDCA6A60);
  return sub_1BF4E7B44();
}

unint64_t sub_1BF3BC35C()
{
  result = qword_1EDC9FCF0[0];
  if (!qword_1EDC9FCF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9FCF0);
  }

  return result;
}

uint64_t sub_1BF3BC3B0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9528, &qword_1BF4F1670);
    sub_1BF3A43F4(a2, MEMORY[0x1E6985750], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BF3BC44C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9270, &unk_1BF4F0880);
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.AutoDiagnostics(unsigned __int8 *a1, unsigned int a2)
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

char *sub_1BF3BC57C(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t (*)(uint64_t *, char *, uint64_t, uint64_t, __n128), uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1BF4E9204();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1BF39A9CC(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t *sub_1BF3BC68C(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1BF4E91F4();
  sub_1BF3901C0(0, a5, a6);
  sub_1BF3BD134(a7, a5, a6);
  result = sub_1BF4E8D64();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1BF4E9234())
      {
        goto LABEL_30;
      }

      sub_1BF3901C0(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t EnvironmentModifiers.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9520, &qword_1BF4F1668);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for EnvironmentModifiers(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  v11 = MEMORY[0x1E69E7CD0];
  *(v10 + 1) = 0;
  *(v10 + 2) = v11;
  v10[24] = 0;
  v13 = *(v12 + 32);
  v14 = sub_1BF4E6F14();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v35 = v13;
  v36 = v14;
  v33 = v15 + 56;
  v34 = v16;
  (v16)(&v10[v13], 1, 1);
  v39 = v8[9];
  v10[v39] = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BF4E9204())
  {
    sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
    v11 = v25;
  }

  v17 = v8[10];
  *&v10[v17] = v11;
  v18 = v8[11];
  *&v10[v18] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF3BC35C();
  v19 = v42;
  sub_1BF4E9854();
  if (v19)
  {
    v20 = a1;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    return sub_1BF44B050(v10);
  }

  v42 = v18;
  v31 = v17;
  v32 = v11;
  LOBYTE(v45) = 0;
  v20 = a1;
  *v10 = sub_1BF4E9574() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9528, &qword_1BF4F1670);
  LOBYTE(v43) = 2;
  sub_1BF3BC3B0(&qword_1EDC963B8, &qword_1EDC96490, MEMORY[0x1E6985770], MEMORY[0x1E69E6510]);
  sub_1BF4E95B4();
  v21 = v7;
  *(v10 + 2) = v45;
  LOBYTE(v45) = 1;
  *(v10 + 1) = sub_1BF4E95A4();
  LOBYTE(v45) = 3;
  v10[24] = sub_1BF4E9574() & 1;
  LOBYTE(v45) = 4;
  v10[v39] = sub_1BF4E9574() & 1;
  LOBYTE(v45) = 6;
  *&v10[v42] = sub_1BF4E95A4();
  LOBYTE(v43) = 5;
  sub_1BF3BCF88();
  sub_1BF4E95B4();
  v23 = v45;
  sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9530, &qword_1BF4F1678);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BF4ECFE0;
  *(v24 + 32) = sub_1BF3901C0(0, &qword_1EDC962F0, 0x1E695DEC8);
  *(v24 + 40) = sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
  sub_1BF4E8EC4();
  v42 = v23;

  if (v44)
  {
    sub_1BF38EB2C(&v43, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9538, &qword_1BF4F1680);
    swift_dynamicCast();
    v26 = sub_1BF3BCFDC(v46);

    *&v10[v31] = v26;
    LOBYTE(v45) = 7;
    v27 = v41;
    if (sub_1BF4E95E4())
    {
      LOBYTE(v45) = 7;
      sub_1BF3A43F4(&qword_1EBDD9540, MEMORY[0x1E6968278], MEMORY[0x1E6968298]);
      sub_1BF4E95B4();
      (*(v40 + 8))(v21, v27);
      v28 = sub_1BF3B03C0(v42, *(&v23 + 1));
      v29 = v37;
      v34(v37, 0, 1, v36, v28);
      sub_1BF44982C(v29, &v10[v35]);
    }

    else
    {
      (*(v40 + 8))(v21, v27);
      sub_1BF3B03C0(v42, *(&v23 + 1));
    }

    sub_1BF44B0AC(v10, v38);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF3BCF88()
{
  result = qword_1EDC9F9A0;
  if (!qword_1EDC9F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F9A0);
  }

  return result;
}

uint64_t sub_1BF3BCFDC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BF4E9204())
  {
    v4 = sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    v5 = sub_1BF3BD134(&qword_1EDC9F9B8, &qword_1EDC9F9C0, 0x1E69943A0);
    result = MEMORY[0x1BFB58FA0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB59570](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1BF3BD184(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1BF4E9204();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BF3BD134(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BF3901C0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF3BD184(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BF4E9214();

    if (v9)
    {

      sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1BF4E9204();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BF4AD2C0(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1BF4ADE00(v20 + 1, &qword_1EBDD9590, &unk_1BF4F1930);
    }

    v18 = v8;
    sub_1BF4AE6DC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
  v11 = sub_1BF4E9094();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1BF3BD3CC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BF4E90A4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

void sub_1BF3BD3CC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BF4ADE00(v6 + 1, &qword_1EBDD9590, &unk_1BF4F1930);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BF4AF578();
      goto LABEL_12;
    }

    sub_1BF4B03A0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1BF4E9094();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BF4E90A4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BF4E9784();
  __break(1u);
}

uint64_t sub_1BF3BD584(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_1BF3BE970(v1, a1, &v6);
  os_unfair_lock_unlock(*(v3 + 16));

  return v6;
}

uint64_t sub_1BF3BD60C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v159 = a1;
  v5 = *v2;
  v158 = v5;
  v6 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v144 = &v136[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *&v153 = &v136[-v9];
  v155 = sub_1BF4E7334();
  v157 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v143 = &v136[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v147 = &v136[-v12];
  v154 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v154);
  v141 = &v136[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v136[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v136[-v17];
  v19 = *(v5 + 80);
  v20 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v145 = &v136[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v142 = &v136[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v140 = &v136[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v136[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v136[-v31];
  os_unfair_lock_assert_owner(*(*(v3 + qword_1EDC9AF58) + 16));
  v33 = qword_1EDC9AF50;
  v34 = *(v20 + 16);
  v160 = v19;
  v34(v32, a2, v19);
  sub_1BF39B31C(v159, v18, type metadata accessor for ReloadConfiguration);
  v148 = v33;
  v161 = v3;
  v35 = sub_1BF4E7B34();
  v36 = sub_1BF4E8E84();
  v37 = os_log_type_enabled(v35, v36);
  v146 = v29;
  v152 = v20;
  v150 = v20 + 16;
  v149 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v162 = v139;
    *v38 = 136446466;
    v138 = v35;
    v39 = v160;
    v34(v29, v32, v160);
    v40 = v39;
    v137 = v36;
    v41 = *(v20 + 8);
    v41(v32, v39);
    v42 = sub_1BF4E96A4();
    v44 = v43;
    v151 = v41;
    v41(v29, v40);
    v45 = a2;
    v46 = sub_1BF38D65C(v42, v44, &v162);

    *(v38 + 4) = v46;
    *(v38 + 12) = 2082;
    v47 = ReloadConfiguration.description.getter();
    v49 = v48;
    sub_1BF45EABC(v18, type metadata accessor for ReloadConfiguration);
    v50 = sub_1BF38D65C(v47, v49, &v162);

    *(v38 + 14) = v50;
    v51 = v138;
    _os_log_impl(&dword_1BF389000, v138, v137, "%{public}s Reload with configuration %{public}s", v38, 0x16u);
    v52 = v139;
    swift_arrayDestroy();
    v53 = v156;
    MEMORY[0x1BFB5A5D0](v52, -1, -1);
    v54 = v38;
    v55 = v155;
    MEMORY[0x1BFB5A5D0](v54, -1, -1);
  }

  else
  {
    v151 = *(v20 + 8);
    v151(v32, v160);

    sub_1BF45EABC(v18, type metadata accessor for ReloadConfiguration);
    v45 = a2;
    v55 = v155;
    v53 = v156;
  }

  sub_1BF39B31C(v159, v53, type metadata accessor for ReloadConfiguration);
  v56 = (*(*v161 + 1544))(v45, v53);
  v57 = v157;
  v58 = v154;
  v59 = v153;
  if ((v56 & 1) == 0)
  {
    v61 = v145;
    v62 = v149;
    v149(v145, v45, v160);
    v63 = sub_1BF4E7B34();
    v64 = sub_1BF4E8E84();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v146;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v162 = v161;
      *v67 = 136446210;
      v68 = v160;
      v62(v66, v61, v160);
      v69 = v61;
      v70 = v66;
      v71 = v151;
      v151(v69, v68);
      v72 = sub_1BF4E96A4();
      v74 = v73;
      v71(v70, v68);
      v75 = sub_1BF38D65C(v72, v74, &v162);

      *(v67 + 4) = v75;
      _os_log_impl(&dword_1BF389000, v63, v64, "%{public}s Reload not permitted.", v67, 0xCu);
      v76 = v161;
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      MEMORY[0x1BFB5A5D0](v76, -1, -1);
      MEMORY[0x1BFB5A5D0](v67, -1, -1);
    }

    else
    {
      v151(v61, v160);
    }

LABEL_30:
    v134 = v53;
    return sub_1BF45EABC(v134, type metadata accessor for ReloadConfiguration);
  }

  v60 = *(v161 + qword_1EDC9AFB8);
  v162 = *(v53 + *(v154 + 24));
  sub_1BF39C510(v162);
  v159 = v60;
  sub_1BF3C23CC(&v162, v59);
  sub_1BF39C9A4(v162);
  if ((*(v57 + 48))(v59, 1, v55) == 1)
  {
    sub_1BF38C9B4(v59, &qword_1EBDD9B00, &qword_1BF4F1E50);
LABEL_26:
    swift_beginAccess();

    sub_1BF4E8854();

    if (v162 != 3)
    {
      swift_beginAccess();

      sub_1BF4E8854();

      if (v168 != 4)
      {
        LOBYTE(v168) = 0;
        sub_1BF399684(&v168, v45);
      }
    }

    swift_beginAccess();
    v167 = *(v53 + v58[6]);
    sub_1BF39C510(v167);
    sub_1BF3BF60C(v45, &v167);
    sub_1BF39C9A4(v167);
    sub_1BF3C03E0(v45, v53);
    goto LABEL_30;
  }

  v77 = *(v57 + 32);
  (v77)(v147, v59, v55);
  swift_beginAccess();
  v78 = v158;
  v79 = *(v158 + 104);

  v162 = v160;
  v163 = *(v78 + 88);
  v139 = v79;
  v164 = v79;
  v80 = v78[8];
  v153 = v78[7];
  v165 = v153;
  v166 = v80;
  type metadata accessor for ReloadTaskPair(0, &v162);
  sub_1BF4E8854();

  if (!v169)
  {
    v82 = v143;
    v83 = v142;
    goto LABEL_18;
  }

  v81 = sub_1BF39B43C();

  v82 = v143;
  v83 = v142;
  if (!v81)
  {
LABEL_18:
    v145 = v77;
    *&v153 = v45;
    v100 = v149;
    v149(v83, v45, v160);
    v101 = v157;
    (*(v157 + 16))(v82, v147, v55);
    v102 = v82;
    v103 = sub_1BF4E7B34();
    LODWORD(v148) = sub_1BF4E8E64();
    if (os_log_type_enabled(v103, v148))
    {
      v142 = v103;
      v104 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v162 = v140;
      *v104 = 136446722;
      v105 = v100;
      v106 = v146;
      v107 = v160;
      v105(v146, v83, v160);
      v108 = v83;
      v109 = v151;
      v151(v108, v107);
      v110 = sub_1BF4E96A4();
      v112 = v111;
      v109(v106, v107);
      v113 = sub_1BF38D65C(v110, v112, &v162);

      *(v104 + 4) = v113;
      *(v104 + 12) = 2082;
      v53 = v156;
      swift_beginAccess();
      v169 = *(v53 + v58[6]);
      sub_1BF39C510(v169);
      v114 = ReloadConfiguration.ReloadReason.description.getter();
      v116 = v115;
      sub_1BF39C9A4(v169);
      v117 = sub_1BF38D65C(v114, v116, &v162);

      *(v104 + 14) = v117;
      *(v104 + 22) = 2082;
      if (qword_1EDC9F0F0 != -1)
      {
        swift_once();
      }

      v118 = qword_1EDC9F0F8;
      v119 = v143;
      v120 = sub_1BF4E7254();
      v121 = [v118 stringFromDate_];

      v122 = sub_1BF4E8914();
      v124 = v123;

      v125 = v157;
      v55 = v155;
      (*(v157 + 8))(v119, v155);
      v126 = sub_1BF38D65C(v122, v124, &v162);

      *(v104 + 24) = v126;
      v101 = v125;
      v127 = v142;
      _os_log_impl(&dword_1BF389000, v142, v148, "%{public}s Reload loop detected for reason: %{public}s; delaying reload to %{public}s", v104, 0x20u);
      v128 = v140;
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v128, -1, -1);
      MEMORY[0x1BFB5A5D0](v104, -1, -1);

      v58 = v154;
    }

    else
    {
      v151(v83, v160);

      (*(v101 + 8))(v102, v55);
      v53 = v156;
    }

    v129 = v144;
    (v145)(v144, v147, v55);
    (*(v101 + 56))(v129, 0, 1, v55);
    v130 = swift_allocObject();
    swift_beginAccess();
    v131 = *(v53 + v58[6]);
    v45 = v153;
    if (v131 >> 61 == 3)
    {
      v131 = *((v131 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    *(v130 + 16) = v131;
    sub_1BF39C510(v131);
    v132 = v58[9];
    v133 = v141;
    sub_1BF3B4C44(v144, v141, type metadata accessor for ReloadConfiguration.ReloadType);
    v133[v58[5]] = 0;
    *&v133[v58[7]] = 1;
    *&v133[v58[6]] = v130 | 0x6000000000000000;
    v133[v58[8]] = 1;
    v133[v132] = 0;
    sub_1BF45E8A4(v133, v53);
    goto LABEL_26;
  }

  if (*(v81 + *(*v81 + 168) + v58[6]) >> 61 != 3)
  {

    goto LABEL_18;
  }

  v84 = v140;
  v85 = v149;
  v149(v140, v45, v160);

  v86 = sub_1BF4E7B34();
  v87 = sub_1BF4E8E84();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v162 = v161;
    *v88 = 136446466;
    v89 = v146;
    v90 = v160;
    v85(v146, v84, v160);
    v91 = v151;
    v151(v84, v90);
    v92 = sub_1BF4E96A4();
    v94 = v93;
    v91(v89, v90);
    v95 = sub_1BF38D65C(v92, v94, &v162);

    *(v88 + 4) = v95;
    *(v88 + 12) = 2080;
    v96 = sub_1BF42E0F4();
    v98 = sub_1BF38D65C(v96, v97, &v162);

    *(v88 + 14) = v98;
    _os_log_impl(&dword_1BF389000, v86, v87, "%{public}s Reload not permitted; in reload backoff - waiting on current backoff task to flush [%s]", v88, 0x16u);
    v99 = v161;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v99, -1, -1);
    MEMORY[0x1BFB5A5D0](v88, -1, -1);

    (*(v157 + 8))(v147, v155);
  }

  else
  {
    v151(v84, v160);

    (*(v157 + 8))(v147, v55);
  }

  v134 = v156;
  return sub_1BF45EABC(v134, type metadata accessor for ReloadConfiguration);
}