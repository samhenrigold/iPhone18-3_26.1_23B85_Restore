uint64_t sub_21CAA28B0(uint64_t a1, uint64_t a2)
{
  v2[29] = a1;
  v2[30] = a2;
  sub_21CB858B4();
  v2[31] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[32] = v4;
  v2[33] = v3;

  return MEMORY[0x2822009F8](sub_21CAA2948, v4, v3);
}

uint64_t sub_21CAA2948()
{
  v1 = objc_opt_self();
  v0[34] = v1;
  v2 = [v1 defaultWorkspace];
  v0[35] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CB85584();
    v0[36] = v4;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_21CAA2AB0;
    v5 = swift_continuation_init();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
    v0[37] = v6;
    v0[25] = v6;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21CA92000;
    v0[21] = &block_descriptor_35;
    v0[22] = v5;
    [v3 safari:v4 setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier:v0 + 18 completionHandler:?];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CAA2AB0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_21CAA2ECC;
  }

  else
  {
    v5 = sub_21CAA2BE0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CAA2BE0()
{
  v1 = *(v0 + 288);

  v2 = [*(v0 + 272) defaultWorkspace];
  *(v0 + 312) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 296);
    v5 = sub_21CB85584();
    *(v0 + 320) = v5;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_21CAA2D30;
    v6 = swift_continuation_init();
    *(v0 + 200) = v4;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CA92000;
    *(v0 + 168) = &block_descriptor_7;
    *(v0 + 176) = v6;
    [v3 safari:v5 setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:v0 + 144 completionHandler:?];
    v2 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CAA2D30()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_21CAA320C;
  }

  else
  {
    v5 = sub_21CAA2E60;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CAA2E60()
{
  v1 = v0[39];
  v2 = v0[40];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CAA2ECC(uint64_t a1)
{
  v26 = v1;
  v2 = *(v1 + 304);
  v4 = *(v1 + 280);
  v3 = *(v1 + 288);
  swift_willThrow();

  *(v1 + 144) = v2;
  v5 = (v1 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = *v5;
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v8 = sub_21CB81C84();
    __swift_project_value_buffer(v8, qword_27CE186E0);
    v9 = v7;
    v10 = sub_21CB81C64();
    v11 = sub_21CB85AF4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136446210;
      v14 = [v9 safari_privacyPreservingDescription];
      v15 = sub_21CB855C4();
      v17 = v16;

      v18 = sub_21C98E004(v15, v17, &v25);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_21C6E5000, v10, v11, "Failed to set default otpauth URL handler: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x21CF16D90](v13, -1, -1);
      v19 = v12;
      v5 = (v1 + 208);
      MEMORY[0x21CF16D90](v19, -1, -1);
    }

    else
    {
    }

    v20 = [*(v1 + 272) defaultWorkspace];
    *(v1 + 312) = v20;
    if (v20)
    {
      v21 = v20;
      v22 = *(v1 + 296);
      v23 = sub_21CB85584();
      *(v1 + 320) = v23;
      *(v1 + 80) = v1;
      *(v1 + 120) = v5;
      *(v1 + 88) = sub_21CAA2D30;
      v24 = swift_continuation_init();
      *(v1 + 200) = v22;
      *(v1 + 144) = MEMORY[0x277D85DD0];
      *(v1 + 152) = 1107296256;
      *(v1 + 160) = sub_21CA92000;
      *(v1 + 168) = &block_descriptor_7;
      *(v1 + 176) = v24;
      [v21 safari:v23 setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:v1 + 144 completionHandler:?];
      v20 = (v1 + 80);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v20);
  }

  return result;
}

uint64_t sub_21CAA320C(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 320);
  v3 = *(v1 + 328);
  v4 = *(v1 + 312);
  swift_willThrow();

  *(v1 + 216) = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = *(v1 + 328);

    v8 = *(v1 + 224);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v9 = sub_21CB81C84();
    __swift_project_value_buffer(v9, qword_27CE186E0);
    v10 = v8;
    v11 = sub_21CB81C64();
    v12 = sub_21CB85AF4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136446210;
      v15 = [v10 safari_privacyPreservingDescription];
      v16 = sub_21CB855C4();
      v18 = v17;

      v19 = sub_21C98E004(v16, v18, &v21);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_21C6E5000, v11, v12, "Failed to set default otpauth-migration URL handler: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x21CF16D90](v14, -1, -1);
      MEMORY[0x21CF16D90](v13, -1, -1);
    }

    else
    {
    }

    v20 = *(v1 + 8);

    return v20();
  }

  return result;
}

uint64_t sub_21CAA3488(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  sub_21CB858B4();
  v2[28] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[29] = v4;
  v2[30] = v3;

  return MEMORY[0x2822009F8](sub_21CAA3520, v4, v3);
}

uint64_t sub_21CAA3520()
{
  v1 = objc_opt_self();
  v0[31] = v1;
  v2 = [v1 defaultWorkspace];
  v0[32] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CB85584();
    v0[33] = v4;
    v0[2] = v0;
    v0[7] = v0 + 39;
    v0[3] = sub_21CAA3688;
    v5 = swift_continuation_init();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
    v0[34] = v6;
    v0[25] = v6;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21CA92000;
    v0[21] = &block_descriptor_10_0;
    v0[22] = v5;
    [v3 safari:v4 setAppleOTPAuthURLHandlerToApplicationWithBundleIdentifier:v0 + 18 completionHandler:?];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CAA3688()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_21CAA3AA4;
  }

  else
  {
    v5 = sub_21CAA37B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CAA37B8()
{
  v1 = *(v0 + 264);

  v2 = [*(v0 + 248) defaultWorkspace];
  *(v0 + 288) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 272);
    v5 = sub_21CB85584();
    *(v0 + 296) = v5;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 312;
    *(v0 + 88) = sub_21CAA3908;
    v6 = swift_continuation_init();
    *(v0 + 200) = v4;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_21CA92000;
    *(v0 + 168) = &block_descriptor_13;
    *(v0 + 176) = v6;
    [v3 safari:v5 setAppleOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:v0 + 144 completionHandler:?];
    v2 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CAA3908()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_21CAA3D24;
  }

  else
  {
    v5 = sub_21CAA3A38;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CAA3A38()
{
  v1 = v0[36];
  v2 = v0[37];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CAA3AA4(uint64_t a1)
{
  v20 = v1;
  v2 = *(v1 + 256);
  v3 = *(v1 + 264);
  swift_willThrow();

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v4 = sub_21CB81C84();
  __swift_project_value_buffer(v4, qword_27CE186E0);

  v5 = sub_21CB81C64();
  v6 = sub_21CB85AF4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 280);
  if (v7)
  {
    v10 = *(v1 + 208);
    v9 = *(v1 + 216);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_21C98E004(v10, v9, &v19);
    _os_log_impl(&dword_21C6E5000, v5, v6, "Failed to set default apple-otpauth URL handler to %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x21CF16D90](v12, -1, -1);
    MEMORY[0x21CF16D90](v11, -1, -1);
  }

  v13 = [*(v1 + 248) defaultWorkspace];
  *(v1 + 288) = v13;
  if (v13)
  {
    v14 = v13;
    v15 = *(v1 + 272);
    v16 = sub_21CB85584();
    *(v1 + 296) = v16;
    *(v1 + 80) = v1;
    *(v1 + 120) = v1 + 312;
    *(v1 + 88) = sub_21CAA3908;
    v17 = swift_continuation_init();
    *(v1 + 200) = v15;
    *(v1 + 144) = MEMORY[0x277D85DD0];
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_21CA92000;
    *(v1 + 168) = &block_descriptor_13;
    *(v1 + 176) = v17;
    [v14 safari:v16 setAppleOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:v1 + 144 completionHandler:?];
    v13 = (v1 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v13);
}

uint64_t sub_21CAA3D24()
{
  v15 = v0;
  v1 = v0[37];
  v2 = v0[36];

  swift_willThrow();

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v3 = sub_21CB81C84();
  __swift_project_value_buffer(v3, qword_27CE186E0);

  v4 = sub_21CB81C64();
  v5 = sub_21CB85AF4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[38];
  if (v6)
  {
    v9 = v0[26];
    v8 = v0[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_21C98E004(v9, v8, &v14);
    _os_log_impl(&dword_21C6E5000, v4, v5, "Failed to set default apple-otpauth-migration URL handler to %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x21CF16D90](v11, -1, -1);
    MEMORY[0x21CF16D90](v10, -1, -1);
  }

  v12 = v0[1];

  return v12();
}

unint64_t sub_21CAA3ED0()
{
  result = qword_27CDF7208;
  if (!qword_27CDF7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7208);
  }

  return result;
}

unint64_t sub_21CAA3F3C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  if (result != v13 || result >= v13 + 112 * v12)
  {
    result = memmove(result, v13, 112 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_21CAA4014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = a6;
  v10 = a5;
  v7 = a3;
  v12 = a2;
  v22 = a7;
  v15 = *v8;
  v8 = (*v8 & 0xFFFFFFFFFFFFFF8);
  v9 = v8 + 4;
  v11 = &v8[a1 + 4];
  sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);
  result = swift_arrayDestroy();
  v17 = __OFSUB__(v7, v14);
  v14 = v7 - v14;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

  v10 = v15 >> 62;
  if (!(v15 >> 62))
  {
    result = v8[2];
    v18 = result - v12;
    if (!__OFSUB__(result, v12))
    {
      goto LABEL_6;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:
  result = sub_21CB85FA4();
  v18 = result - v12;
  if (__OFSUB__(result, v12))
  {
    goto LABEL_28;
  }

LABEL_6:
  v19 = (v11 + 8 * v7);
  v20 = &v9[v12];
  if (v19 != v20 || v19 >= &v20[8 * v18])
  {
    memmove(v19, v20, 8 * v18);
  }

  if (v10)
  {
    result = sub_21CB85FA4();
  }

  else
  {
    result = v8[2];
  }

  if (__OFADD__(result, v14))
  {
    goto LABEL_29;
  }

  v8[2] = result + v14;
LABEL_17:
  if (v7 < 1)
  {
    return result;
  }

  if (__OFSUB__(v22 >> 1, v13))
  {
    goto LABEL_30;
  }

  if ((v22 >> 1) - v13 != v7)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_21CAA41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_21CAA431C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAA4384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CAA43E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAA444C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAA44BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PMPasskeysLearnMoreView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB82934();
  v4 = sub_21CB83D04();
  v5 = sub_21CB83D24();
  sub_21CB83D24();
  result = sub_21CB83D24();
  if (result != v4)
  {
    result = sub_21CB83D24();
    v5 = result;
  }

  *a2 = v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21CAA45AC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB82934();
  v4 = sub_21CB83D04();
  v5 = sub_21CB83D24();
  sub_21CB83D24();
  result = sub_21CB83D24();
  if (result != v4)
  {
    result = sub_21CB83D24();
    v5 = result;
  }

  *a2 = v3;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_21CAA462C()
{
  result = qword_27CDF72A0;
  if (!qword_27CDF72A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF72A8, &qword_21CBC4858);
    sub_21CAA46B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF72A0);
  }

  return result;
}

unint64_t sub_21CAA46B8()
{
  result = qword_27CDF72B0;
  if (!qword_27CDF72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF72B0);
  }

  return result;
}

uint64_t sub_21CAA4724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CAA4814();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CAA4788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CAA4814();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CAA47EC(uint64_t a1)
{
  sub_21CAA4814();
  sub_21CB83B44();
  __break(1u);
}

unint64_t sub_21CAA4814()
{
  result = qword_27CDF72B8;
  if (!qword_27CDF72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF72B8);
  }

  return result;
}

id sub_21CAA4868()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBAA40]) init];
  v1 = [v0 navigationItem];
  sub_21C6E8F4C(0, &unk_27CDF86A0, 0x277D751E0);
  sub_21C6E8F4C(0, &qword_27CDF72C0, 0x277D750C8);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = v0;
  sub_21CB85E04();
  v4 = sub_21CB85B24();
  [v1 setRightBarButtonItem_];

  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  return v5;
}

uint64_t type metadata accessor for PMPasswordField(uint64_t a1)
{
  result = qword_27CDF72C8;
  if (!qword_27CDF72C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAA4A74(uint64_t a1)
{
  sub_21C722688(319, &qword_27CDEE4A0, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21CAA4C3C(319, &qword_27CDEB898, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_21CAA4C3C(319, &qword_27CDEBD40, sub_21CAA4CA0, type metadata accessor for PMDependency);
        if (v4 <= 0x3F)
        {
          sub_21C722688(319, &qword_27CDF72D8, &type metadata for PasswordGenerationStyle, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21C722688(319, &qword_27CDF3598, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21CAA4C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21CAA4CA0()
{
  result = qword_27CDEB9E8;
  if (!qword_27CDEB9E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEB9E8);
  }

  return result;
}

unint64_t sub_21CAA4CF0()
{
  result = qword_27CDF72E0;
  if (!qword_27CDF72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF72E0);
  }

  return result;
}

uint64_t sub_21CAA4D44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v32 = type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = *(v1 + 2);
  v13 = *(v1 + 3);
  v41 = *v1;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  v31 = v34;
  v29 = *(&v35 + 1);
  v30 = v35;
  sub_21CB81014();
  v14 = sub_21CB81004();
  v28 = v15;
  v16 = *(v6 + 8);
  v16(v11, v5);
  sub_21CB81014();
  sub_21CB81014();
  v17 = sub_21CB80FF4();
  v19 = v18;
  v16(v8, v5);
  v16(v11, v5);
  v21 = *(v2 + 5);
  v20 = *(v2 + 6);
  v22 = *(v2 + 7);
  v23 = *(v2 + 8);
  v24 = *(v2 + 34);
  v34 = v31;
  *&v35 = v30;
  *(&v35 + 1) = v29;
  *&v36 = v14;
  *(&v36 + 1) = v28;
  *&v37 = v17;
  *(&v37 + 1) = v19;
  *&v38 = v21;
  *(&v38 + 1) = v20;
  *&v39 = v22;
  *(&v39 + 1) = v23;
  v40 = v24;

  *v4 = sub_21CB83034();
  v4[8] = 1;
  v25 = *(v32 + 24);
  *&v4[v25] = swift_getKeyPath(asc_21CBC4A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  sub_21C853458();
  sub_21CAA5114();
  sub_21CB844C4();
  sub_21CAA516C(v4);
  v45 = v38;
  v46 = v39;
  v47 = v40;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v44 = v37;
  return sub_21C8534AC(&v41);
}

unint64_t sub_21CAA5114()
{
  result = qword_27CDEB978;
  if (!qword_27CDEB978)
  {
    type metadata accessor for PMAdapativeStackLabeledContentStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB978);
  }

  return result;
}

uint64_t sub_21CAA516C(uint64_t a1)
{
  v2 = type metadata accessor for PMAdapativeStackLabeledContentStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21CAA51C8(_BYTE *a2@<X8>)
{

  sub_21CB81E94();

  *a2 = v3;
}

double sub_21CAA5220(char *a1, uint64_t a2)
{

  sub_21CB81EA4();

  return result;
}

double PMDebugSettingsControls.init()@<D0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBC4A70);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7253C8(KeyPath, v7);

  type metadata accessor for PMDebugSettingsManager(0);
  sub_21CAA9E84(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager, &protocol conformance descriptor for PMDebugSettingsManager);
  v3 = sub_21CB82674();
  v5 = v4;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = swift_getKeyPath(byte_21CBC4A90);
  sub_21CB84D44();
  *(a1 + 24) = v7;
  *(a1 + 32) = *(&v7 + 1);
  sub_21CB84D44();
  result = *&v7;
  *(a1 + 40) = v7;
  *(a1 + 56) = v8;
  return result;
}

uint64_t PMDebugSettingsControls.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF72E8, &unk_21CBC4AB0);
  v78 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = &v71 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF72F0, &qword_21CBCA670);
  v110 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v71 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF72F8, &qword_21CBC4AC0);
  v109 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v85 = &v71 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7300, &qword_21CBC4AC8);
  v108 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v71 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7308, &unk_21CBC4AD0);
  v107 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v91 = &v71 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v86 = *(v76 - 1);
  MEMORY[0x28223BE20](v76);
  v75 = &v71 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7310, &unk_21CBC4AE0);
  v106 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v89 = &v71 - v21;
  v74 = sub_21CB82444();
  v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v25 = &v71 - v24;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7318, &qword_21CBC4AF0);
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v87 = &v71 - v28;
  v29 = v2[1];
  v112 = *v2;
  v113 = v29;
  v30 = v2[3];
  v114 = v2[2];
  v115 = v30;
  sub_21CB83134();
  v31 = v112;
  v32 = type metadata accessor for PMDebugSettingsManager(0);
  v33 = sub_21CAA9E84(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager, &protocol conformance descriptor for PMDebugSettingsManager);
  v81 = (v31 >> 64);
  v82 = v31;
  v79 = v32;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBC4AF8);
  v80 = v33;
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB82424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF1C8, &qword_21CBC4B20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  v35 = sub_21CB82574();
  *(inited + 32) = v35;
  v36 = sub_21CB82554();
  *(inited + 40) = v36;
  sub_21CB82594();
  sub_21CB82594();
  if (sub_21CB82594() != v35)
  {
    sub_21CB82594();
  }

  sub_21CB82594();
  if (sub_21CB82594() != v36)
  {
    sub_21CB82594();
  }

  sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690, MEMORY[0x277CDF068]);
  v37 = v72;
  sub_21CB84324();
  (*(v73 + 8))(v23, v74);
  (*(v71 + 8))(v25, v37);
  sub_21CB83134();
  v38 = swift_allocObject();
  v39 = v113;
  v38[1] = v112;
  v38[2] = v39;
  v40 = v115;
  v38[3] = v114;
  v38[4] = v40;
  sub_21CAA9AB0(&v112, &v111);
  v41 = v75;
  sub_21CB84DD4();
  sub_21CB82684();
  swift_getKeyPath(asc_21CBC4B28);
  sub_21CB82694();

  type metadata accessor for PMWebsiteNameFetchingDebuggerView(0);
  v73 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CAA9E84(&qword_27CDF7320, type metadata accessor for PMWebsiteNameFetchingDebuggerView, &protocol conformance descriptor for PMWebsiteNameFetchingDebuggerView);
  v42 = v76;
  sub_21CB847B4();

  v43 = *(v86 + 8);
  v86 += 8;
  v74 = v43;
  v44 = (v43)(v41, v42);
  MEMORY[0x28223BE20](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7328, &qword_21CBC4B50);
  v45 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDF7330, &qword_27CDF7328, &qword_21CBC4B50, MEMORY[0x277CE14C0]);
  v46 = sub_21CB85054();
  MEMORY[0x28223BE20](v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7338, &unk_21CBC4B58);
  sub_21C6EADEC(&qword_27CDF7340, &qword_27CDF7338, &unk_21CBC4B58, v45);
  sub_21CB85054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
  sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, v45);
  v47 = v85;
  v48 = sub_21CB85054();
  MEMORY[0x28223BE20](v48);
  sub_21CB85054();
  sub_21CB83134();
  v49 = swift_allocObject();
  v50 = v113;
  v49[1] = v112;
  v49[2] = v50;
  v51 = v115;
  v49[3] = v114;
  v49[4] = v51;
  sub_21CAA9AB0(&v112, &v111);
  sub_21CB84DD4();
  sub_21CB82684();
  swift_getKeyPath(asc_21CBC4B68);
  sub_21CB82694();

  type metadata accessor for PMPasswordOptionsView(0);
  sub_21CAA9E84(&qword_27CDED570, type metadata accessor for PMPasswordOptionsView, &unk_21CBC6310);
  sub_21CB847B4();

  (v74)(v41, v42);
  v75 = *(v84 + 16);
  v52 = v83;
  (v75)(v83, v87, v88);
  v86 = *(v106 + 16);
  (v86)(v90, v89, v92);
  v82 = *(v107 + 16);
  v82(v94, v91, v95);
  v81 = *(v108 + 16);
  v81(v96, v93, v98);
  v80 = *(v109 + 16);
  v80(v99, v47, v101);
  v79 = *(v110 + 16);
  v79(v102, v97, v103);
  v53 = v78;
  v76 = *(v78 + 16);
  (v76)(v104, v100, v105);
  v54 = v77;
  (v75)(v77, v52, v88);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7348, &qword_21CBC4B90);
  (v86)(v54 + v55[12], v90, v92);
  v82((v54 + v55[16]), v94, v95);
  v56 = v98;
  v81((v54 + v55[20]), v96, v98);
  v57 = v101;
  v80((v54 + v55[24]), v99, v101);
  v58 = v103;
  v79((v54 + v55[28]), v102, v103);
  v59 = v54 + v55[32];
  v60 = v105;
  (v76)(v59, v104, v105);
  v86 = *(v53 + 8);
  (v86)(v100, v60);
  v61 = *(v110 + 8);
  v110 += 8;
  v100 = v61;
  (v61)(v97, v58);
  v62 = *(v109 + 8);
  v109 += 8;
  v62(v85, v57);
  v63 = *(v108 + 8);
  v108 += 8;
  v63(v93, v56);
  v64 = *(v107 + 8);
  v107 += 8;
  v65 = v95;
  v64(v91, v95);
  v66 = *(v106 + 8);
  v106 += 8;
  v67 = v92;
  v66(v89, v92);
  v68 = *(v84 + 8);
  v69 = v88;
  v68(v87, v88);
  (v86)(v104, v105);
  (v100)(v102, v103);
  v62(v99, v101);
  v63(v96, v98);
  v64(v94, v65);
  v66(v90, v67);
  return (v68)(v83, v69);
}

double sub_21CAA6840@<D0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath(byte_21CBC4E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for PMWebsiteNameFetchingDebuggerView(0);
  v3 = v2[5];
  *(a1 + v3) = sub_21CB81E64();
  v4 = a1 + v2[6];
  sub_21CB84D44();
  *v4 = v7;
  *(v4 + 1) = *(&v7 + 1);
  v5 = a1 + v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  result = *&v7;
  *v5 = v7;
  *(v5 + 2) = v8;
  return result;
}

uint64_t sub_21CAA6950@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7388, &qword_21CBC4D50);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v60 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = v58 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v80 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = v58 - v8;
  MEMORY[0x28223BE20](v9);
  v63 = v58 - v10;
  MEMORY[0x28223BE20](v11);
  v74 = v58 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  v69 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = v58 - v15;
  MEMORY[0x28223BE20](v16);
  v77 = v58 - v17;
  MEMORY[0x28223BE20](v18);
  v64 = v58 - v19;
  MEMORY[0x28223BE20](v20);
  v73 = v58 - v21;
  MEMORY[0x28223BE20](v22);
  v75 = v58 - v23;
  MEMORY[0x28223BE20](v24);
  v76 = v58 - v25;
  MEMORY[0x28223BE20](v26);
  v65 = v58 - v27;
  v58[2] = sub_21CB83134();
  v59 = a1;
  v28 = *a1;
  v62 = a1[1];
  v29 = type metadata accessor for PMDebugSettingsManager(0);
  sub_21CAA9E84(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager, &protocol conformance descriptor for PMDebugSettingsManager);
  v58[1] = v29;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBC4D58);
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB83134();
  sub_21CB82684();
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB83134();
  v58[3] = v28;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBC4DA8);
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB83134();
  sub_21CB82684();
  swift_getKeyPath(byte_21CBC4DD0);
  sub_21CB82694();

  sub_21CB84EB4();
  sub_21CB83134();
  v30 = swift_allocObject();
  v31 = v59;
  v32 = v59[1];
  v30[1] = *v59;
  v30[2] = v32;
  v33 = v31[3];
  v30[3] = v31[2];
  v30[4] = v33;
  sub_21CAA9AB0(v31, &v85);
  sub_21CB84DD4();
  sub_21CB83134();
  v34 = swift_allocObject();
  v35 = v31[1];
  v34[1] = *v31;
  v34[2] = v35;
  v36 = v31[3];
  v34[3] = v31[2];
  v34[4] = v36;
  sub_21CAA9AB0(v31, &v85);
  v37 = v63;
  sub_21CB84DD4();
  sub_21CB83134();
  sub_21CB82684();
  swift_getKeyPath(aP_95);
  sub_21CB82694();

  v82 = v85;
  v83 = v86;
  v84 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB128, &qword_21CBC4E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7390, &qword_21CBC4E28);
  sub_21CAA9D84();
  sub_21C6EADEC(&qword_27CDF73A8, &qword_27CDF7390, &qword_21CBC4E28, MEMORY[0x277CE14C0]);
  v38 = v66;
  sub_21CB84E54();
  v39 = *(v69 + 16);
  v40 = v64;
  v41 = v79;
  v39(v64, v65, v79);
  v39(v77, v76, v41);
  v39(v81, v75, v41);
  v39(v78, v73, v41);
  v42 = *(v70 + 16);
  v43 = v67;
  v44 = v68;
  v42(v67, v74, v68);
  v42(v80, v37, v44);
  v62 = *(v72 + 16);
  v45 = v60;
  v62(v60, v38, v71);
  v46 = v61;
  v47 = v40;
  v48 = v79;
  v39(v61, v47, v79);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73B0, &qword_21CBC4E30);
  v39(&v46[v49[12]], v77, v48);
  v39(&v46[v49[16]], v81, v48);
  v39(&v46[v49[20]], v78, v48);
  v50 = v68;
  v42(&v46[v49[24]], v43, v68);
  v51 = v50;
  v42(&v46[v49[28]], v80, v50);
  v52 = v71;
  v62(&v46[v49[32]], v45, v71);
  v53 = *(v72 + 8);
  v53(v66, v52);
  v54 = *(v70 + 8);
  v54(v63, v51);
  v54(v74, v51);
  v55 = *(v69 + 8);
  v56 = v79;
  v55(v73, v79);
  v55(v75, v56);
  v55(v76, v56);
  v55(v65, v56);
  v53(v45, v52);
  v54(v80, v51);
  v54(v67, v51);
  v55(v78, v56);
  v55(v81, v56);
  v55(v77, v56);
  return (v55)(v64, v56);
}

void sub_21CAA75B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v2 = sub_21C710778(v1, v3);

  [v2 removeObjectForKey_];
}

uint64_t sub_21CAA765C@<X0>(char *a1@<X8>)
{
  v72 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73B8, &qword_21CBC4E38);
  v64 = *(v69 - 8);
  v1 = v64;
  MEMORY[0x28223BE20](v69);
  v77 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = &v61 - v4;
  MEMORY[0x28223BE20](v5);
  v76 = &v61 - v6;
  MEMORY[0x28223BE20](v7);
  v70 = &v61 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73C0, &qword_21CBC4E40);
  v68 = *(v75 - 8);
  v21 = v68;
  MEMORY[0x28223BE20](v75);
  v74 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  sub_21CB83134();
  *v25 = sub_21CB84034();
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  *(v25 + 3) = v28;
  *(v25 + 4) = 0;
  *(v25 + 20) = 257;
  v67 = v25;
  sub_21CB83134();
  *v20 = sub_21CB84034();
  *(v20 + 1) = v29;
  v20[16] = v30 & 1;
  *(v20 + 3) = v31;
  *(v20 + 4) = 0;
  v20[40] = 1;
  v66 = v20;
  sub_21CB83134();
  *v17 = sub_21CB84034();
  *(v17 + 1) = v32;
  v17[16] = v33 & 1;
  *(v17 + 3) = v34;
  *(v17 + 4) = 1;
  v17[40] = 1;
  v65 = v17;
  sub_21CB83134();
  *v14 = sub_21CB84034();
  *(v14 + 1) = v35;
  v14[16] = v36 & 1;
  *(v14 + 3) = v37;
  *(v14 + 4) = 3;
  v14[40] = 1;
  v63 = v14;
  sub_21CB83134();
  v38 = sub_21CB84034();
  v73 = v11;
  *v11 = v38;
  *(v11 + 1) = v39;
  v11[16] = v40 & 1;
  *(v11 + 3) = v41;
  *(v11 + 4) = 2;
  v11[40] = 1;
  v62 = *(v21 + 16);
  v42 = v74;
  v43 = v25;
  v44 = v75;
  v62(v74, v43, v75);
  v45 = *(v1 + 16);
  v46 = v70;
  v47 = v20;
  v48 = v69;
  v45(v70, v47, v69);
  v49 = v76;
  v45(v76, v17, v48);
  v50 = v71;
  v51 = v14;
  v52 = v48;
  v45(v71, v51, v48);
  v45(v77, v73, v48);
  v53 = v72;
  v62(v72, v42, v44);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73C8, &qword_21CBC4E48);
  v45(&v53[v54[12]], v46, v52);
  v45(&v53[v54[16]], v49, v52);
  v55 = v50;
  v45(&v53[v54[20]], v50, v52);
  v56 = v77;
  v45(&v53[v54[24]], v77, v52);
  v57 = *(v64 + 8);
  v57(v73, v52);
  v57(v63, v52);
  v57(v65, v52);
  v57(v66, v52);
  v58 = *(v68 + 8);
  v59 = v75;
  v58(v67, v75);
  v57(v56, v52);
  v57(v55, v52);
  v57(v76, v52);
  v57(v46, v52);
  return (v58)(v74, v59);
}

uint64_t sub_21CAA7CD8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7360, &qword_21CBC4CC0);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = (&v32 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7368, &qword_21CBC4CC8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = sub_21CB83134();
  v35 = v16;
  v36 = v15;
  v34 = a1;
  type metadata accessor for PMDebugSettingsManager(0);
  sub_21CAA9E84(&qword_27CDEAE00, type metadata accessor for PMDebugSettingsManager, &protocol conformance descriptor for PMDebugSettingsManager);
  sub_21CB82684();
  swift_getKeyPath(aH_101);
  sub_21CB82694();
  v17 = v9;

  sub_21CB84EB4();

  sub_21CB81E94();

  v18 = 1;
  if (v43 == 1)
  {
    v19 = sub_21CB832F4();
    v20 = v33;
    *v33 = v19;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7378, &qword_21CBC4D00);
    sub_21CAA8130(v34, v20 + *(v21 + 44));
    sub_21CAA9C20(v20, v17);
    v18 = 0;
  }

  v22 = v17;
  (*(v39 + 56))(v17, v18, 1, v40);
  v23 = v10;
  v24 = *(v10 + 16);
  v25 = v37;
  v26 = v38;
  v24(v38, v14, v37);
  v27 = v41;
  sub_21C6EDBAC(v22, v41, &qword_27CDF7368, &qword_21CBC4CC8);
  v28 = v42;
  v24(v42, v26, v25);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7370, &qword_21CBC4CF8);
  sub_21C6EDBAC(v27, &v28[*(v29 + 48)], &qword_27CDF7368, &qword_21CBC4CC8);
  sub_21C6EA794(v22, &qword_27CDF7368, &qword_21CBC4CC8);
  v30 = *(v23 + 8);
  v30(v14, v25);
  sub_21C6EA794(v27, &qword_27CDF7368, &qword_21CBC4CC8);
  return (v30)(v26, v25);
}

uint64_t sub_21CAA8130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  sub_21CB83134();
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v11 = *(a1 + 48);
  v9[3] = *(a1 + 32);
  v9[4] = v11;
  sub_21CAA9AB0(a1, &v41);
  sub_21CB84DD4();
  v43 = *(a1 + 24);
  v41 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v12 = v40;
  KeyPath = swift_getKeyPath(a8_37);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = &v8[*(v4 + 44)];
  *v15 = KeyPath;
  v15[1] = sub_21C735744;
  v15[2] = v14;
  v41 = v43;
  sub_21CB84D54();
  if (v40 == 1)
  {
    v41 = *(a1 + 40);
    v42 = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
    sub_21CB84D54();
    v41 = v40;
    sub_21C71F3FC();
    v16 = sub_21CB84054();
    v18 = v17;
    v20 = v19;
    sub_21CB83D64();
    v21 = sub_21CB84024();
    v23 = v22;
    v25 = v24;

    sub_21C74A72C(v16, v18, v20 & 1);

    sub_21CB84A84();
    v26 = sub_21CB83FB4();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_21C74A72C(v21, v23, v25 & 1);

    v33 = v30 & 1;
    sub_21C79B058(v26, v28, v30 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v32 = 0;
  }

  v34 = v39;
  sub_21C6EDBAC(v8, v39, &qword_27CDEDA98, &unk_21CBABCB0);
  v35 = v38;
  sub_21C6EDBAC(v34, v38, &qword_27CDEDA98, &unk_21CBABCB0);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7380, &qword_21CBC4D38) + 48));
  sub_21C8FECB4(v26, v28, v33, v32);
  sub_21C85CDBC(v26, v28, v33, v32);
  *v36 = v26;
  v36[1] = v28;
  v36[2] = v33;
  v36[3] = v32;
  sub_21C6EA794(v8, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C85CDBC(v26, v28, v33, v32);
  return sub_21C6EA794(v34, &qword_27CDEDA98, &unk_21CBABCB0);
}

double sub_21CAA850C(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_21CB858E4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21CB858B4();
  sub_21CAA9AB0(a1, v12);
  v6 = sub_21CB858A4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v9;
  v10 = a1[3];
  *(v7 + 64) = a1[2];
  *(v7 + 80) = v10;
  sub_21C98B308(0, 0, v4, &unk_21CBC4D48, v7);

  return result;
}

uint64_t sub_21CAA8644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_21CB858B4();
  v4[18] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[19] = v6;
  v4[20] = v5;

  return MEMORY[0x2822009F8](sub_21CAA86DC, v6, v5);
}

uint64_t sub_21CAA86DC()
{
  v1 = *(v0 + 136);
  *(v0 + 104) = *(v1 + 24);
  *(v0 + 200) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v2 = *(v1 + 40);
  *(v0 + 96) = *(v1 + 56);
  *(v0 + 80) = v2;
  *(v0 + 120) = 0x676E697472617453;
  *(v0 + 128) = 0xAB00000000A680E2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  sub_21CB84D64();
  sub_21C6E8F4C(0, &unk_27CDF7710, 0x277D49AA0);
  [objc_allocWithZone(MEMORY[0x277D49AA8]) initWithMetadataEntryClass_];
  sub_21CB81094();
  sub_21CB81084();
  swift_allocObject();
  sub_21CB81074();
  sub_21CB810B4();
  swift_allocObject();
  *(v0 + 168) = sub_21CB810A4();
  v3 = [objc_opt_self() sharedStore];
  v4 = [v3 savedAccounts];

  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v5 = sub_21CB85824();
  *(v0 + 176) = v5;

  v6 = swift_allocObject();
  *(v0 + 184) = v6;
  v7 = *(v1 + 48);
  v9 = *v1;
  v8 = *(v1 + 16);
  v6[3] = *(v1 + 32);
  v6[4] = v7;
  v6[1] = v9;
  v6[2] = v8;
  sub_21CAA9AB0(v1, v0 + 16);
  v12 = (*MEMORY[0x277D49908] + MEMORY[0x277D49908]);
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_21CAA89C4;

  return v12(v5, sub_21CAA9D48, v6);
}

uint64_t sub_21CAA89C4()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21CAA8B24, v3, v2);
}

uint64_t sub_21CAA8B24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CAA8B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21CB86094();

  MEMORY[0x21CF151F0](a1, a2);
  MEMORY[0x21CF151F0](8250, 0xE200000000000000);
  v9 = sub_21CB862F4();
  MEMORY[0x21CF151F0](v9);

  MEMORY[0x21CF151F0](543584032, 0xE400000000000000);
  v10 = sub_21CB862F4();
  MEMORY[0x21CF151F0](v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF4B8, &unk_21CBB7D90);
  result = sub_21CB84D64();
  if (a3 == a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    return sub_21CB84D64();
  }

  return result;
}

uint64_t sub_21CAA8D1C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_21CB83134();
  sub_21CB84DD4();
  sub_21CB83134();
  sub_21CB84DD4();
  v15 = *(v3 + 16);
  v15(v8, v14, v2);
  v15(v5, v11, v2);
  v15(a1, v8, v2);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v15(&a1[*(v16 + 48)], v5, v2);
  v17 = *(v3 + 8);
  v17(v11, v2);
  v17(v14, v2);
  v17(v5, v2);
  return (v17)(v8, v2);
}

void sub_21CAA8F9C()
{
  v0 = [objc_opt_self() sharedStore];
  [v0 debug_removeAll];
}

void sub_21CAA8FFC()
{
  v0 = [objc_opt_self() sharedStore];
  v1 = [v0 websiteNameProvider];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 debug_deleteAllPersistedData];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CAA90A4(_OWORD *a1)
{
  sub_21CB83134();
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_21CAA9AB0(a1, &v6);
  return sub_21CB84DD4();
}

uint64_t sub_21CAA9180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v15 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73F0, &qword_21CBC4F68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73E8, &qword_21CBC4F60);
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v12 - v7;
  sub_21CAA9ECC();
  sub_21CB83EF4();
  sub_21CB83134();
  v9 = sub_21C6EADEC(&qword_27CDF73F8, &qword_27CDF73F0, &qword_21CBC4F68, MEMORY[0x277CDE580]);
  sub_21CB842E4();

  (*(v3 + 8))(v5, v2);
  v16 = v13;
  type metadata accessor for PMPlatformRoleButton(0);
  v17 = v2;
  v18 = v9;
  swift_getOpaqueTypeConformance2();
  sub_21CAA9E84(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  v10 = v14;
  sub_21CB848A4();
  return (*(v6 + 8))(v8, v10);
}

double sub_21CAA9468@<D0>(_OWORD *a1@<X8>)
{
  PMDebugSettingsControls.init()(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_21CAA94A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a1;
  v3 = type metadata accessor for PMDebugSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMPlatformRoleButton(0);
  sub_21CB81EE4();
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_21CAA9F28(v19, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  result = sub_21CAA9F8C(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *a2 = v11;
  a2[1] = v13;
  v17 = (a2 + *(v10 + 24));
  *v17 = sub_21CAA9FF0;
  v17[1] = v15;
  return result;
}

uint64_t sub_21CAA9694(uint64_t a1)
{
  v15 = sub_21CB82F84();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_21CB823B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6EDBAC(a1, v7, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v12 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_21CB823A4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21CAA9910()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF73E0, &qword_21CBC4F58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF73E8, &qword_21CBC4F60);
  type metadata accessor for PMPlatformRoleButton(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF73F0, &qword_21CBC4F68);
  sub_21C6EADEC(&qword_27CDF73F8, &qword_27CDF73F0, &qword_21CBC4F68, MEMORY[0x277CDE580]);
  swift_getOpaqueTypeConformance2();
  sub_21CAA9E84(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
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

uint64_t sub_21CAA9B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21CAA9BA4(uint64_t result, int a2, int a3)
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

uint64_t sub_21CAA9C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7360, &qword_21CBC4CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAA9C98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21CAA8644(a1, v4, v5, v1 + 32);
}

unint64_t sub_21CAA9D84()
{
  result = qword_27CDF7398;
  if (!qword_27CDF7398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB128, &qword_21CBC4E20);
    sub_21CAA9E84(&qword_27CDF73A0, type metadata accessor for ASAccountManagerTipType, &unk_21CB9E818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7398);
  }

  return result;
}

uint64_t sub_21CAA9E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CAA9ECC()
{
  result = qword_27CDF7400;
  if (!qword_27CDF7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7400);
  }

  return result;
}

uint64_t sub_21CAA9F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMDebugSettingsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAA9F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMDebugSettingsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAA9FF0()
{
  v1 = *(type metadata accessor for PMDebugSettingsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CAA9694(v2);
}

uint64_t sub_21CAAA050()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_configuration) type];
  v2 = sub_21CB855C4();
  v4 = v3;
  if (v2 == sub_21CB855C4() && v4 == v5)
  {
    goto LABEL_18;
  }

  v7 = sub_21CB86344();

  if (v7)
  {
LABEL_6:

    goto LABEL_19;
  }

  v8 = sub_21CB855C4();
  v10 = v9;
  if (v8 == sub_21CB855C4() && v10 == v11)
  {
LABEL_18:
  }

  else
  {
    v13 = sub_21CB86344();

    if (v13)
    {
      goto LABEL_6;
    }

    v14 = sub_21CB855C4();
    v16 = v15;
    if (v14 == sub_21CB855C4() && v16 == v17)
    {
    }

    else
    {
      v19 = sub_21CB86344();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_19:
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    return 0;
  }

  v21 = [v20 password];
  v22 = sub_21CB855C4();

  return v22;
}

id sub_21CAAA294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMAccountPickerHistoryItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21CAAA320(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_configuration) identifier];
  v4 = sub_21CB855C4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_21CAAA3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v106 = sub_21CB82FD4();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB83C74();
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21CB83554();
  v92 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v89 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB83584();
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7);
  v93 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_21CB85114();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74B8, &qword_21CBC50E8);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v72 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7478, &qword_21CBC50C0);
  MEMORY[0x28223BE20](v82);
  v18 = &v72 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7470, &qword_21CBC50B8);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v72 - v19;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7460, &qword_21CBC50A8);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v72 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7458, &qword_21CBC50A0);
  v90 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = &v72 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7450, &qword_21CBC5098);
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v72 - v22;
  sub_21CB85094();
  swift_getKeyPath(asc_21CBC50F0);
  sub_21CB850B4();

  v23 = *(v14 + 8);
  v77 = v14 + 8;
  v73 = v23;
  v23(v16, v13);
  v108 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74C0, &qword_21CBC5118);
  sub_21C6EADEC(&qword_27CDF74C8, &qword_27CDF74C0, &qword_21CBC5118, MEMORY[0x277CE14C0]);
  sub_21CB83F14();
  v24 = sub_21CB85214();
  v26 = v25;
  v107 = a1;
  if (sub_21CAAC67C())
  {
    v27 = v72;
    sub_21CB83794();
    v28 = v75;
    v29 = v74;
    v30 = v27;
    v31 = v76;
    (*(v75 + 32))(v74, v30, v76);
    v32 = 0;
    v33 = v31;
    v34 = v28;
  }

  else
  {
    v32 = 1;
    v33 = v76;
    v34 = v75;
    v29 = v74;
  }

  (*(v34 + 56))(v29, v32, 1, v33);
  v35 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7490, &qword_21CBC50C8) + 36)];
  sub_21C716934(v29, v35, &qword_27CDF74B8, &qword_21CBC50E8);
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
  *v36 = v24;
  v36[1] = v26;
  KeyPath = swift_getKeyPath(byte_21CBC5120);
  v38 = v82;
  v39 = &v18[*(v82 + 36)];
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v41 = v79;
  v42 = v78;
  v43 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277CDF0D0], v80);
  sub_21CB84F74();
  (*(v41 + 8))(v42, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v44 - 8) + 56))(v39 + v40, 0, 1, v44);
  *v39 = KeyPath;
  sub_21CB85094();
  sub_21CB850B4();

  v73(v16, v13);
  v45 = v89;
  sub_21CB83544();
  v46 = v93;
  sub_21CB83534();
  (*(v92 + 8))(v45, v96);
  v47 = sub_21CAB0BD4();
  v48 = v81;
  sub_21CB84114();

  (*(v98 + 8))(v46, v99);
  sub_21C6EA794(v18, &qword_27CDF7478, &qword_21CBC50C0);
  v49 = v100;
  sub_21CB83C64();
  v111 = v38;
  v112 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v85;
  v52 = v84;
  sub_21CB846A4();
  (*(v101 + 8))(v49, v102);
  v53 = (*(v83 + 8))(v48, v52);
  MEMORY[0x28223BE20](v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7468, &qword_21CBC50B0);
  v111 = v52;
  v112 = OpaqueTypeConformance2;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF74A8, &unk_21CBC50D8);
  v57 = sub_21C6EADEC(&qword_27CDF74B0, &qword_27CDF74A8, &unk_21CBC50D8, MEMORY[0x277CDDF68]);
  v111 = v56;
  v112 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v87;
  v60 = v88;
  sub_21CB84894();
  (*(v86 + 8))(v51, v60);
  v109 = sub_21CAACDC4();
  v110 = v61;
  v111 = v60;
  v112 = v54;
  v113 = v55;
  v114 = v58;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_21C71F3FC();
  v64 = v91;
  v65 = v95;
  v66 = MEMORY[0x277D837D0];
  sub_21CB842F4();

  (*(v90 + 8))(v59, v65);
  v68 = v103;
  v67 = v104;
  v69 = v106;
  (*(v104 + 104))(v103, *MEMORY[0x277CDDDC0], v106);
  v111 = v65;
  v112 = v66;
  v113 = v62;
  v114 = v63;
  swift_getOpaqueTypeConformance2();
  v70 = v97;
  sub_21CB84684();
  (*(v67 + 8))(v68, v69);
  return (*(v94 + 8))(v64, v70);
}

uint64_t sub_21CAAB1D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74F8, &qword_21CBC5250);
  v47 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v4 = &v46 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7500, &qword_21CBC5258);
  v49 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v48 = &v46 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7508, L"J\aÁ");
  MEMORY[0x28223BE20](v53);
  v57 = &v46 - v6;
  v7 = type metadata accessor for PMExportAccountSelectionView(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7510, &qword_21CBC5268);
  v51 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7518, &qword_21CBC5270);
  MEMORY[0x28223BE20](v13 - 8);
  v55 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v46 - v16;
  v17 = sub_21CB81024();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21CAAC67C())
  {
    v52 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    sub_21CB81014();
    v52 = sub_21CB81004();
    v23 = v22;
    (*(v18 + 8))(v20, v17);
    v21 = v23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C728D50(v12);
  v24 = sub_21C8816E4(v12);

  v25 = sub_21C6EA794(v12, &qword_27CDEC390, &qword_21CBA40E0);
  if (v24)
  {
    sub_21CB85084();
    v26 = v62;
    swift_getKeyPath(byte_21CBC52B0);
    v62 = v26;
    sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810D4();

    v27 = *(v26 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedSections);

    v61 = v27;
    swift_getKeyPath(aP_96);
    sub_21CAB0EDC(a1, &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
    v28 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v29 = swift_allocObject();
    sub_21CAB1484(&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PMExportAccountSelectionView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE20, &qword_21CBAB0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7588, &unk_21CBC5300);
    sub_21C6EADEC(&qword_27CDEEE28, &qword_27CDEEE20, &qword_21CBAB0C0, MEMORY[0x277D83980]);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7560, &qword_21CBC5290);
    v31 = sub_21CAB1250();
    v62 = v30;
    v63 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v50;
    sub_21CB84FD4();
    v33 = v51;
    v34 = v56;
    (*(v51 + 16))(v57, v32, v56);
    swift_storeEnumTagMultiPayload();
    sub_21CAB1190();
    v35 = sub_21CAB1328(&qword_27CDF7550, &qword_27CDF74F8, &qword_21CBC5250);
    v62 = v58;
    v63 = v35;
    swift_getOpaqueTypeConformance2();
    v36 = v54;
    sub_21CB83494();
    (*(v33 + 8))(v32, v34);
  }

  else
  {
    MEMORY[0x28223BE20](v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7520, &qword_21CBC5278);
    sub_21CAB1054();
    sub_21CB85054();
    sub_21CB82334();
    v37 = sub_21CAB1328(&qword_27CDF7550, &qword_27CDF74F8, &qword_21CBC5250);
    v38 = v48;
    v39 = v58;
    sub_21CB84514();
    (*(v47 + 8))(v4, v39);
    v40 = v49;
    v41 = v59;
    (*(v49 + 16))(v57, v38, v59);
    swift_storeEnumTagMultiPayload();
    sub_21CAB1190();
    v62 = v39;
    v63 = v37;
    swift_getOpaqueTypeConformance2();
    v36 = v54;
    sub_21CB83494();
    (*(v40 + 8))(v38, v41);
  }

  v42 = v55;
  sub_21C6EDBAC(v36, v55, &qword_27CDF7518, &qword_21CBC5270);
  v43 = v60;
  *v60 = v52;
  v43[1] = v21;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7580, &qword_21CBC52A8);
  sub_21C6EDBAC(v42, v43 + *(v44 + 48), &qword_27CDF7518, &qword_21CBC5270);

  sub_21C6EA794(v36, &qword_27CDF7518, &qword_21CBC5270);
  sub_21C6EA794(v42, &qword_27CDF7518, &qword_21CBC5270);
}

uint64_t sub_21CAABB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEE30, &unk_21CBAB0C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7578, &unk_21CBC5298);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7560, &qword_21CBC5290);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = *a1;
  v33 = a2;
  v34 = v14;
  v35 = *(a1 + 8);
  v36 = v14;
  v37 = v35;
  v15 = v35;
  sub_21C71F3FC();
  swift_bridgeObjectRetain_n();
  v36 = sub_21CB84054();
  v37 = v16;
  v38 = v17 & 1;
  v39 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7520, &qword_21CBC5278);
  sub_21CAB1054();
  sub_21CB85034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v19 = v36;
  swift_getKeyPath(asc_21CBC5310);
  v36 = v19;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v20 = *(v19 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__sortOption);

  if ((v20 & 0xFE) == 2)
  {

LABEL_5:
    v27 = sub_21CB83004();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    goto LABEL_6;
  }

  if (!v15)
  {
    goto LABEL_5;
  }

  v36 = v14;
  v37 = v15;
  *v7 = sub_21CB84054();
  *(v7 + 1) = v21;
  v7[16] = v22 & 1;
  *(v7 + 3) = v23;
  v24 = *MEMORY[0x277CDDDD0];
  v25 = sub_21CB83004();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v7, v24, v25);
  (*(v26 + 56))(v7, 0, 1, v25);
LABEL_6:
  sub_21C716934(v7, &v13[*(v11 + 36)], &qword_27CDEEE30, &unk_21CBAB0C8);
  (*(v30 + 32))(v13, v10, v31);
  sub_21CB82334();
  sub_21CAB1250();
  sub_21CB84514();
  return sub_21C6EA794(v13, &qword_27CDF7560, &qword_21CBC5290);
}

uint64_t sub_21CAABF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v16[0] = a3;
  v5 = type metadata accessor for PMExportAccountSelectionView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7538, &qword_21CBC5280);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - v10;
  v16[1] = a2;
  sub_21CAB0EDC(a1, v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_21CAB1484(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PMExportAccountSelectionView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7548, &qword_21CBC5288);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF7540, &qword_27CDF7548, &qword_21CBC5288, MEMORY[0x277CE11A8]);
  sub_21CAB143C(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21CB84FF4();
  swift_getKeyPath(byte_21CBC5340);
  v14 = v16[0];
  sub_21CB84FC4();

  (*(v9 + 8))(v11, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7520, &qword_21CBC5278);
  *(v14 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21CAAC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for PMExportAccountSelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7538, &qword_21CBC5280);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v10 = v17;
  swift_getKeyPath(aP_97);
  v17 = v10;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v11 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v17 = v11;
  sub_21CAB0EDC(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_21CAB1484(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PMExportAccountSelectionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7548, &qword_21CBC5288);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF7540, &qword_27CDF7548, &qword_21CBC5288, MEMORY[0x277CE11A8]);
  sub_21CAB143C(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21CB84FF4();
  swift_getKeyPath(byte_21CBC5340);
  v14 = v16;
  sub_21CB84FC4();

  (*(v7 + 8))(v9, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7520, &qword_21CBC5278);
  *(v14 + *(result + 36)) = 0;
  return result;
}

BOOL sub_21CAAC67C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v0 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v1 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_21CB85084();
  swift_getKeyPath(aP_97);
  sub_21CB810D4();

  v3 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v4 = *(v3 + 16);

  return v4 == 0;
}

uint64_t sub_21CAAC7FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74A8, &unk_21CBC50D8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21CAAC920(&v6 - v2);
  v4 = sub_21C6EADEC(&qword_27CDF74B0, &qword_27CDF74A8, &unk_21CBC50D8, MEMORY[0x277CDDF68]);
  MEMORY[0x21CF131E0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21CAAC920@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74D0, &qword_21CBC5180);
  MEMORY[0x28223BE20](v31);
  v3 = &v24 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74D8, &qword_21CBC5188);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v28 = &v24 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v24 - v5;
  v7 = sub_21CB83604();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AC8, &qword_21CBBC160);
  v26 = *(v8 - 8);
  v9 = v26;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  sub_21CB835C4();
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBBE0, &unk_21CBC5190);
  sub_21C6EADEC(&qword_27CDEBBE8, &qword_27CDEBBE0, &unk_21CBC5190, MEMORY[0x277CDF028]);
  v25 = v11;
  sub_21CB82194();
  sub_21CB835D4();
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C844588();
  sub_21CB82194();
  sub_21CB835F4();
  v34 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74E0, &qword_21CBC51A0);
  sub_21C6EADEC(&qword_27CDF74E8, &qword_27CDF74E0, &qword_21CBC51A0, MEMORY[0x277CE14C0]);
  v12 = v28;
  sub_21CB82AA4();
  v13 = *(v31 + 48);
  v14 = *(v31 + 64);
  v15 = v11;
  v16 = v8;
  (*(v9 + 16))(v3, v15, v8);
  v17 = v27;
  v18 = v6;
  v19 = v6;
  v20 = v29;
  (*(v27 + 16))(&v3[v13], v18, v29);
  v21 = v30;
  v22 = v32;
  (*(v30 + 16))(&v3[v14], v12, v32);
  sub_21CB83394();
  (*(v21 + 8))(v12, v22);
  (*(v17 + 8))(v19, v20);
  return (*(v26 + 8))(v25, v16);
}

uint64_t sub_21CAACDC4()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v41 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v42 = v0;
  sub_21CB85084();
  v19 = v45;
  swift_getKeyPath(asc_21CBC50F0);
  v45 = v19;
  v43 = sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v20 = *(v19 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v21 = *(v20 + 16);

  if (v21)
  {
    v40 = v18;
    sub_21CB81014();
    v39 = v15;
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v38 = sub_21CB81034();
    v22 = *(v38 - 8);
    v37 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v23 = swift_allocObject();
    sub_21CB81014();
    v24 = v9;
    sub_21CB81014();
    sub_21CB81014();
    v25 = v41;
    sub_21CB81014();
    v26 = v37;
    sub_21CB80FE4();
    v27 = *(v2 + 8);
    v27(v25, v1);
    v27(v6, v1);
    v27(v24, v1);
    v27(v12, v1);
    swift_setDeallocating();
    (*(v22 + 8))(v23 + v26, v38);
    swift_deallocClassInstance();
    v28 = v40;
    sub_21CB81004();
    v27(v39, v1);
    v27(v28, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v30 = v45;
    swift_getKeyPath(asc_21CBC50F0);
    v45 = v30;
    sub_21CB810D4();

    v31 = *(v30 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    v32 = *(v31 + 16);

    v33 = MEMORY[0x277D83C10];
    *(v29 + 56) = MEMORY[0x277D83B88];
    *(v29 + 64) = v33;
    *(v29 + 32) = v32;
    v34 = sub_21CB85594();
  }

  else
  {
    sub_21CB81014();
    v34 = sub_21CB81004();
    (*(v2 + 8))(v18, v1);
  }

  return v34;
}

uint64_t sub_21CAAD360@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  *a3 = sub_21CB85214();
  a3[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7590, &unk_21CBC5368);
  return sub_21CAAD3C0(a1, a3 + *(v6 + 44));
}

uint64_t sub_21CAAD3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_21CB83274();
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_21CB83A34();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  MEMORY[0x28223BE20](v69);
  v10 = &v69 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7598, &qword_21CBC5378);
  MEMORY[0x28223BE20](v71);
  v12 = &v69 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75A0, &qword_21CBC5380);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75A8, &qword_21CBC5388);
  MEMORY[0x28223BE20](v14 - 8);
  v78 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75B0, &qword_21CBC5390);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v75 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v69 - v22;
  sub_21CB825F4();
  v24 = *(v19 + 44);
  v72 = v23;
  *&v23[v24] = 0;
  v70 = a1;
  sub_21CAB0EDC(a1, v8, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v25 = v88;
  *&v88 = v25;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v26 = *(v25 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v27 = *(v25 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v28 = sub_21CB837E4();
  v29 = MEMORY[0x277CE04E8];
  v30 = &v8[v6[7]];
  *(v30 + 3) = MEMORY[0x277CE04F8];
  *(v30 + 4) = v29;
  *v30 = v28;
  v31 = &v8[v6[9]];
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v88);

  type metadata accessor for PMGroupsStore(0);
  sub_21CAB143C(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v33 = sub_21CB82674();
  v35 = v34;

  *v31 = v33;
  v31[1] = v35;
  v36 = &v8[v6[10]];
  *v36 = swift_getKeyPath(byte_21CBC53B8);
  v36[8] = 0;
  v37 = &v8[v6[11]];
  *v37 = swift_getKeyPath(byte_21CBC53E0);
  v37[8] = 0;
  v38 = v6[12];
  *&v8[v38] = swift_getKeyPath(aH_102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v39 = v6[13];
  *&v8[v39] = swift_getKeyPath(a8_38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v40 = v6[14];
  *&v8[v40] = swift_getKeyPath(asc_21CBC5480);
  v41 = &v8[v6[5]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &v8[v6[6]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &v8[v6[8]];
  *v43 = v26;
  *(v43 + 1) = v27;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21CAB1484(v8, v10, type metadata accessor for PMAccountRow);
  v44 = &v10[*(v69 + 36)];
  v45 = v93;
  *(v44 + 4) = v92;
  *(v44 + 5) = v45;
  *(v44 + 6) = v94;
  v46 = v89;
  *v44 = v88;
  *(v44 + 1) = v46;
  v47 = v91;
  *(v44 + 2) = v90;
  *(v44 + 3) = v47;
  v48 = (v70 + *(type metadata accessor for PMAccount(0) + 28));
  v50 = *v48;
  v49 = v48[1];
  v51 = v48[2];
  v52 = v48[3];
  if (v49)
  {
    if ((v51 & 1) != 0 || (v53 = [v52 severity], v53 > 3))
    {
      LOBYTE(v54) = 2;
    }

    else
    {
      v54 = 0x2010002u >> (8 * v53);
    }
  }

  else
  {
    LOBYTE(v54) = 3;
  }

  *v12 = v50;
  *(v12 + 1) = v49;
  *(v12 + 2) = v51;
  *(v12 + 3) = v52;
  v12[32] = v54;
  *(v12 + 33) = 1;
  v55 = v71;
  sub_21C6EDBAC(v10, &v12[*(v71 + 48)], &qword_27CDEBC70, &qword_21CBAD0C0);
  v56 = *(v55 + 52);
  *&v12[v56] = swift_getKeyPath(byte_21CBC54A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  sub_21C7D33AC(v50, v49, v51, v52);
  sub_21C6EA794(v10, &qword_27CDEBC70, &qword_21CBAD0C0);
  v57 = v79;
  sub_21CB83A24();
  v58 = sub_21C6EADEC(&qword_27CDF75B8, &qword_27CDF7598, &qword_21CBC5378, &unk_21CBA4210);
  v59 = v73;
  sub_21CB844F4();
  (*(v80 + 8))(v57, v81);
  sub_21C6EA794(v12, &qword_27CDF7598, &qword_21CBC5378);
  v60 = v82;
  sub_21CB83254();
  v86 = v55;
  v87 = v58;
  swift_getOpaqueTypeConformance2();
  v61 = v77;
  v62 = v76;
  sub_21CB84594();
  (*(v83 + 8))(v60, v84);
  (*(v74 + 8))(v59, v62);
  v63 = v72;
  v64 = v75;
  sub_21C6EDBAC(v72, v75, &qword_27CDF75B0, &qword_21CBC5390);
  v65 = v78;
  sub_21C6EDBAC(v61, v78, &qword_27CDF75A8, &qword_21CBC5388);
  v66 = v85;
  sub_21C6EDBAC(v64, v85, &qword_27CDF75B0, &qword_21CBC5390);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75C0, &qword_21CBC54D8);
  sub_21C6EDBAC(v65, v66 + *(v67 + 48), &qword_27CDF75A8, &qword_21CBC5388);
  sub_21C6EA794(v61, &qword_27CDF75A8, &qword_21CBC5388);
  sub_21C6EA794(v63, &qword_27CDF75B0, &qword_21CBC5390);
  sub_21C6EA794(v65, &qword_27CDF75A8, &qword_21CBC5388);
  return sub_21C6EA794(v64, &qword_27CDF75B0, &qword_21CBC5390);
}

uint64_t sub_21CAADE68(uint64_t a1)
{
  v2 = type metadata accessor for PMExportAccountSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81F14();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81EF4();
  sub_21CAB0EDC(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_21CAB1484(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PMExportAccountSelectionView);
  return MEMORY[0x21CF148B0](v7, sub_21CAB0FC0, v9);
}

uint64_t sub_21CAADFE4(uint64_t a1)
{
  v16 = sub_21CB82F84();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21CB823B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMExportAccountSelectionView(0);
  sub_21C6EDBAC(a1 + *(v12 + 20), v7, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21CB823A4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21CAAE26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMExportAccountSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v23[0] = v11;
  v23[1] = v13;
  sub_21CAB0EDC(a1, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMExportAccountSelectionView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_21CAB1484(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMExportAccountSelectionView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v16 = v23[0];
  swift_getKeyPath(asc_21CBC50F0);
  v23[0] = v16;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v17 = *(v16 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v18 = *(v17 + 16);

  LOBYTE(v6) = v18 == 0;
  KeyPath = swift_getKeyPath(byte_21CBC51A8);
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v22 = (a2 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_21C87E800;
  v22[2] = v20;
  return result;
}

uint64_t sub_21CAAE5A4(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMExportAccountSelectionView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_21CB858E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21CAB0EDC(a1, v9, type metadata accessor for PMExportAccountSelectionView);
  sub_21CB858B4();
  v14 = sub_21CB858A4();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_21CAB1484(v9, v16 + v15, type metadata accessor for PMExportAccountSelectionView);
  sub_21C98B308(0, 0, v12, &unk_21CBC5218, v16);

  sub_21C95B2C8(v5);
  sub_21CB823A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CAAE840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_21CB80DD4();
  v4[6] = swift_task_alloc();
  sub_21CB81894();
  v4[7] = swift_task_alloc();
  v5 = sub_21CB818C4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for PMAccount.Storage(0);
  v4[12] = swift_task_alloc();
  v6 = sub_21CB818E4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = *(type metadata accessor for PMExportAccountSelectionView(0) - 8);
  v4[16] = v7;
  v4[17] = *(v7 + 64);
  v4[18] = swift_task_alloc();
  v8 = sub_21CB81444();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = type metadata accessor for PMAccount(0);
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_21CB80E34();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  sub_21CB858B4();
  v4[28] = sub_21CB858A4();
  v12 = sub_21CB85874();
  v4[29] = v12;
  v4[30] = v11;

  return MEMORY[0x2822009F8](sub_21CAAEB8C, v12, v11);
}

uint64_t sub_21CAAEB8C(uint64_t a1)
{
  v3 = v1[26];
  v2 = v1[27];
  v4 = v1[25];
  sub_21CB80E24();
  v1[31] = sub_21CB80DE4();
  v1[32] = v5;
  (*(v3 + 8))(v2, v4);
  v1[33] = [objc_opt_self() sharedStore];
  v1[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v6 = sub_21C8843A0();

  v20 = MEMORY[0x277D84F90];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v1[23];
    v9 = v1[24];
    v10 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v1[22] + 24);
    v12 = *(v8 + 72);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = v1[12];
      sub_21CAB0EDC(v10, v1[24], type metadata accessor for PMAccount);
      sub_21CAB0EDC(v9 + v11, v14, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = v1[24];
      if (EnumCaseMultiPayload == 1)
      {
        sub_21C7190C0(v1[12], type metadata accessor for PMAccount.Storage);
        sub_21C7190C0(v16, type metadata accessor for PMAccount);
      }

      else
      {
        v17 = sub_21C7190C0(v1[24], type metadata accessor for PMAccount);
        MEMORY[0x21CF15300](v17);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21CB85834();
        }

        sub_21CB85854();
        v13 = v20;
      }

      v10 += v12;
      --v7;
    }

    while (v7);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v1[35] = v13;
  v18 = swift_task_alloc();
  v1[36] = v18;
  *v18 = v1;
  v18[1] = sub_21CAAEE5C;

  return MEMORY[0x28210CE10](v13);
}

uint64_t sub_21CAAEE5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  *(*v1 + 296) = a1;

  v4 = *(v2 + 240);
  v5 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_21CAAEFC0, v5, v4);
}

uint64_t sub_21CAAEFC0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[5];
  sub_21C7A35D0(v0[31], v0[32]);
  sub_21CB81434();
  sub_21CB81904();
  sub_21CAB0EDC(v3, v1, type metadata accessor for PMExportAccountSelectionView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_21CAB1484(v1, v5 + v4, type metadata accessor for PMExportAccountSelectionView);
  v0[38] = sub_21CB818F4();
  v9 = (*MEMORY[0x277CBA858] + MEMORY[0x277CBA858]);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_21CAAF17C;
  v7 = v0[15];

  return v9(v7, 0, 0);
}

uint64_t sub_21CAAF17C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_21CAAF6F0;
  }

  else
  {
    v5 = sub_21CAAF2B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CAAF2B8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0158, &qword_21CBAE478);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  (*(v2 + 16))(v5 + v4, v1, v3);
  sub_21CB818D4();
  sub_21CB80DA4();
  sub_21CB818A4();
  v9 = (*MEMORY[0x277CBA860] + MEMORY[0x277CBA860]);
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_21CAAF450;
  v7 = v0[10];

  return v9(v7);
}

uint64_t sub_21CAAF450()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_21CAAF8E8;
  }

  else
  {
    v5 = sub_21CAAF58C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CAAF58C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[20];
  v12 = v0[19];
  v13 = v0[21];
  v4 = v0[14];
  v11 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];

  sub_21C7A34C0(v1, v2);
  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v11, v5);
  (*(v3 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21CAAF6F0()
{

  v1 = v0[40];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[20];
  v9 = v0[19];
  v10 = v0[21];
  sub_21CB85084();
  v5 = v0[3];
  swift_getKeyPath(byte_21CBC5220);
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[4] = v5;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810C4();
  sub_21C7A34C0(v3, v2);

  (*(v4 + 8))(v10, v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21CAAF8E8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[42];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[20];
  v15 = v0[19];
  v16 = v0[21];
  sub_21CB85084();
  v11 = v0[3];
  swift_getKeyPath(byte_21CBC5220);
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v7;
  v0[4] = v11;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810C4();
  sub_21C7A34C0(v9, v8);

  (*(v10 + 8))(v16, v15);

  v13 = v0[1];

  return v13();
}

id sub_21CAAFB20(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for PMExportAccountSelectionView(0) + 24);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = v7;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_21CB85B04();
    v9 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    v10 = sub_21CAB0D98(v7, 0);
    (*(v3 + 8))(v5, v2, v10);
    v7 = v15;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v11 = [v7 scene];

  if (v11)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v12 = [v7 keyWindow];

  return v12;
}

uint64_t sub_21CAAFCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for PMExportAccountSelectionView(0);
  v85 = *(v3 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v80 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v78 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v86);
  v82 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v81 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v77 = &v72 - v18;
  MEMORY[0x28223BE20](v19);
  v79 = &v72 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - v22;
  MEMORY[0x28223BE20](v24);
  v87 = &v72 - v25;
  sub_21CB81014();
  v26 = sub_21CB81004();
  v28 = v27;
  v29 = *(v7 + 8);
  v74 = v7 + 8;
  v75 = v6;
  v73 = v29;
  v29(v9, v6);
  v89 = v26;
  v90 = v28;
  sub_21CAB0EDC(a1, v5, type metadata accessor for PMExportAccountSelectionView);
  v30 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v76 = v4;
  v31 = swift_allocObject();
  sub_21CAB1484(v5, v31 + v30, type metadata accessor for PMExportAccountSelectionView);
  v72 = sub_21C71F3FC();
  sub_21CB84DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  v84 = a1;
  sub_21CB85084();
  v32 = v89;
  v89 = v32;
  v85 = sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v33 = *(v32 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v34 = *(v32 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = 1;
  }

  else
  {
    sub_21CB85084();
    v37 = v89;
    swift_getKeyPath(asc_21CBC50F0);
    v89 = v37;
    sub_21CB810D4();

    v38 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    v39 = *(v38 + 16);

    v36 = v39 == 0;
  }

  KeyPath = swift_getKeyPath(byte_21CBC51A8);
  v41 = swift_allocObject();
  *(v41 + 16) = v36;
  v80 = *(v80 + 32);
  (v80)(v23, v13, v88);
  v42 = v87;
  v43 = &v23[*(v86 + 36)];
  *v43 = KeyPath;
  v43[1] = sub_21C735744;
  v43[2] = v41;
  sub_21C716934(v23, v42, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21CB81014();
  v44 = sub_21CB81004();
  v46 = v45;
  v73(v9, v75);
  v89 = v44;
  v90 = v46;
  sub_21CAB0EDC(v84, v5, type metadata accessor for PMExportAccountSelectionView);
  v47 = swift_allocObject();
  sub_21CAB1484(v5, v47 + v30, type metadata accessor for PMExportAccountSelectionView);
  v48 = v78;
  sub_21CB84DE4();
  sub_21CB85084();
  v49 = v89;
  v89 = v49;
  sub_21CB810D4();

  v50 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v51 = *(v49 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v50 & 0xFFFFFFFFFFFFLL;
  }

  v53 = 1;
  if (!v52)
  {
    sub_21CB85084();
    v54 = v89;
    swift_getKeyPath(aP_97);
    v89 = v54;
    sub_21CB810D4();

    v55 = *(v54 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

    v56 = *(v55 + 16);

    sub_21CB85084();
    v57 = v89;
    swift_getKeyPath(asc_21CBC50F0);
    v89 = v57;
    sub_21CB810D4();

    v58 = *(v57 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

    v59 = *(v58 + 16);

    v53 = v56 == v59;
  }

  v60 = swift_getKeyPath(byte_21CBC51A8);
  v61 = swift_allocObject();
  *(v61 + 16) = v53;
  v62 = v77;
  (v80)(v77, v48, v88);
  v63 = (v62 + *(v86 + 36));
  *v63 = v60;
  v63[1] = sub_21C87E800;
  v63[2] = v61;
  v64 = v79;
  sub_21C716934(v62, v79, &qword_27CDEDA98, &unk_21CBABCB0);
  v65 = v87;
  v66 = v81;
  sub_21C6EDBAC(v87, v81, &qword_27CDEDA98, &unk_21CBABCB0);
  v67 = v82;
  sub_21C6EDBAC(v64, v82, &qword_27CDEDA98, &unk_21CBABCB0);
  v68 = v83;
  sub_21C6EDBAC(v66, v83, &qword_27CDEDA98, &unk_21CBABCB0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF74F0, &qword_21CBC51D8);
  v70 = v68 + *(v69 + 48);
  *v70 = 0;
  *(v70 + 8) = 1;
  sub_21C6EDBAC(v67, v68 + *(v69 + 64), &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v64, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v65, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v67, &qword_27CDEDA98, &unk_21CBABCB0);
  return sub_21C6EA794(v66, &qword_27CDEDA98, &unk_21CBABCB0);
}

double sub_21CAB067C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  sub_21C880484(MEMORY[0x277D84FA0]);

  return result;
}

double sub_21CAB06D8()
{
  v0 = type metadata accessor for PMAccount(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  sub_21CB85084();
  v4 = v19;
  sub_21CB85084();
  v5 = v19;
  swift_getKeyPath(aP_97);
  v19 = v5;
  sub_21CAB143C(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v6 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v7 = *(v6 + 16);
  if (v7)
  {
    v18 = v4;
    v19 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v7, 0);
    v8 = v19;
    v9 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    do
    {
      sub_21CAB0EDC(v9, v3, type metadata accessor for PMAccount);
      v12 = *v3;
      v11 = v3[1];

      sub_21C7190C0(v3, type metadata accessor for PMAccount);
      v19 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21C7B0C0C((v13 > 1), v14 + 1, 1);
        v8 = v19;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v16 = sub_21CB009AC(v8);

  sub_21C880484(v16);

  return result;
}

uint64_t sub_21CAB0970()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7448, &qword_21CBC5090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7450, &qword_21CBC5098);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7458, &qword_21CBC50A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7460, &qword_21CBC50A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7468, &qword_21CBC50B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7470, &qword_21CBC50B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7478, &qword_21CBC50C0);
  sub_21CAB0BD4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF74A8, &unk_21CBC50D8);
  sub_21C6EADEC(&qword_27CDF74B0, &qword_27CDF74A8, &unk_21CBC50D8, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

unint64_t sub_21CAB0BD4()
{
  result = qword_27CDF7480;
  if (!qword_27CDF7480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7478, &qword_21CBC50C0);
    sub_21CAB0C8C();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7480);
  }

  return result;
}

unint64_t sub_21CAB0C8C()
{
  result = qword_27CDF7488;
  if (!qword_27CDF7488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7490, &qword_21CBC50C8);
    sub_21C6EADEC(&qword_27CDF7498, &qword_27CDF74A0, &qword_21CBC50D0, MEMORY[0x277CDE5A0]);
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7488);
  }

  return result;
}

double sub_21CAB0D98(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_21CAB0DEC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMExportAccountSelectionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CAAE840(a1, v6, v7, v1 + v5);
}

uint64_t sub_21CAB0EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_21CAB0F44()
{
  v1 = *(type metadata accessor for PMExportAccountSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CAAFB20(v2);
}

uint64_t sub_21CAB0FD8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMExportAccountSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21CAB1054()
{
  result = qword_27CDF7528;
  if (!qword_27CDF7528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7520, &qword_21CBC5278);
    sub_21CAB10E0();
    sub_21CA1099C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7528);
  }

  return result;
}

unint64_t sub_21CAB10E0()
{
  result = qword_27CDF7530;
  if (!qword_27CDF7530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7538, &qword_21CBC5280);
    sub_21C6EADEC(&qword_27CDF7540, &qword_27CDF7548, &qword_21CBC5288, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7530);
  }

  return result;
}

unint64_t sub_21CAB1190()
{
  result = qword_27CDF7558;
  if (!qword_27CDF7558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7510, &qword_21CBC5268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7560, &qword_21CBC5290);
    sub_21CAB1250();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7558);
  }

  return result;
}

unint64_t sub_21CAB1250()
{
  result = qword_27CDF7568;
  if (!qword_27CDF7568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7560, &qword_21CBC5290);
    sub_21CAB1328(&qword_27CDF7570, &qword_27CDF7578, &unk_21CBC5298);
    sub_21C6EADEC(&qword_27CDEEE00, &qword_27CDEEE08, &qword_21CBAB040, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7568);
  }

  return result;
}

uint64_t sub_21CAB1328(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_21CAB1054();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CAB13AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMExportAccountSelectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CAABB54(a1, v6, a2);
}

uint64_t sub_21CAB143C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CAB1484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAB14EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PMExportAccountSelectionView(0);

  return sub_21CAAD360(a1, a2);
}

uint64_t sub_21CAB1570(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t PMPasswordManager.__allocating_init(accountStore:autoFillQuirksManager:)(void *a1, void *a2)
{
  swift_allocObject();
  sub_21C6EBF3C(a1, a2);
  v5 = v4;

  return v5;
}

uint64_t sub_21CAB1600(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = 0;
  for (i = (a5 + 56); ; i += 4)
  {
    v11 = *(i - 8);
    v12 = *i;
    v13 = *(i - 3) == a1 && *(i - 2) == a2;
    if (v13 || (sub_21CB86344()) && ((v11 ^ a3) & 1) == 0)
    {
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);

      v14 = v12;
      v15 = sub_21CB85DD4();

      if (v15)
      {
        break;
      }
    }

    if (v5 == ++v9)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_21CAB1704(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGeneratedPassword(0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = *a1;
  v11 = a1[1];
  v12 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v13 = *(v5 + 72);
  while (1)
  {
    sub_21CACA770(v12, v7, type metadata accessor for PMGeneratedPassword);
    v14 = *v7 == v10 && v7[1] == v11;
    if (v14 || (sub_21CB86344() & 1) != 0)
    {
      v15 = v7[2] == a1[2] && v7[3] == a1[3];
      if (v15 || (sub_21CB86344() & 1) != 0)
      {
        type metadata accessor for PMGeneratedPassword.ID(0);
        if (sub_21CB80D84() & 1) != 0 && (sub_21C993EFC(v7 + *(v4 + 20), a1 + *(v4 + 20)))
        {
          break;
        }
      }
    }

    sub_21C719840(v7, type metadata accessor for PMGeneratedPassword);
    ++v9;
    v12 += v13;
    if (v8 == v9)
    {
      return 0;
    }
  }

  sub_21C719840(v7, type metadata accessor for PMGeneratedPassword);
  return v9;
}

uint64_t sub_21CAB18DC(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t PMPasswordManager.init(accountStore:autoFillQuirksManager:)(void *a1, void *a2)
{
  sub_21C6EBF3C(a1, a2);
  v5 = v4;

  return v5;
}

uint64_t PMPasswordManager.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager;
  swift_beginAccess();
  [*(v0 + v1) prepareForTermination];

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts, &qword_27CDF75E8, &qword_21CBC5500);

  return v0;
}

uint64_t PMPasswordManager.__deallocating_deinit()
{
  PMPasswordManager.deinit();

  return swift_deallocClassInstance();
}

id sub_21CAB1B38(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v21 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v20 = sub_21CB85584();
  v6 = sub_21CB85584();
  v7 = sub_21CB85584();
  v8 = sub_21CB85584();
  v9 = sub_21CB85584();
  v10 = type metadata accessor for PMSaveAccountRequest(0);
  sub_21C6EDBAC(a1 + *(v10 + 36), v5, &unk_27CDF20B0, &unk_21CBA0090);
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
    v13 = 0;
  }

  else
  {
    sub_21CB85B64();
    (*(v12 + 8))(v5, v11);
    v13 = sub_21CB85584();
  }

  v22[0] = 0;
  v15 = v20;
  v14 = v21;
  v16 = [v21 canSaveUser:v20 password:v6 forUserTypedSite:v7 notes:v8 customTitle:v9 groupID:v13 error:v22];

  if (v16)
  {
    return v22[0];
  }

  v18 = v22[0];
  sub_21CB80B14();

  return swift_willThrow();
}

uint64_t sub_21CAB1DCC(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = type metadata accessor for PMSaveAccountRequest(0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  type metadata accessor for PMAccount.SIWAUniqueID(0);
  v2[25] = swift_task_alloc();
  type metadata accessor for PMAccount.CombinedUniqueID(0);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for PMAccount.UniqueID(0);
  v2[28] = swift_task_alloc();
  v2[29] = type metadata accessor for PMAccount.Storage(0);
  v2[30] = swift_task_alloc();
  v2[31] = type metadata accessor for PMAccount(0);
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v2[33] = swift_task_alloc();
  sub_21CB858B4();
  v2[34] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[35] = v4;
  v2[36] = v3;

  return MEMORY[0x2822009F8](sub_21CAB1FCC, v4, v3);
}

uint64_t sub_21CAB1FCC()
{
  v1 = v0[33];
  v2 = v0[21];
  v3 = v0[19];
  v4 = *(v0[20] + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v0[37] = v4;
  v17 = v4;
  v16 = sub_21CB85584();
  v0[38] = v16;
  v5 = sub_21CB85584();
  v0[39] = v5;
  v6 = sub_21CB85584();
  v0[40] = v6;
  v7 = sub_21CB85584();
  v0[41] = v7;
  v8 = sub_21CB85584();
  v0[42] = v8;
  sub_21C6EDBAC(v3 + *(v2 + 36), v1, &unk_27CDF20B0, &unk_21CBA0090);
  v9 = sub_21CB85C44();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v1, 1, v9);
  v12 = v0[33];
  if (v11 == 1)
  {
    sub_21C6EA794(v0[33], &unk_27CDF20B0, &unk_21CBA0090);
    v13 = 0;
  }

  else
  {
    sub_21CB85B64();
    (*(v10 + 8))(v12, v9);
    v13 = sub_21CB85584();
  }

  v0[43] = v13;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21CAB2270;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5480, &qword_21CBC5B40);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C82D1CC;
  v0[13] = &block_descriptor_240;
  v0[14] = v14;
  [v17 saveUser:v16 password:v5 forUserTypedSite:v6 customTitle:v7 notesEntry:v8 groupID:v13 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CAB2270()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);

  return MEMORY[0x2822009F8](sub_21CAB2378, v2, v1);
}

uint64_t sub_21CAB2378()
{
  v62 = v0;
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];

  v8 = v0[18];
  v9 = v8;

  if (v8)
  {
    v10 = v0[31];
    v11 = v0[32];
    v12 = v0[30];
    v13 = v0[28];
    *v12 = v9;
    swift_storeEnumTagMultiPayload();
    v14 = (v11 + v10[7]);
    *v14 = 0u;
    v14[1] = 0u;
    sub_21CACA770(v12, v11 + v10[6], type metadata accessor for PMAccount.Storage);
    v15 = v10[5];
    v16 = v9;
    sub_21C7C8A3C((v11 + v15));
    sub_21CACA770(v11 + v15, v13, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v0[28];
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v0[25];
      sub_21CAC9E84(v18, v19, type metadata accessor for PMAccount.SIWAUniqueID);
      v20 = sub_21C7CE99C();
      v22 = v21;
      v23 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v19 = v0[26];
      sub_21CAC9E84(v18, v19, type metadata accessor for PMAccount.CombinedUniqueID);
      v20 = sub_21C7CE408();
      v22 = v37;
      v23 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21C719840(v19, v23);
    v38 = v0[32];
    v39 = v0[20];
    sub_21C719840(v0[30], type metadata accessor for PMAccount.Storage);
    *v38 = v20;
    v38[1] = v22;

    sub_21C719840(v38, type metadata accessor for PMAccount);
    *(v39 + 24) = v20;
    *(v39 + 32) = v22;

    if (qword_27CDEA468 != -1)
    {
      swift_once();
    }

    v40 = v0[24];
    v41 = v0[19];
    v42 = sub_21CB81C84();
    __swift_project_value_buffer(v42, qword_27CE186C8);
    sub_21CACA770(v41, v40, type metadata accessor for PMSaveAccountRequest);
    v43 = v16;
    v44 = sub_21CB81C64();
    v45 = sub_21CB85AE4();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[24];
    if (v46)
    {
      v48 = v0[23];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = v51;
      *v49 = 138412546;
      *(v49 + 4) = v43;
      *v50 = v8;
      *(v49 + 12) = 2080;
      sub_21CACA770(v47, v48, type metadata accessor for PMSaveAccountRequest);
      v52 = v43;
      v53 = sub_21CB85624();
      v55 = v54;
      sub_21C719840(v47, type metadata accessor for PMSaveAccountRequest);
      v56 = sub_21C98E004(v53, v55, &v61);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_21C6E5000, v44, v45, "received saveAccount() -> %@ for %s", v49, 0x16u);
      sub_21C6EA794(v50, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v50, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x21CF16D90](v51, -1, -1);
      MEMORY[0x21CF16D90](v49, -1, -1);

      goto LABEL_16;
    }

    v57 = v47;
  }

  else
  {
    if (qword_27CDEA468 != -1)
    {
      swift_once();
    }

    v24 = v0[22];
    v25 = v0[19];
    v26 = sub_21CB81C84();
    __swift_project_value_buffer(v26, qword_27CE186C8);
    sub_21CACA770(v25, v24, type metadata accessor for PMSaveAccountRequest);
    v27 = sub_21CB81C64();
    v28 = sub_21CB85AF4();
    if (os_log_type_enabled(v27, v28))
    {
      v30 = v0[22];
      v29 = v0[23];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61 = v32;
      *v31 = 136315138;
      sub_21CACA770(v30, v29, type metadata accessor for PMSaveAccountRequest);
      v33 = sub_21CB85624();
      v35 = v34;
      sub_21C719840(v30, type metadata accessor for PMSaveAccountRequest);
      v36 = sub_21C98E004(v33, v35, &v61);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_21C6E5000, v27, v28, "Could not save account for %s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x21CF16D90](v32, -1, -1);
      MEMORY[0x21CF16D90](v31, -1, -1);

      goto LABEL_16;
    }

    v58 = v0[22];

    v57 = v58;
  }

  sub_21C719840(v57, type metadata accessor for PMSaveAccountRequest);
LABEL_16:

  v59 = v0[1];

  return v59();
}

id sub_21CAB29F4(void *a1)
{
  v3 = [a1 savedAccount];
  if (!v3)
  {
    return 0;
  }

  v4 = [*(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore) canChangeSavedAccountWithRequest_];
  if (qword_27CDEA468 != -1)
  {
    swift_once();
  }

  v5 = sub_21CB81C84();
  __swift_project_value_buffer(v5, qword_27CE186C8);
  v6 = a1;
  v7 = sub_21CB81C64();
  v8 = sub_21CB85AE4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v4;
    *(v9 + 8) = 2080;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_21CB855C4();
    v15 = v14;

    v16 = sub_21C98E004(v13, v15, &v18);

    *(v9 + 10) = v16;
    _os_log_impl(&dword_21C6E5000, v7, v8, "received canChangeSavedAccount() -> %{BOOL}d for %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x21CF16D90](v10, -1, -1);
    MEMORY[0x21CF16D90](v9, -1, -1);
  }

  return v4;
}

id sub_21CAB2BD8(void *a1)
{
  v2 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v54[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v63);
  v8 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v62);
  v65 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PMAccount(0);
  v64 = *(v10 - 1);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v54[-v14];
  if (qword_27CDEA468 != -1)
  {
    swift_once();
  }

  v16 = sub_21CB81C84();
  __swift_project_value_buffer(v16, qword_27CE186C8);
  v17 = a1;
  v18 = sub_21CB81C64();
  v19 = sub_21CB85AE4();
  v66 = v17;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v56 = v20;
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v20 = 136315138;
    v21 = v66;
    v58 = v10;
    v22 = v21;
    v23 = [v21 description];
    v55 = v19;
    v24 = v23;
    v25 = v18;
    v26 = sub_21CB855C4();
    v59 = v4;
    v28 = v27;

    v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v29 = sub_21C98E004(v26, v28, aBlock);
    v4 = v59;

    v30 = v56;
    *(v56 + 1) = v29;
    v10 = v58;
    v31 = v18;
    v32 = v30;
    _os_log_impl(&dword_21C6E5000, v31, v55, "received changeSavedAccount() for %s", v30, 0xCu);
    v33 = v57;
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x21CF16D90](v33, -1, -1);
    MEMORY[0x21CF16D90](v32, -1, -1);
  }

  else
  {
  }

  result = [v66 savedAccount];
  if (result)
  {
    v35 = v65;
    *v65 = result;
    v36 = result;
    swift_storeEnumTagMultiPayload();
    v37 = &v15[v10[7]];
    *v37 = 0u;
    *(v37 + 1) = 0u;
    sub_21CACA770(v35, &v15[v10[6]], type metadata accessor for PMAccount.Storage);
    v38 = v10[5];
    v39 = v36;
    sub_21C7C8A3C(&v15[v38]);
    sub_21CACA770(&v15[v38], v8, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CAC9E84(v8, v4, type metadata accessor for PMAccount.SIWAUniqueID);
      v40 = sub_21C7CE99C();
      v42 = v41;
      v43 = type metadata accessor for PMAccount.SIWAUniqueID;
      v44 = v4;
    }

    else
    {
      v45 = v60;
      sub_21CAC9E84(v8, v60, type metadata accessor for PMAccount.CombinedUniqueID);
      v40 = sub_21C7CE408();
      v42 = v46;
      v43 = type metadata accessor for PMAccount.CombinedUniqueID;
      v44 = v45;
    }

    sub_21C719840(v44, v43);
    sub_21C719840(v65, type metadata accessor for PMAccount.Storage);
    *v15 = v40;
    *(v15 + 1) = v42;
    v47 = v61;
    v48 = *(v61 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    sub_21CACA770(v15, v12, type metadata accessor for PMAccount);
    v49 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v39;
    *(v50 + 24) = v47;
    sub_21CAC9E84(v12, v50 + v49, type metadata accessor for PMAccount);
    aBlock[4] = sub_21CACA5F4;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_237;
    v51 = _Block_copy(aBlock);
    v52 = v39;
    v53 = v48;

    [v53 changeSavedAccountWithRequest:v66 completionHandler:v51];
    _Block_release(v51);

    return sub_21C719840(v15, type metadata accessor for PMAccount);
  }

  return result;
}

uint64_t sub_21CAB3238(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for PMAccount(0);
  v20 = (v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = a1;
  swift_storeEnumTagMultiPayload();
  v23 = &v22[v20[9]];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  sub_21CACA770(v18, &v22[v20[8]], type metadata accessor for PMAccount.Storage);
  v24 = v20[7];
  v25 = a1;
  sub_21C7C8A3C(&v22[v24]);
  sub_21CACA770(&v22[v24], v15, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAC9E84(v15, v9, type metadata accessor for PMAccount.SIWAUniqueID);
    v26 = sub_21C7CE99C();
    v28 = v27;
    v29 = type metadata accessor for PMAccount.SIWAUniqueID;
    v30 = v9;
  }

  else
  {
    sub_21CAC9E84(v15, v12, type metadata accessor for PMAccount.CombinedUniqueID);
    v26 = sub_21C7CE408();
    v28 = v31;
    v29 = type metadata accessor for PMAccount.CombinedUniqueID;
    v30 = v12;
  }

  sub_21C719840(v30, v29);
  sub_21C719840(v18, type metadata accessor for PMAccount.Storage);
  *v22 = v26;
  *(v22 + 1) = v28;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  v33 = *(v32 + 48);
  sub_21CACA770(v38, v6, type metadata accessor for PMAccount);
  sub_21CAC9E84(v22, &v6[v33], type metadata accessor for PMAccount);
  (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
  v34 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
  v35 = v39;
  swift_beginAccess();
  sub_21CAC9E14(v6, v35 + v34);
  return swift_endAccess();
}

id sub_21CAB3648()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21CAB369C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_21CAB3754(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_21CAB37B0()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_21CAB3804(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21CAB38BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21CB858B4();
  *(v4 + 24) = sub_21CB858A4();
  v6 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CAB3954, v6, v5);
}

uint64_t sub_21CAB3954()
{
  v1 = *(v0 + 16);

  if ((*(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) & 1) == 0)
  {
    sub_21C6EC92C();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_21CAB3AFC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v24 = a8;
  v25 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  *&v16 = MEMORY[0x28223BE20](v15 - 8).n128_u64[0];
  v18 = &v23 - v17;
  swift_getKeyPath(byte_21CBC5AA8, v16);
  sub_21CB81DB4();

  if (v26[0] != 1)
  {
    goto LABEL_12;
  }

  if (*(a1 + 32))
  {
    goto LABEL_12;
  }

  v19 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
  swift_beginAccess();
  sub_21C6EDBAC(a1 + v19, v18, &qword_27CDF75E8, &qword_21CBC5500);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  LODWORD(v19) = (*(*(v20 - 8) + 48))(v18, 1, v20);
  sub_21C6EA794(v18, &qword_27CDF75E8, &qword_21CBC5500);
  if (v19 != 1 || (sub_21C967788(a2, a6) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    v21 = v25;

    v22 = sub_21C967788(a3, v21);

    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v25)
  {
LABEL_12:
    sub_21CAB3D30(a2, a3, a4, a5);
    return;
  }

  if ((sub_21C967788(a4, v24) & 1) == 0 || (sub_21C967788(a5, a9) & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_21CAB3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  v68 = *(v15 - 8);
  v69 = v15;
  MEMORY[0x28223BE20](v15);
  v65 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v63 - v18;
  v19 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts;
  swift_beginAccess();
  *(v5 + v19) = a1;

  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v21 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts;
  swift_beginAccess();
  *(v5 + v21) = v20;

  *(v5 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithTOTPGenerators) = a4;

  *(v5 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker) = a3;

  sub_21CAB51FC();
  if (qword_27CDEA468 != -1)
  {
    swift_once();
  }

  v22 = sub_21CB81C84();
  __swift_project_value_buffer(v22, qword_27CE186C8);
  swift_retain_n();
  v23 = sub_21CB81C64();
  v24 = sub_21CB85AE4();
  v25 = &unk_21CBC5000;
  if (os_log_type_enabled(v23, v24))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v71[0] = v27;
    *v26 = 136446466;
    v63 = v10;
    v28 = sub_21CB86554();
    v30 = sub_21C98E004(v28, v29, v71);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2048;
    v31 = *(v5 + v19);
    if (v31 >> 62)
    {
      v32 = sub_21CB85FA4();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v67;

    *(v26 + 14) = v32;

    _os_log_impl(&dword_21C6E5000, v23, v24, "[%{public}s] reloaded saved accounts list with %ld accounts", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x21CF16D90](v27, -1, -1);
    MEMORY[0x21CF16D90](v26, -1, -1);

    v34 = v68;
    v25 = &unk_21CBC5000;
  }

  else
  {

    v33 = v67;
    v34 = v68;
  }

  sub_21CAB6DCC();
  swift_retain_n();
  v35 = sub_21CB81C64();
  v36 = sub_21CB85AE4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v71[0] = v38;
    *v37 = v25[159];
    v39 = sub_21CB86554();
    v41 = sub_21C98E004(v39, v40, v71);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2048;
    v42 = *(v5 + v21);
    if (v42 >> 62)
    {
      v43 = sub_21CB85FA4();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 14) = v43;

    _os_log_impl(&dword_21C6E5000, v35, v36, "[%{public}s] reloaded recently deleted saved accounts list with %ld accounts", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x21CF16D90](v38, -1, -1);
    MEMORY[0x21CF16D90](v37, -1, -1);
  }

  else
  {
  }

  v44 = v5[3];
  v45 = v5[4];
  v46 = v69;
  if (v45)
  {
    swift_getKeyPath(aP_98);
    swift_getKeyPath(aP_99);

    sub_21CB81DB4();

    v47 = sub_21C7A1394(v44, v45, v71[0]);

    if (v47)
    {
      v71[0] = v44;
      v71[1] = v45;

      sub_21CB81D04();

      v5[3] = 0;
      v5[4] = 0;
    }
  }

  v48 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
  swift_beginAccess();
  v49 = v66;
  sub_21C6EDBAC(v5 + v48, v66, &qword_27CDF75E8, &qword_21CBC5500);
  if ((*(v34 + 48))(v49, 1, v46) == 1)
  {
    v50 = &qword_27CDF75E8;
    v51 = &qword_21CBC5500;
    v52 = v49;
LABEL_25:
    sub_21C6EA794(v52, v50, v51);
    goto LABEL_26;
  }

  sub_21C716934(v49, v33, &unk_27CDF7650, &qword_21CBADD58);
  swift_getKeyPath(aP_98);
  swift_getKeyPath(aP_99);
  v53 = v33;
  sub_21CB81DB4();

  v54 = v46;
  v55 = v70;
  v56 = v65;
  sub_21C6EDBAC(v53, v65, &unk_27CDF7650, &qword_21CBADD58);
  v57 = (v56 + *(v54 + 48));
  v58 = *v57;
  v59 = v57[1];

  sub_21C719840(v57, type metadata accessor for PMAccount);
  LOBYTE(v57) = sub_21C7A1394(v58, v59, v55);

  sub_21C719840(v56, type metadata accessor for PMAccount);
  if ((v57 & 1) == 0)
  {
    v50 = &unk_27CDF7650;
    v51 = &qword_21CBADD58;
    v52 = v53;
    goto LABEL_25;
  }

  v60 = v69;
  v61 = *(v69 + 48);
  sub_21CACA770(v53, v56, type metadata accessor for PMAccount);
  sub_21CACA770(v53 + v61, v56 + v61, type metadata accessor for PMAccount);

  sub_21CB81D04();

  sub_21C6EA794(v56, &unk_27CDF7650, &qword_21CBADD58);
  sub_21C6EA794(v53, &unk_27CDF7650, &qword_21CBADD58);
  v62 = v64;
  (*(v68 + 56))(v64, 1, 1, v60);
  swift_beginAccess();
  sub_21CAC9E14(v62, v5 + v48);
  swift_endAccess();
LABEL_26:
  sub_21CAB4590();
}

void sub_21CAB4590()
{
  v1 = sub_21CB81C54();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  v6 = [*(v0 + v5) hasUnacknowledgedHighPriorityWarnings];
  swift_getKeyPath(byte_21CBC56A8);
  swift_getKeyPath(byte_21CBC56D0);
  LOBYTE(aBlock[0]) = v6;

  sub_21CB81DC4();
  sub_21CB85D34();
  if (qword_27CDEA458 != -1)
  {
    swift_once();
  }

  sub_21CB81C44();
  sub_21CB81C34();
  (*(v2 + 8))(v4, v1);
  v7 = *(v0 + v5);
  aBlock[4] = sub_21CACA2C8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CAB5158;
  aBlock[3] = &block_descriptor_210;
  v8 = _Block_copy(aBlock);
  v9 = v7;

  [v9 getAllWarningsForcingUpdate:1 completionHandler:v8];
  _Block_release(v8);
}

void *sub_21CAB47F0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_21CB81C54();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB853D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85404();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 && a1)
  {
    v38 = v14;
    v39 = v6;
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);

    v37 = sub_21CB85CF4();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a1;
    aBlock[4] = sub_21CACA2E8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_216;
    v18 = _Block_copy(aBlock);

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21C6EADA4(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EAE34(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    v19 = v37;
    MEMORY[0x21CF15800](0, v16, v11, v18);
    _Block_release(v18);

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v38);
    sub_21CB85D24();
    if (qword_27CDEA458 != -1)
    {
      swift_once();
    }

    v6 = v39;
    v20 = v40;
    v21 = v41;
LABEL_14:
    sub_21CB81C44();
    sub_21CB81C34();
    return (*(v21 + 8))(v20, v6);
  }

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v22 = sub_21CB81C84();
  __swift_project_value_buffer(v22, qword_27CE186E0);
  v23 = a2;
  v24 = sub_21CB81C64();
  v25 = sub_21CB85AE4();
  if (!os_log_type_enabled(v24, v25))
  {

LABEL_12:
    v21 = v41;
    sub_21CB85D24();
    v20 = v40;
    if (qword_27CDEA458 != -1)
    {
      swift_once();
    }

    goto LABEL_14;
  }

  v26 = v6;
  v27 = swift_slowAlloc();
  result = swift_slowAlloc();
  aBlock[0] = result;
  *v27 = 136315138;
  if (a2)
  {
    v29 = result;

    v30 = sub_21CB80B04();
    v31 = [v30 safari_privacyPreservingDescription];

    v32 = sub_21CB855C4();
    v34 = v33;

    v35 = sub_21C98E004(v32, v34, aBlock);

    *(v27 + 4) = v35;
    _os_log_impl(&dword_21C6E5000, v24, v25, "Error fetching password warnings: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x21CF16D90](v29, -1, -1);
    MEMORY[0x21CF16D90](v27, -1, -1);

    v6 = v26;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAB4DAC(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings;
  swift_beginAccess();
  *(a1 + v4) = a2;

  if (a2 >> 62)
  {
LABEL_29:
    v5 = sub_21CB85FA4();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_bridgeObjectRetain_n();
  v6 = 0;
  while (v5 != v6)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CF15BD0](v6, a2);
    }

    else
    {
      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = *(a2 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 severity];

    if (v9 == 2)
    {

      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_28;
    }
  }

  v11 = *(a1 + v4);
  if (v11 >> 62)
  {
    goto LABEL_33;
  }

  v6 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  while (1)
  {
    swift_beginAccess();
    v13 = *(a1 + v4);
    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      break;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v6)
    {
      goto LABEL_18;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_21CB85FA4();
    v6 = result;
    if (result < 0)
    {
      goto LABEL_34;
    }
  }

  result = sub_21CB85FA4();
  if (result < 0)
  {
    goto LABEL_35;
  }

  if (sub_21CB85FA4() < v6)
  {
    goto LABEL_32;
  }

LABEL_18:
  if ((v13 & 0xC000000000000001) != 0 && v6)
  {
    sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);

    v15 = 0;
    do
    {
      v16 = v15 + 1;
      sub_21CB860C4();
      v15 = v16;
    }

    while (v6 != v16);
    if (!v14)
    {
LABEL_23:
      v17 = 0;
      v18 = v13 & 0xFFFFFFFFFFFFFF8;
      v19 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = (2 * v6) | 1;
      goto LABEL_26;
    }
  }

  else
  {

    if (!v14)
    {
      goto LABEL_23;
    }
  }

  v18 = sub_21CB861F4();
LABEL_26:
  v21 = v18;
  v22 = v19;
  v23 = v17;
  v24 = v20;
  sub_21CAB5094(&v21);
  sub_21CACA3C8(v21, v22, v23, v24, 0, v6);
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_21CAB51FC();
  sub_21CAB7B90();
  swift_getKeyPath(byte_21CBC5AF0);
  swift_getKeyPath(byte_21CBC5B18);
  LOBYTE(v21) = 1;

  return sub_21CB81DC4();
}

char *sub_21CAB5094(char *result)
{
  v1 = *(result + 2);
  v2 = *(result + 3);
  v3 = (v2 >> 1) - v1;
  if (__OFSUB__(v2 >> 1, v1))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *result;
    if ((v2 & 1) != 0 && (isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull(), *v4 = v5, isUniquelyReferenced_nonNull))
    {
      v7 = v4[1];
    }

    else
    {
      sub_21CACA2F0(v4[1], v1, v2);
      v9 = v8;
      v7 = v10;
      v1 = v11;
      v13 = v12;
      swift_unknownObjectRelease();
      *v4 = v9;
      v4[1] = v7;
      v5 = v9;
      v4[2] = v1;
      v4[3] = v13;
    }

    v14[0] = v7 + 8 * v1;
    v14[1] = v3;
    result = sub_21CAC9098(v14);
    *v4 = v5;
  }

  return result;
}

uint64_t sub_21CAB5158(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);
    v4 = sub_21CB85824();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_21CAB51FC()
{
  v198 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v198);
  v197 = &v179 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v201 = &v179 - v6;
  v213 = sub_21CB85C44();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v181 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v210 = &v179 - v9;
  v10 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v208 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v12 - 8);
  v207 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for PMAccount(0);
  v218 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v15 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v209 = &v179 - v17;
  MEMORY[0x28223BE20](v18);
  v186 = &v179 - v19;
  MEMORY[0x28223BE20](v20);
  v203 = &v179 - v21;
  MEMORY[0x28223BE20](v22);
  v196 = &v179 - v23;
  MEMORY[0x28223BE20](v24);
  v217 = &v179 - v25;
  MEMORY[0x28223BE20](v26);
  v188 = (&v179 - v27);
  MEMORY[0x28223BE20](v28);
  isUniquelyReferenced_nonNull_native = &v179 - v29;
  v226 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v226);
  v219 = (&v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v195 = (&v179 - v33);
  MEMORY[0x28223BE20](v34);
  v194 = (&v179 - v35);
  MEMORY[0x28223BE20](v36);
  v200 = (&v179 - v37);
  MEMORY[0x28223BE20](v38);
  v187 = (&v179 - v39);
  MEMORY[0x28223BE20](v40);
  v216 = (&v179 - v41);
  MEMORY[0x28223BE20](v42);
  v223 = (&v179 - v43);
  v221 = type metadata accessor for PMAccount.UniqueID(0);
  v214 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v204 = &v179 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v182 = &v179 - v46;
  MEMORY[0x28223BE20](v47);
  v199 = &v179 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v179 - v50;
  MEMORY[0x28223BE20](v52);
  v224 = &v179 - v53;
  v54 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings;
  swift_beginAccess();
  v179 = v0;
  v55 = *(v0 + v54);

  v56 = sub_21CB12900(MEMORY[0x277D84F90]);
  if (v55 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21CB85FA4())
  {
    v202 = v4;
    v211 = v15;
    v225 = isUniquelyReferenced_nonNull_native;
    if (!i)
    {
      break;
    }

    v4 = 0;
    v220 = v55 & 0xC000000000000001;
    v215 = v55 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v220)
      {
        v61 = MEMORY[0x21CF15BD0](v4, v55);
      }

      else
      {
        if (v4 >= *(v215 + 16))
        {
          goto LABEL_96;
        }

        v61 = *(v55 + 8 * v4 + 32);
      }

      v62 = v61;
      v15 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v63 = [v61 savedAccount];
      v64 = v223;
      *v223 = v63;
      swift_storeEnumTagMultiPayload();
      v65 = v224;
      sub_21C7C8A3C(v224);
      sub_21C719840(v64, type metadata accessor for PMAccount.Storage);
      sub_21CACA770(v65, v51, type metadata accessor for PMAccount.UniqueID);
      v66 = v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v228 = v56;
      v68 = sub_21CB10BE4(v51);
      v69 = *(v56 + 16);
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_97;
      }

      v72 = v67;
      if (*(v56 + 24) >= v71)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C8D5B30();
        }
      }

      else
      {
        sub_21C8D1F18(v71, isUniquelyReferenced_nonNull_native);
        v73 = sub_21CB10BE4(v51);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_124;
        }

        v68 = v73;
      }

      isUniquelyReferenced_nonNull_native = v225;
      v56 = v228;
      if (v72)
      {
        v58 = *(v228 + 56);
        v59 = *(v58 + 8 * v68);
        *(v58 + 8 * v68) = v66;

        sub_21C719840(v51, type metadata accessor for PMAccount.UniqueID);
        sub_21C719840(v224, type metadata accessor for PMAccount.UniqueID);
      }

      else
      {
        *(v228 + 8 * (v68 >> 6) + 64) |= 1 << v68;
        sub_21CACA770(v51, *(v56 + 48) + v214[9] * v68, type metadata accessor for PMAccount.UniqueID);
        *(*(v56 + 56) + 8 * v68) = v66;

        sub_21C719840(v51, type metadata accessor for PMAccount.UniqueID);
        sub_21C719840(v224, type metadata accessor for PMAccount.UniqueID);
        v75 = *(v56 + 16);
        v76 = __OFADD__(v75, 1);
        v77 = v75 + 1;
        if (v76)
        {
          goto LABEL_99;
        }

        *(v56 + 16) = v77;
      }

      ++v4;
      v60 = v15 == i;
      v15 = v211;
      if (v60)
      {
        goto LABEL_21;
      }
    }

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
    ;
  }

LABEL_21:
  v220 = v56;

  v78 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts;
  v79 = v179;
  swift_beginAccess();
  v56 = *(v79 + v78);
  if (v56 >> 62)
  {
    v51 = sub_21CB85FA4();
    if (v51)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v51 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
LABEL_23:
      v193 = v56 & 0xC000000000000001;
      v183 = v56 & 0xFFFFFFFFFFFFFF8;
      v192 = (v212 + 6);
      v185 = (v212 + 4);
      v180 = (v212 + 2);
      v184 = (v212 + 1);

      v80 = 0;
      v205 = 0;
      v206 = MEMORY[0x277D84F98];
      v214 = MEMORY[0x277D84F90];
      v189 = MEMORY[0x277D84F90];
      v212 = MEMORY[0x277D84F90];
      v223 = MEMORY[0x277D84F90];
      v191 = v56;
      v190 = v51;
      while (1)
      {
        if (v193)
        {
          v81 = MEMORY[0x21CF15BD0](v80, v56);
        }

        else
        {
          if (v80 >= *(v183 + 16))
          {
            goto LABEL_101;
          }

          v81 = *(v56 + 8 * v80 + 32);
        }

        v82 = v81;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_98;
        }

        v215 = v80 + 1;
        v83 = v216;
        *v216 = v81;
        swift_storeEnumTagMultiPayload();
        v84 = v222;
        v85 = isUniquelyReferenced_nonNull_native + *(v222 + 28);
        *v85 = 0u;
        *(v85 + 16) = 0u;
        v224 = *(v84 + 24);
        sub_21CACA770(v83, &v224[isUniquelyReferenced_nonNull_native], type metadata accessor for PMAccount.Storage);
        v86 = *(v84 + 20);
        v55 = v82;
        sub_21C7C8A3C((isUniquelyReferenced_nonNull_native + v86));
        v87 = v199;
        sub_21CACA770(isUniquelyReferenced_nonNull_native + v86, v199, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v88 = v208;
          sub_21CAC9E84(v87, v208, type metadata accessor for PMAccount.SIWAUniqueID);
          v89 = sub_21C7CE99C();
          v91 = v90;

          v92 = type metadata accessor for PMAccount.SIWAUniqueID;
        }

        else
        {
          v88 = v207;
          sub_21CAC9E84(v87, v207, type metadata accessor for PMAccount.CombinedUniqueID);
          v89 = sub_21C7CE408();
          v91 = v93;

          v92 = type metadata accessor for PMAccount.CombinedUniqueID;
        }

        sub_21C719840(v88, v92);
        sub_21C719840(v216, type metadata accessor for PMAccount.Storage);
        v94 = v225;
        *v225 = v89;
        *(v94 + 8) = v91;
        v95 = v220;
        if (*(v220 + 16) && (v96 = sub_21CB10BE4(v94 + v86), (v97 & 1) != 0))
        {
          v98 = *(*(v95 + 56) + 8 * v96);
          v99 = [v98 savedAccount];
          v100 = v187;
          *v187 = v99;
          swift_storeEnumTagMultiPayload();
          v101 = v222;
          v102 = v188;
          v103 = (v188 + *(v222 + 28));
          *v103 = 0u;
          v103[1] = 0u;
          sub_21CACA770(v100, v102 + *(v101 + 24), type metadata accessor for PMAccount.Storage);
          v104 = *(v101 + 20);
          v105 = v99;
          sub_21C7C8A3C(v102 + v104);
          v106 = v182;
          sub_21CACA770(v102 + v104, v182, type metadata accessor for PMAccount.UniqueID);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v107 = v208;
            sub_21CAC9E84(v106, v208, type metadata accessor for PMAccount.SIWAUniqueID);
            v108 = sub_21C7CE99C();
            v110 = v109;

            v111 = type metadata accessor for PMAccount.SIWAUniqueID;
          }

          else
          {
            v107 = v207;
            sub_21CAC9E84(v106, v207, type metadata accessor for PMAccount.CombinedUniqueID);
            v108 = sub_21C7CE408();
            v110 = v113;

            v111 = type metadata accessor for PMAccount.CombinedUniqueID;
          }

          sub_21C719840(v107, v111);
          sub_21C719840(v187, type metadata accessor for PMAccount.Storage);
          v114 = v188;
          *v188 = v108;
          *(v114 + 8) = v110;

          sub_21C719840(v114, type metadata accessor for PMAccount);
          LODWORD(v112) = [v98 hasBeenHidden];

          v112 = v112;
        }

        else
        {
          v108 = 0;
          v110 = 0;
          v112 = 0;
          v98 = 0;
        }

        sub_21C7D33F0(*v85, *(v85 + 8), *(v85 + 16), *(v85 + 24));
        *v85 = v108;
        *(v85 + 8) = v110;
        *(v85 + 16) = v112;
        *(v85 + 24) = v98;
        v115 = v225;
        sub_21CACA770(v225, v217, type metadata accessor for PMAccount);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v223 = sub_21CA4F1B8(0, v223[2] + 1, 1, v223);
        }

        v116 = v202;
        v118 = v223[2];
        v117 = v223[3];
        if (v118 >= v117 >> 1)
        {
          v223 = sub_21CA4F1B8((v117 > 1), v118 + 1, 1, v223);
        }

        v119 = v223;
        v223[2] = v118 + 1;
        v120 = (*(v218 + 80) + 32) & ~*(v218 + 80);
        v51 = *(v218 + 72);
        sub_21CAC9E84(v217, v119 + v120 + v51 * v118, type metadata accessor for PMAccount);
        v121 = v200;
        sub_21CACA770(&v224[v115], v200, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v122 = v121;
          v123 = v197;
          sub_21CAC9E84(v122, v197, type metadata accessor for PMAccount.MockData);
          sub_21C6EDBAC(v123 + *(v198 + 72), v116, &unk_27CDF20B0, &unk_21CBA0090);
          sub_21C719840(v123, type metadata accessor for PMAccount.MockData);
        }

        else
        {
          v125 = *v121;
          sub_21CB85B94();
        }

        v124 = v201;
        sub_21C716934(v116, v201, &unk_27CDF20B0, &unk_21CBA0090);
        v126 = v213;
        if ((*v192)(v124, 1, v213) == 1)
        {
          sub_21C6EA794(v124, &unk_27CDF20B0, &unk_21CBA0090);
          sub_21CACA770(v115, v203, type metadata accessor for PMAccount);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v127 = v194;
            v128 = v212;
          }

          else
          {
            v128 = sub_21CA4F1B8(0, v212[2] + 1, 1, v212);
            v127 = v194;
          }

          v130 = v128[2];
          v129 = v128[3];
          v131 = v130 + 1;
          if (v130 >= v129 >> 1)
          {
            v128 = sub_21CA4F1B8((v129 > 1), v130 + 1, 1, v128);
            v132 = v203;
            v212 = v128;
          }

          else
          {
            v212 = v128;
            v132 = v203;
          }

          goto LABEL_66;
        }

        v4 = v210;
        (*v185)(v210, v124, v126);
        sub_21CACA770(v115, v196, type metadata accessor for PMAccount);
        sub_21C71B710(v205, 0);
        v56 = v206;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v227 = v56;
        v134 = sub_21CB10A54(v4);
        v135 = *(v56 + 16);
        v136 = (v133 & 1) == 0;
        v137 = v135 + v136;
        if (__OFADD__(v135, v136))
        {
          goto LABEL_100;
        }

        v138 = v133;
        if (*(v56 + 24) < v137)
        {
          break;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C8D58B0();
          v141 = v227;
          if (v138)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        v141 = v227;
        if ((v133 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_61:
        v206 = v141;
        v143 = v141[7];
        v144 = *(v143 + 8 * v134);
        v145 = swift_isUniquelyReferenced_nonNull_native();
        *(v143 + 8 * v134) = v144;
        if ((v145 & 1) == 0)
        {
          v144 = sub_21CA4F1B8(0, v144[2] + 1, 1, v144);
          *(v143 + 8 * v134) = v144;
        }

        v130 = v144[2];
        v146 = v144[3];
        v131 = v130 + 1;
        if (v130 >= v146 >> 1)
        {
          *(v143 + 8 * v134) = sub_21CA4F1B8((v146 > 1), v130 + 1, 1, v144);
        }

        (*v184)(v210, v213);
        v128 = *(v143 + 8 * v134);
        v205 = sub_21C839CEC;
        v132 = v196;
        v15 = v211;
        v127 = v194;
LABEL_66:
        v128[2] = v131;
        sub_21CAC9E84(v132, v128 + v120 + v130 * v51, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = v225;
        sub_21CACA770(&v224[v225], v127, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719840(v127, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v147 = *v127;
          v148 = [v147 credentialTypes];

          if ((v148 & 2) != 0)
          {
            sub_21CACA770(isUniquelyReferenced_nonNull_native, v186, type metadata accessor for PMAccount);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v189 = sub_21CA4F1B8(0, v189[2] + 1, 1, v189);
            }

            v150 = v189[2];
            v149 = v189[3];
            if (v150 >= v149 >> 1)
            {
              v189 = sub_21CA4F1B8((v149 > 1), v150 + 1, 1, v189);
            }

            v151 = v189;
            v189[2] = v150 + 1;
            sub_21CAC9E84(v186, v151 + v120 + v150 * v51, type metadata accessor for PMAccount);
          }
        }

        v152 = v195;
        sub_21CACA770(&v224[isUniquelyReferenced_nonNull_native], v195, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v4 = v197;
          sub_21CAC9E84(v152, v197, type metadata accessor for PMAccount.MockData);
          v153 = *(v4 + *(v198 + 56));
          v154 = v153;
          sub_21C719840(v4, type metadata accessor for PMAccount.MockData);
          if (v153)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v154 = *v152;
          v4 = [v154 totpGenerators];
          sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
          v56 = sub_21CB85824();

          if (v56 >> 62)
          {
            if (sub_21CB85FA4())
            {
LABEL_79:
              if ((v56 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CF15BD0](0, v56);
                swift_unknownObjectRelease();
              }

              else if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_102;
              }

LABEL_82:

              sub_21CACA770(isUniquelyReferenced_nonNull_native, v209, type metadata accessor for PMAccount);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v214 = sub_21CA4F1B8(0, v214[2] + 1, 1, v214);
              }

              v156 = v214[2];
              v155 = v214[3];
              if (v156 >= v155 >> 1)
              {
                v214 = sub_21CA4F1B8((v155 > 1), v156 + 1, 1, v214);
              }

              v157 = v214;
              v214[2] = v156 + 1;
              sub_21CAC9E84(v209, v157 + v120 + v156 * v51, type metadata accessor for PMAccount);
              goto LABEL_25;
            }
          }

          else if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }
        }

LABEL_25:
        sub_21C719840(isUniquelyReferenced_nonNull_native, type metadata accessor for PMAccount);
        ++v80;
        v51 = v190;
        v56 = v191;
        if (v215 == v190)
        {

          goto LABEL_106;
        }
      }

      sub_21C8D1B3C(v137, isUniquelyReferenced_nonNull_native);
      v139 = sub_21CB10A54(v210);
      if ((v138 & 1) != (v140 & 1))
      {
        goto LABEL_125;
      }

      v134 = v139;
      v141 = v227;
      if (v138)
      {
        goto LABEL_61;
      }

LABEL_60:
      v142 = v181;
      (*v180)(v181, v210, v213);
      sub_21C8D5124(v134, v142, MEMORY[0x277D84F90], v141);
      goto LABEL_61;
    }
  }

  v205 = 0;
  v206 = MEMORY[0x277D84F98];
  v189 = MEMORY[0x277D84F90];
  v212 = MEMORY[0x277D84F90];
  v214 = MEMORY[0x277D84F90];
  v223 = MEMORY[0x277D84F90];
LABEL_106:

  v158 = *(v179 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker);
  if (v158 >> 62)
  {
    v159 = sub_21CB85FA4();
  }

  else
  {
    v159 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v160 = MEMORY[0x277D84F90];
  if (!v159)
  {
    goto LABEL_121;
  }

  v227 = MEMORY[0x277D84F90];

  sub_21C7B0C4C(0, v159 & ~(v159 >> 63), 0);
  if ((v159 & 0x8000000000000000) == 0)
  {
    v161 = 0;
    v160 = v227;
    do
    {
      if ((v158 & 0xC000000000000001) != 0)
      {
        v162 = MEMORY[0x21CF15BD0](v161, v158);
      }

      else
      {
        v162 = *(v158 + 8 * v161 + 32);
      }

      v163 = v162;
      v164 = v219;
      *v219 = v162;
      swift_storeEnumTagMultiPayload();
      v165 = v222;
      v166 = &v15[*(v222 + 28)];
      *v166 = 0u;
      *(v166 + 1) = 0u;
      sub_21CACA770(v164, &v15[*(v165 + 24)], type metadata accessor for PMAccount.Storage);
      v167 = *(v165 + 20);
      v168 = v163;
      sub_21C7C8A3C(&v15[v167]);
      v169 = v204;
      sub_21CACA770(&v15[v167], v204, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v170 = v208;
        sub_21CAC9E84(v169, v208, type metadata accessor for PMAccount.SIWAUniqueID);
        v171 = sub_21C7CE99C();
        v173 = v172;

        v174 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v170 = v207;
        sub_21CAC9E84(v169, v207, type metadata accessor for PMAccount.CombinedUniqueID);
        v171 = sub_21C7CE408();
        v173 = v175;

        v174 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719840(v170, v174);
      sub_21C719840(v219, type metadata accessor for PMAccount.Storage);
      *v15 = v171;
      *(v15 + 1) = v173;
      v227 = v160;
      v177 = v160[2];
      v176 = v160[3];
      if (v177 >= v176 >> 1)
      {
        sub_21C7B0C4C((v176 > 1), v177 + 1, 1);
        v160 = v227;
      }

      ++v161;
      v160[2] = v177 + 1;
      sub_21CAC9E84(v15, v160 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v177, type metadata accessor for PMAccount);
    }

    while (v159 != v161);

LABEL_121:
    swift_getKeyPath(aP_98);
    swift_getKeyPath(aP_99);
    v227 = v223;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBC5940);
    swift_getKeyPath(byte_21CBC5968);
    v227 = v160;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBC59B0);
    v227 = v212;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBC59D0);
    swift_getKeyPath(aP_100);
    v227 = v206;

    sub_21CB81DC4();
    swift_getKeyPath(aX_71);
    swift_getKeyPath(a8_39);
    v227 = v189;

    sub_21CB81DC4();
    swift_getKeyPath(asc_21CBC5A60);
    swift_getKeyPath(byte_21CBC5A88);
    v227 = v214;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBC5AA8);
    LOBYTE(v227) = 1;

    sub_21CB81DC4();
    return sub_21C71B710(v205, 0);
  }

  __break(1u);
LABEL_124:
  sub_21CB863B4();
  __break(1u);
LABEL_125:
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

uint64_t sub_21CAB6DCC()
{
  v97 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v97);
  v96 = v89 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v89 - v6;
  v8 = sub_21CB85C44();
  v90 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v113 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v10 - 8);
  v95 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v110);
  v109 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v121);
  v108 = (v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v120 = (v89 - v17);
  v18 = type metadata accessor for PMAccount(0);
  v106 = *(v18 - 8);
  v107 = v18;
  MEMORY[0x28223BE20](v18);
  v105 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v104 = v89 - v21;
  MEMORY[0x28223BE20](v22);
  v119 = v89 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v89 - v25;
  v27 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = *(v0 + v27);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_50:
    v29 = sub_21CB85FA4();
  }

  else
  {
    v29 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v99 = v29;
    v89[1] = v0;
    v103 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v91 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v102 = (v90 + 48);
    v93 = (v90 + 32);
    v89[2] = v90 + 16;
    v92 = (v90 + 8);

    v31 = 0;
    v111 = 0;
    v112 = MEMORY[0x277D84F98];
    v114 = v30;
    v100 = isUniquelyReferenced_nonNull_native;
    v101 = v7;
    while (1)
    {
      if (v103)
      {
        v34 = MEMORY[0x21CF15BD0](v31, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v31 >= *(v91 + 16))
        {
          goto LABEL_48;
        }

        v34 = *(isUniquelyReferenced_nonNull_native + 8 * v31 + 32);
      }

      v0 = v34;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v35 = v4;
      v36 = v8;
      v117 = v31 + 1;
      v37 = v30;
      v38 = v120;
      *v120 = v34;
      swift_storeEnumTagMultiPayload();
      v39 = v107;
      v40 = &v26[*(v107 + 28)];
      *v40 = 0u;
      *(v40 + 1) = 0u;
      v41 = *(v39 + 24);
      sub_21CACA770(v38, &v26[v41], type metadata accessor for PMAccount.Storage);
      v42 = *(v39 + 20);
      v43 = v0;
      sub_21C7C8A3C(&v26[v42]);
      v44 = &v26[v42];
      v45 = v109;
      sub_21CACA770(v44, v109, type metadata accessor for PMAccount.UniqueID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v118 = v43;
      if (EnumCaseMultiPayload == 1)
      {
        v47 = v45;
        v48 = v95;
        sub_21CAC9E84(v47, v95, type metadata accessor for PMAccount.SIWAUniqueID);
        v49 = sub_21C7CE99C();
        v51 = v50;

        v52 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v53 = v45;
        v48 = v94;
        sub_21CAC9E84(v53, v94, type metadata accessor for PMAccount.CombinedUniqueID);
        v49 = sub_21C7CE408();
        v51 = v54;

        v52 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719840(v48, v52);
      sub_21C719840(v120, type metadata accessor for PMAccount.Storage);
      *v26 = v49;
      *(v26 + 1) = v51;
      sub_21CACA770(v26, v119, type metadata accessor for PMAccount);
      v30 = v37;
      v8 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_21CA4F1B8(0, v37[2] + 1, 1, v37);
      }

      v4 = v35;
      v56 = v30[2];
      v55 = v30[3];
      v7 = v101;
      if (v56 >= v55 >> 1)
      {
        v30 = sub_21CA4F1B8((v55 > 1), v56 + 1, 1, v30);
      }

      v30[2] = v56 + 1;
      v116 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v115 = *(v106 + 72);
      sub_21CAC9E84(v119, v30 + v116 + v115 * v56, type metadata accessor for PMAccount);
      v57 = v108;
      sub_21CACA770(&v26[v41], v108, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = v57;
        v59 = v96;
        sub_21CAC9E84(v58, v96, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v59 + *(v97 + 72), v4, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C719840(v59, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v60 = *v57;
        sub_21CB85B94();
      }

      sub_21C716934(v4, v7, &unk_27CDF20B0, &unk_21CBA0090);
      if ((*v102)(v7, 1, v8) != 1)
      {
        break;
      }

      sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CACA770(v26, v105, type metadata accessor for PMAccount);
      v61 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_21CA4F1B8(0, v61[2] + 1, 1, v61);
      }

      v63 = v117;
      v62 = v118;
      v64 = v61;
      v65 = v61[2];
      v114 = v64;
      v66 = v64[3];
      v0 = (v65 + 1);
      if (v65 >= v66 >> 1)
      {
        v67 = v118;
        v114 = sub_21CA4F1B8((v66 > 1), v65 + 1, 1, v114);
        v62 = v67;
      }

      sub_21C719840(v26, type metadata accessor for PMAccount);
      v32 = v114;
      v33 = v105;
LABEL_6:
      v32[2] = v0;
      sub_21CAC9E84(v33, v32 + v116 + v65 * v115, type metadata accessor for PMAccount);
      ++v31;
      isUniquelyReferenced_nonNull_native = v100;
      if (v63 == v99)
      {

        v86 = v111;
        v85 = v112;
        v87 = v114;
        goto LABEL_45;
      }
    }

    v98 = v30;
    v68 = v113;
    (*v93)(v113, v7, v8);
    sub_21CACA770(v26, v104, type metadata accessor for PMAccount);
    sub_21C71B710(v111, 0);
    v0 = v112;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v0;
    v70 = sub_21CB10A54(v68);
    v71 = v0[2];
    v72 = (v69 & 1) == 0;
    v73 = v71 + v72;
    if (__OFADD__(v71, v72))
    {
      goto LABEL_47;
    }

    v74 = v69;
    if (v0[3] < v73)
    {
      sub_21C8D1B3C(v73, isUniquelyReferenced_nonNull_native);
      v0 = v122;
      v75 = sub_21CB10A54(v113);
      if ((v74 & 1) != (v76 & 1))
      {
        result = sub_21CB863B4();
        __break(1u);
        return result;
      }

      v70 = v75;
      isUniquelyReferenced_nonNull_native = v122;
      if (v74)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v122;
      if ((v69 & 1) == 0)
      {
LABEL_34:
        *(isUniquelyReferenced_nonNull_native + 8 * (v70 >> 6) + 64) |= 1 << v70;
        (*(v90 + 16))(*(isUniquelyReferenced_nonNull_native + 48) + *(v90 + 72) * v70, v113, v8);
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v70) = MEMORY[0x277D84F90];
        v77 = *(isUniquelyReferenced_nonNull_native + 16);
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_49;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v79;
      }
    }

    else
    {
      v0 = &v122;
      sub_21C8D58B0();
      isUniquelyReferenced_nonNull_native = v122;
      if ((v74 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v7 = v4;
    v112 = isUniquelyReferenced_nonNull_native;
    v80 = *(isUniquelyReferenced_nonNull_native + 56);
    v81 = *(v80 + 8 * v70);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *(v80 + 8 * v70) = v81;
    if ((v82 & 1) == 0)
    {
      v81 = sub_21CA4F1B8(0, v81[2] + 1, 1, v81);
      *(v80 + 8 * v70) = v81;
    }

    v65 = v81[2];
    v83 = v81[3];
    v0 = (v65 + 1);
    v84 = v118;
    if (v65 >= v83 >> 1)
    {
      *(v80 + 8 * v70) = sub_21CA4F1B8((v83 > 1), v65 + 1, 1, v81);
      v84 = v118;
    }

    (*v92)(v113, v8);
    sub_21C719840(v26, type metadata accessor for PMAccount);
    v32 = *(v80 + 8 * v70);
    v111 = sub_21C839CEC;
    v33 = v104;
    v4 = v7;
    v30 = v98;
    v63 = v117;
    goto LABEL_6;
  }

  v86 = 0;
  v85 = MEMORY[0x277D84F98];
  v87 = MEMORY[0x277D84F90];
LABEL_45:
  swift_getKeyPath(byte_21CBC5730);
  v122 = v30;

  sub_21CB81DC4();
  swift_getKeyPath(byte_21CBC5730);
  sub_21CB81DB4();

  swift_getKeyPath(aP_101);
  swift_getKeyPath(aP_102);
  v122 = v87;

  sub_21CB81DC4();
  swift_getKeyPath(aP_101);
  swift_getKeyPath(aP_102);
  sub_21CB81DB4();

  swift_getKeyPath(a8_40);
  swift_getKeyPath(byte_21CBC5920);
  v122 = v85;

  sub_21CB81DC4();
  swift_getKeyPath(a8_40);
  swift_getKeyPath(byte_21CBC5920);
  sub_21CB81DB4();

  sub_21CAFB8DC(v122);

  return sub_21C71B710(v86, 0);
}

uint64_t sub_21CAB7B90()
{
  v1 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v1 - 8);
  v56 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v5);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v62);
  v9 = (v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v61);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings;
  result = swift_beginAccess();
  v14 = *(v0 + v12);
  if (v14 >> 62)
  {
    v50 = *(v0 + v12);
    result = sub_21CB85FA4();
    v14 = v50;
    v15 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_42:
    v48 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
LABEL_43:
    swift_getKeyPath(byte_21CBC5820);
    swift_getKeyPath(byte_21CBC5848);
    v64 = v47;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBC57D8);
    swift_getKeyPath(byte_21CBC5800);
    v64 = v49;

    sub_21CB81DC4();
    swift_getKeyPath(byte_21CBC5868);
    swift_getKeyPath(byte_21CBC5890);
    v64 = v48;

    return sub_21CB81DC4();
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_42;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v51[1] = v0;
    v58 = v14 & 0xC000000000000001;
    v16 = v14;

    v17 = v16;
    v18 = 0;
    v52 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
    v54 = v5;
    v57 = v7;
    v59 = v15;
    v60 = v16;
    while (1)
    {
      if (v58)
      {
        v19 = MEMORY[0x21CF15BD0](v18, v17);
      }

      else
      {
        v19 = *(v17 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v20 savedAccount];
      *v9 = v21;
      swift_storeEnumTagMultiPayload();
      v22 = v61;
      v23 = &v11[*(v61 + 28)];
      *v23 = 0u;
      *(v23 + 1) = 0u;
      sub_21CACA770(v9, &v11[*(v22 + 24)], type metadata accessor for PMAccount.Storage);
      v24 = *(v22 + 20);
      v25 = v21;
      sub_21C7C8A3C(&v11[v24]);
      sub_21CACA770(&v11[v24], v7, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v56;
        sub_21CAC9E84(v7, v56, type metadata accessor for PMAccount.SIWAUniqueID);
        v27 = sub_21C7CE99C();
        v29 = v28;

        v30 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v26 = v55;
        sub_21CAC9E84(v7, v55, type metadata accessor for PMAccount.CombinedUniqueID);
        v27 = sub_21C7CE408();
        v29 = v31;

        v30 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719840(v26, v30);
      sub_21C719840(v9, type metadata accessor for PMAccount.Storage);
      *v11 = v27;
      *(v11 + 1) = v29;

      sub_21C719840(v11, type metadata accessor for PMAccount);
      v32 = [v20 hasBeenHidden];

      if ([v20 hasBeenHidden])
      {

        v33 = v20;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = v63;
        }

        else
        {
          v34 = sub_21CA4F1E0(0, *(v63 + 2) + 1, 1, v63);
        }

        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        if (v36 >= v35 >> 1)
        {
          v34 = sub_21CA4F1E0((v35 > 1), v36 + 1, 1, v34);
        }

        *(v34 + 2) = v36 + 1;
        v63 = v34;
        v37 = &v34[32 * v36];
        *(v37 + 4) = v27;
        *(v37 + 5) = v29;
        v37[48] = v32;
        *(v37 + 7) = v33;
        if (([objc_opt_self() isPasswordsAppInstalled] & 1) == 0)
        {

          goto LABEL_6;
        }

        v7 = v57;
      }

      v38 = [v20 severity];
      if (v38 > 1)
      {
        if (v38 != 2)
        {
          if (v38 != 3)
          {
LABEL_32:

            goto LABEL_7;
          }

LABEL_31:

          goto LABEL_7;
        }

        v44 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_21CA4F1E0(0, *(v44 + 2) + 1, 1, v44);
        }

        v41 = *(v44 + 2);
        v45 = *(v44 + 3);
        v53 = v44;
        v42 = v41 + 1;
        if (v41 >= v45 >> 1)
        {
          v53 = sub_21CA4F1E0((v45 > 1), v41 + 1, 1, v53);
        }

        v43 = v53;
      }

      else
      {
        if (!v38)
        {
          goto LABEL_31;
        }

        if (v38 != 1)
        {
          goto LABEL_32;
        }

        v39 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_21CA4F1E0(0, *(v39 + 2) + 1, 1, v39);
        }

        v41 = *(v39 + 2);
        v40 = *(v39 + 3);
        v52 = v39;
        v42 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          v52 = sub_21CA4F1E0((v40 > 1), v41 + 1, 1, v52);
        }

        v43 = v52;
      }

      *(v43 + 2) = v42;
      v46 = &v43[32 * v41];
      *(v46 + 4) = v27;
      *(v46 + 5) = v29;
      v46[48] = v32;
      *(v46 + 7) = v20;
LABEL_6:
      v7 = v57;
LABEL_7:
      ++v18;
      v17 = v60;
      if (v59 == v18)
      {

        v47 = v52;
        v48 = v63;
        v49 = v53;
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAB82DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PMAccount(0);
  v44 = *(v13 - 1);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v41 = a1[1];
  v42 = v17;
  v43 = *(a1 + 16);
  v18 = a1[3];
  v19 = [v18 savedAccount];
  *v12 = v19;
  swift_storeEnumTagMultiPayload();
  v20 = &v16[v13[7]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  sub_21CACA770(v12, &v16[v13[6]], type metadata accessor for PMAccount.Storage);
  v21 = v13[5];
  v22 = v19;
  sub_21C7C8A3C(&v16[v21]);
  sub_21CACA770(&v16[v21], v9, type metadata accessor for PMAccount.UniqueID);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v40;
    sub_21CAC9E84(v9, v40, type metadata accessor for PMAccount.SIWAUniqueID);
    v24 = sub_21C7CE99C();
    v26 = v25;

    v27 = type metadata accessor for PMAccount.SIWAUniqueID;
  }

  else
  {
    v23 = v39;
    sub_21CAC9E84(v9, v39, type metadata accessor for PMAccount.CombinedUniqueID);
    v24 = sub_21C7CE408();
    v26 = v28;

    v27 = type metadata accessor for PMAccount.CombinedUniqueID;
  }

  sub_21C719840(v23, v27);
  sub_21C719840(v12, type metadata accessor for PMAccount.Storage);
  *v16 = v24;
  *(v16 + 1) = v26;
  v29 = *v20;
  v30 = v20[1];
  v31 = v20[2];
  v32 = v20[3];
  v33 = v41;

  v34 = v18;
  sub_21C7D33F0(v29, v30, v31, v32);
  v35 = v43;
  *v20 = v42;
  v20[1] = v33;
  v20[2] = v35;
  v20[3] = v18;
  v36 = v45;
  sub_21CACA770(v16, v45, type metadata accessor for PMAccount);
  (*(v44 + 56))(v36, 0, 1, v13);
  return sub_21C719840(v16, type metadata accessor for PMAccount);
}

uint64_t sub_21CAB86E8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  sub_21CB858B4();
  v3[21] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x2822009F8](sub_21CAB8784, v5, v4);
}

uint64_t sub_21CAB8784()
{
  v1 = v0[19];
  v2 = *(v0[20] + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v3 = v0[18];
  v0[24] = v2;
  v0[2] = v0;
  v0[3] = sub_21CAB88BC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_159;
  v0[14] = v4;
  [v2 saveTOTPGenerator:v3 forSavedAccount:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CAB88BC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_21CAB89C4, v2, v1);
}

uint64_t sub_21CAB89C4()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CAB8A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v4[22] = type metadata accessor for PMAccount.Storage(0);
  v4[23] = swift_task_alloc();
  sub_21CB858B4();
  v4[24] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[25] = v6;
  v4[26] = v5;

  return MEMORY[0x2822009F8](sub_21CAB8AF8, v6, v5);
}

uint64_t sub_21CAB8AF8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = type metadata accessor for PMAccount(0);
  sub_21CACA770(v2 + *(v3 + 24), v1, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[23];
  if (EnumCaseMultiPayload == 1)
  {

    sub_21C719840(v5, type metadata accessor for PMAccount.Storage);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[21];
    v9 = *v5;
    v0[27] = *v5;
    v10 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    v0[28] = v10;
    v11 = v10;
    v12 = sub_21CB85584();
    v0[29] = v12;
    v0[2] = v0;
    v0[3] = sub_21CAB8D04;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21CAB1570;
    v0[13] = &block_descriptor_156;
    v0[14] = v13;
    [v11 addAdditionalSite:v12 toSavedAccount:v9 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_21CAB8D04()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_21CAB8E0C, v2, v1);
}

uint64_t sub_21CAB8E0C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CAB8E98(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 584) = v3;
  *(v4 + 752) = a3;
  *(v4 + 576) = a2;
  *(v4 + 568) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  *(v4 + 592) = swift_task_alloc();
  type metadata accessor for PMAccount.SIWAUniqueID(0);
  *(v4 + 600) = swift_task_alloc();
  type metadata accessor for PMAccount.CombinedUniqueID(0);
  *(v4 + 608) = swift_task_alloc();
  *(v4 + 616) = type metadata accessor for PMAccount.UniqueID(0);
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = type metadata accessor for PMAccount(0);
  *(v4 + 640) = swift_task_alloc();
  *(v4 + 648) = type metadata accessor for PMAccount.Storage(0);
  *(v4 + 656) = swift_task_alloc();
  *(v4 + 664) = swift_task_alloc();
  *(v4 + 672) = swift_task_alloc();
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();
  sub_21CB858B4();
  *(v4 + 696) = sub_21CB858A4();
  v6 = sub_21CB85874();
  *(v4 + 704) = v6;
  *(v4 + 712) = v5;

  return MEMORY[0x2822009F8](sub_21CAB9090, v6, v5);
}

uint64_t sub_21CAB9090(__n128 a1)
{
  v2 = *(v1 + 576);
  v3 = *(*(v1 + 632) + 24);
  sub_21CACA770(v2 + v3, *(v1 + 688), type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v1 + 688);

    sub_21C719840(v4, type metadata accessor for PMAccount.Storage);
LABEL_3:

    v5 = *(v1 + 8);

    return v5();
  }

  v7 = *(v1 + 688);
  v8 = *(v1 + 680);
  v9 = *v7;
  *(v1 + 720) = *v7;
  sub_21CACA770(v2 + v3, v8, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v1 + 680);
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C719840(v11, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v12 = *v11;
    v13 = [*v11 credentialTypes];

    if (v13 == 4)
    {
      v14 = *(v1 + 576);

      sub_21CABC28C(v14);
      swift_getKeyPath(aP_98);
      swift_getKeyPath(aP_99);
      sub_21CB81DB4();

      v15 = *(v1 + 560);
      v16 = v14[1];
      *(v1 + 496) = *v14;
      *(v1 + 504) = v16;
      v17 = swift_task_alloc();
      *(v17 + 16) = v1 + 496;
      v19 = sub_21C862E50(sub_21C96C8C4, v18, v17, v15);
      v21 = v20;

      if ((v21 & 1) == 0 && *(v1 + 752) == 1)
      {
        swift_beginAccess();
        v22 = sub_21CACA8AC(v19);
        swift_endAccess();

        sub_21CAB51FC();
      }

      goto LABEL_3;
    }
  }

  sub_21CACA770(v2 + v3, *(v1 + 672), type metadata accessor for PMAccount.Storage);
  v23 = swift_getEnumCaseMultiPayload();
  v24 = *(v1 + 672);
  if (v23 == 1)
  {
    sub_21C719840(v24, type metadata accessor for PMAccount.Storage);
    v25 = 0;
  }

  else
  {
    v26 = *v24;
    v25 = [*v24 credentialTypes];
  }

  *(v1 + 728) = v25;
  sub_21CACA770(v2 + v3, *(v1 + 664), type metadata accessor for PMAccount.Storage);
  v27 = swift_getEnumCaseMultiPayload();
  v28 = *(v1 + 664);
  if (v27 == 1)
  {
    sub_21C719840(v28, type metadata accessor for PMAccount.Storage);
    v29 = 0;
  }

  else
  {
    v30 = *v28;
    v29 = [*v28 userIsNeverSaveMarker];
  }

  *(v1 + 753) = v29;
  if (([v9 isRecentlyDeleted] & 1) != 0 || v29)
  {
    v31 = v1 + 80;
    v35 = *(*(v1 + 584) + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    v36 = *(v1 + 568);
    *(v1 + 736) = v35;
    *(v1 + 80) = v1;
    *(v1 + 88) = sub_21CAB96A8;
    v37 = swift_continuation_init();
    *(v1 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
    *(v1 + 208) = MEMORY[0x277D85DD0];
    *(v1 + 216) = 1107296256;
    *(v1 + 224) = sub_21CAB1570;
    *(v1 + 232) = &block_descriptor_151;
    *(v1 + 240) = v37;
    [v35 removeCredentialTypes:v36 forSavedAccount:v9 completionHandler:v1 + 208];
  }

  else
  {
    v31 = v1 + 16;
    v32 = *(v1 + 568);
    v33 = *(*(v1 + 584) + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    *(v1 + 744) = v33;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 512;
    *(v1 + 24) = sub_21CAB9CD8;
    v34 = swift_continuation_init();
    *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76C0, &qword_21CBC57D0);
    *(v1 + 144) = MEMORY[0x277D85DD0];
    *(v1 + 152) = 1107296256;
    *(v1 + 160) = sub_21C82D1CC;
    *(v1 + 168) = &block_descriptor_129;
    *(v1 + 176) = v34;
    [v33 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];
  }

  return MEMORY[0x282200938](v31);
}

uint64_t sub_21CAB96A8()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return MEMORY[0x2822009F8](sub_21CAB97B0, v2, v1);
}

uint64_t sub_21CAB97B0()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 568);

  if ((v2 & ~v4) != 0)
  {
    v5 = *(v0 + 720);
    v6 = *(v0 + 656);
    v7 = *(v0 + 640);
    v8 = *(v0 + 632);
    v9 = *(v0 + 624);
    *v6 = v5;
    swift_storeEnumTagMultiPayload();
    v10 = (v7 + v8[7]);
    *v10 = 0u;
    v10[1] = 0u;
    sub_21CACA770(v6, v7 + v8[6], type metadata accessor for PMAccount.Storage);
    v11 = v8[5];
    v12 = v5;
    sub_21C7C8A3C((v7 + v11));
    sub_21CACA770(v7 + v11, v9, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = *(v0 + 720);
    v15 = *(v0 + 624);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v0 + 600);
      sub_21CAC9E84(v15, v16, type metadata accessor for PMAccount.SIWAUniqueID);
      v17 = sub_21C7CE99C();
      v19 = v18;

      v20 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v16 = *(v0 + 608);
      sub_21CAC9E84(v15, v16, type metadata accessor for PMAccount.CombinedUniqueID);
      v17 = sub_21C7CE408();
      v19 = v29;

      v20 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21C719840(v16, v20);
    v30 = *(v0 + 640);
    v31 = *(v0 + 592);
    v32 = *(v0 + 584);
    v33 = *(v0 + 576);
    sub_21C719840(*(v0 + 656), type metadata accessor for PMAccount.Storage);
    *v30 = v17;
    v30[1] = v19;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
    v35 = *(v34 + 48);
    sub_21CACA770(v33, v31, type metadata accessor for PMAccount);
    sub_21CAC9E84(v30, v31 + v35, type metadata accessor for PMAccount);
    (*(*(v34 - 8) + 56))(v31, 0, 1, v34);
    v36 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
    swift_beginAccess();
    sub_21CAC9E14(v31, v32 + v36);
    swift_endAccess();
  }

  else
  {
    v21 = *(v0 + 576);
    swift_getKeyPath(byte_21CBC5730);
    sub_21CB81DB4();

    v22 = *(v0 + 552);
    v23 = v21[1];
    *(v0 + 480) = *v21;
    *(v0 + 488) = v23;
    v24 = swift_task_alloc();
    *(v24 + 16) = v0 + 480;
    v26 = sub_21C862E50(sub_21C96C8C4, v25, v24, v22);
    v28 = v27;

    if (v28)
    {
      if (*(v0 + 753))
      {
      }

      else
      {
        if (qword_27CDEA470 != -1)
        {
          swift_once();
        }

        v39 = sub_21CB81C84();
        __swift_project_value_buffer(v39, qword_27CE186E0);
        v40 = sub_21CB81C64();
        v41 = sub_21CB85AF4();
        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v0 + 720);
        if (v42)
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_21C6E5000, v40, v41, "Failed to find recently deleted account to delete in accountsState.recentlyDeletedAccounts", v44, 2u);
          MEMORY[0x21CF16D90](v44, -1, -1);
        }
      }
    }

    else
    {
      v37 = *(v0 + 720);
      if (*(v0 + 752) == 1)
      {
        swift_beginAccess();
        v38 = sub_21CACA8AC(v26);
        swift_endAccess();

        sub_21CAB6DCC();
      }
    }
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_21CAB9CD8()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return MEMORY[0x2822009F8](sub_21CAB9DE0, v2, v1);
}

uint64_t sub_21CAB9DE0()
{
  v82 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 568);

  if ((v2 & ~v3) != 0)
  {
    v4 = *(v0 + 720);
    v5 = *(v0 + 656);
    v6 = *(v0 + 640);
    v7 = *(v0 + 632);
    v8 = *(v0 + 624);
    *v5 = v4;
    swift_storeEnumTagMultiPayload();
    v9 = (v6 + v7[7]);
    *v9 = 0u;
    v9[1] = 0u;
    sub_21CACA770(v5, v6 + v7[6], type metadata accessor for PMAccount.Storage);
    v10 = v7[5];
    v11 = v4;
    sub_21C7C8A3C((v6 + v10));
    sub_21CACA770(v6 + v10, v8, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *(v0 + 720);
    v14 = *(v0 + 624);
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *(v0 + 600);
      sub_21CAC9E84(v14, v15, type metadata accessor for PMAccount.SIWAUniqueID);
      v16 = sub_21C7CE99C();
      v18 = v17;

      v19 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v15 = *(v0 + 608);
      sub_21CAC9E84(v14, v15, type metadata accessor for PMAccount.CombinedUniqueID);
      v16 = sub_21C7CE408();
      v18 = v32;

      v19 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21C719840(v15, v19);
    v33 = *(v0 + 640);
    v34 = *(v0 + 592);
    v35 = *(v0 + 584);
    v36 = *(v0 + 576);
    sub_21C719840(*(v0 + 656), type metadata accessor for PMAccount.Storage);
    *v33 = v16;
    v33[1] = v18;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
    v38 = *(v37 + 48);
    sub_21CACA770(v36, v34, type metadata accessor for PMAccount);
    sub_21CAC9E84(v33, v34 + v38, type metadata accessor for PMAccount);
    (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
    v39 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
    swift_beginAccess();
    sub_21CAC9E14(v34, v35 + v39);
    swift_endAccess();
    goto LABEL_12;
  }

  v20 = *(v0 + 576);
  swift_getKeyPath(aP_98);
  swift_getKeyPath(aP_99);
  sub_21CB81DB4();

  v21 = *(v0 + 520);
  v22 = v20[1];
  *(v0 + 464) = *v20;
  *(v0 + 472) = v22;
  v23 = swift_task_alloc();
  *(v23 + 16) = v0 + 464;
  v25 = sub_21C862E50(sub_21C96C8C4, v24, v23, v21);
  v27 = v26;

  if (v27)
  {
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v28 = sub_21CB81C84();
    __swift_project_value_buffer(v28, qword_27CE186E0);
    v29 = sub_21CB81C64();
    v30 = sub_21CB85AF4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21C6E5000, v29, v30, "Failed to find account to delete in accountsState.accounts", v31, 2u);
      MEMORY[0x21CF16D90](v31, -1, -1);
    }
  }

  else if (*(v0 + 752) == 1)
  {
    swift_beginAccess();
    v42 = sub_21CACA8AC(v25);
    swift_endAccess();

    sub_21CAB51FC();
  }

  v43 = *(v0 + 576) + *(*(v0 + 632) + 28);
  v44 = *(v43 + 8);
  if (!v44)
  {

    goto LABEL_12;
  }

  v45 = *v43;
  v47 = *(v43 + 16);
  v46 = *(v43 + 24);

  v48 = v46;
  v49 = [v48 severity];
  if ((v47 & 1) == 0)
  {
    if (v49 != 3)
    {
      if (v49 == 2)
      {
        swift_getKeyPath(byte_21CBC57D8);
        swift_getKeyPath(byte_21CBC5800);
        sub_21CB81DB4();

        v61 = sub_21CAB1600(v45, v44, 0, v48, *(v0 + 528));
        v72 = v71;

        if (v72)
        {
          v53 = v45;
          if (qword_27CDEA470 != -1)
          {
            swift_once();
          }

          v73 = sub_21CB81C84();
          __swift_project_value_buffer(v73, qword_27CE186E0);
          v55 = sub_21CB81C64();
          v56 = sub_21CB85AF4();
          v74 = os_log_type_enabled(v55, v56);
          v58 = *(v0 + 720);
          if (!v74)
          {
            goto LABEL_25;
          }

          v59 = swift_slowAlloc();
          *v59 = 0;
          v60 = "Failed to find security recommendation to delete in accountsState.standardPrioritySecurityRecommendations";
          goto LABEL_24;
        }

        v75 = v0 + 272;
        v79 = *(v0 + 720);
        swift_getKeyPath(byte_21CBC57D8);
        swift_getKeyPath(byte_21CBC5800);
        goto LABEL_44;
      }

      if (v49 == 1)
      {
        swift_getKeyPath(byte_21CBC5820);
        swift_getKeyPath(byte_21CBC5848);
        sub_21CB81DB4();

        v61 = sub_21CAB1600(v45, v44, 0, v48, *(v0 + 536));
        v63 = v62;

        if (v63)
        {
          v53 = v45;
          if (qword_27CDEA470 != -1)
          {
            swift_once();
          }

          v64 = sub_21CB81C84();
          __swift_project_value_buffer(v64, qword_27CE186E0);
          v55 = sub_21CB81C64();
          v56 = sub_21CB85AF4();
          v65 = os_log_type_enabled(v55, v56);
          v58 = *(v0 + 720);
          if (!v65)
          {
            goto LABEL_25;
          }

          v59 = swift_slowAlloc();
          *v59 = 0;
          v60 = "Failed to find security recommendation to delete in accountsState.highPrioritySecurityRecommendations";
          goto LABEL_24;
        }

        v75 = v0 + 304;
        v79 = *(v0 + 720);
        swift_getKeyPath(byte_21CBC5820);
        swift_getKeyPath(byte_21CBC5848);
LABEL_44:
        v76 = sub_21CB81DA4();
        sub_21CACA8C4(v61, &v80);
        v77 = v81;

        v76(v75, 0);

        v70 = v79;
        goto LABEL_45;
      }
    }

    v70 = *(v0 + 720);
LABEL_45:

    sub_21C7D33F0(v45, v44, v47, v46);
    goto LABEL_12;
  }

  swift_getKeyPath(byte_21CBC5868);
  swift_getKeyPath(byte_21CBC5890);
  sub_21CB81DB4();

  v50 = sub_21CAB1600(v45, v44, 1, v48, *(v0 + 544));
  v52 = v51;

  if (v52)
  {
    v53 = v45;
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v54 = sub_21CB81C84();
    __swift_project_value_buffer(v54, qword_27CE186E0);
    v55 = sub_21CB81C64();
    v56 = sub_21CB85AF4();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 720);
    if (!v57)
    {
      goto LABEL_25;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "Failed to find security recommendation to delete in accountsState.hiddenSecurityRecommendations";
LABEL_24:
    _os_log_impl(&dword_21C6E5000, v55, v56, v60, v59, 2u);
    MEMORY[0x21CF16D90](v59, -1, -1);
LABEL_25:
    sub_21C7D33F0(v53, v44, v47, v46);

    goto LABEL_12;
  }

  v78 = v46;
  v66 = v45;
  v67 = *(v0 + 720);
  swift_getKeyPath(byte_21CBC5868);
  swift_getKeyPath(byte_21CBC5890);
  v68 = sub_21CB81DA4();
  sub_21CACA8C4(v50, &v80);
  v69 = v81;

  v68(v0 + 336, 0);

  sub_21C7D33F0(v66, v44, v47, v78);
LABEL_12:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_21CABA834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  type metadata accessor for PMBulkOperationProgress(0);
  swift_allocObject();

  sub_21C71DD5C(a2, a3);
  v12 = sub_21C94C1A0(0, a1, sub_21C82AEC8, v11);
  v13 = sub_21CB858E4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_21CB858B4();

  v14 = sub_21CB858A4();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v4;
  v15[5] = v12;
  v15[6] = a1;
  sub_21C98B308(0, 0, v10, &unk_21CBC57C8, v15);

  return v12;
}

uint64_t sub_21CABAA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v6[9] = type metadata accessor for PMAccount.Storage(0);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v7 = type metadata accessor for PMAccount(0);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  sub_21CB858B4();
  v6[19] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v6[20] = v9;
  v6[21] = v8;

  return MEMORY[0x2822009F8](sub_21CABAB64, v9, v8);
}

uint64_t sub_21CABAB64(__n128 a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 48);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications;
  *(v1 + 176) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications;
  *(v3 + v4) = 1;
  v5 = *(v2 + 16);
  *(v1 + 184) = v5;
  if (!v5)
  {
LABEL_21:

    v45 = *(v1 + 56);
    swift_getKeyPath(aX_72);
    swift_getKeyPath(a8_41);
    *(v1 + 244) = 1;

    sub_21CB81DC4();
    v46 = *(v45 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
    if (v46)
    {
      v46(0, 255);
    }

    *(*(v1 + 48) + *(v1 + 176)) = 0;
    sub_21C6EC92C();

    v47 = *(v1 + 8);

    return v47();
  }

  v6 = 0;
  v7 = *(v1 + 112);
  v8 = *(v7 + 80);
  *(v1 + 240) = v8;
  v9 = *(v7 + 72);
  *(v1 + 192) = v9;
  while (1)
  {
    *(v1 + 200) = v6;
    *(v1 + 208) = v5;
    v10 = *(v1 + 144);
    v12 = *(v1 + 96);
    v11 = *(v1 + 104);
    sub_21CACA770(*(v1 + 64) + ((v8 + 32) & ~v8) + v9 * v6, v10, type metadata accessor for PMAccount);
    sub_21CACA770(v10 + *(v11 + 24), v12, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = *(v1 + 96);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C719840(v14, type metadata accessor for PMAccount.Storage);
LABEL_27:
      v49 = swift_task_alloc();
      *(v1 + 232) = v49;
      *v49 = v1;
      v50 = sub_21CABBAE8;
      goto LABEL_28;
    }

    v15 = *v14;
    v16 = [*v14 credentialTypes];

    if ((v16 - 8) < 2)
    {
      if (v5 != 1)
      {
        goto LABEL_15;
      }

      v17 = *(v1 + 128);
      v18 = *(v1 + 104);
      v19 = *(v1 + 80);
      sub_21CACA770(*(v1 + 64) + ((*(v1 + 240) + 32) & ~*(v1 + 240)), v17, type metadata accessor for PMAccount);
      sub_21CACA770(v17 + *(v18 + 24), v19, type metadata accessor for PMAccount.Storage);
      v20 = swift_getEnumCaseMultiPayload();
      v21 = *(v1 + 128);
      v22 = *(v1 + 80);
      if (v20 == 1)
      {
LABEL_12:
        sub_21C719840(v22, type metadata accessor for PMAccount.Storage);
        sub_21C719840(v21, type metadata accessor for PMAccount);
      }

      else
      {
        v23 = *v22;
        v24 = [*v22 credentialTypes];

        sub_21C719840(v21, type metadata accessor for PMAccount);
        if (v24 == 9)
        {
          v51 = swift_task_alloc();
          *(v1 + 224) = v51;
          *v51 = v1;
          v51[1] = sub_21CABB9C8;
          v52 = *(v1 + 144);
          v53 = 9;
          goto LABEL_29;
        }
      }

      goto LABEL_14;
    }

    if (v16 != 4)
    {
      goto LABEL_27;
    }

    v5 = *(v1 + 184);
    if (v5 == 1)
    {
      break;
    }

LABEL_15:
    sub_21CACA770(*(v1 + 144), *(v1 + 120), type metadata accessor for PMAccount);
    swift_getKeyPath(byte_21CBC5610);
    swift_getKeyPath(aP_103);
    v31 = sub_21CB81DA4();
    v33 = v32;
    v34 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v34;
    v54 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_21CA4F1B8(0, v34[2] + 1, 1, v34);
      *v33 = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    v38 = v5;
    if (v37 >= v36 >> 1)
    {
      v34 = sub_21CA4F1B8((v36 > 1), v37 + 1, 1, v34);
      *v33 = v34;
    }

    v39 = *(v1 + 192);
    v40 = *(v1 + 240);
    v41 = *(v1 + 184);
    v42 = *(v1 + 144);
    v43 = *(v1 + 120);
    v44 = *(v1 + 200) + 1;
    v34[2] = v37 + 1;
    sub_21CAC9E84(v43, v34 + ((v40 + 32) & ~v40) + v39 * v37, type metadata accessor for PMAccount);
    v54(v1 + 16, 0);

    sub_21C719840(v42, type metadata accessor for PMAccount);
    if (v44 == v41)
    {
      goto LABEL_21;
    }

    v5 = v38;
    v9 = *(v1 + 192);
    v6 = *(v1 + 200) + 1;
    LOBYTE(v8) = *(v1 + 240);
  }

  v25 = *(v1 + 136);
  v26 = *(v1 + 104);
  v27 = *(v1 + 88);
  sub_21CACA770(*(v1 + 64) + ((*(v1 + 240) + 32) & ~*(v1 + 240)), v25, type metadata accessor for PMAccount);
  sub_21CACA770(v25 + *(v26 + 24), v27, type metadata accessor for PMAccount.Storage);
  v28 = swift_getEnumCaseMultiPayload();
  v21 = *(v1 + 136);
  v22 = *(v1 + 88);
  if (v28 == 1)
  {
    goto LABEL_12;
  }

  v29 = *v22;
  v30 = [*v22 credentialTypes];

  sub_21C719840(v21, type metadata accessor for PMAccount);
  if (v30 != 4)
  {
LABEL_14:
    v5 = 1;
    goto LABEL_15;
  }

  v49 = swift_task_alloc();
  *(v1 + 216) = v49;
  *v49 = v1;
  v50 = sub_21CABB224;
LABEL_28:
  v49[1] = v50;
  v52 = *(v1 + 144);
  v53 = 3;
LABEL_29:

  return sub_21CAB8E98(v53, v52, 0);
}

uint64_t sub_21CABB224()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21CABB344, v3, v2);
}

uint64_t sub_21CABB344(__n128 a1)
{
  v2 = 1;
LABEL_2:
  v49 = v2;
  while (1)
  {
    sub_21CACA770(*(v1 + 144), *(v1 + 120), type metadata accessor for PMAccount);
    swift_getKeyPath(byte_21CBC5610);
    swift_getKeyPath(aP_103);
    v3 = sub_21CB81DA4();
    v5 = v4;
    v6 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_21CA4F1B8(0, v6[2] + 1, 1, v6);
      *v5 = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_21CA4F1B8((v8 > 1), v9 + 1, 1, v6);
      *v5 = v6;
    }

    v10 = *(v1 + 192);
    v11 = *(v1 + 240);
    v12 = *(v1 + 184);
    v13 = *(v1 + 144);
    v14 = *(v1 + 120);
    v15 = *(v1 + 200) + 1;
    v6[2] = v9 + 1;
    sub_21CAC9E84(v14, v6 + ((v11 + 32) & ~v11) + v10 * v9, type metadata accessor for PMAccount);
    v3(v1 + 16, 0);

    sub_21C719840(v13, type metadata accessor for PMAccount);
    if (v15 == v12)
    {
      break;
    }

    v16 = *(v1 + 192);
    v17 = *(v1 + 200) + 1;
    *(v1 + 200) = v17;
    *(v1 + 208) = v49;
    v18 = *(v1 + 144);
    v20 = *(v1 + 96);
    v19 = *(v1 + 104);
    sub_21CACA770(*(v1 + 64) + ((*(v1 + 240) + 32) & ~*(v1 + 240)) + v16 * v17, v18, type metadata accessor for PMAccount);
    sub_21CACA770(v18 + *(v19 + 24), v20, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = *(v1 + 96);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C719840(v22, type metadata accessor for PMAccount.Storage);
      goto LABEL_27;
    }

    v23 = *v22;
    v24 = [*v22 credentialTypes];

    if ((v24 - 8) >= 2)
    {
      if (v24 == 4)
      {
        v2 = *(v1 + 184);
        if (v2 != 1)
        {
          goto LABEL_2;
        }

        v25 = *(v1 + 136);
        v26 = *(v1 + 104);
        v27 = *(v1 + 88);
        sub_21CACA770(*(v1 + 64) + ((*(v1 + 240) + 32) & ~*(v1 + 240)), v25, type metadata accessor for PMAccount);
        sub_21CACA770(v25 + *(v26 + 24), v27, type metadata accessor for PMAccount.Storage);
        v28 = swift_getEnumCaseMultiPayload();
        v29 = *(v1 + 136);
        v30 = *(v1 + 88);
        if (v28 == 1)
        {
          goto LABEL_18;
        }

        v31 = *v30;
        v32 = [*v30 credentialTypes];

        sub_21C719840(v29, type metadata accessor for PMAccount);
        v2 = 1;
        if (v32 != 4)
        {
          goto LABEL_2;
        }

        v47 = swift_task_alloc();
        *(v1 + 216) = v47;
        *v47 = v1;
        v48 = sub_21CABB224;
        goto LABEL_28;
      }

LABEL_27:
      v47 = swift_task_alloc();
      *(v1 + 232) = v47;
      *v47 = v1;
      v48 = sub_21CABBAE8;
LABEL_28:
      v47[1] = v48;
      v41 = *(v1 + 144);
      v42 = 3;
      goto LABEL_29;
    }

    if (v49 == 1)
    {
      v33 = *(v1 + 128);
      v34 = *(v1 + 104);
      v35 = *(v1 + 80);
      sub_21CACA770(*(v1 + 64) + ((*(v1 + 240) + 32) & ~*(v1 + 240)), v33, type metadata accessor for PMAccount);
      sub_21CACA770(v33 + *(v34 + 24), v35, type metadata accessor for PMAccount.Storage);
      v36 = swift_getEnumCaseMultiPayload();
      v37 = v36;
      v29 = *(v1 + 128);
      v30 = *(v1 + 80);
      if (v37 == 1)
      {
LABEL_18:
        sub_21C719840(v30, type metadata accessor for PMAccount.Storage);
        sub_21C719840(v29, type metadata accessor for PMAccount);
        v2 = 1;
        goto LABEL_2;
      }

      v38 = *v30;
      v39 = [*v30 credentialTypes];

      sub_21C719840(v29, type metadata accessor for PMAccount);
      v2 = 1;
      if (v39 == 9)
      {
        v40 = swift_task_alloc();
        *(v1 + 224) = v40;
        *v40 = v1;
        v40[1] = sub_21CABB9C8;
        v41 = *(v1 + 144);
        v42 = 9;
LABEL_29:

        return sub_21CAB8E98(v42, v41, 0);
      }

      goto LABEL_2;
    }
  }

  v43 = *(v1 + 56);
  swift_getKeyPath(aX_72);
  swift_getKeyPath(a8_41);
  *(v1 + 244) = 1;

  sub_21CB81DC4();
  v44 = *(v43 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v44)
  {
    v44(0, 255);
  }

  *(*(v1 + 48) + *(v1 + 176)) = 0;
  sub_21C6EC92C();

  v45 = *(v1 + 8);

  return v45();
}

uint64_t sub_21CABB9C8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21CACA848, v3, v2);
}

uint64_t sub_21CABBAE8()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21CABBC08, v3, v2);
}

uint64_t sub_21CABBC08(__n128 a1)
{
  v2 = *(v1 + 208);
LABEL_2:
  v49 = v2;
  while (1)
  {
    sub_21CACA770(*(v1 + 144), *(v1 + 120), type metadata accessor for PMAccount);
    swift_getKeyPath(byte_21CBC5610);
    swift_getKeyPath(aP_103);
    v3 = sub_21CB81DA4();
    v5 = v4;
    v6 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_21CA4F1B8(0, v6[2] + 1, 1, v6);
      *v5 = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_21CA4F1B8((v8 > 1), v9 + 1, 1, v6);
      *v5 = v6;
    }

    v10 = *(v1 + 192);
    v11 = *(v1 + 240);
    v12 = *(v1 + 184);
    v13 = *(v1 + 144);
    v14 = *(v1 + 120);
    v15 = *(v1 + 200) + 1;
    v6[2] = v9 + 1;
    sub_21CAC9E84(v14, v6 + ((v11 + 32) & ~v11) + v10 * v9, type metadata accessor for PMAccount);
    v3(v1 + 16, 0);

    sub_21C719840(v13, type metadata accessor for PMAccount);
    if (v15 == v12)
    {
      break;
    }

    v16 = *(v1 + 192);
    v17 = *(v1 + 200) + 1;
    *(v1 + 200) = v17;
    *(v1 + 208) = v49;
    v18 = *(v1 + 144);
    v20 = *(v1 + 96);
    v19 = *(v1 + 104);
    sub_21CACA770(*(v1 + 64) + ((*(v1 + 240) + 32) & ~*(v1 + 240)) + v16 * v17, v18, type metadata accessor for PMAccount);
    sub_21CACA770(v18 + *(v19 + 24), v20, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = *(v1 + 96);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C719840(v22, type metadata accessor for PMAccount.Storage);
      goto LABEL_27;
    }

    v23 = *v22;
    v24 = [*v22 credentialTypes];

    if ((v24 - 8) >= 2)
    {
      if (v24 == 4)
      {
        v2 = *(v1 + 184);
        if (v2 != 1)
        {
          goto LABEL_2;
        }

        v25 = *(v1 + 136);
        v26 = *(v1 + 104);
        v27 = *(v1 + 88);
        sub_21CACA770(*(v1 + 64) + ((*(v1 + 240) + 32) & ~*(v1 + 240)), v25, type metadata accessor for PMAccount);
        sub_21CACA770(v25 + *(v26 + 24), v27, type metadata accessor for PMAccount.Storage);
        v28 = swift_getEnumCaseMultiPayload();
        v29 = *(v1 + 136);
        v30 = *(v1 + 88);
        if (v28 == 1)
        {
          goto LABEL_18;
        }

        v31 = *v30;
        v32 = [*v30 credentialTypes];

        sub_21C719840(v29, type metadata accessor for PMAccount);
        v2 = 1;
        if (v32 != 4)
        {
          goto LABEL_2;
        }

        v47 = swift_task_alloc();
        *(v1 + 216) = v47;
        *v47 = v1;
        v48 = sub_21CABB224;
        goto LABEL_28;
      }

LABEL_27:
      v47 = swift_task_alloc();
      *(v1 + 232) = v47;
      *v47 = v1;
      v48 = sub_21CABBAE8;
LABEL_28:
      v47[1] = v48;
      v41 = *(v1 + 144);
      v42 = 3;
      goto LABEL_29;
    }

    if (v49 == 1)
    {
      v33 = *(v1 + 128);
      v34 = *(v1 + 104);
      v35 = *(v1 + 80);
      sub_21CACA770(*(v1 + 64) + ((*(v1 + 240) + 32) & ~*(v1 + 240)), v33, type metadata accessor for PMAccount);
      sub_21CACA770(v33 + *(v34 + 24), v35, type metadata accessor for PMAccount.Storage);
      v36 = swift_getEnumCaseMultiPayload();
      v37 = v36;
      v29 = *(v1 + 128);
      v30 = *(v1 + 80);
      if (v37 == 1)
      {
LABEL_18:
        sub_21C719840(v30, type metadata accessor for PMAccount.Storage);
        sub_21C719840(v29, type metadata accessor for PMAccount);
        v2 = 1;
        goto LABEL_2;
      }

      v38 = *v30;
      v39 = [*v30 credentialTypes];

      sub_21C719840(v29, type metadata accessor for PMAccount);
      v2 = 1;
      if (v39 == 9)
      {
        v40 = swift_task_alloc();
        *(v1 + 224) = v40;
        *v40 = v1;
        v40[1] = sub_21CABB9C8;
        v41 = *(v1 + 144);
        v42 = 9;
LABEL_29:

        return sub_21CAB8E98(v42, v41, 0);
      }

      goto LABEL_2;
    }
  }

  v43 = *(v1 + 56);
  swift_getKeyPath(aX_72);
  swift_getKeyPath(a8_41);
  *(v1 + 244) = 1;

  sub_21CB81DC4();
  v44 = *(v43 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v44)
  {
    v44(0, 255);
  }

  *(*(v1 + 48) + *(v1 + 176)) = 0;
  sub_21C6EC92C();

  v45 = *(v1 + 8);

  return v45();
}

void sub_21CABC28C(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v30 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v29 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = (&v29 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v20 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21CACA770(a1 + v20, v13, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAC9E84(v13, v5, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v5[*(v3 + 72)], v16, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v5, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v21 = *v13;
    sub_21CB85B94();
  }

  sub_21C716934(v16, v19, &unk_27CDF20B0, &unk_21CBA0090);
  v22 = sub_21CB85C44();
  v23 = (*(*(v22 - 8) + 48))(v19, 1, v22);
  sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CACA770(a1 + v20, v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719840(v10, type metadata accessor for PMAccount.Storage);
LABEL_8:
    sub_21CABC658(a1);
    return;
  }

  v24 = *v10;
  if (v23 == 1)
  {
LABEL_7:

    goto LABEL_8;
  }

  v25 = a1 + v20;
  v26 = v30;
  sub_21CACA770(v25, v30, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719840(v26, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v27 = *v26;
    v28 = [v27 isCurrentUserOriginalContributor];

    if (v28)
    {
      goto LABEL_7;
    }
  }

  [*(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore) unshareSignInWithAppleSavedAccount_];
}

void sub_21CABC658(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [objc_opt_self() defaultStore];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 aa_primaryAppleAccount];

    if (v14)
    {
      v15 = [v14 aa_altDSID];

      if (v15)
      {
        sub_21CACA770(a1 + *(v2 + 24), v11, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          sub_21C719840(v11, type metadata accessor for PMAccount.Storage);
        }

        else
        {
          v16 = *v11;
          v17 = [*v11 signInWithAppleAccount];
          if (v17)
          {
            v18 = v17;
            v34[0] = [objc_allocWithZone(MEMORY[0x277CF02E0]) init];
            v19 = [objc_allocWithZone(MEMORY[0x277CF02E8]) initWithAltDSID_];

            [v19 setSignInWithAppleAccount_];
            v20 = sub_21CB858E4();
            (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
            sub_21CACA770(a1, v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccount);
            sub_21CB858B4();
            v21 = v3;
            v34[0] = v34[0];
            v22 = v19;
            v23 = v18;
            v24 = v34[1];

            v25 = v16;
            v26 = sub_21CB858A4();
            v27 = (*(v21 + 80) + 72) & ~*(v21 + 80);
            v28 = swift_allocObject();
            v29 = MEMORY[0x277D85700];
            *(v28 + 16) = v26;
            *(v28 + 24) = v29;
            v30 = v34[0];
            *(v28 + 32) = v34[0];
            *(v28 + 40) = v22;
            *(v28 + 48) = v23;
            *(v28 + 56) = v24;
            *(v28 + 64) = v25;
            sub_21CAC9E84(v5, v28 + v27, type metadata accessor for PMAccount);
            sub_21C98B308(0, 0, v8, &unk_21CBC5768, v28);

LABEL_13:
            return;
          }
        }
      }

      if (qword_27CDEA478 != -1)
      {
        swift_once();
      }

      v31 = sub_21CB81C84();
      __swift_project_value_buffer(v31, qword_27CE186F8);
      v25 = sub_21CB81C64();
      v32 = sub_21CB85AF4();
      if (os_log_type_enabled(v25, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21C6E5000, v25, v32, "Unable to revoke Sign in with Apple account due to missing altDSID or account", v33, 2u);
        MEMORY[0x21CF16D90](v33, -1, -1);
      }

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21CABCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a8;
  v8[31] = v13;
  v8[28] = a6;
  v8[29] = a7;
  v8[26] = a4;
  v8[27] = a5;
  sub_21CB858B4();
  v8[32] = sub_21CB858A4();
  v10 = sub_21CB85874();
  v8[33] = v10;
  v8[34] = v9;

  return MEMORY[0x2822009F8](sub_21CABCBA4, v10, v9);
}

uint64_t sub_21CABCBA4()
{
  v2 = v0[26];
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_21CABCCC4;
  v3 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4468, &qword_21CBBA910);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21CAB18DC;
  v0[21] = &block_descriptor_107;
  v0[22] = v3;
  [v2 revokeAcccountWithContext:v1 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CABCCC4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 272);
  v4 = *(v1 + 264);
  if (v2)
  {
    v5 = sub_21CABD35C;
  }

  else
  {
    v5 = sub_21CABCDF4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CABCDF4()
{
  v19 = v0;
  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_21CB81C84();
  v0[36] = __swift_project_value_buffer(v2, qword_27CE186F8);
  v3 = v1;
  v4 = sub_21CB81C64();
  v5 = sub_21CB85AE4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [v6 localizedAppName];
    v10 = sub_21CB855C4();
    v12 = v11;

    v13 = sub_21C98E004(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_21C6E5000, v4, v5, "Successfully revoked Sign in with Apple account for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x21CF16D90](v8, -1, -1);
    MEMORY[0x21CF16D90](v7, -1, -1);
  }

  v14 = v0[30];
  v15 = *(v0[29] + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v0[37] = v15;
  v0[10] = v0;
  v0[11] = sub_21CABD078;
  v16 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21CAB1570;
  v0[21] = &block_descriptor_110;
  v0[22] = v16;
  [v15 removeCredentialTypes:4 forSavedAccount:v14 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_21CABD078()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x2822009F8](sub_21CABD180, v2, v1);
}

uint64_t sub_21CABD180()
{
  v1 = v0[37];
  v2 = v0[31];

  swift_getKeyPath(aP_98);
  swift_getKeyPath(aP_99);
  sub_21CB81DB4();

  v3 = v0[18];
  v4 = v2[1];
  v0[18] = *v2;
  v0[19] = v4;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 18;
  v7 = sub_21C862E50(sub_21C96C50C, v6, v5, v3);
  LOBYTE(v2) = v8;

  if (v2)
  {
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Failed to find account to delete in accountsState.accounts", v11, 2u);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v12 = sub_21CACA8AC(v7);
    swift_endAccess();

    sub_21CAB51FC();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21CABD35C()
{

  swift_willThrow();
  if (qword_27CDEA478 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = sub_21CB81C84();
  __swift_project_value_buffer(v2, qword_27CE186F8);
  v3 = v1;
  v4 = sub_21CB81C64();
  v5 = sub_21CB85AF4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 280);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21C6E5000, v4, v5, "Revoking Sign in with Apple account failed with error: %{public}@", v8, 0xCu);
    sub_21C6EA794(v9, &unk_27CDF76B0, &qword_21CBA2BE0);
    MEMORY[0x21CF16D90](v9, -1, -1);
    MEMORY[0x21CF16D90](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21CABD54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  type metadata accessor for PMBulkOperationProgress(0);
  swift_allocObject();

  sub_21C71DD5C(a2, a3);
  v18 = sub_21C94C1A0(2, a1, a5, v17);
  v19 = sub_21CB858E4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  sub_21CB858B4();

  v20 = sub_21CB858A4();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v10;
  v21[5] = v18;
  v21[6] = a1;
  sub_21C98B308(0, 0, v16, a7, v21);

  return v18;
}

uint64_t sub_21CABD708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v6[26] = type metadata accessor for PMAccount.Storage(0);
  v6[27] = swift_task_alloc();
  v7 = type metadata accessor for PMAccount(0);
  v6[28] = v7;
  v6[29] = *(v7 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = sub_21CB858B4();
  v6[34] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v6[35] = v9;
  v6[36] = v8;

  return MEMORY[0x2822009F8](sub_21CABD84C, v9, v8);
}

uint64_t sub_21CABD84C(__n128 a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 176) = MEMORY[0x277D84F90];
  v3 = *(v1 + 200);
  *(*(v1 + 184) + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 1;
  v4 = *(v3 + 16);
  *(v1 + 296) = v4;
  if (v4)
  {
    v5 = *(v1 + 232);
    v6 = *(v1 + 200);
    *(v1 + 304) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore;
    v7 = *(v5 + 80);
    *(v1 + 384) = v7;
    v8 = *(v5 + 72);
    *(v1 + 320) = 0;
    *(v1 + 328) = v2;
    *(v1 + 312) = v8;
    sub_21CACA770(v6 + ((v7 + 32) & ~v7), *(v1 + 256), type metadata accessor for PMAccount);
    *(v1 + 336) = sub_21CB858A4();
    v10 = sub_21CB85874();
    *(v1 + 344) = v10;
    *(v1 + 352) = v9;

    return MEMORY[0x2822009F8](sub_21CABD9F0, v10, v9);
  }

  else
  {

    sub_21CAC35C8(*(v1 + 184), (v1 + 176), *(v1 + 192));

    v11 = *(v1 + 8);

    return v11();
  }
}

uint64_t sub_21CABD9F0(__n128 a1)
{
  sub_21CACA770(v1[32] + *(v1[28] + 24), v1[27], type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v1[27];

    sub_21C719840(v2, type metadata accessor for PMAccount.Storage);
    sub_21CAC9FBC();
    v3 = swift_allocError();
    swift_willThrow();
    v1[47] = v3;
    v4 = v1[35];
    v5 = v1[36];

    return MEMORY[0x2822009F8](sub_21CABDDDC, v4, v5);
  }

  else
  {
    v6 = v1[38];
    v7 = v1[27];
    v8 = v1[23];
    v9 = *v7;
    v1[45] = *v7;
    v10 = *(v8 + v6);
    v1[46] = v10;
    v1[2] = v1;
    v1[7] = v1 + 388;
    v1[3] = sub_21CABDC0C;
    v11 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_21C7A1808;
    v1[13] = &block_descriptor_100;
    v1[14] = v11;
    [v10 _recoverRecentlyDeletedSavedAccount_completionHandler_];

    return MEMORY[0x282200938](v1 + 2);
  }
}

uint64_t sub_21CABDC0C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);

  return MEMORY[0x2822009F8](sub_21CABDD14, v2, v1);
}

uint64_t sub_21CABDD14()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 388);

  v3 = *(v0 + 360);
  if (v2)
  {

    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    v6 = sub_21CABE17C;
  }

  else
  {
    sub_21CAC9FBC();
    v7 = swift_allocError();
    swift_willThrow();

    *(v0 + 376) = v7;
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    v6 = sub_21CABDDDC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21CABDDDC(__n128 a1)
{
  sub_21CACA770(*(v1 + 256), *(v1 + 248), type metadata accessor for PMAccount);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, *(v1 + 328));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CA4F1B8((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v1 + 312);
  v7 = *(v1 + 248);
  v8 = (*(v1 + 384) + 32) & ~*(v1 + 384);

  v3[2] = v5 + 1;
  sub_21CAC9E84(v7, v3 + v8 + v6 * v5, type metadata accessor for PMAccount);
  *(v1 + 176) = v3;
  sub_21CACA770(*(v1 + 256), *(v1 + 240), type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC5610);
  swift_getKeyPath(aP_103);
  v27 = sub_21CB81DA4();
  v10 = v9;
  v11 = *v9;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((v12 & 1) == 0)
  {
    v11 = sub_21CA4F1B8(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_21CA4F1B8((v13 > 1), v14 + 1, 1, v11);
    *v10 = v11;
  }

  v15 = *(v1 + 312);
  v16 = *(v1 + 384);
  v17 = *(v1 + 296);
  v18 = *(v1 + 256);
  v19 = *(v1 + 240);
  v20 = *(v1 + 320) + 1;
  v11[2] = v14 + 1;
  sub_21CAC9E84(v19, v11 + ((v16 + 32) & ~v16) + v15 * v14, type metadata accessor for PMAccount);
  v27(v1 + 144, 0);

  sub_21C719840(v18, type metadata accessor for PMAccount);
  if (v20 == v17)
  {

    sub_21CAC35C8(*(v1 + 184), (v1 + 176), *(v1 + 192));

    v21 = *(v1 + 8);

    return v21();
  }

  else
  {
    v23 = *(v1 + 312);
    v24 = *(v1 + 320) + 1;
    *(v1 + 320) = v24;
    *(v1 + 328) = v3;
    sub_21CACA770(*(v1 + 200) + ((*(v1 + 384) + 32) & ~*(v1 + 384)) + v23 * v24, *(v1 + 256), type metadata accessor for PMAccount);
    *(v1 + 336) = sub_21CB858A4();
    v26 = sub_21CB85874();
    *(v1 + 344) = v26;
    *(v1 + 352) = v25;

    return MEMORY[0x2822009F8](sub_21CABD9F0, v26, v25);
  }
}

uint64_t sub_21CABE17C(__n128 a1)
{
  v21 = *(v1 + 328);
  sub_21CACA770(*(v1 + 256), *(v1 + 240), type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC5610);
  swift_getKeyPath(aP_103);
  v20 = sub_21CB81DA4();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21CA4F1B8(0, v4[2] + 1, 1, v4);
    *v3 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_21CA4F1B8((v6 > 1), v7 + 1, 1, v4);
    *v3 = v4;
  }

  v8 = *(v1 + 312);
  v9 = *(v1 + 384);
  v10 = *(v1 + 296);
  v11 = *(v1 + 256);
  v12 = *(v1 + 240);
  v13 = *(v1 + 320) + 1;
  v4[2] = v7 + 1;
  sub_21CAC9E84(v12, v4 + ((v9 + 32) & ~v9) + v8 * v7, type metadata accessor for PMAccount);
  v20(v1 + 144, 0);

  sub_21C719840(v11, type metadata accessor for PMAccount);
  if (v13 == v10)
  {

    sub_21CAC35C8(*(v1 + 184), (v1 + 176), *(v1 + 192));

    v14 = *(v1 + 8);

    return v14();
  }

  else
  {
    v16 = *(v1 + 312);
    v17 = *(v1 + 320) + 1;
    *(v1 + 320) = v17;
    *(v1 + 328) = v21;
    sub_21CACA770(*(v1 + 200) + ((*(v1 + 384) + 32) & ~*(v1 + 384)) + v16 * v17, *(v1 + 256), type metadata accessor for PMAccount);
    *(v1 + 336) = sub_21CB858A4();
    v19 = sub_21CB85874();
    *(v1 + 344) = v19;
    *(v1 + 352) = v18;

    return MEMORY[0x2822009F8](sub_21CABD9F0, v19, v18);
  }
}

uint64_t sub_21CABE494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v6[31] = type metadata accessor for PMAccount.MockData(0);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = type metadata accessor for PMAccount.Storage(0);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7680, &qword_21CBB4E30);
  v6[40] = swift_task_alloc();
  v7 = sub_21CB85C44();
  v6[41] = v7;
  v6[42] = *(v7 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v6[49] = swift_task_alloc();
  v6[50] = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v6[51] = swift_task_alloc();
  type metadata accessor for PMAccount.CombinedUniqueID(0);
  v6[52] = swift_task_alloc();
  v6[53] = type metadata accessor for PMAccount.UniqueID(0);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  v6[57] = swift_task_alloc();
  v8 = type metadata accessor for PMAccount(0);
  v6[58] = v8;
  v6[59] = *(v8 - 8);
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = sub_21CB858B4();
  v6[66] = sub_21CB858A4();
  v10 = sub_21CB85874();
  v6[67] = v10;
  v6[68] = v9;

  return MEMORY[0x2822009F8](sub_21CABE858, v10, v9);
}

uint64_t sub_21CABE858(__n128 a1)
{
  v4 = MEMORY[0x277D84F90];
  *(v1 + 208) = MEMORY[0x277D84F90];
  v5 = v1 + 208;
  v6 = *(v1 + 240);
  *(*(v1 + 224) + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 1;
  v7 = *(v6 + 16);
  *(v1 + 552) = v7;
  if (!v7)
  {

    sub_21CAC35C8(*(v1 + 224), (v1 + 208), *(v1 + 232));

    v103 = *(v1 + 8);

    return v103();
  }

  v8 = *(v1 + 512);
  v9 = *(v1 + 472);
  v10 = *(v1 + 240);
  *(v1 + 560) = *(*(v1 + 224) + 16);
  v11 = *(v9 + 80);
  *(v1 + 664) = v11;
  *(v1 + 568) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore;
  *(v1 + 576) = *(v9 + 72);
  *(v1 + 592) = v4;
  *(v1 + 584) = 0;
  sub_21CACA770(v10 + ((v11 + 32) & ~v11), v8, type metadata accessor for PMAccount);
  KeyPath = swift_getKeyPath(byte_21CBC5730);
  sub_21CB81DB4();

  v13 = *(v1 + 216);
  v122 = *(v13 + 16);
  if (!v122)
  {
LABEL_84:

    goto LABEL_85;
  }

  v14 = 0;
  v15 = *(v1 + 512);
  v121 = v13 + ((*(v1 + 664) + 32) & ~*(v1 + 664));
  v17 = *v15;
  v16 = v15[1];
  v119 = *(v1 + 216);
  v120 = v16;
  while (v14 < *(v13 + 16))
  {
    v5 = *(v1 + 504);
    sub_21CACA770(v121 + *(v1 + 576) * v14, v5, type metadata accessor for PMAccount);
    v22 = *v5 == v17 && *(v5 + 8) == v16;
    if (!v22 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_7;
    }

    v3 = *(v1 + 512);
    v5 = *(v1 + 456);
    v23 = *(*(v1 + 464) + 20);
    v2 = *(*(v1 + 448) + 48);
    KeyPath = type metadata accessor for PMAccount.UniqueID;
    sub_21CACA770(*(v1 + 504) + v23, v5, type metadata accessor for PMAccount.UniqueID);
    sub_21CACA770(&v3[v23], v5 + v2, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = *(v1 + 456);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CACA770(v25, *(v1 + 432), type metadata accessor for PMAccount.UniqueID);
      v26 = swift_getEnumCaseMultiPayload();
      v27 = *(v1 + 432);
      if (v26 != 1)
      {
        v18 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_5;
      }

      v28 = *(v1 + 408);
      sub_21CAC9E84(v5 + v2, v28, type metadata accessor for PMAccount.SIWAUniqueID);
      v29 = v27[1];
      v30 = v28[1];
      if (v29)
      {
        if (!v30 || (*v27 != *v28 || v29 != v30) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      else if (v30)
      {
        goto LABEL_77;
      }

      v43 = *(v1 + 432);
      v2 = *(v1 + 408);
      if (v43[2] != *(v2 + 16) || v43[3] != *(v2 + 24))
      {
        if ((sub_21CB86344() & 1) == 0)
        {
          goto LABEL_77;
        }

        v43 = *(v1 + 432);
        v2 = *(v1 + 408);
      }

      v44 = v43[5];
      v45 = *(v2 + 40);
      if (v44)
      {
        if (!v45)
        {
          goto LABEL_77;
        }

        if (v43[4] != *(v2 + 32) || v44 != v45)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_77;
          }

          v2 = *(v1 + 408);
        }
      }

      else if (v45)
      {
        goto LABEL_77;
      }

      sub_21CB85B74();
      sub_21C6EADA4(&qword_27CDEB3C0, MEMORY[0x277D49930], MEMORY[0x277D49940]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (*(v1 + 176) == *(v1 + 192) && *(v1 + 184) == *(v1 + 200))
      {
      }

      else
      {
        v68 = sub_21CB86344();

        if ((v68 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v69 = *(v1 + 432);
      v70 = *(v1 + 400);
      v2 = *(v1 + 408);
      v71 = *(v70 + 32);
      v72 = (v69 + v71);
      v73 = *(v69 + v71 + 8);
      v74 = (v2 + v71);
      v75 = v74[1];
      if (v73)
      {
        if (!v75)
        {
          goto LABEL_77;
        }

        if (*v72 != *v74 || v73 != v75)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_77;
          }

          v69 = *(v1 + 432);
          v70 = *(v1 + 400);
          v2 = *(v1 + 408);
        }
      }

      else if (v75)
      {
        goto LABEL_77;
      }

      v80 = *(v1 + 392);
      v81 = *(v1 + 336);
      v118 = *(v1 + 328);
      v82 = *(v70 + 36);
      v83 = *(*(v1 + 384) + 48);
      sub_21C6EDBAC(v69 + v82, v80, &unk_27CDF20B0, &unk_21CBA0090);
      v3 = v83;
      sub_21C6EDBAC(v2 + v82, &v83[v80], &unk_27CDF20B0, &unk_21CBA0090);
      v2 = *(v81 + 48);
      if ((v2)(v80, 1, v118) == 1)
      {
        if ((v2)(&v83[v80], 1, *(v1 + 328)) != 1)
        {
          goto LABEL_76;
        }

        sub_21C6EA794(*(v1 + 392), &unk_27CDF20B0, &unk_21CBA0090);
      }

      else
      {
        v84 = *(v1 + 328);
        sub_21C6EDBAC(*(v1 + 392), *(v1 + 376), &unk_27CDF20B0, &unk_21CBA0090);
        if ((v2)(&v3[v80], 1, v84) == 1)
        {
          (*(*(v1 + 336) + 8))(*(v1 + 376), *(v1 + 328));
LABEL_76:
          sub_21C6EA794(*(v1 + 392), &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_77:
          v5 = *(v1 + 456);
          v85 = *(v1 + 432);
          KeyPath = type metadata accessor for PMAccount.SIWAUniqueID;
          sub_21C719840(*(v1 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C719840(v85, type metadata accessor for PMAccount.SIWAUniqueID);
          v42 = type metadata accessor for PMAccount.UniqueID;
          v40 = v5;
LABEL_78:
          sub_21C719840(v40, v42);
LABEL_79:
          v16 = v120;
          goto LABEL_7;
        }

        v118 = *(v1 + 392);
        v89 = *(v1 + 376);
        v90 = *(v1 + 336);
        v2 = *(v1 + 344);
        v91 = *(v1 + 328);
        (*(v90 + 32))(v2, &v3[v80], v91);
        sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v3 = v89;
        v92 = sub_21CB85574();
        v93 = *(v90 + 8);
        v93(v2, v91);
        v93(v89, v91);
        sub_21C6EA794(v118, &unk_27CDF20B0, &unk_21CBA0090);
        if ((v92 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      v94 = *(v1 + 432);
      sub_21C719840(*(v1 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
      sub_21C719840(v94, type metadata accessor for PMAccount.SIWAUniqueID);
    }

    else
    {
      sub_21CACA770(v25, *(v1 + 440), type metadata accessor for PMAccount.UniqueID);
      v31 = swift_getEnumCaseMultiPayload();
      v27 = *(v1 + 440);
      if (v31 == 1)
      {
        v18 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_5:
        sub_21C719840(v27, v18);
        v16 = v120;
        v19 = *(v1 + 456);
        v20 = &qword_27CDEB3C8;
        v21 = &unk_21CBB0010;
        goto LABEL_6;
      }

      KeyPath = *(v1 + 416);
      sub_21CAC9E84(v5 + v2, KeyPath, type metadata accessor for PMAccount.CombinedUniqueID);
      v5 = sub_21C7D1A58(v27, KeyPath);
      v2 = type metadata accessor for PMAccount.CombinedUniqueID;
      sub_21C719840(KeyPath, type metadata accessor for PMAccount.CombinedUniqueID);
      sub_21C719840(v27, type metadata accessor for PMAccount.CombinedUniqueID);
      if ((v5 & 1) == 0)
      {
        v40 = *(v1 + 456);
        v41 = type metadata accessor for PMAccount.UniqueID;
        goto LABEL_30;
      }
    }

    v3 = *(v1 + 504);
    v32 = *(v1 + 512);
    v33 = *(v1 + 464);
    v34 = *(v1 + 312);
    v5 = *(v1 + 320);
    sub_21C719840(*(v1 + 456), type metadata accessor for PMAccount.UniqueID);
    v35 = *(v33 + 24);
    v2 = *(v34 + 48);
    sub_21CACA770(&v3[v35], v5, type metadata accessor for PMAccount.Storage);
    sub_21CACA770(v32 + v35, v5 + v2, type metadata accessor for PMAccount.Storage);
    v36 = swift_getEnumCaseMultiPayload();
    v37 = *(v1 + 320);
    KeyPath = *(v1 + 272);
    if (v36 == 1)
    {
      sub_21CACA770(v37, *(v1 + 296), type metadata accessor for PMAccount.Storage);
      v38 = swift_getEnumCaseMultiPayload();
      v39 = *(v1 + 296);
      if (v38 != 1)
      {
        sub_21C719840(*(v1 + 296), type metadata accessor for PMAccount.MockData);
LABEL_45:
        v13 = v119;
        v16 = v120;
        v19 = *(v1 + 320);
        v20 = &unk_27CDF7680;
        v21 = &qword_21CBB4E30;
LABEL_6:
        sub_21C6EA794(v19, v20, v21);
        goto LABEL_7;
      }

      KeyPath = *(v1 + 264);
      sub_21CAC9E84(v5 + v2, KeyPath, type metadata accessor for PMAccount.MockData);
      v5 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v39, KeyPath);
      v2 = type metadata accessor for PMAccount.MockData;
      sub_21C719840(KeyPath, type metadata accessor for PMAccount.MockData);
      sub_21C719840(v39, type metadata accessor for PMAccount.MockData);
      v13 = v119;
      if ((v5 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v46 = *(v1 + 304);
      sub_21CACA770(v37, v46, type metadata accessor for PMAccount.Storage);
      v47 = *v46;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        goto LABEL_45;
      }

      KeyPath = *(v5 + v2);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v5 = sub_21CB85DD4();

      v13 = v119;
      if ((v5 & 1) == 0)
      {
LABEL_27:
        v40 = *(v1 + 320);
        v41 = type metadata accessor for PMAccount.Storage;
LABEL_30:
        v42 = v41;
        goto LABEL_78;
      }
    }

    v48 = *(v1 + 504);
    v49 = *(v1 + 512);
    v50 = *(v1 + 464);
    sub_21C719840(*(v1 + 320), type metadata accessor for PMAccount.Storage);
    v51 = *(v50 + 28);
    v5 = *(v48 + v51);
    v52 = *(v48 + v51 + 8);
    v53 = *(v48 + v51 + 16);
    v54 = *(v48 + v51 + 24);
    v55 = v49 + v51;
    KeyPath = *v55;
    v56 = *(v55 + 8);
    v2 = *(v55 + 16);
    v3 = *(v55 + 24);
    v117 = v56;
    if (!v52)
    {
      v76 = 0;
      v118 = v53;
      v116 = v54;
      v77 = v54;
      v78 = *(v55 + 8);
      sub_21C7D33AC(v5, 0, v53, v77);
      if (!v78)
      {
        goto LABEL_99;
      }

      sub_21C7D33AC(KeyPath, v78, v2, v3);
      v79 = v118;
      v54 = v116;
LABEL_72:
      sub_21C7D33F0(v5, v76, v79, v54);
      v64 = KeyPath;
      v65 = v117;
      v66 = v2;
      v67 = v3;
LABEL_73:
      sub_21C7D33F0(v64, v65, v66, v67);
      goto LABEL_79;
    }

    if (!v56)
    {
      v76 = v52;
      v118 = v53;
      sub_21C7D33AC(v5, v52, v53, v54);
      sub_21C7D33AC(KeyPath, 0, v2, v3);
      sub_21C7D33AC(v5, v76, v118, v54);

      v79 = v118;
      goto LABEL_72;
    }

    v115 = *(v55 + 24);
    v116 = *v55;
    if (v5 != KeyPath || v52 != v56) && (v57 = v52, v58 = v53, v59 = *(v55 + 8), v60 = sub_21CB86344(), v56 = v59, v52 = v57, v53 = v58, (v60 & 1) == 0) || ((v2 ^ v53))
    {
      v61 = v52;
      v118 = v53;
      v62 = v56;
      sub_21C7D33AC(v5, v52, v53, v54);
      KeyPath = v116;
      v63 = v62;
      v3 = v115;
      sub_21C7D33AC(v116, v63, v2, v115);
      sub_21C7D33AC(v5, v61, v118, v54);
      sub_21C7D33F0(v116, v117, v2, v115);

      v64 = v5;
      v65 = v61;
      v66 = v118;
      v67 = v54;
      goto LABEL_73;
    }

    v86 = v52;
    KeyPath = v53;
    v87 = v56;
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v114 = v5;
    sub_21C7D33AC(v5, v86, KeyPath, v54);
    v88 = v87;
    v3 = v115;
    sub_21C7D33AC(v116, v88, v2, v115);
    sub_21C7D33AC(v5, v86, KeyPath, v54);
    v5 = sub_21CB85DD4();
    sub_21C7D33F0(v116, v117, v2, v115);

    sub_21C7D33F0(v114, v86, KeyPath, v54);
    v16 = v120;
    if (v5)
    {

      goto LABEL_100;
    }

LABEL_7:
    sub_21C719840(*(v1 + 504), type metadata accessor for PMAccount);
    if (v122 == ++v14)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_99:
  sub_21C7D33AC(KeyPath, 0, v2, v3);

  sub_21C7D33F0(v5, 0, v118, v116);
LABEL_100:
  sub_21C719840(*(v1 + 504), type metadata accessor for PMAccount);
LABEL_85:
  v95 = *(v1 + 512);
  v96 = *(v1 + 288);
  v97 = *(*(v1 + 464) + 24);
  *(v1 + 668) = v97;
  sub_21CACA770(v95 + v97, v96, type metadata accessor for PMAccount.Storage);
  v98 = swift_getEnumCaseMultiPayload();
  v99 = *(v1 + 360);
  v100 = *(v1 + 288);
  if (v98 == 1)
  {
    v102 = *(v1 + 248);
    v101 = *(v1 + 256);
    sub_21CAC9E84(v100, v101, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v101 + *(v102 + 72), v99, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v101, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v105 = *v100;
    sub_21CB85B94();
  }

  v106 = *(v1 + 368);
  v107 = *(v1 + 328);
  v108 = *(v1 + 336);
  sub_21C716934(*(v1 + 360), v106, &unk_27CDF20B0, &unk_21CBA0090);
  LODWORD(v107) = (*(v108 + 48))(v106, 1, v107);
  sub_21C6EA794(v106, &unk_27CDF20B0, &unk_21CBA0090);
  if (v107 == 1)
  {
    *(v1 + 616) = sub_21CB858A4();
    v110 = sub_21CB85874();
    *(v1 + 624) = v110;
    *(v1 + 632) = v109;

    return MEMORY[0x2822009F8](sub_21CABFAD8, v110, v109);
  }

  else
  {
    (*(*(v1 + 336) + 56))(*(v1 + 352), 1, 1, *(v1 + 328));
    v111 = swift_task_alloc();
    *(v1 + 600) = v111;
    *v111 = v1;
    v111[1] = sub_21CABF8E4;
    v112 = *(v1 + 512);
    v113 = *(v1 + 352);

    return sub_21CAC4230(v112, v113, 0);
  }
}

uint64_t sub_21CABF8E4()
{
  v2 = *v1;
  (*v1)[76] = v0;

  sub_21C6EA794(v2[44], &unk_27CDF20B0, &unk_21CBA0090);
  v3 = v2[68];
  v4 = v2[67];
  if (v0)
  {
    v5 = sub_21CAC2334;
  }

  else
  {
    v5 = sub_21CABFA48;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CABFA48(uint64_t a1)
{
  v1[77] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[78] = v3;
  v1[79] = v2;

  return MEMORY[0x2822009F8](sub_21CABFAD8, v3, v2);
}

uint64_t sub_21CABFAD8(__n128 a1)
{
  sub_21CACA770(*(v1 + 512) + *(v1 + 668), *(v1 + 280), type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v1 + 280);

    sub_21C719840(v2, type metadata accessor for PMAccount.Storage);
    sub_21CAC9FBC();
    v3 = swift_allocError();
    swift_willThrow();
    *(v1 + 656) = v3;
    v4 = *(v1 + 544);
    v5 = *(v1 + 536);

    return MEMORY[0x2822009F8](sub_21CABFECC, v5, v4);
  }

  else
  {
    v6 = *(v1 + 568);
    v7 = *(v1 + 280);
    v8 = *(v1 + 224);
    v9 = *v7;
    *(v1 + 640) = *v7;
    v10 = *(v8 + v6);
    *(v1 + 648) = v10;
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 672;
    *(v1 + 24) = sub_21CABFCF4;
    v11 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
    *(v1 + 80) = MEMORY[0x277D85DD0];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_21C7A1808;
    *(v1 + 104) = &block_descriptor_89;
    *(v1 + 112) = v11;
    [v10 _recoverRecentlyDeletedSavedAccount_completionHandler_];

    return MEMORY[0x282200938](v1 + 16);
  }
}

uint64_t sub_21CABFCF4()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);

  return MEMORY[0x2822009F8](sub_21CABFDFC, v2, v1);
}

uint64_t sub_21CABFDFC()
{
  v1 = *(v0 + 648);

  v2 = *(v0 + 672);

  v3 = *(v0 + 640);
  if (v2)
  {

    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = sub_21CAC1160;
  }

  else
  {
    sub_21CAC9FBC();
    v7 = swift_allocError();
    swift_willThrow();

    *(v0 + 656) = v7;
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    v6 = sub_21CABFECC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CABFECC(__n128 a1)
{
  sub_21CACA770(*(v1 + 512), *(v1 + 496), type metadata accessor for PMAccount);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 592);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, *(v1 + 592));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CA4F1B8((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v1 + 576);
  v7 = *(v1 + 496);
  v8 = (*(v1 + 664) + 32) & ~*(v1 + 664);

  v3[2] = v5 + 1;
  sub_21CAC9E84(v7, v3 + v8 + v6 * v5, type metadata accessor for PMAccount);
  *(v1 + 208) = v3;
  sub_21CACA770(*(v1 + 512), *(v1 + 488), type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC5610);
  swift_getKeyPath(aP_103);
  v146 = sub_21CB81DA4();
  v10 = v9;
  v11 = *v9;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((v12 & 1) == 0)
  {
    v11 = sub_21CA4F1B8(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_21CA4F1B8((v13 > 1), v14 + 1, 1, v11);
    *v10 = v11;
  }

  v15 = *(v1 + 576);
  v16 = *(v1 + 664);
  v17 = *(v1 + 552);
  v18 = *(v1 + 512);
  v19 = *(v1 + 488);
  v20 = *(v1 + 584) + 1;
  v11[2] = v14 + 1;
  sub_21CAC9E84(v19, v11 + ((v16 + 32) & ~v16) + v15 * v14, type metadata accessor for PMAccount);
  v146();

  sub_21C719840(v18, type metadata accessor for PMAccount);
  if (v20 == v17)
  {

    sub_21CAC35C8(*(v1 + 224), (v1 + 208), *(v1 + 232));

    v21 = *(v1 + 8);

    return v21();
  }

  v23 = *(v1 + 584) + 1;
  *(v1 + 592) = v3;
  *(v1 + 584) = v23;
  v24 = *(v1 + 560);
  sub_21CACA770(*(v1 + 240) + ((*(v1 + 664) + 32) & ~*(v1 + 664)) + *(v1 + 576) * v23, *(v1 + 512), type metadata accessor for PMAccount);
  swift_getKeyPath(byte_21CBC5730);
  sub_21CB81DB4();

  v25 = *(v1 + 216);
  v148 = *(v25 + 16);
  v143 = v25;
  if (!v148)
  {
LABEL_95:

    goto LABEL_96;
  }

  v26 = 0;
  v147 = v25 + ((*(v1 + 664) + 32) & ~*(v1 + 664));
  v27 = *(v1 + 512);
  v28 = &unk_27CDF20B0;
  v29 = *v27;
  v30 = v27[1];
  v144 = v30;
  v145 = *v27;
  while (v26 < *(v25 + 16))
  {
    v24 = *(v1 + 504);
    sub_21CACA770(v147 + *(v1 + 576) * v26, v24, type metadata accessor for PMAccount);
    v31 = *v24 == v29 && *(v24 + 8) == v30;
    if (!v31 && (sub_21CB86344() & 1) == 0)
    {
      goto LABEL_17;
    }

    v11 = v28;
    v32 = *(v1 + 512);
    v24 = *(v1 + 456);
    v33 = *(*(v1 + 464) + 20);
    v18 = *(*(v1 + 448) + 48);
    sub_21CACA770(*(v1 + 504) + v33, v24, type metadata accessor for PMAccount.UniqueID);
    sub_21CACA770(v32 + v33, v24 + v18, type metadata accessor for PMAccount.UniqueID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v35 = *(v1 + 456);
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CACA770(v35, *(v1 + 432), type metadata accessor for PMAccount.UniqueID);
      v36 = swift_getEnumCaseMultiPayload();
      v37 = *(v1 + 432);
      if (v36 != 1)
      {
        v42 = type metadata accessor for PMAccount.SIWAUniqueID;
        goto LABEL_35;
      }

      v38 = *(v1 + 408);
      sub_21CAC9E84(v24 + v18, v38, type metadata accessor for PMAccount.SIWAUniqueID);
      v39 = v37[1];
      v40 = v38[1];
      v28 = v11;
      if (v39)
      {
        if (!v40 || (*v37 != *v38 || v39 != v40) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      else if (v40)
      {
        goto LABEL_89;
      }

      v57 = *(v1 + 432);
      v18 = *(v1 + 408);
      if (v57[2] != *(v18 + 16) || v57[3] != *(v18 + 24))
      {
        if ((sub_21CB86344() & 1) == 0)
        {
          goto LABEL_89;
        }

        v57 = *(v1 + 432);
        v18 = *(v1 + 408);
      }

      v58 = v57[5];
      v59 = *(v18 + 40);
      if (v58)
      {
        if (!v59)
        {
          goto LABEL_89;
        }

        if (v57[4] != *(v18 + 32) || v58 != v59)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_89;
          }

          v18 = *(v1 + 408);
        }
      }

      else if (v59)
      {
        goto LABEL_89;
      }

      sub_21CB85B74();
      sub_21C6EADA4(&qword_27CDEB3C0, MEMORY[0x277D49930], MEMORY[0x277D49940]);
      sub_21CB857F4();
      sub_21CB857F4();
      if (*(v1 + 176) == *(v1 + 192) && *(v1 + 184) == *(v1 + 200))
      {
      }

      else
      {
        v87 = sub_21CB86344();

        if ((v87 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v88 = *(v1 + 432);
      v89 = *(v1 + 400);
      v90 = *(v1 + 408);
      v91 = *(v89 + 32);
      v92 = (v88 + v91);
      v93 = *(v88 + v91 + 8);
      v94 = (v90 + v91);
      v95 = v94[1];
      if (v93)
      {
        if (!v95)
        {
          goto LABEL_89;
        }

        if (*v92 != *v94 || v93 != v95)
        {
          if ((sub_21CB86344() & 1) == 0)
          {
            goto LABEL_89;
          }

          v88 = *(v1 + 432);
          v89 = *(v1 + 400);
          v90 = *(v1 + 408);
        }
      }

      else if (v95)
      {
        goto LABEL_89;
      }

      v100 = *(v1 + 392);
      v101 = *(v1 + 336);
      v142 = *(v1 + 328);
      v102 = *(v89 + 36);
      v103 = *(*(v1 + 384) + 48);
      v104 = v90;
      sub_21C6EDBAC(v88 + v102, v100, v11, &unk_21CBA0090);
      v105 = v104 + v102;
      v106 = v100;
      sub_21C6EDBAC(v105, v100 + v103, v11, &unk_21CBA0090);
      v18 = *(v101 + 48);
      if ((v18)(v106, 1, v142) == 1)
      {
        if ((v18)(v106 + v103, 1, *(v1 + 328)) != 1)
        {
          goto LABEL_88;
        }

        sub_21C6EA794(*(v1 + 392), v11, &unk_21CBA0090);
      }

      else
      {
        v107 = *(v1 + 328);
        sub_21C6EDBAC(*(v1 + 392), *(v1 + 376), v11, &unk_21CBA0090);
        if ((v18)(v106 + v103, 1, v107) == 1)
        {
          (*(*(v1 + 336) + 8))(*(v1 + 376), *(v1 + 328));
LABEL_88:
          sub_21C6EA794(*(v1 + 392), &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_89:
          v24 = *(v1 + 456);
          v108 = *(v1 + 432);
          sub_21C719840(*(v1 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21C719840(v108, type metadata accessor for PMAccount.SIWAUniqueID);
          v86 = type metadata accessor for PMAccount.UniqueID;
          v85 = v24;
          goto LABEL_90;
        }

        v114 = *(v1 + 376);
        v115 = *(v1 + 336);
        v116 = *(v1 + 328);
        v141 = *(v1 + 344);
        v142 = *(v1 + 392);
        (*(v115 + 32))();
        sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
        v117 = sub_21CB85574();
        v118 = *(v115 + 8);
        v18 = v115 + 8;
        v118(v141, v116);
        v118(v114, v116);
        sub_21C6EA794(v142, v11, &unk_21CBA0090);
        if ((v117 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v119 = *(v1 + 432);
      sub_21C719840(*(v1 + 408), type metadata accessor for PMAccount.SIWAUniqueID);
      sub_21C719840(v119, type metadata accessor for PMAccount.SIWAUniqueID);
    }

    else
    {
      sub_21CACA770(v35, *(v1 + 440), type metadata accessor for PMAccount.UniqueID);
      v41 = swift_getEnumCaseMultiPayload();
      v37 = *(v1 + 440);
      if (v41 == 1)
      {
        v42 = type metadata accessor for PMAccount.CombinedUniqueID;
LABEL_35:
        sub_21C719840(v37, v42);
        v28 = v11;
        v30 = v144;
        v29 = v145;
        v43 = *(v1 + 456);
        v44 = &qword_27CDEB3C8;
        v45 = &unk_21CBB0010;
        goto LABEL_36;
      }

      v46 = *(v1 + 416);
      sub_21CAC9E84(v24 + v18, v46, type metadata accessor for PMAccount.CombinedUniqueID);
      v24 = sub_21C7D1A58(v37, v46);
      v18 = type metadata accessor for PMAccount.CombinedUniqueID;
      sub_21C719840(v46, type metadata accessor for PMAccount.CombinedUniqueID);
      sub_21C719840(v37, type metadata accessor for PMAccount.CombinedUniqueID);
      if ((v24 & 1) == 0)
      {
        sub_21C719840(*(v1 + 456), type metadata accessor for PMAccount.UniqueID);
        v28 = v11;
LABEL_16:
        v30 = v144;
        v29 = v145;
        goto LABEL_17;
      }
    }

    v48 = *(v1 + 504);
    v47 = *(v1 + 512);
    v49 = *(v1 + 464);
    v50 = *(v1 + 312);
    v24 = *(v1 + 320);
    sub_21C719840(*(v1 + 456), type metadata accessor for PMAccount.UniqueID);
    v51 = *(v49 + 24);
    v18 = *(v50 + 48);
    sub_21CACA770(v48 + v51, v24, type metadata accessor for PMAccount.Storage);
    sub_21CACA770(v47 + v51, v24 + v18, type metadata accessor for PMAccount.Storage);
    v52 = swift_getEnumCaseMultiPayload();
    v53 = *(v1 + 320);
    if (v52 == 1)
    {
      sub_21CACA770(v53, *(v1 + 296), type metadata accessor for PMAccount.Storage);
      v54 = swift_getEnumCaseMultiPayload();
      v55 = *(v1 + 296);
      if (v54 != 1)
      {
        sub_21C719840(*(v1 + 296), type metadata accessor for PMAccount.MockData);
LABEL_55:
        v25 = v143;
        v30 = v144;
        v28 = v11;
        v29 = v145;
        v43 = *(v1 + 320);
        v44 = &unk_27CDF7680;
        v45 = &qword_21CBB4E30;
LABEL_36:
        sub_21C6EA794(v43, v44, v45);
        goto LABEL_17;
      }

      v56 = *(v1 + 264);
      sub_21CAC9E84(v24 + v18, v56, type metadata accessor for PMAccount.MockData);
      v24 = _s17PasswordManagerUI9PMAccountV8MockDataV2eeoiySbAE_AEtFZ_0(v55, v56);
      v18 = type metadata accessor for PMAccount.MockData;
      sub_21C719840(v56, type metadata accessor for PMAccount.MockData);
      sub_21C719840(v55, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v60 = *(v1 + 304);
      sub_21CACA770(v53, v60, type metadata accessor for PMAccount.Storage);
      v61 = *v60;
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        goto LABEL_55;
      }

      v62 = *(v24 + v18);
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v24 = sub_21CB85DD4();
    }

    v25 = v143;
    v28 = v11;
    if ((v24 & 1) == 0)
    {
      v85 = *(v1 + 320);
      v86 = type metadata accessor for PMAccount.Storage;
LABEL_90:
      sub_21C719840(v85, v86);
      goto LABEL_16;
    }

    v63 = *(v1 + 504);
    v64 = *(v1 + 512);
    v65 = *(v1 + 464);
    sub_21C719840(*(v1 + 320), type metadata accessor for PMAccount.Storage);
    v66 = *(v65 + 28);
    v24 = *(v63 + v66);
    v67 = *(v63 + v66 + 8);
    v68 = *(v63 + v66 + 16);
    v69 = *(v63 + v66 + 24);
    v70 = (v64 + v66);
    v30 = *v70;
    v71 = v70[1];
    v18 = v70[2];
    v11 = v70[3];
    v140 = v71;
    if (!v67)
    {
      v96 = 0;
      v142 = v68;
      v139 = v69;
      v97 = v70[1];
      sub_21C7D33AC(v24, 0, v68, v69);
      if (!v97)
      {
        goto LABEL_107;
      }

      sub_21C7D33AC(v30, v97, v18, v11);
      v98 = v142;
      v99 = v139;
LABEL_84:
      sub_21C7D33F0(v24, v96, v98, v99);
      v81 = v30;
      v82 = v140;
      v83 = v18;
      v84 = v11;
LABEL_85:
      sub_21C7D33F0(v81, v82, v83, v84);
      goto LABEL_16;
    }

    if (!v71)
    {
      v96 = v67;
      v142 = v68;
      v99 = v69;
      sub_21C7D33AC(v24, v67, v68, v69);
      sub_21C7D33AC(v30, 0, v18, v11);
      sub_21C7D33AC(v24, v96, v142, v99);

      v98 = v142;
      goto LABEL_84;
    }

    v138 = v70[3];
    v139 = *v70;
    if (v24 != v30 || v67 != v71) && (v72 = v67, v73 = v68, v74 = v69, v75 = v70[1], v76 = sub_21CB86344(), v71 = v75, v67 = v72, v69 = v74, v68 = v73, (v76 & 1) == 0) || ((v18 ^ v68))
    {
      v77 = v67;
      v142 = v68;
      v78 = v69;
      v79 = v71;
      sub_21C7D33AC(v24, v67, v68, v69);
      v80 = v79;
      v11 = v138;
      sub_21C7D33AC(v139, v80, v18, v138);
      sub_21C7D33AC(v24, v77, v142, v78);
      sub_21C7D33F0(v139, v140, v18, v138);

      v81 = v24;
      v82 = v77;
      v83 = v142;
      v84 = v78;
      goto LABEL_85;
    }

    v109 = v67;
    v110 = v68;
    v111 = v69;
    v112 = v71;
    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v137 = v24;
    sub_21C7D33AC(v24, v109, v110, v111);
    v113 = v112;
    v11 = v138;
    sub_21C7D33AC(v139, v113, v18, v138);
    sub_21C7D33AC(v24, v109, v110, v111);
    v24 = sub_21CB85DD4();
    sub_21C7D33F0(v139, v140, v18, v138);

    sub_21C7D33F0(v137, v109, v110, v111);
    v30 = v144;
    v29 = v145;
    if (v24)
    {

      goto LABEL_108;
    }

LABEL_17:
    sub_21C719840(*(v1 + 504), type metadata accessor for PMAccount);
    if (v148 == ++v26)
    {
      goto LABEL_95;
    }
  }

  __break(1u);
LABEL_107:
  sub_21C7D33AC(v30, 0, v18, v11);

  sub_21C7D33F0(v24, 0, v142, v139);
LABEL_108:
  sub_21C719840(*(v1 + 504), type metadata accessor for PMAccount);
LABEL_96:
  v120 = *(v1 + 512);
  v121 = *(v1 + 288);
  v122 = *(*(v1 + 464) + 24);
  *(v1 + 668) = v122;
  sub_21CACA770(v120 + v122, v121, type metadata accessor for PMAccount.Storage);
  v123 = swift_getEnumCaseMultiPayload();
  v124 = *(v1 + 360);
  v125 = *(v1 + 288);
  if (v123 == 1)
  {
    v127 = *(v1 + 248);
    v126 = *(v1 + 256);
    sub_21CAC9E84(v125, v126, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v126 + *(v127 + 72), v124, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719840(v126, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v128 = *v125;
    sub_21CB85B94();
  }

  v129 = *(v1 + 368);
  v130 = *(v1 + 328);
  v131 = *(v1 + 336);
  sub_21C716934(*(v1 + 360), v129, &unk_27CDF20B0, &unk_21CBA0090);
  LODWORD(v130) = (*(v131 + 48))(v129, 1, v130);
  sub_21C6EA794(v129, &unk_27CDF20B0, &unk_21CBA0090);
  if (v130 == 1)
  {
    *(v1 + 616) = sub_21CB858A4();
    v133 = sub_21CB85874();
    *(v1 + 624) = v133;
    *(v1 + 632) = v132;

    return MEMORY[0x2822009F8](sub_21CABFAD8, v133, v132);
  }

  else
  {
    (*(*(v1 + 336) + 56))(*(v1 + 352), 1, 1, *(v1 + 328));
    v134 = swift_task_alloc();
    *(v1 + 600) = v134;
    *v134 = v1;
    v134[1] = sub_21CABF8E4;
    v135 = *(v1 + 512);
    v136 = *(v1 + 352);

    return sub_21CAC4230(v135, v136, 0);
  }
}