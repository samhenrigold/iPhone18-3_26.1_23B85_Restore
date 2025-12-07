id sub_1BA2001E8(char *a1, void *a2)
{
  v4 = type metadata accessor for SummarySharingOnboardingError(0);
  *&v6 = MEMORY[0x1EEE9AC00](v4, v5).n128_u64[0];
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a2 contact];
  if (result)
  {
    v10 = result;

    sub_1B9FF0EE8();

    *v8 = sub_1BA4A7A08();
    v8[1] = v11;
    swift_storeEnumTagMultiPayload();
    sub_1BA0C6BA4(a1, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);

    return sub_1BA1F149C(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA200304(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A6478();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A64C8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >= 2u)
  {
    v35 = v18;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      if (sub_1BA1FF488(a3))
      {
        sub_1BA1FFBBC(a3);
      }

      else
      {
        sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
        v30 = sub_1BA4A7308();
        v31 = swift_allocObject();
        v31[2] = a3;
        v31[3] = v22;
        v31[4] = v37;
        aBlock[4] = sub_1BA204DE4;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B9F0B040;
        aBlock[3] = &block_descriptor_64;
        v32 = _Block_copy(aBlock);
        v33 = a3;
        v34 = v22;

        sub_1BA4A64A8();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1B9F31534();
        sub_1BA4A7C38();
        MEMORY[0x1BFAF1D50](0, v20, v14, v32);
        _Block_release(v32);

        (*(v36 + 8))(v14, v11);
        (*(v16 + 8))(v20, v35);
      }
    }

    else
    {
      sub_1BA4A3E28();
      v23 = sub_1BA4A3E88();
      v24 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock[0] = v26;
        *v25 = 136315138;
        v27 = sub_1BA4A85D8();
        v29 = sub_1B9F0B82C(v27, v28, aBlock);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_1B9F07000, v23, v24, "%s Self was nil.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1BFAF43A0](v26, -1, -1);
        MEMORY[0x1BFAF43A0](v25, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
    }
  }
}

id sub_1BA2007C8(void *a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for SummarySharingOnboardingError(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v14 = a1;
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v15, v16))
  {
    v35 = v9;
    v36 = v5;
    v37 = a2;
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v40 = v34;
    *v17 = 136315394;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, &v40);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = [v14 normalizedAddress];
    if (v21)
    {
      v22 = v21;
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v38 = v23;
    v39 = v25;
    sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v26 = sub_1BA4A6808();
    v28 = sub_1B9F0B82C(v26, v27, &v40);

    *(v17 + 14) = v28;
    _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] %s was not reachable. Returning error.", v17, 0x16u);
    v29 = v34;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    (*(v10 + 8))(v13, v35);
    a2 = v37;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  result = [v14 contact];
  if (result)
  {
    v31 = result;

    sub_1B9FF0EE8();

    *v8 = sub_1BA4A7A08();
    v8[1] = v32;
    swift_storeEnumTagMultiPayload();
    sub_1BA0C6BA4(a2, 0, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);

    return sub_1BA1F149C(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA200BE0()
{
  result = qword_1EBBEE5A8;
  if (!qword_1EBBEE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE5A8);
  }

  return result;
}

double sub_1BA200C34(uint64_t a1, __int128 *a2)
{
  sub_1BA1FC780(a2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults;
  swift_beginAccess();
  *(a1 + v3) = MEMORY[0x1E69E7CC0];

  if (*(a1 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable))
  {

    sub_1BA4A4D48();
  }

  return result;
}

uint64_t sub_1BA200CB8()
{
  sub_1BA20514C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2051D0(0);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2052BC(0);
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v0;
  v34 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactPhotoPublisher];
  v15 = qword_1EDC5E100;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDC84A30;
  v17 = sub_1BA4A6758();
  v18 = [objc_opt_self() imageNamed:v17 inBundle:v16];

  v33 = v18;
  sub_1B9F6A85C(0, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8, sub_1B9F0ADF8);
  sub_1BA4A4E78();
  sub_1BA1107A8(0);
  sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8, MEMORY[0x1E695BED8]);
  sub_1B9F28F00(&qword_1EDC5F430, sub_1BA20514C, MEMORY[0x1E695C008]);
  sub_1BA4A4FC8();
  (*(v3 + 8))(v6, v2);

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4C69C0;
  *(v19 + 32) = 0x4054000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BA205858;
  *(v20 + 24) = v19;
  sub_1B9F28F00(&qword_1EBBEE668, sub_1BA2051D0, MEMORY[0x1E695BC68]);
  v21 = v29;
  sub_1BA4A4FE8();

  (*(v28 + 8))(v10, v21);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = v32;
  sub_1B9F28F00(&unk_1EBBEE670, sub_1BA2052BC, MEMORY[0x1E695BD60]);
  v24 = v23;
  v25 = v31;
  sub_1BA4A4F88();

  return (*(v30 + 8))(v14, v25);
}

uint64_t sub_1BA2011C0()
{
  sub_1BA20514C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2051D0(0);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2052BC(0);
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v0;
  v34 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher];
  v15 = qword_1EDC5E100;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDC84A30;
  v17 = sub_1BA4A6758();
  v18 = [objc_opt_self() imageNamed:v17 inBundle:v16];

  v33 = v18;
  sub_1B9F6A85C(0, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8, sub_1B9F0ADF8);
  sub_1BA4A4E78();
  sub_1BA1107A8(0);
  sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8, MEMORY[0x1E695BED8]);
  sub_1B9F28F00(&qword_1EDC5F430, sub_1BA20514C, MEMORY[0x1E695C008]);
  sub_1BA4A4FC8();
  (*(v3 + 8))(v6, v2);

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4C69C0;
  *(v19 + 32) = 0x4054000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BA205394;
  *(v20 + 24) = v19;
  sub_1B9F28F00(&qword_1EBBEE668, sub_1BA2051D0, MEMORY[0x1E695BC68]);
  v21 = v29;
  sub_1BA4A4FE8();

  (*(v28 + 8))(v10, v21);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = v32;
  sub_1B9F28F00(&unk_1EBBEE670, sub_1BA2052BC, MEMORY[0x1E695BD60]);
  v24 = v23;
  v25 = v31;
  sub_1BA4A4F88();

  return (*(v30 + 8))(v14, v25);
}

double sub_1BA2016C8(void *a1, char *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    v10 = [a2 headerView];
    [v10 setIcon:v9 accessibilityLabel:0];

    v18 = [a2 headerView];
    [v18 setAllowFullWidthIcon_];

    v11 = v18;
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1B9F0B82C(0xD00000000000003CLL, 0x80000001BA4F4930, &v19);
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Failed to create stitched image; using default contact image", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v19 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactPhotoPublisher];
    *(swift_allocObject() + 16) = a2;
    sub_1BA1107A8(0);
    sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8, MEMORY[0x1E695BED8]);

    v17 = a2;
    sub_1BA4A4F88();
  }

  return result;
}

double sub_1BA2019E0(void *a1, char *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    v10 = [a2 headerView];
    [v10 setIcon:v9 accessibilityLabel:0];

    v18 = [a2 headerView];
    [v18 setAllowFullWidthIcon_];

    v11 = v18;
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1B9F0B82C(0xD000000000000039, 0x80000001BA4F47E0, &v19);
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Failed to create stitched image; using default contact image", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v19 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher];
    *(swift_allocObject() + 16) = a2;
    sub_1BA1107A8(0);
    sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8, MEMORY[0x1E695BED8]);

    v17 = a2;
    sub_1BA4A4F88();
  }

  return result;
}

id sub_1BA201CF8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BA4A6758();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1BA4A1488();

    swift_willThrow();
  }

  return v6;
}

void sub_1BA201DD4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  *a2 = v3;
}

uint64_t sub_1BA201E54(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BA4A4F38();
}

unint64_t *sub_1BA201EC4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1BA202024(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1BA202110(v13, v7, v3);
  result = MEMORY[0x1BFAF43A0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_1BA202024(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1BA202620(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_1BA202620(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1BA202110(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1BA202024(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1BA202188(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B9F24DD0(0, &unk_1EBBEE690, MEMORY[0x1E69E6370]);
  result = sub_1BA4A8098();
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
    v32 = *(v17 + v16);
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
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
    *(*(v9 + 56) + v24) = v32;
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

uint64_t sub_1BA2023C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B9F24DD0(0, &qword_1EDC6E348, MEMORY[0x1E69E7CA0] + 8);
  result = sub_1BA4A8098();
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
    sub_1B9F0AD9C(v17 + 32 * v16, v33);
    sub_1B9F46920(v33, v32);
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
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
    result = sub_1B9F46920(v32, (*(v9 + 56) + 32 * v24));
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

uint64_t sub_1BA202620(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1BA204D7C(0);
  result = sub_1BA4A8098();
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
    v32 = *(v17 + 8 * v16);
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
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
    *(*(v9 + 56) + 8 * v24) = v32;
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

void sub_1BA202850(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      sub_1B9FDC20C(0);
      v7 = sub_1BA4A8098();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v30 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v31 = (v9 - 1) & v9;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(*(v4 + 48) + 8 * v15);
        v17 = *(*(v4 + 56) + 8 * v15);
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        sub_1BA4A8488();
        v18 = v16;

        sub_1BA4A68C8();
        v19 = sub_1BA4A84D8();

        v20 = -1 << *(v8 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v11 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v8 + 48) + 8 * v23) = v18;
        *(*(v8 + 56) + 8 * v23) = v17;
        ++*(v8 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v30;
        v9 = v31;
        if (!v5)
        {
          return;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v31 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t sub_1BA202AB0(uint64_t a1, void *a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = sub_1B9FDA9BC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1BA0F3F78(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1B9FDA9BC(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    sub_1B9F0ADF8(0, &unk_1EBBEE680, 0x1E696AAE8);
    v9 = sub_1BA4A83B8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    sub_1BA0F1E24();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1BA0F7E88(v9, a2, a1, v8);
    v19 = a2;
    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

uint64_t sub_1BA202BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_1B9F24A34(a2, a3);
  v13 = v10[2];
  v14 = __OFADD__(v13, (v12 ^ 1) & 1);
  v15 = v13 + ((v12 ^ 1) & 1);
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v15)
  {
    sub_1BA0F4F88(v15, isUniquelyReferenced_nonNull_native);
    v11 = sub_1B9F24A34(a2, a3);
    if ((v4 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_1BA4A83B8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v11;
    sub_1BA0F2770();
    v11 = v19;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1B9F23574(v11, a2, a3, a1, v10);

    v18 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = v10[7];
  v18 = *(v17 + 8 * v11);
  *(v17 + 8 * v11) = a1;
LABEL_11:
  *v5 = v10;
  return v18;
}

char *sub_1BA202D18(void *a1, void *a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  sub_1BA2057F0(0, &qword_1EBBEE4E0, &type metadata for QueryState, MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v44 - v11;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController__reachabilityQueryState;
  LOBYTE(v46[0]) = 0;
  sub_1BA4A4EE8();
  (*(v9 + 32))(&v3[v13], v12, v8);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController] = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults] = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachableContactIdentifiers;
  *&v3[v15] = sub_1B9FDBF1C(v14);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController;
  *&v3[v16] = [objc_allocWithZone(MEMORY[0x1E69963B0]) init];
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView] = 0;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView;
  *&v3[v17] = [objc_allocWithZone(MEMORY[0x1E69DD020]) init];
  v18 = [objc_allocWithZone(MEMORY[0x1E69963D8]) initWithAutocompleteSearchType_];
  if (!v18)
  {
    __break(1u);
  }

  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager] = v18;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_isInitialReachabilityQuery] = 1;
  v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_cancellables] = MEMORY[0x1E69E7CD0];
  v19 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_sharingEntryStore] = v19;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_healthStore] = a1;
  sub_1B9F0A534(a2, &v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_healthExperienceStore]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_selectionFlowContext] = a3;
  v20 = objc_allocWithZone(MEMORY[0x1E695CE18]);
  v21 = a1;

  v22 = [v20 init];
  v46[0] = 0;
  v23 = [v22 _ios_meContactIdentifierWithError_];

  v24 = v46[0];
  if (v23)
  {
    v25 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v27 = v26;
    v28 = v24;
  }

  else
  {
    v29 = v46[0];
    v30 = sub_1BA4A1488();

    swift_willThrow();
    v25 = 0;
    v27 = 0;
  }

  v31 = &v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_meContactIdentifier];
  *v31 = v25;
  v31[1] = v27;
  v32 = type metadata accessor for SummarySharingOnboardingContactPickerViewController(0);
  v45.receiver = v3;
  v45.super_class = v32;
  v33 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  v34 = *&v33[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_sharingEntryStore];
  v35 = v33;
  [v34 setDelegate_];
  v36 = sub_1BA1FB0E0();
  [v36 setDelegate_];

  v37 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController;
  v38 = [*&v35[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController] searchBar];
  [v38 setAutocapitalizationType_];

  [*&v35[v37] setObscuresBackgroundDuringPresentation_];
  [*&v35[v37] setHidesNavigationBarDuringPresentation_];
  [*&v35[v37] setAutomaticallyShowsCancelButton_];
  [*&v35[v37] setScopeBarActivation_];
  [*&v35[v37] setActive_];
  v39 = [*&v35[v37] searchBar];
  [v39 setDelegate_];

  [*&v35[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager] setSearchTypes_];
  v40 = [v35 navigationItem];
  [v40 setSearchController_];

  v41 = [v35 navigationItem];
  [v41 setPreferredSearchBarPlacement_];

  v42 = [v35 navigationItem];
  [v42 setHidesSearchBarWhenScrolling_];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v35;
}

void sub_1BA203250()
{
  sub_1BA2057F0(0, &qword_1EBBEE4E0, &type metadata for QueryState, MEMORY[0x1E695C070]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v13[-v5];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController__reachabilityQueryState;
  v13[15] = 0;
  sub_1BA4A4EE8();
  (*(v3 + 32))(v0 + v7, v6, v2);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachableContactIdentifiers;
  *(v0 + v9) = sub_1B9FDBF1C(v8);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69963B0]) init];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView) = 0;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x1E69DD020]) init];
  v12 = [objc_allocWithZone(MEMORY[0x1E69963D8]) initWithAutocompleteSearchType_];
  if (!v12)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager) = v12;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_isInitialReachabilityQuery) = 1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_cancellables) = MEMORY[0x1E69E7CD0];
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA203498(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A64C8();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v13 = sub_1BA4A7308();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v1;
  v14[4] = ObjectType;
  aBlock[4] = sub_1BA204E70;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_85;
  v15 = _Block_copy(aBlock);

  v16 = v1;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v12, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v19);
}

uint64_t sub_1BA20379C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v13 = a3;

  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v8;
    v20 = v19;
    v27[0] = v19;
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2080;
    v21 = v13;
    *(v17 + 14) = sub_1B9F0B82C(a1, a2, v27);
    _os_log_impl(&dword_1B9F07000, v14, v15, "Reachability status came back %@ for identifier %s", v17, 0x16u);
    sub_1B9F8C6C8(v18);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    (*(v9 + 8))(v12, v25);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v22 = [v13 integerValue];
  swift_beginAccess();
  sub_1BA202BD4(v22, a1, a2);
  return swift_endAccess();
}

void sub_1BA203A00(void *a1, void (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v56 - v13;
  sub_1BA4A3E28();
  v15 = a1;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();

  v18 = os_log_type_enabled(v16, v17);
  v60 = v8;
  v58 = ObjectType;
  if (v18)
  {
    v56 = v7;
    v57 = a2;
    v59 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v64 = v20;
    *v19 = 136315394;
    v21 = sub_1BA4A85D8();
    v23 = sub_1B9F0B82C(v21, v22, &v64);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = [v15 normalizedAddress];
    if (v24)
    {
      v25 = v24;
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v62 = v26;
    v63 = v28;
    sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v31 = sub_1BA4A6808();
    v33 = sub_1B9F0B82C(v31, v32, &v64);

    *(v19 + 14) = v33;
    _os_log_impl(&dword_1B9F07000, v16, v17, "%s Attempting to update state for contact: %s.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);

    v29 = *(v60 + 8);
    v7 = v56;
    v29(v14, v56);
    v30 = v57;
    a3 = v59;
  }

  else
  {

    v29 = *(v8 + 8);
    v29(v14, v7);
    v30 = a2;
  }

  v34 = sub_1BA1FF488(v15);
  v35 = v61;
  if (v34)
  {
    sub_1BA4A3E28();
    v36 = v15;
    v37 = sub_1BA4A3E88();
    v38 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v7;
      v59 = a3;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v64 = v41;
      *v40 = 136315394;
      v42 = sub_1BA4A85D8();
      v44 = sub_1B9F0B82C(v42, v43, &v64);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v45 = [v36 normalizedAddress];
      if (v45)
      {
        v46 = v30;
        v47 = v45;
        v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v50 = v49;

        v30 = v46;
      }

      else
      {
        v48 = 0;
        v50 = 0;
      }

      v62 = v48;
      v63 = v50;
      sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v52 = sub_1BA4A6808();
      v54 = sub_1B9F0B82C(v52, v53, &v64);

      *(v40 + 14) = v54;
      _os_log_impl(&dword_1B9F07000, v37, v38, "%s Successfully updated contact %s as reachable.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);

      v29(v61, v39);
      v51 = &selRef_systemBlueColor;
    }

    else
    {

      v29(v35, v7);
      v51 = &selRef_systemBlueColor;
    }
  }

  else
  {
    v51 = &selRef_secondaryLabelColor;
  }

  v55 = [objc_opt_self() *v51];
  v30();
}

void sub_1BA203F20(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v72 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v7, v8).n128_u64[0];
  v11 = &v61 - v10;
  v71 = a1;
  v12 = [a1 children];
  if (v12)
  {
    v14 = v12;
    sub_1B9F0ADF8(0, &qword_1EBBE9970, 0x1E6996408);
    v15 = sub_1BA4A6B08();

    if (!(v15 >> 62))
    {
      goto LABEL_3;
    }

LABEL_24:
    v16 = sub_1BA4A7CC8();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_25:

    return;
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_24;
  }

LABEL_3:
  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_4:
  v61 = v11;
  v17 = 0;
  v18 = 0;
  v73 = v15 & 0xC000000000000001;
  v66 = v15 & 0xFFFFFFFFFFFFFF8;
  v19 = (v4 + 8);
  *&v13 = 136315394;
  v63 = v13;
  v64 = (v4 + 8);
  v20 = v72;
  v62 = v3;
  v69 = v15;
  v70 = v1;
  v68 = v16;
  while (1)
  {
    if (v73)
    {
      v21 = MEMORY[0x1BFAF2860](v17, v15);
    }

    else
    {
      if (v17 >= *(v66 + 16))
      {
        goto LABEL_33;
      }

      v21 = *(v15 + 8 * v17 + 32);
    }

    v22 = v21;
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    if (sub_1BA1FF488(v21))
    {
      break;
    }

LABEL_6:
    ++v17;
    if (v23 == v16)
    {
      goto LABEL_25;
    }
  }

  v24 = [v22 normalizedAddress];
  if (!v24 || (v25 = v24, v26 = [v24 _appearsToBeEmail], v25, v20 = v72, !v26))
  {
    sub_1BA4A3E28();
    v27 = v71;
    v28 = sub_1BA4A3E88();
    v29 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v28, v29))
    {
      v67 = v18;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76 = v31;
      *v30 = v63;
      v32 = sub_1BA4A85D8();
      v34 = sub_1B9F0B82C(v32, v33, &v76);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = [v27 normalizedAddress];
      if (v35)
      {
        v36 = v35;
        v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v74 = v37;
      v75 = v39;
      sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v40 = sub_1BA4A6808();
      v42 = sub_1B9F0B82C(v40, v41, &v76);

      *(v30 + 14) = v42;
      _os_log_impl(&dword_1B9F07000, v28, v29, "%s Successfully found a reachable preferred endpoint for address %s.", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);

      v19 = v64;
      v20 = v72;
      v3 = v62;
      (*v64)(v72, v62);
    }

    else
    {

      (*v19)(v20, v3);
    }

    v18 = v22;
    v15 = v69;
    v16 = v68;
    goto LABEL_6;
  }

  v43 = v18;

  v44 = v61;
  sub_1BA4A3E28();
  v45 = v71;
  v46 = sub_1BA4A3E88();
  v47 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v76 = v49;
    *v48 = v63;
    v50 = sub_1BA4A85D8();
    v52 = sub_1B9F0B82C(v50, v51, &v76);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    v53 = [v45 normalizedAddress];
    if (v53)
    {
      v54 = v53;
      v55 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v74 = v55;
    v75 = v57;
    sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v58 = sub_1BA4A6808();
    v60 = sub_1B9F0B82C(v58, v59, &v76);

    *(v48 + 14) = v60;
    _os_log_impl(&dword_1B9F07000, v46, v47, "%s Successfully set email address %s as primary address.", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v49, -1, -1);
    MEMORY[0x1BFAF43A0](v48, -1, -1);

    (*v64)(v61, v3);
  }

  else
  {

    (*v19)(v44, v3);
  }
}

void sub_1BA204568(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2057F0(0, &qword_1EBBEE5B0, &type metadata for QueryState, MEMORY[0x1E695C060]);
  v11 = v10;
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - v13;
  v15 = sub_1BA4A6478();
  v61 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1BA4A64C8();
  v58 = *(v60 - 8);
  *&v19 = MEMORY[0x1EEE9AC00](v60, v18).n128_u64[0];
  v57 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 normalizedAddress];
  if (v21)
  {
    v22 = v21;
    v55 = v15;
    v56 = ObjectType;
    v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v25 = v24;

    v26 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachableContactIdentifiers;
    swift_beginAccess();
    v27 = *(*&v2[v26] + 16);

    if (v27 && (sub_1B9F24A34(v23, v25), (v28 & 1) != 0))
    {

      v30 = sub_1BA201EC4(v29);

      if (v30[2])
      {
        sub_1B9F24A34(v23, v25);
        v32 = v31;

        if (v32)
        {
          sub_1BA1FFBBC(a1);

          return;
        }
      }

      else
      {
      }

      sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
      v47 = sub_1BA4A7308();
      v48 = swift_allocObject();
      *(v48 + 16) = v2;
      *(v48 + 24) = a1;
      aBlock[4] = sub_1BA204D68;
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_52;
      v49 = _Block_copy(aBlock);
      v50 = v2;
      v51 = a1;

      v52 = v57;
      sub_1BA4A64A8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1B9F31534();
      v53 = v59;
      v54 = v55;
      sub_1BA4A7C38();
      MEMORY[0x1BFAF1D50](0, v52, v53, v49);

      _Block_release(v49);

      (*(v61 + 8))(v53, v54);
      (*(v58 + 8))(v52, v60);
    }

    else
    {

      swift_beginAccess();
      sub_1BA2057F0(0, &qword_1EBBEE4E0, &type metadata for QueryState, MEMORY[0x1E695C070]);
      sub_1BA4A4EF8();
      swift_endAccess();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      v34[2] = v33;
      v34[3] = a1;
      v34[4] = v56;
      sub_1BA204CEC();
      v35 = a1;
      v36 = sub_1BA4A5148();

      (*(v62 + 8))(v14, v11);
      *&v2[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable] = v36;
    }
  }

  else
  {
    v61 = v5;
    v62 = v6;
    sub_1BA4A3E28();
    v37 = a1;
    v38 = sub_1BA4A3E88();
    v39 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v40 = 136315394;
      v43 = sub_1BA4A85D8();
      v45 = sub_1B9F0B82C(v43, v44, aBlock);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v41 = v37;
      v46 = v37;
      _os_log_impl(&dword_1B9F07000, v38, v39, "%s Recipient address is nil: %@", v40, 0x16u);
      sub_1B9F8C6C8(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
    }

    (*(v62 + 8))(v9, v61);
  }
}

unint64_t sub_1BA204CEC()
{
  result = qword_1EBBEE5B8;
  if (!qword_1EBBEE5B8)
  {
    sub_1BA2057F0(255, &qword_1EBBEE5B0, &type metadata for QueryState, MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE5B8);
  }

  return result;
}

void sub_1BA204D7C(uint64_t a1)
{
  if (!qword_1EBBEE5D0)
  {
    type metadata accessor for HKSharingReachabilityStatus(255);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE5D0);
    }
  }
}

uint64_t objectdestroy_48Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void sub_1BA204E7C(uint64_t a1)
{
  if (!qword_1EBBEE5E0)
  {
    sub_1BA4A7488();
    sub_1B9F0ADF8(255, &unk_1EBBEE5E8, 0x1E69DCF28);
    sub_1B9F28F00(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v1 = sub_1BA4A4AC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE5E0);
    }
  }
}

void sub_1BA204F38(uint64_t a1)
{
  if (!qword_1EBBEE600)
  {
    sub_1BA4A7488();
    sub_1BA2057F0(255, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1B9F28F00(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE600);
    }
  }
}

void sub_1BA205008(uint64_t a1)
{
  if (!qword_1EBBEE608)
  {
    sub_1BA204F38(255);
    sub_1B9F0ADF8(255, &qword_1EBBEE610, 0x1E695DFD0);
    sub_1B9F28F00(&qword_1EBBEE618, sub_1BA204F38, MEMORY[0x1E695BD60]);
    sub_1BA2050D4();
    v1 = sub_1BA4A4C48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE608);
    }
  }
}

unint64_t sub_1BA2050D4()
{
  result = qword_1EBBEE620;
  if (!qword_1EBBEE620)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEE610, 0x1E695DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE620);
  }

  return result;
}

void sub_1BA20514C(uint64_t a1)
{
  if (!qword_1EDC5F428)
  {
    sub_1B9F6A85C(255, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8, sub_1B9F0ADF8);
    v1 = sub_1BA4A4E68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F428);
    }
  }
}

void sub_1BA2051D0(uint64_t a1)
{
  if (!qword_1EBBEE640)
  {
    sub_1BA1107A8(255);
    sub_1BA20514C(255);
    sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8, MEMORY[0x1E695BED8]);
    sub_1B9F28F00(&qword_1EDC5F430, sub_1BA20514C, MEMORY[0x1E695C008]);
    v1 = sub_1BA4A4A98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE640);
    }
  }
}

void sub_1BA2052BC(uint64_t a1)
{
  if (!qword_1EBBEE660)
  {
    sub_1BA2051D0(255);
    sub_1B9F6A85C(255, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8, sub_1B9F0ADF8);
    sub_1B9F28F00(&qword_1EBBEE668, sub_1BA2051D0, MEMORY[0x1E695BC68]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE660);
    }
  }
}

uint64_t sub_1BA2053BC()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD00000000000003CLL, 0x80000001BA4F4930, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] Finished createShareHealthDataIcon stream", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA205554()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD000000000000039, 0x80000001BA4F47E0, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] Finished createShareHealthDataIcon stream", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA2056EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 12)
  {
    return sub_1B9FF3BFC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1BA205714@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BA205764(uint64_t a1)
{
  if (!qword_1EDC5DFE8)
  {
    sub_1BA2057F0(255, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DFE8);
    }
  }
}

void sub_1BA2057F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA205878()
{
  sub_1BA2061F8();
  v2 = sub_1BA4A85D8();
  v3 = v0;
  result = MEMORY[0x1BFAF1350](0x6974696C6974552BLL, 0xEA00000000007365);
  qword_1EBBEE700 = v2;
  *algn_1EBBEE708 = v3;
  return result;
}

void sub_1BA2058E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = ObjectType;
  v14[4] = sub_1BA205F3C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BA0A2650;
  v14[3] = &block_descriptor_53;
  v12 = _Block_copy(v14);

  v13 = v5;
  sub_1B9F0F1B8(a3, a4);

  [v13 fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion_];
  _Block_release(v12);
}

void sub_1BA2059FC(void *a1, void *a2, void (*a3)(void *, __n128), uint64_t a4, void *a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8)
{
  v46 = a7;
  v47 = a6;
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v45 - v21;
  if (a1)
  {
    if (!a2)
    {
      a3(a1, v20);
      v23 = swift_allocObject();
      v25 = v46;
      v24 = v47;
      v23[2] = v47;
      v23[3] = v25;
      v23[4] = a1;
      v23[5] = a8;
      v52 = sub_1BA2061EC;
      v53 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = sub_1BA454240;
      v51 = &block_descriptor_6_6;
      v26 = _Block_copy(&aBlock);
      sub_1B9F0F1B8(v24, v25);
      v27 = a1;

      [a5 updateMedicalIDData:v27 completion:v26];
      _Block_release(v26);
      return;
    }

    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_11:
    sub_1BA4A3E28();
    v37 = sub_1BA4A3E88();
    v38 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 136446210;
      if (qword_1EBBE8518 != -1)
      {
        swift_once();
      }

      *(v39 + 4) = sub_1B9F0B82C(qword_1EBBEE700, *algn_1EBBEE708, &aBlock);
      _os_log_impl(&dword_1B9F07000, v37, v38, "[%{public}s]: Fetch or create and update Medical ID - fetch failed without receiving a Medical ID and an error", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    v41 = v47;
    if (v47)
    {
      if (qword_1EBBE8518 != -1)
      {
        swift_once();
      }

      aBlock = qword_1EBBEE700;
      v49 = *algn_1EBBEE708;

      MEMORY[0x1BFAF1350](0x6D6F44726F727245, 0xEB000000006E6961);
      v42 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v43 = sub_1BA4A6758();

      v44 = [v42 initWithDomain:v43 code:-1 userInfo:0];

      v41(v44, 1);
    }

    return;
  }

  sub_1BA4A3E28();
  v28 = a2;
  v29 = sub_1BA4A3E88();
  v30 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock = v32;
    *v31 = 136446466;
    if (qword_1EBBE8518 != -1)
    {
      swift_once();
    }

    *(v31 + 4) = sub_1B9F0B82C(qword_1EBBEE700, *algn_1EBBEE708, &aBlock);
    *(v31 + 12) = 2082;
    v54 = a2;
    v33 = a2;
    sub_1B9FED358();
    v34 = sub_1BA4A6808();
    v36 = sub_1B9F0B82C(v34, v35, &aBlock);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_1B9F07000, v29, v30, "[%{public}s]: Fetch or create and update Medical ID - fetch failed: %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v31, -1, -1);
  }

  (*(v14 + 8))(v22, v13);
  if (v47)
  {
    v47(a2, 1);
  }
}

void sub_1BA205F4C(uint64_t a1, void *a2, void (*a3)(void, void, __n128), uint64_t a4, uint64_t a5)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v15 = a2;
  sub_1BA4A3E28();
  v16 = a2;
  v17 = sub_1BA4A3E88();
  v18 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v17, v18))
  {
    v26 = a5;
    v27 = a4;
    v28 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136446466;
    if (qword_1EBBE8518 != -1)
    {
      swift_once();
    }

    *(v19 + 4) = sub_1B9F0B82C(qword_1EBBEE700, *algn_1EBBEE708, &v30);
    *(v19 + 12) = 2082;
    v29 = a2;
    v21 = a2;
    sub_1B9FED358();
    v22 = sub_1BA4A6808();
    v24 = sub_1B9F0B82C(v22, v23, &v30);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s]: Failed to update Medical ID: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v20, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);

    (*(v10 + 8))(v14, v9);
    a3 = v28;
    a5 = v26;
LABEL_6:
    if (!a3)
    {
      return;
    }

    goto LABEL_7;
  }

  (*(v10 + 8))(v14, v9);
  if (!a3)
  {
    return;
  }

LABEL_7:
  a3(a5, 0, v12);
}

unint64_t sub_1BA2061F8()
{
  result = qword_1EBBEE710;
  if (!qword_1EBBEE710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBEE710);
  }

  return result;
}

uint64_t sub_1BA20624C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "feedItemIsFaulting";
  v4 = 0xD000000000000016;
  if (v2 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v2 == 1)
  {
    v6 = "feedItemIsFaulting";
  }

  else
  {
    v6 = "noParentViewController";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "CRRecentsDomainMessages";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "noParentViewController";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "CRRecentsDomainMessages";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA206324()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA2063C0(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA206448(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

unint64_t sub_1BA2064E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BA2080E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BA206510(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "feedItemIsFaulting";
  v4 = 0xD000000000000016;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "noParentViewController";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "CRRecentsDomainMessages";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

void sub_1BA20656C(void **a1, uint64_t a2, uint64_t a3)
{
  v104 = a2;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v99 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v99 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v99 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v103 = v99 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v99 - v26;
  v28 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    if ([v28 faultingState])
    {
      if (HAFeatureFlagViewLoggingEnabled())
      {
        sub_1BA4A3DD8();
        v31 = v30;
        v32 = sub_1BA4A3E88();
        v33 = v30;
        v34 = sub_1BA4A6FC8();

        if (os_log_type_enabled(v32, v34))
        {
          v35 = v5;
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138543362;
          *(v36 + 4) = v31;
          *v37 = v33;
          v38 = v31;
          _os_log_impl(&dword_1B9F07000, v32, v34, "%{public}@ startUserDataObserver() observer fired but feed item is faulting", v36, 0xCu);
          sub_1B9F8C6C8(v37);
          MEMORY[0x1BFAF43A0](v37, -1, -1);
          v39 = v36;
          v5 = v35;
          MEMORY[0x1BFAF43A0](v39, -1, -1);
        }

        (*(v5 + 8))(v8, v4);
LABEL_23:

        return;
      }

      goto LABEL_28;
    }

    v101 = v4;
    v102 = v5;
    v40 = v28;
    v41 = *(v30 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface);
    v42 = *(v30 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 8);
    v43 = *(v30 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 16);
    sub_1BA207FD8(v41, v42, *(v30 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 16));
    v100 = v40;
    v44 = sub_1BA4A2718();
    if (v43 == 255)
    {
      sub_1B9F244F4(v44, v45, v46);
    }

    else
    {
      v99[0] = v16;
      v99[1] = v20;
      v47 = v44;
      v48 = v45;
      v49 = v30;
      v50 = v46;
      v51 = MEMORY[0x1BFAEC7D0](v41, v42, v43, v44, v45, v46);
      v52 = v50;
      v30 = v49;
      sub_1B9F244F4(v47, v48, v52);
      sub_1B9F6B070(v41, v42, v43);
      if (v51)
      {
        v53 = (v49 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
        swift_beginAccess();
        v54 = *v53;
        if (!*v53)
        {
          if (HAFeatureFlagViewLoggingEnabled())
          {
            sub_1BA4A3DD8();
            v31 = v49;
            v67 = sub_1BA4A3E88();
            v68 = sub_1BA4A6FC8();

            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              *v69 = 138543362;
              *(v69 + 4) = v31;
              *v70 = v49;
              v71 = v31;
              _os_log_impl(&dword_1B9F07000, v67, v68, "%{public}@ startUserDataObserver() nil hostedViewable", v69, 0xCu);
              sub_1B9F8C6C8(v70);
              MEMORY[0x1BFAF43A0](v70, -1, -1);
              MEMORY[0x1BFAF43A0](v69, -1, -1);
            }

            (*(v102 + 8))(v27, v101);
            goto LABEL_23;
          }

          goto LABEL_28;
        }

        sub_1BA207FEC(0);
        v55 = v54;
        sub_1BA4A14A8();
        v56 = v105[0];
        v57 = v105[1];
        sub_1BA4A1498();
        v59 = v105[5];
        v58 = v106;
        v60 = v106 & 0xF000000000000000;
        if (v57 >> 60 == 11)
        {
          v61 = v100;
          if (v60 == 0xB000000000000000)
          {
LABEL_14:
            sub_1BA208054(v56, v57);
LABEL_15:
            if (HAFeatureFlagViewLoggingEnabled())
            {
              sub_1BA207214(v49, v61);
            }

LABEL_28:
            return;
          }
        }

        else
        {
          v61 = v100;
          if (v60 != 0xB000000000000000)
          {
            if (v57 >> 60 == 15)
            {
              if (v106 >> 60 == 15)
              {
                sub_1BA208068(v56, v57);
                sub_1B9F6AC8C(v56, v57);
                goto LABEL_14;
              }
            }

            else if (v106 >> 60 != 15)
            {
              sub_1BA208068(v56, v57);
              sub_1BA208068(v56, v57);
              sub_1BA208068(v59, v58);
              v98 = sub_1BA207E1C(v56, v57, v59, v58);
              sub_1BA208054(v59, v58);
              sub_1BA208054(v56, v57);
              sub_1B9F6AC8C(v59, v58);
              sub_1B9F6AC8C(v56, v57);
              sub_1BA208054(v56, v57);
              if (v98)
              {
                goto LABEL_15;
              }

              goto LABEL_33;
            }

            sub_1BA208068(v56, v57);
            sub_1B9F6AC8C(v56, v57);
            sub_1B9F6AC8C(v59, v58);
            v72 = v56;
            v73 = v57;
LABEL_32:
            sub_1BA208054(v72, v73);
LABEL_33:
            v74 = HAFeatureFlagViewLoggingEnabled();
            v76 = v101;
            v75 = v102;
            if (v74)
            {
              sub_1BA4A3DD8();
              v77 = v49;
              v78 = sub_1BA4A3E88();
              v79 = sub_1BA4A6FC8();

              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                *v80 = 138543362;
                *(v80 + 4) = v77;
                *v81 = v49;
                v82 = v77;
                _os_log_impl(&dword_1B9F07000, v78, v79, "%{public}@ startUserDataObserver() observer fired", v80, 0xCu);
                sub_1B9F8C6C8(v81);
                MEMORY[0x1BFAF43A0](v81, -1, -1);
                v83 = v80;
                v75 = v102;
                MEMORY[0x1BFAF43A0](v83, -1, -1);
              }

              (*(v75 + 8))(v103, v76);
            }

            swift_getObjectType();
            v84 = swift_conformsToProtocol2();
            if (v84)
            {
              v85 = v84;
              v86 = v55;
              if (HAFeatureFlagViewLoggingEnabled())
              {
                sub_1BA20749C(v30, v61, v86);
              }

              sub_1B9F6A2F0(v61, v105);
              ObjectType = swift_getObjectType();
              (*(v85 + 24))(v105, ObjectType, v85);
              (*((*MEMORY[0x1E69E7D40] & *v30) + 0x128))(0);
            }

            else if (HAFeatureFlagViewLoggingEnabled())
            {
              v87 = v55;
              v88 = v99[0];
              sub_1BA4A3DD8();
              v89 = v30;
              v90 = sub_1BA4A3E88();
              v91 = v30;
              v92 = sub_1BA4A6FC8();

              if (os_log_type_enabled(v90, v92))
              {
                v93 = swift_slowAlloc();
                v94 = swift_slowAlloc();
                *v93 = 138543362;
                *(v93 + 4) = v89;
                *v94 = v91;
                v95 = v89;
                _os_log_impl(&dword_1B9F07000, v90, v92, "%{public}@ hostedViewable is not a context consumer", v93, 0xCu);
                sub_1B9F8C6C8(v94);
                MEMORY[0x1BFAF43A0](v94, -1, -1);
                v96 = v93;
                v75 = v102;
                MEMORY[0x1BFAF43A0](v96, -1, -1);
              }

              (*(v75 + 8))(v88, v76);
            }

            else
            {
            }

            return;
          }
        }

        sub_1BA208054(v56, v57);
        v72 = v59;
        v73 = v58;
        goto LABEL_32;
      }
    }

    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA4A3DD8();
      v31 = v30;
      v62 = sub_1BA4A3E88();
      v63 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138543362;
        *(v64 + 4) = v31;
        *v65 = v30;
        v66 = v31;
        _os_log_impl(&dword_1B9F07000, v62, v63, "%{public}@ The feed item updated its UserInterface and user data. We don't want to pass new user data to the old view controller.", v64, 0xCu);
        sub_1B9F8C6C8(v65);
        MEMORY[0x1BFAF43A0](v65, -1, -1);
        MEMORY[0x1BFAF43A0](v64, -1, -1);
      }

      (*(v102 + 8))(v12, v101);
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (HAFeatureFlagViewLoggingEnabled())
  {
    sub_1BA2070E0();
  }
}

uint64_t sub_1BA2070E0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B9F07000, v5, v6, "startUserDataObserver() self = nil - not doing anything", v7, 2u);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA207214(void *a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = a1;
  v10 = a2;
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v13 = 138543618;
    *(v13 + 4) = v9;
    *v14 = v9;
    *(v13 + 12) = 2080;
    v16 = v9;
    v17 = [v10 legacyUserInterfaceClassName];
    if (v17)
    {
      v31[0] = v11;
      v18 = v5;
      v19 = v12;
      v20 = v14;
      v21 = v15;
      v22 = v4;
      v23 = v17;
      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v25;

      v4 = v22;
      v15 = v21;
      v14 = v20;
      v12 = v19;
      v5 = v18;
      v11 = v31[0];
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v31[1] = v24;
    v31[2] = v26;
    sub_1B9F23398(0, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, &v32);

    *(v13 + 14) = v29;
    _os_log_impl(&dword_1B9F07000, v11, v12, "%{public}@ startUserDataObserver() observer fired, but newValue is the same as oldValue %s", v13, 0x16u);
    sub_1B9F8C6C8(v14);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA20749C(void *a1, void *a2, void *a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v16 = 138543874;
    *(v16 + 4) = v11;
    *v17 = v11;
    *(v16 + 12) = 2080;
    v18 = v11;
    v19 = [v12 uniqueIdentifier];
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v6;
    v22 = v21;

    v23 = sub_1B9F0B82C(v20, v22, &v34);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    ObjectType = swift_getObjectType();
    v33 = v13;
    WitnessTable = swift_getWitnessTable();
    v26 = sub_1BA02E38C(&v33, ObjectType, WitnessTable);
    v28 = sub_1B9F0B82C(v26, v27, &v34);

    *(v16 + 24) = v28;
    _os_log_impl(&dword_1B9F07000, v14, v15, "%{public}@ Setting context for feedItem %s, view %s ", v16, 0x20u);
    sub_1B9F8C6C8(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    return (*(v7 + 8))(v10, v31);
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1BA20775C(void *a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v9 = a1;
  v10 = a2;
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v4;
    v16 = v15;
    v27 = v15;
    *v13 = 138543618;
    *(v13 + 4) = v9;
    *v14 = v9;
    *(v13 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v26 = v10;
    v18 = v9;
    WitnessTable = swift_getWitnessTable();
    v20 = sub_1BA02E38C(&v26, ObjectType, WitnessTable);
    v22 = sub_1B9F0B82C(v20, v21, &v27);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "%{public}@ Setting section for view %s ", v13, 0x16u);
    sub_1B9F8C6C8(v14);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);

    return (*(v5 + 8))(v8, v25);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BA2079A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1BA4A10C8();
    if (v10)
    {
      v11 = sub_1BA4A10E8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1BA4A10D8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1BA4A10C8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BA4A10E8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BA4A10D8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BA207BD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1BA207D64(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B9F2BB4C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1BA2079A4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B9F2BB4C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1BA207D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BA4A10C8();
  v11 = result;
  if (result)
  {
    result = sub_1BA4A10E8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BA4A10D8();
  sub_1BA2079A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1BA207E1C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B9F206D4(a3, a4);
          return sub_1BA207BD4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1BA207F84()
{
  result = qword_1EBBEE718;
  if (!qword_1EBBEE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE718);
  }

  return result;
}

double sub_1BA207FD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BA1EB37C(a1, a2, a3);
  }

  return result;
}

void sub_1BA207FEC(uint64_t a1)
{
  if (!qword_1EDC6E288)
  {
    sub_1B9F23398(255, &unk_1EDC6E268, MEMORY[0x1E6969080]);
    v1 = sub_1BA4A14B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E288);
    }
  }
}

uint64_t sub_1BA208054(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B9F6AC8C(result, a2);
  }

  return result;
}

uint64_t sub_1BA208068(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B9F6AD84(result, a2);
  }

  return result;
}

unint64_t sub_1BA208090()
{
  result = qword_1EBBEE720;
  if (!qword_1EBBEE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE720);
  }

  return result;
}

unint64_t sub_1BA2080E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A8108();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t DataTypeDetailConfiguration.AppsComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 48);
  v5 = sub_1BA4A6F38();
  if (v4 == 1 && (v6 = sub_1BA4A1D78(), v7 = sub_1BA4A1D68(), v6, (v7 & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v8 = sub_1BA4A1B68();
    sub_1BA15E094();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B5480;
    v10 = v3;
    *(v9 + 32) = sub_1BA4A6F38();
    sub_1B9FE1FC4(&unk_1F37FBD28);
    v11 = objc_allocWithZone(type metadata accessor for AppRecommendationsFetchedResultsControllerDataSource(0));
    v12 = sub_1BA456148(v8, v10, v9);

    sub_1BA208380(0);
    v13 = swift_allocObject();
    v14 = 0;
    v15 = (v12 + qword_1EDC84AD0);
    v16 = (v12 + qword_1EDC84AD0 + 8);
  }

  else
  {

    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v12 = EmptyDataSource.init()();
    sub_1BA208380(0);
    v13 = swift_allocObject();
    v15 = (v12 + 16);
    v16 = (v12 + 24);
    v14 = 1;
  }

  v17 = *v15;
  v18 = *v16;
  *(v13 + 16) = v17;
  *(v13 + 24) = v18;
  *(v13 + 32) = v12;
  *(v13 + 40) = v14;

  return v13;
}

void sub_1BA208380(uint64_t a1)
{
  if (!qword_1EDC66D08)
  {
    v4[0] = type metadata accessor for AppRecommendationsFetchedResultsControllerDataSource(255);
    v4[1] = type metadata accessor for EmptyDataSource(255);
    v4[2] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    v4[3] = &protocol witness table for EmptyDataSource;
    v2 = type metadata accessor for _ConditionalDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC66D08);
    }
  }
}

char *sub_1BA208430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v35 = a4;
  v38 = a3;
  v36 = a1;
  v37 = type metadata accessor for LayoutConfigurationType;
  sub_1BA20ACC4(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v31 - v7);
  v9 = sub_1BA4A3BD8();
  v33 = *(v9 - 8);
  v10 = v33;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v13;
  v14 = sub_1BA4A0FA8();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v15 + 16);
  v20(v19, a2, v14, v17);
  v21 = *(v10 + 16);
  v21(v13, v38, v9);
  *v8 = v35;
  v22 = type metadata accessor for LayoutConfigurationType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
  sub_1BA20B0C4(0, &qword_1EBBEE740, type metadata accessor for CategoryDataTypesDataSource);
  v24 = objc_allocWithZone(v23);
  (v20)(&v24[qword_1EBC09440], v19, v14);
  v25 = v32;
  v26 = v9;
  v21(&v24[qword_1EBC09448], v32, v9);
  sub_1BA05EEB4(v8, &v24[qword_1EBC09450]);
  v27 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v36);
  v28 = *(v33 + 8);
  v28(v38, v26);
  v29 = *(v15 + 8);
  v29(v34, v14);
  sub_1BA20AD28(v8, qword_1EDC66C30, v37);
  v28(v25, v26);
  v29(v19, v14);
  return v27;
}

uint64_t CategoryViewDataSource.__allocating_init(typeGroup:context:healthExperienceStore:sourceProfile:showNoData:)(uint64_t *a1, void *a2, void *a3, void *a4, char a5)
{
  v9 = swift_allocObject();
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v15 = a1[4];
  v14 = a1[5];
  v16 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_typeGroup);
  *v16 = v11;
  v16[1] = v10;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v15;
  v16[5] = v14;
  *(v9 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_context) = a2;
  sub_1B9F0A534(a3, v9 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_healthExperienceStore);
  *(v9 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_sourceProfile) = a4;
  v24[0] = v11;
  v24[1] = v10;
  v24[2] = v13;
  v24[3] = v12;
  v24[4] = v15;
  v24[5] = v14;
  sub_1B9F0A534(a3, v23);
  v17 = a4;

  v18 = a2;
  _s18HealthExperienceUI30CategoryViewDataSourceProviderC3for5store13sourceProfile06showNoF0AcA11HKTypeGroupV_0A8Platform0aB5Store_pAJ0gL0OSbtcfC_0(v24, v23, a4, a5);
  v19 = sub_1BA20916C();
  v20 = CompoundSectionedDataSource.init(_:)(v19);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v20;
}

uint64_t CategoryViewDataSource.init(typeGroup:context:healthExperienceStore:sourceProfile:showNoData:)(uint64_t *a1, void *a2, void *a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = (v6 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_typeGroup);
  *v16 = *a1;
  v16[1] = v10;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v14;
  v16[5] = v15;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_context) = a2;
  sub_1B9F0A534(a3, v6 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_healthExperienceStore);
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_sourceProfile) = a4;
  v24[0] = v11;
  v24[1] = v10;
  v24[2] = v13;
  v24[3] = v12;
  v24[4] = v14;
  v24[5] = v15;
  sub_1B9F0A534(a3, v23);
  v17 = a4;

  v18 = a2;
  _s18HealthExperienceUI30CategoryViewDataSourceProviderC3for5store13sourceProfile06showNoF0AcA11HKTypeGroupV_0A8Platform0aB5Store_pAJ0gL0OSbtcfC_0(v24, v23, a4, a5);
  v19 = sub_1BA20916C();
  v20 = CompoundSectionedDataSource.init(_:)(v19);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v20;
}

void sub_1BA208A54()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_healthExperienceStore));
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_sourceProfile);
}

uint64_t CategoryViewDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_healthExperienceStore));
  return v0;
}

uint64_t CategoryViewDataSource.__deallocating_deinit()
{
  CategoryViewDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA208C44(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 88));
  sub_1B9F25598(v5, v3 + 88);
  return swift_endAccess();
}

uint64_t sub_1BA208CF0(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));
  sub_1B9F25598(a1, v1 + 88);
  return swift_endAccess();
}

uint64_t sub_1BA208DCC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

void *CategoryViewDataSourceProvider.sourceProfile.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t static CategoryViewDataSourceProvider.noDataAvailableReuseIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEE728;

  return v0;
}

double static CategoryViewDataSourceProvider.noDataAvailableReuseIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBEE728 = a1;
  off_1EBBEE730 = a2;

  return result;
}

double sub_1BA208F94(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEE728 = v2;
  off_1EBBEE730 = v1;

  return result;
}

uint64_t CategoryViewDataSourceProvider.__allocating_init(summarySectionPredicate:getMoreFromHealthPredicate:articlesPredicate:store:sourceProfile:chrOnly:showNoData:typeGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v17 = *(a8 + 32);
  v16 = *(a8 + 40);
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  sub_1B9F25598(a4, v15 + 88);
  *(v15 + 136) = a5;
  *(v15 + 128) = a6;
  *(v15 + 144) = a7;
  v18 = *(v15 + 40);
  v19 = *(v15 + 48);
  v20 = *(v15 + 56);
  v21 = *(v15 + 64);
  v22 = *(v15 + 72);
  v23 = *(v15 + 80);
  v24 = *(a8 + 16);
  *(v15 + 40) = *a8;
  *(v15 + 56) = v24;
  *(v15 + 72) = v17;
  *(v15 + 80) = v16;
  sub_1BA20AC74(v18, v19, v20, v21, v22, v23);
  return v15;
}

uint64_t CategoryViewDataSourceProvider.init(summarySectionPredicate:getMoreFromHealthPredicate:articlesPredicate:store:sourceProfile:chrOnly:showNoData:typeGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v13 = *(a8 + 32);
  v14 = *(a8 + 40);
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  sub_1B9F25598(a4, v8 + 88);
  *(v8 + 136) = a5;
  *(v8 + 128) = a6;
  *(v8 + 144) = a7;
  v15 = *(v8 + 40);
  v16 = *(v8 + 48);
  v17 = *(v8 + 56);
  v18 = *(v8 + 64);
  v19 = *(v8 + 72);
  v20 = *(v8 + 80);
  v21 = *(a8 + 16);
  *(v8 + 40) = *a8;
  *(v8 + 56) = v21;
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  sub_1BA20AC74(v15, v16, v17, v18, v19, v20);
  return v8;
}

uint64_t sub_1BA20916C()
{
  v1 = sub_1BA4A3BD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B9A90;
  v7 = *(v2 + 104);
  v7(v5, *MEMORY[0x1E69A3E50], v1);
  v8 = sub_1BA2094E8(v5);
  v9 = *(v2 + 8);
  v9(v5, v1);
  *(v6 + 32) = v8;
  *(v6 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v7(v5, *MEMORY[0x1E69A3E58], v1);
  v10 = sub_1BA2094E8(v5);
  v9(v5, v1);
  *(v6 + 48) = v10;
  *(v6 + 56) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v7(v5, *MEMORY[0x1E69A3E68], v1);
  v11 = sub_1BA2094E8(v5);
  v9(v5, v1);
  *(v6 + 64) = v11;
  *(v6 + 72) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v7(v5, *MEMORY[0x1E69A3E60], v1);
  v12 = sub_1BA2094E8(v5);
  v9(v5, v1);
  *(v6 + 80) = v12;
  *(v6 + 88) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v7(v5, *MEMORY[0x1E69A3E40], v1);
  v13 = sub_1BA2094E8(v5);
  v9(v5, v1);
  *(v6 + 96) = v13;
  *(v6 + 104) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  if (*(v0 + 144) == 1)
  {
    v14 = sub_1BA209A08();
    v6 = sub_1B9F1E00C();
    v24 = v6;
    ObjectType = swift_getObjectType();
    sub_1BA1BA008(5, v14, &v24, ObjectType, &protocol witness table for FetchedResultsControllerDataSource<A>);
  }

  v16 = sub_1BA20A098();
  v24 = v6;
  v17 = *(v6 + 16);
  if (v17 >= *(v6 + 24) >> 1)
  {
    v6 = sub_1B9F1E00C();
    v24 = v6;
  }

  v18 = swift_getObjectType();
  sub_1BA1BA008(v17, v16, &v24, v18, &protocol witness table for DataSourceWithSectionItemLimit<A>);
  v19 = sub_1BA20A5E4();
  v24 = v6;
  v20 = *(v6 + 16);
  if (v20 >= *(v6 + 24) >> 1)
  {
    v6 = sub_1B9F1E00C();
    v24 = v6;
  }

  v21 = swift_getObjectType();
  sub_1BA1BA008(v20, v19, &v24, v21, &protocol witness table for DataSourceWithSectionItemLimit<A>);
  return v6;
}

char *sub_1BA2094E8(uint64_t a1)
{
  v38 = sub_1BA4A3BD8();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A0FA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E6968130];
  sub_1BA20ACC4(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v35 - v14;
  sub_1BA4A0F18();
  sub_1BA4A3C18();
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v16 = *(v1 + 128);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5480;
  v18 = *(v1 + 136);
  *(v17 + 32) = v18;
  v19 = v18;
  v20 = sub_1BA28E2E8(a1, v15, v16, v17);

  sub_1BA20AD28(v15, &qword_1EDC6E2A0, v11);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B7510;
  v22 = *(v1 + 16);
  *(v21 + 32) = v20;
  *(v21 + 40) = v22;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v36 = v20;
  v23 = v22;
  v24 = sub_1BA4A6AE8();

  v25 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v26 = MEMORY[0x1BFAED110]();
  sub_1BA28D2CC([v26 setPredicate_]);
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v27 = sub_1BA4A6AE8();

  [v26 setSortDescriptors_];

  swift_beginAccess();
  sub_1B9F0A534(v1 + 88, &v41);
  __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
  v28 = v26;
  v29 = v37;
  v30 = sub_1BA4A1B68();
  v31 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v28 managedObjectContext:v30 sectionNameKeyPath:0 cacheName:0];

  __swift_destroy_boxed_opaque_existential_1(&v41);
  sub_1BA4A0F18();
  (*(v3 + 16))(v29, a1, v38);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v45 = xmmword_1EDC6D3C8;
  v46 = unk_1EDC6D3D8;
  v47 = xmmword_1EDC6D3E8;
  v48 = unk_1EDC6D3F8;
  v41 = xmmword_1EDC6D388;
  v42 = xmmword_1EDC6D398;
  v43 = xmmword_1EDC6D3A8;
  v44 = xmmword_1EDC6D3B8;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v40[4] = xmmword_1EDC6D3C8;
  v40[5] = unk_1EDC6D3D8;
  v40[6] = xmmword_1EDC6D3E8;
  v40[7] = unk_1EDC6D3F8;
  v40[0] = xmmword_1EDC6D388;
  v40[1] = xmmword_1EDC6D398;
  v40[2] = xmmword_1EDC6D3A8;
  v40[3] = xmmword_1EDC6D3B8;
  sub_1B9F1D9A4(&v41, &v39);
  v32 = sub_1B9F293A8(v40);
  v33 = sub_1BA208430(v31, v10, v29, v32);

  return v33;
}

char *sub_1BA209A08()
{
  v1 = v0;
  sub_1BA20ACC4(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v51 = &v50 - v4;
  v5 = sub_1BA4A1C68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], 1);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5460;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1B9F1BE20();
  *(v10 + 64) = v12;
  *(v10 + 32) = 0xD000000000000013;
  *(v10 + 40) = 0x80000001BA4EF0F0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69A3BB8], v5);
  v13 = sub_1BA4A1C58();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v13;
  *(v10 + 80) = v15;
  v16 = sub_1BA4A6EE8();
  sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5480;
  v18 = *(v1 + 136);
  *(v17 + 32) = v18;
  v19 = v18;
  v20 = MEMORY[0x1BFAED1E0](v17);

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B8B60;
  *(v21 + 32) = v16;
  *(v21 + 40) = v20;
  v22 = *(v1 + 16);
  *(v21 + 48) = v22;
  v50 = v16;
  v23 = v20;
  v24 = v22;
  v25 = sub_1BA4A6AE8();

  v26 = [objc_opt_self() andPredicateWithSubpredicates_];

  v27 = MEMORY[0x1BFAED110]();
  [v27 setPredicate_];
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5470;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = sub_1BA4A6758();
  v31 = [v29 initWithKey:v30 ascending:1 selector:sel_localizedStandardCompare_];

  *(v28 + 32) = v31;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v32 = sub_1BA4A6AE8();

  [v27 setSortDescriptors_];

  swift_beginAccess();
  sub_1B9F0A534(v1 + 88, v52);
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  v33 = v27;
  v34 = sub_1BA4A1B68();
  v35 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v33 managedObjectContext:v34 sectionNameKeyPath:0 cacheName:0];

  __swift_destroy_boxed_opaque_existential_1(v52);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v36 = sub_1BA4A1318();
  v38 = v37;
  swift_beginAccess();
  v39 = qword_1EBBEE728;
  v40 = off_1EBBEE730;
  v41 = type metadata accessor for LayoutConfigurationType(0);
  v42 = v51;
  (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
  sub_1BA20B0C4(0, &qword_1EBBEE738, type metadata accessor for CategoryDataSource);
  v44 = objc_allocWithZone(v43);
  v45 = &v44[qword_1EBC09460];
  *v45 = v39;
  v45[1] = v40;
  v46 = &v44[qword_1EBC09468];
  *v46 = v36;
  v46[1] = v38;
  v47 = &v44[qword_1EBC09470];
  *v47 = 0;
  *(v47 + 1) = 0;
  sub_1BA05EEB4(v42, &v44[qword_1EBC09458]);

  v48 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v35);

  sub_1BA20AD28(v42, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  return v48;
}

uint64_t sub_1BA20A098()
{
  v37 = MEMORY[0x1E6968130];
  sub_1BA20ACC4(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v36 - v3;
  swift_beginAccess();
  sub_1B9F0A534(v0 + 88, v40);
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v39 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B5460;
  v6 = *(v0 + 136);
  *(v5 + 32) = v6;
  *(v5 + 40) = 0;
  v7 = *(v0 + 24);
  v38 = objc_allocWithZone(type metadata accessor for GetMoreFromHealthResultsController(0));
  sub_1BA4A27B8();
  sub_1BA20ACC4(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v8 = sub_1BA4A1C68();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69A3C00], v8);
  v12 = sub_1BA4A0FA8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = v6;
  v14 = v7;
  v15 = MEMORY[0x1BFAED020](v11, 0, v4, v5);

  sub_1BA20AD28(v4, &qword_1EDC6E2A0, v37);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B7510;
  *(v16 + 32) = v15;
  *(v16 + 40) = v14;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v17 = v14;
  v18 = v15;
  v19 = sub_1BA4A6AE8();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = v20;
  v23 = sub_1BA4A6758();
  v24 = [v21 initWithKey:v23 ascending:0];

  v25 = MEMORY[0x1BFAED110]();
  [v25 setPredicate_];

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5470;
  *(v26 + 32) = v24;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v27 = v24;
  v28 = sub_1BA4A6AE8();

  [v25 setSortDescriptors_];

  [v25 setFetchLimit_];
  v29 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v30 = v39;
  v31 = [v29 initWithFetchRequest:v25 managedObjectContext:v39 sectionNameKeyPath:0 cacheName:0];
  v32 = &v38[qword_1EDC61AF0];
  *v32 = sub_1BA236D80;
  v32[1] = 0;
  v33 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v31);

  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_1BA20AD98(0, qword_1EDC63990, type metadata accessor for GetMoreFromHealthResultsController);
  swift_allocObject();
  v34 = sub_1BA0488BC();

  return v34;
}

uint64_t sub_1BA20A5E4()
{
  v1 = v0;
  v2 = v0[6];
  if (v2)
  {
    v3 = v1[5];
    v4 = v1[7];
    v5 = v1[8];
    v6 = v1[9];
    v7 = v1[10];
    v8 = objc_opt_self();

    v9 = [v8 categoryWithID_];
    if (v9)
    {
      v10 = v9;
      v30 = v6;
      v11 = v7;
      v12 = v5;
      v13 = v3;
      v14 = [v9 embeddedDisplayName];
      v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v17 = v16;

      v3 = v13;
      v5 = v12;
      v7 = v11;
      v6 = v30;
    }

    else
    {

      v15 = v5;
      v17 = v6;
    }

    sub_1BA3F0744(v4, v15, v17, v34);
    sub_1BA20AC74(v3, v2, v4, v5, v6, v7);

    v18 = v34[0];
    v19 = v34[1];
  }

  else
  {
    v18 = 0;
    v19 = 1;
  }

  swift_beginAccess();
  sub_1B9F0A534((v1 + 11), v34);
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v20 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5460;
  v22 = v1[17];
  *(v21 + 32) = v22;
  *(v21 + 40) = 0;
  v23 = v1[4];
  v31[1] = v19;
  v32 = v23;
  v33 = 1;
  v31[0] = v18;
  v24 = objc_allocWithZone(type metadata accessor for ArticlesFetchedResultsControllerDataSource(0));
  v25 = v22;
  v26 = v23;
  v27 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v20, v21, &v32, v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_1BA20AD98(0, &qword_1EDC63988, type metadata accessor for ArticlesFetchedResultsControllerDataSource);
  swift_allocObject();
  v28 = sub_1BA0488BC();

  return v28;
}

uint64_t CategoryViewDataSourceProvider.deinit()
{
  sub_1BA20AC74(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return v0;
}

uint64_t CategoryViewDataSourceProvider.__deallocating_deinit()
{
  sub_1BA20AC74(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

unint64_t sub_1BA20A958(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 16) == 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      for (j = 0; ; ++j)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFAF2860](j, v1);
        }

        else
        {
          if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v4 = *(v1 + 8 * j + 32);
        }

        v5 = v4;
        v6 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v7 = [v4 identifier];
        v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v10 = v9;

        if (v8 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v10 == v11)
        {
        }

        else
        {
          v13 = sub_1BA4A8338();

          if (v13)
          {
          }

          else
          {
            sub_1BA4A7ED8();
            sub_1BA4A7F18();
            sub_1BA4A7F28();
            sub_1BA4A7EE8();
          }
        }

        if (v6 == i)
        {
          return v15;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  return v1;
}

uint64_t _s18HealthExperienceUI30CategoryViewDataSourceProviderC3for5store13sourceProfile06showNoF0AcA11HKTypeGroupV_0A8Platform0aB5Store_pAJ0gL0OSbtcfC_0(uint64_t *a1, __int128 *a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  sub_1BA4A27B8();

  v11 = MEMORY[0x1BFAED000](v10);

  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v9;
  v30 = v8;
  sub_1BA20A958(&v25);
  v12 = MEMORY[0x1BFAED000]();

  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v29 = v9;
  v30 = v8;
  sub_1BA20A958(&v25);
  v13 = MEMORY[0x1BFAED000]();

  type metadata accessor for CategoryViewDataSourceProvider();
  v14 = swift_allocObject();
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  sub_1B9F25598(a2, v14 + 88);
  *(v14 + 136) = a3;
  *(v14 + 128) = 0;
  *(v14 + 144) = a4;
  v15 = *(v14 + 40);
  v16 = *(v14 + 48);
  v17 = *(v14 + 56);
  v18 = *(v14 + 64);
  v19 = *(v14 + 72);
  v20 = *(v14 + 80);
  *(v14 + 40) = v4;
  *(v14 + 48) = v5;
  *(v14 + 56) = v6;
  *(v14 + 64) = v7;
  *(v14 + 72) = v9;
  *(v14 + 80) = v8;
  sub_1BA20AC74(v15, v16, v17, v18, v19, v20);
  return v14;
}

double sub_1BA20AC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

void sub_1BA20ACC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA20AD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA20ACC4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA20AD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v7 = type metadata accessor for DataSourceWithSectionItemLimit(a1, v5, &protocol witness table for FetchedResultsControllerDataSource<A>, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for CategoryViewDataSource(uint64_t a1)
{
  result = qword_1EDC6CC10;
  if (!qword_1EDC6CC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA20B0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA4A27B8();
    v7 = sub_1B9F15730();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double PDFBuilder.Document.drawingContext.getter()
{
  if ((*(v0 + 200) & 1) == 0)
  {
    return *(v0 + 168);
  }

  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v0 + 168) = result;
  *(v0 + 176) = v2;
  *(v0 + 184) = v3;
  *(v0 + 192) = v4;
  *(v0 + 200) = 0;
  return result;
}

void PDFBuilder.Document.constrainDrawingContext(height:width:)(uint64_t Height, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v16.origin.x = PDFBuilder.Document.drawingContext.getter();
    Height = CGRectGetHeight(v16);
  }

  if (a4)
  {
    v17.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v17);
  }

  else
  {
    Width = *&a3;
  }

  PDFBuilder.Document.drawingContext.getter();
  v10 = v9;
  v11 = *(v4 + 168);
  v12 = *(v4 + 176);
  v13 = *(v4 + 184);
  v14 = *(v4 + 192);
  if (*(v4 + 96) == 1)
  {
    MinX = CGRectGetMaxX(*&v11) - Width;
  }

  else
  {
    MinX = CGRectGetMinX(*&v11);
  }

  *(v4 + 168) = MinX;
  *(v4 + 176) = v10;
  *(v4 + 184) = Width;
  *(v4 + 192) = Height;
  *(v4 + 200) = 0;
}

CGFloat PDFBuilder.Document.adjustDrawingContextOrigin(height:width:)(double a1, double a2)
{
  v13.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = CGRectGetMinX(v13) + a2;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGRectGetMinY(v14) + a1;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGRectGetWidth(v15) - a2;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  result = CGRectGetHeight(v16) - a1;
  *(v2 + 168) = v9;
  *(v2 + 176) = v10;
  *(v2 + 184) = v11;
  *(v2 + 192) = result;
  *(v2 + 200) = 0;
  return result;
}

double PDFBuilder.Document.bodyBox.getter()
{
  PDFBuilder.Document.headerHeight.getter();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetHeight(v8);
  PDFBuilder.Document.footerHeight.getter();
  if (*(v0 + 153) & 1) != 0 || (*(v0 + 136))
  {
    v9.origin.x = v1;
    v9.origin.y = v2;
    v9.size.width = v3;
    v9.size.height = v4;
    Width = CGRectGetWidth(v9);
  }

  else
  {
    Width = *(v0 + 128);
  }

  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  v6 = CGRectGetWidth(v10);
  if (Width >= v6)
  {
    Width = v6;
  }

  if (*(v0 + 96) == 1)
  {
    v11.origin.x = v1;
    v11.origin.y = v2;
    v11.size.width = v3;
    v11.size.height = v4;
    return CGRectGetMaxX(v11) - Width;
  }

  return v1;
}

void PDFBuilder.Document.drawingContext.setter(double a1, double a2, double a3, double a4)
{
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 200) = 0;
}

BOOL PDFBuilder.Document.willFitOnCurrentPage(height:)(CGFloat a1)
{
  v3 = PDFBuilder.Document.drawingContext.getter();
  v5 = v4;
  v7.size.width = CGRectGetWidth(*(v1 + 168));
  v7.origin.x = v3;
  v7.origin.y = v5;
  v7.size.height = a1;
  return CGRectContainsRect(*(v1 + 168), v7);
}

Swift::Void __swiftcall PDFBuilder.Document.moveToNextDrawableRegion(in:)(UIGraphicsPDFRendererContext in)
{
  v2 = *(v1 + 120);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 == *(v1 + 104))
  {
    swift_beginAccess();
    if (*(v1 + 201) != 1)
    {
      return;
    }

    sub_1BA20E0D4(in.super.super.isa);
    [(objc_class *)in.super.super.isa beginPage];
    swift_beginAccess();
    v6 = *(v1 + 160);
    v3 = __OFADD__(v6, 1);
    v7 = v6 + 1;
    if (!v3)
    {
      *(v1 + 160) = v7;
      sub_1BA20DD08(in.super.super.isa);
      *(v1 + 120) = 0;
      sub_1BA20F060();
      sub_1BA20DE40(in.super.super.isa);
      return;
    }

LABEL_11:
    __break(1u);
    return;
  }

  *(v1 + 120) = v4;

  sub_1BA20F060();
}

uint64_t PDFBuilder.__allocating_init(configuration:sections:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_1BA20F1A4(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

Swift::Bool __swiftcall PDFBuilder.Document.willFitOnCurrentPage(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6.origin.x = PDFBuilder.Document.drawingContext.getter();
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  return CGRectContainsRect(v6, v7);
}

BOOL PDFBuilder.Document.willFitOnFullPage(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 32))(v1, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v13.origin.x = PDFBuilder.Document.bodyBox.getter();
  Height = CGRectGetHeight(v13);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  return CGRectGetHeight(v14) <= Height;
}

uint64_t sub_1BA20B780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA20B7A4, 0, 0);
}

uint64_t sub_1BA20B7A4()
{
  (*(*(v0 + 32) + 16))(*(v0 + 24));
  v1 = *(v0 + 72);
  *(v0 + 48) = type metadata accessor for PDFBuilder.Document();
  if (v1)
  {
    sub_1BA4A6C68();
    *(v0 + 64) = sub_1BA4A6C58();
    v2 = sub_1BA4A6C28();
    v4 = v3;
    v5 = sub_1BA20B96C;
  }

  else
  {
    *(v0 + 73) = (*(*(v0 + 32) + 32))(*(v0 + 24)) & 1;
    sub_1BA4A6C68();
    *(v0 + 56) = sub_1BA4A6C58();
    v2 = sub_1BA4A6C28();
    v4 = v6;
    v5 = sub_1BA20B8D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_1BA20B8D0()
{
  v1 = *(v0 + 73);

  sub_1BA20B9E8(1, v1);

  return MEMORY[0x1EEE6DFA0](sub_1BA20B958, 0, 0);
}

uint64_t sub_1BA20B96C()
{

  sub_1BA20BBAC(1);

  return MEMORY[0x1EEE6DFA0](sub_1BA20F6B0, 0, 0);
}

uint64_t sub_1BA20B9E8(uint64_t a1, char a2)
{
  v4 = objc_opt_self();
  sub_1BA20F664();
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1BA4A6AE8();
  v7 = [v4 bestPaperForPageSize:v6 withPapersFromArray:{612.0, 792.0}];

  [v7 paperSize];
  v9 = v8;
  v11 = v10;

  if (a2)
  {
    v12 = 21.0;
  }

  else
  {
    v12 = 36.0;
  }

  v13 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 136) = 0;
  *(v14 + 144) = 0;
  *(v14 + 152) = 256;
  *(v14 + 160) = 1;
  *(v14 + 168) = 0u;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 257;
  *(v14 + 96) = v13;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = 0x4042000000000000;
  *(v14 + 40) = v12;
  *(v14 + 48) = v9 + -36.0 + -36.0;
  *(v14 + 56) = v11 - v12 - v12;
  *(v14 + 64) = v12;
  *(v14 + 72) = 0x4042000000000000;
  *(v14 + 80) = v12;
  *(v14 + 88) = 0x4042000000000000;
  *(v14 + 208) = v5;
  *(v14 + 216) = v5;
  *(v14 + 104) = a1;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  sub_1BA20F060();
  return sub_1BA4A2D68();
}

uint64_t sub_1BA20BBAC(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_1BA20F664();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1BA4A6AE8();
  v5 = [v2 bestPaperForPageSize:v4 withPapersFromArray:{612.0, 792.0}];

  [v5 paperSize];
  v7 = v6;
  v9 = v8;

  LOBYTE(v4) = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 256;
  *(v10 + 160) = 1;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 257;
  *(v10 + 96) = v4;
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = vdupq_n_s64(0x4042000000000000uLL);
  *(v10 + 32) = v11;
  *(v10 + 48) = v9 + -36.0 + -36.0;
  *(v10 + 56) = v7 + -36.0 + -36.0;
  *(v10 + 64) = v11;
  *(v10 + 80) = v11;
  *(v10 + 208) = v3;
  *(v10 + 216) = v3;
  *(v10 + 104) = a1;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  sub_1BA20F060();
  return sub_1BA4A2D68();
}

uint64_t PDFBuilder.init(configuration:sections:)(__int128 *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  sub_1B9F1134C(a1, v2 + 112);
  *(v2 + 152) = a2;
  return v2;
}

uint64_t sub_1BA20BD8C()
{
  v1[9] = v0;
  sub_1BA20F39C(0);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_1BA4A6C68();
  v1[13] = sub_1BA4A6C58();
  v4 = sub_1BA4A6C28();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BA20BE80, v4, v3);
}

uint64_t sub_1BA20BE80()
{
  v1 = v0[9];
  v3 = v1[17];
  v2 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1BA20BF40;
  v5 = v0[12];

  return sub_1BA20B780(v5, v3, v2);
}

uint64_t sub_1BA20BF40()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1BA20C060, v3, v2);
}

void sub_1BA20C060()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  sub_1BA4A2D78();
  (*(v3 + 8))(v1, v2);
  v5 = v0[8];
  v6 = *(v4 + 152);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = objc_allocWithZone(MEMORY[0x1E69DCA88]);

  v10 = [v9 initWithBounds_];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BA20F414;
  *(v12 + 24) = v11;
  v0[6] = sub_1BA1419A0;
  v0[7] = v12;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA20E308;
  v0[5] = &block_descriptor_54;
  v13 = _Block_copy(v0 + 2);

  v14 = [v10 PDFDataWithActions_];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_1BA4A1608();
    v17 = v16;

    v18 = v0[1];

    v18(v15, v17);
  }
}

void sub_1BA20C2B4(void *a1, uint64_t a2, void *a3)
{
  v334 = a1;
  v353 = *a3;
  v327 = sub_1BA4A3EA8();
  v5 = *(v327 - 8);
  MEMORY[0x1EEE9AC00](v327, v6);
  v8 = &v322 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = *(a2 + 16);
  if (!v324)
  {
    return;
  }

  v323 = a2 + 32;
  swift_beginAccess();
  swift_beginAccess();
  v9 = 0;
  v326 = (v5 + 8);
  v328 = xmmword_1BA4C0AD0;
  v352 = a3;
  v329 = v8;
  while (1)
  {
    v325 = v9;
    v10 = (v323 + 72 * v9);
    v11 = v10[7];
    v12 = v10[8];
    v13 = v10[6];
    v14 = *(v10 + 41);
    v15 = *(v10 + 40);
    v16 = v10[4];
    v350 = *(v10 + 1);
    LODWORD(v351) = *(v10 + 8);
    v17 = *v10;

    v18 = v334;
    [v334 beginPage];
    v352[26] = v13;

    v352[27] = v12;

    sub_1BA20DD08(v18);
    sub_1BA20DE40(v18);
    *(v352 + 8) = v350;
    v352[18] = v16;
    v19 = v352;
    *(v352 + 152) = v15;
    *(v19 + 153) = v14;
    *(v19 + 104) = v17;
    *(v19 + 120) = 0;
    sub_1BA20F060();
    *(v19 + 112) = LOBYTE(v351);
    v20 = v11;

    v332 = *(v11 + 16);
    if (v332)
    {
      break;
    }

LABEL_163:

    v306 = *(v19 + 104);
    if (v306 >= 2)
    {
      for (i = 1; i != v306; ++i)
      {
        swift_initStackObject();
        v308 = sub_1BA20F244(v19);
        *(v308 + 168) = PDFBuilder.Document.bodyBox.getter();
        *(v308 + 176) = v309;
        *(v308 + 184) = v310;
        *(v308 + 192) = v311;
        *(v308 + 200) = 0;
        v389.origin.x = PDFBuilder.Document.bodyBox.getter();
        v312 = (CGRectGetWidth(v389) + (*(v19 + 104) + -1.0) * -36.0) / *(v19 + 104) * i + 18.0;
        v390.origin.x = PDFBuilder.Document.drawingContext.getter();
        x = v390.origin.x;
        y = v390.origin.y;
        width = v390.size.width;
        height = v390.size.height;
        v317 = CGRectGetMinX(v390) + v312;
        v391.origin.x = x;
        v391.origin.y = y;
        v391.size.width = width;
        v391.size.height = height;
        v318 = CGRectGetMinY(v391) + 0.0;
        v392.origin.x = x;
        v392.origin.y = y;
        v392.size.width = width;
        v392.size.height = height;
        v319 = CGRectGetWidth(v392) - v312;
        v393.origin.x = x;
        v393.origin.y = y;
        v393.size.width = width;
        v393.size.height = height;
        v320 = CGRectGetHeight(v393);
        *(v308 + 168) = v317;
        *(v308 + 176) = v318;
        *(v308 + 184) = v319;
        *(v308 + 192) = v320;
        *(v308 + 200) = 0;
        if (*(v19 + 112) == 1)
        {
          if (qword_1EBBE8468 != -1)
          {
            swift_once();
          }

          v321 = [qword_1EBBED280 CGColor];
          v362 = v328;
          v363 = v321;
          PDFVerticalSeparator.render(context:document:)(v334, v308);
        }

        else
        {
        }
      }
    }

    v9 = v325 + 1;
    if (v325 + 1 == v324)
    {
      return;
    }
  }

  v22 = *(v19 + 32);
  v21 = *(v19 + 40);
  v23 = *(v19 + 48);
  v24 = *(v19 + 56);
  v331 = v11 + 32;
  v349 = *(v19 + 96);
  swift_beginAccess();
  swift_beginAccess();
  v25 = 0;
  v26 = v22;
  v351 = v21;
  *&v350 = v23;
  v27 = v24;
  v344 = v22;
  v345 = v23;
  v342 = v21;
  v343 = v24;
  v330 = v20;
  while (v25 < *(v20 + 16))
  {
    v335 = v25;
    sub_1B9F0A534(v331 + 40 * v25, &v362);
    v31 = v364;
    v32 = v365;
    __swift_project_boxed_opaque_existential_1(&v362, v364);
    v33 = (*(v32 + 32))(v19, v31, v32);
    v340 = v34;
    v341 = v33;
    v338 = v36;
    v339 = v35;
    v37 = *(v19 + 208);
    v38 = *(*&v37 + 16);
    if (v38)
    {
      v361 = MEMORY[0x1E69E7CC0];

      sub_1BA066F50(0, v38, 0);
      v39 = v361;
      v40 = v19;
      v337 = v37;
      v41 = *&v37 + 32;
      v42 = *(v40 + 16);
      v43 = *(v40 + 32);
      v351 = *(v40 + 40);
      v27 = *(v40 + 56);
      *&v350 = *(v40 + 48);
      v44 = *(v40 + 80);
      v358 = *(v40 + 64);
      v359 = v44;
      v360 = v42;
      do
      {
        v348 = v39;
        sub_1B9F0A534(v41, &v354);
        v347 = v356;
        v45 = v357;
        v346 = __swift_project_boxed_opaque_existential_1(&v354, *&v356);
        v46 = swift_allocObject();
        *(v46 + 104) = 1;
        *(v46 + 112) = 1;
        *(v46 + 120) = 0u;
        *(v46 + 136) = 0u;
        *(v46 + 152) = 256;
        *(v46 + 160) = 1;
        *(v46 + 168) = 0u;
        *(v46 + 184) = 0u;
        *(v46 + 200) = 257;
        v47 = v359;
        *(v46 + 16) = v360;
        v26 = v43;
        v48 = v351;
        *(v46 + 32) = v43;
        *(v46 + 40) = v48;
        *(v46 + 48) = v350;
        *(v46 + 56) = v27;
        *(v46 + 64) = v358;
        *(v46 + 80) = v47;
        v49 = v352;
        v50 = *(v352 + 201);
        swift_beginAccess();
        *(v46 + 201) = v50;
        *(v46 + 96) = v349;
        v51 = v49[27];
        *(v46 + 208) = v49[26];
        *(v46 + 216) = v51;
        *(v46 + 168) = PDFBuilder.Document.drawingContext.getter();
        *(v46 + 176) = v52;
        *(v46 + 184) = v53;
        *(v46 + 192) = v54;
        *(v46 + 200) = 0;
        *(v46 + 104) = v49[13];
        *(v46 + 120) = v49[15];
        swift_beginAccess();
        v55 = v49[20];
        swift_beginAccess();
        *(v46 + 160) = v55;
        v56 = *(v46 + 48);
        *(v46 + 168) = *(v46 + 32);
        *(v46 + 184) = v56;
        *(v46 + 200) = 0;
        v57 = *(v45 + 24);

        v58 = v57(v46, *&v347, v45);
        v39 = v348;
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;

        v366.origin.x = v59;
        v366.origin.y = v61;
        v366.size.width = v63;
        v366.size.height = v65;
        v66 = CGRectGetHeight(v366);
        __swift_destroy_boxed_opaque_existential_1(&v354);
        v361 = v39;
        v68 = *(*&v39 + 16);
        v67 = *(*&v39 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1BA066F50((v67 > 1), v68 + 1, 1);
          v39 = v361;
        }

        *(*&v39 + 16) = v68 + 1;
        *(*&v39 + 8 * v68 + 32) = v66;
        v41 += 40;
        --v38;
        v43 = v26;
      }

      while (v38);

      v19 = v352;
      v23 = v345;
      v24 = v343;
      v69 = *(*&v39 + 16);
      if (!v69)
      {
LABEL_19:

        v72 = 11.0;
        goto LABEL_28;
      }
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
      v69 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v69)
      {
        goto LABEL_19;
      }
    }

    if (v69 > 3)
    {
      v70 = v69 & 0x7FFFFFFFFFFFFFFCLL;
      v73 = (*&v39 + 48);
      v71 = 0.0;
      v74 = v69 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v71 = v71 + *(v73 - 2) + *(v73 - 1) + *v73 + v73[1];
        v73 += 4;
        v74 -= 4;
      }

      while (v74);
      if (v69 == v70)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v70 = 0;
      v71 = 0.0;
    }

    v75 = v69 - v70;
    v76 = (*&v39 + 8 * v70 + 32);
    do
    {
      v77 = *v76++;
      v71 = v71 + v77;
      --v75;
    }

    while (v75);
LABEL_25:

    v78 = 0.0;
    if (v71 + 1.0 > 0.0)
    {
      v78 = 10.0;
    }

    v72 = v71 + 1.0 + v78;
LABEL_28:
    v79 = 0.0;
    v80 = v342;
    if ((*(v19 + 153) & 1) == 0 && *(v19 + 152) != 1)
    {
      v79 = *(v19 + 144);
    }

    v337 = v79;
    v81 = v22;
    v82 = v23;
    v83 = v24;
    v336 = CGRectGetHeight(*(&v80 - 1));
    v84 = *(v19 + 216);
    v85 = *(v84 + 16);
    if (v85)
    {
      v361 = MEMORY[0x1E69E7CC0];

      sub_1BA066F50(0, v85, 0);
      v86 = v361;
      v87 = v19;
      v333 = v84;
      v88 = v84 + 32;
      v89 = *(v87 + 16);
      v90 = *(v87 + 32);
      v351 = *(v87 + 40);
      v27 = *(v87 + 56);
      *&v350 = *(v87 + 48);
      v91 = *(v87 + 80);
      v358 = *(v87 + 64);
      v359 = v91;
      v360 = v89;
      do
      {
        v348 = v86;
        sub_1B9F0A534(v88, &v354);
        v347 = v356;
        v92 = v357;
        v346 = __swift_project_boxed_opaque_existential_1(&v354, *&v356);
        v93 = swift_allocObject();
        *(v93 + 104) = 1;
        *(v93 + 112) = 1;
        *(v93 + 120) = 0u;
        *(v93 + 136) = 0u;
        *(v93 + 152) = 256;
        *(v93 + 160) = 1;
        *(v93 + 168) = 0u;
        *(v93 + 184) = 0u;
        *(v93 + 200) = 257;
        v94 = v359;
        *(v93 + 16) = v360;
        v95 = v90;
        v96 = v351;
        *(v93 + 32) = v90;
        *(v93 + 40) = v96;
        *(v93 + 48) = v350;
        *(v93 + 56) = v27;
        *(v93 + 64) = v358;
        *(v93 + 80) = v94;
        v97 = v352;
        v98 = *(v352 + 201);
        swift_beginAccess();
        *(v93 + 201) = v98;
        *(v93 + 96) = v349;
        v99 = v97[27];
        *(v93 + 208) = v97[26];
        *(v93 + 216) = v99;
        *(v93 + 168) = PDFBuilder.Document.drawingContext.getter();
        *(v93 + 176) = v100;
        *(v93 + 184) = v101;
        *(v93 + 192) = v102;
        *(v93 + 200) = 0;
        *(v93 + 104) = v97[13];
        *(v93 + 120) = v97[15];
        swift_beginAccess();
        v103 = v97[20];
        swift_beginAccess();
        *(v93 + 160) = v103;
        v104 = *(v93 + 48);
        *(v93 + 168) = *(v93 + 32);
        *(v93 + 184) = v104;
        *(v93 + 200) = 0;
        v105 = *(v92 + 24);

        v106 = v105(v93, *&v347, v92);
        v86 = v348;
        v107 = v106;
        v109 = v108;
        v111 = v110;
        v113 = v112;

        v367.origin.x = v107;
        v367.origin.y = v109;
        v367.size.width = v111;
        v367.size.height = v113;
        v114 = CGRectGetHeight(v367);
        __swift_destroy_boxed_opaque_existential_1(&v354);
        v361 = v86;
        v116 = *(*&v86 + 16);
        v115 = *(*&v86 + 24);
        if (v116 >= v115 >> 1)
        {
          sub_1BA066F50((v115 > 1), v116 + 1, 1);
          v86 = v361;
        }

        *(*&v86 + 16) = v116 + 1;
        *(*&v86 + 8 * v116 + 32) = v114;
        v88 += 40;
        --v85;
        v90 = v95;
      }

      while (v85);

      v19 = v352;
    }

    else
    {
      v86 = MEMORY[0x1E69E7CC0];
      v90 = v26;
    }

    v26 = v90;
    v117 = *(*&v86 + 16);
    v118 = v329;
    if (!v117)
    {
      v121 = 0.0;
      v119 = v345;
      v24 = v343;
      goto LABEL_47;
    }

    v119 = v345;
    v24 = v343;
    if (v117 <= 3)
    {
      v120 = 0;
      v121 = 0.0;
LABEL_45:
      v124 = v117 - v120;
      v125 = (*&v86 + 8 * v120 + 32);
      do
      {
        v126 = *v125++;
        v121 = v121 + v126;
        --v124;
      }

      while (v124);
      goto LABEL_47;
    }

    v120 = v117 & 0x7FFFFFFFFFFFFFFCLL;
    v122 = (*&v86 + 48);
    v121 = 0.0;
    v123 = v117 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v121 = v121 + *(v122 - 2) + *(v122 - 1) + *v122 + v122[1];
      v122 += 4;
      v123 -= 4;
    }

    while (v123);
    if (v117 != v120)
    {
      goto LABEL_45;
    }

LABEL_47:

    if ((*(v19 + 153) & 1) != 0 || *(v19 + 136) == 1)
    {
      v368.origin.x = v22;
      v127 = v342;
      v368.origin.y = v342;
      v368.size.width = v119;
      v368.size.height = v24;
      v128 = CGRectGetWidth(v368);
      v129 = v119;
      v130 = v127;
      v131 = v128;
    }

    else
    {
      v131 = *(v19 + 128);
      v129 = v119;
      v130 = v342;
    }

    v132 = v22;
    v133 = v130;
    v134 = v24;
    v135 = CGRectGetWidth(*(&v129 - 2));
    if (v131 >= v135)
    {
      v131 = v135;
    }

    if (v349)
    {
      v369.origin.x = v344;
      v369.size.width = v345;
      v369.origin.y = v130;
      v369.size.height = v24;
      v22 = CGRectGetMaxX(v369) - v131;
    }

    v370.size.height = v336 - v72 - v337 - v121 + -10.0;
    v370.origin.y = v130 + v72 + v337;
    v370.origin.x = v22;
    v370.size.width = v131;
    v136 = CGRectGetHeight(v370);
    v371.origin.y = v340;
    v371.origin.x = v341;
    v371.size.height = v338;
    v371.size.width = v339;
    if (CGRectGetHeight(v371) > v136)
    {
      sub_1BA4A3DD8();
      sub_1B9F0A534(&v362, &v354);
      v137 = sub_1BA4A3E88();
      v138 = sub_1BA4A6FB8();
      v139 = os_log_type_enabled(v137, v138);
      v22 = v344;
      if (v139)
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *&v360 = v141;
        *v140 = 136315138;
        __swift_project_boxed_opaque_existential_1(&v354, *&v356);
        *&v358 = swift_getDynamicType();
        *(&v358 + 1) = v357;
        sub_1BA20F61C();
        v142 = sub_1BA4A6808();
        v144 = v143;
        __swift_destroy_boxed_opaque_existential_1(&v354);
        v145 = sub_1B9F0B82C(v142, v144, &v360);

        *(v140 + 4) = v145;
        _os_log_impl(&dword_1B9F07000, v137, v138, "%s is too big to be rendered onto a single page", v140, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v141);
        MEMORY[0x1BFAF43A0](v141, -1, -1);
        MEMORY[0x1BFAF43A0](v140, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v354);
      }

      (*v326)(v118, v327);
      v20 = v330;
      v30 = v335;
      v23 = v345;
      goto LABEL_8;
    }

    v146 = v364;
    v147 = v365;
    __swift_project_boxed_opaque_existential_1(&v362, v364);
    v148 = (*(v147 + 32))(v19, v146, v147);
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v372.origin.x = PDFBuilder.Document.drawingContext.getter();
    v394.origin.x = v148;
    v394.origin.y = v150;
    v394.size.width = v152;
    v394.size.height = v154;
    v155 = CGRectContainsRect(v372, v394);
    v22 = v344;
    if (!v155)
    {
      v156 = *(v19 + 120);
      v157 = __OFADD__(v156, 1);
      v158 = v156 + 1;
      if (v157)
      {
        goto LABEL_173;
      }

      if (v158 == *(v19 + 104))
      {
        if (*(v19 + 201))
        {
          if (v158 < 2)
          {
LABEL_63:
            v159 = v334;
            [v334 beginPage];
            v160 = *(v19 + 160);
            v157 = __OFADD__(v160, 1);
            v161 = v160 + 1;
            if (v157)
            {
              goto LABEL_174;
            }

            *(v19 + 160) = v161;
            sub_1BA20DD08(v159);
            *(v19 + 120) = 0;
            sub_1BA20F060();
            sub_1BA20DE40(v159);
            goto LABEL_7;
          }

          *&v336 = v158 - 1;
          v162 = 1;
          v347 = v27;
          while (2)
          {
            v346 = v162;
            swift_allocObject();
            v163 = sub_1BA20F244(v19);
            swift_beginAccess();
            v164 = *(v163 + 208);
            v165 = *(*&v164 + 16);
            if (v165)
            {
              *&v358 = MEMORY[0x1E69E7CC0];

              sub_1BA066F50(0, v165, 0);
              v166 = v358;
              v348 = v164;
              v167 = *&v164 + 32;
              do
              {
                sub_1B9F0A534(v167, &v354);
                v168 = v357;
                __swift_project_boxed_opaque_existential_1(&v354, *&v356);
                swift_allocObject();
                v169 = sub_1BA20F244(v163);
                v170 = *(v169 + 48);
                *(v169 + 168) = *(v169 + 32);
                *(v169 + 184) = v170;
                *(v169 + 200) = 0;
                v171 = (*(v168 + 24))();
                v173 = v172;
                v175 = v174;
                v177 = v176;

                v373.origin.x = v171;
                v373.origin.y = v173;
                v373.size.width = v175;
                v373.size.height = v177;
                v178 = CGRectGetHeight(v373);
                __swift_destroy_boxed_opaque_existential_1(&v354);
                *&v358 = v166;
                v180 = *(v166 + 16);
                v179 = *(v166 + 24);
                if (v180 >= v179 >> 1)
                {
                  sub_1BA066F50((v179 > 1), v180 + 1, 1);
                  v166 = v358;
                }

                *(v166 + 16) = v180 + 1;
                *(v166 + 8 * v180 + 32) = v178;
                v167 += 40;
                --v165;
              }

              while (v165);

              v19 = v352;
              v181 = *(v166 + 16);
              if (v181)
              {
LABEL_76:
                if (v181 <= 3)
                {
                  v182 = 0;
                  v183 = 0.0;
                  goto LABEL_83;
                }

                v182 = v181 & 0x7FFFFFFFFFFFFFFCLL;
                v185 = (v166 + 48);
                v183 = 0.0;
                v186 = v181 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v183 = v183 + *(v185 - 2) + *(v185 - 1) + *v185 + v185[1];
                  v185 += 4;
                  v186 -= 4;
                }

                while (v186);
                if (v181 != v182)
                {
LABEL_83:
                  v187 = v181 - v182;
                  v188 = (v166 + 8 * v182 + 32);
                  do
                  {
                    v189 = *v188++;
                    v183 = v183 + v189;
                    --v187;
                  }

                  while (v187);
                }

                v190 = 0.0;
                if (v183 + 1.0 > 0.0)
                {
                  v190 = 10.0;
                }

                v184 = v183 + 1.0 + v190;
LABEL_88:
                v191 = *(v163 + 153);
                v192 = 0.0;
                v341 = v184;
                if ((v191 & 1) == 0 && *(v163 + 152) != 1)
                {
                  v192 = *(v163 + 144);
                }

                v374.origin.y = *(v163 + 40);
                v374.size.width = *(v163 + 48);
                v374.size.height = *(v163 + 56);
                v348 = *(v163 + 32);
                v374.origin.x = v348;
                v193 = v374.origin.y;
                v340 = v374.size.width;
                v194 = v374.size.height;
                v339 = CGRectGetHeight(v374);
                swift_beginAccess();
                v195 = *(v163 + 216);
                v196 = *(*&v195 + 16);
                if (v196)
                {
                  v338 = v192;
                  *&v358 = MEMORY[0x1E69E7CC0];

                  sub_1BA066F50(0, v196, 0);
                  v197 = v358;
                  v337 = v195;
                  v198 = *&v195 + 32;
                  do
                  {
                    sub_1B9F0A534(v198, &v354);
                    v199 = v357;
                    __swift_project_boxed_opaque_existential_1(&v354, *&v356);
                    swift_allocObject();
                    v200 = sub_1BA20F244(v163);
                    v201 = *(v200 + 48);
                    *(v200 + 168) = *(v200 + 32);
                    *(v200 + 184) = v201;
                    *(v200 + 200) = 0;
                    v202 = (*(v199 + 24))();
                    v204 = v203;
                    v206 = v205;
                    v208 = v207;

                    v375.origin.x = v202;
                    v375.origin.y = v204;
                    v375.size.width = v206;
                    v375.size.height = v208;
                    v209 = CGRectGetHeight(v375);
                    __swift_destroy_boxed_opaque_existential_1(&v354);
                    *&v358 = v197;
                    v211 = *(v197 + 16);
                    v210 = *(v197 + 24);
                    if (v211 >= v210 >> 1)
                    {
                      sub_1BA066F50((v210 > 1), v211 + 1, 1);
                      v197 = v358;
                    }

                    *(v197 + 16) = v211 + 1;
                    *(v197 + 8 * v211 + 32) = v209;
                    v198 += 40;
                    --v196;
                  }

                  while (v196);

                  v19 = v352;
                  v192 = v338;
                  v212 = *(v197 + 16);
                  if (v212)
                  {
LABEL_97:
                    v213 = v193;
                    if (v212 <= 3)
                    {
                      v214 = 0;
                      v215 = 0.0;
                      goto LABEL_104;
                    }

                    v214 = v212 & 0x7FFFFFFFFFFFFFFCLL;
                    v216 = (v197 + 48);
                    v215 = 0.0;
                    v217 = v212 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v215 = v215 + *(v216 - 2) + *(v216 - 1) + *v216 + v216[1];
                      v216 += 4;
                      v217 -= 4;
                    }

                    while (v217);
                    if (v212 != v214)
                    {
LABEL_104:
                      v218 = v212 - v214;
                      v219 = (v197 + 8 * v214 + 32);
                      do
                      {
                        v220 = *v219++;
                        v215 = v215 + v220;
                        --v218;
                      }

                      while (v218);
                    }

LABEL_106:

                    if ((*(v163 + 153) & 1) != 0 || *(v163 + 136) == 1)
                    {
                      v221 = v348;
                      v376.origin.x = v348;
                      v376.origin.y = v213;
                      v222 = v340;
                      v376.size.width = v340;
                      v376.size.height = v194;
                      v223 = CGRectGetWidth(v376);
                      v224 = v221;
                      v225 = v223;
                    }

                    else
                    {
                      v225 = *(v163 + 128);
                      v224 = v348;
                      v222 = v340;
                    }

                    v377.origin.x = v224;
                    v377.origin.y = v213;
                    v377.size.width = v222;
                    v377.size.height = v194;
                    v226 = CGRectGetWidth(v377);
                    v227 = v348;
                    if (v225 >= v226)
                    {
                      v225 = v226;
                    }

                    if (*(v163 + 96) == 1)
                    {
                      v378.origin.x = v348;
                      v378.origin.y = v213;
                      v378.size.width = v222;
                      v378.size.height = v194;
                      v227 = CGRectGetMaxX(v378) - v225;
                    }

                    v228 = v339 - v341 - v192 - v215 + -10.0;
                    v229 = v192 + v341 + v213;
                    *(v163 + 168) = v227;
                    *(v163 + 176) = v229;
                    *(v163 + 184) = v225;
                    *(v163 + 192) = v228;
                    *(v163 + 200) = 0;
                    v230 = *(v19 + 208);
                    v231 = *(*&v230 + 16);
                    if (v231)
                    {
                      *&v358 = MEMORY[0x1E69E7CC0];

                      sub_1BA066F50(0, v231, 0);
                      v232 = v358;
                      v348 = v230;
                      v233 = *&v230 + 32;
                      do
                      {
                        sub_1B9F0A534(v233, &v354);
                        v234 = v357;
                        __swift_project_boxed_opaque_existential_1(&v354, *&v356);
                        swift_allocObject();
                        v235 = sub_1BA20F244(v19);
                        v236 = *(v235 + 48);
                        *(v235 + 168) = *(v235 + 32);
                        *(v235 + 184) = v236;
                        *(v235 + 200) = 0;
                        v237 = (*(v234 + 24))();
                        v239 = v238;
                        v241 = v240;
                        v243 = v242;

                        v379.origin.x = v237;
                        v379.origin.y = v239;
                        v379.size.width = v241;
                        v379.size.height = v243;
                        v244 = CGRectGetHeight(v379);
                        __swift_destroy_boxed_opaque_existential_1(&v354);
                        *&v358 = v232;
                        v246 = *(v232 + 16);
                        v245 = *(v232 + 24);
                        if (v246 >= v245 >> 1)
                        {
                          sub_1BA066F50((v245 > 1), v246 + 1, 1);
                          v232 = v358;
                        }

                        *(v232 + 16) = v246 + 1;
                        *(v232 + 8 * v246 + 32) = v244;
                        v233 += 40;
                        --v231;
                        v19 = v352;
                      }

                      while (v231);
                    }

                    else
                    {
                      v232 = MEMORY[0x1E69E7CC0];
                    }

                    v247 = *(v232 + 16);
                    if (v247)
                    {
                      if (v247 <= 3)
                      {
                        v248 = 0;
                        v249 = 0.0;
                        goto LABEL_128;
                      }

                      v248 = v247 & 0x7FFFFFFFFFFFFFFCLL;
                      v251 = (v232 + 48);
                      v249 = 0.0;
                      v252 = v247 & 0x7FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v249 = v249 + *(v251 - 2) + *(v251 - 1) + *v251 + v251[1];
                        v251 += 4;
                        v252 -= 4;
                      }

                      while (v252);
                      if (v247 != v248)
                      {
LABEL_128:
                        v253 = v247 - v248;
                        v254 = (v232 + 8 * v248 + 32);
                        do
                        {
                          v255 = *v254++;
                          v249 = v249 + v255;
                          --v253;
                        }

                        while (v253);
                      }

                      v256 = 0.0;
                      if (v249 + 1.0 > 0.0)
                      {
                        v256 = 10.0;
                      }

                      v250 = v249 + 1.0 + v256;
                    }

                    else
                    {

                      v250 = 11.0;
                    }

                    v257 = *(v19 + 153);
                    v258 = 0.0;
                    v348 = v250;
                    if ((v257 & 1) == 0 && *(v19 + 152) != 1)
                    {
                      v258 = *(v19 + 144);
                    }

                    v341 = v258;
                    v380.origin.x = v26;
                    v380.origin.y = v351;
                    *&v380.size.width = v350;
                    v380.size.height = v27;
                    v259 = CGRectGetHeight(v380);
                    v260 = *(v19 + 216);
                    v261 = *(*&v260 + 16);
                    if (v261)
                    {
                      *&v358 = MEMORY[0x1E69E7CC0];

                      sub_1BA066F50(0, v261, 0);
                      v262 = v358;
                      v340 = v260;
                      v263 = *&v260 + 32;
                      do
                      {
                        sub_1B9F0A534(v263, &v354);
                        v264 = v357;
                        __swift_project_boxed_opaque_existential_1(&v354, *&v356);
                        swift_allocObject();
                        v265 = sub_1BA20F244(v19);
                        v266 = *(v265 + 48);
                        *(v265 + 168) = *(v265 + 32);
                        *(v265 + 184) = v266;
                        *(v265 + 200) = 0;
                        v267 = (*(v264 + 24))();
                        v269 = v268;
                        v271 = v270;
                        v273 = v272;

                        v381.origin.x = v267;
                        v381.origin.y = v269;
                        v381.size.width = v271;
                        v381.size.height = v273;
                        v274 = CGRectGetHeight(v381);
                        __swift_destroy_boxed_opaque_existential_1(&v354);
                        *&v358 = v262;
                        v276 = *(v262 + 16);
                        v275 = *(v262 + 24);
                        if (v276 >= v275 >> 1)
                        {
                          sub_1BA066F50((v275 > 1), v276 + 1, 1);
                          v262 = v358;
                        }

                        *(v262 + 16) = v276 + 1;
                        *(v262 + 8 * v276 + 32) = v274;
                        v263 += 40;
                        --v261;
                        v19 = v352;
                      }

                      while (v261);

                      v277 = *(v262 + 16);
                      if (v277)
                      {
LABEL_142:
                        v278 = v26;
                        if (v277 <= 3)
                        {
                          v279 = 0;
                          v280 = 0.0;
                          goto LABEL_149;
                        }

                        v279 = v277 & 0x7FFFFFFFFFFFFFFCLL;
                        v281 = (v262 + 48);
                        v280 = 0.0;
                        v282 = v277 & 0x7FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v280 = v280 + *(v281 - 2) + *(v281 - 1) + *v281 + v281[1];
                          v281 += 4;
                          v282 -= 4;
                        }

                        while (v282);
                        if (v277 != v279)
                        {
LABEL_149:
                          v283 = v277 - v279;
                          v284 = (v262 + 8 * v279 + 32);
                          do
                          {
                            v285 = *v284++;
                            v280 = v280 + v285;
                            --v283;
                          }

                          while (v283);
                        }

LABEL_151:

                        if ((*(v19 + 153) & 1) != 0 || *(v19 + 136) == 1)
                        {
                          v382.origin.x = v278;
                          v286 = v351;
                          v382.origin.y = v351;
                          v287 = *&v350;
                          *&v382.size.width = v350;
                          v288 = v347;
                          v382.size.height = v347;
                          v289 = CGRectGetWidth(v382);
                        }

                        else
                        {
                          v289 = *(v19 + 128);
                          v286 = v351;
                          v287 = *&v350;
                          v288 = v347;
                        }

                        v290 = v346;
                        v383.origin.x = v278;
                        v383.origin.y = v286;
                        v383.size.width = v287;
                        v383.size.height = v288;
                        v291 = CGRectGetWidth(v383);
                        if (v289 >= v291)
                        {
                          v289 = v291;
                        }

                        v292 = v278;
                        if (v349)
                        {
                          v384.origin.x = v278;
                          v384.origin.y = v286;
                          v384.size.width = v287;
                          v384.size.height = v347;
                          v292 = CGRectGetMaxX(v384) - v289;
                        }

                        v293 = v259 - v348 - v341 - v280 + -10.0;
                        v294 = v286 + v348 + v341;
                        v295 = v289;
                        v296 = (CGRectGetWidth(*&v292) + (*(v19 + 104) + -1.0) * -36.0) / *(v19 + 104) * v290 + 18.0;
                        v385.origin.x = PDFBuilder.Document.drawingContext.getter();
                        v297 = v385.origin.x;
                        v298 = v385.origin.y;
                        v299 = v385.size.width;
                        v300 = v385.size.height;
                        v301 = CGRectGetMinX(v385) + v296;
                        v386.origin.x = v297;
                        v386.origin.y = v298;
                        v386.size.width = v299;
                        v386.size.height = v300;
                        v302 = CGRectGetMinY(v386) + 0.0;
                        v387.origin.x = v297;
                        v387.origin.y = v298;
                        v387.size.width = v299;
                        v387.size.height = v300;
                        v303 = CGRectGetWidth(v387) - v296;
                        v388.origin.x = v297;
                        v388.origin.y = v298;
                        v388.size.width = v299;
                        v388.size.height = v300;
                        v304 = CGRectGetHeight(v388);
                        *(v163 + 168) = v301;
                        *(v163 + 176) = v302;
                        *(v163 + 184) = v303;
                        *(v163 + 192) = v304;
                        *(v163 + 200) = 0;
                        if (*(v19 + 112))
                        {
                          v22 = v344;
                          v27 = v347;
                          if (qword_1EBBE8468 != -1)
                          {
                            swift_once();
                          }

                          v305 = [qword_1EBBED280 CGColor];
                          v354 = v328;
                          v355 = v305;
                          PDFVerticalSeparator.render(context:document:)(v334, v163);
                        }

                        else
                        {

                          v22 = v344;
                          v27 = v347;
                        }

                        v162 = v290 + 1;
                        if (v290 == *&v336)
                        {
                          goto LABEL_63;
                        }

                        continue;
                      }
                    }

                    else
                    {
                      v262 = MEMORY[0x1E69E7CC0];
                      v277 = *(MEMORY[0x1E69E7CC0] + 16);
                      if (v277)
                      {
                        goto LABEL_142;
                      }
                    }

                    v280 = 0.0;
                    v278 = v26;
                    goto LABEL_151;
                  }
                }

                else
                {
                  v197 = MEMORY[0x1E69E7CC0];
                  v212 = *(MEMORY[0x1E69E7CC0] + 16);
                  if (v212)
                  {
                    goto LABEL_97;
                  }
                }

                v215 = 0.0;
                v213 = v193;
                goto LABEL_106;
              }
            }

            else
            {
              v166 = MEMORY[0x1E69E7CC0];
              v181 = *(MEMORY[0x1E69E7CC0] + 16);
              if (v181)
              {
                goto LABEL_76;
              }
            }

            break;
          }

          v184 = 11.0;
          goto LABEL_88;
        }
      }

      else
      {
        *(v19 + 120) = v158;
        sub_1BA20F060();
      }
    }

LABEL_7:
    v28 = v364;
    v29 = v365;
    __swift_project_boxed_opaque_existential_1(&v362, v364);
    (*(v29 + 16))(v334, v19, v28, v29);
    v20 = v330;
    v23 = v345;
    v24 = v343;
    v30 = v335;
LABEL_8:
    v25 = v30 + 1;
    __swift_destroy_boxed_opaque_existential_1(&v362);
    if (v25 == v332)
    {
      goto LABEL_163;
    }
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
}

double sub_1BA20DD08(uint64_t a1)
{
  swift_allocObject();
  v3 = sub_1BA20F244(v1);
  v4 = *(v3 + 48);
  *(v3 + 168) = *(v3 + 32);
  *(v3 + 184) = v4;
  *(v3 + 200) = 0;
  swift_beginAccess();
  v5 = *(v1 + 208);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    do
    {
      sub_1B9F0A534(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 16))(a1, v3, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v11);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  return result;
}

void sub_1BA20DE40(uint64_t a1)
{
  swift_allocObject();
  v3 = sub_1BA20F244(v1);
  v4 = *(v3 + 48);
  *(v3 + 168) = *(v3 + 32);
  *(v3 + 184) = v4;
  *(v3 + 200) = 0;
  v5 = PDFBuilder.Document.footerHeight.getter();
  swift_beginAccess();
  *(v3 + 201) = 0;
  MinX = CGRectGetMinX(*(v3 + 32));
  v7 = CGRectGetMaxY(*(v3 + 32)) - v5 + -1.0;
  Width = CGRectGetWidth(*(v3 + 32));
  *(v3 + 168) = MinX;
  *(v3 + 176) = v7;
  *(v3 + 184) = Width;
  *(v3 + 192) = v5 + 1.0;
  *(v3 + 200) = 0;
  swift_beginAccess();
  v9 = *(v1 + 216);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;

    do
    {
      sub_1B9F0A534(v11, v14);
      v12 = v15;
      v13 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v13 + 16))(a1, v3, v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {
  }
}

Swift::Void __swiftcall PDFBuilder.Document.setColumns(currentIndex:total:)(Swift::Int currentIndex, Swift::Int total)
{
  *(v2 + 104) = total;
  *(v2 + 120) = currentIndex;
  sub_1BA20F060();
}

void PDFBuilder.Document.moveToNextDrawableRegionIfWontFitOnCurrentPage(_:in:)(void *a1, UIGraphicsPDFRendererContext a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v2, v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14.origin.x = PDFBuilder.Document.drawingContext.getter();
  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  if (!CGRectContainsRect(v14, v15))
  {

    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a2);
  }
}

void sub_1BA20E0D4(void *a1)
{
  v2 = *(v1 + 104);
  if (v2 >= 2)
  {
    v4 = 1;
    v19 = xmmword_1BA4C0AD0;
    do
    {
      swift_initStackObject();
      v5 = sub_1BA20F244(v1);
      *(v5 + 168) = PDFBuilder.Document.bodyBox.getter();
      *(v5 + 176) = v6;
      *(v5 + 184) = v7;
      *(v5 + 192) = v8;
      *(v5 + 200) = 0;
      v22.origin.x = PDFBuilder.Document.bodyBox.getter();
      v9 = (CGRectGetWidth(v22) + (*(v1 + 104) + -1.0) * -36.0) / *(v1 + 104) * v4 + 18.0;
      v23.origin.x = PDFBuilder.Document.drawingContext.getter();
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
      v14 = CGRectGetMinX(v23) + v9;
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = CGRectGetMinY(v24) + 0.0;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v16 = CGRectGetWidth(v25) - v9;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v17 = CGRectGetHeight(v26);
      *(v5 + 168) = v14;
      *(v5 + 176) = v15;
      *(v5 + 184) = v16;
      *(v5 + 192) = v17;
      *(v5 + 200) = 0;
      if (*(v1 + 112) == 1)
      {
        if (qword_1EBBE8468 != -1)
        {
          swift_once();
        }

        v18 = [qword_1EBBED280 CGColor];
        v20 = v19;
        v21 = v18;
        PDFVerticalSeparator.render(context:document:)(a1, v5);
      }

      else
      {
      }

      ++v4;
    }

    while (v2 != v4);
  }
}

void sub_1BA20E308(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t PDFBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PDFBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t PDFBuilder.Document.LayoutConstraints.width.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PDFBuilder.Document.LayoutConstraints.topInset.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PDFBuilder.Document.LayoutConstraints.init(width:topInset:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

__n128 PDFBuilder.Document.printPaper.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

void PDFBuilder.Document.headerHeight.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v27 = MEMORY[0x1E69E7CC0];

    sub_1BA066F50(0, v2, 0);
    v3 = v27;
    v4 = v1 + 32;
    do
    {
      sub_1B9F0A534(v4, v26);
      v5 = v26[4];
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      swift_allocObject();
      v6 = sub_1BA20F244(v0);
      v7 = *(v6 + 48);
      *(v6 + 168) = *(v6 + 32);
      *(v6 + 184) = v7;
      *(v6 + 200) = 0;
      v8 = (*(v5 + 24))();
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v28.origin.x = v8;
      v28.origin.y = v10;
      v28.size.width = v12;
      v28.size.height = v14;
      Height = CGRectGetHeight(v28);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v27 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1BA066F50((v16 > 1), v17 + 1, 1);
        v3 = v27;
      }

      *(v3 + 16) = v17 + 1;
      *(v3 + 8 * v17 + 32) = Height;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v18 = *(v3 + 16);
  if (v18)
  {
    if (v18 <= 3)
    {
      v19 = 0;
      v20 = 0.0;
LABEL_14:
      v23 = v18 - v19;
      v24 = (v3 + 8 * v19 + 32);
      do
      {
        v25 = *v24++;
        v20 = v20 + v25;
        --v23;
      }

      while (v23);
      goto LABEL_16;
    }

    v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
    v21 = (v3 + 48);
    v20 = 0.0;
    v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
      v21 += 4;
      v22 -= 4;
    }

    while (v22);
    if (v18 != v19)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
}

double PDFBuilder.Document.footerHeight.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];

    sub_1BA066F50(0, v2, 0);
    v3 = v28;
    v4 = v1 + 32;
    do
    {
      sub_1B9F0A534(v4, v27);
      v5 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      swift_allocObject();
      v6 = sub_1BA20F244(v0);
      v7 = *(v6 + 48);
      *(v6 + 168) = *(v6 + 32);
      *(v6 + 184) = v7;
      *(v6 + 200) = 0;
      v8 = (*(v5 + 24))();
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v29.origin.x = v8;
      v29.origin.y = v10;
      v29.size.width = v12;
      v29.size.height = v14;
      Height = CGRectGetHeight(v29);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v28 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1BA066F50((v16 > 1), v17 + 1, 1);
        v3 = v28;
      }

      *(v3 + 16) = v17 + 1;
      *(v3 + 8 * v17 + 32) = Height;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v18 = *(v3 + 16);
  if (!v18)
  {
    v20 = 0.0;
    goto LABEL_16;
  }

  if (v18 <= 3)
  {
    v19 = 0;
    v20 = 0.0;
LABEL_14:
    v23 = v18 - v19;
    v24 = (v3 + 8 * v19 + 32);
    do
    {
      v25 = *v24++;
      v20 = v20 + v25;
      --v23;
    }

    while (v23);
    goto LABEL_16;
  }

  v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
  v21 = (v3 + 48);
  v20 = 0.0;
  v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
    v21 += 4;
    v22 -= 4;
  }

  while (v22);
  if (v18 != v19)
  {
    goto LABEL_14;
  }

LABEL_16:

  return v20;
}

void (*PDFBuilder.Document.drawingContext.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *v3 = PDFBuilder.Document.drawingContext.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1BA20EA94;
}

void sub_1BA20EA94(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *(v2 + 168) = *v1;
  *(v2 + 184) = v3;
  *(v2 + 200) = 0;
  free(v1);
}

double PDFBuilder.Document.header.getter()
{
  swift_beginAccess();

  return result;
}

double PDFBuilder.Document.header.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 208) = a1;

  return result;
}

double PDFBuilder.Document.footer.getter()
{
  swift_beginAccess();

  return result;
}

double PDFBuilder.Document.footer.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 216) = a1;

  return result;
}

uint64_t PDFBuilder.Document.__allocating_init(numberOfColumns:printPaper:isRightToLeft:header:footer:)(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 256;
  *(v10 + 160) = 1;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 257;
  *(v10 + 96) = a3;
  v11 = a2[4];
  *(v10 + 64) = a2[3];
  *(v10 + 80) = v11;
  v12 = a2[2];
  *(v10 + 32) = a2[1];
  *(v10 + 48) = v12;
  *(v10 + 16) = *a2;
  *(v10 + 208) = a4;
  *(v10 + 216) = a5;
  *(v10 + 104) = a1;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  sub_1BA20F060();
  return v10;
}

uint64_t PDFBuilder.Document.init(numberOfColumns:printPaper:isRightToLeft:header:footer:)(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = 1;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 256;
  *(v5 + 160) = 1;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 257;
  *(v5 + 96) = a3;
  v6 = a2[4];
  *(v5 + 64) = a2[3];
  *(v5 + 80) = v6;
  v7 = a2[2];
  *(v5 + 32) = a2[1];
  *(v5 + 48) = v7;
  *(v5 + 16) = *a2;
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 104) = a1;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  sub_1BA20F060();
  return v5;
}

uint64_t PDFBuilder.Document.__allocating_init(document:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BA20F244(a1);

  return v2;
}

uint64_t PDFBuilder.Document.init(document:)(uint64_t a1)
{
  v1 = sub_1BA20F244(a1);

  return v1;
}

BOOL PDFBuilder.Document.willFitOnCurrentPage(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 32))(v1, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.origin.x = PDFBuilder.Document.drawingContext.getter();
  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  return CGRectContainsRect(v12, v13);
}

void PDFBuilder.Document.moveToNextDrawableRegionIfWontFitOnCurrentPage(_:in:)(UIGraphicsPDFRendererContext a1, CGFloat a2)
{
  v5 = PDFBuilder.Document.drawingContext.getter();
  v7 = v6;
  v9.size.width = CGRectGetWidth(*(v2 + 168));
  v9.origin.x = v5;
  v9.origin.y = v7;
  v9.size.height = a2;
  if (!CGRectContainsRect(*(v2 + 168), v9))
  {

    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }
}

Swift::Void __swiftcall PDFBuilder.Document.moveToNextDrawableRegionIfWontFitOnCurrentPage(_:in:)(__C::CGRect _, UIGraphicsPDFRendererContext in)
{
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  v8.origin.x = PDFBuilder.Document.drawingContext.getter();
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  if (!CGRectContainsRect(v8, v9))
  {

    PDFBuilder.Document.moveToNextDrawableRegion(in:)(in);
  }
}

void sub_1BA20F060()
{
  if (*(v0 + 96) == 1)
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 120);
    v3 = __OFSUB__(v1, v2);
    v4 = v1 - v2;
    if (!v3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v5 = *(v0 + 120);
  v3 = __OFADD__(v5, 1);
  v4 = v5 + 1;
  if (!v3)
  {
LABEL_6:
    v6 = v4;
    v7 = PDFBuilder.Document.bodyBox.getter();
    v12.origin.x = PDFBuilder.Document.bodyBox.getter();
    v8 = v7 + (v6 + -1.0) * ((CGRectGetWidth(v12) - (*(v0 + 104) + -1.0) * 36.0) / *(v0 + 104) + 36.0);
    v13.origin.x = PDFBuilder.Document.bodyBox.getter();
    MinY = CGRectGetMinY(v13);
    v14.origin.x = PDFBuilder.Document.bodyBox.getter();
    v10 = (CGRectGetWidth(v14) - (*(v0 + 104) + -1.0) * 36.0) / *(v0 + 104);
    v15.origin.x = PDFBuilder.Document.bodyBox.getter();
    Height = CGRectGetHeight(v15);
    *(v0 + 168) = v8;
    *(v0 + 176) = MinY;
    *(v0 + 184) = v10;
    *(v0 + 192) = Height;
    *(v0 + 200) = 0;
    return;
  }

  __break(1u);
}

uint64_t PDFBuilder.Document.deinit()
{

  return v0;
}

uint64_t PDFBuilder.Document.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA20F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  type metadata accessor for PDFBuilder();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1B9F1134C(&v11, v9 + 112);
  *(v9 + 152) = a2;
  return v9;
}

uint64_t sub_1BA20F244(uint64_t a1)
{
  v2 = v1;
  *(v2 + 104) = 1;
  *(v2 + 112) = 1;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 256;
  *(v2 + 160) = 1;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 257;
  memmove((v2 + 16), (a1 + 16), 0x50uLL);
  swift_beginAccess();
  v4 = *(a1 + 201);
  swift_beginAccess();
  *(v2 + 201) = v4;
  *(v2 + 96) = *(a1 + 96);
  swift_beginAccess();
  *(v2 + 208) = *(a1 + 208);
  swift_beginAccess();
  *(v2 + 216) = *(a1 + 216);
  *(v2 + 168) = PDFBuilder.Document.drawingContext.getter();
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 192) = v7;
  *(v2 + 200) = 0;
  *(v2 + 104) = *(a1 + 104);
  *(v2 + 120) = *(a1 + 120);
  swift_beginAccess();
  v8 = *(a1 + 160);
  swift_beginAccess();
  *(v2 + 160) = v8;

  return v2;
}

void sub_1BA20F39C(uint64_t a1)
{
  if (!qword_1EBBEE748)
  {
    type metadata accessor for PDFBuilder.Document();
    v1 = sub_1BA4A2D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE748);
    }
  }
}

uint64_t dispatch thunk of PDFBuilder.generate()()
{
  v4 = (*(*v0 + 112) + **(*v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B9FFA404;

  return v4();
}

uint64_t sub_1BA20F5BC(uint64_t a1, int a2)
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

uint64_t sub_1BA20F5DC(uint64_t result, int a2, int a3)
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

unint64_t sub_1BA20F61C()
{
  result = qword_1EBBEE750;
  if (!qword_1EBBEE750)
  {
    sub_1BA0A186C();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBEE750);
  }

  return result;
}

unint64_t sub_1BA20F664()
{
  result = qword_1EBBEE758;
  if (!qword_1EBBEE758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBEE758);
  }

  return result;
}

uint64_t sub_1BA20F6B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v44 = a3;
  v51 = a2;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v44 - v5;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v49 = v7;
  v47 = sub_1BA4A1C68();
  v8 = *(v47 - 8);
  v48 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v52 = xmmword_1BA4B5480;
  *(v10 + 16) = xmmword_1BA4B5480;
  v46 = *MEMORY[0x1E69A3B68];
  v45 = *(v8 + 104);
  v45(v10 + v9);
  v11 = sub_1BA4A0FA8();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v12 = swift_allocObject();
  *(v12 + 16) = v52;
  *(v12 + 32) = sub_1BA4A6F38();
  v50 = MEMORY[0x1BFAED020](v10, 0, v6, v12);

  sub_1B9F1C1B0(v6);
  v13 = swift_allocObject();
  *(v13 + 16) = v52;
  (v45)(v13 + v9, v46, v47);
  sub_1BA4A20E8();
  v14 = swift_allocObject();
  *(v14 + 16) = v52;
  *(v14 + 32) = sub_1BA4A6F38();
  v15 = sub_1BA4A2638();

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B7510;
  v17 = v50;
  *(inited + 32) = v50;
  *(inited + 40) = v15;
  v53 = inited;
  v18 = v17;
  v19 = v15;

  sub_1B9F33948(v20);
  v21 = v53;
  v53 = MEMORY[0x1E69E7CC0];
  if (v21 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    *&v52 = v19;
    v19 = v18;
    v23 = 0;
    v18 = (v21 & 0xC000000000000001);
    while (1)
    {
      if (v18)
      {
        v24 = MEMORY[0x1BFAF2860](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      MEMORY[0x1BFAF1510](v24);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v51 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      ++v23;
      if (v25 == i)
      {
        v18 = v19;
        v19 = v52;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  sub_1B9F1BFFC();
  v26 = sub_1BA4A6AE8();

  v27 = [objc_opt_self() andPredicateWithSubpredicates_];

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5890;
  v29 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v30 = sub_1BA4A6758();
  v31 = [v29 initWithKey:v30 ascending:1];

  *(v28 + 32) = v31;
  v32 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v33 = sub_1BA4A6758();
  v34 = [v32 initWithKey:v33 ascending:1];

  *(v28 + 40) = v34;
  v35 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v36 = sub_1BA4A6758();
  v37 = [v35 initWithKey:v36 ascending:0];

  *(v28 + 48) = v37;
  v38 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v39 = sub_1BA4A6758();
  v40 = [v38 initWithKey:v39 ascending:1 selector:sel_localizedStandardCompare_];

  *(v28 + 56) = v40;
  v41 = v27;
  v42 = sub_1BA4A7558();

  return v42;
}

id sub_1BA20FD5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedSummariesDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedSummariesDataSource(uint64_t a1)
{
  result = qword_1EBBEE760;
  if (!qword_1EBBEE760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA20FDE8@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - v10;
  v12 = qword_1EDC84AD8;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_1BA4A18F8();
  v15 = [v13 objectAtIndexPath_];

  v16 = [v15 localizedCategoryName];
  if (v16)
  {
    v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v19 = v18;

    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v20 = type metadata accessor for HeaderItem(0);
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v17, v19, 0, 0, 0, 0, v11, 0, 0);
    v22 = v21;
  }

  else
  {
    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    (*(v4 + 16))(v7, v11, v3);
    v20 = type metadata accessor for HeaderItem(0);
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(0, 0xE000000000000000, 0, 0, 0, 0, v7, 0, 0);
    v22 = v23;
    (*(v4 + 8))(v11, v3);
  }

  result = sub_1BA011754();
  a1[3] = v20;
  a1[4] = result;
  *a1 = v22;
  return result;
}

double sub_1BA210088()
{
  sub_1B9FF57C0();
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830(v0, v1);

  return result;
}

id sub_1BA2100D8(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  static GridLayoutEngine.standard.getter(&v16);
  v14 = v8;
  v15 = v2;
  v3 = GridLayoutEngine.layout(for:)(&v14);
  if (v1)
  {
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v9 = v16;
    v10 = v17;
    return sub_1B9F5A690(&v9);
  }

  else
  {
    v5 = v3;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v9 = v16;
    v10 = v17;
    sub_1B9F5A690(&v9);
    v6 = [objc_opt_self() estimatedDimension_];
    v7 = sub_1B9F5CA58(v6, 2);

    return v7;
  }
}

uint64_t sub_1BA2101D8()
{
  v1 = [v0 subviews];
  sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
  v2 = sub_1BA4A6B08();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFAF2860](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;

        return v9;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t PDFAsyncViewController.PDFViewControllerError.hashValue.getter()
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](0);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA2103A4(uint64_t a1, uint64_t a2)
{
  sub_1BA210408(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA210408(uint64_t a1)
{
  if (!qword_1EBBEE778)
  {
    sub_1B9F0D950(255, &qword_1EBBEE780, &protocol descriptor for PDFConfigurable);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEE778);
    }
  }
}

uint64_t sub_1BA2104C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA21052C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

id sub_1BA2105CC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1BA4A6AE8();
    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA2106B0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6978048]) init];
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAutoScales_];
    [v4 setDisplayMode_];
    [v4 setDisplayDirection_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id PDFAsyncViewController.init(title:pdfFileNameProvider:pageNumberFormat:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView] = 0;
  sub_1B9F0A534(a3, &v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pdfFileNameProvider]);
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat] = v6;
  v8 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_configuration];
  v9 = type metadata accessor for PDFAsyncViewController();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  v11 = sub_1BA4A6758();

  [v10 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

char *PDFAsyncViewController.__allocating_init(title:pdfFileNameProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = sub_1BA213804(a1, a2, v11, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v12;
}

char *PDFAsyncViewController.init(title:pdfFileNameProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1BA213454(a1, a2, v14, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

id PDFAsyncViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PDFAsyncViewController.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E08();
  v7 = sub_1BA4A3E88();
  v8 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_1BA4A85D8();
    v13 = sub_1B9F0B82C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B9F07000, v7, v8, "[%{public}s] Deinit", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFAF43A0](v10, -1, -1);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v14 = type metadata accessor for PDFAsyncViewController();
  v18.receiver = v1;
  v18.super_class = v14;
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

void sub_1BA210E24()
{
  v1 = v0;
  sub_1BA2139C0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v74 - v4;
  v6 = type metadata accessor for PDFAsyncViewController();
  v77.receiver = v0;
  v77.super_class = v6;
  objc_msgSendSuper2(&v77, sel_viewDidLoad);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v1 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = sub_1BA4A6AE8();
  v13 = HKUIJoinStringsForAutomationIdentifier();

  [v11 setAccessibilityIdentifier_];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = sub_1BA2106B0();
  [v15 addSubview_];

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v76 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5890;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView;
  v20 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView] topAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v21 topAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v18 + 32) = v24;
  v25 = [*&v1[v19] bottomAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v75 = v5;
  v28 = [v26 safeAreaLayoutGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v25 constraintEqualToAnchor_];

  *(v18 + 40) = v30;
  v31 = [*&v1[v19] leadingAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v18 + 48) = v35;
  v36 = [*&v1[v19] trailingAnchor];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v37;
  v39 = objc_opt_self();
  v40 = [v38 trailingAnchor];

  v41 = [v36 constraintEqualToAnchor_];
  *(v18 + 56) = v41;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v42 = sub_1BA4A6AE8();

  [v39 activateConstraints_];

  v43 = *&v1[v19];
  v44 = sub_1BA2101D8();

  if (v44)
  {
    [v44 setContentInsetAdjustmentBehavior_];
  }

  v45 = [v1 view];
  if (!v45)
  {
    goto LABEL_23;
  }

  v46 = v45;
  v47 = sub_1BA2105CC();
  [v46 addSubview_];

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1BA4B7510;
  v49 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner;
  v50 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner] centerXAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = v51;
  v53 = [v51 centerXAnchor];

  v54 = [v50 constraintEqualToAnchor_];
  *(v48 + 32) = v54;
  v55 = [*&v1[v49] centerYAnchor];
  v56 = [v1 view];
  if (!v56)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v57 = v56;
  v58 = [v56 centerYAnchor];

  v59 = [v55 constraintEqualToAnchor_];
  *(v48 + 40) = v59;
  v60 = sub_1BA4A6AE8();

  [v39 activateConstraints_];

  [*&v1[v49] startAnimating];
  v61 = sub_1BA4A6C88();
  v62 = v75;
  (*(*(v61 - 8) + 56))(v75, 1, 1, v61);
  sub_1BA4A6C68();
  v63 = v1;
  v64 = sub_1BA4A6C58();
  v65 = swift_allocObject();
  v66 = MEMORY[0x1E69E85E0];
  v65[2] = v64;
  v65[3] = v66;
  v65[4] = v63;
  sub_1BA0BF220(0, 0, v62, &unk_1BA4C6FB8, v65);

  v67 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v63 action:sel_didTapClose];
  v68 = sub_1BA4A6AE8();
  v69 = HKUIJoinStringsForAutomationIdentifier();

  [v67 setAccessibilityIdentifier_];
  v70 = [v63 navigationItem];
  [v70 setLeftBarButtonItem_];

  v71 = &v63[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v72 = *(v71 + 1);
    ObjectType = swift_getObjectType();
    (*(v72 + 8))(v63, ObjectType, v72);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BA211668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1BA4A3EA8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1BA4A6C68();
  v4[17] = sub_1BA4A6C58();
  v7 = sub_1BA4A6C28();
  v4[18] = v7;
  v4[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA21175C, v7, v6);
}

uint64_t sub_1BA21175C()
{
  sub_1BA2103A4(*(v0 + 104) + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_configuration, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1B9F1134C((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_1BA211940;

    return sub_1BA211EB8(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 104);

    sub_1BA213E94(v0 + 56);
    if (*(v3 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource))
    {
      v4 = *(v0 + 104);
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v4 action:sel_didTapShare_];
      v6 = sub_1BA4A6AE8();
      v7 = HKUIJoinStringsForAutomationIdentifier();

      [v5 setAccessibilityIdentifier_];
      v8 = [v4 navigationItem];
      [v8 setRightBarButtonItem_];
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1BA211940()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1BA211BC0;
  }

  else
  {
    v5 = sub_1BA211A7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BA211A7C()
{
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource))
  {
    v2 = v0[13];
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v2 action:sel_didTapShare_];
    v4 = sub_1BA4A6AE8();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v6 = [v2 navigationItem];
    [v6 setRightBarButtonItem_];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BA211BC0()
{
  v26 = v0;
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource))
  {
    v2 = v0[13];
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v2 action:sel_didTapShare_];
    v4 = sub_1BA4A6AE8();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v6 = [v2 navigationItem];
    [v6 setRightBarButtonItem_];
  }

  v7 = v0[21];
  sub_1BA4A3DD8();
  v8 = v7;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FA8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[21];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];
  if (v11)
  {
    v24 = v0[16];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v0[12] = v12;
    v18 = v12;
    sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1B9F07000, v9, v10, "PDF Could not be generated due to error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v13 + 8))(v24, v15);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1BA211EB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1BA4A6C68();
  v2[4] = sub_1BA4A6C58();
  v4 = sub_1BA4A6C28();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BA211F50, v4, v3);
}

uint64_t sub_1BA211F50()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1BA212008;

  return PDFConfigurable.generatePDFData()(v3, v2);
}

uint64_t sub_1BA212008(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = v2;

  v6 = v4[6];
  v7 = v4[5];
  if (v2)
  {
    v8 = sub_1BA21258C;
  }

  else
  {
    v8 = sub_1BA212150;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BA212150()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pdfFileNameProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1BA212280;

  return v6(v2, v3);
}

uint64_t sub_1BA212280(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = v6[5];
    v8 = v6[6];
    v9 = sub_1BA2125F0;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v7 = v6[5];
    v8 = v6[6];
    v9 = sub_1BA2123B4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BA2123B4()
{
  v25 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
  v6 = v0[2];

  sub_1BA212664(v4, v3, v1, v2);

  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 24))(v24, v7, v8);
  v9 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior);
  v10 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior);
  v11 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 8);
  v12 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 16);
  v13 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 24);
  v14 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 32);
  v15 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 40);
  v16 = v24[1];
  *v9 = v24[0];
  v9[1] = v16;
  v9[2] = v24[2];
  sub_1BA213AD8(v10, v11, v12, v13, v14, v15);
  if (*(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource))
  {
    v17 = v0[3];
    v18 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v17 action:sel_didTapShare_];
    v19 = sub_1BA4A6AE8();
    v20 = HKUIJoinStringsForAutomationIdentifier();

    [v18 setAccessibilityIdentifier_];
    v21 = [v17 navigationItem];
    [v21 setRightBarButtonItem_];
  }

  sub_1B9F2BB4C(v0[8], v0[9]);
  v22 = v0[1];

  return v22();
}

uint64_t sub_1BA21258C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA2125F0()
{
  v1 = v0[8];
  v2 = v0[9];

  sub_1B9F2BB4C(v1, v2);
  v3 = v0[1];

  return v3();
}

void sub_1BA212664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A3C98();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA2105CC();
  [v17 stopAnimating];

  [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner) removeFromSuperview];
  v18 = objc_allocWithZone(MEMORY[0x1E6978028]);
  v19 = sub_1BA4A15F8();
  v20 = [v18 initWithData_];

  if (v20)
  {
    [v20 setDelegate_];
  }

  v21 = sub_1BA2106B0();
  [v21 setDocument_];

  v22 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView);
  v23 = sub_1BA2101D8();

  if (v23)
  {
    [v23 adjustedContentInset];
    [v23 setContentOffset:1 animated:{0.0, -v24}];
  }

  if (v20 && (v25 = [v20 dataRepresentation]) != 0)
  {
    v26 = v25;
    v27 = sub_1BA4A1608();
    v29 = v28;

    sub_1B9F206D4(v27, v29);

    sub_1BA4A3C78();
    v30 = objc_allocWithZone(type metadata accessor for ShareFileActivityItemSource(0));
    v31 = ShareFileActivityItemSource.init(data:filename:contentType:)(v27, v29, a3, a4, v16);
    sub_1B9F2BB4C(v27, v29);

    v32 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource);
    *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource) = v31;
  }

  else
  {
    sub_1BA4A3DD8();
    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1B9F07000, v33, v34, "PDFViewController couldn't pull data representation of the PDF", v35, 2u);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v12, v8);
  }
}

void sub_1BA2129C8(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 40])
  {
    v3 = *(v2 + 3);
    v4 = *(v2 + 1);
    sub_1B9F0AD9C(a1, v19);
    sub_1BA213E08();

    if (swift_dynamicCast())
    {
      v5 = aBlock[0];
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = sub_1BA4A6758();
      if (v3)
      {
LABEL_7:
        v7 = sub_1BA4A6758();
LABEL_14:
        v9 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

        if (qword_1EDC5E100 != -1)
        {
          swift_once();
        }

        sub_1BA4A1318();
        v10 = sub_1BA4A6758();

        v11 = objc_opt_self();
        v12 = [v11 actionWithTitle:v10 style:1 handler:{0, 0xE000000000000000}];

        [v9 addAction_];
        [v9 setPreferredAction_];
        v13 = swift_allocObject();
        *(v13 + 16) = v1;
        *(v13 + 24) = v5;
        swift_unknownObjectRetain();
        v14 = v1;
        v15 = sub_1BA4A6758();
        aBlock[4] = sub_1BA213E6C;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BA0B06D4;
        aBlock[3] = &block_descriptor_55;
        v16 = _Block_copy(aBlock);

        v17 = [v11 actionWithTitle:v15 style:0 handler:v16];
        _Block_release(v16);

        [v9 addAction_];
        [v14 presentViewController:v9 animated:1 completion:0];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      v6 = 0;
      if (v3)
      {
        goto LABEL_7;
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  sub_1B9F0AD9C(a1, aBlock);
  sub_1BA213E08();
  if (swift_dynamicCast())
  {
    v8 = v19[0];
  }

  else
  {
    v8 = 0;
  }

  sub_1BA212DC4(v8);
  swift_unknownObjectRelease();
}

void sub_1BA212DC4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v46[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46[-1] - v11;
  if (a1)
  {
    v13 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource];
    if (v13)
    {
      v14 = &v2[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 16);
        swift_unknownObjectRetain();
        v18 = v13;
        v17(v2, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
        v33 = v13;
      }

      sub_1B9F1C048(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8);
      v34 = swift_allocObject();
      v45 = xmmword_1BA4B5480;
      *(v34 + 16) = xmmword_1BA4B5480;
      *(v34 + 56) = type metadata accessor for ShareFileActivityItemSource(0);
      *(v34 + 32) = v13;
      v35 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
      v36 = v13;
      v37 = sub_1BA4A6AE8();

      v38 = [v35 initWithActivityItems:v37 applicationActivities:0];

      sub_1BA2139C0(0, &qword_1EBBEE848, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
      v39 = swift_allocObject();
      *(v39 + 16) = v45;
      v40 = *MEMORY[0x1E69CDAA8];
      *(v39 + 32) = *MEMORY[0x1E69CDAA8];
      type metadata accessor for ActivityType(0);
      v41 = v40;
      v42 = sub_1BA4A6AE8();

      [v38 setExcludedActivityTypes_];

      v43 = [v38 popoverPresentationController];
      if (v43)
      {
        v44 = v43;
        [v43 setSourceItem_];
      }

      [v2 presentViewController:v38 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1BA4A3E08();
      v26 = sub_1BA4A3E88();
      v27 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46[0] = v29;
        *v28 = 136446210;
        v30 = sub_1BA4A85D8();
        v32 = sub_1B9F0B82C(v30, v31, v46);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_1B9F07000, v26, v27, "[%{public}s] Unable to share PDF before it is loaded", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1BFAF43A0](v29, -1, -1);
        MEMORY[0x1BFAF43A0](v28, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v5 + 8))(v12, v4);
    }
  }

  else
  {
    sub_1BA4A3E08();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v46[0] = v22;
      *v21 = 136446210;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, v46);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%{public}s] sender found nil when presenting share sheet", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BA2132D0()
{
  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat);
  if (!result)
  {
    return sub_1B9F0ADF8(0, &qword_1EBBEE7C8, 0x1E6978038);
  }

  if (result == 1)
  {
    return type metadata accessor for PDFPageNumberedPage();
  }

  return result;
}

id PDFAsyncViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

char *sub_1BA213454(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v42 = sub_1BA4A3EA8();
  v12 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v13);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[3] = a6;
  v45[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v17 = &a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource] = 0;
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner] = 0;
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView] = 0;
  sub_1B9F0A534(a4, &a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_configuration]);
  sub_1B9F0A534(v45, &a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pdfFileNameProvider]);
  v18 = a4[3];
  v19 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v18);
  (*(v19 + 8))(v43, v18, v19);
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat] = *&v43[0];
  v20 = type metadata accessor for PDFAsyncViewController();
  v44.receiver = a5;
  v44.super_class = v20;
  v21 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0, ObjectType);
  v22 = sub_1BA4A6758();

  [v21 setTitle_];

  v23 = a4[3];
  v24 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v23);
  (*(v24 + 24))(v43, v23, v24);
  v25 = &v21[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  v26 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  v27 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 8];
  v28 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 16];
  v29 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 24];
  v30 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 32];
  v31 = *&v21[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 40];
  v32 = v43[1];
  *v25 = v43[0];
  *(v25 + 1) = v32;
  *(v25 + 2) = v43[2];
  sub_1BA213AD8(v26, v27, v28, v29, v30, v31);
  sub_1BA4A3E08();
  v33 = sub_1BA4A3E88();
  v34 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v43[0] = v36;
    *v35 = 136446210;
    v37 = sub_1BA4A85D8();
    v39 = sub_1B9F0B82C(v37, v38, v43);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1B9F07000, v33, v34, "[%{public}s] Initialized", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
    MEMORY[0x1BFAF43A0](v35, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v15, v42);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

char *sub_1BA213804(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for PDFAsyncViewController());
  (*(v13 + 16))(v15, a3, a6);
  return sub_1BA213454(a1, a2, v15, a4, v16, a6, a7);
}

void _s18HealthExperienceUI22PDFAsyncViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA2139C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA213A24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA211668(a1, v4, v5, v6);
}

double sub_1BA213AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_1BA213B2C()
{
  result = qword_1EBBEE7D0;
  if (!qword_1EBBEE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE7D0);
  }

  return result;
}

uint64_t dispatch thunk of PDFAsyncViewController.configure(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C2E3C;

  return v7(a1);
}

unint64_t sub_1BA213E08()
{
  result = qword_1EBBEE850;
  if (!qword_1EBBEE850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEE850);
  }

  return result;
}

uint64_t sub_1BA213E94(uint64_t a1)
{
  sub_1BA210408(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA213EF0()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for HierarchicalDiffableCollectionViewAdaptor(0);
    v4 = sub_1B9F23FB0();

    return sub_1BA164F98(v2, v4, 1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for HierarchicalDiffableCollectionViewAdaptor(uint64_t a1)
{
  result = qword_1EBBEE858;
  if (!qword_1EBBEE858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CollapsibleListCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id CollapsibleListCollectionViewController.init(collectionViewLayout:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, a1);

  return v3;
}

id CollapsibleListCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CollapsibleListCollectionViewController.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id CollapsibleListCollectionViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_1BA214220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_1BA4A6478();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BA4A64C8();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v10);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2157C4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(v5 + v18) = 1;
  v19 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v21 = swift_unknownObjectRetain();
  v22 = sub_1BA21582C(v21, ObjectType, v19);
  swift_unknownObjectRelease();
  v23 = [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) window];
  if (v23)
  {
  }

  else
  {
    a4 = 0;
  }

  v24 = dispatch_group_create();
  v50 = v22;
  v25 = *(v22 + 16);
  if (v25)
  {
    v26 = v50 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v51 = *(v14 + 72);
    v52 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
    do
    {
      sub_1BA215A00(v26, v17);
      v27 = *v17;
      v28 = v17[1];
      v53 = *(v13 + 48);
      dispatch_group_enter(v24);
      v29 = v17;
      v30 = v13;
      v31 = a4;
      v32 = *(v5 + v52);
      aBlock = v27;
      v56 = v28;
      *(swift_allocObject() + 16) = v24;
      v33 = v32;
      a4 = v31;
      v13 = v30;
      v17 = v29;
      v34 = v33;
      v35 = v24;
      sub_1BA4A4728();

      sub_1BA215AE8(v29, sub_1BA2157C4);
      v26 += v51;
      --v25;
    }

    while (v25);
  }

  sub_1B9F38BF4();
  v36 = sub_1BA4A7308();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  v59 = sub_1BA0CAC90;
  v60 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1B9F0B040;
  v58 = &block_descriptor_56;
  v38 = _Block_copy(&aBlock);
  v39 = v44;
  sub_1BA4A64A8();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A8DC(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v40 = v46;
  v41 = v49;
  sub_1BA4A7C38();
  sub_1BA4A7278();

  _Block_release(v38);
  (*(v48 + 8))(v40, v41);
  (*(v45 + 8))(v39, v47);

  return result;
}

void sub_1BA21489C(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1BA0699FC();
  v42 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  ObjectType = swift_getObjectType();
  v33 = v12;
  v14 = SnapshotDataSource.itemIdentifiers(in:)(v12, v11, ObjectType, a2);
  sub_1BA4A4768();
  if (!v14[2])
  {
    goto LABEL_10;
  }

  v28 = v14[2];
  v30 = v11;
  v31 = a3;
  v32 = v3;
  v15 = v14[4];
  v27 = v14 + 4;
  v16 = v14[5];
  v17 = *(a2 + 24);

  v29 = v15;
  v17(v41, v15, v16, ObjectType, a2);
  if (!v41[3])
  {

    sub_1B9FCD638(v41);
LABEL_9:
    a3 = v31;
    v11 = v30;
LABEL_10:
    v39[0] = 0uLL;
    v19 = v42;
    sub_1BA4A4748();

    goto LABEL_11;
  }

  sub_1B9F32244();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v37[6] = v39[6];
  v37[7] = v39[7];
  v37[8] = v39[8];
  v38 = v40;
  v37[2] = v39[2];
  v37[3] = v39[3];
  v37[4] = v39[4];
  v37[5] = v39[5];
  v37[0] = v39[0];
  v37[1] = v39[1];
  sub_1BA215C04(v37);
  sub_1B9F23348(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  v26 = xmmword_1BA4B5480;
  *(v18 + 16) = xmmword_1BA4B5480;
  *(v18 + 32) = v29;
  *(v18 + 40) = v16;
  v35 = 0;
  v36 = 0;

  v19 = v42;
  sub_1BA4A4748();

  v20 = v14[2];
  v21 = v28;
  if (v20 < v28)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v20 != v28 - 1)
  {
LABEL_13:
    sub_1BA2A12AC(v14, v27, 1, (2 * v21) | 1);
  }

  a3 = v31;
  v35 = v29;
  v36 = v16;

  sub_1BA4A4748();

  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  *(v22 + 32) = v29;
  *(v22 + 40) = v16;
  sub_1BA4A4758();

  v11 = v30;
LABEL_11:
  sub_1BA2157C4(0);
  v24 = *(v23 + 48);
  v25 = v34;
  *a3 = v33;
  a3[1] = v11;
  (*(v25 + 32))(a3 + v24, v10, v19);
}

double sub_1BA214C70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A6478();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1BA4A64C8();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v7);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2157C4(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(v2 + v15) = 1;
  v16 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v18 = swift_unknownObjectRetain();
  v19 = sub_1BA21582C(v18, ObjectType, v16);
  swift_unknownObjectRelease();
  v20 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) window];
  if (v20)
  {
  }

  else
  {
    a1 = 0;
  }

  v21 = dispatch_group_create();
  v47 = v19;
  v22 = *(v19 + 16);
  if (v22)
  {
    v23 = v47 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v48 = *(v11 + 72);
    v49 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
    do
    {
      sub_1BA215A00(v23, v14);
      v24 = *v14;
      v25 = v14[1];
      v50 = *(v10 + 48);
      dispatch_group_enter(v21);
      v26 = v14;
      v27 = v10;
      v28 = a1;
      v29 = *(v2 + v49);
      aBlock = v24;
      v53 = v25;
      *(swift_allocObject() + 16) = v21;
      v30 = v29;
      a1 = v28;
      v10 = v27;
      v14 = v26;
      v31 = v30;
      v32 = v21;
      sub_1BA4A4728();

      sub_1BA215AE8(v26, sub_1BA2157C4);
      v23 += v48;
      --v22;
    }

    while (v22);
  }

  sub_1B9F38BF4();
  v33 = sub_1BA4A7308();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v56 = sub_1BA215C60;
  v57 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1B9F0B040;
  v55 = &block_descriptor_14_2;
  v35 = _Block_copy(&aBlock);
  v36 = v41;
  sub_1BA4A64A8();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A8DC(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v37 = v43;
  v38 = v46;
  sub_1BA4A7C38();
  sub_1BA4A7278();

  _Block_release(v35);
  (*(v45 + 8))(v37, v38);
  (*(v42 + 8))(v36, v44);

  return result;
}

double sub_1BA21515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a3;
  v42 = a4;
  v8 = sub_1BA4A6478();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1BA4A64C8();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v11);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2157C4(0);
  v14 = v13;
  v15 = *(v13 - 8);
  *&v17 = MEMORY[0x1EEE9AC00](v13, v16).n128_u64[0];
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) window];
  if (v20)
  {
  }

  else
  {
    a2 = 0;
  }

  v21 = dispatch_group_create();
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v49 = *(v15 + 72);
    v50 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
    do
    {
      sub_1BA215A00(v23, v19);
      v24 = v19;
      v25 = *v19;
      v26 = v19[1];
      v51 = *(v14 + 48);
      dispatch_group_enter(v21);
      v27 = a2;
      v28 = *(v5 + v50);
      aBlock = v25;
      v54 = v26;
      *(swift_allocObject() + 16) = v21;
      v29 = v28;
      a2 = v27;
      v30 = v29;
      v31 = v21;
      sub_1BA4A4728();
      v19 = v24;

      sub_1BA215AE8(v24, sub_1BA2157C4);
      v23 += v49;
      --v22;
    }

    while (v22);
  }

  sub_1B9F38BF4();
  v32 = sub_1BA4A7308();
  v33 = swift_allocObject();
  v35 = v41;
  v34 = v42;
  *(v33 + 16) = v41;
  *(v33 + 24) = v34;
  v57 = sub_1BA215C60;
  v58 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1B9F0B040;
  v56 = &block_descriptor_40_4;
  v36 = _Block_copy(&aBlock);
  sub_1B9F0F1B4(v35, v34);
  v37 = v43;
  sub_1BA4A64A8();
  v52 = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A8DC(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v38 = v45;
  v39 = v48;
  sub_1BA4A7C38();
  sub_1BA4A7278();

  _Block_release(v36);
  (*(v47 + 8))(v38, v39);
  (*(v44 + 8))(v37, v46);

  return result;
}

uint64_t HierarchicalDiffableCollectionViewAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1BA215A6C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1BA215AE8(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);
  return v0;
}

uint64_t HierarchicalDiffableCollectionViewAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1BA215A6C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1BA215AE8(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);

  return swift_deallocClassInstance();
}

void sub_1BA2157C4(uint64_t a1)
{
  if (!qword_1EBBEAC58)
  {
    sub_1BA0699FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEAC58);
    }
  }
}

uint64_t sub_1BA21582C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA2157C4(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1;
  v21 = a3;
  v11 = SnapshotDataSource.sectionIdentifiers.getter(a2, a3);
  v12 = *(v11 + 16);
  if (v12)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1BA066EA0(0, v12, 0);
    v14 = 0;
    v15 = v23;
    v16 = (v11 + 40);
    while (v14 < *(v11 + 16))
    {
      v17 = *v16;
      v22[0] = *(v16 - 1);
      v22[1] = v17;

      sub_1BA21489C(v22, v21, v10);

      v23 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1BA066EA0((v18 > 1), v19 + 1, 1);
        v15 = v23;
      }

      ++v14;
      *(v15 + 16) = v19 + 1;
      result = sub_1BA215BA0(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19);
      v16 += 2;
      if (v12 == v14)
      {

        return v15;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BA215A00(uint64_t a1, uint64_t a2)
{
  sub_1BA2157C4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA215A6C(uint64_t a1)
{
  if (!qword_1EDC6ADE0)
  {
    sub_1B9F23348(255, &qword_1EDC6B650, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A1CE8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6ADE0);
    }
  }
}

uint64_t sub_1BA215AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA215BA0(uint64_t a1, uint64_t a2)
{
  sub_1BA2157C4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall DeviceSourcesItem.init(device:healthStore:)(HealthExperienceUI::DeviceSourcesItem *__return_ptr retstr, HKDevice device, HKHealthStore healthStore)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = device.super.isa;
  v12 = [(objc_class *)v11 _displayName];
  if (v12)
  {
    v13 = v12;
    v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = [(objc_class *)v11 localIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = v20;
  }

  else
  {
    sub_1BA4A1788();
    v19 = sub_1BA4A1748();
    v21 = v22;
    (*(v7 + 8))(v10, v6);
  }

  v23 = [(objc_class *)v11 model:v14];

  if (v23)
  {
    v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x1BFAF1350](v24, v26);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](v19, v21);

  v27 = v28[1];
  retstr->uniqueIdentifier._countAndFlagsBits = v28[0];
  retstr->uniqueIdentifier._object = v27;
  retstr->name._countAndFlagsBits = v14;
  retstr->name._object = v16;
  retstr->device.super.isa = v11;
  retstr->healthStore = healthStore;
}

uint64_t sub_1BA215E70()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1BA2173E8(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v30 = &v27 - v3;
  v4 = sub_1BA4A3FB8();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BA4A3F18();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2173E8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  v20 = sub_1BA31D5B4();
  MEMORY[0x1BFAF1F00](v20);
  v21 = sub_1BA4A4168();
  if ((*(*(v21 - 8) + 48))(v19, 1, v21))
  {
    v22 = MEMORY[0x1E69DC0D8];
    sub_1BA217368(v19, v15, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v15);
    sub_1B9F44100(v19, &qword_1EDC6B770, v22);
  }

  else
  {
    v23 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v19);
  }

  sub_1BA2173E8(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  v24 = v28;
  (*(v8 + 104))(v11, *MEMORY[0x1E69DBF28], v28);
  v25 = sub_1BA4A3F48();
  (*(*(v25 - 8) + 56))(v30, 1, 1, v25);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v29 + 8))(v7, v4);
  (*(v8 + 8))(v11, v24);
  return sub_1BA4A75F8();
}

uint64_t sub_1BA2162F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A4428();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA217368(v1 + v13, v36, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v36[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v14 = v34;
      v30 = v34;
      v31 = v35;
      v32 = v33[1];
      v15 = [objc_opt_self() sharedImageManager];
      v16 = [v15 iconForDevice_];

      v17 = v16;
      MEMORY[0x1BFAF2040]();
      sub_1BA4A43B8();
      v18 = v17;
      sub_1BA4A43D8();
      v19 = sub_1BA4A42D8();
      sub_1BA4A4268();
      v19(v33, 0);
      sub_1BA4A4348();
      v33[3] = v8;
      v34 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
      (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
      MEMORY[0x1BFAF1EF0](v33);

      return (*(v9 + 8))(v12, v8);
    }
  }

  else
  {
    sub_1B9F44100(v36, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3E48();
  v22 = sub_1BA4A3E88();
  v23 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36[0] = v25;
    *v24 = 136446210;
    v33[0] = ObjectType;
    swift_getMetatypeMetadata();
    v26 = sub_1BA4A6808();
    v28 = sub_1B9F0B82C(v26, v27, v36);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1B9F07000, v22, v23, "[%{public}s] item is not a DeviceSourcesItem", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1BFAF43A0](v25, -1, -1);
    MEMORY[0x1BFAF43A0](v24, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

id sub_1BA216814(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DeviceSourcesCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1BA216870()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_57;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

uint64_t sub_1BA21699C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DeviceSourcesCell();
  sub_1BA21744C();
  result = sub_1BA4A6808();
  qword_1EBC09720 = result;
  *algn_1EBC09728 = v3;
  return result;
}

uint64_t DeviceSourcesItem.reuseIdentifier.getter()
{
  if (qword_1EBBE8520 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBC09720;

  return v0;
}

uint64_t DeviceSourcesItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void DeviceSourcesItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DeviceSourcesItem.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void DeviceSourcesItem.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t sub_1BA216B58(uint64_t a1)
{
  result = sub_1BA216B80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA216B80()
{
  result = qword_1EBBEE868;
  if (!qword_1EBBEE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE868);
  }

  return result;
}

unint64_t sub_1BA216BD8()
{
  result = qword_1EBBEE870;
  if (!qword_1EBBEE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE870);
  }

  return result;
}

uint64_t sub_1BA216C2C()
{
  if (qword_1EBBE8520 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBC09720;

  return v0;
}

uint64_t sub_1BA216C94(uint64_t a1)
{
  v2 = sub_1BA216B80();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA216D14(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA2173E8(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v46[-v16];
  v18 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA217368(v2 + v18, v58, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v58[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v19 = v54;
      v21 = v55;
      v20 = v56;
      v22 = v57;
      if ([v56 _isConnectedGymDevice])
      {
        v23 = [v22 viewControllerFactory];
        v24 = [v20 _connectedGymDeviceFullName];
        v25 = [v23 createDeviceStoredDataViewControllerForDevice:v20 displayName:v24 isBluetoothDevice:0 deviceIdentifier:0 healthStore:v22 usingInsetStyling:1];

        [a1 showViewController:v25 sender:0];
      }

      else
      {
        v33 = [v20 name];
        v52 = v22;
        if (v33 || (v33 = [v20 model]) != 0 || (v33 = objc_msgSend(v20, sel_manufacturer)) != 0)
        {
          v34 = v33;
          v48 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        }

        else
        {
          v48 = 0;
        }

        v35 = [v20 bluetoothIdentifier];
        v50 = v19;
        v51 = a1;
        v49 = v21;
        if (v35 || (v35 = [v20 localIdentifier]) != 0)
        {
          v36 = v35;
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        }

        sub_1BA4A1738();

        v37 = sub_1BA4A1798();
        v38 = *(v37 - 8);
        v39 = *(v38 + 48);
        v47 = v39(v17, 1, v37);
        v40 = [v52 viewControllerFactory];
        v41 = sub_1BA4A6758();

        sub_1BA217368(v17, v13, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
        v42 = v39(v13, 1, v37);
        v43 = 0;
        if (v42 != 1)
        {
          v43 = sub_1BA4A1758();
          (*(v38 + 8))(v13, v37);
        }

        v44 = v52;
        v45 = [v40 createDeviceStoredDataViewControllerForDevice:v20 displayName:v41 isBluetoothDevice:v47 != 1 deviceIdentifier:v43 healthStore:v52 usingInsetStyling:1];

        [v51 showViewController:v45 sender:0];

        sub_1B9F44100(v17, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
      }

      return;
    }
  }

  else
  {
    sub_1B9F44100(v58, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3E48();
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v58[0] = v29;
    *v28 = 136446210;
    v53 = ObjectType;
    swift_getMetatypeMetadata();
    v30 = sub_1BA4A6808();
    v32 = sub_1B9F0B82C(v30, v31, v58);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1B9F07000, v26, v27, "[%{public}s] item is not an DeviceSourcesItem", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1BA217368(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA2173E8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA2173E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA21744C()
{
  result = qword_1EBBE9E30;
  if (!qword_1EBBE9E30)
  {
    type metadata accessor for DeviceSourcesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E30);
  }

  return result;
}

void sub_1BA217490(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1BA2174E8(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1BA4A6758();
  [v2 setUniqueIdentifier_];
}

void *HideIfEmptyPredicateDataSource.init(_:context:predicate:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  *(v3 + *(*v3 + 304)) = 0;
  sub_1BA4A27B8();
  v8 = sub_1BA4A26C8();
  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5470;
  sub_1BA0A361C();
  swift_getKeyPath();
  *(v9 + 32) = sub_1BA4A71B8();
  v10 = sub_1BA4A6AE8();

  [v8 setSortDescriptors_];

  [v8 setFetchLimit_];
  v11 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v8 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0(0);
  v13 = objc_allocWithZone(v12);
  v14 = v11;
  v15 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v14);
  *(v4 + *(*v4 + 296)) = v15;
  v16 = v15;
  swift_unknownObjectRetain();
  sub_1BA217804(v16, v22);

  v23 = v22[0];
  v17 = sub_1B9F37820(a1, &v23);
  swift_unknownObjectRelease();
  v18 = *(v17 + *(*v17 + 296));
  v19 = qword_1EBBEA528;
  swift_beginAccess();
  v20 = *(v18 + v19);

  [v20 registerObserver_];

  swift_unknownObjectRelease();

  return v17;
}