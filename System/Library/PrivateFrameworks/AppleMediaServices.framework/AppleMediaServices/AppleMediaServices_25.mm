uint64_t sub_192CCD610()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  sub_192C12944();
  v3 = swift_allocError();
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_47(v2);
  *(v5 + 16) = xmmword_192FBCD50;
  v6 = v3;
  sub_19287AEE0();
  v43 = v7;
  v8._object = 0x8000000193022E30;
  v8._countAndFlagsBits = 0xD000000000000016;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v9 = *(v0 + 328);
  v10 = *(v0 + 336);
  *(v0 + 224) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 200));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
  sub_192878268(v0 + 200, v0 + 232);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_19286D180(v0 + 232, v0 + 56);
  *(v0 + 88) = 3;
  v12 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v12 = v41;
  }

  v13 = *(v12 + 16);
  if (v13 >= *(v12 + 24) >> 1)
  {
    sub_19287AEE0();
    v12 = v42;
  }

  v14 = *(v0 + 464);
  *(v12 + 16) = v13 + 1;
  v15 = v12 + 40 * v13;
  v16 = *(v0 + 56);
  v17 = *(v0 + 72);
  *(v15 + 64) = *(v0 + 88);
  *(v15 + 32) = v16;
  *(v15 + 48) = v17;
  sub_192907DE8(v0 + 200);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  *(v5 + 32) = v12;
  v19 = sub_192F96E7C();
  if (os_log_type_enabled(v14, v19))
  {
    v20 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v21 = *(v0 + 464);
    v22 = byte_1ED6DE5D8;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v0 + 352) = v5;
    *(v0 + 360) = sub_1928FA5C4;
    *(v0 + 368) = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    v24 = sub_192F9674C();
    v26 = v25;

    objc_autoreleasePoolPop(v20);
    v27 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_29_0(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v28[4].n128_u64[0] = sub_1928FDB30();
    v28[2].n128_u64[0] = v24;
    v28[2].n128_u64[1] = v26;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v21, v19, v28, 1, 2);

    objc_autoreleasePoolPop(v27);
  }

  v39 = *(v0 + 8);

  return v39();
}

id sub_192CCDA38(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_192CCDB04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_192BCCED4;

  return sub_192CCCDF8(a1, v4, v5, v6, v7, v9, v8);
}

void sub_192CCDBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_192F9679C();

  [a7 openWithTitle:a1 description:v12 classification:a4 reproducibility:a5 keywordIds:a6];
}

uint64_t MockAccount.accountType.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_1_58(v2 + 16, a1);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_192CCDCB0(v4, v5);
}

uint64_t sub_192CCDCB0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t MockAccount.accountType.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  OUTLINED_FUNCTION_3_53(v2 + 16, a2);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return sub_192CCDD08(v5, v6);
}

uint64_t sub_192CCDD08(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t MockAccount.altDSID.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_58(v2 + 32, a2);

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.altDSID.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53(v1 + 32, v3);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t MockAccount.dsid.setter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_3_53(v2 + 48, a2);
  *(v2 + 48) = a1;
  *(v2 + 56) = v3 & 1;
  return result;
}

uint64_t MockAccount.firstName.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_58(v2 + 64, a2);

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.firstName.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53(v1 + 64, v3);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t MockAccount.identifier.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_58(v2 + 80, a2);

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.identifier.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53(v1 + 80, v3);
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t MockAccount.lastName.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_58(v2 + 96, a2);

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.lastName.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53(v1 + 96, v3);
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
}

uint64_t MockAccount.username.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_58(v2 + 112, a2);

  return OUTLINED_FUNCTION_88();
}

uint64_t MockAccount.username.setter()
{
  OUTLINED_FUNCTION_17_28();
  OUTLINED_FUNCTION_3_53(v1 + 112, v3);
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
}

uint64_t MockAccount.init(accountType:altDSID:dsid:firstName:identifier:lastName:username:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *a1;
  v14 = a1[1];
  *(v13 + 16) = xmmword_192FC04A0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 56) = 1;
  *(v13 + 112) = 0u;
  *(v13 + 96) = 0u;
  *(v13 + 80) = 0u;
  *(v13 + 64) = 0u;
  *(v13 + 128) = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_8_40(v13 + 16, v32);
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  *(v13 + 16) = v15;
  *(v13 + 24) = v14;
  sub_192CCDD08(v16, v17);
  OUTLINED_FUNCTION_8_40(v13 + 32, v31);
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;

  OUTLINED_FUNCTION_8_40(v13 + 48, v30);
  *(v13 + 48) = a4;
  *(v13 + 56) = a5 & 1;
  OUTLINED_FUNCTION_8_40(v13 + 64, v29);
  *(v13 + 64) = a6;
  *(v13 + 72) = a7;

  OUTLINED_FUNCTION_8_40(v13 + 80, v28);
  *(v13 + 80) = a8;
  *(v13 + 88) = a9;

  OUTLINED_FUNCTION_8_40(v13 + 96, v27);
  *(v13 + 96) = a10;
  *(v13 + 104) = a11;

  OUTLINED_FUNCTION_8_40(v13 + 112, v26);
  *(v13 + 112) = a12;
  *(v13 + 120) = a13;

  return v13;
}

Swift::Bool __swiftcall MockAccount.isActive(for:)(__C::AMSAccountMediaType a1)
{
  OUTLINED_FUNCTION_1_58(v2 + 128, v1);

  v3 = OUTLINED_FUNCTION_88();
  v5 = sub_192C5848C(v3, v4);

  return v5;
}

Swift::Void __swiftcall MockAccount.setActive(_:for:)(Swift::Bool _, __C::AMSAccountMediaType a2)
{
  if (_)
  {
    OUTLINED_FUNCTION_22_23(_);
    sub_192CCF1E4(&v4, a2._rawValue);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_22_23(_);
    v3 = sub_192CD2464(a2._rawValue);
    swift_endAccess();
  }
}

uint64_t MockAccount.deinit()
{
  sub_192CCDD08(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t MockAccount.__deallocating_deinit()
{
  MockAccount.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_192CCE63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MockAccount.identifier.getter(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t static MockAccount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_39(a1 + 16, v81);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_5_39(a2 + 16, v80);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v5 == 1)
  {
    sub_192CCDCB0(v4, 1);
    if (v7 == 1)
    {
      sub_192CCDCB0(v6, 1);
      goto LABEL_27;
    }

    v12 = OUTLINED_FUNCTION_39();
    sub_192CCDCB0(v12, v13);
    goto LABEL_7;
  }

  if (v7 == 1)
  {
    v8 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v8, v9);
    sub_192CCDCB0(v6, 1);
    v10 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v10, v11);

LABEL_7:
    v14 = OUTLINED_FUNCTION_0_47();
    sub_192CCDD08(v14, v15);
    v16 = OUTLINED_FUNCTION_39();
LABEL_21:
    sub_192CCDD08(v16, v17);
    goto LABEL_22;
  }

  if (!v5)
  {
    sub_192CCDCB0(v4, 0);
    v28 = 0;
    if (!v7)
    {
      sub_192CCDCB0(v6, 0);
      sub_192CCDCB0(v4, 0);
      v29 = v6;
      v30 = 0;
      goto LABEL_25;
    }

LABEL_19:
    v33 = OUTLINED_FUNCTION_39();
    sub_192CCDCB0(v33, v34);
    sub_192CCDCB0(v4, v28);
    v35 = OUTLINED_FUNCTION_39();
    sub_192CCDD08(v35, v36);
    goto LABEL_20;
  }

  if (!v7)
  {
    v31 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v31, v32);
    v28 = v5;
    goto LABEL_19;
  }

  if (v4 != v6 || v5 != v7)
  {
    v19 = sub_192F9775C();
    v20 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v20, v21);
    v22 = OUTLINED_FUNCTION_39();
    sub_192CCDCB0(v22, v23);
    v24 = OUTLINED_FUNCTION_0_47();
    sub_192CCDCB0(v24, v25);
    v26 = OUTLINED_FUNCTION_39();
    sub_192CCDD08(v26, v27);
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_20:

    v16 = OUTLINED_FUNCTION_0_47();
    goto LABEL_21;
  }

  sub_192CCDCB0(v4, v5);
  v39 = OUTLINED_FUNCTION_0_47();
  sub_192CCDCB0(v39, v40);
  v41 = OUTLINED_FUNCTION_0_47();
  sub_192CCDCB0(v41, v42);
  v29 = OUTLINED_FUNCTION_0_47();
LABEL_25:
  sub_192CCDD08(v29, v30);
LABEL_26:

LABEL_27:
  v43 = OUTLINED_FUNCTION_0_47();
  sub_192CCDD08(v43, v44);
  OUTLINED_FUNCTION_5_39(a1 + 32, v79);
  v45 = *(a1 + 32);
  v46 = *(a1 + 40);
  OUTLINED_FUNCTION_5_39(a2 + 32, v78);
  v47 = *(a2 + 40);
  if (v46)
  {
    if (!v47)
    {
      goto LABEL_22;
    }

    if (v45 != *(a2 + 32) || v46 != v47)
    {
      OUTLINED_FUNCTION_0_47();
      if ((sub_192F9775C() & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v47)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_39(a1 + 48, v77);
  v49 = *(a1 + 48);
  v50 = *(a1 + 56);
  OUTLINED_FUNCTION_5_39(a2 + 48, v76);
  v51 = *(a2 + 56);
  if (v50)
  {
    if (!*(a2 + 56))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v49 != *(a2 + 48))
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_5_39(a1 + 64, v75);
  v52 = *(a1 + 64);
  v53 = *(a1 + 72);
  OUTLINED_FUNCTION_5_39(a2 + 64, v74);
  v54 = *(a2 + 72);
  if (v53)
  {
    if (!v54)
    {
      goto LABEL_22;
    }

    if (v52 != *(a2 + 64) || v53 != v54)
    {
      OUTLINED_FUNCTION_0_47();
      if ((sub_192F9775C() & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v54)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_39(a1 + 80, v73);
  v56 = *(a1 + 80);
  v57 = *(a1 + 88);
  OUTLINED_FUNCTION_5_39(a2 + 80, v72);
  v58 = *(a2 + 88);
  if (v57)
  {
    if (!v58)
    {
      goto LABEL_22;
    }

    if (v56 != *(a2 + 80) || v57 != v58)
    {
      OUTLINED_FUNCTION_0_47();
      if ((sub_192F9775C() & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v58)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_39(a1 + 96, v71);
  v60 = *(a1 + 96);
  v61 = *(a1 + 104);
  OUTLINED_FUNCTION_5_39(a2 + 96, v70);
  v62 = *(a2 + 104);
  if (!v61)
  {
    if (!v62)
    {
      goto LABEL_69;
    }

LABEL_22:
    v37 = 0;
    return v37 & 1;
  }

  if (!v62)
  {
    goto LABEL_22;
  }

  if (v60 != *(a2 + 96) || v61 != v62)
  {
    OUTLINED_FUNCTION_0_47();
    if ((sub_192F9775C() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_69:
  OUTLINED_FUNCTION_5_39(a1 + 112, v69);
  v65 = *(a1 + 112);
  v64 = *(a1 + 120);
  OUTLINED_FUNCTION_5_39(a2 + 112, &v68);
  v66 = *(a2 + 120);
  v37 = (v64 | v66) == 0;
  if (v64 && v66)
  {
    if (v65 == *(a2 + 112) && v64 == v66)
    {
      v37 = 1;
    }

    else
    {
      v37 = sub_192F9775C();
    }
  }

  return v37 & 1;
}

uint64_t MockAccount.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_39(v1 + 16, v14);
  v2 = *(v1 + 24);
  if (v2 == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v3 = *(v1 + 16);
    sub_192F978BC();
    sub_192F978BC();
    if (v2)
    {

      sub_192F968BC();
      v4 = OUTLINED_FUNCTION_0_47();
    }

    else
    {
      v4 = v3;
      v5 = 0;
    }

    sub_192CCDD08(v4, v5);
  }

  OUTLINED_FUNCTION_5_39(v1 + 32, v13);
  if (*(v1 + 40))
  {
    sub_192F978BC();

    OUTLINED_FUNCTION_11_36();
  }

  else
  {
    sub_192F978BC();
  }

  OUTLINED_FUNCTION_5_39(v1 + 48, v12);
  if (*(v1 + 56) == 1)
  {
    sub_192F978BC();
  }

  else
  {
    v6 = *(v1 + 48);
    sub_192F978BC();
    MEMORY[0x193B11CB0](v6);
  }

  OUTLINED_FUNCTION_5_39(v1 + 64, v11);
  if (*(v1 + 72))
  {
    sub_192F978BC();

    OUTLINED_FUNCTION_11_36();
  }

  else
  {
    sub_192F978BC();
  }

  OUTLINED_FUNCTION_5_39(v1 + 80, v10);
  if (*(v1 + 88))
  {
    sub_192F978BC();

    OUTLINED_FUNCTION_11_36();
  }

  else
  {
    sub_192F978BC();
  }

  OUTLINED_FUNCTION_5_39(v1 + 96, v9);
  if (*(v1 + 104))
  {
    sub_192F978BC();

    OUTLINED_FUNCTION_11_36();
  }

  else
  {
    sub_192F978BC();
  }

  OUTLINED_FUNCTION_1_58(v1 + 112, v7);
  if (!*(v1 + 120))
  {
    return sub_192F978BC();
  }

  sub_192F978BC();

  sub_192F968BC();
}

uint64_t MockAccount.hashValue.getter()
{
  sub_192F9789C();
  MockAccount.hash(into:)(v1);
  return sub_192F978DC();
}

uint64_t sub_192CCED84(uint64_t a1)
{
  sub_192F9789C();
  MockAccount.hash(into:)(v2);
  return sub_192F978DC();
}

void sub_192CCEDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_15_27();
  a29 = v31;
  a30 = v32;
  v33 = v30;
  v35 = v34;
  v37 = v36;
  v38 = *v30;
  if ((*v30 & 0xC000000000000001) == 0)
  {
    type metadata accessor for MockAccount();
    sub_192F9789C();
    MockAccount.hash(into:)(&a9);
    sub_192F978DC();
    OUTLINED_FUNCTION_6_43();
    v43 = ~v42;
    while (1)
    {
      v44 = v41 & v43;
      if (((*(v38 + 56 + (((v41 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v43)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a9 = *v30;

        sub_192CD03BC(v52, v44, isUniquelyReferenced_nonNull_native);
        *v30 = a9;
        goto LABEL_16;
      }

      v46 = static MockAccount.== infix(_:_:)(v45, v35);

      if (v46)
      {
        break;
      }

      v41 = v44 + 1;
    }

    *v37 = *(*(v38 + 48) + 8 * v44);

    goto LABEL_18;
  }

  if (v38 < 0)
  {
    v39 = *v30;
  }

  else
  {
    v39 = v38 & 0xFFFFFFFFFFFFFF8;
  }

  v40 = sub_192F9720C();

  if (v40)
  {

    a18 = v40;
    type metadata accessor for MockAccount();
    swift_dynamicCast();
    *v37 = a9;
LABEL_18:
    OUTLINED_FUNCTION_10_0();
    return;
  }

  v47 = sub_192F971FC();
  if (!__OFADD__(v47, 1))
  {
    v48 = sub_192CCF388(v39, v47 + 1);
    a9 = v48;
    v49 = v48[2];
    if (v48[3] <= v49)
    {
      sub_192CCF76C(v49 + 1);
      v48 = a9;
    }

    sub_192CD0318(v50, v48);

    *v33 = v48;
LABEL_16:
    *v37 = v35;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_192CCEFC0()
{
  OUTLINED_FUNCTION_12_27();
  sub_192F968BC();
  MEMORY[0x193B11C90](v1);
  sub_192F978DC();
  OUTLINED_FUNCTION_4_55();
  if (v3)
  {
    while (1)
    {
      OUTLINED_FUNCTION_19_22();
      v5 = v5 && v4 == v0;
      if (v5 || (sub_192F9775C()) && v2 == v1)
      {
        break;
      }

      OUTLINED_FUNCTION_14_26();
      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_7_39(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    return 0;
  }

  else
  {
LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_21_21();
    v7 = OUTLINED_FUNCTION_9_35();
    v12 = sub_192CD0520(v7, v8, v9, v10, v11);
    return OUTLINED_FUNCTION_18_25(v12, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32);
  }
}

uint64_t sub_192CCF0A0(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_20_25();
  if (a3)
  {
    MEMORY[0x193B11C90](1);
  }

  else
  {
    MEMORY[0x193B11C90](0);
    MEMORY[0x193B11CB0](a2);
  }

  v8 = sub_192F978DC();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    do
    {
      v12 = *(v5 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        if (a3)
        {
          result = 0;
          a2 = v13;
          goto LABEL_13;
        }
      }

      else if ((a3 & 1) == 0 && v13 == a2)
      {
        result = 0;
        goto LABEL_13;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  sub_192CD06D0(a2, a3 & 1, v10, isUniquelyReferenced_nonNull_native);
  *v4 = v17;
  result = 1;
  v14 = a3;
LABEL_13:
  *v3 = a2;
  *(v3 + 8) = v14 & 1;
  return result;
}

BOOL sub_192CCF1E4(void *a1, void *a2)
{
  v4 = *v2;
  sub_192F967CC();
  sub_192F9789C();
  sub_192F968BC();
  v5 = sub_192F978DC();

  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    v8 = (1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v20;
      v16 = a2;
      sub_192CD0870(v16, v7, isUniquelyReferenced_nonNull_native);
      *v20 = v22;
      *a1 = v16;
      return v8 == 0;
    }

    v9 = sub_192F967CC();
    v11 = v10;
    if (v9 == sub_192F967CC() && v11 == v12)
    {

      goto LABEL_12;
    }

    v14 = sub_192F9775C();

    if (v14)
    {
      break;
    }

    v5 = v7 + 1;
  }

LABEL_12:
  v17 = *(*(v4 + 48) + 8 * v7);
  *a1 = v17;
  v18 = v17;
  return v8 == 0;
}

void *sub_192CCF388(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13280, &qword_192FBF4A8);
    v2 = sub_192F9728C();
    v9 = v2;
    sub_192F971EC();
    while (1)
    {
      v3 = sub_192F9721C();
      if (!v3)
      {
        break;
      }

      v8[0] = v3;
      type metadata accessor for MockAccount();
      swift_dynamicCast();
      v4 = v2[2];
      if (v2[3] <= v4)
      {
        sub_192CCF76C(v4 + 1);
      }

      v2 = v9;
      v5 = v8[9];
      sub_192F9789C();
      MockAccount.hash(into:)(v8);
      sub_192F978DC();
      v6 = sub_192F971DC();
      *(v2 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v6;
      *(v2[6] + 8 * v6) = v5;
      ++v2[2];
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_192CCF4F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14478, &qword_192FC7468);
  result = sub_192F9727C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_192942B74(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    sub_192F9789C();
    sub_192F968BC();
    MEMORY[0x193B11CB0](v19);
    result = sub_192F978DC();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 24 * v23);
    *v28 = v17;
    v28[1] = v18;
    v28[2] = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_192CCF76C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13280, &qword_192FBF4A8);
  result = sub_192F9727C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    for (i = result + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_192F9789C();
      MockAccount.hash(into:)(v18);
      sub_192F978DC();
      result = sub_192F971DC();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v5 + 48) + 8 * result) = v16;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
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

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      sub_192942B74(0, (v17 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v17;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_192CCF94C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15618, &unk_192FCD378);
  result = sub_192F9727C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_192942B74(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    sub_192F9789C();
    sub_192F968BC();
    MEMORY[0x193B11C90](v19);
    result = sub_192F978DC();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 24 * v23);
    *v28 = v17;
    v28[1] = v18;
    v28[2] = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_192CCFBC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15628, &qword_192FCD390);
  result = sub_192F9727C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_30:

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
        goto LABEL_32;
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
      sub_192942B74(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_192F9789C();
    if (v18)
    {
      MEMORY[0x193B11C90](1);
    }

    else
    {
      MEMORY[0x193B11C90](0);
      MEMORY[0x193B11CB0](v17);
    }

    result = sub_192F978DC();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = *(v5 + 48) + 16 * v22;
    *v27 = v17;
    *(v27 + 8) = v18;
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
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_192CCFE44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE141E8, &unk_192FC63F0);
  result = sub_192F9727C();
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_192942B74(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
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
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v27 = *v16;
    v28 = *(v16 + 16);
    v29 = *(v16 + 32);
    result = sub_192F9723C();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v5 + 48) + 40 * v20;
    *v25 = v27;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_192CD00A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15610, &qword_192FCD370);
  result = sub_192F9727C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v27 = v1;
  v28 = v3;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_192942B74(0, (v26 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_192F967CC();
    sub_192F9789C();
    sub_192F968BC();
    v17 = sub_192F978DC();

    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    v3 = v28;
    if (!v10)
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
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_192CD0318(uint64_t a1, uint64_t a2)
{
  sub_192F9789C();
  MockAccount.hash(into:)(v5);
  sub_192F978DC();
  result = sub_192F971DC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_192CD03BC(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_192CCF76C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_192CD1618(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_192F9789C();
      MockAccount.hash(into:)(v16);
      result = sub_192F978DC();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for MockAccount();

        v15 = static MockAccount.== infix(_:_:)(v14, v5);

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_192CD0BA4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_192F977BC();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_192CD0520(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_192CCF94C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_192CD0CF4();
      goto LABEL_17;
    }

    sub_192CD17C0(v11 + 1);
  }

  v13 = *v5;
  sub_192F9789C();
  sub_192F968BC();
  MEMORY[0x193B11C90](a3);
  result = sub_192F978DC();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = (v17 + 24 * a4);
      result = *v18;
      v19 = v18[2];
      v20 = *v18 == v10 && v18[1] == a2;
      if (v20 || (result = sub_192F9775C(), (result & 1) != 0))
      {
        if (v19 == a3)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = (*(v21 + 48) + 24 * a4);
  *v22 = v10;
  v22[1] = a2;
  v22[2] = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_192F977BC();
  __break(1u);
  return result;
}

uint64_t sub_192CD06D0(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_192CCFBC8(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_192CD0E58();
        goto LABEL_19;
      }

      sub_192CD1A14(v8 + 1);
    }

    v10 = *v4;
    sub_192F9789C();
    if (a2)
    {
      MEMORY[0x193B11C90](1);
    }

    else
    {
      MEMORY[0x193B11C90](0);
      MEMORY[0x193B11CB0](v7);
    }

    result = sub_192F978DC();
    v11 = -1 << *(v10 + 32);
    a3 = result & ~v11;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v12 = ~v11;
      do
      {
        v13 = *(v10 + 48) + 16 * a3;
        if (*(v13 + 8))
        {
          if (a2)
          {
            goto LABEL_22;
          }
        }

        else if ((a2 & 1) == 0 && *v13 == v7)
        {
          goto LABEL_22;
        }

        a3 = (a3 + 1) & v12;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_19:
  v14 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = v7;
  *(v15 + 8) = a2 & 1;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15620, &qword_192FCD388);
    result = sub_192F977BC();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

uint64_t sub_192CD0870(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_192CD00A0(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_192CD20BC(v7 + 1);
LABEL_10:
      v13 = *v3;
      sub_192F967CC();
      sub_192F9789C();
      sub_192F968BC();
      v14 = sub_192F978DC();

      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for AMSAccountMediaType(0);
        v16 = sub_192F967CC();
        v18 = v17;
        if (v16 == sub_192F967CC() && v18 == v19)
        {
          goto LABEL_19;
        }

        v21 = sub_192F9775C();

        if (v21)
        {
          goto LABEL_20;
        }

        v14 = a2 + 1;
      }
    }

    result = sub_192CD1274();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_19:

LABEL_20:
    result = sub_192F977BC();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

void *sub_192CD0A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14478, &qword_192FC7468);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + 8 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
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

  return result;
}

void *sub_192CD0BA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13280, &qword_192FBF4A8);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

  return result;
}

void *sub_192CD0CF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15618, &unk_192FCD378);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + 8 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
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

  return result;
}

void *sub_192CD0E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15628, &qword_192FCD390);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(v4 + 48) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_192CD0FA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE141E8, &unk_192FC63F0);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v18 = 5 * v17;
        result = sub_192948314(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

  return result;
}

void *sub_192CD111C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE132B8, &unk_192FCD360);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_192CD1274()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15610, &qword_192FCD370);
  v2 = *v0;
  v3 = sub_192F9726C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

  return result;
}

uint64_t sub_192CD13C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14478, &qword_192FC7468);
  result = sub_192F9727C();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_192F9789C();

        sub_192F968BC();
        MEMORY[0x193B11CB0](v19);
        result = sub_192F978DC();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v5 + 48) + 24 * v23);
        *v28 = v17;
        v28[1] = v18;
        v28[2] = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
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
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

unint64_t sub_192CD1618(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13280, &qword_192FBF4A8);
  result = sub_192F9727C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = result + 56; v8; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
      sub_192F9789C();

      MockAccount.hash(into:)(v15);
      sub_192F978DC();
      result = sub_192F971DC();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v14;
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
        goto LABEL_14;
      }

      v13 = *(v2 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_192CD17C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15618, &unk_192FCD378);
  result = sub_192F9727C();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
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
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_192F9789C();

        sub_192F968BC();
        MEMORY[0x193B11C90](v19);
        result = sub_192F978DC();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v5 + 48) + 24 * v23);
        *v28 = v17;
        v28[1] = v18;
        v28[2] = v19;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
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
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

uint64_t sub_192CD1A14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15628, &qword_192FCD390);
  result = sub_192F9727C();
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
        v15 = *(v3 + 48) + 16 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        sub_192F9789C();
        if (v17)
        {
          MEMORY[0x193B11C90](1);
        }

        else
        {
          MEMORY[0x193B11C90](0);
          MEMORY[0x193B11CB0](v16);
        }

        result = sub_192F978DC();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = *(v5 + 48) + 16 * v21;
        *v26 = v16;
        *(v26 + 8) = v17;
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
          goto LABEL_24;
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
          goto LABEL_28;
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

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_192CD1C60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE141E8, &unk_192FC63F0);
  result = sub_192F9727C();
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
        sub_192948314(*(v3 + 48) + 40 * (v12 | (v6 << 6)), v26);
        result = sub_192F9723C();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = *(v5 + 48) + 40 * v18;
        v24 = v26[0];
        v25 = v26[1];
        *(v23 + 32) = v27;
        *v23 = v24;
        *(v23 + 16) = v25;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
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

uint64_t sub_192CD1E88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE132B8, &unk_192FCD360);
  result = sub_192F9727C();
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
        sub_192F9789C();

        sub_192F968BC();
        result = sub_192F978DC();
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

uint64_t sub_192CD20BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE15610, &qword_192FCD370);
  result = sub_192F9727C();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_192F967CC();
        sub_192F9789C();
        v17 = v16;
        sub_192F968BC();
        v18 = sub_192F978DC();

        v19 = -1 << *(v5 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v5 + 48) + 8 * v22) = v17;
        ++*(v5 + 16);
        v3 = v28;
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

          v2 = v27;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

void sub_192CD230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_15_27();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v54 = v30;
  v39 = *v30;
  sub_192F9789C();
  sub_192F968BC();
  MEMORY[0x193B11CB0](v32);
  sub_192F978DC();
  v40 = v39 + 56;
  OUTLINED_FUNCTION_6_43();
  v43 = v42 & ~v41;
  if ((*(v39 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
  {
    v44 = ~v41;
    v45 = *(v39 + 48);
    while (1)
    {
      v46 = (v45 + 24 * v43);
      v47 = v46[2];
      v48 = *v46 == v36 && v46[1] == v34;
      if (v48 || (sub_192F9775C()) && v47 == v32)
      {
        break;
      }

      v43 = (v43 + 1) & v44;
      if (((*(v40 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *v54;
    v55 = *v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_192CD0A40();
      v50 = v55;
    }

    v51 = *(v50 + 48) + 24 * v43;
    v52 = *v51;
    v53 = *(v51 + 16);
    *v38 = v52;
    *(v38 + 16) = v53;
    sub_192CD26B0(v43);
    *v54 = v55;
  }

  else
  {
LABEL_10:
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
  }

  OUTLINED_FUNCTION_10_0();
}

uint64_t sub_192CD2464(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_192F967CC();
  sub_192F9789C();
  sub_192F968BC();
  v4 = sub_192F978DC();

  v5 = ~(-1 << *(v3 + 32));
  while (1)
  {
    v6 = v4 & v5;
    if (((*(v3 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v4 & v5)) & 1) == 0)
    {
      return 0;
    }

    v7 = sub_192F967CC();
    v9 = v8;
    if (v7 == sub_192F967CC() && v9 == v10)
    {
      break;
    }

    v12 = sub_192F9775C();

    if (v12)
    {
      goto LABEL_11;
    }

    v4 = v6 + 1;
  }

LABEL_11:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v17 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_192CD1274();
    v15 = v17;
  }

  v13 = *(*(v15 + 48) + 8 * v6);
  sub_192CD288C(v6);
  *v2 = v17;
  return v13;
}

unint64_t sub_192CD25F0()
{
  result = qword_1EAE15608;
  if (!qword_1EAE15608)
  {
    type metadata accessor for MockAccount();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15608);
  }

  return result;
}

unint64_t sub_192CD26B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_192F971BC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 24 * v6 + 16);
        sub_192F9789C();

        sub_192F968BC();
        MEMORY[0x193B11CB0](v10);
        v11 = sub_192F978DC();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = v15 + 24 * v2;
            v17 = (v15 + 24 * v6);
            if (v2 != v6 || v16 >= v17 + 24)
            {
              v19 = *v17;
              *(v16 + 16) = *(v17 + 2);
              *v16 = v19;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_192CD288C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_192F971BC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_192F967CC();
        sub_192F9789C();
        v11 = v10;
        sub_192F968BC();
        v12 = sub_192F978DC();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_192CD2A60(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_192CD2AD8(v1);
}

void *sub_192CD2A94()
{
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_192CD2AD8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_192CD2B9C()
{
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
}

uint64_t sub_192CD2BD0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t MockAccountStore.__allocating_init(accounts:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MockAccountStore.init(accounts:)(a1);
  return v2;
}

void *MockAccountStore.init(accounts:)(uint64_t a1)
{
  v1[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0, &unk_192FC6200);
  v1[4] = sub_192F966CC();
  v1[2] = a1;
  return v1;
}

uint64_t sub_192CD2D0C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CD2D24()
{
  v1 = v0[10];
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v21 = MEMORY[0x1E69E7CC0];
  v6 = -1;
  v7 = -1 << *(*(v1 + 16) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        result = sub_192BD077C(v13);
      }

      while (v8);
      continue;
    }
  }

  v14 = v0[9];

  result = sub_19295466C(v21);
  v15 = result;
  for (i = 0; v15 != i; ++i)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x193B116C0](i, v21);
      v17 = result;
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v17 = *(v21 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_4_3();
    swift_beginAccess();
    v18 = *(v17 + 88);
    if (v18)
    {
      if (v14)
      {
        v19 = *(v17 + 80) == v0[8] && v18 == v0[9];
        if (v19 || (sub_192F9775C() & 1) != 0)
        {
LABEL_28:

          goto LABEL_30;
        }
      }
    }

    else if (!v14)
    {
      goto LABEL_28;
    }
  }

  v17 = 0;
LABEL_30:
  OUTLINED_FUNCTION_40();

  return v20(v17);
}

uint64_t sub_192CD2F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CD2F68()
{
  result = v0[4];
  if (result)
  {
    OUTLINED_FUNCTION_5();
    v2 = v0[2];
    *v2 = v0[3];
    v2[1] = v3;
    OUTLINED_FUNCTION_40();
    v5 = v4;

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192CD2FDC(_OWORD *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  return OUTLINED_FUNCTION_0();
}

uint64_t sub_192CD2FF8()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[5];
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);

  if (v3 && (v4 = sub_192BD4464(v0[6], v0[7]), (v5 & 1) != 0))
  {
    v6 = *(*(v2 + 56) + 8 * v4);
  }

  else if (sub_19295466C(MEMORY[0x1E69E7CC0]))
  {
    sub_192BE065C(MEMORY[0x1E69E7CC0]);
    v6 = v7;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  v8 = sub_192CD3DE0(v6);

  OUTLINED_FUNCTION_40();

  return v9(v8);
}

void sub_192CD30E0(void *a1@<X8>)
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_192F971FC())
  {
    sub_192BE065C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *a1 = v2;
}

uint64_t sub_192CD313C(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return OUTLINED_FUNCTION_0();
}

uint64_t MockAccountStore.deinit()
{

  return v0;
}

uint64_t MockAccountStore.__deallocating_deinit()
{
  MockAccountStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_192CD344C(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_192CD34F4;

  return sub_192CD2D0C(v3, v4);
}

uint64_t sub_192CD34F4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_40();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_192CD35F0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  v3 = *v2;
  v4 = v2[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38(v5);
  *v6 = v7;
  v6[1] = sub_192CD4524;

  return sub_192CD2F50(v1, v3, v4);
}

uint64_t sub_192CD3694()
{
  OUTLINED_FUNCTION_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_0(v1);

  return sub_192CD2FDC(v3);
}

uint64_t sub_192CD371C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_40();
  v3 = *v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_40();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_192CD3804()
{
  OUTLINED_FUNCTION_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_0(v1);

  return sub_192CD313C(v3);
}

uint64_t sub_192CD3890()
{
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t MockAccountStore.account(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v5 = *(v2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        result = sub_192BD077C(v13);
      }

      while (v8);
      continue;
    }
  }

  result = sub_19295466C(v19);
  v14 = result;
  for (i = 0; v14 != i; ++i)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x193B116C0](i, v19);
      v16 = result;
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v16 = *(v19 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_4_3();
    swift_beginAccess();
    v17 = *(v16 + 88);
    if (v17)
    {
      if (a2)
      {
        v18 = *(v16 + 80) == a1 && v17 == a2;
        if (v18 || (sub_192F9775C() & 1) != 0)
        {
LABEL_28:

          return v16;
        }
      }
    }

    else if (!a2)
    {
      goto LABEL_28;
    }
  }

  return 0;
}

AppleMediaServices::MockAccountType_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockAccountStore.accountType(withIdentifier:)(Swift::String_optional withIdentifier)
{
  if (withIdentifier.value._object)
  {
    *v1 = withIdentifier;
  }

  else
  {
    __break(1u);
  }

  result.value.identifier = withIdentifier;
  result.is_nil = v2;
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockAccountStore.accounts(with:)(AppleMediaServices::MockAccountType with)
{
  v2 = *with.identifier.value._countAndFlagsBits;
  v3 = *(with.identifier.value._countAndFlagsBits + 8);
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);

  if (v5 && (v6 = sub_192BD4464(v2, v3), (v7 & 1) != 0))
  {
    v8 = *(*(v4 + 56) + 8 * v6);
  }

  else if (sub_19295466C(MEMORY[0x1E69E7CC0]))
  {
    sub_192BE065C(MEMORY[0x1E69E7CC0]);
    v8 = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  v10 = sub_192CD3DE0(v8);

  v12 = v10;
  result.value._rawValue = v12;
  result.is_nil = v11;
  return result;
}

uint64_t sub_192CD3C6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MockAccountStore.account(withIdentifier:)(*a1, a1[1]);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_192CD3CE8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

size_t sub_192CD3D0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_192C38B68(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D18, &qword_192FBDCA0) - 8);
  sub_192C38E5C(v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  OUTLINED_FUNCTION_8_41();
  OUTLINED_FUNCTION_13_25();
  if (!v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_192CD3DE0(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_192F971FC();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_192C39684();

    v1 = sub_192C390B8(&v5, (v3 + 32), v2, v1);
    sub_1928FAA7C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t dispatch thunk of MockAccountStore.account(withIdentifier:)()
{
  OUTLINED_FUNCTION_39_4();
  v6 = (*(v0 + 184) + **(v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  v2[1] = sub_192CD40E0;
  v4 = OUTLINED_FUNCTION_91();

  return v6(v4);
}

uint64_t sub_192CD40E0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_40();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  OUTLINED_FUNCTION_40();

  return v4(v0);
}

uint64_t dispatch thunk of MockAccountStore.accountType(withIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_39_4();
  v11 = (*(v6 + 192) + **(v6 + 192));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_38(v7);
  *v8 = v9;
  v8[1] = sub_192CD4524;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MockAccountStore.accounts(with:)()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_39_4();
  v6 = (*(v0 + 200) + **(v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_38(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_0(v2);

  return v6(v4);
}

uint64_t dispatch thunk of MockAccountStore.saveAccount(_:doVerify:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_39_4();
  v9 = (*(v4 + 208) + **(v4 + 208));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38(v5);
  *v6 = v7;
  v6[1] = sub_192CD3890;

  return v9(a1, a2);
}

AppleMediaServices::MockAccountType __swiftcall MockAccountType.init(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.identifier.value._object = v6;
  result.identifier.value._countAndFlagsBits = v5;
  return result;
}

uint64_t MockAccountType.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MockAccountType.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static MockAccountType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_192F9775C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t MockAccountType.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_192F978BC();
  }

  sub_192F978BC();

  return sub_192F968BC();
}

uint64_t MockAccountType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_192F9789C();
  sub_192F978BC();
  if (v1)
  {
    sub_192F968BC();
  }

  return sub_192F978DC();
}

uint64_t sub_192CD4738@<X0>(uint64_t *a1@<X8>)
{
  result = static MockAccountType.iTunesTypeIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MockAccountType.iTunesTypeIdentifier.getter()
{
  if (qword_1EAE125C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED6DE318;

  return v0;
}

uint64_t sub_192CD47C8@<X0>(uint64_t *a1@<X8>)
{
  result = MockAccountType.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_192CD47FC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_192F9789C();
  sub_192F978BC();
  if (v2)
  {
    sub_192F968BC();
  }

  return sub_192F978DC();
}

uint64_t sub_192CD4868()
{
  result = sub_192F967CC();
  qword_1ED6DE318 = result;
  unk_1ED6DE320 = v1;
  return result;
}

unint64_t sub_192CD489C()
{
  result = qword_1EAE15638;
  if (!qword_1EAE15638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15638);
  }

  return result;
}

uint64_t sub_192CD48F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192CD4944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_192CD49AC@<X0>(uint64_t *a1@<X8>)
{
  result = MockAuthenticateResult.account.getter();
  *a1 = result;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void __swiftcall NSURL.ams_appending(queryParameters:)(NSURL_optional *__return_ptr retstr, Swift::OpaquePointer queryParameters)
{
  v53 = sub_192F9550C();
  OUTLINED_FUNCTION_4_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192F95A8C();
  OUTLINED_FUNCTION_4_0();
  v12 = v11;
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v42 - v19;
  v21 = *(queryParameters._rawValue + 2);
  if (v21)
  {
    v43 = v17;
    v44 = &v42 - v19;
    v45 = v12;
    v46 = v10;
    v47 = v2;
    v57 = MEMORY[0x1E69E7CC0];
    sub_192875310(0, v21, 0);
    v56 = v57;
    v24 = sub_19291E3C4(queryParameters._rawValue);
    v25 = 0;
    v26 = queryParameters._rawValue + 64;
    v51 = v5 + 32;
    v52 = v5;
    v48 = queryParameters._rawValue + 72;
    v49 = v21;
    v50 = queryParameters._rawValue + 64;
    if ((v24 & 0x8000000000000000) == 0)
    {
      while (v24 < 1 << *(queryParameters._rawValue + 32))
      {
        v27 = v24 >> 6;
        if ((*&v26[8 * (v24 >> 6)] & (1 << v24)) == 0)
        {
          goto LABEL_25;
        }

        if (*(queryParameters._rawValue + 9) != v22)
        {
          goto LABEL_26;
        }

        v54 = v23;
        v55 = v22;
        rawValue = queryParameters._rawValue;

        sub_192F954DC();

        v29 = v56;
        v57 = v56;
        v31 = *(v56 + 16);
        v30 = *(v56 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_192875310(v30 > 1, v31 + 1, 1);
          v29 = v57;
        }

        *(v29 + 16) = v31 + 1;
        v32 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v56 = v29;
        (*(v52 + 32))(v29 + v32 + *(v52 + 72) * v31, v9, v53);
        v33 = 1 << rawValue[32];
        if (v24 >= v33)
        {
          goto LABEL_27;
        }

        queryParameters._rawValue = rawValue;
        v26 = v50;
        v34 = *&v50[8 * v27];
        if ((v34 & (1 << v24)) == 0)
        {
          goto LABEL_28;
        }

        if (*(queryParameters._rawValue + 9) != v55)
        {
          goto LABEL_29;
        }

        v35 = v34 & (-2 << (v24 & 0x3F));
        if (v35)
        {
          v33 = __clz(__rbit64(v35)) | v24 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v36 = v27 << 6;
          v37 = v27 + 1;
          v38 = &v48[8 * v27];
          while (v37 < (v33 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              sub_192935BBC(v24, v55, v54 & 1);
              v33 = __clz(__rbit64(v39)) + v36;
              goto LABEL_18;
            }
          }

          sub_192935BBC(v24, v55, v54 & 1);
        }

LABEL_18:
        if (++v25 == v49)
        {
          v10 = v46;
          v20 = v44;
          v12 = v45;
          v17 = v43;
          goto LABEL_23;
        }

        v23 = 0;
        v22 = *(queryParameters._rawValue + 9);
        v24 = v33;
        if (v33 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
LABEL_23:
    sub_192F959AC();
    sub_192F95A6C();

    v41 = *(v12 + 8);
    v41(v17, v10);
    sub_192F9596C();
    v41(v20, v10);
  }
}

id sub_192CD4EB0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_192F9669C();
  v5 = a1;
  NSURL.ams_appending(queryParameters:)(v6, v4);
  v8 = v7;

  return v8;
}

const char *sub_192CD4F2C(char a1)
{
  result = "AppleMediaServices";
  switch(a1)
  {
    case 1:
      result = "MusicKit";
      break;
    case 2:
      result = "Sonic";
      break;
    case 3:
      result = "SwiftUI";
      break;
    default:
      return result;
  }

  return result;
}

const char *sub_192CD4F94(char a1)
{
  result = "Solarium";
  switch(a1)
  {
    case 1:
      result = "library_pins";
      break;
    case 2:
      result = "Alchemy";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_192CD4FEC()
{
  v0 = sub_192F9750C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_192CD5038(char a1)
{
  result = 0x6D756972616C6F73;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_192CD50E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192CD4FEC();
  *a1 = result;
  return result;
}

unint64_t sub_192CD5114@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192CD5038(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192CD5154(uint64_t a1, uint64_t a2)
{

  v2 = sub_192F9750C();

  v10 = &type metadata for FeatureFlags;
  v3 = sub_192CD5340();
  v11 = v3;
  LOBYTE(v9[0]) = v2;
  v4 = sub_192F95E6C();
  __swift_destroy_boxed_opaque_existential_0(v9);
  v5 = "fpdi-config";
  switch(v2)
  {
    case 0:
      goto LABEL_7;
    case 1:
      goto LABEL_4;
    case 2:
      v5 = "45-A32F-E8DB6C76CF02";
      goto LABEL_4;
    case 3:
      v5 = "E0-A68E-2F63BB18AB9B";
LABEL_4:
      if (0x8000000193017D60 == (v5 | 0x8000000000000000))
      {

        if ((v4 & 1) == 0)
        {
LABEL_6:
          v6 = 0;
          return v6 & 1;
        }

        goto LABEL_8;
      }

LABEL_7:
      v7 = sub_192F9775C();

      if (v7 & v4)
      {
LABEL_8:
        v10 = &type metadata for FeatureFlags;
        v11 = v3;
        LOBYTE(v9[0]) = 0;
        v6 = sub_192F95E6C();
        __swift_destroy_boxed_opaque_existential_0(v9);
        return v6 & 1;
      }

      v6 = (v7 ^ 1) & v4;
      return v6 & 1;
    default:
      goto LABEL_6;
  }
}

unint64_t sub_192CD5340()
{
  result = qword_1EAE11C48;
  if (!qword_1EAE11C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11C48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192CD5474()
{
  result = qword_1EAE15640;
  if (!qword_1EAE15640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15640);
  }

  return result;
}

__n128 TSOnDeviceDataService.DatasetIdentifier.init(accountIdentity:datasetName:id:idDomain:idSource:idSuffix:namespace:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10, __n128 a11, __n128 a13)
{
  result = *a1;
  v13 = a1[1].n128_u64[0];
  a9[4] = *a1;
  a9[5].n128_u64[0] = v13;
  a9[5].n128_u64[1] = a2;
  a9[3].n128_u64[0] = a4;
  a9[3].n128_u64[1] = a5;
  a9[2].n128_u64[0] = a6;
  a9[2].n128_u64[1] = a7;
  a9[1].n128_u64[0] = a8;
  a9[1].n128_u64[1] = a10;
  a9[6].n128_u64[0] = a3;
  *(a9 + 104) = a11;
  *a9 = a13;
  return result;
}

uint64_t static TSOnDeviceDataService.askToSync(dataset:afterDelay:)(uint64_t *a1, uint64_t a2, char a3)
{
  *(v3 + 312) = a3;
  v4 = *a1;
  v5 = a1[1];
  *(v3 + 152) = a2;
  *(v3 + 160) = v4;
  *(v3 + 168) = v5;
  *(v3 + 176) = *(a1 + 1);
  *(v3 + 192) = a1[4];
  *(v3 + 200) = *(a1 + 5);
  *(v3 + 216) = *(a1 + 7);
  *(v3 + 232) = a1[9];
  *(v3 + 240) = *(a1 + 5);
  *(v3 + 256) = a1[12];
  *(v3 + 264) = *(a1 + 13);
  return MEMORY[0x1EEE6DFA0](sub_192CD5570, 0, 0);
}

uint64_t sub_192CD5570()
{
  if (*(v0 + 312))
  {
    v1 = 0;
  }

  else
  {
    sub_192C3F6E4();
    v1 = sub_192F96FDC();
  }

  v27 = v1;
  *(v0 + 280) = v1;
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v6 = [v5 initWithUnsignedLongLong_];
  objc_allocWithZone(AMSAccountIdentity);
  v7 = sub_192935B50(v6, v4, v2);
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + 272);
    v10 = *(v0 + 256);
    v21 = *(v0 + 248);
    v22 = *(v0 + 264);
    v25 = *(v0 + 208);
    v26 = *(v0 + 216);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = objc_allocWithZone(AMSOnDeviceDataSyncRequest);
    v16 = v27;

    v17 = sub_192CD5A30(v14, v13, v12, v11, v23, v24, v25, v26, v8, v21, v10, v22, v9, v27);
    *(v0 + 288) = v17;
    v18 = [objc_opt_self() recordSyncRequest_];
    *(v0 + 296) = v18;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_192CD5824;
    v19 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144E0, &qword_192FC74B0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_19293A7A4;
    *(v0 + 104) = &block_descriptor_28;
    *(v0 + 112) = v19;
    [v18 resultWithCompletion_];
    v7 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_192CD5824()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_192CD59AC;
  }

  else
  {
    v2 = sub_192CD5934;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192CD5934()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_192CD59AC(uint64_t a1)
{
  v2 = v1[37];
  v4 = v1[35];
  v3 = v1[36];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

id sub_192CD5A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = sub_192F9679C();

  v14 = sub_192F9679C();

  v15 = sub_192F9679C();

  v16 = sub_192F9679C();

  v17 = sub_192F9679C();

  if (a13)
  {
    v18 = sub_192F9679C();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v22 initWithNamespace:v21 idSource:v14 idDomain:v15 identifier:v16 accountID:a9 datasetName:v17 idSuffix:v18 afterDelay:a14];

  return v19;
}

_BYTE *storeEnumTagSinglePayload for TSOnDeviceDataService(_BYTE *result, int a2, int a3)
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

uint64_t sub_192CD5C4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_192CD5C8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata accessor for OpenURLAction(uint64_t a1)
{
  result = qword_1EAE11A68;
  if (!qword_1EAE11A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_192CD5D6C(uint64_t a1)
{
  result = sub_192F95A8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_192CD5DD8()
{
  result = sub_192F967CC();
  qword_1ED6E3348 = result;
  unk_1ED6E3350 = v1;
  return result;
}

BOOL sub_192CD5E24@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192CD5E14(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_192CD5E5C()
{
  if (qword_1EAE125C8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED6E3348;

  return v0;
}

uint64_t sub_192CD5EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_192CD663C();
  v5 = sub_192BAB238();

  return MEMORY[0x1EEDC27F0](a1, a2, v4, v5);
}

uint64_t sub_192CD5F20(uint64_t a1)
{
  v2 = sub_192CD65E8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_192CD5F5C(uint64_t a1)
{
  v2 = sub_192CD65E8();
  v3 = sub_192CD663C();
  v4 = sub_192BAB238();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

uint64_t sub_192CD5FD8()
{
  v1 = objc_opt_self();
  v2 = sub_192F9596C();
  LOBYTE(v1) = [v1 openStandardURL_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200, &unk_192FC22D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_192FBCD50;
  *(inited + 32) = 0x737574617473;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v1;
  v4 = sub_192F966CC();
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_192CD60D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192C45F38;

  return sub_192CD5FB8();
}

uint64_t sub_192CD6168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27[-v12];
  v14 = sub_192F95A8C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_192952700(7107189, 0xE300000000000000, a1);

  if (!v28)
  {
    sub_1928FC07C(v27, &unk_1EAE131B0, &qword_192FBD860);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_192BD2718();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    v21 = &qword_1EAE14D20;
    v22 = &qword_192FBF2D0;
    v20 = a2;
    return sub_1928FC07C(v20, v21, v22);
  }

  sub_192F95A3C();

  sub_192CD6490();
  v19 = swift_allocError();
  sub_192C44B08(v13, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    sub_1928FC07C(v10, &unk_1EAE144B0, &unk_192FC78B0);
    swift_willThrow();
    sub_1928FC07C(a2, &qword_1EAE14D20, &qword_192FBF2D0);
    v20 = v13;
    v21 = &unk_1EAE144B0;
    v22 = &unk_192FC78B0;
    return sub_1928FC07C(v20, v21, v22);
  }

  sub_1928FC07C(a2, &qword_1EAE14D20, &qword_192FBF2D0);
  sub_1928FC07C(v13, &unk_1EAE144B0, &unk_192FC78B0);
  v25 = *(v15 + 32);
  v25(v18, v10, v14);

  return (v25)(a3, v18, v14);
}

unint64_t sub_192CD6490()
{
  result = qword_1EAE15648;
  if (!qword_1EAE15648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15648);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OpenURLAction.PerformError(_BYTE *result, int a2, int a3)
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

unint64_t sub_192CD6594()
{
  result = qword_1EAE15650;
  if (!qword_1EAE15650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15650);
  }

  return result;
}

unint64_t sub_192CD65E8()
{
  result = qword_1EAE15658;
  if (!qword_1EAE15658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15658);
  }

  return result;
}

unint64_t sub_192CD663C()
{
  result = qword_1EAE15660;
  if (!qword_1EAE15660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15660);
  }

  return result;
}

unint64_t *sub_192CD6694@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1] >> 14;
  for (i = *result; i >> 14 != v3; i = result)
  {
    OUTLINED_FUNCTION_0_48();
    sub_192F970AC();
    v5 = sub_192F9671C();

    if ((v5 & 1) == 0)
    {
      v3 = i >> 14;
      break;
    }

    OUTLINED_FUNCTION_0_48();
    result = sub_192F9706C();
  }

  if (v3 >= v2 >> 14)
  {
    v6 = sub_192F970BC();
    v10 = v9;
    if ((v6 ^ v7) >= 0x4000)
    {
      v11 = v6;
      v12 = v7;
      v13 = v8;
      v14 = sub_192CD6D94(v6, v7, v8, v9, 10);
      if ((v15 & 0x100) != 0)
      {
        v14 = sub_192CD6800(v11, v12, v13, v10, 10);
        if ((v19 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v15 & 1) == 0)
      {
LABEL_10:
        v16 = v14;
        v17 = sub_192F9709C();

        result = sub_192CBB6A8(v17);
        v18 = 0;
LABEL_13:
        *a2 = v16;
        *(a2 + 8) = v18;
        return result;
      }
    }

    v16 = 0;
    v18 = 1;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_192CD6800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_192CD6E70();

  result = sub_192F969DC();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_192BC7BD4(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_192F9731C();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_192CD6D94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_192F9731C();
  }

  result = sub_192CD6EC4(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_192CD6E70()
{
  result = qword_1EAE15668;
  if (!qword_1EAE15668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15668);
  }

  return result;
}

uint64_t sub_192CD6EC4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_192BC7FE4(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_192F9694C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_192BC7FE4(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_192BC7FE4(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_192F9694C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_192CD7300()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_135();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CD732C()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 24) = sub_192F967CC();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_192CD7398()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_192CD744C;
  v3 = v0[3];

  return sub_192BAC030(0, 0, v3, v1);
}

uint64_t sub_192CD744C(uint64_t a1)
{
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 48) = a1;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else if (a1)
  {
    v11 = swift_task_alloc();
    *(v5 + 56) = v11;
    *v11 = v7;
    v11[1] = sub_192CD762C;

    return ACAccountStore.accounts(with:)(a1);
  }

  else
  {
    v12 = *(v7 + 8);

    return v12(0);
  }
}

uint64_t sub_192CD762C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CD773C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_192CD779C()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CD7818()
{
  OUTLINED_FUNCTION_5();
  if (qword_1EAE125C0 != -1)
  {
    OUTLINED_FUNCTION_3_54(&qword_1EAE125C0);
  }

  v2 = qword_1ED6DE318;
  v1 = unk_1ED6DE320;
  *(v0 + 56) = unk_1ED6DE320;

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_192CD78F8;

  return sub_192CD2F50(v0 + 32, v2, v1);
}

uint64_t sub_192CD78F8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CD7A10()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v2 == 1)
  {
    sub_192CCDD08(v1, 1);
    OUTLINED_FUNCTION_40();

    return v3(0);
  }

  else
  {
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_192CD7B18;

    return sub_192CD2FDC((v0 + 16));
  }
}

uint64_t sub_192CD7B18()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CD7C28()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_192CD7C88()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192CD7CE4()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 72) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 16) = v6;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_192CD7D90;

  return sub_192CD7300();
}

uint64_t sub_192CD7D90()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_192CD7EB0()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 24);
    v4 = sub_19295466C(*(v0 + 64));
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        goto LABEL_29;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193B116C0](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v6 = *(v1 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v3)
      {
        v8 = sub_192BAAE84(v6);
        if (v9)
        {
          if (v8 == *(v0 + 16) && v9 == *(v0 + 24))
          {
LABEL_30:

LABEL_31:

            goto LABEL_32;
          }

          v11 = sub_192F9775C();

          if (v11)
          {
            goto LABEL_31;
          }
        }
      }

      if ((*(v0 + 72) & 1) == 0)
      {
        v12 = *(v0 + 32);
        v13 = ACAccount.dsid.getter();
        if ((v14 & 1) == 0 && v13 == v12)
        {
          goto LABEL_31;
        }
      }

      if (v2)
      {
        v15 = sub_192C97154(v7);
        if (v16)
        {
          if (v15 == *(v0 + 40) && v16 == *(v0 + 48))
          {
            goto LABEL_30;
          }

          v18 = sub_192F9775C();

          if (v18)
          {
            goto LABEL_31;
          }
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_29:
    v7 = 0;
LABEL_32:
    OUTLINED_FUNCTION_40();

    v19(v7);
  }
}

uint64_t sub_192CD8084(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = a6;
  *(v6 + 144) = a4;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  v7 = swift_task_alloc();
  *(v6 + 128) = v7;
  *v7 = v6;
  v7[1] = sub_192CD8134;

  return sub_192CD77F8();
}

uint64_t sub_192CD8134()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_192CD8254()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    result = sub_19295466C(*(v0 + 136));
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        goto LABEL_29;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x193B116C0](i, v1);
        v7 = result;
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v7 = *(v1 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v3 && (swift_beginAccess(), (v8 = *(v7 + 40)) != 0) && (*(v7 + 32) == *(v0 + 88) ? (v9 = v8 == *(v0 + 96)) : (v9 = 0), v9 || (sub_192F9775C() & 1) != 0) || (*(v0 + 144) & 1) == 0 && (swift_beginAccess(), (*(v7 + 56) & 1) == 0) && *(v7 + 48) == *(v0 + 104) || v2 && (swift_beginAccess(), (v10 = *(v7 + 120)) != 0) && (*(v7 + 112) == *(v0 + 112) ? (v11 = v10 == *(v0 + 120)) : (v11 = 0), v11 || (sub_192F9775C() & 1) != 0))
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_29:
    v7 = 0;
LABEL_30:
    OUTLINED_FUNCTION_40();

    return v12(v7);
  }

  return result;
}

uint64_t PassingMockAuthenticateTask.__allocating_init(authenticationResults:accountStore:options:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  PassingMockAuthenticateTask.init(authenticationResults:accountStore:options:)(a1, a2, a3);
  return v6;
}

uint64_t PassingMockAuthenticateTask.init(authenticationResults:accountStore:options:)(uint64_t a1, uint64_t a2, id a3)
{
  if (a3)
  {
    v7 = [a3 clientInfo];
    v8 = [v7 accountMediaType];
  }

  else
  {
    v8 = 0;
  }

  *(v3 + 16) = v8;
  *(v3 + 24) = a2;
  v9 = sub_192F967CC();
  v11 = v10;

  v12 = sub_192BD2E60(v9, v11, a1);

  if (v12)
  {
    v32 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14420, &unk_192FC7150);
    v13 = swift_dynamicCast();
    v14 = v30;
    v15 = v31;
    if (!v13)
    {
      v14 = 0;
      v15 = 0;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(v3 + 32) = v14;
  *(v3 + 40) = v15;
  if (a3)
  {
    v16 = [a3 canMakeAccountActive];
  }

  else
  {
    v16 = 0;
  }

  *(v3 + 48) = v16;
  v17 = sub_192F967CC();
  v19 = sub_192BD2E60(v17, v18, a1);

  if (v19)
  {
    v30 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14420, &unk_192FC7150);
    v20 = swift_dynamicCast();
    v21 = v32;
    if (!v20)
    {
      v21 = 0;
    }

    v22 = v20 ^ 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  *(v3 + 56) = v21;
  *(v3 + 64) = v22;
  v23 = sub_192F967CC();
  v25 = sub_192BD2E60(v23, v24, a1);

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14420, &unk_192FC7150);
    v26 = swift_dynamicCast();
    v27 = v30;
    v28 = v31;
    if (!v26)
    {
      v27 = 0;
      v28 = 0;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  *(v3 + 72) = v27;
  *(v3 + 80) = v28;
  return v3;
}

uint64_t PassingMockAuthenticateTask.performAuthentication()()
{
  OUTLINED_FUNCTION_3();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_192F95D3C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CD8788()
{
  v1 = *(v0 + 96);
  *(v0 + 128) = *(v1 + 24);
  v2 = *(v1 + 32);
  *(v0 + 136) = v2;
  v3 = *(v1 + 40);
  *(v0 + 144) = v3;
  v4 = *(v1 + 56);
  *(v0 + 152) = v4;
  v5 = *(v1 + 64);
  *(v0 + 216) = v5;
  v6 = *(v1 + 72);
  *(v0 + 160) = v6;
  v7 = *(v1 + 80);
  *(v0 + 168) = v7;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_192CD8894;

  return sub_192CD8084(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_192CD8894()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 184) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_192CD89D4()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    if (qword_1EAE125C0 != -1)
    {
      OUTLINED_FUNCTION_3_54(&qword_1EAE125C0);
    }

    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 104);

    sub_192F95D2C();
    v5 = sub_192F95D0C();
    v7 = v6;
    (*(v3 + 8))(v2, v4);
    type metadata accessor for MockAccount();
    swift_allocObject();
    OUTLINED_FUNCTION_135();
    v1 = MockAccount.init(accountType:altDSID:dsid:firstName:identifier:lastName:username:)(v8, v9, v10, 0, 1, 0, 0, v5, v7, 0, 0, 0, 0);
  }

  *(v0 + 192) = v1;
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = *(v0 + 216);
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);
  v21 = *(v0 + 96);
  swift_beginAccess();
  *(v1 + 32) = v16;
  *(v1 + 40) = v14;

  swift_beginAccess();
  *(v1 + 48) = v15;
  *(v1 + 56) = v13;
  swift_beginAccess();
  *(v1 + 112) = v12;
  *(v1 + 120) = v11;

  if (*(v21 + 48) == 1)
  {
    v17 = *(*(v0 + 96) + 16);
    if (v17)
    {
      v18 = v17;
      MockAccount.setActive(_:for:)(1, v18);
    }
  }

  v19 = swift_task_alloc();
  *(v0 + 200) = v19;
  *v19 = v0;
  v19[1] = sub_192CD8C30;

  return sub_192CD313C(v1);
}

uint64_t sub_192CD8C30()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192CD8D2C()
{
  OUTLINED_FUNCTION_3();
  **(v0 + 88) = *(v0 + 192);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192CD8D94()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PassingMockAuthenticateTask.deinit()
{

  return v0;
}

uint64_t PassingMockAuthenticateTask.__deallocating_deinit()
{
  PassingMockAuthenticateTask.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_192CD8E64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = PassingMockAuthenticateTask.__allocating_init(authenticationResults:accountStore:options:)(a1, *a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_192CD8E90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192919C44;

  return PassingMockAuthenticateTask.performAuthentication()();
}

uint64_t sub_192CD8F7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_192CD8FBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_192CD9040()
{
  v1 = *(v0 + 16);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_192CD90EC;

  return sub_192CD965C(v3, v2, v4);
}

uint64_t sub_192CD90EC()
{
  OUTLINED_FUNCTION_5_40();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  if (v1 || (v0 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_2_50();

    return v10(v9);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v4 + 32) = v7;
    *v7 = v5;
    v7[1] = sub_192CD925C;

    return sub_192CB5700();
  }
}

uint64_t sub_192CD925C()
{
  OUTLINED_FUNCTION_5_40();
  v3 = *v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  v5 = *(v3 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0 & 1;
  }

  return v5(v6);
}

uint64_t sub_192CD9354(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192CD93E4;

  return sub_192CD9020();
}

uint64_t sub_192CD93E4()
{
  OUTLINED_FUNCTION_5_40();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = v0 & 1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_192CD94E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_192C98440(a2, v15);

  v8 = sub_192CDA0A8(v7, v15);
  if (v3)
  {
    sub_192CD95E4(a2);
  }

  else
  {
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    sub_192C98440(a2, v14);
    sub_192CB8694(a1, v14, v15);
    result = sub_192CD95E4(a2);
    v12 = v15[1];
    *(a3 + 24) = v15[0];
    *(a3 + 40) = v12;
    v13 = v15[3];
    *(a3 + 56) = v15[2];
    *(a3 + 72) = v13;
  }

  return result;
}

uint64_t sub_192CD95E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14D20, &qword_192FBF2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192CD965C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  return MEMORY[0x1EEE6DFA0](sub_192CD9680, 0, 0);
}

uint64_t sub_192CD9680()
{
  v1 = v0;
  v2 = v0 + 80;
  v4 = *(v1 + 216);
  v3 = *(v1 + 224);
  sub_192CDA340();

  v5 = sub_192C59F70(v4, v3);
  *(v1 + 232) = v5;
  if (qword_1EAE12488 != -1)
  {
    swift_once();
  }

  v7 = *(v1 + 216);
  v6 = *(v1 + 224);
  v8 = *(v1 + 208);
  oslog = qword_1EAE15410;
  *(v1 + 240) = qword_1EAE15410;
  *(v1 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_192FBCD90;
  *(v1 + 96) = v6;
  *(v1 + 104) = &type metadata for PromptNotificationAction;
  *(v1 + 80) = v8;
  *(v1 + 88) = v7;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    v12 = sub_192F967CC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *(v1 + 208);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  *(v1 + 256) = v16;
  v17 = OUTLINED_FUNCTION_90(v16);
  *(v17 + 16) = xmmword_192FBCD50;
  sub_19286C588(v2, v1 + 144);
  sub_19286CFC8((v1 + 144), v12, v14, v17 + 32);
  *(v9 + 32) = v17;
  __swift_destroy_boxed_opaque_existential_0(v2);
  sub_19287AEE0();
  v44 = v18;
  v19._object = 0x80000001930230E0;
  v19._countAndFlagsBits = 0xD000000000000013;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
  type metadata accessor for UNAuthorizationOptions(0);
  *(v1 + 168) = v20;
  *(v1 + 144) = v15;
  sub_192878268(v1 + 144, v1 + 176);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  sub_19286D180(v1 + 176, v2);
  *(v1 + 112) = 0;
  v21 = v44;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v21 = v39;
  }

  v22 = *(v21 + 16);
  if (v22 >= *(v21 + 24) >> 1)
  {
    sub_19287AEE0();
    v21 = v40;
  }

  *(v21 + 16) = v22 + 1;
  v23 = v21 + 40 * v22;
  v24 = *v2;
  v25 = *(v2 + 16);
  *(v23 + 64) = *(v2 + 32);
  *(v23 + 32) = v24;
  *(v23 + 48) = v25;
  sub_1928FC07C(v1 + 144, &unk_1EAE131B0, &qword_192FBD860);
  v26._countAndFlagsBits = 41;
  v26._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  *(v9 + 40) = v21;
  v27 = sub_192F96E3C();
  if (os_log_type_enabled(oslog, v27))
  {
    v42 = v5;
    v28 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v29 = byte_1ED6DE5D8;
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v1 + 80) = v9;
    *(v1 + 88) = sub_192BB97CC;
    *(v1 + 96) = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_11();
    v31 = sub_192F9674C();
    v33 = v32;

    objc_autoreleasePoolPop(v28);
    v34 = objc_autoreleasePoolPush();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v36 = OUTLINED_FUNCTION_90(v35);
    *(v36 + 16) = xmmword_192FBCD50;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1928FDB30();
    *(v36 + 32) = v31;
    *(v36 + 40) = v33;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, oslog, v27, v36);

    objc_autoreleasePoolPop(v34);
    v5 = v42;
  }

  v37 = *(v1 + 208);

  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_192CD9B70;
  v38 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DD0, &qword_192FBDF40);
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_19294E224;
  *(v1 + 104) = &block_descriptor_29;
  *(v1 + 112) = v38;
  [v5 requestAuthorizationWithOptions:v37 completionHandler:v2];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_192CD9B70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_192CDA030;
  }

  else
  {
    v2 = sub_192CD9C80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192CD9C80()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 144);
  v5 = swift_allocObject();
  *(v0 + 80) = v3;
  v6 = (v0 + 80);
  *(v5 + 16) = xmmword_192FBCD90;
  *(v0 + 96) = v1;
  *(v0 + 104) = &type metadata for PromptNotificationAction;
  *(v0 + 88) = v2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    v9 = sub_192F967CC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = OUTLINED_FUNCTION_90(*(v0 + 256));
  *(v12 + 16) = xmmword_192FBCD50;
  sub_19286C588(v0 + 80, v0 + 144);
  sub_19286CFC8((v0 + 144), v9, v11, v12 + 32);
  *(v5 + 32) = v12;
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  sub_19287AEE0();
  v38 = v13;
  v14._object = 0x8000000193023100;
  v14._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  *(v0 + 168) = MEMORY[0x1E69E6370];
  *(v0 + 144) = v4;
  sub_192878268(v0 + 144, v0 + 176);
  *v6 = 0u;
  *(v0 + 96) = 0u;
  sub_19286D180(v0 + 176, v0 + 80);
  *(v0 + 112) = 0;
  v15 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_0();
    v15 = v36;
  }

  v16 = *(v15 + 16);
  if (v16 >= *(v15 + 24) >> 1)
  {
    sub_19287AEE0();
    v15 = v37;
  }

  v17 = *(v0 + 240);
  *(v15 + 16) = v16 + 1;
  v18 = v15 + 40 * v16;
  v19 = *v6;
  v20 = *(v0 + 96);
  *(v18 + 64) = *(v0 + 112);
  *(v18 + 32) = v19;
  *(v18 + 48) = v20;
  sub_1928FC07C(v0 + 144, &unk_1EAE131B0, &qword_192FBD860);
  v21._countAndFlagsBits = 41;
  v21._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  *(v5 + 40) = v15;
  v22 = sub_192F96E7C();
  if (os_log_type_enabled(v17, v22))
  {
    v23 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    v24 = *(v0 + 240);
    v25 = byte_1ED6DE5D8;
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v0 + 80) = v5;
    *(v0 + 88) = sub_1928FA5C4;
    *(v0 + 96) = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_11();
    v27 = sub_192F9674C();
    v29 = v28;

    objc_autoreleasePoolPop(v23);
    v30 = objc_autoreleasePoolPush();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v32 = OUTLINED_FUNCTION_90(v31);
    *(v32 + 16) = xmmword_192FBCD50;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1928FDB30();
    *(v32 + 32) = v27;
    *(v32 + 40) = v29;
    sub_192F9622C("%{public}@", 10, 2, &dword_192869000, v24, v22, v32);

    objc_autoreleasePoolPop(v30);
  }

  v33 = *(v0 + 232);

  v34 = *(v0 + 8);

  return v34(v4);
}

uint64_t sub_192CDA030(uint64_t a1)
{
  v2 = *(v1 + 232);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_192CDA0A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_192952700(0xD000000000000014, 0x800000019301CAD0, a1);
  if (!v26)
  {

    sub_1928FC07C(v25, &unk_1EAE131B0, &qword_192FBD860);
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_3_55(v5, v6, v7, MEMORY[0x1E69E6810], v8, v9, v10, v11, v21, v23, v25[0]) & 1) == 0)
  {

LABEL_9:
    sub_192CDA2EC();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    sub_1928FC07C(a2, &qword_1EAE14D20, &qword_192FBF2D0);
    return v2;
  }

  v2 = v22;
  sub_192952700(0xD000000000000010, 0x800000019301CAB0, a1);

  if ((OUTLINED_FUNCTION_3_55(v12, v13, v14, MEMORY[0x1E69E6158], v15, v16, v17, v18, v22, v24, v25[0]) & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1928FC07C(a2, &qword_1EAE14D20, &qword_192FBF2D0);
  return v2;
}

uint64_t sub_192CDA210(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_192CB8580;

  return sub_192CD965C(v3, v4, v5);
}

uint64_t sub_192CDA2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_192CDA0A8(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

unint64_t sub_192CDA2EC()
{
  result = qword_1EAE15670;
  if (!qword_1EAE15670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15670);
  }

  return result;
}

unint64_t sub_192CDA340()
{
  result = qword_1EAE15678;
  if (!qword_1EAE15678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAE15678);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptNotificationAction.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_192CDA460(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_192CDA4A0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_192CDA4F8()
{
  result = qword_1EAE15680;
  if (!qword_1EAE15680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE15680);
  }

  return result;
}

uint64_t dispatch thunk of PurchaseConfigBiometricsProtocol.isActionSupported(for:account:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_192CDA6F8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_192CDA6F8(uint64_t a1)
{

  OUTLINED_FUNCTION_40();

  return v2(a1);
}

id sub_192CDA840(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v11[0] = 0;
  v5 = [v4 copyAccessControlRefWithAccount:a1 options:a2 error:v11];
  v6 = v11[0];
  v7 = v4;
  v8 = v6;
  if (!v5)
  {
    v9 = v8;
    sub_192F958DC();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_192CDA908(uint64_t a1)
{
  v1 = [objc_opt_self() ACLVersionForAccessControl_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_192F967CC();

  return v3;
}

uint64_t sub_192CDA9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_192CDA9E8, 0, 0);
}

uint64_t sub_192CDA9E8()
{
  v1 = [objc_opt_self() isActionSupportedForType:v0[19] account:v0[20] options:v0[21]];
  v0[22] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_192CDAB44;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144E0, &qword_192FC74B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19293A7A4;
  v0[13] = &block_descriptor_30;
  v0[14] = v2;
  [v1 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192CDAB44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_192CDACDC;
  }

  else
  {
    v2 = sub_192CDAC54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192CDAC54()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = [v2 BOOLValue];

  OUTLINED_FUNCTION_40();

  return v4(v3);
}

uint64_t sub_192CDACDC(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_40();

  return v3(0);
}

id sub_192CDAD4C(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 stateForAccount_];
}

uint64_t sub_192CDADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_192CDAE64;

  return sub_192CDA9C4(a1, a2, a3);
}

uint64_t sub_192CDAE64(char a1)
{

  OUTLINED_FUNCTION_40();
  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 & 1;
  }

  return v3(v4);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.getCurrentPaymentPassIdentifier()(uint64_t a1, uint64_t a2)
{
  v8 = (*(a2 + 24) + **(a2 + 24));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_69(v5);

  return v8(a1, a2);
}

uint64_t sub_192CDB0A4()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_4();
  v5 = *v0;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.getPaymentServicesMerchantURL()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_28();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_38(v7);
  *v8 = v9;
  v8[1] = sub_192919C44;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.isCardEligibleForAutoEnrollment(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 40) + **(a4 + 40));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_38(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_69(v9);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.shouldAttemptApplePayClassic(with:options:countryCode:paymentNetworks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_12_28();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_38(v15);
  *v16 = v17;
  OUTLINED_FUNCTION_69(v16);

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of PurchaseConfigSystemProtocol.shouldAttemptApplePayClassic(with:paymentNetworks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_12_28();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_38(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_69(v12);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_192CDB688()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_36();

  return v4(v3);
}

uint64_t sub_192CDB790(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  *(v3 + 8) = a3;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t sub_192CDB7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t *sub_192CDB7D4(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_192922AC4(v6, a3);
  }

  if (a2)
  {
    swift_unknownObjectRetain();
    return sub_1929256A8(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192CDB844()
{
  v0 = objc_opt_self();

  return sub_192CDCE40(v0);
}

uint64_t sub_192CDB8C4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_0();
  v0[19] = [objc_opt_self() getCurrentPaymentPassIdentifier];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v2 = OUTLINED_FUNCTION_39_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13B60, &unk_192FCE2A0);
  OUTLINED_FUNCTION_4_4(v3);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  v0[12] = sub_192932AA0;
  v0[13] = &block_descriptor_30_0;
  v0[14] = v2;
  OUTLINED_FUNCTION_73_1(v4, sel_resultWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDB9C8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 160) = v4;
  if (v4)
  {
    v5 = sub_192CDBB4C;
  }

  else
  {
    v5 = sub_192CDBAC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDBAC8()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_192F967CC();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_192CDBB4C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 152);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CDBBCC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_0();
  v0[20] = [objc_opt_self() paymentServicesMerchantURLPromise];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v2 = OUTLINED_FUNCTION_39_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144D0, &unk_192FC2580);
  OUTLINED_FUNCTION_4_4(v3);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  v0[12] = sub_19292BA5C;
  v0[13] = &block_descriptor_24_0;
  v0[14] = v2;
  OUTLINED_FUNCTION_73_1(v4, sel_resultWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDBCD0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_192CDBE64;
  }

  else
  {
    v5 = sub_192CDBDD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDBDD0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_192F959AC();

  v4 = sub_192F95A8C();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_192CDBE64()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192CDBECC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_4_6(sub_192CDBEE4);
}

uint64_t sub_192CDBEE4()
{
  OUTLINED_FUNCTION_43_0();
  v3 = objc_opt_self();
  v4 = sub_192F9679C();
  v5 = [v3 isCardEligibleForAutoEnrollmentWithCountryCode_];
  v0[21] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v6 = OUTLINED_FUNCTION_39_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14220, &unk_192FCDD80);
  OUTLINED_FUNCTION_4_4(v7);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  v0[12] = sub_192CDB7D4;
  v0[13] = &block_descriptor_19_0;
  v0[14] = v6;
  [v5 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDC020()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_192CDC1B8;
  }

  else
  {
    v5 = sub_192CDC120;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDC120()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 144);

  result = [v1 respondsToSelector_];
  if (result)
  {
    [v1 value];
    swift_unknownObjectRelease();
    v3 = OUTLINED_FUNCTION_3_36();

    return v4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_192CDC1B8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_40();

  return v3(0);
}

void sub_192CDC248(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_192F9679C();
  }

  else
  {
    v2 = 0;
  }

  [objc_opt_self() setDefaultPaymentPassIdentifier_];
}

uint64_t sub_192CDC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return OUTLINED_FUNCTION_4_6(sub_192CDC2C8);
}

uint64_t sub_192CDC2C8()
{
  OUTLINED_FUNCTION_43_0();
  v2 = v0[20];
  v3 = v0[19];
  v4 = objc_opt_self();
  v5 = sub_192F9679C();
  v6 = sub_192F96D9C();
  v0[24] = [v4 shouldAttemptApplePayClassicWithAccount:v3 options:v2 countryCode:v5 paymentNetworks:v6];

  v0[2] = v0;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_39_6();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144E0, &qword_192FC74B0);
  OUTLINED_FUNCTION_4_4(v7);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1(v8, sel_resultWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDC430()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_192CDC5B0;
  }

  else
  {
    v5 = sub_192CDC530;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDC530()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  [v2 BOOLValue];

  v3 = OUTLINED_FUNCTION_3_36();

  return v4(v3);
}

uint64_t sub_192CDC5B0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_40();

  return v2(0);
}

uint64_t sub_192CDC61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return OUTLINED_FUNCTION_4_6(sub_192CDC638);
}

uint64_t sub_192CDC638()
{
  OUTLINED_FUNCTION_43_0();
  v2 = objc_opt_self();
  v3 = sub_192F9679C();
  v4 = sub_192F96D9C();
  v0[22] = [v2 shouldAttemptApplePayClassicWithCountryCode:v3 paymentNetworks:v4];

  v0[2] = v0;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_39_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144E0, &qword_192FC74B0);
  OUTLINED_FUNCTION_4_4(v5);
  OUTLINED_FUNCTION_15_28(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_73_1(v6, sel_resultWithCompletion_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_192CDC78C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_192CDC90C;
  }

  else
  {
    v5 = sub_192CDC88C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192CDC88C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  [v2 BOOLValue];

  v3 = OUTLINED_FUNCTION_3_36();

  return v4(v3);
}

uint64_t sub_192CDC90C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_40();

  return v2(0);
}

id sub_192CDC978(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = objc_opt_self();
  v7 = sub_192F9679C();
  v8 = [v6 shouldSampleWithPercentage:v7 sessionDuration:a3 identifier:a4];

  return v8;
}

uint64_t sub_192CDCA04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_192CDCA90;

  return sub_192CDB8B0();
}

uint64_t sub_192CDCA90()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_4();
  v6 = *v1;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_192CDCB90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_192919C44;

  return sub_192CDBBB4(a1);
}

uint64_t sub_192CDCC28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_192C784C4;

  return sub_192CDBECC(a1, a2);
}

uint64_t sub_192CDCCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_192C784C4;

  return sub_192CDC2A8(a1, a2, a3, a4, a5);
}

uint64_t sub_192CDCD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_192C77C28;

  return sub_192CDC61C(a1, a2, a3);
}

uint64_t sub_192CDCE40(void *a1)
{
  v1 = [a1 defaultPaymentPassIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_192F967CC();

  return v3;
}

uint64_t sub_192CDCEC4()
{
  OUTLINED_FUNCTION_3();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[15] = swift_getObjectType();
  v5 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192CDCF2C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[14];
  v2 = OBJC_IVAR___AMSPurchaseConfiguration_kAutoEnrollRetryKey;
  v0[16] = OBJC_IVAR___AMSPurchaseConfiguration_kAutoEnrollRetryKey;
  v3 = (v1 + v2);
  *v3 = 0xD000000000000020;
  v3[1] = 0x8000000193024140;
  v4 = OBJC_IVAR___AMSPurchaseConfiguration_kDPANEmptyIdentifier;
  v0[17] = OBJC_IVAR___AMSPurchaseConfiguration_kDPANEmptyIdentifier;
  v5 = (v1 + v4);
  *v5 = 0x2A5954504D452ALL;
  v5[1] = 0xE700000000000000;
  v6 = sub_192C46E14();
  v7 = sub_192C9B4AC();
  sub_192BD0A70(v7);
  v0[18] = v6;
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_192CDD040;

  return SendableBag.codableDictionary(for:)(v6);
}

uint64_t sub_192CDD040()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *(v6 + 160) = v5;

  v7 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_192CDD140()
{
  OUTLINED_FUNCTION_120();
  sub_192C65C70();
  v1 = *(v0 + 112) + OBJC_IVAR___AMSPurchaseConfiguration_applePayBagModel;
  v3 = *(v0 + 32);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  *v1 = v4;
  v5 = sub_192C65D84();
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);
  v11 = *(v0 + 112);

  *(v11 + OBJC_IVAR___AMSPurchaseConfiguration_expressCheckoutBagModel) = v5;
  sub_1928F6068(v6, v11 + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider);
  sub_1928F6068(v7, v11 + OBJC_IVAR___AMSPurchaseConfiguration_systemProvider);
  *(v0 + 72) = v11;
  objc_msgSendSuper2((v0 + 72), sel_init);

  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v6);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_94();

  __asm { BRAA            X2, X16 }
}

uint64_t static PurchaseConfiguration.makeConfiguration(withBag:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  v3 = OUTLINED_FUNCTION_133();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_192CDD354()
{
  OUTLINED_FUNCTION_65();
  if (v0[12])
  {
    v1 = v0[12];
  }

  else
  {
    v1 = static PurchaseConfiguration.createDefaultBag()();
  }

  v0[14] = v1;
  v2 = v0[13];
  type metadata accessor for SendableBag();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_54_0();
  sub_192908290(v3, v4, v5);
  v0[5] = &type metadata for DefaultPurchaseConfigBiometricsProvider;
  v0[6] = &off_1F06FDCC8;
  v0[10] = &type metadata for DefaultPurchaseConfigSystemProvider;
  v0[11] = &off_1F06FDD48;
  objc_allocWithZone(v2);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_192CDD488;

  return sub_192CDCEC4();
}

uint64_t sub_192CDD488()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192CDD598()
{
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 136);

  return v1(v2);
}

uint64_t sub_192CDD5F8()
{
  OUTLINED_FUNCTION_3();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_43();

  return v0();
}

id static PurchaseConfiguration.createDefaultBag()()
{
  if (qword_1EAE11D30 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
  OUTLINED_FUNCTION_42();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_192FBCD90;
  v1 = AMSSetLogKeyIfNeeded();
  v2 = sub_192F967CC();
  v4 = v3;

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
  v6 = OUTLINED_FUNCTION_90(v5);
  OUTLINED_FUNCTION_50(v6, xmmword_192FBCD50);
  v34 = sub_192F979EC();
  v35 = v7;
  MEMORY[0x193B10CE0](5972026, 0xE300000000000000);
  MEMORY[0x193B10CE0](v2, v4);

  MEMORY[0x193B10CE0](93, 0xE100000000000000);
  v8 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69E6158];
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  sub_19286D180(&v34, v6 + 32);
  *(v6 + 64) = 0;
  *(v0 + 32) = v6;
  OUTLINED_FUNCTION_26_21();
  v9._countAndFlagsBits = 0xD000000000000052;
  LogInterpolation.init(stringLiteral:)(v9);
  v10 = sub_192F96E5C();
  if (OUTLINED_FUNCTION_85_6(v10))
  {
    v11 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
    }

    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_71();
    v12 = swift_allocObject();
    v13 = OUTLINED_FUNCTION_27_1(v12);
    v34 = v0;
    v35 = sub_1928FA5C4;
    v36 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
    sub_1928FD924();
    OUTLINED_FUNCTION_61();
    sub_192F9674C();
    OUTLINED_FUNCTION_48_10();

    objc_autoreleasePoolPop(v11);
    v14 = objc_autoreleasePoolPush();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
    v16 = OUTLINED_FUNCTION_90(v15);
    OUTLINED_FUNCTION_23_21(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
    *(v26 + 56) = v8;
    v27 = sub_1928FDB30();
    OUTLINED_FUNCTION_125_1(v27);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_134_1(v28, v29, v30, v31, v32);

    objc_autoreleasePoolPop(v14);
  }

  sub_192CE92A0();
  return sub_19294D4D0(0x6863727550534D41, 0xEB00000000657361, 49, 0xE100000000000000);
}

uint64_t sub_192CDD99C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_192CDDA64;

  return static PurchaseConfiguration.makeConfiguration(withBag:)(a1);
}

uint64_t sub_192CDDA64()
{
  OUTLINED_FUNCTION_65();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_6();
  *v7 = v6;

  swift_unknownObjectRelease();
  v8 = *(v5 + 24);
  if (v2)
  {
    v9 = sub_192F958CC();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, v4, 0);
    _Block_release(v8);
  }

  v10 = *(v6 + 8);

  return v10();
}

id PurchaseConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PurchaseConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PurchaseConfiguration.beginCardEnrollmentAttempt(account:)()
{
  OUTLINED_FUNCTION_3();
  v1[125] = v0;
  v1[124] = v2;
  v1[123] = v3;
  v1[126] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0, &unk_192FC78B0);
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192CDDDDC()
{
  if (PurchaseConfiguration.isExpressCheckoutShouldCheckForWalletBiometrics.getter())
  {
    v2 = OUTLINED_FUNCTION_96_4((v0[125] + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider));
    v3 = OUTLINED_FUNCTION_102();
    if ((v4(v3) & 1) == 0)
    {
      if (qword_1EAE11D30 != -1)
      {
        OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
      }

      OUTLINED_FUNCTION_120_2();
      v16 = qword_1EAE11D38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      OUTLINED_FUNCTION_42();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_192FBCD90;
      v0[36] = v2;
      v0[33] = v1;
      v18 = v1;
      v19 = AMSLogKey();
      if (v19)
      {
        v20 = v19;
        sub_192F967CC();
        OUTLINED_FUNCTION_27_12();
      }

      else
      {
        OUTLINED_FUNCTION_48_13();
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
      v32 = OUTLINED_FUNCTION_90(v31);
      OUTLINED_FUNCTION_50(v32, xmmword_192FBCD50);
      sub_19286C588((v0 + 33), (v0 + 29));
      OUTLINED_FUNCTION_11_18();
      sub_19286CFC8(v33, v34, v35, v36);
      *(v17 + 32) = v32;
      __swift_destroy_boxed_opaque_existential_0(v0 + 33);
      OUTLINED_FUNCTION_73_9();
      v38._countAndFlagsBits = v37 + 39;
      v38._object = (v39 | 0x8000000000000000);
      LogInterpolation.init(stringLiteral:)(v38);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v16, v40))
      {
        goto LABEL_39;
      }

      v41 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v42 = swift_allocObject();
      v43 = OUTLINED_FUNCTION_116(v42);
      v0[110] = v17;
      v0[111] = sub_192BB97CC;
      v0[112] = v43;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
LABEL_38:
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_136_0();

      objc_autoreleasePoolPop(v41);
      v56 = objc_autoreleasePoolPush();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v58 = OUTLINED_FUNCTION_90(v57);
      OUTLINED_FUNCTION_78(v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
      *(v68 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1928FDB30();
      OUTLINED_FUNCTION_137(v69);
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_89_6(v70, v71, v72, v73, v74);

      objc_autoreleasePoolPop(v56);
      goto LABEL_39;
    }
  }

  if ((sub_192CE003C() & 1) == 0)
  {
    v5 = v0[125];
    if ((sub_192CE0290() & 1) == 0)
    {
      if (qword_1EAE11D30 != -1)
      {
        OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
      }

      OUTLINED_FUNCTION_120_2();
      v21 = qword_1EAE11D38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
      OUTLINED_FUNCTION_42();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_192FBCD90;
      v0[20] = v5;
      v0[17] = v1;
      v23 = v1;
      v24 = AMSLogKey();
      if (v24)
      {
        v25 = v24;
        sub_192F967CC();
        OUTLINED_FUNCTION_27_12();
      }

      else
      {
        OUTLINED_FUNCTION_48_13();
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
      v45 = OUTLINED_FUNCTION_90(v44);
      OUTLINED_FUNCTION_50(v45, xmmword_192FBCD50);
      sub_19286C588((v0 + 17), (v0 + 21));
      OUTLINED_FUNCTION_11_18();
      sub_19286CFC8(v46, v47, v48, v49);
      *(v22 + 32) = v45;
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      OUTLINED_FUNCTION_73_9();
      v51._countAndFlagsBits = v50 + 68;
      v51._object = (v52 | 0x8000000000000000);
      LogInterpolation.init(stringLiteral:)(v51);
      sub_192F96E7C();
      OUTLINED_FUNCTION_165();
      if (!os_log_type_enabled(v21, v53))
      {
        goto LABEL_39;
      }

      v41 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v54 = swift_allocObject();
      v55 = OUTLINED_FUNCTION_116(v54);
      v0[98] = v22;
      v0[99] = sub_192BB97CC;
      v0[100] = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      goto LABEL_38;
    }
  }

  v6 = v0[125];
  v7 = [objc_allocWithZone(AMSKeychainOptions) init];
  v0[129] = v7;
  [v7 setPurpose_];
  [v7 setStyle_];
  v8 = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v0[130] = OBJC_IVAR___AMSPurchaseConfiguration_systemProvider;
  v9 = *(v6 + v8 + 24);
  v10 = *(v6 + v8 + 32);
  __swift_project_boxed_opaque_existential_0((v6 + v8), v9);
  if ((*(v10 + 48))(v9, v10))
  {
    __swift_project_boxed_opaque_existential_0((v0[125] + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider), *(v0[125] + OBJC_IVAR___AMSPurchaseConfiguration_biometricsProvider + 24));
    OUTLINED_FUNCTION_67_0();
    v12 = v11();
    v0[133] = v12;
    v28 = v12;
    if (v12)
    {
      if (sub_192CE003C())
      {
        v29 = swift_task_alloc();
        v0[134] = v29;
        *v29 = v0;
        OUTLINED_FUNCTION_25_20(v29);
        OUTLINED_FUNCTION_68();

        return PurchaseConfiguration.shouldAttemptApplePayClassic(account:accessControl:)();
      }

      if (sub_192CE0290())
      {
        v85 = swift_task_alloc();
        v0[135] = v85;
        *v85 = v0;
        OUTLINED_FUNCTION_25_20(v85);
        OUTLINED_FUNCTION_68();

        return PurchaseConfiguration.shouldAttemptAutoEnrollment(account:accessControl:)();
      }

LABEL_41:
      v75 = sub_192F95A8C();
      OUTLINED_FUNCTION_22_24(v75);

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_68();

      __asm { BRAA            X1, X16 }
    }

    if (qword_1EAE11D30 != -1)
    {
      OUTLINED_FUNCTION_1_32(&qword_1EAE11D30);
    }

    v78 = v0[126];
    v79 = v0[125];
    v80 = qword_1EAE11D38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0, &unk_192FBDF20);
    OUTLINED_FUNCTION_42();
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_192FBCD90;
    v0[64] = v78;
    v0[61] = v79;
    v82 = v79;
    v83 = AMSLogKey();
    if (v83)
    {
      v84 = v83;
      sub_192F967CC();
      OUTLINED_FUNCTION_77_0();
    }

    else
    {
      OUTLINED_FUNCTION_73_0();
    }

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0, &unk_192FBD840);
    v88 = OUTLINED_FUNCTION_90(v87);
    OUTLINED_FUNCTION_50(v88, xmmword_192FBCD50);
    sub_19286C588((v0 + 61), (v0 + 45));
    OUTLINED_FUNCTION_101_4(v0 + 45, &v88[2]);
    *(v81 + 32) = v88;
    __swift_destroy_boxed_opaque_existential_0(v0 + 61);
    OUTLINED_FUNCTION_73_9();
    v90._countAndFlagsBits = v89 + 5;
    v90._object = (v91 | 0x8000000000000000);
    LogInterpolation.init(stringLiteral:)(v90);
    v92 = sub_192F96E5C();
    if (os_log_type_enabled(v80, v92))
    {
      v93 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1ED6DF1A0);
      }

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71();
      v94 = swift_allocObject();
      v95 = OUTLINED_FUNCTION_38_0(v94);
      v0[104] = v81;
      v0[105] = sub_192BB97CC;
      v0[106] = v95;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0, &unk_192FBE030);
      sub_1928FD924();
      OUTLINED_FUNCTION_61();
      sub_192F9674C();
      OUTLINED_FUNCTION_154();

      objc_autoreleasePoolPop(v93);
      v96 = objc_autoreleasePoolPush();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0, &qword_192FBE040);
      v98 = OUTLINED_FUNCTION_90(v97);
      OUTLINED_FUNCTION_29_0(v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
      *(v108 + 56) = MEMORY[0x1E69E6158];
      v109 = sub_1928FDB30();
      OUTLINED_FUNCTION_159(v109);
      OUTLINED_FUNCTION_60();
      sub_192F9622C(v110);

      objc_autoreleasePoolPop(v96);
    }

LABEL_39:

    goto LABEL_41;
  }

  if (sub_192CE003C())
  {
    v13 = swift_task_alloc();
    v0[131] = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_25_20(v13);
    OUTLINED_FUNCTION_68();

    return PurchaseConfiguration.shouldAttemptApplePayClassic(account:options:)();
  }

  else
  {
    if ((sub_192CE0290() & 1) == 0)
    {

      goto LABEL_41;
    }

    v26 = swift_task_alloc();
    v0[132] = v26;
    *v26 = v0;
    OUTLINED_FUNCTION_25_20(v26);
    OUTLINED_FUNCTION_68();

    return PurchaseConfiguration.shouldAttemptAutoEnrollment(account:options:)();
  }
}

uint64_t sub_192CDEAD4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *(v1 + 912) = v3;
  *(v1 + 904) = v0;
  OUTLINED_FUNCTION_123_2();
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CDEBB4()
{
  OUTLINED_FUNCTION_65();
  if (*(v0 + 912))
  {
    OUTLINED_FUNCTION_13_26();
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_68_9(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_2_51(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_22_24(v7);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_192CDECD4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *(v1 + 928) = v3;
  *(v1 + 920) = v0;
  OUTLINED_FUNCTION_123_2();
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CDEDB4()
{
  OUTLINED_FUNCTION_65();
  if (*(v0 + 928))
  {
    OUTLINED_FUNCTION_13_26();
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_68_9(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_2_51(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_22_24(v7);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_192CDEED4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *(v1 + 944) = v3;
  *(v1 + 936) = v0;
  OUTLINED_FUNCTION_123_2();
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_133();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192CDEFB4()
{
  OUTLINED_FUNCTION_65();

  if (*(v0 + 944))
  {
    OUTLINED_FUNCTION_13_26();
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_68_9(v1);
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_2_51(v2);

    return v5(v4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_117_3();
    OUTLINED_FUNCTION_22_24(v7);

    OUTLINED_FUNCTION_43();

    return v8();
  }
}