uint64_t sub_189110BD0(void *a1)
{
  v2 = v1;
  *&v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D780, &qword_18A667448);
  *&v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  *&v70 = &v58 - v4;
  *&v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D788, &qword_18A667450);
  *&v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  *&v67 = &v58 - v5;
  *&v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D790, &qword_18A667458);
  *&v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  *&v62 = &v58 - v6;
  *&v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D798, &qword_18A667460);
  *&v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D7A0, &qword_18A667468);
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D7A8, &qword_18A667470);
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D7B0, &qword_18A667478);
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v15 = &v58 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_189114C3C();
  v74 = v15;
  sub_18A4A89C8();
  v16 = v2[7];
  v79[6] = v2[6];
  v80 = v16;
  v81 = *(v2 + 128);
  v17 = v2[3];
  v79[2] = v2[2];
  v18 = v2[4];
  v79[5] = v2[5];
  v79[3] = v17;
  v79[4] = v18;
  v19 = *v2;
  v79[1] = v2[1];
  v79[0] = v19;
  v20 = sub_189112364(v79);
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      signpost_c2_entryLock_start();
      v47 = v46;
      v48 = v46[2];
      v66 = v46[3];
      v70 = v48;
      LOBYTE(v77) = 4;
      sub_189114CE4();
      v49 = v47[1];
      v72 = *v47;
      v71 = v49;
      v39 = v67;
      v31 = v75;
      v32 = v74;
      sub_18A4A85A8();
      v78 = v71;
      v77 = v72;
      v76 = 0;
      type metadata accessor for UIEdgeInsets(0);
      sub_189114E88(&qword_1EA93D7C8, &protocol conformance descriptor for UIEdgeInsets);
      v40 = v69;
      v50 = v86;
      sub_18A4A85D8();
      if (!v50)
      {
        v78 = v66;
        v77 = v70;
        v76 = 1;
        sub_18A4A85D8();
      }

      v41 = &v80;
    }

    else
    {
      v30 = v86;
      v31 = v75;
      v32 = v74;
      if (v20 != 4)
      {
        LOBYTE(v77) = 0;
        sub_189114E34();
        sub_18A4A85A8();
        (*(v59 + 8))(v13, v11);
        return (*(v73 + 8))(v32, v31);
      }

      signpost_c2_entryLock_start();
      v34 = v33;
      v35 = v33[2];
      v66 = v33[3];
      v67 = v35;
      v36 = v33[4];
      v64 = v33[5];
      v65 = v36;
      v37 = v33[6];
      v62 = v33[7];
      v63 = v37;
      LOBYTE(v77) = 5;
      sub_189114C90();
      v38 = v34[1];
      v69 = *v34;
      v68 = v38;
      v39 = v70;
      sub_18A4A85A8();
      v78 = v68;
      v77 = v69;
      v76 = 0;
      type metadata accessor for UIEdgeInsets(0);
      sub_189114E88(&qword_1EA93D7C8, &protocol conformance descriptor for UIEdgeInsets);
      v40 = v72;
      sub_18A4A85D8();
      if (!v30)
      {
        v78 = v66;
        v77 = v67;
        v76 = 1;
        sub_18A4A85D8();
        v78 = v64;
        v77 = v65;
        v76 = 2;
        sub_18A4A85D8();
        v78 = v62;
        v77 = v63;
        v76 = 3;
        sub_18A4A85D8();
      }

      v41 = &v83;
    }

    (*(*(v41 - 32) + 8))(v39, v40);
    return (*(v73 + 8))(v32, v31);
  }

  if (v20)
  {
    v21 = v86;
    if (v20 == 1)
    {
      signpost_c2_entryLock_start();
      v23 = v22;
      v24 = v22[2];
      v69 = v22[3];
      v70 = v24;
      LOBYTE(v77) = 2;
      sub_189114D8C();
      v25 = v23[1];
      v72 = *v23;
      v71 = v25;
      v26 = v61;
      v27 = v75;
      v28 = v74;
      sub_18A4A85A8();
      v78 = v71;
      v77 = v72;
      v76 = 0;
      type metadata accessor for UIEdgeInsets(0);
      sub_189114E88(&qword_1EA93D7C8, &protocol conformance descriptor for UIEdgeInsets);
      v29 = v64;
      sub_18A4A85D8();
      if (!v21)
      {
        v78 = v69;
        v77 = v70;
        v76 = 1;
        sub_18A4A85D8();
      }

      (*(v63 + 8))(v26, v29);
      return (*(v73 + 8))(v28, v27);
    }

    else
    {
      signpost_c2_entryLock_start();
      v52 = v51[1];
      v84 = *v51;
      v85 = v52;
      LOBYTE(v77) = 3;
      sub_189114D38();
      v53 = v62;
      v54 = v75;
      v55 = v74;
      sub_18A4A85A8();
      v77 = v84;
      v78 = v85;
      type metadata accessor for UIEdgeInsets(0);
      sub_189114E88(&qword_1EA93D7C8, &protocol conformance descriptor for UIEdgeInsets);
      v56 = v66;
      sub_18A4A85D8();
      (*(v65 + 8))(v53, v56);
      return (*(v73 + 8))(v55, v54);
    }
  }

  else
  {
    signpost_c2_entryLock_start();
    v43 = v42[1];
    v82 = *v42;
    v83 = v43;
    LOBYTE(v77) = 1;
    sub_189114DE0();
    v44 = v75;
    v45 = v74;
    sub_18A4A85A8();
    v77 = v82;
    v78 = v83;
    type metadata accessor for UIEdgeInsets(0);
    sub_189114E88(&qword_1EA93D7C8, &protocol conformance descriptor for UIEdgeInsets);
    sub_18A4A85D8();
    (*(v60 + 8))(v10, v8);
    return (*(v73 + 8))(v45, v44);
  }
}

uint64_t sub_189111838(uint64_t a1)
{
  v2 = sub_189114DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111874(uint64_t a1)
{
  v2 = sub_189114DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1891118B0()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0xD00000000000001CLL;
  if (v1 != 4)
  {
    v3 = 1751343461;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 1)
  {
    v4 = 7105633;
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

uint64_t sub_189111958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18911339C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_18911198C(uint64_t a1)
{
  v2 = sub_189114C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1891119C8(uint64_t a1)
{
  v2 = sub_189114C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189111A18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1891135A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_189111A4C(uint64_t a1)
{
  v2 = sub_189114C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111A88(uint64_t a1)
{
  v2 = sub_189114C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189111AC4(uint64_t a1)
{
  v2 = sub_189114E34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111B00(uint64_t a1)
{
  v2 = sub_189114E34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_189111B3C(uint64_t a1)
{
  v2 = sub_189114D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111B78(uint64_t a1)
{
  v2 = sub_189114D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_189111BB4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_18A4A86C8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_18A4A86C8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_189111C80(uint64_t a1)
{
  v2 = sub_189114CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111CBC(uint64_t a1)
{
  v2 = sub_189114CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_189111CF8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_18A4A86C8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_189111D78(uint64_t a1)
{
  v2 = sub_189114D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189111DB4(uint64_t a1)
{
  v2 = sub_189114D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_189111DF0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result.n128_u64[0] = sub_1891136E8(a2, v8).n128_u64[0];
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_189111E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_189112FF4(v11, v13) & 1;
}

id sub_189111FD0(char *a1, double a2, double a3, double a4, double a5, uint64_t a6, void (*a7)(__int128 *, uint64_t))
{
  *&v15 = a2;
  *(&v15 + 1) = a3;
  *&v16 = a4;
  *(&v16 + 1) = a5;
  a7(&v15, a6);
  v8 = &a1[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
  v9 = v22;
  *(v8 + 6) = v21;
  *(v8 + 7) = v9;
  v8[128] = v23;
  v10 = v18;
  *(v8 + 2) = v17;
  *(v8 + 3) = v10;
  v11 = v20;
  *(v8 + 4) = v19;
  *(v8 + 5) = v11;
  v12 = v16;
  *v8 = v15;
  *(v8 + 1) = v12;
  v14.receiver = a1;
  v14.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_189112084(char *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, void (*a11)(__int128 *, uint64_t))
{
  *&v19 = a2;
  *(&v19 + 1) = a3;
  *&v20 = a4;
  *(&v20 + 1) = a5;
  *&v21 = a6;
  *(&v21 + 1) = a7;
  *&v22 = a8;
  *(&v22 + 1) = a9;
  a11(&v19, a10);
  v12 = &a1[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
  v13 = v26;
  *(v12 + 6) = v25;
  *(v12 + 7) = v13;
  v12[128] = v27;
  v14 = v22;
  *(v12 + 2) = v21;
  *(v12 + 3) = v14;
  v15 = v24;
  *(v12 + 4) = v23;
  *(v12 + 5) = v15;
  v16 = v20;
  *v12 = v19;
  *(v12 + 1) = v16;
  v18.receiver = a1;
  v18.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
  return objc_msgSendSuper2(&v18, sel_init);
}

int8x16_t _UISceneSafeAreaEdgeInsetConcreteResolver.safeAreaEdgeInsets(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 112);
  v13[6] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 96);
  v13[7] = v3;
  v14 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 128);
  v4 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 48);
  v13[2] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 32);
  v13[3] = v4;
  v5 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 80);
  v13[4] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 64);
  v13[5] = v5;
  v6 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 16);
  v13[0] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets);
  v13[1] = v6;
  v7 = sub_189112364(v13);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        signpost_c2_entryLock_start();
        if ((a1 - 3) >= 2)
        {
          return *v8;
        }

        return v8[2];
      }

      signpost_c2_entryLock_start();
      result = *v12;
      v11 = v12[1];
      if (a1 != 2)
      {
        if (a1 == 4)
        {
          return vextq_s8(result, v11, 8uLL);
        }

        else if (a1 == 3)
        {
          return vextq_s8(v11, result, 8uLL);
        }

        return result;
      }

      return v11;
    }

    signpost_c2_entryLock_start();
    return *v8;
  }

  if (v7 != 3)
  {
    if (v7 != 4)
    {
      return *&UIEdgeInsetsZero.top;
    }

    signpost_c2_entryLock_start();
    switch(a1)
    {
      case 2:
        return v8[4];
      case 3:
        return v8[6];
      case 4:
        return v8[2];
    }

    return *v8;
  }

  signpost_c2_entryLock_start();
  result = v10[2];
  v11 = v10[3];
  if (a1 != 4)
  {
    if (a1 == 3)
    {
      return v11;
    }

    result = *v10;
    v11 = v10[1];
    if (a1 == 2)
    {
      return v11;
    }
  }

  return result;
}

uint64_t sub_189112364(uint64_t a1)
{
  if (*(a1 + 128) <= 4u)
  {
    return *(a1 + 128);
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t _UISceneSafeAreaEdgeInsetConcreteResolver.description.getter()
{
  sub_18A4A80E8();

  v0 = sub_18A4A72F8();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t _UISceneSafeAreaEdgeInsetConcreteResolver.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, &v12);
  if (!*(&v13 + 1))
  {
    sub_188A553EC(&v12);
    goto LABEL_5;
  }

  type metadata accessor for _UISceneSafeAreaEdgeInsetConcreteResolver(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v3 = *&v10[0];
  v4 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 112);
  v10[6] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 96);
  v10[7] = v4;
  v11 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 128);
  v5 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 48);
  v10[2] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 32);
  v10[3] = v5;
  v6 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 80);
  v10[4] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 64);
  v10[5] = v6;
  v7 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 16);
  v10[0] = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets);
  v10[1] = v7;
  v17 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 80];
  v18 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 96];
  v19 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 112];
  v20 = v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 128];
  v13 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 16];
  v14 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 32];
  v15 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 48];
  v16 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets + 64];
  v12 = *&v3[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];

  v8 = sub_189112FF4(v10, &v12);
  return v8 & 1;
}

id _UISceneSafeAreaEdgeInsetConcreteResolver.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1891146A0(a1);
  swift_unknownObjectRelease();
  return v1;
}

double _UISceneSafeAreaEdgeInsetConcreteResolver.encode(withBSXPCCoder:)(void *a1)
{
  v2 = sub_18A4A72D8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18A4A23E8();
  swift_allocObject();
  sub_18A4A23D8();
  sub_189114960();
  v3 = sub_18A4A23C8();
  v5 = v4;

  sub_18A4A72C8();
  sub_18A4A72A8();
  if (v6)
  {
    v7 = sub_18A4A7258();

    v8 = sub_18A4A7258();
    [a1 encodeObject:v7 forKey:v8];
  }

  return sub_188DC0F30(v3, v5);
}

void _UISceneSafeAreaEdgeInsetCompositeResolver.safeAreaEdgeInsets(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers);
  if (v3 >> 62)
  {
    v4 = sub_18A4A7F68();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0.0;
  v5 = 0.0;
  v8 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
    }

    else
    {
      v9 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = sub_188E4B094(v9, v3);
        }

        else
        {
          v10 = *(v3 + 8 * v9 + 32);
        }

        v11 = v10;
        ++v9;
        [v10 safeAreaEdgeInsetsForOrientation_];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        if (v6 <= v13)
        {
          v6 = v13;
        }

        if (v5 <= v15)
        {
          v5 = v15;
        }

        if (v8 <= v17)
        {
          v8 = v17;
        }

        if (v7 <= v19)
        {
          v7 = v19;
        }
      }

      while (v4 != v9);
    }
  }
}

uint64_t _UISceneSafeAreaEdgeInsetCompositeResolver.description.getter()
{
  sub_18A4A80E8();
  v1 = MEMORY[0x18CFE22D0](0xD000000000000036, 0x800000018A6AA6B0);
  v2 = *(v0 + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers);
  v3 = type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(v1);
  v4 = MEMORY[0x18CFE24A0](v2, v3);
  MEMORY[0x18CFE22D0](v4);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t _UISceneSafeAreaEdgeInsetCompositeResolver.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, v8);
  if (!v9)
  {
    sub_188A553EC(v8);
    goto LABEL_5;
  }

  type metadata accessor for _UISceneSafeAreaEdgeInsetCompositeResolver(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers);
  v4 = *&v7[OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers];

  v5 = sub_1890159A4(v3, v4);

  return v5 & 1;
}

uint64_t sub_189112D04(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

id _sSo33_UISceneSafeAreaEdgeInsetResolverC5UIKitE10bsxpcCoderABSgSo13BSXPCDecoding_p_tcfC_0(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBSXPCCoder_];
  swift_unknownObjectRelease();
  return v1;
}

id _UISceneSafeAreaEdgeInsetCompositeResolver.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1891149DC(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_189112E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a4(a3);
  swift_unknownObjectRelease();
  return v6;
}

void _UISceneSafeAreaEdgeInsetCompositeResolver.encode(withBSXPCCoder:)(void *a1, uint64_t a2)
{
  type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(a1);
  v3 = sub_18A4A7518();
  v4 = sub_18A4A7258();
  [a1 encodeCollection:v3 forKey:v4];
}

uint64_t sub_189112FF4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v68[6] = *(a1 + 96);
  v68[7] = v3;
  v69 = *(a1 + 128);
  v4 = *(a1 + 48);
  v68[2] = *(a1 + 32);
  v68[3] = v4;
  v5 = *(a1 + 80);
  v68[4] = *(a1 + 64);
  v68[5] = v5;
  v6 = *(a1 + 16);
  v68[0] = *a1;
  v68[1] = v6;
  v7 = sub_189112364(v68);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        signpost_c2_entryLock_start();
        v55 = v8[1];
        v57 = *v8;
        v51 = v8[3];
        v53 = v8[2];
        v9 = a2[3];
        v61 = a2[2];
        v62 = v9;
        v10 = a2[1];
        v59 = *a2;
        v60 = v10;
        v67 = *(a2 + 128);
        v11 = a2[7];
        v65 = a2[6];
        v66 = v11;
        v12 = a2[5];
        v63 = a2[4];
        v64 = v12;
        if (sub_189112364(&v59) != 1)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      signpost_c2_entryLock_start();
      v23 = *v36;
      v22 = v36[1];
      v25 = v36[2];
      v24 = v36[3];
      v37 = a2[7];
      v65 = a2[6];
      v66 = v37;
      v67 = *(a2 + 128);
      v38 = a2[1];
      v59 = *a2;
      v60 = v38;
      v39 = a2[3];
      v61 = a2[2];
      v62 = v39;
      v40 = a2[5];
      v63 = a2[4];
      v64 = v40;
      if (sub_189112364(&v59) != 2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      signpost_c2_entryLock_start();
      v23 = *v21;
      v22 = v21[1];
      v25 = v21[2];
      v24 = v21[3];
      v26 = a2[7];
      v65 = a2[6];
      v66 = v26;
      v67 = *(a2 + 128);
      v27 = a2[1];
      v59 = *a2;
      v60 = v27;
      v28 = a2[3];
      v61 = a2[2];
      v62 = v28;
      v29 = a2[5];
      v63 = a2[4];
      v64 = v29;
      if (sub_189112364(&v59))
      {
        goto LABEL_26;
      }
    }

    signpost_c2_entryLock_start();
    if (v23 != *v41 || v22 != v41[1] || v25 != v41[2] || v24 != v41[3])
    {
      goto LABEL_26;
    }

LABEL_24:
    v19 = 1;
    return v19 & 1;
  }

  if (v7 == 3)
  {
    signpost_c2_entryLock_start();
    v55 = v30[1];
    v57 = *v30;
    v51 = v30[3];
    v53 = v30[2];
    v31 = a2[3];
    v61 = a2[2];
    v62 = v31;
    v32 = a2[1];
    v59 = *a2;
    v60 = v32;
    v67 = *(a2 + 128);
    v33 = a2[7];
    v65 = a2[6];
    v66 = v33;
    v34 = a2[5];
    v63 = a2[4];
    v64 = v34;
    if (sub_189112364(&v59) != 3)
    {
      goto LABEL_26;
    }

LABEL_16:
    signpost_c2_entryLock_start();
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v57, *v35), vceqq_f64(v55, v35[1])))))
    {
      v20 = vuzp1q_s32(vceqq_f64(v53, v35[2]), vceqq_f64(v51, v35[3]));
      goto LABEL_18;
    }

LABEL_26:
    v19 = 0;
    return v19 & 1;
  }

  if (v7 != 4)
  {
    v42 = a2[7];
    v65 = a2[6];
    v66 = v42;
    v67 = *(a2 + 128);
    v43 = a2[3];
    v61 = a2[2];
    v62 = v43;
    v44 = a2[5];
    v63 = a2[4];
    v64 = v44;
    v45 = a2[1];
    v59 = *a2;
    v60 = v45;
    if (sub_189112364(&v59) != 5)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  signpost_c2_entryLock_start();
  v56 = v13[1];
  v58 = *v13;
  v52 = v13[3];
  v54 = v13[2];
  v49 = v13[4];
  v50 = v13[5];
  v47 = v13[6];
  v48 = v13[7];
  v14 = a2[1];
  v59 = *a2;
  v60 = v14;
  v15 = a2[5];
  v63 = a2[4];
  v64 = v15;
  v67 = *(a2 + 128);
  v16 = a2[7];
  v65 = a2[6];
  v66 = v16;
  v17 = a2[3];
  v61 = a2[2];
  v62 = v17;
  if (sub_189112364(&v59) != 4)
  {
    goto LABEL_26;
  }

  signpost_c2_entryLock_start();
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v58, *v18), vceqq_f64(v56, v18[1])))) & 1) == 0)
  {
    goto LABEL_26;
  }

  v19 = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v54, v18[2]), vceqq_f64(v52, v18[3])))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v49, v18[4]), vceqq_f64(v50, v18[5])), xmmword_18A650B80)) & 0xF) == 0)
  {
    v20 = vuzp1q_s32(vceqq_f64(v47, v18[6]), vceqq_f64(v48, v18[7]));
LABEL_18:
    v19 = vminv_u16(vmovn_s32(v20));
  }

  return v19 & 1;
}

uint64_t sub_18911339C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_18A4A86C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_18A4A86C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018A6AA8A0 == a2 || (sub_18A4A86C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018A6AA8C0 == a2 || (sub_18A4A86C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000018A6AA8E0 == a2 || (sub_18A4A86C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1751343461 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_18A4A86C8();

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

uint64_t sub_1891135A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_18A4A86C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_18A4A86C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000 || (sub_18A4A86C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 13151 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_18A4A86C8();

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

__n128 sub_1891136E8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D7F8, &qword_18A667480);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v70.n128_u64[0] = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D800, &qword_18A667488);
  v61 = *(v6 - 8);
  *&v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69.n128_u64[0] = &v52 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D808, &qword_18A667490);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v68.n128_u64[0] = &v52 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D810, &qword_18A667498);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  *&v65 = &v52 - v9;
  *&v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D818, &qword_18A6674A0);
  v56 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D820, &qword_18A6674A8);
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D828, &unk_18A6674B0);
  v71 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v18 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_189114C3C();
  v19 = v72.n128_u64[0];
  sub_18A4A8998();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v14;
  v53 = v12;
  v54 = v11;
  v21 = v67;
  v22 = v68.n128_u64[0];
  v72.n128_u64[0] = 0;
  v23 = v69.n128_u64[0];
  v24 = v70.n128_u64[0];
  v25 = sub_18A4A8598();
  v26 = (2 * *(v25 + 16)) | 1;
  v100 = v25;
  v101 = v25 + 32;
  v102 = 0;
  v103 = v26;
  v27 = sub_189116DAC();
  if (v27 == 6 || v102 != v103 >> 1)
  {
    v31 = sub_18A4A8188();
    swift_allocError();
    v32 = v15;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D830, &qword_18A667D10);
    *v34 = &_s12SafeAreaTypeON;
    sub_18A4A8558();
    sub_18A4A8178();
    (*(*(v31 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    (*(v71 + 8))(v17, v32);
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    result.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0Tm(v73);
    return result;
  }

  if (v27 > 2u)
  {
    if (v27 == 3)
    {
      v74.n128_u8[0] = 3;
      sub_189114D38();
      v41 = v72.n128_u64[0];
      sub_18A4A8548();
      v42 = v71;
      if (!v41)
      {
        type metadata accessor for UIEdgeInsets(0);
        sub_189114E88(&qword_1EA93D838, &protocol conformance descriptor for UIEdgeInsets);
        v45 = v60;
        sub_18A4A8588();
        (*(v58 + 8))(v22, v45);
        (*(v42 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v74 = v89;
        v75 = v90;
        sub_189114EE4(&v74);
        v97 = v80;
        v98 = v81;
        v99 = v82;
        v93 = v76;
        v94 = v77;
        v95 = v78;
        v96 = v79;
        v91 = v74;
        v92 = v75;
        v48 = v66;
        goto LABEL_29;
      }

      (*(v71 + 8))(v17, v15);
      goto LABEL_10;
    }

    v36 = v71;
    if (v27 == 4)
    {
      v74.n128_u8[0] = 4;
      sub_189114CE4();
      v37 = v23;
      v38 = v72.n128_u64[0];
      sub_18A4A8548();
      v48 = v66;
      if (!v38)
      {
        v72.n128_u64[0] = v15;
        type metadata accessor for UIEdgeInsets(0);
        v74.n128_u8[0] = 0;
        sub_189114E88(&qword_1EA93D838, &protocol conformance descriptor for UIEdgeInsets);
        v39 = v62;
        sub_18A4A8588();
        v68 = v90;
        v70 = v89;
        LOBYTE(v85) = 1;
        sub_18A4A8588();
        (*(v61 + 8))(v37, v39);
        (*(v36 + 8))(v17, v72.n128_u64[0]);
        swift_unknownObjectRelease();
        v74 = v70;
        v75 = v68;
        v76 = v87;
        v77 = v88;
        sub_189114ED8(&v74);
        v97 = v80;
        v98 = v81;
        v99 = v82;
        v93 = v76;
        v94 = v77;
        v95 = v78;
        v96 = v79;
        v91 = v74;
        v92 = v75;
        goto LABEL_29;
      }
    }

    else
    {
      v74.n128_u8[0] = 5;
      sub_189114C90();
      v44 = v72.n128_u64[0];
      sub_18A4A8548();
      if (!v44)
      {
        type metadata accessor for UIEdgeInsets(0);
        v74.n128_u8[0] = 0;
        sub_189114E88(&qword_1EA93D838, &protocol conformance descriptor for UIEdgeInsets);
        v47 = v63;
        sub_18A4A8588();
        v69 = v90;
        v72 = v89;
        v74.n128_u8[0] = 1;
        sub_18A4A8588();
        v67 = v88;
        v68 = v87;
        v74.n128_u8[0] = 2;
        sub_18A4A8588();
        v62 = v86;
        v65 = v85;
        v104 = 3;
        sub_18A4A8588();
        (*(v64 + 8))(v24, v47);
        (*(v36 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v74 = v72;
        v75 = v69;
        v76 = v68;
        v77 = v67;
        v78 = v65;
        v79 = v62;
        v80 = v83;
        v81 = v84;
        sub_189114ECC(&v74);
        v97 = v80;
        v98 = v81;
        v99 = v82;
        v93 = v76;
        v94 = v77;
        v95 = v78;
        v96 = v79;
        v91 = v74;
        v92 = v75;
        goto LABEL_25;
      }
    }

    (*(v36 + 8))(v17, v15);
    goto LABEL_10;
  }

  if (!v27)
  {
    v74.n128_u8[0] = 0;
    sub_189114E34();
    v40 = v72.n128_u64[0];
    sub_18A4A8548();
    if (v40)
    {
      v30 = v71;
      goto LABEL_21;
    }

    (*(v55 + 8))(v20, v53);
    (*(v71 + 8))(v17, v15);
    swift_unknownObjectRelease();
    sub_189114F04(&v91);
LABEL_25:
    v48 = v66;
    goto LABEL_29;
  }

  v28 = v72.n128_u64[0];
  if (v27 != 1)
  {
    v74.n128_u8[0] = 2;
    sub_189114D8C();
    v43 = v65;
    sub_18A4A8548();
    v30 = v71;
    if (!v28)
    {
      type metadata accessor for UIEdgeInsets(0);
      v74.n128_u8[0] = 0;
      sub_189114E88(&qword_1EA93D838, &protocol conformance descriptor for UIEdgeInsets);
      v46 = v57;
      sub_18A4A8588();
      v70 = v90;
      v72 = v89;
      LOBYTE(v85) = 1;
      sub_18A4A8588();
      (*(v59 + 8))(v43, v46);
      (*(v30 + 8))(v17, v15);
      swift_unknownObjectRelease();
      v74 = v72;
      v75 = v70;
      v76 = v87;
      v77 = v88;
      sub_189114EF0(&v74);
      v97 = v80;
      v98 = v81;
      v99 = v82;
      v93 = v76;
      v94 = v77;
      v95 = v78;
      v96 = v79;
      v91 = v74;
      v92 = v75;
      v48 = v66;
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  v74.n128_u8[0] = 1;
  sub_189114DE0();
  v29 = v54;
  sub_18A4A8548();
  v30 = v71;
  if (v28)
  {
LABEL_21:
    (*(v30 + 8))(v17, v15);
    goto LABEL_10;
  }

  type metadata accessor for UIEdgeInsets(0);
  sub_189114E88(&qword_1EA93D838, &protocol conformance descriptor for UIEdgeInsets);
  sub_18A4A8588();
  (*(v56 + 8))(v29, v21);
  (*(v30 + 8))(v17, v15);
  swift_unknownObjectRelease();
  v74 = v89;
  v75 = v90;
  sub_189114EFC(&v74);
  v97 = v80;
  v98 = v81;
  v99 = v82;
  v93 = v76;
  v94 = v77;
  v95 = v78;
  v96 = v79;
  v91 = v74;
  v92 = v75;
  v48 = v66;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  v49 = v98;
  *(v48 + 96) = v97;
  *(v48 + 112) = v49;
  *(v48 + 128) = v99;
  v50 = v94;
  *(v48 + 32) = v93;
  *(v48 + 48) = v50;
  v51 = v96;
  *(v48 + 64) = v95;
  *(v48 + 80) = v51;
  result = v92;
  *v48 = v91;
  *(v48 + 16) = result;
  return result;
}

id sub_1891146A0(void *a1)
{
  v3 = sub_18A4A72D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A7258();
  v8 = [a1 decodeStringForKey_];

  if (!v8 || (sub_18A4A7288(), v8, sub_18A4A72C8(), v9 = sub_18A4A7298(), v11 = v10, , (*(v4 + 8))(v6, v3), v11 >> 60 == 15))
  {
    sub_189114F04(&v26);
    v12 = &v1[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
    v13 = v33;
    *(v12 + 6) = v32;
    *(v12 + 7) = v13;
    v12[128] = v34;
    v14 = v29;
    *(v12 + 2) = v28;
    *(v12 + 3) = v14;
    v15 = v31;
    *(v12 + 4) = v30;
    *(v12 + 5) = v15;
    v16 = v27;
    *v12 = v26;
    *(v12 + 1) = v16;
    v25.receiver = v1;
    v25.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  else
  {
    sub_18A4A23B8();
    swift_allocObject();
    sub_18A4A23A8();
    sub_189114F24();
    sub_18A4A2398();

    v17 = &v1[OBJC_IVAR____UISceneSafeAreaEdgeInsetConcreteResolver_safeAreaInsets];
    v18 = v33;
    *(v17 + 6) = v32;
    *(v17 + 7) = v18;
    v17[128] = v34;
    v19 = v29;
    *(v17 + 2) = v28;
    *(v17 + 3) = v19;
    v20 = v31;
    *(v17 + 4) = v30;
    *(v17 + 5) = v20;
    v21 = v27;
    *v17 = v26;
    *(v17 + 1) = v21;
    v24.receiver = v1;
    v24.super_class = _UISceneSafeAreaEdgeInsetConcreteResolver;
    v22 = objc_msgSendSuper2(&v24, sel_init);
    sub_188DBF840(v9, v11);
    return v22;
  }
}

unint64_t sub_189114960()
{
  result = qword_1EA93D740;
  if (!qword_1EA93D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D740);
  }

  return result;
}

id sub_1891149DC(void *a1)
{
  sub_188A34624(0, &qword_1EA93D840, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneSafeAreaEdgeInsetResolver(ObjCClassFromMetadata);
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_18A4A7258();
  v6 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v4 forKey:v5];

  if (v6 && (v7 = [v6 bs_array], swift_unknownObjectRelease(), v7) && (v8 = sub_18A4A7548(), v7, v9 = sub_189115710(v8), , v9))
  {
    *&v1[OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers] = v9;
    v12 = v1;
    v10 = &v12;
  }

  else
  {
    *&v1[OBJC_IVAR____UISceneSafeAreaEdgeInsetCompositeResolver_resolvers] = MEMORY[0x1E69E7CC0];
    v13.receiver = v1;
    v10 = &v13;
  }

  v10->super_class = _UISceneSafeAreaEdgeInsetCompositeResolver;
  return [(objc_super *)v10 init];
}

uint64_t _s12SafeAreaTypeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 129))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 128);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s12SafeAreaTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t sub_189114BF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    LOBYTE(a2) = 5;
    *(result + 120) = 0;
  }

  *(result + 128) = a2;
  return result;
}

unint64_t sub_189114C3C()
{
  result = qword_1EA93D7B8;
  if (!qword_1EA93D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7B8);
  }

  return result;
}

unint64_t sub_189114C90()
{
  result = qword_1EA93D7C0;
  if (!qword_1EA93D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7C0);
  }

  return result;
}

unint64_t sub_189114CE4()
{
  result = qword_1EA93D7D0;
  if (!qword_1EA93D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7D0);
  }

  return result;
}

unint64_t sub_189114D38()
{
  result = qword_1EA93D7D8;
  if (!qword_1EA93D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7D8);
  }

  return result;
}

unint64_t sub_189114D8C()
{
  result = qword_1EA93D7E0;
  if (!qword_1EA93D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7E0);
  }

  return result;
}

unint64_t sub_189114DE0()
{
  result = qword_1EA93D7E8;
  if (!qword_1EA93D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7E8);
  }

  return result;
}

unint64_t sub_189114E34()
{
  result = qword_1EA93D7F0;
  if (!qword_1EA93D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D7F0);
  }

  return result;
}

uint64_t sub_189114E88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIEdgeInsets(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_189114F04(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 5;
  return result;
}

unint64_t sub_189114F24()
{
  result = qword_1EA93D848;
  if (!qword_1EA93D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D848);
  }

  return result;
}

unint64_t sub_189114FEC()
{
  result = qword_1EA93D850;
  if (!qword_1EA93D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D850);
  }

  return result;
}

unint64_t sub_189115044()
{
  result = qword_1EA93D858;
  if (!qword_1EA93D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D858);
  }

  return result;
}

unint64_t sub_18911509C()
{
  result = qword_1EA93D860;
  if (!qword_1EA93D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D860);
  }

  return result;
}

unint64_t sub_1891150F4()
{
  result = qword_1EA93D868;
  if (!qword_1EA93D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D868);
  }

  return result;
}

unint64_t sub_18911514C()
{
  result = qword_1EA93D870;
  if (!qword_1EA93D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D870);
  }

  return result;
}

unint64_t sub_1891151A4()
{
  result = qword_1EA93D878;
  if (!qword_1EA93D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D878);
  }

  return result;
}

unint64_t sub_1891151FC()
{
  result = qword_1EA93D880;
  if (!qword_1EA93D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D880);
  }

  return result;
}

unint64_t sub_189115254()
{
  result = qword_1EA93D888;
  if (!qword_1EA93D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D888);
  }

  return result;
}

unint64_t sub_1891152AC()
{
  result = qword_1EA93D890;
  if (!qword_1EA93D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D890);
  }

  return result;
}

unint64_t sub_189115304()
{
  result = qword_1EA93D898;
  if (!qword_1EA93D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D898);
  }

  return result;
}

unint64_t sub_18911535C()
{
  result = qword_1EA93D8A0;
  if (!qword_1EA93D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8A0);
  }

  return result;
}

unint64_t sub_1891153B4()
{
  result = qword_1EA93D8A8;
  if (!qword_1EA93D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8A8);
  }

  return result;
}

unint64_t sub_18911540C()
{
  result = qword_1EA93D8B0;
  if (!qword_1EA93D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8B0);
  }

  return result;
}

unint64_t sub_189115464()
{
  result = qword_1EA93D8B8;
  if (!qword_1EA93D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8B8);
  }

  return result;
}

unint64_t sub_1891154BC()
{
  result = qword_1EA93D8C0;
  if (!qword_1EA93D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8C0);
  }

  return result;
}

unint64_t sub_189115514()
{
  result = qword_1EA93D8C8;
  if (!qword_1EA93D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8C8);
  }

  return result;
}

unint64_t sub_18911556C()
{
  result = qword_1EA93D8D0;
  if (!qword_1EA93D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8D0);
  }

  return result;
}

unint64_t sub_1891155C4()
{
  result = qword_1EA93D8D8;
  if (!qword_1EA93D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8D8);
  }

  return result;
}

unint64_t sub_18911561C()
{
  result = qword_1EA93D8E0;
  if (!qword_1EA93D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8E0);
  }

  return result;
}

unint64_t sub_189115674()
{
  result = qword_1EA93D8E8;
  if (!qword_1EA93D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D8E8);
  }

  return result;
}

uint64_t sub_18911572C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v10 = MEMORY[0x1E69E7CC0];
  v6 = *(a1 + 16);
  sub_18A4A8208();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_188A55598(i, v9);
    a3(a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_18A4A81D8();
    sub_18A4A8218();
    sub_18A4A8228();
    sub_18A4A81E8();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t sub_189115A44(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D940, &qword_18A667CD0);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D948, &qword_18A667CD8);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D950, &qword_18A667CE0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D958, &qword_18A667CE8);
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_189117C64();
  sub_18A4A89C8();
  if (!*(v2 + 64))
  {
    LOBYTE(v34) = 1;
    sub_189117D0C();
    v17 = v33;
    sub_18A4A85A8();
    v21 = v2[1];
    v34 = *v2;
    v35 = v21;
    v22 = v2[3];
    v36 = v2[2];
    v37 = v22;
    type metadata accessor for _UICornerInsets(0);
    sub_189117DB4(&qword_1EA93D970, &protocol conformance descriptor for _UICornerInsets);
    v23 = v28;
    sub_18A4A85D8();
    (*(v27 + 8))(v8, v23);
    return (*(v32 + 8))(v15, v17);
  }

  if (*(v2 + 64) == 1)
  {
    LOBYTE(v34) = 2;
    sub_189117CB8();
    v16 = v29;
    v17 = v33;
    sub_18A4A85A8();
    v18 = v2[1];
    v34 = *v2;
    v35 = v18;
    v19 = v2[3];
    v36 = v2[2];
    v37 = v19;
    type metadata accessor for _UICornerInsets(0);
    sub_189117DB4(&qword_1EA93D970, &protocol conformance descriptor for _UICornerInsets);
    v20 = v31;
    sub_18A4A85D8();
    (*(v30 + 8))(v16, v20);
    return (*(v32 + 8))(v15, v17);
  }

  LOBYTE(v34) = 0;
  sub_189117D60();
  v25 = v33;
  sub_18A4A85A8();
  (*(v10 + 8))(v12, v9);
  return (*(v32 + 8))(v15, v25);
}

uint64_t sub_189115EB8(uint64_t a1)
{
  v2 = sub_189117D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189115EF4(uint64_t a1)
{
  v2 = sub_189117D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_189115F30()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_189115F80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_189116E84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_189115FB4(uint64_t a1)
{
  v2 = sub_189117C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189115FF0(uint64_t a1)
{
  v2 = sub_189117C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18911602C(uint64_t a1)
{
  v2 = sub_189117D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_189116068(uint64_t a1)
{
  v2 = sub_189117D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1891160A4(uint64_t a1)
{
  v2 = sub_189117CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1891160E0(uint64_t a1)
{
  v2 = sub_189117CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_18911611C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result.n128_u64[0] = sub_189116FA4(a2, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_1891161B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_189116DE0(v7, v9);
}

id sub_189116278(char *a1, uint64_t a2, _OWORD *a3, char a4)
{
  v4 = &a1[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets];
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  *v4 = *a3;
  *(v4 + 1) = v5;
  *(v4 + 2) = v6;
  *(v4 + 3) = v7;
  v4[64] = a4;
  v9.receiver = a1;
  v9.super_class = _UISceneSafeAreaCornerInsetConcreteResolver;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t _UISceneSafeAreaCornerInsetConcreteResolver.safeAreaCornerInsets(for:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 64))
  {
    goto LABEL_7;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (*(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 64) == 1)
  {
    switch(result)
    {
      case 2:
        v3 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
        v4 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 40);
        v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
        v6 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 56);
        v7 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
        v8 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 8);
        v9 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
        v10 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 24);
        goto LABEL_8;
      case 4:
        v3 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 24);
        v4 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
        v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 40);
        v6 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
        v7 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 56);
        v8 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
        v9 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 8);
        v10 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
        goto LABEL_8;
      case 3:
        v3 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 56);
        v4 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
        v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 8);
        v6 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
        v7 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 24);
        v8 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
        v9 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 40);
        v10 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
        goto LABEL_8;
    }

LABEL_7:
    v3 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
    v4 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 8);
    v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
    v6 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 24);
    v7 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
    v8 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 40);
    v9 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
    v10 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 56);
  }

LABEL_8:
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  return result;
}

BOOL _UISceneSafeAreaCornerInsetConcreteResolver.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, &v13);
  if (!*(&v14 + 1))
  {
    sub_188A553EC(&v13);
    return 0;
  }

  type metadata accessor for _UISceneSafeAreaCornerInsetConcreteResolver(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *&v11[0];
  v4 = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48);
  v11[2] = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32);
  v11[3] = v4;
  v12 = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 64);
  v5 = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16);
  v11[0] = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets);
  v11[1] = v5;
  v13 = *&v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets];
  v6 = *&v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 16];
  v7 = *&v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 32];
  v8 = *&v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 48];
  v17 = v3[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets + 64];
  v15 = v7;
  v16 = v8;
  v14 = v6;

  return sub_189116DE0(v11, &v13);
}

id _UISceneSafeAreaCornerInsetConcreteResolver.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1891176E0(a1);
  swift_unknownObjectRelease();
  return v1;
}

double _UISceneSafeAreaCornerInsetConcreteResolver.encode(withBSXPCCoder:)(void *a1)
{
  v2 = sub_18A4A72D8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18A4A23E8();
  swift_allocObject();
  sub_18A4A23D8();
  sub_189117958();
  v3 = sub_18A4A23C8();
  v5 = v4;

  sub_18A4A72C8();
  sub_18A4A72A8();
  if (v6)
  {
    v7 = sub_18A4A7258();

    v8 = sub_18A4A7258();
    [a1 encodeObject:v7 forKey:v8];
  }

  return sub_188DC0F30(v3, v5);
}

void _UISceneSafeAreaCornerInsetCompositeResolver.safeAreaCornerInsets(for:)(uint64_t a1@<X0>, float64x2_t *a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v8 = 0uLL;
LABEL_11:
    *a2 = v15;
    a2[1] = v14;
    a2[2] = v13;
    a2[3] = v8;
    return;
  }

  v6 = sub_18A4A7F68();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v8 = 0uLL;
    do
    {
      v12 = v8;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E4B0B4(v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      ++v7;
      [v9 safeAreaCornerInsetsForOrientation_];
      v14 = vbslq_s8(vcgeq_f64(v17, v14), v17, v14);
      v15 = vbslq_s8(vcgeq_f64(v16, v15), v16, v15);
      v11 = v19;
      v13 = vbslq_s8(vcgeq_f64(v18, v13), v18, v13);

      v8 = vbslq_s8(vcgeq_f64(v11, v12), v11, v12);
    }

    while (v6 != v7);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t _UISceneSafeAreaCornerInsetCompositeResolver.isEqual(_:)(uint64_t a1)
{
  v2 = sub_188C85D28(a1, v8);
  if (!v9)
  {
    sub_188A553EC(v8);
    goto LABEL_5;
  }

  type metadata accessor for _UISceneSafeAreaCornerInsetCompositeResolver(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers);
  v4 = *&v7[OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers];

  v5 = sub_1890159D0(v3, v4);

  return v5 & 1;
}

uint64_t sub_189116B08(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

id _UISceneSafeAreaCornerInsetCompositeResolver.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1891179C0(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_189116BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a4(a3);
  swift_unknownObjectRelease();
  return v6;
}

void _UISceneSafeAreaCornerInsetCompositeResolver.encode(withBSXPCCoder:)(void *a1, uint64_t a2)
{
  type metadata accessor for _UISceneSafeAreaCornerInsetResolver(a1);
  v3 = sub_18A4A7518();
  v4 = sub_18A4A7258();
  [a1 encodeCollection:v3 forKey:v4];
}

uint64_t sub_189116DAC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_189116DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (!*(a1 + 64))
  {
    if (*(a2 + 64))
    {
      return 0;
    }

    return vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1;
  }

  if (*(a1 + 64) == 1)
  {
    if (v2 != 1)
    {
      return 0;
    }

    return vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v4 = vorrq_s8(vorrq_s8(*a2, *(a2 + 32)), vorrq_s8(*(a2 + 16), *(a2 + 48)));
  return !*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

uint64_t sub_189116E84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_18A4A86C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_18A4A86C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018A6AA8C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_18A4A86C8();

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

__n128 sub_189116FA4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D988, &qword_18A667CF0);
  v51.n128_u64[0] = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  *&v54 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D990, &qword_18A667CF8);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D998, &qword_18A667D00);
  *&v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93D9A0, &qword_18A667D08);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - v13;
  v15 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v15);
  sub_189117C64();
  v16 = v55;
  sub_18A4A8998();
  if (v16)
  {
    goto LABEL_20;
  }

  v17 = v53;
  v46 = 0;
  v47 = v12;
  *&v55 = v14;
  v18 = sub_18A4A8598();
  v19 = *(v18 + 16);
  if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
  {
    v22 = sub_18A4A8188();
    swift_allocError();
    v23 = v11;
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93D830, &qword_18A667D10);
    *v25 = &_s18SafeAreaCornerTypeON;
    v26 = v55;
    sub_18A4A8558();
    sub_18A4A8178();
    (*(*(v22 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v47 + 8))(v26, v23);
LABEL_19:
    swift_unknownObjectRelease();
LABEL_20:
    result.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0Tm(v60);
    return result;
  }

  if (!*(v18 + 32))
  {
    LOBYTE(v56) = 0;
    sub_189117D60();
    v31 = v55;
    v32 = v46;
    sub_18A4A8548();
    if (v32)
    {
      v29 = *(v47 + 8);
      v30 = v31;
      goto LABEL_15;
    }

    (*(v17 + 8))(v10, v8);
    (*(v47 + 8))(v31, v11);
    swift_unknownObjectRelease();
    v40 = 0uLL;
    v54 = 0u;
    v55 = 0u;
    v39 = 2;
    v53 = 0u;
    goto LABEL_23;
  }

  if (v20 == 1)
  {
    LOBYTE(v56) = 1;
    sub_189117D0C();
    v27 = v55;
    v28 = v46;
    sub_18A4A8548();
    if (v28)
    {
      v29 = *(v47 + 8);
      v30 = v27;
LABEL_15:
      v33 = v11;
LABEL_18:
      v29(v30, v33);
      goto LABEL_19;
    }

    type metadata accessor for _UICornerInsets(0);
    sub_189117DB4(&unk_1EA93D9B0, &protocol conformance descriptor for _UICornerInsets);
    v38 = v49;
    sub_18A4A8588();
    (*(v50 + 8))(v7, v38);
    (*(v47 + 8))(v27, v11);
    swift_unknownObjectRelease();
    v39 = 0;
    v54 = v57;
    v55 = v56;
    v40 = v59;
    v53 = v58;
LABEL_23:
    v51 = v40;
    v36 = v52;
    goto LABEL_25;
  }

  LOBYTE(v56) = 2;
  sub_189117CB8();
  v34 = v55;
  v35 = v46;
  sub_18A4A8548();
  v33 = v11;
  v36 = v52;
  if (v35)
  {
    v29 = *(v47 + 8);
    v30 = v34;
    goto LABEL_18;
  }

  v41 = v33;
  type metadata accessor for _UICornerInsets(0);
  sub_189117DB4(&unk_1EA93D9B0, &protocol conformance descriptor for _UICornerInsets);
  v42 = v48;
  sub_18A4A8588();
  v43 = v47;
  (*(v51.n128_u64[0] + 8))(0, v42);
  (*(v43 + 8))(v55, v41);
  swift_unknownObjectRelease();
  v54 = v57;
  v55 = v56;
  v39 = 1;
  v53 = v58;
  v51 = v59;
LABEL_25:
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  v44 = v54;
  *v36 = v55;
  *(v36 + 16) = v44;
  result = v51;
  *(v36 + 32) = v53;
  *(v36 + 48) = result;
  *(v36 + 64) = v39;
  return result;
}

id sub_1891176E0(void *a1)
{
  v3 = sub_18A4A72D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A7258();
  v8 = [a1 decodeStringForKey_];

  if (!v8 || (sub_18A4A7288(), v8, sub_18A4A72C8(), v9 = sub_18A4A7298(), v11 = v10, , (*(v4 + 8))(v6, v3), v11 >> 60 == 15))
  {
    v12 = &v1[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets];
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    v12[64] = 2;
    v24.receiver = v1;
    v24.super_class = _UISceneSafeAreaCornerInsetConcreteResolver;
    return objc_msgSendSuper2(&v24, sel_init);
  }

  else
  {
    sub_18A4A23B8();
    swift_allocObject();
    sub_18A4A23A8();
    sub_189117DF8();
    sub_18A4A2398();

    v13 = &v1[OBJC_IVAR____UISceneSafeAreaCornerInsetConcreteResolver_safeAreaCornerInsets];
    v14 = v22;
    *(v13 + 2) = v21;
    *(v13 + 3) = v14;
    v13[64] = v23;
    v15 = v20;
    *v13 = v19;
    *(v13 + 1) = v15;
    v18.receiver = v1;
    v18.super_class = _UISceneSafeAreaCornerInsetConcreteResolver;
    v16 = objc_msgSendSuper2(&v18, sel_init);
    sub_188DBF840(v9, v11);
    return v16;
  }
}

unint64_t sub_189117958()
{
  result = qword_1EA93D900;
  if (!qword_1EA93D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D900);
  }

  return result;
}

id sub_1891179C0(void *a1)
{
  sub_188A34624(0, &qword_1EA93D840, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneSafeAreaCornerInsetResolver(ObjCClassFromMetadata);
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_18A4A7258();
  v6 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v4 forKey:v5];

  if (v6 && (v7 = [v6 bs_array], swift_unknownObjectRelease(), v7) && (v8 = sub_18A4A7548(), v7, v10 = sub_18911572C(v8, v9, type metadata accessor for _UISceneSafeAreaCornerInsetResolver), , v10))
  {
    *&v1[OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers] = v10;
    v13 = v1;
    v11 = &v13;
  }

  else
  {
    *&v1[OBJC_IVAR____UISceneSafeAreaCornerInsetCompositeResolver_resolvers] = MEMORY[0x1E69E7CC0];
    v14.receiver = v1;
    v11 = &v14;
  }

  v11->super_class = _UISceneSafeAreaCornerInsetCompositeResolver;
  return [(objc_super *)v11 init];
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t _s18SafeAreaCornerTypeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
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

uint64_t _s18SafeAreaCornerTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_189117C10(uint64_t a1)
{
  if (*(a1 + 64) <= 1u)
  {
    return *(a1 + 64);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_189117C28(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_189117C64()
{
  result = qword_1EA93D960;
  if (!qword_1EA93D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D960);
  }

  return result;
}

unint64_t sub_189117CB8()
{
  result = qword_1EA93D968;
  if (!qword_1EA93D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D968);
  }

  return result;
}

unint64_t sub_189117D0C()
{
  result = qword_1EA93D978;
  if (!qword_1EA93D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D978);
  }

  return result;
}

unint64_t sub_189117D60()
{
  result = qword_1EA93D980;
  if (!qword_1EA93D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D980);
  }

  return result;
}

uint64_t sub_189117DB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UICornerInsets(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_189117DF8()
{
  result = qword_1EA93D9C0;
  if (!qword_1EA93D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9C0);
  }

  return result;
}

unint64_t sub_189117E90()
{
  result = qword_1EA93D9C8;
  if (!qword_1EA93D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9C8);
  }

  return result;
}

unint64_t sub_189117EE8()
{
  result = qword_1EA93D9D0;
  if (!qword_1EA93D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9D0);
  }

  return result;
}

unint64_t sub_189117F40()
{
  result = qword_1EA93D9D8;
  if (!qword_1EA93D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9D8);
  }

  return result;
}

unint64_t sub_189117F98()
{
  result = qword_1EA93D9E0;
  if (!qword_1EA93D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9E0);
  }

  return result;
}

unint64_t sub_189117FF0()
{
  result = qword_1EA93D9E8;
  if (!qword_1EA93D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9E8);
  }

  return result;
}

unint64_t sub_189118048()
{
  result = qword_1EA93D9F0;
  if (!qword_1EA93D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9F0);
  }

  return result;
}

unint64_t sub_1891180A0()
{
  result = qword_1EA93D9F8;
  if (!qword_1EA93D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93D9F8);
  }

  return result;
}

unint64_t sub_1891180F8()
{
  result = qword_1EA93DA00;
  if (!qword_1EA93DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DA00);
  }

  return result;
}

unint64_t sub_189118150()
{
  result = qword_1EA93DA08;
  if (!qword_1EA93DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DA08);
  }

  return result;
}

unint64_t sub_1891181A8()
{
  result = qword_1EA93DA10;
  if (!qword_1EA93DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DA10);
  }

  return result;
}

unint64_t sub_189118200()
{
  result = qword_1EA93DA18;
  if (!qword_1EA93DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DA18);
  }

  return result;
}

void sub_18911825C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A2B48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_188E723D4(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_189118478(uint64_t *a1)
{
  v2 = *(sub_18A4A2B48() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_18917F088(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_18911CBD8(v5);
  *a1 = v3;
}

unint64_t sub_189118554()
{
  result = qword_1EA93DA20;
  if (!qword_1EA93DA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93DA20);
  }

  return result;
}

void UITableView._intelligenceCollectSubelements(in:using:transformToRoot:)(uint64_t a1, double (*a2)(void, double, double, double, double), uint64_t a3, double a4, double a5, double a6, double a7)
{
  v371 = a3;
  v372 = a2;
  v346 = a7;
  v280 = sub_18A4A3678();
  v279 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v278 = &v276 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = sub_18A4A3688();
  v282 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v281 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_18A4A3BC8();
  v284 = *(v329 - 8);
  MEMORY[0x1EEE9AC00](v329);
  v325 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_18A4A3BF8();
  v276 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v323);
  v363 = &v276 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110, &qword_18A64BD20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v305 = &v276 - v17;
  v313 = sub_18A4A4258();
  v370 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v304 = &v276 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28);
  MEMORY[0x1EEE9AC00](v294);
  v293 = &v276 - v19;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120, &qword_18A64BD30);
  MEMORY[0x1EEE9AC00](v303);
  v292 = &v276 - v20;
  v332 = sub_18A4A3D18();
  v369 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332);
  v302 = &v276 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v322 = &v276 - v23;
  v291 = sub_18A4A3E48();
  v295 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v290 = &v276 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v289 = &v276 - v26;
  v362 = sub_18A4A3BA8();
  v361 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v321 = &v276 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v360 = &v276 - v29;
  v336 = sub_18A4A3888();
  v355 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v366 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040, &qword_18A64BCC8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v324 = &v276 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v331 = &v276 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v338 = &v276 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v364 = &v276 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v376 = (&v276 - v40);
  v374 = sub_18A4A3CC8();
  v367 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v277 = &v276 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v342 = &v276 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v341 = &v276 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v365 = &v276 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v311 = &v276 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v320 = &v276 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v373 = &v276 - v53;
  v375 = sub_18A4A2B48();
  v354 = *(v375 - 1);
  MEMORY[0x1EEE9AC00](v375);
  v328 = &v276 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v337 = &v276 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v347 = &v276 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130, qword_18A66CFF0);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v309 = &v276 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v327 = &v276 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v339 = &v276 - v64;
  v356 = sub_18A4A4168();
  v352 = *(v356 - 1);
  MEMORY[0x1EEE9AC00](v356);
  v350 = &v276 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v351 = (&v276 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0, &qword_18A64BD38);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v358 = &v276 - v69;
  v368 = sub_18A4A3E68();
  v359 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  v349 = &v276 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v357 = (&v276 - v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C140, &qword_18A6654A0);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v308 = &v276 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v345 = &v276 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v276 - v78;
  v80 = sub_18A4A4088();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v276 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v276 - v85;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&aBlock, v384);
  sub_18A4A3E88();
  v377 = v7;
  sub_18911BD30(v86);
  v353 = v87;
  v88 = *(v81 + 8);
  v299 = v86;
  v88(v86, v80);
  v89 = __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  v90 = *(v370 + 56);
  v312 = v79;
  v91 = v79;
  v92 = v358;
  v307 = v370 + 56;
  v306 = v90;
  (v90)(v91, 1, 1, v313, v89);
  v348 = a1;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&aBlock, v384);
  v93 = v359;
  sub_18A4A3E88();
  sub_18A4A3E98();
  v301 = v80;
  v94 = v80;
  v95 = v368;
  v300 = v81 + 8;
  v298 = v88;
  v88(v83, v94);
  if ((v93[6])(v92, 1, v95) == 1)
  {
    sub_188A3F5FC(v92, &unk_1EA9340C0, &qword_18A64BD38);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  else
  {
    v96 = v357;
    (v93)[4](v357, v92, v95);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    v97 = UITableView._appIntentsDataSourcePayloadProvider.getter(&v388);
    if (*(&v389 + 1))
    {
      sub_188A8F66C(&v388, &aBlock);

      v99 = v351;
      sub_1890E6534(v98, v351);
      __swift_project_boxed_opaque_existential_0(&aBlock, v384);
      v100 = sub_18A4A4268();
      __swift_project_boxed_opaque_existential_0(&aBlock, v384);
      v101 = sub_18A4A4278();
      v340 = v100;
      if (v101)
      {
        (v93)[2](v349, v96, v95);
        sub_188A53994(&aBlock, &v388);
        v102 = v352;
        v103 = v356;
        (v352[2])(v350, v99, v356);

        v104 = v345;
        sub_18A4A4228();
        v102[1](v99, v103);
        (v93[1])(v96, v95);
        v306(v104, 0, 1, v313);
        sub_1890C3D9C(v104, v312);
      }

      else
      {
        v352[1](v99, v356);
        (v93[1])(v96, v95);
      }

      v105 = v374;
      v107 = v375;
      v108 = v370;
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v106 = v376;
      goto LABEL_10;
    }

    (v93[1])(v96, v95, v97);
    sub_188A3F5FC(&v388, &unk_1EA93C160, &qword_18A6654A8);
  }

  v340 = 0;
  v105 = v374;
  v106 = v376;
  v107 = v375;
  v108 = v370;
LABEL_10:
  v109 = __swift_project_boxed_opaque_existential_0(v353 + 5, v353[8]);
  v110 = MEMORY[0x1EEE9AC00](v109);
  (*(v112 + 16))(&v276 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0), v110);
  *(&v389 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v388);
  sub_18A4A7458();
  v368 = 0;
  v352 = (v354 + 48);
  v345 = v354 + 32;
  v350 = (v367 + 56);
  v357 = &v383;
  v358 = v354 + 16;
  v356 = (v367 + 48);
  v370 = v367 + 32;
  v319 = *MEMORY[0x1E69DBBC0];
  v359 = (v361 + 13);
  v318 = (v361 + 1);
  v361 = (v367 + 8);
  v335 = (v355 + 16);
  v334 = *MEMORY[0x1E69DBBA8];
  v333 = (v355 + 8);
  v326 = (v354 + 56);
  v317 = *MEMORY[0x1E69DBC38];
  v316 = v369 + 13;
  v288 = v295 + 16;
  v315 = (v369 + 1);
  v287 = v295 + 32;
  v286 = v295 + 56;
  v285 = v295 + 8;
  v310 = (v108 + 48);
  v297 = (v108 + 32);
  v296 = "CornerInsetCompositeResolver";
  v344 = (v354 + 8);
  v369 = MEMORY[0x1E69E7CC8];
  v351 = (v367 + 16);
  v314 = xmmword_18A64BFB0;
  v113 = v347;
  for (i = v106; ; i = v376)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v388, *(&v389 + 1));
    v115 = v339;
    sub_18A4A7D78();
    v116 = *v352;
    if ((*v352)(v115, 1, v107) == 1)
    {
      break;
    }

    v343 = *v345;
    v343(v113, v115, v107);
    v117 = (*v350)(i, 1, 1, v105);
    MEMORY[0x1EEE9AC00](v117);
    v118 = v377;
    *(&v276 - 2) = v377;
    *(&v276 - 1) = v113;
    *&v379 = 1;
    v119 = swift_allocObject();
    v119[2] = &v379;
    v119[3] = sub_18911CBB0;
    v119[4] = &v276 - 4;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_18911CAE0;
    *(isEscapingClosureAtFileLocation + 24) = v119;
    v385 = sub_188E3FE50;
    v386 = isEscapingClosureAtFileLocation;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v383 = sub_188A4A968;
    v384 = &block_descriptor_44_2;
    v121 = _Block_copy(&aBlock);

    [v118 performUsingPresentationValues_];
    _Block_release(v121);
    LOBYTE(v121) = swift_isEscapingClosureAtFileLocation();

    if (v121)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
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
      sub_18A4A87A8();
      __break(1u);

      __break(1u);
      return;
    }

    v349 = v116;
    isEscapingClosureAtFileLocation = v379;
    if (v379 == 1)
    {
      goto LABEL_99;
    }

    v123 = v377;
    v124 = v375;
    v125 = v376;
    if (isEscapingClosureAtFileLocation)
    {
      MEMORY[0x1EEE9AC00](v122);
      *(&v276 - 10) = v123;
      *(&v276 - 9) = isEscapingClosureAtFileLocation;
      *(&v276 - 8) = a4;
      *(&v276 - 7) = a5;
      v126 = v346;
      *(&v276 - 6) = a6;
      *(&v276 - 5) = v126;
      v127 = v372;
      *(&v276 - 4) = v348;
      *(&v276 - 3) = v127;
      *(&v276 - 2) = v371;
      v128 = v364;
      sub_18A4A33C8();
      sub_188DC900C(isEscapingClosureAtFileLocation);
      sub_188A3F5FC(v125, &unk_1EA934040, &qword_18A64BCC8);
      sub_188A3F704(v128, v125, &unk_1EA934040, &qword_18A64BCC8);
    }

    sub_18907FBC8(v113, v353[3]);
    v129 = sub_18A4A2B08();
    [v123 globalRowForRowAtIndexPath_];

    v355 = *v358;
    (v355)(v337, v113, v124);
    sub_18A4A3878();
    v130 = v338;
    sub_188A3F29C(v125, v338, &unk_1EA934040, &qword_18A64BCC8);
    v105 = v374;
    v354 = *v356;
    if ((v354)(v130, 1, v374) == 1)
    {
      v131 = sub_188A3F5FC(v130, &unk_1EA934040, &qword_18A64BCC8);
      v132 = v368;
    }

    else
    {
      isEscapingClosureAtFileLocation = v320;
      v330 = *v370;
      v330(v320, v130, v105);
      v133 = v360;
      sub_18A4A3C08();
      v134 = *v359;
      v135 = v321;
      v136 = v362;
      (*v359)(v321, v319, v362);
      v137 = MEMORY[0x18CFDEAE0](v133, v135);
      v138 = *v318;
      (*v318)(v135, v136);
      v138(v133, v136);
      if (v137)
      {
        v139 = v366;
        v140 = v336;
        (*v335)(v133, v366, v336);
        v134(v133, v334, v136);
        sub_18A4A3C18();
        (*v333)(v139, v140);
        sub_188A3F5FC(v376, &unk_1EA934040, &qword_18A64BCC8);
        v330(v373, isEscapingClosureAtFileLocation, v105);
        v141 = v368;
        v142 = v375;
        v113 = v347;
        v143 = v340;
        goto LABEL_27;
      }

      v131 = (*v361)(isEscapingClosureAtFileLocation, v105);
      v132 = v368;
      v113 = v347;
    }

    MEMORY[0x1EEE9AC00](v131);
    v144 = v377;
    *(&v276 - 2) = v377;
    *(&v276 - 1) = v113;
    v380 = 0u;
    v379 = 0u;
    LOBYTE(v381) = 1;
    v145 = swift_allocObject();
    v145[2] = &v379;
    v145[3] = sub_18911CBB8;
    v145[4] = &v276 - 4;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_189122200;
    *(isEscapingClosureAtFileLocation + 24) = v145;
    v385 = sub_188E3FE50;
    v386 = isEscapingClosureAtFileLocation;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v383 = sub_188A4A968;
    v384 = &block_descriptor_55_3;
    v146 = _Block_copy(&aBlock);

    [v144 performUsingPresentationValues_];
    _Block_release(v146);
    LOBYTE(v146) = swift_isEscapingClosureAtFileLocation();

    if (v146)
    {
      goto LABEL_91;
    }

    if (v381)
    {
      goto LABEL_100;
    }

    v147 = *(&v380 + 1);
    v148 = *&v380;
    v149 = *(&v379 + 1);
    v150 = *&v379;

    v372(v377, v150, v149, v148, v147);
    v151 = v331;
    sub_188A3F29C(v376, v331, &unk_1EA934040, &qword_18A64BCC8);
    v105 = v374;
    if ((v354)(v151, 1, v374) == 1)
    {
      sub_188A3F5FC(v151, &unk_1EA934040, &qword_18A64BCC8);
    }

    else
    {
      v152 = v367;
      v153 = *(v367 + 32);
      v154 = v311;
      v153(v311, v151, v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150, &unk_18A66CB10);
      v155 = (*(v152 + 80) + 32) & ~*(v152 + 80);
      v156 = swift_allocObject();
      *(v156 + 16) = v314;
      v153((v156 + v155), v154, v105);
    }

    v142 = v375;
    v143 = v340;
    v157 = v360;
    v158 = v366;
    isEscapingClosureAtFileLocation = v336;
    (*v335)(v360, v366, v336);
    (*v359)(v157, v334, v362);
    sub_18A4A3748();
    (*v333)(v158, isEscapingClosureAtFileLocation);
    sub_188A3F5FC(v376, &unk_1EA934040, &qword_18A64BCC8);
    v141 = v132;
    v113 = v347;
LABEL_27:
    v159 = v369;
    if (v143)
    {
      v160 = sub_1890E6F70(&aBlock);
      if (aBlock)
      {
        v161 = v327;
        (v355)(v327, v113, v142, v160);
        (*v326)(v161, 0, 1, v142);
      }

      else
      {
        isEscapingClosureAtFileLocation = v387;
        v162 = sub_18A4A2B08();
        v163 = [isEscapingClosureAtFileLocation dataSourceIndexPathForPresentationIndexPath_];

        if (v163)
        {
          v164 = v309;
          sub_18A4A2B18();

          v165 = 0;
        }

        else
        {
          v165 = 1;
          v164 = v309;
        }

        (*v326)(v164, v165, 1, v142);
        v161 = v327;
        sub_188A3F704(v164, v327, &unk_1EA93C130, qword_18A66CFF0);
      }

      sub_1890C3D10(&aBlock);
      if ((v349)(v161, 1, v142) == 1)
      {
        sub_188A3F5FC(v161, &unk_1EA93C130, qword_18A66CFF0);
      }

      else
      {
        v166 = v328;
        v343(v328, v161, v142);
        v167 = v322;
        (v355)(v322, v166, v142);
        v354 = *v316;
        (v354)(v167, v317, v332);
        if (*(v143 + 16) && (v168 = sub_188E8BD28(v167), v167 = v322, (v169 & 1) != 0))
        {
          v170 = v295;
          v171 = *(v143 + 56) + *(v295 + 72) * v168;
          v172 = v322;
          v173 = *(v295 + 16);
          v174 = v290;
          v175 = v291;
          v173(v290, v171, v291);
          v176 = *v315;
          (*v315)(v172, v332);
          v177 = v289;
          (*(v170 + 32))(v289, v174, v175);
          v178 = v293;
          v173(v293, v177, v175);
          (*(v170 + 56))(v178, 0, 1, v175);
          sub_18A4A3848();
          sub_18A4A3978();
          (*(v170 + 8))(v177, v175);
        }

        else
        {
          v176 = *v315;
          (*v315)(v167, v332);
        }

        v179 = v312;
        v180 = v313;
        v181 = v308;
        isEscapingClosureAtFileLocation = &unk_1EA93C140;
        sub_188A3F29C(v312, v308, &unk_1EA93C140, &qword_18A6654A0);
        if ((*v310)(v181, 1, v180) == 1)
        {
          (*v344)(v328, v142);
          sub_188A3F5FC(v181, &unk_1EA93C140, &qword_18A6654A0);
        }

        else
        {
          v182 = *v297;
          v368 = v141;
          v183 = v304;
          v182(v304, v181, v180);
          sub_18A4A3448();
          __swift_project_boxed_opaque_existential_0(&v379, *(&v380 + 1));
          v184 = v299;
          sub_18A4A3E88();
          v185 = sub_18A4A6E88();
          v186 = v305;
          (*(*(v185 - 8) + 56))(v305, 1, 1, v185);
          v187 = sub_18A4A3958();
          sub_18A4A3838();
          sub_188A3F5FC(v186, &unk_1EA93C110, &qword_18A64BD20);
          v298(v184, v301);
          v187(v378, 0);
          v188 = __swift_destroy_boxed_opaque_existential_0Tm(&v379);
          v189 = v302;
          v190 = v328;
          (v355)(v302, v328, v375, v188);
          isEscapingClosureAtFileLocation = v332;
          (v354)(v189, v317, v332);
          sub_18A4A4248();
          v176(v189, isEscapingClosureAtFileLocation);
          v191 = __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
          v192 = v190;
          v113 = v347;
          (*v344)(v192, v375, v191);
          sub_188A3F5FC(v179, &unk_1EA93C140, &qword_18A6654A0);
          v193 = v183;
          v141 = v368;
          v182(v179, v193, v180);
          v306(v179, 0, 1, v180);
        }

        v105 = v374;
        v159 = v369;
      }
    }

    if (sub_18A4A2B28() < 1)
    {
      goto LABEL_89;
    }

    v194 = sub_18A4A2B58();
    (*v351)(v365, v373, v105);
    sub_188A55B8C(v141, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v159;
    isEscapingClosureAtFileLocation = sub_188C4585C(v194);
    v197 = v159[2];
    v198 = (v196 & 1) == 0;
    v199 = &v197[v198];
    if (__OFADD__(v197, v198))
    {
      goto LABEL_90;
    }

    v200 = v196;
    if (v159[3] >= v199)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_188FA6DF4();
        v159 = aBlock;
      }
    }

    else
    {
      sub_1890C10CC(v199, isUniquelyReferenced_nonNull_native);
      v159 = aBlock;
      v201 = sub_188C4585C(v194);
      if ((v200 & 1) != (v202 & 1))
      {
        goto LABEL_105;
      }

      isEscapingClosureAtFileLocation = v201;
    }

    if ((v200 & 1) == 0)
    {
      v159[(isEscapingClosureAtFileLocation >> 6) + 8] = (v159[(isEscapingClosureAtFileLocation >> 6) + 8] | (1 << isEscapingClosureAtFileLocation));
      *&v159[6][8 * isEscapingClosureAtFileLocation] = v194;
      *&v159[7][8 * isEscapingClosureAtFileLocation] = MEMORY[0x1E69E7CC0];
      v203 = v159[2];
      v204 = __OFADD__(v203, 1);
      v205 = v203 + 1;
      if (v204)
      {
        goto LABEL_97;
      }

      v159[2] = v205;
    }

    v206 = v159[7];
    v207 = *&v206[8 * isEscapingClosureAtFileLocation];
    v208 = swift_isUniquelyReferenced_nonNull_native();
    *&v206[8 * isEscapingClosureAtFileLocation] = v207;
    v369 = v159;
    if ((v208 & 1) == 0)
    {
      v207 = sub_188DFA260(0, v207[2] + 1, 1, v207);
      *&v206[8 * isEscapingClosureAtFileLocation] = v207;
    }

    v107 = v375;
    v210 = v207[2];
    v209 = v207[3];
    if (v210 >= v209 >> 1)
    {
      *&v206[8 * isEscapingClosureAtFileLocation] = sub_188DFA260((v209 > 1), v210 + 1, 1, v207);
    }

    v211 = v367;
    (*(v367 + 8))(v373, v105);
    v212 = *&v206[8 * isEscapingClosureAtFileLocation];
    *(v212 + 16) = v210 + 1;
    (*(v211 + 32))(v212 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v210, v365, v105);
    (*v344)(v113, v107);
    v368 = sub_188F49350;
  }

  v213 = __swift_destroy_boxed_opaque_existential_0Tm(&v388);
  if (!(*v310)(v312, 1, v313, v213))
  {
    sub_18A4A4238();
  }

  v214 = v369;
  v215 = v369[2];
  if (v215)
  {
    v216 = sub_1890BA4EC(v369[2], 0);
    v217 = sub_1890BA164(&aBlock, v216 + 4, v215, v214);
    v218 = aBlock;
    isEscapingClosureAtFileLocation = v385;

    sub_188E036A4(v218);
    if (v217 != v215)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v216 = MEMORY[0x1E69E7CC0];
  }

  *&aBlock = v216;
  isEscapingClosureAtFileLocation = 0;
  sub_1890B9A14(&aBlock);
  v219 = v377;

  v220 = aBlock;
  v221 = *(aBlock + 16);
  LODWORD(v366) = *MEMORY[0x1E69DBC10];
  v365 = v221;
  if (v221)
  {
    v222 = 0;
    v376 = &v383;
    v358 = (v284 + 104);
    v356 = (v276 + 16);
    LODWORD(v355) = *MEMORY[0x1E69DBBF8];
    v354 = (v276 + 8);
    v223 = (aBlock + 40);
    v375 = MEMORY[0x1E69E7CC0];
    v357 = aBlock;
    while (v222 < v220[2])
    {
      v224 = *(v223 - 1);
      v225 = *v223;
      v369 = v223;
      MEMORY[0x1EEE9AC00](v220);
      *(&v276 - 2) = v219;
      *(&v276 - 1) = v224;
      *&v388 = 0;
      BYTE8(v388) = 1;
      v226 = swift_allocObject();
      v226[2] = &v388;
      v226[3] = sub_18911CA9C;
      v226[4] = &v276 - 4;
      v227 = swift_allocObject();
      *(v227 + 16) = sub_18911CAD0;
      *(v227 + 24) = v226;
      v385 = sub_188A4B574;
      v386 = v227;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v383 = sub_188A4A968;
      v384 = &block_descriptor_117;
      v228 = v219;
      v229 = _Block_copy(&aBlock);
      v373 = v225;

      [v228 performUsingPresentationValues_];
      _Block_release(v229);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_93;
      }

      if (BYTE8(v388))
      {
        goto LABEL_101;
      }

      v230 = v222;

      (*v358)(v325, v366, v329);
      v231 = *v350;
      v232 = v374;
      (*v350)(v364, 1, 1, v374);
      v231(v324, 1, 1, v232);

      v233 = sub_18A4A3BB8();
      MEMORY[0x1EEE9AC00](v233);
      v234 = v377;
      *(&v276 - 2) = v377;
      *(&v276 - 1) = v224;
      *&v388 = 1;
      v235 = swift_allocObject();
      v235[2] = &v388;
      v235[3] = sub_18911CAD4;
      v235[4] = &v276 - 4;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_18911CAE0;
      *(isEscapingClosureAtFileLocation + 24) = v235;
      v385 = sub_188E3FE50;
      v386 = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v383 = sub_188A4A968;
      v384 = &block_descriptor_13_2;
      v236 = _Block_copy(&aBlock);

      [v234 performUsingPresentationValues_];
      _Block_release(v236);
      LOBYTE(v236) = swift_isEscapingClosureAtFileLocation();

      if (v236)
      {
        goto LABEL_94;
      }

      v237 = v388;
      if (v388 == 1)
      {
        goto LABEL_102;
      }

      if (v237)
      {
        MEMORY[0x1EEE9AC00](v238);
        *(&v276 - 10) = v234;
        *(&v276 - 9) = v237;
        *(&v276 - 8) = a4;
        *(&v276 - 7) = a5;
        v239 = v346;
        *(&v276 - 6) = a6;
        *(&v276 - 5) = v239;
        v240 = v372;
        *(&v276 - 4) = v348;
        *(&v276 - 3) = v240;
        *(&v276 - 2) = v371;
        sub_18A4A33C8();
        sub_18A4A3BE8();
        sub_188DC900C(v237);
      }

      MEMORY[0x1EEE9AC00](v238);
      *(&v276 - 2) = v234;
      *(&v276 - 1) = v224;
      *&v388 = 1;
      v241 = swift_allocObject();
      v241[2] = &v388;
      v241[3] = sub_18911CAF8;
      v241[4] = &v276 - 4;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_1891221FC;
      *(isEscapingClosureAtFileLocation + 24) = v241;
      v385 = sub_188E3FE50;
      v386 = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v383 = sub_188A4A968;
      v384 = &block_descriptor_24_4;
      v242 = _Block_copy(&aBlock);

      v219 = v377;

      [v219 performUsingPresentationValues_];
      _Block_release(v242);
      LOBYTE(v242) = swift_isEscapingClosureAtFileLocation();

      if (v242)
      {
        goto LABEL_95;
      }

      v243 = v388;
      if (v388 == 1)
      {
        goto LABEL_103;
      }

      if (v243)
      {
        MEMORY[0x1EEE9AC00](v244);
        *(&v276 - 10) = v219;
        *(&v276 - 9) = v243;
        *(&v276 - 8) = a4;
        *(&v276 - 7) = a5;
        v245 = v346;
        *(&v276 - 6) = a6;
        *(&v276 - 5) = v245;
        v246 = v372;
        *(&v276 - 4) = v348;
        *(&v276 - 3) = v246;
        *(&v276 - 2) = v371;
        sub_18A4A33C8();
        sub_18A4A3BD8();
        sub_188DC900C(v243);
      }

      MEMORY[0x1EEE9AC00](v244);
      *(&v276 - 2) = v219;
      *(&v276 - 1) = v224;
      v388 = 0u;
      v389 = 0u;
      LOBYTE(AssociatedConformanceWitness) = 1;
      v247 = swift_allocObject();
      v247[2] = &v388;
      v247[3] = sub_18911CB04;
      v247[4] = &v276 - 4;
      v248 = swift_allocObject();
      *(v248 + 16) = sub_18911CB08;
      *(v248 + 24) = v247;
      v385 = sub_188E3FE50;
      v386 = v248;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v383 = sub_188A4A968;
      v384 = &block_descriptor_34;
      v249 = _Block_copy(&aBlock);

      [v219 performUsingPresentationValues_];
      _Block_release(v249);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_96;
      }

      if (AssociatedConformanceWitness)
      {
        goto LABEL_104;
      }

      v250 = v389;
      v251 = v388;

      v372(v219, *&v251, *(&v251 + 1), *&v250, *(&v250 + 1));
      v252 = v360;
      v253 = v363;
      v254 = v323;
      (*v356)(v360, v363, v323);
      v255 = v359;
      (*v359)(v252, v355, v362);
      v256 = v341;
      sub_18A4A3748();
      (*v354)(v253, v254);
      v257 = v374;
      (*v351)(v342, v256, v374);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v375 = sub_188DFA260(0, v375[2] + 1, 1, v375);
      }

      v259 = v375[2];
      v258 = v375[3];
      if (v259 >= v258 >> 1)
      {
        v375 = sub_188DFA260((v258 > 1), v259 + 1, 1, v375);
      }

      ++v222;
      isEscapingClosureAtFileLocation = v367;
      (*(v367 + 8))(v341, v257);
      v260 = v375;
      v375[2] = v259 + 1;
      (*(isEscapingClosureAtFileLocation + 32))(v260 + ((*(isEscapingClosureAtFileLocation + 80) + 32) & ~*(isEscapingClosureAtFileLocation + 80)) + *(isEscapingClosureAtFileLocation + 72) * v259, v342, v257);
      v223 = v369 + 2;
      v220 = v357;
      if (v365 == (v230 + 1))
      {
        goto LABEL_87;
      }
    }

    goto LABEL_92;
  }

  v375 = MEMORY[0x1E69E7CC0];
  v252 = v360;
  v255 = v359;
LABEL_87:

  [v219 _rowDataNumberOfSections];
  [v219 _rowDataNumberOfRows];
  v261 = v278;
  (*(v284 + 104))(v278, v366, v329);
  (*(v279 + 104))(v261, *MEMORY[0x1E69DBA98], v280);
  v262 = v281;
  v263 = sub_18A4A3668();
  MEMORY[0x1EEE9AC00](v263);
  *(&v276 - 8) = v219;
  *(&v276 - 7) = a4;
  *(&v276 - 6) = a5;
  v264 = v346;
  *(&v276 - 5) = a6;
  *(&v276 - 4) = v264;
  v265 = v372;
  *(&v276 - 3) = v348;
  *(&v276 - 2) = v265;
  *(&v276 - 1) = v371;
  sub_18A4A33D8();
  [v219 contentSize];
  v265(v219, 0.0, 0.0, v266, v267);
  v268 = v282;
  v269 = v262;
  v270 = v283;
  (*(v282 + 16))(v252, v262, v283);
  (*v255)(v252, *MEMORY[0x1E69DBB90], v362);
  v271 = v277;
  sub_18A4A3748();
  sub_18A4A3988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150, &unk_18A66CB10);
  v272 = v367;
  v273 = (*(v367 + 80) + 32) & ~*(v367 + 80);
  v274 = swift_allocObject();
  *(v274 + 16) = v314;
  v275 = v374;
  (*(v272 + 16))(v274 + v273, v271, v374);
  sub_18A4A3438();

  (*(v272 + 8))(v271, v275);
  (*(v268 + 8))(v269, v270);
  sub_188A3F5FC(v312, &unk_1EA93C140, &qword_18A6654A0);
  sub_188A55B8C(v368, 0);
}

void sub_18911BD30(uint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &v10;
  v2[4] = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_189122198;
  *(v3 + 24) = v2;
  v8[4] = sub_188E3FE50;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_168_1;
  v4 = _Block_copy(v8);
  v5 = v1;

  [v5 performUsingPresentationValues_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;
    v6 = v10;

    sub_18911E528(v5, v6, v7);
  }
}

double UITableView._appIntentsDataSourcePayloadProvider.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 _internalAppIntentsDataSourcePayloadProvider])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_188A3F5FC(v6, &qword_1EA934050, qword_18A64CA10);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C170, &qword_18A6654B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_18911BFC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_188DFA228;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188DFA16C;
  aBlock[3] = &block_descriptor_144;
  v17 = _Block_copy(aBlock);

  v18.receiver = a1;
  v18.super_class = UITableView;
  objc_msgSendSuper2(&v18, sel__intelligenceCollectSubelementsIn_using_transformToRoot_, a2, v17, a5, a6, a7, a8);
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

void sub_18911C1EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, unsigned int a13)
{
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  v27[4] = a7;
  v27[5] = v24;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188DFA16C;
  v27[3] = a8;
  v25 = _Block_copy(v27);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_18911C350(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_18A4A2B08();
  v5 = [a1 cellForRowAtIndexPath_];

  *a2 = v5;
}

void sub_18911C3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v20[4] = sub_188DFA1F8;
  v20[5] = v18;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_188DFA16C;
  v20[3] = &block_descriptor_137_1;
  v19 = _Block_copy(v20);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }
}

double sub_18911C514(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = [a1 indexPathsForSelectedRows];
  if (v6)
  {
    v7 = v6;
    sub_18A4A2B48();
    v8 = sub_18A4A7548();

    *a2 = v8;
  }

  v9 = [a1 indexPathsForVisibleRows];
  if (v9)
  {
    v11 = v9;
    sub_18A4A2B48();
    v12 = sub_18A4A7548();

    *a3 = v12;
  }

  return result;
}

uint64_t UITableView._appIntentsDataSourcePayloadProvider.setter(uint64_t a1)
{
  sub_188A3F29C(a1, v13, &unk_1EA93C160, &qword_18A6654A8);
  v4 = v14;
  if (v14)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    v3 = __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {
    v10 = 0;
  }

  [v1 _setInternalAppIntentsDataSourcePayloadProvider_];
  swift_unknownObjectRelease();
  return sub_188A3F5FC(a1, &unk_1EA93C160, &qword_18A6654A8);
}

void (*UITableView._appIntentsDataSourcePayloadProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UITableView._appIntentsDataSourcePayloadProvider.getter(v3);
  return sub_18911C7DC;
}

void sub_18911C7DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 40, &unk_1EA93C160, &qword_18A6654A8);
    sub_188A3F29C(v2 + 40, v2 + 80, &unk_1EA93C160, &qword_18A6654A8);
    v4 = *(v2 + 104);
    if (v4)
    {
      v5 = __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
      v6 = *(v4 - 8);
      v7 = MEMORY[0x1EEE9AC00](v5);
      v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v9, v7);
      v10 = sub_18A4A86A8();
      (*(v6 + 8))(v9, v4);
      v3 = __swift_destroy_boxed_opaque_existential_0Tm((v2 + 80));
    }

    else
    {
      v10 = 0;
    }

    [*(v2 + 160) _setInternalAppIntentsDataSourcePayloadProvider_];
    swift_unknownObjectRelease();
    sub_188A3F5FC(v2 + 40, &unk_1EA93C160, &qword_18A6654A8);
  }

  else
  {
    sub_188A3F29C(*a1, v2 + 120, &unk_1EA93C160, &qword_18A6654A8);
    v12 = *(v2 + 144);
    if (v12)
    {
      v13 = __swift_project_boxed_opaque_existential_0((v2 + 120), *(v2 + 144));
      v14 = *(v12 - 8);
      v15 = MEMORY[0x1EEE9AC00](v13);
      v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = sub_18A4A86A8();
      (*(v14 + 8))(v17, v12);
      v11 = __swift_destroy_boxed_opaque_existential_0Tm((v2 + 120));
    }

    else
    {
      v18 = 0;
    }

    [*(v2 + 160) _setInternalAppIntentsDataSourcePayloadProvider_];
    swift_unknownObjectRelease();
  }

  sub_188A3F5FC(v2, &unk_1EA93C160, &qword_18A6654A8);
  free(v2);
}

id sub_18911CA9C@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) numberOfRowsInSection_];
  *a1 = result;
  return result;
}

void sub_18911CBD8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_18A4A85F8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18A4A2B48();
        v6 = sub_18A4A75D8();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_18A4A2B48() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_18911CFB4(v8, v9, a1, v4);
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
    sub_18911CD04(0, v2, 1, a1);
  }
}

void sub_18911CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1890E7A48(&qword_1EA92F718, MEMORY[0x1E6969C48]);
      v26 = sub_18A4A7218();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_18911CFB4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_18A4A2B48();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v119 - v14;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_18917EF5C(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_18911D9B4(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_18917EF5C(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_18917EED0(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1890E7A48(&qword_1EA92F718, MEMORY[0x1E6969C48]);
      LODWORD(v133) = sub_18A4A7218();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_18A4A7218() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_188E4B688(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_188E4B688((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
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

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_18911D9B4(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_18917EF5C(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_18917EED0(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1890E7A48(&qword_1EA92F718, MEMORY[0x1E6969C48]);
    v109 = sub_18A4A7218();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
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

void sub_18911D9B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = sub_18A4A2B48();
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v53 = a3;
  v15 = (a2 - a1) / v13;
  v57 = a1;
  v56 = a4;
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

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v46 = (v8 + 8);
      v47 = (v8 + 16);
      v28 = a4 + v17;
      v29 = v53;
      v44 = a1;
      v45 = a4;
      v48 = v27;
      do
      {
        v42 = v26;
        v30 = a2 + v27;
        v31 = v26;
        v49 = a2;
        v50 = a2 + v27;
        while (1)
        {
          if (a2 <= a1)
          {
            v57 = a2;
            v26 = v42;
            goto LABEL_59;
          }

          v33 = v29;
          v43 = v31;
          v53 = v29 + v27;
          v34 = v28 + v27;
          v35 = *v47;
          v36 = v51;
          v37 = v28 + v27;
          v38 = v28;
          v39 = v54;
          (*v47)(v51, v37, v54);
          v40 = v52;
          (v35)(v52, v30, v39);
          sub_1890E7A48(&qword_1EA92F718, MEMORY[0x1E6969C48]);
          LOBYTE(v35) = sub_18A4A7218();
          v41 = *v46;
          (*v46)(v40, v39);
          v41(v36, v39);
          if (v35)
          {
            break;
          }

          v31 = v34;
          v29 = v53;
          if (v33 < v38 || v53 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v50;
            a1 = v44;
          }

          else
          {
            v30 = v50;
            a1 = v44;
            if (v33 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v45;
          v27 = v48;
          a2 = v49;
          if (!v32)
          {
            v26 = v31;
            goto LABEL_58;
          }
        }

        v29 = v53;
        if (v33 < v49 || v53 >= v49)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v44;
          v28 = v38;
        }

        else
        {
          a2 = v50;
          a1 = v44;
          v28 = v38;
          if (v33 != v49)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v43;
        v27 = v48;
      }

      while (v28 > v45);
    }

LABEL_58:
    v57 = a2;
LABEL_59:
    v55 = v26;
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

    v50 = a4 + v16;
    v55 = a4 + v16;
    if (v16 >= 1 && a2 < v53)
    {
      v48 = *(v8 + 16);
      v49 = v8 + 16;
      v46 = v13;
      v47 = (v8 + 8);
      do
      {
        v19 = v51;
        v20 = v54;
        v21 = v48;
        v48(v51, a2, v54);
        v22 = v52;
        v21(v52, a4, v20);
        sub_1890E7A48(&qword_1EA92F718, MEMORY[0x1E6969C48]);
        LOBYTE(v21) = sub_18A4A7218();
        v23 = *v47;
        (*v47)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v46;
          if (a1 < a2 || a1 >= v46 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v46;
          v25 = v46 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v25;
          a4 += v24;
        }

        a1 += v24;
        v57 = a1;
      }

      while (a4 < v50 && a2 < v53);
    }
  }

  sub_18911DF7C(&v57, &v56, &v55);
}

uint64_t sub_18911DF7C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_18A4A2B48();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_18911E060(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_18911E200(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1891221A4(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x18CFEA5B0](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_18911E200(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v30 = a1;
  v6 = sub_18A4A2B48();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v40 = &v27 - v12;
  v33 = *(a3 + 16);
  if (v33)
  {
    v29 = 0;
    v13 = 0;
    v38 = *(v10 + 16);
    v39 = v10 + 16;
    v32 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v14 = *(v10 + 72);
    v36 = a4 + 56;
    v37 = v14;
    v15 = (v10 + 8);
    v35 = a4;
    while (1)
    {
      v34 = v13;
      v38(v40, v32 + v37 * v13, v6, v11);
      sub_1890E7A48(&qword_1EA92F720, MEMORY[0x1E6969C38]);
      v18 = sub_18A4A7198();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v31 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23 = ~v19;
      while (1)
      {
        (v38)(v8, *(v35 + 48) + v20 * v37, v6);
        sub_1890E7A48(&qword_1EA92F710, MEMORY[0x1E6969C50]);
        v24 = sub_18A4A7248();
        v16 = *v15;
        (*v15)(v8, v6);
        if (v24)
        {
          break;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
        {
          a4 = v35;
          goto LABEL_4;
        }
      }

      result = (v16)(v40, v6);
      v26 = v30[v21];
      v30[v21] = v26 | v22;
      if ((v26 & v22) != 0)
      {
        a4 = v35;
LABEL_5:
        v17 = v34;
        goto LABEL_6;
      }

      v17 = v34;
      a4 = v35;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      ++v29;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v33)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v40, v6);
    goto LABEL_5;
  }

  v29 = 0;
LABEL_17:

  return sub_189192CB0(v30, v28, v29, a4);
}

void sub_18911E528(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_188F991B8(a2);

  v8 = sub_188F991B8(v7);

  if ((sub_18A4A4058() & 1) == 0)
  {
    v6 = sub_18911E060(a3, v6);
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v9 = sub_18A4A4038();
  if (v10)
  {
    goto LABEL_6;
  }

  v11 = v9;
  if (*(v8 + 16) <= *(v6 + 16) >> 3)
  {
    v30 = v6;

    sub_1891D7378(v8);
    v12 = v6;
  }

  else
  {

    v12 = sub_189191398(v8, v6);
  }

  v27 = *(v12 + 16);

  if (v11 >= v27)
  {
    goto LABEL_6;
  }

  v6 = sub_18911E060(a3, v6);
  v13 = 1;
LABEL_7:

  sub_18911825C(v8, v6);
  v15 = v14;
  v16 = *(v14 + 16);
  if (!v16)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v28 = v8;
  v29 = a1;
  v17 = sub_1890BA2D0(v16, 0);
  v18 = *(sub_18A4A2B48() - 8);
  sub_1890B9EC0(&v30, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v15);
  v20 = v19;
  v21 = v30;

  sub_188E036A4(v21);
  if (v20 == v16)
  {
    v8 = v28;
    a1 = v29;
LABEL_11:
    v30 = v17;
    sub_189118478(&v30);

    v22 = v30;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937EF8, &qword_18A666300);
    v24 = sub_1890E7BAC();
    type metadata accessor for DataSourceBackedViewIntelligenceCollectionState();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 96) = 0u;
    *(v25 + 112) = 0u;
    *(v25 + 128) = 0u;
    *(v25 + 144) = 0u;
    *(v25 + 160) = 0u;
    *(v25 + 24) = v6;
    *(v25 + 32) = v8;
    *(v25 + 40) = v22;
    *(v25 + 64) = v23;
    *(v25 + 72) = v24;
    *(v25 + 80) = v13;
    *(v25 + 88) = a1;
    v26 = a1;
    return;
  }

  __break(1u);

  __break(1u);
}

void sub_18911E7BC(uint64_t a1, void *a2, char *a3, double a4, double a5, double a6, double a7)
{
  v378 = a2;
  v353 = a1;
  v349 = a7;
  v330 = sub_18A4A3BC8();
  v285 = *(v330 - 8);
  MEMORY[0x1EEE9AC00](v330);
  v326 = &v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = sub_18A4A3BF8();
  v277 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v367 = &v276 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_18A4A3678();
  v280 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v279 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_18A4A3688();
  v283 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v282 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0, &qword_18A64BD28);
  MEMORY[0x1EEE9AC00](v295);
  v294 = &v276 - v15;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120, &qword_18A64BD30);
  MEMORY[0x1EEE9AC00](v306);
  v293 = &v276 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110, &qword_18A64BD20);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v305 = &v276 - v18;
  v315 = sub_18A4A4258();
  v376 = *(v315 - 8);
  MEMORY[0x1EEE9AC00](v315);
  v304 = &v276 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_18A4A3D18();
  v372 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v303 = &v276 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v311 = &v276 - v22;
  v292 = sub_18A4A3E48();
  v296 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v291 = &v276 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v290 = &v276 - v25;
  v366 = sub_18A4A3BA8();
  v371 = *(v366 - 8);
  MEMORY[0x1EEE9AC00](v366);
  v323 = &v276 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v364 = &v276 - v28;
  v337 = sub_18A4A3888();
  v359 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v370 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040, &qword_18A64BCC8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v325 = &v276 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v332 = &v276 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v339 = &v276 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v368 = &v276 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v347 = &v276 - v39;
  v40 = sub_18A4A3CC8();
  v373 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v343 = &v276 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v342 = &v276 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v278 = &v276 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v313 = &v276 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v369 = &v276 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v322 = &v276 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v375 = &v276 - v53;
  v377 = sub_18A4A2B48();
  v358 = *(v377 - 1);
  MEMORY[0x1EEE9AC00](v377);
  v329 = &v276 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v338 = &v276 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v351 = &v276 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130, qword_18A66CFF0);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v310 = &v276 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v328 = &v276 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v340 = &v276 - v64;
  v361 = sub_18A4A4168();
  v360 = *(v361 - 1);
  MEMORY[0x1EEE9AC00](v361);
  v355 = &v276 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v356 = (&v276 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0, &qword_18A64BD38);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v374 = &v276 - v69;
  v363 = sub_18A4A3E68();
  v365 = *(v363 - 1);
  MEMORY[0x1EEE9AC00](v363);
  v354 = &v276 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v362 = &v276 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C140, &qword_18A6654A0);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v309 = &v276 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v352 = (&v276 - v76);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v276 - v78;
  v80 = sub_18A4A4088();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v276 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v276 - v85;
  v350 = a3;
  v380 = a3;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&aBlock, v387);
  sub_18A4A3E88();
  sub_18911BD30(v86);
  v357 = v87;
  v88 = *(v81 + 8);
  v300 = v86;
  v88(v86, v80);
  v89 = __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  v90 = *(v376 + 56);
  v314 = v79;
  v91 = v79;
  v92 = v363;
  v308 = v376 + 56;
  v307 = v90;
  (v90)(v91, 1, 1, v315, v89);
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&aBlock, v387);
  sub_18A4A3E88();
  v93 = v374;
  sub_18A4A3E98();
  v94 = v83;
  v95 = v365;
  v302 = v80;
  v301 = v81 + 8;
  v299 = v88;
  v88(v94, v80);
  if ((v95[6])(v93, 1, v92) == 1)
  {
    sub_188A3F5FC(v93, &unk_1EA9340C0, &qword_18A64BD38);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  else
  {
    v96 = v362;
    (v95[4])(v362, v93, v92);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
    v97 = UITableView._appIntentsDataSourcePayloadProvider.getter(&v391);
    if (*(&v392 + 1))
    {
      sub_188A8F66C(&v391, &aBlock);

      v99 = v356;
      sub_1890E6534(v98, v356);
      __swift_project_boxed_opaque_existential_0(&aBlock, v387);
      v100 = sub_18A4A4268();
      __swift_project_boxed_opaque_existential_0(&aBlock, v387);
      v101 = sub_18A4A4278();
      v341 = v100;
      if (v101)
      {
        (v95[2])(v354, v96, v92);
        sub_188A53994(&aBlock, &v391);
        v102 = v360;
        v103 = v361;
        (v360[2])(v355, v99, v361);

        v104 = v352;
        sub_18A4A4228();
        (v102[1])(v99, v103);
        v95[1](v96, v92);
        v307(v104, 0, 1, v315);
        sub_1890C3D9C(v104, v314);
      }

      else
      {
        (v360[1])(v99, v361);
        v95[1](v96, v92);
      }

      v106 = v377;
      v107 = v340;
      __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
      v105 = v347;
      goto LABEL_10;
    }

    (v95[1])(v96, v92, v97);
    sub_188A3F5FC(&v391, &unk_1EA93C160, &qword_18A6654A8);
  }

  v341 = 0;
  v105 = v347;
  v106 = v377;
  v107 = v340;
LABEL_10:
  v108 = __swift_project_boxed_opaque_existential_0(v357 + 5, v357[8]);
  v109 = MEMORY[0x1EEE9AC00](v108);
  (*(v111 + 16))(&v276 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), v109);
  *(&v392 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v391);
  sub_18A4A7458();
  v112 = 0;
  v356 = v358 + 48;
  v346 = (v358 + 32);
  v354 = (v373 + 56);
  v361 = &v386;
  v362 = v358 + 16;
  v360 = (v373 + 48);
  v374 = (v373 + 32);
  v321 = *MEMORY[0x1E69DBBC0];
  v363 = (v371 + 104);
  v320 = (v371 + 8);
  v365 = (v373 + 8);
  v336 = (v359 + 16);
  v335 = *MEMORY[0x1E69DBBA8];
  v334 = (v359 + 8);
  v348 = v350 + 16;
  v327 = (v358 + 56);
  v319 = *MEMORY[0x1E69DBC38];
  v318 = (v372 + 13);
  v289 = v296 + 16;
  v317 = (v372 + 1);
  v288 = v296 + 32;
  v287 = v296 + 56;
  v286 = v296 + 8;
  v312 = (v376 + 48);
  v298 = (v376 + 32);
  v297 = "CornerInsetCompositeResolver";
  v345 = (v358 + 8);
  v355 = (v373 + 16);
  v316 = xmmword_18A64BFB0;
  v372 = MEMORY[0x1E69E7CC8];
  v376 = v40;
  v113 = v351;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v391, *(&v392 + 1));
    sub_18A4A7D78();
    v114 = *v356;
    v115 = (*v356)(v107, 1, v106);
    v371 = v112;
    if (v115 == 1)
    {
      break;
    }

    v344 = *v346;
    (v344)(v113, v107, v106);
    v116 = v105;
    v117 = v105;
    v118 = v40;
    v119 = (*v354)(v117, 1, 1, v40);
    MEMORY[0x1EEE9AC00](v119);
    v120 = v378;
    *(&v276 - 2) = v378;
    *(&v276 - 1) = v113;
    *&v382 = 1;
    v121 = swift_allocObject();
    v121[2] = &v382;
    v121[3] = sub_189122258;
    v121[4] = &v276 - 4;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_1891221FC;
    *(isEscapingClosureAtFileLocation + 24) = v121;
    v388 = sub_188E3FE50;
    v389 = isEscapingClosureAtFileLocation;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v386 = sub_188A4A968;
    v387 = &block_descriptor_118_4;
    v123 = _Block_copy(&aBlock);

    [v120 performUsingPresentationValues_];
    _Block_release(v123);
    LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

    if (v123)
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
      _Block_release(v350);
      sub_18A4A87A8();
      __break(1u);

      __break(1u);
      return;
    }

    v352 = v114;
    isEscapingClosureAtFileLocation = v382;
    if (v382 == 1)
    {
      goto LABEL_100;
    }

    if (isEscapingClosureAtFileLocation)
    {
      MEMORY[0x1EEE9AC00](v124);
      *(&v276 - 10) = v120;
      *(&v276 - 9) = isEscapingClosureAtFileLocation;
      *(&v276 - 8) = a4;
      *(&v276 - 7) = a5;
      v125 = v349;
      *(&v276 - 6) = a6;
      *(&v276 - 5) = v125;
      *(&v276 - 4) = v353;
      *(&v276 - 3) = sub_188B17584;
      *(&v276 - 2) = &v379;
      v126 = v368;
      sub_18A4A33C8();
      sub_188DC900C(isEscapingClosureAtFileLocation);
      sub_188A3F5FC(v116, &unk_1EA934040, &qword_18A64BCC8);
      sub_188A3F704(v126, v116, &unk_1EA934040, &qword_18A64BCC8);
    }

    sub_18907FBC8(v113, v357[3]);
    v127 = sub_18A4A2B08();
    [v120 globalRowForRowAtIndexPath_];

    v359 = *v362;
    (v359)(v338, v113, v377);
    sub_18A4A3878();
    v128 = v339;
    sub_188A3F29C(v116, v339, &unk_1EA934040, &qword_18A64BCC8);
    v358 = *v360;
    if ((v358)(v128, 1, v118) == 1)
    {
      v129 = sub_188A3F5FC(v128, &unk_1EA934040, &qword_18A64BCC8);
      v130 = v377;
    }

    else
    {
      v131 = v322;
      v331 = *v374;
      v331(v322, v128, v118);
      v132 = v364;
      sub_18A4A3C08();
      v133 = *v363;
      v134 = v323;
      v135 = v366;
      (*v363)(v323, v321, v366);
      v136 = MEMORY[0x18CFDEAE0](v132, v134);
      v137 = *v320;
      (*v320)(v134, v135);
      v137(v132, v135);
      if (v136)
      {
        isEscapingClosureAtFileLocation = v370;
        v138 = v337;
        (*v336)(v132, v370, v337);
        v133(v132, v335, v135);
        sub_18A4A3C18();
        (*v334)(isEscapingClosureAtFileLocation, v138);
        v139 = v347;
        sub_188A3F5FC(v347, &unk_1EA934040, &qword_18A64BCC8);
        v331(v375, v131, v118);
        v40 = v118;
        v105 = v139;
        v130 = v377;
        v140 = v351;
        v141 = v341;
        if (!v341)
        {
          goto LABEL_44;
        }

LABEL_28:
        v159 = sub_1890E6F70(&aBlock);
        if (aBlock)
        {
          v160 = v328;
          (v359)(v328, v140, v130, v159);
          (*v327)(v160, 0, 1, v130);
        }

        else
        {
          isEscapingClosureAtFileLocation = v390;
          v161 = sub_18A4A2B08();
          v162 = [isEscapingClosureAtFileLocation dataSourceIndexPathForPresentationIndexPath_];

          if (v162)
          {
            isEscapingClosureAtFileLocation = v310;
            sub_18A4A2B18();

            v163 = isEscapingClosureAtFileLocation;
            v164 = 0;
          }

          else
          {
            v164 = 1;
            v163 = v310;
          }

          (*v327)(v163, v164, 1, v130);
          v165 = v163;
          v160 = v328;
          sub_188A3F704(v165, v328, &unk_1EA93C130, qword_18A66CFF0);
        }

        sub_1890C3D10(&aBlock);
        if ((v352)(v160, 1, v130) == 1)
        {
          sub_188A3F5FC(v160, &unk_1EA93C130, qword_18A66CFF0);
        }

        else
        {
          v166 = v160;
          v167 = v329;
          (v344)(v329, v166, v130);
          v168 = v311;
          (v359)(v311, v167, v130);
          v358 = *v318;
          (v358)(v168, v319, v333);
          if (*(v141 + 16) && (v169 = sub_188E8BD28(v168), (v170 & 1) != 0))
          {
            v171 = v296;
            v172 = *(v296 + 16);
            v173 = v291;
            v174 = v292;
            v172(v291, *(v141 + 56) + *(v296 + 72) * v169, v292);
            v175 = *v317;
            (*v317)(v168, v333);
            v176 = v290;
            (*(v171 + 32))(v290, v173, v174);
            v177 = v294;
            v172(v294, v176, v174);
            (*(v171 + 56))(v177, 0, 1, v174);
            sub_18A4A3848();
            sub_18A4A3978();
            (*(v171 + 8))(v176, v174);
          }

          else
          {
            v175 = *v317;
            (*v317)(v168, v333);
          }

          v178 = v314;
          v179 = v315;
          v180 = v309;
          isEscapingClosureAtFileLocation = &unk_1EA93C140;
          sub_188A3F29C(v314, v309, &unk_1EA93C140, &qword_18A6654A0);
          if ((*v312)(v180, 1, v179) == 1)
          {
            (*v345)(v329, v377);
            sub_188A3F5FC(v180, &unk_1EA93C140, &qword_18A6654A0);
          }

          else
          {
            v344 = v175;
            v352 = *v298;
            v181 = v304;
            v352(v304, v180, v179);
            sub_18A4A3448();
            __swift_project_boxed_opaque_existential_0(&v382, *(&v383 + 1));
            v182 = v300;
            sub_18A4A3E88();
            v183 = sub_18A4A6E88();
            v184 = v305;
            (*(*(v183 - 8) + 56))(v305, 1, 1, v183);
            v185 = sub_18A4A3958();
            sub_18A4A3838();
            sub_188A3F5FC(v184, &unk_1EA93C110, &qword_18A64BD20);
            v299(v182, v302);
            v185(v381, 0);
            v186 = __swift_destroy_boxed_opaque_existential_0Tm(&v382);
            v187 = v303;
            v188 = v329;
            v189 = v377;
            (v359)(v303, v329, v377, v186);
            isEscapingClosureAtFileLocation = v333;
            (v358)(v187, v319, v333);
            sub_18A4A4248();
            v344(v187, isEscapingClosureAtFileLocation);
            v190 = __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
            v191 = v188;
            v140 = v351;
            (*v345)(v191, v189, v190);
            sub_188A3F5FC(v178, &unk_1EA93C140, &qword_18A6654A0);
            v352(v178, v181, v179);
            v307(v178, 0, 1, v179);
          }

          v105 = v347;
        }

        goto LABEL_44;
      }

      v129 = (*v365)(v131, v118);
      v130 = v377;
      v113 = v351;
    }

    MEMORY[0x1EEE9AC00](v129);
    v142 = v378;
    *(&v276 - 2) = v378;
    *(&v276 - 1) = v113;
    v383 = 0u;
    v382 = 0u;
    LOBYTE(v384) = 1;
    v143 = swift_allocObject();
    v143[2] = &v382;
    v143[3] = sub_189122250;
    v143[4] = &v276 - 4;
    isEscapingClosureAtFileLocation = swift_allocObject();
    *(isEscapingClosureAtFileLocation + 16) = sub_189122200;
    *(isEscapingClosureAtFileLocation + 24) = v143;
    v388 = sub_188E3FE50;
    v389 = isEscapingClosureAtFileLocation;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v386 = sub_188A4A968;
    v387 = &block_descriptor_130_0;
    v144 = _Block_copy(&aBlock);

    [v142 performUsingPresentationValues_];
    _Block_release(v144);
    LOBYTE(v144) = swift_isEscapingClosureAtFileLocation();

    if (v144)
    {
      goto LABEL_93;
    }

    if (v384)
    {
      goto LABEL_101;
    }

    v145 = *(&v383 + 1);
    v146 = *&v383;
    v147 = *(&v382 + 1);
    v148 = *&v382;

    (*(v350 + 2))(v350, v378, v148, v147, v146, v145);
    v149 = v347;
    v150 = v332;
    sub_188A3F29C(v347, v332, &unk_1EA934040, &qword_18A64BCC8);
    v151 = v376;
    if ((v358)(v150, 1, v376) == 1)
    {
      sub_188A3F5FC(v150, &unk_1EA934040, &qword_18A64BCC8);
    }

    else
    {
      v152 = v373;
      v153 = *(v373 + 32);
      v154 = v313;
      v153(v313, v150, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150, &unk_18A66CB10);
      v155 = (*(v152 + 80) + 32) & ~*(v152 + 80);
      v156 = swift_allocObject();
      *(v156 + 16) = v316;
      v153((v156 + v155), v154, v151);
    }

    v141 = v341;
    v157 = v364;
    v158 = v370;
    isEscapingClosureAtFileLocation = v337;
    (*v336)(v364, v370, v337);
    (*v363)(v157, v335, v366);
    sub_18A4A3748();
    (*v334)(v158, isEscapingClosureAtFileLocation);
    v105 = v149;
    sub_188A3F5FC(v149, &unk_1EA934040, &qword_18A64BCC8);
    v40 = v376;
    v140 = v351;
    if (v141)
    {
      goto LABEL_28;
    }

LABEL_44:
    if (sub_18A4A2B28() < 1)
    {
      goto LABEL_91;
    }

    v192 = sub_18A4A2B58();
    (*v355)(v369, v375, v40);
    sub_188A55B8C(v371, 0);
    v193 = v372;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v193;
    isEscapingClosureAtFileLocation = sub_188C4585C(v192);
    v196 = v193[2];
    v197 = (v195 & 1) == 0;
    v198 = v196 + v197;
    if (__OFADD__(v196, v197))
    {
      goto LABEL_92;
    }

    v199 = v195;
    if (v193[3] >= v198)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v195)
        {
          goto LABEL_54;
        }
      }

      else
      {
        sub_188FA6DF4();
        v193 = aBlock;
        if (v199)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      sub_1890C10CC(v198, isUniquelyReferenced_nonNull_native);
      v193 = aBlock;
      v200 = sub_188C4585C(v192);
      if ((v199 & 1) != (v201 & 1))
      {
        goto LABEL_106;
      }

      isEscapingClosureAtFileLocation = v200;
      if (v199)
      {
        goto LABEL_54;
      }
    }

    v193[(isEscapingClosureAtFileLocation >> 6) + 8] |= 1 << isEscapingClosureAtFileLocation;
    *(v193[6] + 8 * isEscapingClosureAtFileLocation) = v192;
    *(v193[7] + 8 * isEscapingClosureAtFileLocation) = MEMORY[0x1E69E7CC0];
    v202 = v193[2];
    v203 = __OFADD__(v202, 1);
    v204 = v202 + 1;
    if (v203)
    {
      goto LABEL_99;
    }

    v193[2] = v204;
LABEL_54:
    v372 = v193;
    v205 = v193[7];
    v206 = *(v205 + 8 * isEscapingClosureAtFileLocation);
    v207 = swift_isUniquelyReferenced_nonNull_native();
    *(v205 + 8 * isEscapingClosureAtFileLocation) = v206;
    v208 = v140;
    if ((v207 & 1) == 0)
    {
      v206 = sub_188DFA260(0, v206[2] + 1, 1, v206);
      *(v205 + 8 * isEscapingClosureAtFileLocation) = v206;
    }

    v106 = v377;
    v107 = v340;
    v210 = v206[2];
    v209 = v206[3];
    if (v210 >= v209 >> 1)
    {
      *(v205 + 8 * isEscapingClosureAtFileLocation) = sub_188DFA260((v209 > 1), v210 + 1, 1, v206);
    }

    v211 = v373;
    (*(v373 + 8))(v375, v40);
    v212 = *(v205 + 8 * isEscapingClosureAtFileLocation);
    *(v212 + 16) = v210 + 1;
    (*(v211 + 32))(v212 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v210, v369, v40);
    v113 = v208;
    (*v345)(v208, v106);
    v112 = sub_188F49350;
  }

  v213 = __swift_destroy_boxed_opaque_existential_0Tm(&v391);
  if (!(*v312)(v314, 1, v315, v213))
  {
    sub_18A4A4238();
  }

  v214 = v372;
  v215 = v372[2];
  if (v215)
  {
    v216 = sub_1890BA4EC(v372[2], 0);
    v217 = sub_1890BA164(&aBlock, v216 + 4, v215, v214);
    v218 = aBlock;

    sub_188E036A4(v218);
    if (v217 != v215)
    {
      __break(1u);
      goto LABEL_66;
    }
  }

  else
  {
LABEL_66:
    v216 = MEMORY[0x1E69E7CC0];
  }

  *&aBlock = v216;
  isEscapingClosureAtFileLocation = 0;
  sub_1890B9A14(&aBlock);

  v220 = aBlock;
  v221 = *(aBlock + 16);
  LODWORD(v369) = *MEMORY[0x1E69DBC10];
  v222 = v376;
  v362 = v221;
  if (v221)
  {
    v223 = 0;
    v377 = &v386;
    v361 = (v285 + 104);
    v359 = (v277 + 16);
    LODWORD(v358) = *MEMORY[0x1E69DBBF8];
    v356 = (v277 + 8);
    v224 = (aBlock + 40);
    v375 = MEMORY[0x1E69E7CC0];
    v360 = aBlock;
    while (v223 < v220[2])
    {
      v225 = *(v224 - 1);
      v226 = *v224;
      v370 = v224;
      MEMORY[0x1EEE9AC00](v219);
      v227 = v378;
      *(&v276 - 2) = v378;
      *(&v276 - 1) = v225;
      *&v391 = 0;
      BYTE8(v391) = 1;
      v228 = swift_allocObject();
      v228[2] = &v391;
      v228[3] = sub_189122218;
      v228[4] = &v276 - 4;
      v229 = swift_allocObject();
      *(v229 + 16) = sub_189122204;
      *(v229 + 24) = v228;
      v388 = sub_188E3FE50;
      v389 = v229;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v386 = sub_188A4A968;
      v387 = &block_descriptor_67_1;
      v230 = _Block_copy(&aBlock);
      v372 = v226;

      [v227 performUsingPresentationValues_];
      _Block_release(v230);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_95;
      }

      if (BYTE8(v391))
      {
        goto LABEL_102;
      }

      v231 = v223;

      (*v361)(v326, v369, v330);
      v232 = *v354;
      v233 = v376;
      (*v354)(v368, 1, 1, v376);
      v232(v325, 1, 1, v233);

      v234 = sub_18A4A3BB8();
      MEMORY[0x1EEE9AC00](v234);
      v235 = v378;
      *(&v276 - 2) = v378;
      *(&v276 - 1) = v225;
      *&v391 = 1;
      v236 = swift_allocObject();
      v236[2] = &v391;
      v236[3] = sub_189122244;
      v236[4] = &v276 - 4;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_1891221FC;
      *(isEscapingClosureAtFileLocation + 24) = v236;
      v388 = sub_188E3FE50;
      v389 = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v386 = sub_188A4A968;
      v387 = &block_descriptor_79_3;
      v237 = _Block_copy(&aBlock);

      [v235 performUsingPresentationValues_];
      _Block_release(v237);
      LOBYTE(v237) = swift_isEscapingClosureAtFileLocation();

      if (v237)
      {
        goto LABEL_96;
      }

      v238 = v391;
      if (v391 == 1)
      {
        goto LABEL_103;
      }

      v240 = v378;
      if (v238)
      {
        MEMORY[0x1EEE9AC00](v239);
        *(&v276 - 10) = v240;
        *(&v276 - 9) = v238;
        *(&v276 - 8) = a4;
        *(&v276 - 7) = a5;
        v241 = v349;
        *(&v276 - 6) = a6;
        *(&v276 - 5) = v241;
        *(&v276 - 4) = v353;
        *(&v276 - 3) = sub_188B17584;
        *(&v276 - 2) = &v379;
        sub_18A4A33C8();
        sub_18A4A3BE8();
        sub_188DC900C(v238);
      }

      MEMORY[0x1EEE9AC00](v239);
      *(&v276 - 2) = v240;
      *(&v276 - 1) = v225;
      *&v391 = 1;
      v242 = swift_allocObject();
      v242[2] = &v391;
      v242[3] = sub_189122248;
      v242[4] = &v276 - 4;
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = sub_1891221FC;
      *(isEscapingClosureAtFileLocation + 24) = v242;
      v388 = sub_188E3FE50;
      v389 = isEscapingClosureAtFileLocation;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v386 = sub_188A4A968;
      v387 = &block_descriptor_91;
      v243 = _Block_copy(&aBlock);

      [v240 performUsingPresentationValues_];
      _Block_release(v243);
      LOBYTE(v243) = swift_isEscapingClosureAtFileLocation();

      if (v243)
      {
        goto LABEL_97;
      }

      v244 = v391;
      if (v391 == 1)
      {
        goto LABEL_104;
      }

      v246 = v378;
      if (v244)
      {
        MEMORY[0x1EEE9AC00](v245);
        *(&v276 - 10) = v246;
        *(&v276 - 9) = v244;
        *(&v276 - 8) = a4;
        *(&v276 - 7) = a5;
        v247 = v349;
        *(&v276 - 6) = a6;
        *(&v276 - 5) = v247;
        *(&v276 - 4) = v353;
        *(&v276 - 3) = sub_188B17584;
        *(&v276 - 2) = &v379;
        sub_18A4A33C8();
        sub_18A4A3BD8();
        sub_188DC900C(v244);
      }

      MEMORY[0x1EEE9AC00](v245);
      *(&v276 - 2) = v246;
      *(&v276 - 1) = v225;
      v391 = 0u;
      v392 = 0u;
      LOBYTE(AssociatedConformanceWitness) = 1;
      v248 = swift_allocObject();
      v248[2] = &v391;
      v248[3] = sub_18912224C;
      v248[4] = &v276 - 4;
      v249 = swift_allocObject();
      *(v249 + 16) = sub_189122200;
      *(v249 + 24) = v248;
      v388 = sub_188E3FE50;
      v389 = v249;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v386 = sub_188A4A968;
      v387 = &block_descriptor_103_4;
      v250 = _Block_copy(&aBlock);

      [v246 performUsingPresentationValues_];
      _Block_release(v250);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_98;
      }

      if (AssociatedConformanceWitness)
      {
        goto LABEL_105;
      }

      v251 = v392;
      v252 = v391;

      (*(v350 + 2))(v350, v378, *&v252, *(&v252 + 1), *&v251, *(&v251 + 1));
      isEscapingClosureAtFileLocation = v364;
      v253 = v367;
      v254 = v324;
      (*v359)(v364, v367, v324);
      v255 = v363;
      (*v363)(isEscapingClosureAtFileLocation, v358, v366);
      v256 = v342;
      sub_18A4A3748();
      (*v356)(v253, v254);
      (*v355)(v343, v256, v376);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v375 = sub_188DFA260(0, *(v375 + 2) + 1, 1, v375);
      }

      v220 = v360;
      v258 = *(v375 + 2);
      v257 = *(v375 + 3);
      if (v258 >= v257 >> 1)
      {
        v375 = sub_188DFA260((v257 > 1), v258 + 1, 1, v375);
      }

      ++v223;
      v259 = v373;
      v222 = v376;
      (*(v373 + 8))(v342, v376);
      v260 = v375;
      *(v375 + 2) = v258 + 1;
      v219 = (*(v259 + 32))(&v260[((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v258], v343, v222);
      v224 = v370 + 16;
      if (v362 == (v231 + 1))
      {
        goto LABEL_89;
      }
    }

    goto LABEL_94;
  }

  v375 = MEMORY[0x1E69E7CC0];
  isEscapingClosureAtFileLocation = v364;
  v255 = v363;
LABEL_89:

  v261 = isEscapingClosureAtFileLocation;
  v262 = v255;
  v263 = v378;
  [v378 _rowDataNumberOfSections];
  [v263 _rowDataNumberOfRows];
  v264 = v279;
  (*(v285 + 104))(v279, v369, v330);
  (*(v280 + 104))(v264, *MEMORY[0x1E69DBA98], v281);
  v265 = v282;
  v266 = sub_18A4A3668();
  MEMORY[0x1EEE9AC00](v266);
  *(&v276 - 8) = v263;
  *(&v276 - 7) = a4;
  *(&v276 - 6) = a5;
  v267 = v349;
  *(&v276 - 5) = a6;
  *(&v276 - 4) = v267;
  *(&v276 - 3) = v353;
  *(&v276 - 2) = sub_188B17584;
  *(&v276 - 1) = &v379;
  sub_18A4A33D8();
  [v263 contentSize];
  (*(v350 + 2))(v350, v263, 0.0, 0.0, v268, v269);
  v270 = v283;
  v271 = v284;
  (*(v283 + 16))(v261, v265, v284);
  (*v262)(v261, *MEMORY[0x1E69DBB90], v366);
  v272 = v278;
  sub_18A4A3748();
  sub_18A4A3988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150, &unk_18A66CB10);
  v273 = v373;
  v274 = (*(v373 + 80) + 32) & ~*(v373 + 80);
  v275 = swift_allocObject();
  *(v275 + 16) = v316;
  (*(v273 + 16))(v275 + v274, v272, v222);
  sub_18A4A3438();

  (*(v273 + 8))(v272, v222);
  (*(v270 + 8))(v265, v271);
  sub_188A3F5FC(v314, &unk_1EA93C140, &qword_18A6654A0);
  sub_188A55B8C(v371, 0);
}

void *sub_189121FB4()
{
  v1 = *(v0 + 16);
  result = (*(v0 + 24))(&v3);
  *v1 = v3;
  *(v1 + 8) = 0;
  return result;
}

id sub_189121FF8@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [*(v2 + 16) *a1];
  *a2 = result;
  return result;
}

id sub_189122034@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) rectForSection_];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

uint64_t sub_189122084(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + 16);
  (*(v1 + 24))(&v6);
  v3 = *v2;
  *v2 = v6;

  return a1(v3);
}

void sub_1891220E0(void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = sub_18A4A2B08();
  [v4 rectForRowAtIndexPath_];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = v13;
}

double sub_189122154()
{
  v1 = *(v0 + 16);
  (*(v0 + 24))(v4);
  result = *v4;
  v3 = v4[1];
  *v1 = v4[0];
  *(v1 + 16) = v3;
  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_1891221A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_18911E200(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *sub_189122384(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v2 = a1;
    return a1;
  }

  v4 = [a1 superview];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_189122384(v4);

  return v6;
}

uint64_t sub_189122420(unint64_t a1, void *a2)
{
  sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
  v6 = sub_18A4A7C88();
  result = 0;
  if ((v6 & 1) == 0)
  {
    v110 = a1;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = &selRef_stopSpinner;
    if (a1)
    {
      v10 = *(MEMORY[0x1E69E7CC0] + 24);
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_120;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
      a1 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(a1);
      v14 = v13 - 32;
      if (v13 < 32)
      {
        v14 = v13 - 25;
      }

      v15 = v14 >> 3;
      *(a1 + 16) = v12;
      *(a1 + 24) = (2 * v15) | 1;
      v16 = (a1 + 32);
      v17 = v8[3] >> 1;
      v18 = (a1 + 32 + 8 * v17);
      v19 = v15 & 0x7FFFFFFFFFFFFFFFLL;
      if (v8[2])
      {
        if (a1 != v8 || v16 >= &v8[v17 + 4])
        {
          memcpy(v16, v8 + 4, 8 * v17);
        }

        v8[2] = 0;
      }

      v21 = v19 + ~v17;
      v22 = v110;
      *v18 = v110;
      v2 = [v22 superview];

      if (v2)
      {
        v3 = &unk_18A64BA50;
        do
        {
          if (v21)
          {
            ++v18;
            v23 = __OFSUB__(v21--, 1);
            if (v23)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v24 = *(a1 + 24);
            if (((v24 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_120;
            }

            v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
            if (v25 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = v25;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
            v27 = swift_allocObject();
            v28 = _swift_stdlib_malloc_size(v27);
            v29 = v28 - 32;
            if (v28 < 32)
            {
              v29 = v28 - 25;
            }

            v30 = v29 >> 3;
            v27[2] = v26;
            v27[3] = (2 * (v29 >> 3)) | 1;
            v31 = (v27 + 4);
            v32 = *(a1 + 24) >> 1;
            if (*(a1 + 16))
            {
              v33 = (a1 + 32);
              if (v27 != a1 || v31 >= v33 + 8 * v32)
              {
                memmove(v27 + 4, v33, 8 * v32);
              }

              *(a1 + 16) = 0;
            }

            v18 = (v31 + 8 * v32);
            v34 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

            a1 = v27;
            v23 = __OFSUB__(v34, 1);
            v21 = v34 - 1;
            if (v23)
            {
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
          }

          *v18 = v2;
          v35 = [v2 superview];

          v2 = v35;
        }

        while (v35);
      }
    }

    else
    {
      v21 = 0;
      a1 = MEMORY[0x1E69E7CC0];
    }

    v36 = *(a1 + 24);
    if (v36 >= 2)
    {
      v37 = v36 >> 1;
      v23 = __OFSUB__(v37, v21);
      v38 = v37 - v21;
      if (v23)
      {
        goto LABEL_123;
      }

      *(a1 + 16) = v38;
    }

    v109 = a2;
    v39 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      v40 = *(MEMORY[0x1E69E7CC0] + 24);
      if (((v40 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_121;
      }

      v41 = v40 & 0xFFFFFFFFFFFFFFFELL;
      if (v41 <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
      v2 = swift_allocObject();
      v43 = _swift_stdlib_malloc_size(v2);
      v44 = v43 - 32;
      if (v43 < 32)
      {
        v44 = v43 - 25;
      }

      v45 = v44 >> 3;
      *(v2 + 16) = v42;
      *(v2 + 24) = (2 * v45) | 1;
      v46 = (v2 + 32);
      v47 = v39[3] >> 1;
      v48 = (v2 + 32 + 8 * v47);
      v49 = v45 & 0x7FFFFFFFFFFFFFFFLL;
      if (v39[2])
      {
        if (v2 != v39 || v46 >= &v39[v47 + 4])
        {
          memcpy(v46, v39 + 4, 8 * v47);
        }

        v39[2] = 0;
      }

      v3 = (v49 + ~v47);
      v50 = v109;
      *v48 = v109;
      v51 = [v50 superview];

      if (v51)
      {
        do
        {
          if (v3)
          {
            ++v48;
            v23 = __OFSUB__(v3--, 1);
            if (v23)
            {
              goto LABEL_119;
            }
          }

          else
          {
            v52 = *(v2 + 24);
            if (((v52 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_121;
            }

            v53 = v52 & 0xFFFFFFFFFFFFFFFELL;
            if (v53 <= 1)
            {
              v54 = 1;
            }

            else
            {
              v54 = v53;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
            v55 = swift_allocObject();
            v56 = _swift_stdlib_malloc_size(v55);
            v57 = v56 - 32;
            if (v56 < 32)
            {
              v57 = v56 - 25;
            }

            v58 = v57 >> 3;
            v55[2] = v54;
            v55[3] = (2 * (v57 >> 3)) | 1;
            v59 = (v55 + 4);
            v60 = *(v2 + 24) >> 1;
            if (*(v2 + 16))
            {
              v61 = (v2 + 32);
              if (v55 != v2 || v59 >= v61 + 8 * v60)
              {
                memmove(v55 + 4, v61, 8 * v60);
              }

              *(v2 + 16) = 0;
            }

            v48 = (v59 + 8 * v60);
            v62 = (v58 & 0x7FFFFFFFFFFFFFFFLL) - v60;

            v2 = v55;
            v23 = __OFSUB__(v62, 1);
            v3 = (v62 - 1);
            if (v23)
            {
              goto LABEL_119;
            }
          }

          *v48 = v51;
          v63 = [v51 superview];

          v51 = v63;
        }

        while (v63);
      }
    }

    else
    {
      v3 = 0;
      v2 = MEMORY[0x1E69E7CC0];
    }

    v64 = *(v2 + 24);
    if (v64 >= 2)
    {
      v65 = v64 >> 1;
      v23 = __OFSUB__(v65, v3);
      v66 = v65 - v3;
      if (v23)
      {
        goto LABEL_124;
      }

      *(v2 + 16) = v66;
    }

    v9 = sub_188F98498(v67);

    v111 = v109;
    MEMORY[0x1EEE9AC00](v68);
    v102 = &v111;
    if (sub_188B21F78(sub_188B60290, &v101, a1))
    {

      return 1;
    }

    if (sub_18907FAA4(v110, v9))
    {

      return -1;
    }

    if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
    {
LABEL_125:
      v69 = sub_18A4A7F68();
      if (v69)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v69 = *(a1 + 16);
      if (v69)
      {
LABEL_83:
        v70 = 0;
        v108 = a1 + 32;
        v109 = (a1 & 0xC000000000000001);
        v107 = v9 & 0xC000000000000001;
        v71 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 < 0)
        {
          v71 = v9;
        }

        v104 = v71;
        v105 = v69;
        v110 = (v9 + 56);
        do
        {
          if (v109)
          {
            v74 = sub_188E49300(v70, a1);
            v75 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              goto LABEL_100;
            }
          }

          else
          {
            if (v70 >= *(a1 + 16))
            {
              goto LABEL_122;
            }

            v74 = *(v108 + 8 * v70);
            v75 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }
          }

          v106 = v70;
          if (v107)
          {
            v3 = v74;
            v72 = v74;
            v73 = sub_18A4A7FC8();

            if (v73)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v3 = v74;
            if (*(v9 + 16))
            {
              sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
              v76 = sub_18A4A7C78();
              v77 = -1 << *(v9 + 32);
              v78 = v76 & ~v77;
              if ((*&v110[(v78 >> 3) & 0xFFFFFFFFFFFFFF8] >> v78))
              {
                v79 = ~v77;
                while (1)
                {
                  v80 = v9;
                  v81 = *(*(v9 + 48) + 8 * v78);
                  v82 = sub_18A4A7C88();

                  v9 = v80;
                  if (v82)
                  {
                    break;
                  }

                  v78 = (v78 + 1) & v79;
                  if (((*&v110[(v78 >> 3) & 0xFFFFFFFFFFFFFF8] >> v78) & 1) == 0)
                  {
                    goto LABEL_87;
                  }
                }

LABEL_101:
                v83 = v3;
                v84 = sub_188FE3A74(v3, v2);
                if ((v85 & 1) == 0)
                {
                  v86 = v84;
                  v87 = v106 - 1;
                  if (__OFSUB__(v106, 1))
                  {
                    __break(1u);
                    goto LABEL_129;
                  }

                  if (v109)
                  {
                    v88 = sub_188E49300(v87, a1);
                    goto LABEL_108;
                  }

                  if ((v87 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_133;
                  }

                  if (v87 < *(a1 + 16))
                  {
                    v88 = *(v108 + 8 * v87);
LABEL_108:
                    v110 = v88;
                    v87 = v86 - 1;
                    if (!__OFSUB__(v86, 1))
                    {
                      if ((v2 & 0xC000000000000001) == 0)
                      {
                        if ((v87 & 0x8000000000000000) != 0)
                        {
                          __break(1u);
                        }

                        else if (v87 < *(v2 + 16))
                        {
                          v89 = *(v2 + 8 * v87 + 32);
                          goto LABEL_113;
                        }

                        __break(1u);
LABEL_133:
                        __break(1u);
                        goto LABEL_134;
                      }

LABEL_130:
                      v89 = sub_188E49300(v87, v2);
LABEL_113:
                      v90 = v89;
                      v91 = [v83 subviews];
                      sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
                      v92 = sub_18A4A7548();

                      v93 = sub_188FE3A74(v110, v92);
                      v95 = v94;

                      if (v95)
                      {
                        v103 = 0;
                        v100 = 110;
                      }

                      else
                      {
                        v96 = [v83 subviews];
                        v97 = sub_18A4A7548();

                        v98 = sub_188FE3A74(v90, v97);
                        LOBYTE(v96) = v99;

                        if ((v96 & 1) == 0)
                        {

                          if (v93 >= v98)
                          {
                            return v98 < v93;
                          }

                          else
                          {
                            return -1;
                          }
                        }

                        v103 = 0;
                        v100 = 111;
                      }

LABEL_138:
                      v102 = v100;
                      result = sub_18A4A8398();
                      __break(1u);
                      return result;
                    }

LABEL_129:
                    __break(1u);
                    goto LABEL_130;
                  }

LABEL_134:
                  __break(1u);
                }

                v103 = 0;
                v100 = 106;
                goto LABEL_138;
              }
            }
          }

LABEL_87:

          v70 = v75;
        }

        while (v75 != v105);
      }
    }

    return 0;
  }

  return result;
}

uint64_t UICollectionLayoutListConfiguration.FooterMode.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

id UICollectionLayoutListConfiguration.appearance.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) appearance];
  if (result >= 5)
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id (*UICollectionLayoutListConfiguration.showsSeparators.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) showsSeparators];
  return sub_189122F60;
}

uint64_t UICollectionLayoutListConfiguration.separatorConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) separatorConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228, &unk_18A658B80);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_189122FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + 16) separatorConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228, &unk_18A658B80);
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void UICollectionLayoutListConfiguration.separatorConfiguration.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_188C702D8();
  v3 = *(v1 + 16);
  v5 = v2;
  v4 = v3;

  [v5 setSeparatorConfiguration_];
}

uint64_t (*UICollectionLayoutListConfiguration.itemSeparatorHandler.getter())@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = [*(*v0 + 16) itemSeparatorHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_189124E64;
    *(v4 + 24) = v3;
    return sub_189124E6C;
  }

  return result;
}

uint64_t (*sub_189123170@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) itemSeparatorHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_1891251C4;
    *(result + 3) = v5;
    v6 = sub_1891251F0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

id sub_18912321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18A4A2B08();
  v6 = (*(a3 + 16))(a3, v5, a2);

  return v6;
}

uint64_t sub_189123280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, id)@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*a2 + 16);
  v8 = a3(a1, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939228, &unk_18A658B80);
  result = swift_allocObject();
  *(result + 16) = v8;
  *a4 = result;
  return result;
}

void (*UICollectionLayoutListConfiguration.itemSeparatorHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*(*v1 + 16) itemSeparatorHandler];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = swift_allocObject();
    v3[2] = sub_1891251C4;
    v3[3] = v5;
    v6 = sub_1891251F0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = v3;
  return sub_1891233D8;
}

void sub_1891233D8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    sub_188A52E38(*a1, v3);
    UICollectionLayoutListConfiguration.itemSeparatorHandler.setter(v2, v3);

    sub_188A55B8C(v2, v3);
  }

  else
  {
    UICollectionLayoutListConfiguration.itemSeparatorHandler.setter(*a1, v3);
  }
}

id UICollectionLayoutListConfiguration.backgroundColor.getter()
{
  v1 = [*(*v0 + 16) backgroundColor];

  return v1;
}

void (*UICollectionLayoutListConfiguration.backgroundColor.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(*v1 + 16) backgroundColor];
  return sub_1891234F0;
}

void sub_1891234F0(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_188C6FFB4(v4);

    v3 = v2;
  }

  else
  {
    sub_188C6FFB4(*a1);
    v3 = v4;
  }
}

id (*UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.getter())(uint64_t a1)
{
  result = [*(*v0 + 16) leadingSwipeActionsConfigurationProvider];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_189124E74;
  }

  return result;
}

uint64_t (*sub_1891235D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) leadingSwipeActionsConfigurationProvider];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_1891251F4;
    *(result + 3) = v5;
    v6 = sub_1891251CC;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

double sub_189123680(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1891251BC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1, v2);
  sub_188C701F8(v4, v3, &block_descriptor_188_1, &selRef_setLeadingSwipeActionsConfigurationProvider_);

  return sub_188A55B8C(v4, v3);
}

id sub_189123734(uint64_t a1, uint64_t a2)
{
  v3 = sub_18A4A2B08();
  v4 = (*(a2 + 16))(a2, v3);

  return v4;
}

id sub_189123788(uint64_t a1, uint64_t a2)
{
  v3 = sub_18A4A2B48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_18A4A2B18();

  v8 = v7(v6);

  (*(v4 + 8))(v6, v3);

  return v8;
}

void (*UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) leadingSwipeActionsConfigurationProvider];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_1891251F4;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_18912395C;
}

id (*UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.getter())(uint64_t a1)
{
  result = [*(*v0 + 16) trailingSwipeActionsConfigurationProvider];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_1891251F4;
  }

  return result;
}

uint64_t (*sub_1891239F0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) trailingSwipeActionsConfigurationProvider];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_1891251F4;
    *(result + 3) = v5;
    v6 = sub_18912516C;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

double sub_189123A9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_189125134;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1, v2);
  sub_188C701F8(v4, v3, &block_descriptor_185, &selRef_setTrailingSwipeActionsConfigurationProvider_);

  return sub_188A55B8C(v4, v3);
}

void (*UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) trailingSwipeActionsConfigurationProvider];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_1891251F4;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_189123C18;
}

void sub_189123C34(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188A52E38(*(*a1 + 48), v8);
    v10 = sub_188C702D8();
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_189123788;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      sub_188A52E38(v7, v8);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188A55B8C(v7, v8);
    v20 = v6[6];
    v21 = v6[7];
  }

  else
  {
    v15 = sub_188C702D8();
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_189123788;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
      sub_188A52E38(v7, v8);
    }

    else
    {
      v22 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);

    v20 = v7;
    v21 = v8;
  }

  sub_188A55B8C(v20, v21);

  free(v6);
}

id UICollectionLayoutListConfiguration.headerMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [*(*v1 + 16) headerMode];
  if (result >= 3)
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

id (*UICollectionLayoutListConfiguration.headerMode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [*(*v1 + 16) headerMode];
  if (v3 >= 3)
  {
    result = sub_18A4A8398();
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v3;
    return sub_189123F4C;
  }

  return result;
}

id sub_189123F4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_188C702D8();

  return [v2 setHeaderMode_];
}

id UICollectionLayoutListConfiguration.footerMode.getter@<X0>(char *a1@<X8>)
{
  result = [*(*v1 + 16) footerMode];
  if (!result)
  {
    v4 = 0;
LABEL_5:
    *a1 = v4;
    return result;
  }

  if (result == 1)
  {
    v4 = 1;
    goto LABEL_5;
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id (*UICollectionLayoutListConfiguration.footerMode.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = [*(*v1 + 16) footerMode];
  if (!v3)
  {
    v4 = 0;
LABEL_5:
    *(a1 + 8) = v4;
    return sub_189124104;
  }

  if (v3 == 1)
  {
    v4 = 1;
    goto LABEL_5;
  }

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

id (*UICollectionLayoutListConfiguration.headerTopPadding.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  [*(*v1 + 16) headerTopPadding];
  *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  v4 = v3;
  if (v3 == 1.79769313e308)
  {
    v4 = 0.0;
  }

  *a1 = v4;
  *(a1 + 8) = v3 == 1.79769313e308;
  return sub_189124198;
}

unint64_t UICollectionLayoutListConfiguration.contentHuggingElements.getter@<X0>(unint64_t *a1@<X8>)
{
  result = [*(*v1 + 16) contentHuggingElements];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

void UICollectionLayoutListConfiguration.contentHuggingElements.setter(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(*v1 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0, &unk_18A668140);
    v3 = swift_allocObject();
    *(v3 + 16) = v4;

    *v1 = v3;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    [*(*v1 + 16) setContentHuggingElements_];
  }
}

unint64_t UICollectionLayoutListConfiguration.contentHuggingElements.modify(unint64_t *a1)
{
  a1[1] = v1;
  result = [*(*v1 + 16) contentHuggingElements];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_189124348;
  }

  return result;
}

id (*UICollectionLayoutListConfiguration._cornerRadius.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  [*(*v1 + 16) _cornerRadius];
  *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  v4 = v3;
  if (v3 == 1.79769313e308)
  {
    v4 = 0.0;
  }

  *a1 = v4;
  *(a1 + 8) = v3 == 1.79769313e308;
  return sub_189124448;
}

id sub_189124454(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = (a1 + 24);
  if (!*(a1 + 8))
  {
    v4 = a1;
  }

  v5 = *v4;
  v6 = sub_188C702D8();
  v7 = *a3;

  return [v6 v7];
}

uint64_t (*UICollectionLayoutListConfiguration._willBeginSwipingHandler.getter())()
{
  result = [*(*v0 + 16) _willBeginSwipingHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_188A4AA04;
  }

  return result;
}

uint64_t (*sub_189124528@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) _willBeginSwipingHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_188EB2CC4;
    *(result + 3) = v5;
    v6 = sub_188E3FE50;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

double sub_1891245D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188EB2CAC;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1, v2);
  sub_188C70D78(v4, v3, &block_descriptor_182, &selRef__setWillBeginSwipingHandler_);

  return sub_188A55B8C(v4, v3);
}

void (*UICollectionLayoutListConfiguration._willBeginSwipingHandler.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) _willBeginSwipingHandler];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB2CC4;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_189124750;
}

uint64_t (*UICollectionLayoutListConfiguration._didEndSwipingHandler.getter())()
{
  result = [*(*v0 + 16) _didEndSwipingHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_188EB2CC4;
  }

  return result;
}

uint64_t (*sub_1891247E4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*(*a1 + 16) _didEndSwipingHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_188EB2CC4;
    *(result + 3) = v5;
    v6 = sub_188A4B574;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

double sub_189124890(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_188A6D638;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_188A52E38(v1, v2);
  sub_188C70D78(v4, v3, &block_descriptor_179_1, &selRef__setDidEndSwipingHandler_);

  return sub_188A55B8C(v4, v3);
}

void (*UICollectionLayoutListConfiguration._didEndSwipingHandler.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  v5 = [*(*v1 + 16) _didEndSwipingHandler];
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    v5[2] = v6;
    v7 = sub_188EB2CC4;
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v5;
  return sub_189124A0C;
}

void sub_189124A28(uint64_t a1, char a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    sub_188A52E38(*(*a1 + 48), v8);
    v10 = sub_188C702D8();
    v11 = v10;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188A4A8F0;
      v6[3] = a5;
      v12 = _Block_copy(v6);
      sub_188A52E38(v7, v8);
      v13 = v11;
    }

    else
    {
      v19 = v10;
      v12 = 0;
    }

    [v11 *a4];
    _Block_release(v12);

    sub_188A55B8C(v7, v8);
    v20 = v6[6];
    v21 = v6[7];
  }

  else
  {
    v15 = sub_188C702D8();
    v16 = v15;
    if (v7)
    {
      v6[4] = v7;
      v6[5] = v8;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_188A4A8F0;
      v6[3] = a3;
      v17 = _Block_copy(v6);
      v18 = v16;
      sub_188A52E38(v7, v8);
    }

    else
    {
      v22 = v15;
      v17 = 0;
    }

    [v16 *a4];
    _Block_release(v17);

    v20 = v7;
    v21 = v8;
  }

  sub_188A55B8C(v20, v21);

  free(v6);
}

id UICollectionLayoutListConfiguration._sectionHeaderHugsContent.setter(char a1)
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(*v1 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188C2E864();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93DAA0, &unk_18A668140);
    v3 = swift_allocObject();
    *(v3 + 16) = v5;

    *v1 = v3;
  }

  return [*(*v1 + 16) setContentHuggingElements_];
}

id (*UICollectionLayoutListConfiguration._sectionHeaderHugsContent.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) contentHuggingElements] == 1;
  return sub_189124D58;
}

id sub_189124D64(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = *(a1 + 8);
  v5 = sub_188C702D8();
  v6 = *a3;

  return [v5 v6];
}

id (*UICollectionLayoutListConfiguration._hasCompactSectionSpacing.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [*(*v1 + 16) _hasCompactSectionSpacing];
  return sub_189124E3C;
}

unint64_t sub_189124E80()
{
  result = qword_1EA93DAA8;
  if (!qword_1EA93DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAA8);
  }

  return result;
}

unint64_t sub_189124ED8()
{
  result = qword_1EA93DAB0;
  if (!qword_1EA93DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAB0);
  }

  return result;
}

unint64_t sub_189124F30()
{
  result = qword_1EA93DAB8;
  if (!qword_1EA93DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAB8);
  }

  return result;
}

unint64_t sub_189124F88()
{
  result = qword_1EA93DAC0;
  if (!qword_1EA93DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAC0);
  }

  return result;
}

unint64_t sub_189124FE0()
{
  result = qword_1EA93DAC8;
  if (!qword_1EA93DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93DAC8);
  }

  return result;
}

id keypath_get_88Tm@<X0>(uint64_t a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  result = [*(*a1 + 16) *a2];
  v6 = v5;
  if (v5 == 1.79769313e308)
  {
    v6 = 0.0;
  }

  *a3 = v6;
  *(a3 + 8) = v5 == 1.79769313e308;
  return result;
}

id keypath_set_89Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (*(a1 + 8))
  {
    v6 = &UICollectionViewLayoutAutomaticDimension;
  }

  else
  {
    v6 = a1;
  }

  v7 = *v6;
  v8 = sub_188C702D8();
  v9 = *a5;

  return [v8 v9];
}

id keypath_set_87Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  v7 = sub_188C702D8();
  v8 = *a5;

  return [v7 v8];
}

uint64_t sub_18912516C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

double sub_1891251F8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188FAB9F8(&qword_1ED490BC0, &unk_18A6572C8);
  sub_18A4A2C08();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;

  return result;
}

double sub_189125290(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_188FAA1E8(v1, v2);
}

id sub_1891252D0(uint64_t a1)
{
  sub_188A55598(a1, v6);
  v1 = type metadata accessor for ScrollPocketCollectorModel(0);
  if (!swift_dynamicCast())
  {
    return [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
  }

  v6[4] = v5;
  v2 = sub_188FAB9F8(&unk_1EA938E60, &unk_18A657300);
  (*(v2 + 40))(v6, v1, v2);
  sub_188F216CC(v6[0]);

  v3 = sub_18A4A7518();

  return v3;
}

id sub_1891253DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6[3] = swift_getObjectType();
  v6[0] = a2;
  swift_unknownObjectRetain();
  v4 = v3(v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v6);

  return v4;
}

double sub_189125454@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188A55598(a1, v6);
  v3 = type metadata accessor for ScrollPocketCollectorModel(0);
  if (swift_dynamicCast() && (Strong = swift_weakLoadStrong(), , Strong))
  {
    *(a2 + 24) = v3;
    *a2 = Strong;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_1891254F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v14[3] = swift_getObjectType();
  v14[0] = a2;
  swift_unknownObjectRetain();
  v3(v12, v14);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_18A4A86A8();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);

  return v10;
}

double sub_1891257C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____UIScrollPocketCollectorInteraction_model);
  v6 = *(v5 + 32);
  if (v6)
  {
    if (a2)
    {
      v7 = *(v5 + 24) == a1 && v6 == a2;
      if (v7 || (sub_18A4A86C8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188FAB9F8(&qword_1ED490BC0, &unk_18A6572C8);
    sub_18A4A2BF8();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;

  return result;
}

double sub_189125928()
{
  if (_UIScrollPocketEnabled())
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 traitCollection];

      sub_188A85EE4();
    }

    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    sub_188FAA380(Strong);
  }

  return result;
}

unint64_t type metadata accessor for _UIScrollPocketCollectorInteraction()
{
  result = qword_1EA93DAE0;
  if (!qword_1EA93DAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93DAE0);
  }

  return result;
}

id _UIAncestralDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _UIAncestralDescription(v3, v4, 0);

  return v5;
}

id _UIRecursiveDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _UIRecursiveDescription(v3, v4, 0);

  return v5;
}

void sub_189125E68(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v5 = [(_UISceneHostingController *)v2 _fbScene];
  type metadata accessor for _UISceneKeyValueStorageExtension(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneKeyValueStorageComponent();
  if (![v5 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
  {

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v7 = a1();
  swift_unknownObjectRelease();

LABEL_7:
  *a2 = v7;
}

void sub_189125F40(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for _UISceneKeyValueStorageExtension(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneKeyValueStorageComponent();
  if (![v2 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
  {
    goto LABEL_5;
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = a1();
  swift_unknownObjectRelease();
LABEL_6:
  *a2 = v6;
}

void sub_189126010(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v5 = [v2 _FBSScene];
  type metadata accessor for _UISceneKeyValueStorageExtension(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for _UISceneKeyValueStorageComponent();
  if (![v5 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()])
  {

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v7 = a1();
  swift_unknownObjectRelease();

LABEL_7:
  *a2 = v7;
}

uint64_t dispatch thunk of UISceneKeyValueStorage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))(a1, a2, a3, a4);
}

{
  return (*(a5 + 40))(a1, a2, a3, a4);
}

{
  return (*(a5 + 72))(a1, a2, a3, a4);
}

{
  return (*(a5 + 120))(a1, a2, a3, a4);
}

{
  return (*(a5 + 136))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of UISceneKeyValueStorage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 16))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 48))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 80))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UISceneKeyValueStorage.observe<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 24))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 56))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 88))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 128))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 144))(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of UISceneKeyValueStorage.observe<A, B>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 32))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 64))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 96))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))(a1, a2, a3, a4);
}

{
  return (*(a5 + 64))(a1, a2, a3, a4);
}

{
  return (*(a5 + 112))(a1, a2, a3, a4);
}

{
  return (*(a5 + 184))(a1, a2, a3, a4);
}

{
  return (*(a5 + 208))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 24))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 72))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 120))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 216))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 32))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 80))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 128))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 200))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 224))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 40))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 88))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 136))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 48))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 96))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 144))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 192))(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of UISceneMutableKeyValueStorage.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 56))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 104))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 152))(a1, a2, a3, a4, a5, a6);
}

void sub_1891264A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v23 = sub_188A4B574;
  v24 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_188A4A968;
  v22 = &block_descriptor_120;
  v8 = _Block_copy(&aBlock);

  v23 = sub_188A81164;
  v24 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_188A4A8F0;
  v22 = &block_descriptor_9_2;
  v9 = _Block_copy(&aBlock);

  [v6 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v9);
  _Block_release(v8);
  swift_beginAccess();
  if (*(v5 + 16))
  {
    swift_beginAccess();
  }

  else
  {
    sub_188A81190(MEMORY[0x1E69E7CC0]);
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    v13 = v2;

    v14 = sub_188E85338();
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties);
      v16 = v14;

      MEMORY[0x1EEE9AC00](v17);
      os_unfair_lock_lock((v15 + 24));
      sub_1891272AC((v15 + 16));
      os_unfair_lock_unlock((v15 + 24));
    }

    else
    {
    }

    v18 = sub_188E85338();
    if (v18)
    {
      v18[OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_clearsCapturedPropertiesOnStabilization] = 0;
    }

    [v13 setValue_];
  }
}

double sub_189126858(void *a1)
{
  v2 = sub_188E85338();
  if (v2)
  {
    v22 = v2;
    v4 = *(v2 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties);

    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);

    os_unfair_lock_unlock((v4 + 24));

    v6 = -1 << *(v5 + 32);
    v7 = ~v6;
    v8 = *(v5 + 64);
    v9 = -v6;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v39 = v5;
    v40 = v5 + 64;
    v41 = v7;
    v42 = 0;
    v43 = v10 & v8;
    sub_188A813A8(&v31);
    v11 = v31;
    v36 = *&v32[40];
    v37 = *&v32[56];
    v38 = v33;
    v34 = *&v32[8];
    v35 = *&v32[24];
    if (v31)
    {
      while (1)
      {
        *&v32[16] = v36;
        *&v32[32] = v37;
        *&v32[48] = v38;
        v31 = v34;
        *v32 = v35;
        sub_1891272F4(&v32[24], &v27);
        if (!v28)
        {
          v19 = &v27;
          goto LABEL_12;
        }

        sub_188A8F66C(&v27, v30);
        sub_1891272F4(&v31, &v24);
        if (!v25)
        {
          break;
        }

        sub_188A8F66C(&v24, &v27);
        v12 = v28;
        v13 = v29;
        __swift_project_boxed_opaque_existential_0(&v27, v28);
        [a1 value];
        sub_189126BB4(v30, v12, v13, &v24);
        v14 = [v11 layer];
        v15 = v25;
        v16 = v26;
        __swift_project_boxed_opaque_existential_0(&v24, v25);
        (*(v16 + 80))(v23, v15, v16);
        __swift_project_boxed_opaque_existential_0(v23, v23[3]);
        v17 = sub_18A4A86A8();
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
        v18 = sub_18A4A7258();

        [v14 setValue:v17 forKeyPath:v18];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        sub_188A8F7CC(&v31);
        __swift_destroy_boxed_opaque_existential_0Tm(&v24);
        __swift_destroy_boxed_opaque_existential_0Tm(&v27);
        sub_188A813A8(&v31);
        v11 = v31;
        v36 = *&v32[40];
        v37 = *&v32[56];
        v38 = v33;
        v34 = *&v32[8];
        v35 = *&v32[24];
        if (!v31)
        {
          goto LABEL_9;
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      v19 = &v24;
LABEL_12:
      sub_189127364(v19);
      v20 = [v11 layer];
      v21 = sub_18A4A7258();

      [v20 setValue:0 forKeyPath:v21];

      sub_188A8F7CC(&v31);
      return sub_188E036A4(v39);
    }

    else
    {
LABEL_9:
      sub_188E036A4(v39);
    }
  }

  return result;
}

uint64_t sub_189126BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a3;
  v8 = sub_18A4A7D38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &boxed_opaque_existential_0 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &boxed_opaque_existential_0 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &boxed_opaque_existential_0 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &boxed_opaque_existential_0 - v20;
  sub_188A53994(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936558, &qword_18A650D08);
  v22 = swift_dynamicCast();
  v23 = *(v12 + 56);
  if (v22)
  {
    v23(v11, 0, 1, a2);
    (*(v12 + 32))(v21, v11, a2);
    v24 = v31;
    a4[3] = a2;
    a4[4] = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    v25 = *(v12 + 16);
    v25(boxed_opaque_existential_0, v32, a2);
    sub_18A4A83D8();
    v25(v18, v15, a2);
    sub_18A4A4E98();
    v26 = *(v12 + 8);
    v26(v15, a2);
    sub_18A4A83E8();
    v26(v18, a2);
    return (v26)(v21, a2);
  }

  else
  {
    v23(v11, 1, 1, a2);
    (*(v9 + 8))(v11, v8);
    v28 = v31;
    a4[3] = a2;
    a4[4] = v28;
    v29 = __swift_allocate_boxed_opaque_existential_0(a4);
    return (*(v12 + 16))(v29, v32, a2);
  }
}

double sub_189126EF4(void *a1)
{
  v2 = sub_188E85338();
  if (v2)
  {
    v20 = v2;
    v4 = *(v2 + OBJC_IVAR____TtCE5UIKitCSo6UIView29AnimatablePropertyTransformer_capturedProperties);

    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);

    os_unfair_lock_unlock((v4 + 24));

    v6 = -1 << *(v5 + 32);
    v7 = ~v6;
    v8 = *(v5 + 64);
    v9 = -v6;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v37 = v5;
    v38 = v5 + 64;
    v39 = v7;
    v40 = 0;
    v41 = v10 & v8;
    sub_188A813A8(&v29);
    v11 = v29;
    v34 = *&v30[40];
    v35 = *&v30[56];
    v36 = v31;
    v32 = *&v30[8];
    v33 = *&v30[24];
    if (v29)
    {
      while (1)
      {
        *&v30[16] = v34;
        *&v30[32] = v35;
        *&v30[48] = v36;
        v29 = v32;
        *v30 = v33;
        sub_1891272F4(&v30[24], &v25);
        if (!v26)
        {
          v18 = &v25;
          goto LABEL_12;
        }

        sub_188A8F66C(&v25, v28);
        sub_1891272F4(&v29, &v22);
        if (!v23)
        {
          break;
        }

        sub_188A8F66C(&v22, &v25);
        v12 = v26;
        v13 = v27;
        __swift_project_boxed_opaque_existential_0(&v25, v26);
        [a1 presentationValue];
        sub_189126BB4(v28, v12, v13, &v22);
        v14 = v23;
        v15 = v24;
        __swift_project_boxed_opaque_existential_0(&v22, v23);
        (*(v15 + 80))(v21, v14, v15);
        __swift_project_boxed_opaque_existential_0(v21, v21[3]);
        v16 = sub_18A4A86A8();
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        v17 = sub_18A4A7258();

        [v11 _setPresentationValue_forKey_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        sub_188A8F7CC(&v29);
        __swift_destroy_boxed_opaque_existential_0Tm(&v22);
        __swift_destroy_boxed_opaque_existential_0Tm(&v25);
        sub_188A813A8(&v29);
        v11 = v29;
        v34 = *&v30[40];
        v35 = *&v30[56];
        v36 = v31;
        v32 = *&v30[8];
        v33 = *&v30[24];
        if (!v29)
        {
          goto LABEL_9;
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      v18 = &v22;
LABEL_12:
      sub_189127364(v18);
      v19 = sub_18A4A7258();

      [v11 _setPresentationValue_forKey_];

      sub_188A8F7CC(&v29);
      return sub_188E036A4(v37);
    }

    else
    {
LABEL_9:
      sub_188E036A4(v37);
    }
  }

  return result;
}

double sub_1891272AC(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

uint64_t sub_1891272F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C98, &unk_18A64F950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_189127364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C98, &unk_18A64F950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_189127500(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____UIPointerLensView_flexInteraction;
  *&v4[v9] = [objc_allocWithZone(_UIFlexInteraction) init];
  v10 = OBJC_IVAR____UIPointerLensView_warpBackdrop;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v11 = OBJC_IVAR____UIPointerLensView_element;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  type metadata accessor for _UIPointerLensView();
  v135.receiver = v4;
  v135.super_class = v12;
  v13 = objc_msgSendSuper2(&v135, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____UIPointerLensView_flexInteraction];
  v15 = v13;
  [v14 setPreferredActivationMode_];
  [v15 setUserInteractionEnabled_];
  v16 = [v15 layer];
  [v16 setAllowsHitTesting_];

  v17 = [v15 layer];
  v18 = *MEMORY[0x1E69796E8];
  [v17 setCornerCurve_];

  v19 = [v15 layer];
  [v19 setAllowsEdgeAntialiasing_];

  v20 = [v15 layer];
  [v20 setAllowsGroupOpacity_];

  v21 = OBJC_IVAR____UIPointerLensView_element;
  [*&v15[OBJC_IVAR____UIPointerLensView_element] setCornerCurve_];
  [*&v15[v21] setAllowsEdgeAntialiasing_];
  [*&v15[v21] setGradientOvalization_];
  v22 = [v15 layer];
  v133 = v21;
  [v22 addSublayer_];

  v23 = OBJC_IVAR____UIPointerLensView_warpBackdrop;
  [*&v15[OBJC_IVAR____UIPointerLensView_warpBackdrop] setMarginWidth_];
  v129 = v23;
  v24 = *&v15[v23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800, &unk_18A64D700);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18A64BFB0;
  v128 = sub_18A4A7288();
  v131 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9401B0, &unk_18A650B00);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18A668560;
  *(v27 + 32) = sub_18A4A7288();
  *(v27 + 72) = MEMORY[0x1E69E6158];
  *(v27 + 40) = v28;
  strcpy((v27 + 48), "warpSdfLayer");
  *(v27 + 61) = 0;
  *(v27 + 62) = -5120;
  *(v27 + 80) = sub_18A4A7288();
  *(v27 + 88) = v29;
  v30 = MEMORY[0x1E69E63B0];
  *(v27 + 120) = MEMORY[0x1E69E63B0];
  *(v27 + 96) = 0xC024800000000000;
  *(v27 + 128) = sub_18A4A7288();
  *(v27 + 136) = v31;
  *(v27 + 168) = v30;
  *(v27 + 144) = 0x4014800000000000;
  *(v27 + 176) = sub_18A4A7288();
  *(v27 + 184) = v32;
  *(v27 + 216) = v30;
  *(v27 + 192) = 0x4014800000000000;
  *(v27 + 224) = sub_18A4A7288();
  *(v27 + 232) = v33;
  *(v27 + 264) = v30;
  *(v27 + 240) = 0x4014800000000000;
  *(v27 + 272) = sub_18A4A7288();
  *(v27 + 280) = v34;
  *(v27 + 312) = v30;
  *(v27 + 288) = 0xBFF0000000000000;
  *(v27 + 320) = sub_18A4A7288();
  *(v27 + 328) = v35;
  *(v27 + 360) = v30;
  *(v27 + 336) = 0xBFE0000000000000;
  *(v27 + 368) = sub_18A4A7288();
  *(v27 + 376) = v36;
  *(v27 + 408) = v30;
  *(v27 + 384) = 0x3FF0000000000000;
  *(v27 + 416) = sub_18A4A7288();
  *(v27 + 424) = v37;
  *(v27 + 456) = v30;
  *(v27 + 432) = 0x4014000000000000;
  *(v27 + 464) = sub_18A4A7288();
  *(v27 + 472) = v38;
  *(v27 + 504) = v30;
  *(v27 + 480) = 0;
  *(v27 + 512) = sub_18A4A7288();
  *(v27 + 520) = v39;
  *(v27 + 552) = v30;
  *(v27 + 528) = 0;
  *(v27 + 560) = sub_18A4A7288();
  *(v27 + 568) = v40;
  *(v27 + 600) = v30;
  *(v27 + 576) = 0x3FF0000000000000;
  *(v27 + 608) = sub_18A4A7288();
  *(v27 + 616) = v41;
  *(v27 + 648) = v30;
  *(v27 + 624) = 0x3FF0000000000000;
  *(v27 + 656) = sub_18A4A7288();
  *(v27 + 664) = v42;
  *(v27 + 696) = v30;
  *(v27 + 672) = 0x3FF0000000000000;
  *(v27 + 704) = sub_18A4A7288();
  *(v27 + 712) = v43;
  *(v27 + 744) = v30;
  *(v27 + 720) = 0xC034800000000000;
  *(v27 + 752) = sub_18A4A7288();
  *(v27 + 760) = v44;
  *(v27 + 792) = v30;
  *(v27 + 768) = 0xBFF0000000000000;
  *(v27 + 800) = sub_18A4A7288();
  *(v27 + 808) = v45;
  *(v27 + 840) = v30;
  *(v27 + 816) = 0;
  *(v27 + 848) = sub_18A4A7288();
  *(v27 + 856) = v46;
  *(v27 + 888) = v30;
  *(v27 + 864) = 0;
  *(v27 + 896) = sub_18A4A7288();
  *(v27 + 904) = v47;
  *(v27 + 936) = v30;
  *(v27 + 912) = 0x4058800000000000;
  *(v27 + 944) = sub_18A4A7288();
  *(v27 + 952) = v48;
  *(v27 + 984) = v30;
  *(v27 + 960) = 0x3FF0000000000000;
  *(v27 + 992) = sub_18A4A7288();
  *(v27 + 1000) = v49;
  *(v27 + 1032) = v30;
  *(v27 + 1008) = 0x3FF0000000000000;
  *(v27 + 1040) = sub_18A4A7288();
  *(v27 + 1048) = v50;
  *(v27 + 1080) = v30;
  *(v27 + 1056) = 0;
  *(v27 + 1088) = sub_18A4A7288();
  *(v27 + 1096) = v51;
  *(v27 + 1128) = v30;
  *(v27 + 1104) = 0x3FF0000000000000;
  *(v27 + 1136) = sub_18A4A7288();
  *(v27 + 1144) = v52;
  v53 = v24;
  result = [v15 tintColor];
  if (result)
  {
    v55 = result;
    v56 = [result colorWithAlphaComponent_];

    v57 = [v56 CGColor];
    type metadata accessor for CGColor(0);
    v59 = v58;
    *(v27 + 1176) = v58;
    *(v27 + 1152) = v57;
    *(v27 + 1184) = sub_18A4A7288();
    *(v27 + 1192) = v60;
    *(v27 + 1224) = v30;
    *(v27 + 1200) = 0x4034800000000000;
    *(v27 + 1232) = sub_18A4A7288();
    *(v27 + 1240) = v61;
    *(v27 + 1272) = v30;
    *(v27 + 1248) = 0x4034800000000000;
    *(v27 + 1280) = sub_18A4A7288();
    *(v27 + 1288) = v62;
    *(v27 + 1320) = v30;
    *(v27 + 1296) = 0x4034800000000000;
    *(v27 + 1328) = sub_18A4A7288();
    *(v27 + 1336) = v63;
    *(v27 + 1368) = v30;
    *(v27 + 1344) = 0x3FF0000000000000;
    *(v27 + 1376) = sub_18A4A7288();
    *(v27 + 1384) = v64;
    *(v27 + 1416) = v30;
    *(v27 + 1392) = 0;
    *(v27 + 1424) = sub_18A4A7288();
    *(v27 + 1432) = v65;
    *(v27 + 1464) = v30;
    *(v27 + 1440) = 0;
    *(v27 + 1472) = sub_18A4A7288();
    v66 = MEMORY[0x1E69E6370];
    *(v27 + 1480) = v67;
    *(v27 + 1512) = v66;
    *(v27 + 1488) = 1;
    *(v27 + 1520) = sub_18A4A7288();
    *(v27 + 1528) = v68;
    *(v27 + 1560) = v30;
    *(v27 + 1536) = 0x3FF0000000000000;
    *(v27 + 1568) = sub_18A4A7288();
    *(v27 + 1576) = v69;
    *(v27 + 1608) = v30;
    *(v27 + 1584) = 0x3FE8000000000000;
    *(v27 + 1616) = sub_18A4A7288();
    *(v27 + 1624) = v70;
    *(v27 + 1656) = v30;
    *(v27 + 1632) = 0x3FF3333333333333;
    *(v27 + 1664) = sub_18A4A7288();
    *(v27 + 1672) = v71;
    v72 = [objc_opt_self() clearColor];
    v73 = [v72 CGColor];

    *(v27 + 1704) = v59;
    *(v27 + 1680) = v73;
    *(v27 + 1712) = sub_18A4A7288();
    *(v27 + 1720) = v74;
    *(v27 + 1752) = v30;
    *(v27 + 1728) = 0;
    v75 = sub_188AF3DD8(v27);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8, &unk_18A668600);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1891289B4(v128, v131, v75);
    v77 = v76;

    v132 = sub_188A34624(0, &qword_1ED48EE50, 0x1E6979378);
    *(v25 + 56) = v132;
    *(v25 + 32) = v77;
    v78 = sub_18A4A7518();

    [v53 setFilters_];

    v79 = [v15 layer];
    v80 = v129;
    [v79 addSublayer_];

    v81 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
    v82 = sub_18A4A7258();
    [v81 setName_];

    v83 = [objc_allocWithZone(MEMORY[0x1E6979480]) init];
    [v83 setMinimum_];
    [v83 setMaximum_];
    [v81 setEffect_];

    [v81 setEffectOffset_];
    v84 = *&v15[v133];
    v85 = objc_allocWithZone(MEMORY[0x1E6979408]);
    v86 = v84;
    v87 = [v85 init];
    [v87 setSourceLayer_];
    [v87 setHidesSourceLayer_];
    [v87 setMatchesPosition_];
    [v87 setMatchesTransform_];

    [v81 addSublayer_];
    v130 = v81;
    [*&v15[v80] addSublayer_];
    v88 = [objc_allocWithZone(MEMORY[0x1E6979478]) init];
    v89 = sub_1891284D0(-0.523598776);
    [v88 setEffect_];

    v134[0] = xmmword_18A668570;
    v134[1] = xmmword_18A668580;
    v134[2] = xmmword_18A668590;
    v134[3] = xmmword_18A6685A0;
    v134[4] = xmmword_18A6685B0;
    result = [objc_opt_self() valueWithCAColorMatrix_];
    if (result)
    {
      v90 = result;
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_18A64BFB0;
      v92 = sub_18A4A7288();
      v94 = v93;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFB0;
      *(inited + 32) = sub_18A4A7288();
      *(inited + 40) = v96;
      v97 = sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
      *(inited + 72) = v97;
      *(inited + 48) = v90;
      v98 = v88;
      v99 = v90;
      v100 = sub_188AF3DD8(inited);
      swift_setDeallocating();
      sub_189128E7C(inited + 32);
      sub_1891289B4(v92, v94, v100);
      v102 = v101;

      *(v91 + 56) = v132;
      *(v91 + 32) = v102;
      v103 = sub_18A4A7518();

      [v98 setFilters_];

      v104 = *&v15[v133];
      v105 = objc_allocWithZone(MEMORY[0x1E6979408]);
      v106 = v104;
      v107 = [v105 init];
      [v107 setSourceLayer_];
      [v107 setHidesSourceLayer_];
      [v107 setMatchesPosition_];
      [v107 setMatchesTransform_];

      [v98 addSublayer_];
      v108 = [v15 layer];
      [v108 &selRef:v98 addIndexes:?];

      v109 = [objc_allocWithZone(MEMORY[0x1E6979478]) &selRef_inhibitSetupOrientation];
      v110 = sub_1891284D0(2.61799388);
      [v109 setEffect_];

      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_18A64BFB0;
      v112 = sub_18A4A7288();
      v114 = v113;
      v115 = swift_initStackObject();
      *(v115 + 16) = xmmword_18A64BFB0;
      *(v115 + 32) = sub_18A4A7288();
      *(v115 + 72) = v97;
      *(v115 + 40) = v116;
      *(v115 + 48) = v99;
      v117 = v99;
      v118 = v109;
      v119 = sub_188AF3DD8(v115);
      swift_setDeallocating();
      sub_189128E7C(v115 + 32);
      sub_1891289B4(v112, v114, v119);
      v121 = v120;

      *(v111 + 56) = v132;
      *(v111 + 32) = v121;
      v122 = sub_18A4A7518();

      [v118 setFilters_];

      v123 = *&v15[v133];
      v124 = objc_allocWithZone(MEMORY[0x1E6979408]);
      v125 = v123;
      v126 = [v124 init];
      [v126 setSourceLayer_];
      [v126 setHidesSourceLayer_];
      [v126 setMatchesPosition_];
      [v126 setMatchesTransform_];

      [v118 addSublayer_];
      v127 = [v15 layer];

      [v127 addSublayer_];
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}