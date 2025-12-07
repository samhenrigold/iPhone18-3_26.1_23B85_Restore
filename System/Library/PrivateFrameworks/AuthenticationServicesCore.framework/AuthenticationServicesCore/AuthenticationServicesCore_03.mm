uint64_t sub_1C210F790(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ASCPhoneNumber();
  v3 = sub_1C21708F4();
  v4 = [v2 dataForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1C2170174();
  v7 = v6;

  sub_1C216FCE4();
  swift_allocObject();
  sub_1C216FCD4();
  sub_1C2116A08(&qword_1EBF23E00, type metadata accessor for ASCPhoneNumber, &protocol conformance descriptor for ASCPhoneNumber);
  sub_1C216FCC4();
  sub_1C20D3174(v5, v7);

  return v9;
}

uint64_t sub_1C210FABC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1C2170F54();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23738, &qword_1C2179240);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C210FBC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C2170E84();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C2170E84();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C2115570(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C2115A74(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C210FCB0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C2115044(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C210FDA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C21708F4();
  v3 = [v2 safari_stringByTrimmingWhitespace];

  v4 = sub_1C2170914();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  return v4;
}

id sub_1C210FE2C()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccount;
  v2 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccount);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
    v3 = [v4 aa_primaryAppleAccount];

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_1C20B05D0(v5);
  }

  sub_1C20B0914(v2);
  return v3;
}

uint64_t sub_1C210FEC8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23DF0, &qword_1C2178FA0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccountName;
  swift_beginAccess();
  sub_1C20EB3E8(v1 + v9, v8, &qword_1EBF23DF0, &qword_1C2178FA0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1C211990C(v8, a1);
  }

  sub_1C20EB498(v8, &qword_1EBF23DF0, &qword_1C2178FA0);
  sub_1C21100C8(a1);
  sub_1C20EB3E8(a1, v6, &unk_1EBF23420, &unk_1C2176820);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1C21198A4(v6, v1 + v9, &qword_1EBF23DF0, &qword_1C2178FA0);
  return swift_endAccess();
}

uint64_t sub_1C21100C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1C210FE2C();
  if (v5)
  {
    v6 = v5;
    v7 = objc_opt_self();
    v8 = [v7 sharedInstance];
    v9 = [v8 givenNameForAccount_];

    if (v9)
    {
      sub_1C2170914();
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v7 sharedInstance];
    v13 = [v12 familyNameForAccount_];

    if (v13)
    {
      sub_1C2170914();
      v15 = v14;

      if (!(v11 | v15))
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    else if (!v11)
    {
      goto LABEL_7;
    }

    v19 = sub_1C216FF04();
    v20 = *(*(v19 - 8) + 56);
    v20(v4, 1, 1, v19);
    sub_1C216FED4();

    return (v20)(a1, 0, 1, v19);
  }

LABEL_8:
  v16 = sub_1C216FF04();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

id sub_1C211034C()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___meContact;
  v2 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___meContact);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1C21103B8();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1C20B05D0(v4);
  }

  sub_1C20B0914(v2);
  return v3;
}

id sub_1C21103B8()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v1 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v13 = sub_1C2170914();
  v14 = v2;
  v15 = sub_1C2170914();
  v16 = v3;
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C2170FD4();

  sub_1C21708F4();

  sub_1C2170FB4();
  sub_1C2170FE4();
  sub_1C2170FF4();
  sub_1C2170FC4();

  swift_arrayDestroy();
  sub_1C21708F4();

  sub_1C2170FB4();
  sub_1C2170FE4();
  sub_1C2170FF4();
  sub_1C2170FC4();
  v4 = swift_unknownObjectRetain();
  MEMORY[0x1C6913DF0](v4);
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2170B74();
  }

  sub_1C2170B94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23F10, &qword_1C2179258);
  v5 = sub_1C2170B54();

  v11 = 0;
  v6 = [v0 _ios_meContactWithKeysToFetch_error_];

  v7 = v11;
  if (v6)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v7;
    v9 = sub_1C216FF94();

    swift_willThrow();
    swift_unknownObjectRelease();

    return 0;
  }

  return v6;
}

id sub_1C2110698()
{
  v42[1] = *MEMORY[0x1E69E9840];
  v42[0] = 0;
  v39 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];
  v0 = [v39 getSubscriptionInfoWithError_];
  if (v0)
  {
    v1 = v0;
    v2 = v42[0];
    v3 = [v1 subscriptions];

    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      sub_1C20DB8B8(0, &unk_1EBF23F28, 0x1E6965090);
      v5 = sub_1C2170B64();
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v42[0] = v4;
    if (v5 >> 62)
    {
LABEL_33:
      v38 = v5 & 0xFFFFFFFFFFFFFF8;
      v18 = sub_1C2170E84();
      if (v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v38 = v5 & 0xFFFFFFFFFFFFFF8;
      v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_12:
        v19 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v37 = v17;
          v20 = v19;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x1C69141F0](v20, v5);
            }

            else
            {
              if (v20 >= *(v38 + 16))
              {
                goto LABEL_32;
              }

              v23 = *(v5 + 8 * v20 + 32);
            }

            v24 = v23;
            v19 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v41 = 0;
            v25 = [v39 getPhoneNumber:v23 error:&v41];
            if (v25)
            {
              break;
            }

            v21 = v41;
            v22 = sub_1C216FF94();

            swift_willThrow();
LABEL_15:

            ++v20;
            if (v19 == v18)
            {
              v17 = v37;
              goto LABEL_35;
            }
          }

          v26 = v25;
          v27 = v41;
          v28 = [v26 number];
          v29 = v28;
          v30 = v28;
          if (!v28)
          {
            sub_1C2170914();
            v30 = sub_1C21708F4();

            sub_1C2170914();
            v29 = sub_1C21708F4();
          }

          v31 = objc_opt_self();
          v32 = v28;
          LOBYTE(v31) = [v31 isStringPhoneNumber_];

          if ((v31 & 1) == 0)
          {
            break;
          }

          v33 = type metadata accessor for ASCPhoneNumber();
          v34 = objc_allocWithZone(v33);
          v35 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

          *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber] = v35;
          v40.receiver = v34;
          v40.super_class = v33;
          objc_msgSendSuper2(&v40, sel_init);

          MEMORY[0x1C6913DF0]();
          if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C2170B74();
          }

          sub_1C2170B94();
          v17 = v42[0];
          if (v19 == v18)
          {
LABEL_35:

            return v17;
          }
        }

        v24 = v29;
        goto LABEL_15;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v6 = v42[0];
  v7 = sub_1C216FF94();

  swift_willThrow();
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v8 = sub_1C21705A4();
  __swift_project_value_buffer(v8, qword_1EDD4CB08);
  v9 = v7;
  v10 = sub_1C2170584();
  v11 = sub_1C2170C54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42[0] = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = sub_1C21713D4();
    v16 = sub_1C20D7F2C(v14, v15, v42);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C20AD000, v10, v11, "Failed to fetch phone numbers from SIMs. %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1C6915360](v13, -1, -1);
    MEMORY[0x1C6915360](v12, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C2110BD0()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_cachedCanUseHideMyEmail;
  v0[24] = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_cachedCanUseHideMyEmail;
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    v4 = objc_opt_self();
    v5 = sub_1C21708F4();
    v0[25] = v5;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1C2110D7C;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23D68, &qword_1C2178F58);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C21110FC;
    v0[13] = &block_descriptor_1;
    v0[14] = v6;
    [v4 requestFeatureWithId:v5 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v7 = v0[1];

    return v7(v3 & 1);
  }
}

uint64_t sub_1C2110D7C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1C2110F24;
  }

  else
  {
    v2 = sub_1C2110E8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C2110E8C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  v5 = [v4 canUse];

  *(v3 + v2) = v5;
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1C2110F24(uint64_t a1)
{
  v18 = v1;
  v2 = v1[25];
  swift_willThrow();

  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v3 = v1[26];
  v4 = sub_1C21705A4();
  __swift_project_value_buffer(v4, qword_1EDD4CB08);
  v5 = v3;
  v6 = sub_1C2170584();
  v7 = sub_1C2170C54();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[26];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = sub_1C21713D4();
    v14 = sub_1C20D7F2C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C20AD000, v6, v7, "Failed to fetch HME feature availability. %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1C6915360](v11, -1, -1);
    MEMORY[0x1C6915360](v10, -1, -1);
  }

  else
  {
  }

  *(v1[23] + v1[24]) = 0;
  v15 = v1[1];

  return v15(0);
}

uint64_t sub_1C21110FC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1C21111D4()
{
  v1 = (v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress);
  v2 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress);
  v3 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v4 = sub_1C2111264();
    v5 = *v1;
    v6 = v1[1];
    *v1 = v4;
    v1[1] = v7;

    sub_1C2116758(v5, v6);
  }

  sub_1C211676C(v2, v3);
  return v4;
}

uint64_t sub_1C2111264()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 primaryAuthKitAccount];

  if (v2)
  {
    v3 = [v0 sharedInstance];
    v4 = [v3 forwardingEmailForAccount_];

    if (v4)
    {
      v5 = sub_1C2170914();

      return v5;
    }
  }

  return 0;
}

uint64_t sub_1C211133C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress);
  v4 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress);
  v5 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1C2116758(v4, v5);
}

uint64_t (*sub_1C211135C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1C21111D4();
  a1[1] = v3;
  return sub_1C21113A4;
}

uint64_t sub_1C21113A4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress);
  v4 = *v3;
  v5 = v3[1];
  *v3 = *a1;
  v3[1] = v2;
  if (a2)
  {

    sub_1C2116758(v4, v5);
  }

  else
  {

    return sub_1C2116758(v4, v5);
  }
}

uint64_t sub_1C2111458(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2();
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1C21114BC()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedManager];
  v2 = [v1 getEnabledExtensionsSynchronously];

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1C20DB8B8(0, &qword_1EBF23730, 0x1E696ABD0);
    v4 = sub_1C2170B64();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v14 = v3;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2170E84())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C69141F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v0 sharedManager];
      v11 = [v10 extensionSupportsPasskeys_];

      if (v11)
      {
        sub_1C2170FB4();
        sub_1C2170FE4();
        sub_1C2170FF4();
        sub_1C2170FC4();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        v12 = v14;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_21:

  return v12;
}

uint64_t sub_1C21116A0()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers;
  if (*&v0[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers])
  {
    v2 = *&v0[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers];
  }

  else
  {
    v2 = sub_1C2111708(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1C2111708(void *a1)
{
  v2 = sub_1C2111438();
  v3 = sub_1C20E64D8(v2);

  v23 = v3;
  v4 = [objc_opt_self() sharedFeatureManager];
  v5 = [v4 userIsEligibleForPasskeysWithICloudKeychain];

  if (v5)
  {
    sub_1C210FABC(&unk_1F419CCB8);
    v3 = v23;
  }

  v22 = v3;
  v6 = a1;

  sub_1C21191F4(&v22, v6);

  v7 = v22;
  v8 = *(v22 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1C20E71AC(0, v8, 0);
  v9 = 32;
  v10 = v22;
  do
  {
    v11 = *(v7 + v9);
    if (v11)
    {
      v12 = v11;
      v13 = [v12 sf_bundleIdentifierForContainingApp];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1C2170914();
        v17 = v16;

        goto LABEL_10;
      }
    }

    v15 = 0;
    v17 = 0;
LABEL_10:
    v22 = v10;
    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1C20E71AC((v18 > 1), v19 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v19 + 1;
    v20 = v10 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v9 += 8;
    --v8;
  }

  while (v8);

  return v10;
}

uint64_t (*sub_1C211191C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1C21116A0();
  return sub_1C2111964;
}

uint64_t sub_1C211197C()
{
  v0 = [objc_opt_self() safari_browserDefaults];
  v1 = sub_1C21708F4();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
LABEL_11:
    v11 = sub_1C21116A0();
    if (*(v11 + 16))
    {
      v3 = *(v11 + 32);

      return v3;
    }

LABEL_13:

    return 0;
  }

  v3 = sub_1C2170914();
  v5 = v4;

  if (v3 == sub_1C2170914() && v5 == v6)
  {

    goto LABEL_13;
  }

  v8 = sub_1C2171324();

  if (v8)
  {
    goto LABEL_13;
  }

  v9 = sub_1C21116A0();
  v14[0] = v3;
  v14[1] = v5;
  MEMORY[0x1EEE9AC00](v9);
  v13[2] = v14;
  v10 = sub_1C214AA2C(sub_1C2119820, v13, v9);

  if ((v10 & 1) == 0)
  {

    goto LABEL_11;
  }

  return v3;
}

uint64_t type metadata accessor for ASCPasskeyAccountRegistrationUserState(uint64_t a1)
{
  result = qword_1EBF23E38;
  if (!qword_1EBF23E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2111B90(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___defaultPresentedContactIdentifier;
  v4 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___defaultPresentedContactIdentifier);
  if (v4 == 3)
  {
    v5 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_acceptedContactIdentifiers);
    LOBYTE(v4) = 1;
    if (!sub_1C20DB044(1, v5))
    {
      if (*(v5 + 16))
      {
        LOBYTE(v4) = *(v5 + 32);
      }

      else
      {
        LOBYTE(v4) = 2;
      }
    }

    *(v1 + v3) = v4;
  }

  *a1 = v4;
}

uint64_t (*sub_1C2111C24(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  sub_1C2111B90((a1 + 8));
  return sub_1C2111C78;
}

uint64_t sub_1C2111C90(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_1C2170254();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v10 = sub_1C2111438();
  v11 = v10;
  v38 = v4;
  v39 = v3;
  v36 = v9;
  v37 = v7;
  if (v10 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2170E84())
  {
    v13 = 0;
    v41 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v41)
      {
        v14 = MEMORY[0x1C69141F0](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [v14 sf_bundleIdentifierForContainingApp];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1C2170914();
        v21 = v20;

        if (a2)
        {
          if (v19 == v40 && v21 == a2)
          {

LABEL_22:

            v24 = objc_opt_self();
            v25 = v15;
            v26 = [v24 sharedManager];
            v27 = [v26 displayNameForExtension_];

            v28 = sub_1C2170914();
            return v28;
          }

          v23 = sub_1C2171324();

          if (v23)
          {
            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      ++v13;
      if (v16 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  v30 = v36;
  sub_1C2170244();
  v31 = v37;
  sub_1C2170244();
  v32 = sub_1C2170234();
  v33 = *(v38 + 8);
  v34 = v31;
  v35 = v39;
  v33(v34, v39);
  v33(v30, v35);
  return v32;
}

uint64_t sub_1C2111FD0(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C2111FF4, 0, 0);
}

uint64_t sub_1C2111FF4()
{
  v1 = v0[28];
  v2 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress;
  v0[29] = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress;
  v3 = (v1 + v2);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = qword_1EBF230C0;

  if (v6 == -1)
  {
    if (!v5)
    {
LABEL_8:
      v9 = v0[1];

      return v9();
    }
  }

  else
  {
    swift_once();
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (v4 == qword_1EBF23CE0 && v5 == unk_1EBF23CE8)
  {
  }

  else
  {
    v8 = sub_1C2171324();

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v11 = [objc_opt_self() sharedInstance];
  v0[30] = [v11 primaryAuthKitAccount];

  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_1C21121AC;

  return sub_1C2110BB0();
}

uint64_t sub_1C21121AC(char a1)
{
  *(*v1 + 280) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C21122AC, 0, 0);
}

uint64_t sub_1C21122AC()
{
  v1 = *(v0 + 240);
  if (*(v0 + 280) == 1 && v1 != 0)
  {
    v3 = [*(v0 + 240) aa_altDSID];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_allocWithZone(MEMORY[0x1E698DDC0]) init];
      *(v0 + 256) = v5;
      v6 = *MEMORY[0x1E698DC38];
      v7 = objc_allocWithZone(MEMORY[0x1E698DDB8]);

      v8 = sub_1C21708F4();
      v9 = sub_1C21708F4();

      v10 = [v7 initWithKey:v8 altDSID:v4 originType:v6 originIdentifier:v9];
      *(v0 + 264) = v10;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 192;
      *(v0 + 24) = sub_1C2112530;
      v11 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23D70, &qword_1C2178F68);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1C2112934;
      *(v0 + 104) = &block_descriptor_6;
      *(v0 + 112) = v11;
      [v5 registerPrivateEmailWithContext:v10 completion:?];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v1 = *(v0 + 240);
  }

  v12 = (*(v0 + 224) + *(v0 + 232));
  *v12 = 0;
  v12[1] = 0;

  sub_1C210CFEC();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1C2112530()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1C211274C;
  }

  else
  {
    v2 = sub_1C2112640;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C2112640()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = [*(v0 + 192) privateEmailAddress];

    v3 = sub_1C2170914();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  v10 = (v9 + *(v0 + 232));
  v11 = (v9 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail);
  *v11 = v3;
  v11[1] = v5;

  *v10 = v3;
  v10[1] = v5;

  sub_1C210CFEC();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1C211274C(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v2 = v1[34];
  v3 = sub_1C21705A4();
  __swift_project_value_buffer(v3, qword_1EDD4CB08);
  v4 = v2;
  v5 = sub_1C2170584();
  v6 = sub_1C2170C54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_1C21713D4();
    v11 = sub_1C20D7F2C(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C20AD000, v5, v6, "Could not create Hide My Email. %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1C6915360](v8, -1, -1);
    MEMORY[0x1C6915360](v7, -1, -1);
  }

  v13 = v1[33];
  v12 = v1[34];
  v14 = v1[32];
  v15 = v1[30];
  v16 = (v1[28] + v1[29]);
  *v16 = 0;
  v16[1] = 0;

  sub_1C210CFEC();

  v17 = v1[1];

  return v17();
}

uint64_t sub_1C2112934(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E98, &qword_1C2179238);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

id ASCPasskeyAccountRegistrationUserState.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - v6;
  sub_1C20DB8B8(0, &qword_1EDD4AD70, 0x1E695DEF0);
  v8 = sub_1C2170CC4();
  if (v8)
  {
    v84 = v5;
    v9 = v8;
    v10 = sub_1C2170174();
    v12 = v11;

    sub_1C216FCE4();
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C2116A08(&qword_1EBF23D80, type metadata accessor for ASCPasskeyAccountRegistrationUserState, &protocol conformance descriptor for ASCPasskeyAccountRegistrationUserState);
    sub_1C216FCC4();

    v76 = a1;
    v21 = v86;
    v22 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
    swift_beginAccess();
    sub_1C20EB3E8(&v21[v22], v7, &unk_1EBF23420, &unk_1C2176820);
    v23 = &v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress];
    swift_beginAccess();
    v24 = *(v23 + 1);
    v67 = *v23;
    v64 = v24;
    v75 = v12;
    v25 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
    swift_beginAccess();
    v62 = *&v21[v25];
    v26 = &v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_selectedCredentialProviderExtensionIdentifier];
    swift_beginAccess();
    v27 = *(v26 + 1);
    v68 = *v26;
    v61 = v27;
    v83 = v7;
    v28 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions;
    swift_beginAccess();
    v77 = *&v21[v28];
    v29 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions;
    swift_beginAccess();
    v78 = *&v21[v29];
    v30 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumberSuggestions;
    swift_beginAccess();
    v31 = *&v21[v30];
    v82 = *&v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_acceptedContactIdentifiers];
    v73 = v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_shouldRequestName];
    v74 = v10;
    v71 = v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_cachedCanUseHideMyEmail];
    v32 = *&v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail + 8];
    v70 = *&v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail];
    v79 = v32;
    v80 = v31;
    v33 = *&v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_clientApplicationBundleID + 8];
    v72 = *&v21[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_clientApplicationBundleID];
    v81 = v33;
    v69 = type metadata accessor for ASCPasskeyAccountRegistrationUserState(0);
    v34 = objc_allocWithZone(v69);
    v35 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
    v36 = sub_1C216FF04();
    (*(*(v36 - 8) + 56))(&v34[v35], 1, 1, v36);
    v37 = &v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress];
    *v37 = 0;
    v37[1] = 0;
    v38 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber] = 0;
    v39 = &v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_selectedCredentialProviderExtensionIdentifier];
    *v39 = 0;
    v39[1] = 0;
    v59 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions;
    v40 = MEMORY[0x1E69E7CC0];
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions] = MEMORY[0x1E69E7CC0];
    v60 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions;
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions] = v40;
    v63 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumberSuggestions;
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumberSuggestions] = v40;
    v41 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_cachedCanUseHideMyEmail;
    v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_cachedCanUseHideMyEmail] = 2;
    v42 = &v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail];
    v65 = &v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail];
    v66 = v41;
    *v42 = 0;
    v42[1] = 0;
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccount] = 1;
    (*(v84 + 56))(&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccountName], 1, 1, v4);
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___meContact] = 1;
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___simPhoneNumbers] = 0;
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress] = xmmword_1C2178F30;
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___enabledExtensions] = 0;
    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers] = 0;
    v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___defaultPresentedContactIdentifier] = 3;
    v43 = v35;
    swift_beginAccess();

    v44 = v64;

    v84 = v2;
    v45 = v62;
    v58 = v62;
    v46 = v61;

    sub_1C210F3B4(v83, &v34[v43]);
    swift_endAccess();
    swift_beginAccess();
    *v37 = v67;
    v37[1] = v44;

    swift_beginAccess();
    v47 = *&v34[v38];
    *&v34[v38] = v45;
    v48 = v58;

    swift_beginAccess();
    *v39 = v68;
    v39[1] = v46;

    v49 = v59;
    swift_beginAccess();
    *&v34[v49] = v77;

    v50 = v60;
    swift_beginAccess();
    *&v34[v50] = v78;

    v51 = v63;
    swift_beginAccess();
    *&v34[v51] = v80;

    *&v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_acceptedContactIdentifiers] = v82;
    v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_shouldRequestName] = v73;
    v52 = v65;
    v34[v66] = v71;
    v53 = v79;
    *v52 = v70;
    v52[1] = v53;

    v54 = &v34[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_clientApplicationBundleID];
    v55 = v81;
    *v54 = v72;
    v54[1] = v55;
    v85.receiver = v34;
    v85.super_class = v69;
    v56 = objc_msgSendSuper2(&v85, sel_init);
    sub_1C20D3174(v74, v75);

    sub_1C20EB498(v83, &unk_1EBF23420, &unk_1C2176820);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v56;
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v13 = sub_1C21705A4();
    __swift_project_value_buffer(v13, qword_1EDD4CB08);
    v14 = sub_1C2170584();
    v15 = sub_1C2170C54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v86 = v17;
      *v16 = 136446210;
      v18 = sub_1C21714E4();
      v20 = sub_1C20D7F2C(v18, v19, &v86);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1C20AD000, v14, v15, "Could not find encoded json for %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1C6915360](v17, -1, -1);
      MEMORY[0x1C6915360](v16, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1C2113480(void *a1)
{
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCPasskeyAccountRegistrationUserState(0);
  sub_1C2116A08(&qword_1EBF23D88, type metadata accessor for ASCPasskeyAccountRegistrationUserState, &protocol conformance descriptor for ASCPasskeyAccountRegistrationUserState);
  v2 = sub_1C216FD24();
  v4 = v3;

  v5 = sub_1C2170154();
  v6 = sub_1C21708F4();
  [a1 encodeObject:v5 forKey:v6];

  return sub_1C20D3174(v2, v4);
}

id ASCPasskeyAccountRegistrationUserState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C21137F0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000016;
      if (a1 != 10)
      {
        v6 = 0xD000000000000019;
      }

      if (a1 == 9)
      {
        return 0xD000000000000017;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v5 = 0xD00000000000001ALL;
      if (a1 != 7)
      {
        v5 = 0xD000000000000011;
      }

      if (a1 == 6)
      {
        return 0xD000000000000016;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 0xD000000000000017;
    if (a1 == 4)
    {
      v2 = 0x67677553656D616ELL;
    }

    if (a1 == 3)
    {
      v2 = 0xD00000000000002DLL;
    }

    v3 = 0x6464416C69616D65;
    if (a1 != 1)
    {
      v3 = 0x6D754E656E6F6870;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C21139A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2119294(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C21139D4(uint64_t a1)
{
  v2 = sub_1C2116780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2113A10(uint64_t a1)
{
  v2 = sub_1C2116780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPasskeyAccountRegistrationUserState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPasskeyAccountRegistrationUserState(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2113BF4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23D90, &qword_1C2178F70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2116780();
  sub_1C2171484();
  v11 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  swift_beginAccess();
  sub_1C20EB3E8(v2 + v11, v6, &unk_1EBF23420, &unk_1C2176820);
  v25 = 0;
  sub_1C216FF04();
  sub_1C2116A08(&qword_1EBF23DA0, MEMORY[0x1E6968A70], MEMORY[0x1E6968A78]);
  v12 = v18;
  sub_1C2171264();
  sub_1C20EB498(v6, &unk_1EBF23420, &unk_1C2176820);
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  v24 = 1;

  sub_1C2171224();

  v14 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  swift_beginAccess();
  v23 = *(v2 + v14);
  v22 = 2;
  type metadata accessor for ASCPhoneNumber();
  sub_1C2116A08(&qword_1EBF23DA8, type metadata accessor for ASCPhoneNumber, &protocol conformance descriptor for ASCPhoneNumber);
  sub_1C2171264();
  swift_beginAccess();
  v22 = 3;

  sub_1C2171224();

  v15 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions;
  swift_beginAccess();
  v21 = *(v2 + v15);
  LOBYTE(v20) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23DB0, &unk_1C2178F78);
  sub_1C21167D4();
  sub_1C2171294();
  v16 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions;
  swift_beginAccess();
  v20 = *(v2 + v16);
  LOBYTE(v26) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  sub_1C20FD358(&qword_1EBF239E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1C2171294();
  v17 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumberSuggestions;
  swift_beginAccess();
  v26 = *(v2 + v17);
  v19 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23DC0, &qword_1C2178F88);
  sub_1C2116888();
  sub_1C2171294();
  v26 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_acceptedContactIdentifiers);
  v19 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23DD0, &qword_1C2178F90);
  sub_1C211693C(&qword_1EBF242A0, sub_1C21169B4, MEMORY[0x1E69E6300]);
  sub_1C2171294();
  LOBYTE(v26) = 8;
  sub_1C2171284();
  LOBYTE(v26) = 9;
  sub_1C2171234();
  LOBYTE(v26) = 10;

  sub_1C2171224();

  LOBYTE(v26) = 11;

  sub_1C2171274();
  (*(v8 + 8))(v10, v7);
}

char *ASCPasskeyAccountRegistrationUserState.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23DE8, &qword_1C2178F98);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v50 - v8;
  v10 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  v11 = sub_1C216FF04();
  v12 = *(*(v11 - 8) + 56);
  v66 = v10;
  v12(&v2[v10], 1, 1, v11);
  v13 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress];
  *v13 = 0;
  v13[1] = 0;
  v65 = v13;
  v64 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber];
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber] = 0;
  v14 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_selectedCredentialProviderExtensionIdentifier];
  *v14 = 0;
  v14[1] = 0;
  v69 = v14;
  v15 = MEMORY[0x1E69E7CC0];
  v63 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions];
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_nameSuggestions] = MEMORY[0x1E69E7CC0];
  v68 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions];
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddressSuggestions] = v15;
  v67 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumberSuggestions];
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumberSuggestions] = v15;
  v16 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_cachedCanUseHideMyEmail;
  v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_cachedCanUseHideMyEmail] = 2;
  v17 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_lastCreatedHideMyEmail];
  *v17 = 0;
  v17[1] = 0;
  v62 = v17;
  v56 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccount;
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccount] = 1;
  v18 = *(v5 + 56);
  v59 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccountName;
  v18(&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___appleAccountName], 1, 1, v4);
  v54 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___meContact;
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___meContact] = 1;
  v55 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___simPhoneNumbers;
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___simPhoneNumbers] = 0;
  v57 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress];
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress] = xmmword_1C2178F30;
  v58 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___enabledExtensions;
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___enabledExtensions] = 0;
  v53 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers;
  *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers] = 0;
  v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___defaultPresentedContactIdentifier] = 3;
  v19 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1C2116780();
  v52 = v9;
  v20 = v60;
  sub_1C2171464();
  if (v20)
  {
    v21 = v66;
    v22 = v64;
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    sub_1C20EB498(&v2[v21], &unk_1EBF23420, &unk_1C2176820);

    sub_1C20B05D0(*&v2[v56]);
    sub_1C20EB498(&v2[v59], &qword_1EBF23DF0, &qword_1C2178FA0);
    sub_1C20B05D0(*&v2[v54]);

    sub_1C2116758(*v57, v57[1]);

    type metadata accessor for ASCPasskeyAccountRegistrationUserState(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v60 = v16;
    v77[0] = 0;
    sub_1C2116A08(&qword_1EBF23DF8, MEMORY[0x1E6968A70], MEMORY[0x1E6968A90]);
    sub_1C21711A4();
    v24 = v66;
    swift_beginAccess();
    sub_1C21198A4(v7, &v2[v24], &unk_1EBF23420, &unk_1C2176820);
    swift_endAccess();
    v77[0] = 1;
    v25 = sub_1C2171164();
    v26 = v65;
    v27 = v64;
    v28 = v25;
    v30 = v29;
    swift_beginAccess();
    *v26 = v28;
    v26[1] = v30;

    type metadata accessor for ASCPhoneNumber();
    v76[0] = 2;
    sub_1C2116A08(&qword_1EBF23E00, type metadata accessor for ASCPhoneNumber, &protocol conformance descriptor for ASCPhoneNumber);
    sub_1C21711A4();
    v31 = v75;
    swift_beginAccess();
    v32 = *v27;
    *v27 = v31;

    LOBYTE(v75) = 3;
    v33 = sub_1C2171164();
    v35 = v34;
    v36 = v69;
    swift_beginAccess();
    *v36 = v33;
    v36[1] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23DB0, &unk_1C2178F78);
    v74[0] = 4;
    sub_1C2116A50();
    sub_1C21711D4();
    v37 = v73;
    v38 = v63;
    swift_beginAccess();
    *v38 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    LOBYTE(v73) = 5;
    sub_1C20FD358(&qword_1EBF23E10, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1C21711D4();
    v39 = v72;
    v40 = v68;
    swift_beginAccess();
    *v40 = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23DC0, &qword_1C2178F88);
    LOBYTE(v72) = 6;
    sub_1C2116B04();
    sub_1C21711D4();
    v41 = v78;
    v42 = v67;
    swift_beginAccess();
    *v42 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23DD0, &qword_1C2178F90);
    v71 = 7;
    sub_1C211693C(&qword_1EBF23E20, sub_1C2116BB8, MEMORY[0x1E69E6330]);
    sub_1C21711D4();
    *&v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_acceptedContactIdentifiers] = v78;
    LOBYTE(v78) = 8;
    v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_shouldRequestName] = sub_1C21711C4() & 1;
    LOBYTE(v78) = 9;
    v2[v60] = sub_1C2171174();
    LOBYTE(v78) = 10;
    v43 = sub_1C2171164();
    v44 = v62;
    *v62 = v43;
    v44[1] = v45;

    LOBYTE(v78) = 11;
    v46 = sub_1C21711B4();
    v47 = &v2[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_clientApplicationBundleID];
    *v47 = v46;
    v47[1] = v48;
    v49 = type metadata accessor for ASCPasskeyAccountRegistrationUserState(0);
    v70.receiver = v2;
    v70.super_class = v49;
    v2 = objc_msgSendSuper2(&v70, sel_init);
    (*(v50 + 8))(v52, v51);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
  }

  return v2;
}

char *sub_1C2114EC4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPasskeyAccountRegistrationUserState(0));
  result = ASCPasskeyAccountRegistrationUserState.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *sub_1C2114F40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23EA8, &unk_1C2179248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C2115044(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236C0, &unk_1C2176D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C2115164(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23F50, &qword_1C2179278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1C2115280(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1C2115484(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_1C2115570(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C2170E84();
LABEL_9:
  result = sub_1C2170F54();
  *v2 = result;
  return result;
}

uint64_t sub_1C2115610(id *__src, id *a2, id *a3, unint64_t __dst, void *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v48 = -__dst;
    v49 = v8;
    while (1)
    {
      v50 = v7;
      v30 = v7 - 1;
      v31 = v16 + v29;
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *--v32;
        v54 = v33;
        v34 = v30;
        v53 = *v30;
        v35 = v53;
        v36 = v33;
        v37 = sub_1C2117CA0(&v54, &v53);
        if (v5)
        {

          if (v31 >= 0)
          {
            v45 = v31;
          }

          else
          {
            v45 = v31 + 7;
          }

          v44 = v52;
          v43 = v50;
          if (v50 >= v52 && v50 < v52 + (v45 & 0xFFFFFFFFFFFFFFF8) && v50 == v52)
          {
            goto LABEL_60;
          }

          v42 = 8 * (v45 >> 3);
          goto LABEL_59;
        }

        v38 = v37;

        v39 = v6 + 1;
        if (v38)
        {
          break;
        }

        if (v39 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v15 = v52;
          v7 = v50;
LABEL_53:
          v46 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v46 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v46 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v42 = 8 * (v46 >> 3);
          v43 = v7;
          v44 = v15;
LABEL_59:
          memmove(v43, v44, v42);
          goto LABEL_60;
        }
      }

      if (v39 != v50)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v48;
        if (v34 > v49)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v54 = *v7;
    v20 = v54;
    v21 = v15;
    v53 = *v15;
    v22 = v53;
    v23 = v20;
    v24 = sub_1C2117CA0(&v54, &v53);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if (!v25)
    {
      v26 = v21;
      v15 = v21 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v21;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v40 = v18 - v21 + 7;
  if ((v18 - v21) >= 0)
  {
    v40 = v18 - v21;
  }

  v41 = v40 >> 3;
  if (v8 < v21 || v8 >= (v21 + (v40 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v21, 8 * v41);
  }

  else if (v8 != v21)
  {
    v42 = 8 * v41;
    v43 = v8;
    v44 = v21;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

uint64_t sub_1C21159D4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C2115A60(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C2115A74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C2170E84();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C2170E84();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C2119840();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23DC0, &qword_1C2178F88);
            v9 = sub_1C2115BF4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ASCPhoneNumber();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1C2115BF4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C69141F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C2115C74;
  }

  __break(1u);
  return result;
}

BOOL sub_1C2115C90(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1C2171324() & 1;
    }
  }

  return result;
}

uint64_t sub_1C2115D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C216FF04();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v32 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v39 = v16;
  v17 = *(v15 + 56);
  v33 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v18 = (a1 + v33);
  v36 = (v15 + 16);
  v37 = (v15 - 8);
  v43 = MEMORY[0x1E69E7CC0];
  v34 = v15;
  v35 = a2;
  v38 = v17;
  do
  {
    v20 = v39;
    v39(v13, v18, v4);
    v21 = v41;
    v22 = v15;
    v20(v41, v13, v4);
    v23 = v13;
    v24 = v40;
    LOBYTE(v20) = sub_1C214CA14(v40, v21);
    v25 = *v37;
    (*v37)(v24, v4);
    if (v20)
    {
      v26 = *v36;
      (*v36)(v42, v23, v4);
      v27 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v27;
      v13 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C20E71EC(0, *(v27 + 16) + 1, 1);
        v27 = v44;
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C20E71EC((v29 > 1), v30 + 1, 1);
        v27 = v44;
      }

      *(v27 + 16) = v30 + 1;
      v43 = v27;
      v19 = v38;
      v26((v27 + v33 + v30 * v38), v42, v4);
      v15 = v34;
    }

    else
    {
      v25(v23, v4);
      v13 = v23;
      v19 = v38;
      v15 = v22;
    }

    v18 += v19;
    --v14;
  }

  while (v14);
  return v43;
}

uint64_t sub_1C2115FF8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1C214C8C4(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1C20E71CC(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1C20E71CC((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

void sub_1C2116158(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C2170E84())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23F18, &unk_1C2179260);
      v3 = sub_1C2170F14();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1C2170E84();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1C69141F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1C2170CE4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for ASCPhoneNumber();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1C2170CF4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1C2170CE4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for ASCPhoneNumber();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1C2170CF4();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1C2116424(unint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_16:
    v3 = sub_1C2170E84();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1C69141F0](v4, a1);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            return v13;
          }
        }

        else
        {
          if (v4 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * v4 + 32);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = v6;
        v9 = sub_1C214C69C(&v12, v8);

        if (v9)
        {
          sub_1C2170FB4();
          sub_1C2170FE4();
          v5 = v11;
          sub_1C2170FF4();
          sub_1C2170FC4();
        }

        else
        {
        }

        ++v4;
        if (v7 == v3)
        {
          return v13;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1C21165AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

unint64_t sub_1C211666C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1C2115044(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1C21165AC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1C2116758(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C211676C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1C2116780()
{
  result = qword_1EBF23D98;
  if (!qword_1EBF23D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23D98);
  }

  return result;
}

unint64_t sub_1C21167D4()
{
  result = qword_1EBF23DB8;
  if (!qword_1EBF23DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF23DB0, &unk_1C2178F78);
    sub_1C2116A08(&qword_1EBF23DA0, MEMORY[0x1E6968A70], MEMORY[0x1E6968A78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23DB8);
  }

  return result;
}

unint64_t sub_1C2116888()
{
  result = qword_1EBF23DC8;
  if (!qword_1EBF23DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF23DC0, &qword_1C2178F88);
    sub_1C2116A08(&qword_1EBF23DA8, type metadata accessor for ASCPhoneNumber, &protocol conformance descriptor for ASCPhoneNumber);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23DC8);
  }

  return result;
}

uint64_t sub_1C211693C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF23DD0, &qword_1C2178F90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C21169B4()
{
  result = qword_1EBF23DE0;
  if (!qword_1EBF23DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23DE0);
  }

  return result;
}

uint64_t sub_1C2116A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C2116A50()
{
  result = qword_1EBF23E08;
  if (!qword_1EBF23E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF23DB0, &unk_1C2178F78);
    sub_1C2116A08(&qword_1EBF23DF8, MEMORY[0x1E6968A70], MEMORY[0x1E6968A90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23E08);
  }

  return result;
}

unint64_t sub_1C2116B04()
{
  result = qword_1EBF23E18;
  if (!qword_1EBF23E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF23DC0, &qword_1C2178F88);
    sub_1C2116A08(&qword_1EBF23E00, type metadata accessor for ASCPhoneNumber, &protocol conformance descriptor for ASCPhoneNumber);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23E18);
  }

  return result;
}

unint64_t sub_1C2116BB8()
{
  result = qword_1EBF23E28;
  if (!qword_1EBF23E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23E28);
  }

  return result;
}

uint64_t keypath_get_7Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_13Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_1C2116CC0(uint64_t a1)
{
  sub_1C211798C(319);
  if (v1 <= 0x3F)
  {
    sub_1C21179E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ASCPasskeyAccountRegistrationUserState.canUseHideMyEmail.getter()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x280);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C2117430;

  return v5();
}

uint64_t sub_1C2117430(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ASCPasskeyAccountRegistrationUserState.createHideMyEmailIfRequiredAndReplaceEmail(relyingPartyIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x300);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C20DBD8C;

  return v9(a1, a2);
}

void sub_1C211798C(uint64_t a1)
{
  if (!qword_1EDD4AD30)
  {
    sub_1C216FF04();
    v1 = sub_1C2170D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD4AD30);
    }
  }
}

void sub_1C21179E4(uint64_t a1)
{
  if (!qword_1EBF23E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF23420, &unk_1C2176820);
    v1 = sub_1C2170D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBF23E50);
    }
  }
}

uint64_t getEnumTagSinglePayload for ASCPasskeyAccountRegistrationUserState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASCPasskeyAccountRegistrationUserState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2117B9C()
{
  result = qword_1EBF23E58;
  if (!qword_1EBF23E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23E58);
  }

  return result;
}

unint64_t sub_1C2117BF4()
{
  result = qword_1EBF23E60;
  if (!qword_1EBF23E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23E60);
  }

  return result;
}

unint64_t sub_1C2117C4C()
{
  result = qword_1EBF23E68;
  if (!qword_1EBF23E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23E68);
  }

  return result;
}

BOOL sub_1C2117CA0(void **a1, void **a2)
{
  v4 = sub_1C2170254();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  v11 = *a1;
  v12 = *a2;
  v36 = v5;
  if (!v11)
  {
    sub_1C2170244();
    sub_1C2170244();
    v27 = sub_1C2170234();
    v29 = v28;
    v30 = *(v5 + 8);
    v30(v8, v4);
    v30(v10, v4);
    v39 = v27;
    v40 = v29;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C2170244();
    sub_1C2170244();
    v24 = sub_1C2170234();
    v26 = v31;
    v32 = *(v36 + 8);
    v32(v8, v4);
    v32(v10, v4);
    goto LABEL_6;
  }

  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 sharedManager];
  v16 = [v15 displayNameForExtension_];

  v17 = sub_1C2170914();
  v19 = v18;

  v39 = v17;
  v40 = v19;
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = objc_opt_self();
  v21 = v12;
  v22 = [v20 sharedManager];
  v23 = [v22 displayNameForExtension_];

  v24 = sub_1C2170914();
  v26 = v25;

LABEL_6:
  v37 = v24;
  v38 = v26;
  sub_1C21197CC();
  v33 = sub_1C2170D94();

  return v33 == -1;
}

void sub_1C2117FE0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v174 = a1;
  v187 = sub_1C2170254();
  v8 = MEMORY[0x1EEE9AC00](v187);
  v186 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v185 = &v171 - v11;
  v180 = a3;
  v12 = a3[1];
  v171 = a5;
  if (v12 < 1)
  {
    v155 = a5;
    v14 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v188 = *v174;
    if (!v188)
    {
      goto LABEL_142;
    }

    v189 = v171;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_102;
    }

    goto LABEL_136;
  }

  v172 = a4;
  v183 = (v10 + 8);
  v184 = "tureObject8@NSError16";
  v178 = a5;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 + 1 >= v12)
    {
      v12 = v13 + 1;
      goto LABEL_26;
    }

    v15 = *v180;
    v192 = *(*v180 + 8 * (v13 + 1));
    v16 = v192;
    v190 = *(v15 + 8 * v13);
    v17 = v190;
    v18 = v16;
    v19 = v182;
    LODWORD(v188) = sub_1C2117CA0(&v192, &v190);
    v182 = v19;
    if (v19)
    {
      v165 = v178;

LABEL_113:

      return;
    }

    v20 = v13 + 2;
    v173 = v13;
    v21 = (v15 + 8 * v13 + 16);
    v181 = v12;
    v179 = v14;
    while (v12 != v20)
    {
      v33 = *(v21 - 1);
      v34 = *v21;
      if (*v21)
      {
        v35 = objc_opt_self();
        v36 = v33;
        v37 = v34;
        v38 = [v35 sharedManager];
        v39 = [v38 displayNameForExtension_];

        v40 = sub_1C2170914();
        v42 = v41;

        v192 = v40;
        v193 = v42;
        if (v33)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v43 = v33;
        v44 = v185;
        sub_1C2170244();
        v45 = v186;
        sub_1C2170244();
        v46 = sub_1C2170234();
        v189 = v47;
        v48 = *v183;
        v49 = v45;
        v50 = v187;
        (*v183)(v49, v187);
        v51 = v44;
        v12 = v181;
        v48(v51, v50);
        v34 = 0;
        v42 = v189;
        v192 = v46;
        v193 = v189;
        if (v33)
        {
LABEL_14:
          v52 = objc_opt_self();
          v31 = v33;
          v53 = [v52 sharedManager];
          v54 = [v53 displayNameForExtension_];

          v24 = sub_1C2170914();
          v26 = v55;

          goto LABEL_8;
        }
      }

      v22 = v185;
      sub_1C2170244();
      v23 = v186;
      sub_1C2170244();
      v24 = sub_1C2170234();
      v26 = v25;
      v189 = v42;
      v27 = *v183;
      v28 = v23;
      v29 = v187;
      (*v183)(v28, v187);
      v30 = v22;
      v12 = v181;
      v27(v30, v29);
      v31 = 0;
LABEL_8:
      v190 = v24;
      v191 = v26;
      sub_1C21197CC();
      v32 = sub_1C2170D94();

      ++v20;
      ++v21;
      v14 = v179;
      if (((v188 ^ (v32 != -1)) & 1) == 0)
      {
        v12 = v20 - 1;
        break;
      }
    }

    v13 = v173;
    if ((v188 & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v12 < v173)
    {
      goto LABEL_135;
    }

    if (v173 < v12)
    {
      v56 = v12 - 1;
      v57 = v173;
      do
      {
        if (v57 != v56)
        {
          v59 = *v180;
          if (!*v180)
          {
            goto LABEL_139;
          }

          v60 = *(v59 + 8 * v57);
          *(v59 + 8 * v57) = *(v59 + 8 * v56);
          *(v59 + 8 * v56) = v60;
        }
      }

      while (++v57 < v56--);
    }

LABEL_26:
    v61 = v180[1];
    if (v12 < v61)
    {
      if (__OFSUB__(v12, v13))
      {
        goto LABEL_132;
      }

      if (v12 - v13 < v172)
      {
        break;
      }
    }

LABEL_48:
    if (v12 < v13)
    {
      goto LABEL_131;
    }

    v175 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1C2114F40(0, *(v14 + 2) + 1, 1, v14);
    }

    v103 = *(v14 + 2);
    v102 = *(v14 + 3);
    v104 = v103 + 1;
    if (v103 >= v102 >> 1)
    {
      v14 = sub_1C2114F40((v102 > 1), v103 + 1, 1, v14);
    }

    *(v14 + 2) = v104;
    v105 = &v14[16 * v103];
    v106 = v175;
    *(v105 + 4) = v13;
    *(v105 + 5) = v106;
    v189 = *v174;
    if (!v189)
    {
      goto LABEL_141;
    }

    if (v103)
    {
      while (1)
      {
        v107 = v104 - 1;
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v108 = *(v14 + 4);
          v109 = *(v14 + 5);
          v118 = __OFSUB__(v109, v108);
          v110 = v109 - v108;
          v111 = v118;
LABEL_68:
          if (v111)
          {
            goto LABEL_120;
          }

          v124 = &v14[16 * v104];
          v126 = *v124;
          v125 = *(v124 + 1);
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          v129 = v127;
          if (v127)
          {
            goto LABEL_123;
          }

          v130 = &v14[16 * v107 + 32];
          v132 = *v130;
          v131 = *(v130 + 1);
          v118 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v118)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v128, v133))
          {
            goto LABEL_127;
          }

          if (v128 + v133 >= v110)
          {
            if (v110 < v133)
            {
              v107 = v104 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        v134 = &v14[16 * v104];
        v136 = *v134;
        v135 = *(v134 + 1);
        v118 = __OFSUB__(v135, v136);
        v128 = v135 - v136;
        v129 = v118;
LABEL_82:
        if (v129)
        {
          goto LABEL_122;
        }

        v137 = &v14[16 * v107];
        v139 = *(v137 + 4);
        v138 = *(v137 + 5);
        v118 = __OFSUB__(v138, v139);
        v140 = v138 - v139;
        if (v118)
        {
          goto LABEL_125;
        }

        if (v140 < v128)
        {
          goto LABEL_3;
        }

LABEL_89:
        v145 = v107 - 1;
        if (v107 - 1 >= v104)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v146 = *v180;
        if (!*v180)
        {
          goto LABEL_138;
        }

        v147 = v14;
        v148 = *&v14[16 * v145 + 32];
        v149 = *&v14[16 * v107 + 40];
        v150 = (v146 + 8 * v148);
        v151 = (v146 + 8 * *&v14[16 * v107 + 32]);
        v14 = (v146 + 8 * v149);
        v152 = v178;
        v153 = v182;
        sub_1C2115610(v150, v151, v14, v189, v152);
        if (v153)
        {

          return;
        }

        if (v149 < v148)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = sub_1C2115A60(v147);
        }

        if (v145 >= *(v147 + 2))
        {
          goto LABEL_117;
        }

        v182 = 0;
        v154 = &v147[16 * v145];
        *(v154 + 4) = v148;
        *(v154 + 5) = v149;
        v194 = v147;
        sub_1C21159D4(v107);
        v14 = v194;
        v104 = *(v194 + 2);
        if (v104 <= 1)
        {
          goto LABEL_3;
        }
      }

      v112 = &v14[16 * v104 + 32];
      v113 = *(v112 - 64);
      v114 = *(v112 - 56);
      v118 = __OFSUB__(v114, v113);
      v115 = v114 - v113;
      if (v118)
      {
        goto LABEL_118;
      }

      v117 = *(v112 - 48);
      v116 = *(v112 - 40);
      v118 = __OFSUB__(v116, v117);
      v110 = v116 - v117;
      v111 = v118;
      if (v118)
      {
        goto LABEL_119;
      }

      v119 = &v14[16 * v104];
      v121 = *v119;
      v120 = *(v119 + 1);
      v118 = __OFSUB__(v120, v121);
      v122 = v120 - v121;
      if (v118)
      {
        goto LABEL_121;
      }

      v118 = __OFADD__(v110, v122);
      v123 = v110 + v122;
      if (v118)
      {
        goto LABEL_124;
      }

      if (v123 >= v115)
      {
        v141 = &v14[16 * v107 + 32];
        v143 = *v141;
        v142 = *(v141 + 1);
        v118 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v118)
        {
          goto LABEL_128;
        }

        if (v110 < v144)
        {
          v107 = v104 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_68;
    }

LABEL_3:
    v12 = v180[1];
    v13 = v175;
    if (v175 >= v12)
    {
      goto LABEL_100;
    }
  }

  if (__OFADD__(v13, v172))
  {
    goto LABEL_133;
  }

  if (v13 + v172 < v61)
  {
    v61 = v13 + v172;
  }

  if (v61 < v13)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    v14 = sub_1C2115A60(v14);
LABEL_102:
    v194 = v14;
    v156 = *(v14 + 2);
    if (v156 >= 2)
    {
      do
      {
        v157 = *v180;
        if (!*v180)
        {
          goto LABEL_140;
        }

        v158 = *&v14[16 * v156];
        v159 = *&v14[16 * v156 + 24];
        v160 = (v157 + 8 * v158);
        v161 = (v157 + 8 * *&v14[16 * v156 + 16]);
        v162 = (v157 + 8 * v159);
        v17 = v189;
        v163 = v182;
        sub_1C2115610(v160, v161, v162, v188, v17);
        v182 = v163;
        if (v163)
        {

          goto LABEL_112;
        }

        if (v159 < v158)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1C2115A60(v14);
        }

        if (v156 - 2 >= *(v14 + 2))
        {
          goto LABEL_130;
        }

        v164 = &v14[16 * v156];
        *v164 = v158;
        *(v164 + 1) = v159;
        v194 = v14;
        sub_1C21159D4(v156 - 1);
        v14 = v194;
        v156 = *(v194 + 2);
      }

      while (v156 > 1);
    }

    v17 = v189;
LABEL_112:

    goto LABEL_113;
  }

  if (v12 == v61)
  {
    goto LABEL_48;
  }

  v175 = v61;
  v179 = v14;
  v188 = *v180;
  v62 = v188 + 8 * v12 - 8;
  v173 = v13;
  v63 = (v13 - v12);
  while (2)
  {
    v181 = v12;
    v64 = *(v188 + 8 * v12);
    v176 = v63;
    v177 = v62;
    v65 = v63;
LABEL_37:
    v66 = *v62;
    if (v64)
    {
      v67 = objc_opt_self();
      v68 = v66;
      v69 = v64;
      v70 = [v67 sharedManager];
      v71 = [v70 displayNameForExtension_];

      v72 = sub_1C2170914();
      v74 = v73;

      v192 = v72;
      v193 = v74;
      if (v66)
      {
        goto LABEL_39;
      }

LABEL_41:
      v189 = v65;
      v92 = v185;
      sub_1C2170244();
      v93 = v186;
      sub_1C2170244();
      v79 = sub_1C2170234();
      v81 = v94;
      v95 = *v183;
      v96 = v93;
      v97 = v187;
      (*v183)(v96, v187);
      v98 = v92;
      v65 = v189;
      v95(v98, v97);
      v76 = 0;
    }

    else
    {
      v82 = v66;
      v189 = v65;
      v83 = v185;
      sub_1C2170244();
      v84 = v186;
      sub_1C2170244();
      v85 = sub_1C2170234();
      v87 = v86;
      v88 = *v183;
      v89 = v84;
      v90 = v187;
      (*v183)(v89, v187);
      v91 = v83;
      v65 = v189;
      v88(v91, v90);
      v192 = v85;
      v193 = v87;
      if (!v66)
      {
        goto LABEL_41;
      }

LABEL_39:
      v75 = objc_opt_self();
      v76 = v66;
      v77 = [v75 sharedManager];
      v78 = [v77 displayNameForExtension_];

      v79 = sub_1C2170914();
      v81 = v80;
    }

    v190 = v79;
    v191 = v81;
    sub_1C21197CC();
    v99 = sub_1C2170D94();

    if (v99 != -1)
    {
      goto LABEL_35;
    }

    if (v188)
    {
      v100 = *v62;
      v64 = *(v62 + 8);
      *v62 = v64;
      *(v62 + 8) = v100;
      v62 -= 8;
      if (__CFADD__(v65++, 1))
      {
LABEL_35:
        v12 = v181 + 1;
        v62 = v177 + 8;
        v63 = v176 - 1;
        if (v181 + 1 == v175)
        {
          v14 = v179;
          v13 = v173;
          v12 = v175;
          goto LABEL_48;
        }

        continue;
      }

      goto LABEL_37;
    }

    break;
  }

  v166 = v178;

  __break(1u);
LABEL_138:
  v167 = v178;

  __break(1u);
LABEL_139:
  v168 = v178;

  __break(1u);
LABEL_140:

  __break(1u);
LABEL_141:
  v169 = v178;

  __break(1u);
LABEL_142:
  v170 = v171;

  __break(1u);
}

void sub_1C2118CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = sub_1C2170254();
  v8 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v52 - v11;
  v53 = a2;
  if (a3 != a2)
  {
    v12 = *a4;
    v57 = (v10 + 8);
    v58 = "tureObject8@NSError16";
    v62 = v12;
    v13 = v12 + 8 * a3 - 8;
    v14 = a1 - a3;
LABEL_5:
    v55 = v13;
    v56 = a3;
    v15 = *(v62 + 8 * a3);
    v54 = v14;
    while (1)
    {
      v16 = *v13;
      if (v15)
      {
        v17 = objc_opt_self();
        v18 = v16;
        v19 = v15;
        v20 = [v17 sharedManager];
        v21 = [v20 displayNameForExtension_];

        v22 = sub_1C2170914();
        v24 = v23;

        v65 = v22;
        v66 = v24;
        if (v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v32 = v16;
        v33 = v59;
        sub_1C2170244();
        v34 = v60;
        sub_1C2170244();
        v35 = sub_1C2170234();
        v67 = v14;
        v37 = v36;
        v38 = *v57;
        v39 = v34;
        v40 = v61;
        (*v57)(v39, v61);
        v41 = v33;
        v42 = v37;
        v14 = v67;
        v38(v41, v40);
        v65 = v35;
        v66 = v42;
        if (v16)
        {
LABEL_8:
          v25 = objc_opt_self();
          v26 = v16;
          v27 = [v25 sharedManager];
          v28 = [v27 displayNameForExtension_];

          v29 = sub_1C2170914();
          v31 = v30;

          goto LABEL_11;
        }
      }

      v67 = v14;
      v43 = v59;
      sub_1C2170244();
      v44 = v60;
      sub_1C2170244();
      v29 = sub_1C2170234();
      v31 = v45;
      v46 = *v57;
      v47 = v44;
      v48 = v61;
      (*v57)(v47, v61);
      v14 = v67;
      v46(v43, v48);
      v26 = 0;
LABEL_11:
      v63 = v29;
      v64 = v31;
      sub_1C21197CC();
      v49 = sub_1C2170D94();

      if (v49 != -1)
      {
        goto LABEL_4;
      }

      if (!v62)
      {
        __break(1u);
        return;
      }

      v50 = *v13;
      v15 = *(v13 + 8);
      *v13 = v15;
      *(v13 + 8) = v50;
      v13 -= 8;
      if (__CFADD__(v14++, 1))
      {
LABEL_4:
        a3 = v56 + 1;
        v13 = v55 + 8;
        v14 = v54 - 1;
        if (v56 + 1 == v53)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

void sub_1C21190C4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_1C21712D4();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23738, &qword_1C2179240);
        v8 = sub_1C2170B84();
        *(v8 + 16) = v7;
      }

      v10[0] = v8 + 32;
      v10[1] = v7;
      v9 = v4;
      sub_1C2117FE0(v10, v11, a1, v6, v9);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C2118CB4(0, v3, 1, a1);
  }
}

void sub_1C21191F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1C2115C7C(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1C21190C4(v8, v7);

  sub_1C2170FC4();
}

uint64_t sub_1C2119294(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002DLL && 0x80000001C21859B0 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67677553656D616ELL && a2 == 0xEF736E6F69747365 || (sub_1C2171324() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C21859F0 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C2185A10 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C2185A30 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C2185A50 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C2185A70 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C2185A90 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C2185AB0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1C2171324();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1C2119664(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23E80, &qword_1C2179220);
    v3 = sub_1C2170F14();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1C2171434();

      sub_1C21709B4();
      result = sub_1C2171454();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1C2171324();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1C21197CC()
{
  result = qword_1EBF23EA0;
  if (!qword_1EBF23EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23EA0);
  }

  return result;
}

unint64_t sub_1C2119840()
{
  result = qword_1EBF23F20;
  if (!qword_1EBF23F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF23DC0, &qword_1C2178F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23F20);
  }

  return result;
}

uint64_t sub_1C21198A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C211990C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C211997C()
{
  result = qword_1EBF23F40;
  if (!qword_1EBF23F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF23F38, &qword_1C2179270);
    sub_1C2116A08(&qword_1EBF23DA8, type metadata accessor for ASCPhoneNumber, &protocol conformance descriptor for ASCPhoneNumber);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23F40);
  }

  return result;
}

unint64_t sub_1C2119A30()
{
  result = qword_1EBF23F48;
  if (!qword_1EBF23F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF23420, &unk_1C2176820);
    sub_1C2116A08(&qword_1EBF23DA0, MEMORY[0x1E6968A70], MEMORY[0x1E6968A78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23F48);
  }

  return result;
}

uint64_t sub_1C2119B04()
{
  if (*v0)
  {
    return 1818845542;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1C2119B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1818845542 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C2119C14(uint64_t a1)
{
  v2 = sub_1C211A02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2119C50(uint64_t a1)
{
  v2 = sub_1C211A02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2119C8C(uint64_t a1)
{
  v2 = sub_1C211A080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2119CC8(uint64_t a1)
{
  v2 = sub_1C211A080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2119D04(uint64_t a1)
{
  v2 = sub_1C211A0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2119D40(uint64_t a1)
{
  v2 = sub_1C211A0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCCredentialRequestTestOptions.LocalAuthenticationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23FC0, &qword_1C2179280);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23FC8, &qword_1C2179288);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23FD0, &qword_1C2179290);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C211A02C();
  sub_1C2171484();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1C211A080();
    v14 = v18;
    sub_1C2171214();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1C211A0D4();
    sub_1C2171214();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1C211A02C()
{
  result = qword_1EBF23FD8;
  if (!qword_1EBF23FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23FD8);
  }

  return result;
}

unint64_t sub_1C211A080()
{
  result = qword_1EBF23FE0;
  if (!qword_1EBF23FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23FE0);
  }

  return result;
}

unint64_t sub_1C211A0D4()
{
  result = qword_1EBF23FE8;
  if (!qword_1EBF23FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23FE8);
  }

  return result;
}

uint64_t ASCCredentialRequestTestOptions.LocalAuthenticationResult.hashValue.getter()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t ASCCredentialRequestTestOptions.LocalAuthenticationResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23FF0, &qword_1C2179298);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23FF8, &qword_1C21792A0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF24000, &unk_1C21792A8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C211A02C();
  v12 = v31;
  sub_1C2171464();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1C2171204();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1C20DA3C4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1C2170F74();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B0, &qword_1C2175AA0);
      *v22 = &type metadata for ASCCredentialRequestTestOptions.LocalAuthenticationResult;
      sub_1C2171154();
      sub_1C2170F64();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1C211A080();
        sub_1C2171144();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1C211A0D4();
        sub_1C2171144();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_1C211A698()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isKeychainSyncEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C211A6DC(char a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isKeychainSyncEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C211A78C()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_shouldAutoFillFromICloudKeychain;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C211A7D0(char a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_shouldAutoFillFromICloudKeychain;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C211A880@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1C211A8D4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1C211A984()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_hasPasscode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C211A9C8(char a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_hasPasscode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C211AA78()
{
  v1 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C211AAC4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C211AB84()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C211ABC8(char a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C211ACE0()
{
  v0 = sub_1C2170964();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C216FD04();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  sub_1C216FCF4();
  sub_1C216FD14();
  type metadata accessor for ASCCredentialRequestTestOptions();
  sub_1C211D060(&unk_1EBF24040, v2, type metadata accessor for ASCCredentialRequestTestOptions, &protocol conformance descriptor for ASCCredentialRequestTestOptions);
  v3 = sub_1C216FD24();
  v5 = v4;
  sub_1C2170954();
  v6 = sub_1C2170934();
  v8 = v7;
  sub_1C20D3174(v3, v5);
  if (v8)
  {

    return v6;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id sub_1C211AEF4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(sub_1C2170264());

  return [v2 init];
}

id ASCCredentialRequestTestOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCCredentialRequestTestOptions.init()()
{
  v0[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isKeychainSyncEnabled] = 1;
  v0[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_shouldAutoFillFromICloudKeychain] = 1;
  v0[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult] = 0;
  v0[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_hasPasscode] = 1;
  v1 = &v0[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType];
  *v1 = 2;
  v1[8] = 0;
  v0[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser] = 2;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASCCredentialRequestTestOptions();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1C211B010(void *a1)
{
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCCredentialRequestTestOptions();
  sub_1C211D060(&unk_1EBF24040, v2, type metadata accessor for ASCCredentialRequestTestOptions, &protocol conformance descriptor for ASCCredentialRequestTestOptions);
  v3 = sub_1C216FD24();
  v5 = v4;

  v6 = sub_1C2170154();
  v7 = sub_1C21708F4();
  [a1 encodeObject:v6 forKey:v7];

  return sub_1C20D3174(v3, v5);
}

id ASCCredentialRequestTestOptions.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C20D36A0();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C2170174();
    v6 = v5;

    sub_1C216FCE4();
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C211D060(&qword_1EBF24050, v7, type metadata accessor for ASCCredentialRequestTestOptions, &protocol conformance descriptor for ASCCredentialRequestTestOptions);
    sub_1C216FCC4();

    v16 = objc_allocWithZone(type metadata accessor for ASCCredentialRequestTestOptions());
    v17 = sub_1C211C198(v19);

    sub_1C20D3174(v4, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v17;
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v8 = sub_1C21705A4();
    __swift_project_value_buffer(v8, qword_1EDD4CB08);
    v9 = sub_1C2170584();
    v10 = sub_1C2170C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      v13 = sub_1C21714E4();
      v15 = sub_1C20D7F2C(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C20AD000, v9, v10, "Could not find encoded json for %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1C6915360](v12, -1, -1);
      MEMORY[0x1C6915360](v11, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1C211B648()
{
  v1 = *v0;
  v2 = 0x6373736150736168;
  v3 = 0x797274656D6F6962;
  if (v1 != 4)
  {
    v3 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  v5 = 0xD000000000000020;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C211B71C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C211CE54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C211B750(uint64_t a1)
{
  v2 = sub_1C211C3A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C211B78C(uint64_t a1)
{
  v2 = sub_1C211C3A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCCredentialRequestTestOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCCredentialRequestTestOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C211B800(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24058, &qword_1C21792B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C211C3A4();
  sub_1C2171484();
  swift_beginAccess();
  v19 = 0;
  sub_1C2171234();
  if (!v2)
  {
    swift_beginAccess();
    v18 = 1;
    sub_1C2171234();
    v9 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult;
    swift_beginAccess();
    v17 = *(v3 + v9);
    v16 = 2;
    sub_1C211C3F8();
    sub_1C2171264();
    swift_beginAccess();
    v16 = 3;
    sub_1C2171234();
    v10 = v3 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType;
    swift_beginAccess();
    v11 = *(v10 + 8);
    v13[1] = *v10;
    v14 = v11;
    v15 = 4;
    type metadata accessor for LABiometryType(0);
    sub_1C211D060(&qword_1EBF24070, 255, type metadata accessor for LABiometryType, &protocol conformance descriptor for LABiometryType);
    sub_1C2171264();
    swift_beginAccess();
    v15 = 5;
    sub_1C2171234();
  }

  return (*(v6 + 8))(v8, v5);
}

void *ASCCredentialRequestTestOptions.init(from:)(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24078, &qword_1C21792C0);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v28 - v3;
  v32 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isKeychainSyncEnabled;
  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isKeychainSyncEnabled) = 1;
  v31 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_shouldAutoFillFromICloudKeychain;
  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_shouldAutoFillFromICloudKeychain) = 1;
  v5 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult;
  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult) = 0;
  v6 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_hasPasscode;
  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_hasPasscode) = 1;
  v7 = v1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType;
  *v7 = 2;
  *(v7 + 8) = 0;
  v8 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser;
  v36 = v1;
  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser) = 2;
  v9 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1C211C3A4();
  v10 = v35;
  sub_1C2171464();
  if (v10)
  {
    v11 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    type metadata accessor for ASCCredentialRequestTestOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v32;
    v35 = v5;
    v30 = v6;
    v29 = v7;
    v28 = v8;
    v13 = v33;
    v44 = 0;
    v14 = v34;
    v15 = v4;
    v16 = sub_1C2171174();
    v17 = v36;
    swift_beginAccess();
    v17[v12] = v16;
    v43 = 1;
    v18 = sub_1C2171174();
    v19 = v31;
    swift_beginAccess();
    v17[v19] = v18;
    v42 = 2;
    sub_1C211C44C();
    sub_1C21711A4();
    v21 = v41[0];
    v22 = v35;
    swift_beginAccess();
    v17[v22] = v21;
    LOBYTE(v41[0]) = 3;
    LOBYTE(v22) = sub_1C2171174();
    v23 = v30;
    swift_beginAccess();
    v17[v23] = v22;
    type metadata accessor for LABiometryType(0);
    v40 = 4;
    sub_1C211D060(&qword_1EBF24088, 255, type metadata accessor for LABiometryType, &protocol conformance descriptor for LABiometryType);
    sub_1C21711A4();
    v24 = v38;
    LOBYTE(v22) = v39;
    v25 = v29;
    swift_beginAccess();
    *v25 = v24;
    *(v25 + 8) = v22;
    LOBYTE(v38) = 5;
    LOBYTE(v22) = sub_1C2171174();
    v26 = v28;
    swift_beginAccess();
    v17[v26] = v22;
    v27 = type metadata accessor for ASCCredentialRequestTestOptions();
    v37.receiver = v17;
    v37.super_class = v27;
    v11 = objc_msgSendSuper2(&v37, sel_init);
    (*(v13 + 8))(v15, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  return v11;
}

void *sub_1C211C008@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCCredentialRequestTestOptions());
  result = ASCCredentialRequestTestOptions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1C211C198(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isKeychainSyncEnabled;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isKeychainSyncEnabled] = 1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_shouldAutoFillFromICloudKeychain;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_shouldAutoFillFromICloudKeychain] = 1;
  v5 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult] = 0;
  v6 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_hasPasscode;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_hasPasscode] = 1;
  v7 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType];
  *v7 = 2;
  v7[8] = 0;
  v8 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser] = 2;
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isKeychainSyncEnabled;
  swift_beginAccess();
  LOBYTE(v9) = *(a1 + v9);
  swift_beginAccess();
  v1[v3] = v9;
  v10 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_localAuthenticationResult;
  swift_beginAccess();
  LOBYTE(v10) = *(a1 + v10);
  swift_beginAccess();
  v1[v5] = v10;
  v11 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_hasPasscode;
  swift_beginAccess();
  LOBYTE(v11) = *(a1 + v11);
  swift_beginAccess();
  v1[v6] = v11;
  v12 = (a1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType);
  swift_beginAccess();
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  swift_beginAccess();
  *v7 = v13;
  v7[8] = v12;
  v14 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_shouldAutoFillFromICloudKeychain;
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + v14);
  swift_beginAccess();
  v1[v4] = v14;
  v15 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v15);
  swift_beginAccess();
  v1[v8] = a1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ASCCredentialRequestTestOptions();
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t sub_1C211C3A4()
{
  result = qword_1EBF24060;
  if (!qword_1EBF24060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24060);
  }

  return result;
}

unint64_t sub_1C211C3F8()
{
  result = qword_1EBF24068;
  if (!qword_1EBF24068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24068);
  }

  return result;
}

unint64_t sub_1C211C44C()
{
  result = qword_1EBF24080;
  if (!qword_1EBF24080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24080);
  }

  return result;
}

unint64_t sub_1C211C4A4()
{
  result = qword_1EBF24090;
  if (!qword_1EBF24090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24090);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

unint64_t sub_1C211CAE8()
{
  result = qword_1EBF240A0;
  if (!qword_1EBF240A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240A0);
  }

  return result;
}

unint64_t sub_1C211CB40()
{
  result = qword_1EBF240A8;
  if (!qword_1EBF240A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240A8);
  }

  return result;
}

unint64_t sub_1C211CB98()
{
  result = qword_1EBF240B0;
  if (!qword_1EBF240B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240B0);
  }

  return result;
}

unint64_t sub_1C211CBF0()
{
  result = qword_1EBF240B8;
  if (!qword_1EBF240B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240B8);
  }

  return result;
}

unint64_t sub_1C211CC48()
{
  result = qword_1EBF240C0;
  if (!qword_1EBF240C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240C0);
  }

  return result;
}

unint64_t sub_1C211CCA0()
{
  result = qword_1EBF240C8;
  if (!qword_1EBF240C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240C8);
  }

  return result;
}

unint64_t sub_1C211CCF8()
{
  result = qword_1EBF240D0;
  if (!qword_1EBF240D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240D0);
  }

  return result;
}

unint64_t sub_1C211CD50()
{
  result = qword_1EBF240D8;
  if (!qword_1EBF240D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240D8);
  }

  return result;
}

unint64_t sub_1C211CDA8()
{
  result = qword_1EBF240E0;
  if (!qword_1EBF240E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240E0);
  }

  return result;
}

unint64_t sub_1C211CE00()
{
  result = qword_1EBF240E8;
  if (!qword_1EBF240E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF240E8);
  }

  return result;
}

uint64_t sub_1C211CE54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C2185DD0 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001C2185DF0 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C2185E20 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6373736150736168 && a2 == 0xEB0000000065646FLL || (sub_1C2171324() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x797274656D6F6962 && a2 == 0xEC00000065707954 || (sub_1C2171324() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C2185E60 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1C2171324();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1C211D060(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1C211D158()
{
  result = qword_1EBF24100;
  if (!qword_1EBF24100)
  {
    type metadata accessor for ASLoginChoiceKind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24100);
  }

  return result;
}

uint64_t ASCPlatformPublicKeyAccountRegistration.emailIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_emailIdentifier);

  return v1;
}

uint64_t ASCPlatformPublicKeyAccountRegistration.phoneIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_phoneIdentifier);

  return v1;
}

id ASCPlatformPublicKeyAccountRegistration.__allocating_init(emailIdentifier:phoneIdentifier:name:credentialRegistration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_emailIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_phoneIdentifier];
  *v15 = a3;
  *(v15 + 1) = a4;
  sub_1C20DB900(a5, &v13[OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_name]);
  *&v13[OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_credentialRegistration] = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  sub_1C20DB970(a5);
  return v16;
}

id ASCPlatformPublicKeyAccountRegistration.init(emailIdentifier:phoneIdentifier:name:credentialRegistration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = &v6[OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_emailIdentifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v6[OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_phoneIdentifier];
  *v10 = a3;
  *(v10 + 1) = a4;
  sub_1C20DB900(a5, &v6[OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_name]);
  *&v6[OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_credentialRegistration] = a6;
  v13.receiver = v6;
  v13.super_class = type metadata accessor for ASCPlatformPublicKeyAccountRegistration(0);
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1C20DB970(a5);
  return v11;
}

uint64_t type metadata accessor for ASCPlatformPublicKeyAccountRegistration(uint64_t a1)
{
  result = qword_1EDD4AD20;
  if (!qword_1EDD4AD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C211D604(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  if (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_emailIdentifier + 8))
  {
    v7 = sub_1C21708F4();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1C21708F4();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_phoneIdentifier + 8))
  {
    v9 = sub_1C21708F4();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1C21708F4();
  [a1 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  sub_1C20DB900(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_name, v6);
  v11 = sub_1C216FF04();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v6, 1, v11) != 1)
  {
    v13 = sub_1C216FEE4();
    (*(v12 + 8))(v6, v11);
  }

  v14 = sub_1C21708F4();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore39ASCPlatformPublicKeyAccountRegistration_credentialRegistration);
  v16 = sub_1C21708F4();
  [a1 encodeObject:v15 forKey:v16];
}

id ASCPlatformPublicKeyAccountRegistration.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  sub_1C20DB8B8(0, &qword_1EBF24128, 0x1E696AEC0);
  v13 = sub_1C2170CC4();
  if (v13)
  {
    v43 = 0;
    v44 = 0;
    v14 = v13;
    sub_1C2170904();

    v15 = v43;
    v16 = v44;
    if (!v44)
    {
      v15 = 0;
    }

    v41 = v15;
  }

  else
  {
    v41 = 0;
    v16 = 0;
  }

  v17 = sub_1C2170CC4();
  v42 = v7;
  if (v17)
  {
    v43 = 0;
    v44 = 0;
    v18 = v17;
    sub_1C2170904();

    v19 = v44;
    if (v44)
    {
      v20 = v43;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  sub_1C20DB8B8(0, &qword_1EBF24130, 0x1E696ADF0);
  v21 = sub_1C2170CC4();
  if (v21)
  {
    v22 = v21;
    v39 = v20;
    v40 = v2;
    v23 = sub_1C216FF04();
    v24 = *(v23 - 8);
    v25 = *(v24 + 56);
    v25(v10, 1, 1, v23);
    sub_1C211DE18();
    sub_1C2171124();

    if ((*(v24 + 48))(v10, 1, v23) == 1)
    {
      v26 = v12;
      v27 = 1;
    }

    else
    {
      (*(v24 + 32))(v12, v10, v23);
      v26 = v12;
      v27 = 0;
    }

    v25(v26, v27, 1, v23);
    v2 = v40;
  }

  else
  {
    v28 = sub_1C216FF04();
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  }

  sub_1C20DB8B8(0, &qword_1EBF24138, off_1E815F1A0);
  v29 = sub_1C2170CC4();
  if (!v29)
  {
    sub_1C20DB970(v12);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v30 = v29;
  if (!v16)
  {
    v31 = 0;
    if (v19)
    {
      goto LABEL_20;
    }

LABEL_23:
    v32 = 0;
    goto LABEL_24;
  }

  v31 = sub_1C21708F4();

  if (!v19)
  {
    goto LABEL_23;
  }

LABEL_20:
  v32 = sub_1C21708F4();

LABEL_24:
  v34 = v42;
  sub_1C20DB900(v12, v42);
  v35 = sub_1C216FF04();
  v36 = *(v35 - 8);
  v37 = 0;
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {
    v37 = sub_1C216FEE4();
    (*(v36 + 8))(v34, v35);
  }

  v33 = [v2 initWithEmailIdentifier:v31 phoneIdentifier:v32 name:v37 credentialRegistration:v30];

  sub_1C20DB970(v12);
  return v33;
}

unint64_t sub_1C211DE18()
{
  result = qword_1EBF24140;
  if (!qword_1EBF24140)
  {
    sub_1C216FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24140);
  }

  return result;
}

id ASCPlatformPublicKeyAccountRegistration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPlatformPublicKeyAccountRegistration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPlatformPublicKeyAccountRegistration(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C211DFE0(uint64_t a1)
{
  sub_1C211798C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C211E0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1C20EB3E8(a3, v25 - v10, &unk_1EBF23490, &qword_1C2176890);
  v12 = sub_1C2170BE4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C20EB498(v11, &unk_1EBF23490, &qword_1C2176890);
  }

  else
  {
    sub_1C2170BD4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C2170BA4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1C2170994() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1C20EB498(a3, &unk_1EBF23490, &qword_1C2176890);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C20EB498(a3, &unk_1EBF23490, &qword_1C2176890);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C211E3FC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_1C2121FB4(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_1C2122018(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_1C2122074(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C20E7250(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1C20E7250((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_1C2122074(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1C2122018(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t ASCPasswordSignInEvent.providerBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_providerBundleIdentifier);

  return v1;
}

void *ASCPasswordSignInEvent.externalProviderListenerEndpoint.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_externalProviderListenerEndpoint);
  v2 = v1;
  return v1;
}

id ASCPasswordSignInEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPasswordSignInEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPasswordSignInEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C211E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v33 = a8;
  v34 = a6;
  v35 = a7;
  v31 = a4;
  v32 = a5;
  v12 = sub_1C2170024();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v30 = &v30 - v17;
  v19 = sub_1C2170BE4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a3, v12);
  v20 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v8;
  *(v22 + 5) = a1;
  v23 = v31;
  *(v22 + 6) = a2;
  *(v22 + 7) = v23;
  *(v22 + 8) = v32;
  (*(v13 + 32))(&v22[v20], v15, v12);
  v24 = v33;
  v25 = v34;
  *&v22[v21] = v33;
  v26 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  v27 = v35;
  *v26 = v25;
  v26[1] = v27;
  v28 = v24;

  sub_1C211E0FC(0, 0, v30, &unk_1C21798D0, v22);
}

uint64_t sub_1C211EA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v12;
  *(v8 + 80) = v13;
  *(v8 + 56) = v11;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 88) = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C211EB44, 0, 0);
}

uint64_t sub_1C211EB44()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[4];
  v13 = v0[3];
  v14 = v0[5];
  v15 = v0[2];

  sub_1C21701E4();
  v7 = v2[7];
  v8 = sub_1C2170024();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v1[v7], v3, v8);
  (*(v9 + 56))(&v1[v7], 0, 1, v8);
  *v1 = v13;
  *(v1 + 1) = v6;
  v10 = &v1[v2[6]];
  *v10 = v14;
  *(v10 + 1) = v5;
  *&v1[v2[8]] = v4;

  v11 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C211EC98, v15, 0);
}

uint64_t sub_1C211EC98()
{
  v1 = v0[12];
  sub_1C211F988(v1, v0[9], v0[10]);
  sub_1C2122018(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1C211ED14(uint64_t a1)
{
  sub_1C2170024();
  v11 = v1[2];
  v3 = v1[4];
  v10 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C20DBF8C;

  return sub_1C211EA94(a1, v11, v10, v3, v4, v5, v6, v7);
}

uint64_t sub_1C211F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v25 = a5;
  v26 = a7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_1C2170BE4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = v9;
  v20[7] = a1;
  v22 = v25;
  v21 = v26;
  v20[8] = a2;
  v20[9] = v22;
  v20[10] = a6;
  v20[11] = a9;
  v20[12] = v21;
  v20[13] = a8;
  v23 = a9;

  sub_1C211E0FC(0, 0, v18, &unk_1C21798E0, v20);
}

uint64_t sub_1C211F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v14;
  *(v8 + 72) = v13;
  *(v8 + 56) = v12;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 96) = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  *(v8 + 104) = swift_task_alloc();
  v9 = sub_1C216FDA4();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C211F418, 0, 0);
}

uint64_t sub_1C211F418()
{
  v1 = v0[3];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v0[2];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[16];
    v5 = v0[14];
    v6 = v0[15];

    sub_1C216FD94();
    sub_1C216FD84();
    MEMORY[0x1C6913010](v2, v1);
    sub_1C216FD54();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
LABEL_6:
    v7 = v0[17];
    v8 = sub_1C2170024();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  v9 = v0[17];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[5];
  v20 = v0[4];

  sub_1C21701E4();
  sub_1C20EB3E8(v9, v10 + v11[7], &qword_1EBF251D0, &qword_1C2176940);
  *v10 = v16;
  v10[1] = v14;
  v17 = (v10 + v11[6]);
  *v17 = v15;
  v17[1] = v12;
  *(v10 + v11[8]) = v13;

  v18 = v13;

  return MEMORY[0x1EEE6DFA0](sub_1C211F5CC, v20, 0);
}

uint64_t sub_1C211F5CC()
{
  v1 = v0[13];
  sub_1C211F988(v1, v0[10], v0[11]);
  sub_1C2122018(v1);

  return MEMORY[0x1EEE6DFA0](sub_1C211F648, 0, 0);
}

uint64_t sub_1C211F648()
{
  sub_1C20EB498(*(v0 + 136), &qword_1EBF251D0, &qword_1C2176940);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C211F6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C20DBF8C;

  return sub_1C211F2D0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C211F988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v3 + 112);
  v13 = *(v12 + 16);

  if (v13 && (v14 = sub_1C2122104(a2, a3, MEMORY[0x1E69E60C8], sub_1C20F1C6C), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1C2121FB4(a1, v11);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1C2115258(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1C2115258((v17 > 1), v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  sub_1C2122074(v11, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_1C213C7A0(v16, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + 112) = v22;
  swift_endAccess();
  return sub_1C211FCE0();
}

uint64_t sub_1C211FBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C213C7A0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1C2122104(a2, a3, MEMORY[0x1E69E60C8], sub_1C20F1C6C);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1C213CD88();
        v14 = v16;
      }

      result = sub_1C2149278(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1C211FCE0()
{
  v1 = sub_1C21701F4();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C21701E4();
  swift_beginAccess();
  v3 = *(v0 + 112);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v25 = v0;
  v26 = v3;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_11:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(v26 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v26 + 56) + 8 * v13);
    MEMORY[0x1EEE9AC00](result);
    *(&v22 - 2) = v27;

    v18 = sub_1C211E3FC(sub_1C2123538, (&v22 - 4), v17);
    if (*(v18 + 16))
    {
      v19 = v18;
      v20 = v25;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v20 + 112);
      *(v20 + 112) = 0x8000000000000000;
      sub_1C213C7A0(v19, v16, v15, isUniquelyReferenced_nonNull_native);

      *(v20 + 112) = v28;
    }

    else
    {

      swift_beginAccess();
      sub_1C211FBC0(0, v16, v15);
    }

    result = swift_endAccess();
    v10 = v11;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return (*(v23 + 8))(v27, v24);
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1C211FF74(uint64_t a1)
{
  type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  sub_1C21701C4();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_1C212000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_1C2170024();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v9 = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C212019C, v6, 0);
}

uint64_t sub_1C212019C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  sub_1C211FCE0();
  v3 = v2 == 0x6F632E656C707061 && v1 == 0xE90000000000006DLL;
  if (v3 || (sub_1C2171324() & 1) != 0)
  {
    v4 = *(v0 + 224);
    v5 = *(v0 + 184);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);

    sub_1C21701E4();
    v10 = sub_1C2170914();
    v12 = v11;
    (*(v7 + 56))(&v4[v5[7]], 1, 1, v6);
    *v4 = v9;
    *(v4 + 1) = v8;
    v13 = &v4[v5[6]];
    *v13 = v10;
    v13[1] = v12;
    *&v4[v5[8]] = 0;
    v14 = type metadata accessor for ASCPasswordSignInEvent();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_providerBundleIdentifier];
    *v16 = v10;
    v16[1] = v12;
    *&v15[OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_externalProviderListenerEndpoint] = 0;
    *(v0 + 72) = v15;
    *(v0 + 80) = v14;

    v17 = objc_msgSendSuper2((v0 + 72), sel_init);
LABEL_7:
    sub_1C2122018(v4);
    goto LABEL_35;
  }

  v18 = *(v0 + 136);
  swift_beginAccess();
  v19 = *(v18 + 112);
  if (!*(v19 + 16))
  {
    goto LABEL_34;
  }

  v21 = *(v0 + 120);
  v20 = *(v0 + 128);

  v22 = sub_1C2122104(v21, v20, MEMORY[0x1E69E60C8], sub_1C20F1C6C);
  if (v23)
  {
    v24 = *(*(v19 + 56) + 8 * v22);

    v26 = *(v24 + 16);
    if (v26)
    {
      v85 = v18;
      v86 = *(v0 + 208);
      v27 = *(v0 + 184);
      v28 = *(v0 + 192);
      v29 = *(v0 + 152);
      v30 = v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v31 = (v29 + 48);
      v87 = (v29 + 8);
      while (1)
      {
        if (v26 > *(v24 + 16))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v32 = v26 - 1;
        v33 = *(v0 + 208);
        v34 = *(v0 + 176);
        v35 = *(v0 + 144);
        v88 = v30 + *(v28 + 72) * v32;
        v89 = v32;
        sub_1C2121FB4(v88, v33);
        sub_1C20EB3E8(v33 + *(v27 + 28), v34, &qword_1EBF251D0, &qword_1C2176940);
        v36 = (*v31)(v34, 1, v35);
        v37 = *(v0 + 176);
        if (v36 == 1)
        {
          break;
        }

        v38 = v31;
        v39 = v30;
        v40 = v27;
        v41 = v24;
        v42 = v28;
        v43 = *(v0 + 144);
        sub_1C216FFE4();
        v45 = v44;
        v46 = v43;
        v28 = v42;
        v24 = v41;
        v27 = v40;
        v30 = v39;
        v31 = v38;
        (*v87)(v37, v46);
        if (!v45)
        {
          goto LABEL_13;
        }

        v47 = sub_1C21708F4();
        v48 = sub_1C21708F4();

        v49 = [v47 isValidRPIDForHost_];

        if ((v49 & 1) == 0)
        {
          goto LABEL_13;
        }

        v50 = *(v0 + 208);
        if (*v50 == *(v0 + 88) && *(v86 + 8) == *(v0 + 96))
        {
          sub_1C2122018(*(v0 + 208));
LABEL_42:
          v4 = *(v0 + 216);
          v75 = *(v0 + 224);
          v76 = *(v0 + 184);
          sub_1C2121FB4(v88, v4);

          sub_1C2121FB4(v4, v75);
          v77 = type metadata accessor for ASCPasswordSignInEvent();
          v78 = objc_allocWithZone(v77);
          v79 = (v75 + *(v76 + 24));
          v81 = *v79;
          v80 = v79[1];
          v82 = &v78[OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_providerBundleIdentifier];
          *v82 = v81;
          *(v82 + 1) = v80;
          v83 = *(v75 + *(v76 + 32));
          *&v78[OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_externalProviderListenerEndpoint] = v83;
          *(v0 + 56) = v78;
          *(v0 + 64) = v77;

          v84 = v83;
          v17 = objc_msgSendSuper2((v0 + 56), sel_init);
          sub_1C2122018(v75);
          goto LABEL_7;
        }

        v51 = sub_1C2171324();
        v25 = sub_1C2122018(v50);
        if (v51)
        {
          goto LABEL_42;
        }

LABEL_14:
        v26 = v89;
        if (!v89)
        {
          v18 = v85;
          goto LABEL_24;
        }
      }

      sub_1C20EB498(*(v0 + 176), &qword_1EBF251D0, &qword_1C2176940);
LABEL_13:
      v25 = sub_1C2122018(*(v0 + 208));
      goto LABEL_14;
    }
  }

LABEL_24:

  v52 = *(v18 + 112);
  if (!*(v52 + 16))
  {
LABEL_34:
    v17 = 0;
LABEL_35:

    v67 = *(v0 + 8);

    return v67(v17);
  }

  v54 = *(v0 + 120);
  v53 = *(v0 + 128);

  v55 = sub_1C2122104(v54, v53, MEMORY[0x1E69E60C8], sub_1C20F1C6C);
  if ((v56 & 1) == 0)
  {

    goto LABEL_34;
  }

  v57 = *(*(v52 + 56) + 8 * v55);
  *(v0 + 232) = v57;

  v25 = [objc_allocWithZone(type metadata accessor for ASCRelatedOriginFetcher()) init];
  *(v0 + 240) = v25;
  v58 = *(v57 + 16);
  if (!v58)
  {
LABEL_45:
    v66 = v25;
LABEL_32:

    goto LABEL_34;
  }

  *(v0 + 280) = *(*(v0 + 192) + 80);
  while (1)
  {
    *(v0 + 248) = v58;
    v59 = *(v0 + 232);
    if (v58 > *(v59 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v60 = *(v0 + 200);
    v61 = *(v0 + 184);
    v62 = *(v0 + 168);
    v63 = *(v0 + 144);
    v64 = *(v0 + 152);
    sub_1C2121FB4(v59 + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(*(v0 + 192) + 72) * (v58 - 1), v60);
    sub_1C20EB3E8(v60 + *(v61 + 28), v62, &qword_1EBF251D0, &qword_1C2176940);
    if ((*(v64 + 48))(v62, 1, v63) != 1)
    {
      break;
    }

    v65 = *(v0 + 168);
    sub_1C2122018(*(v0 + 200));
    v25 = sub_1C20EB498(v65, &qword_1EBF251D0, &qword_1C2176940);
    v58 = *(v0 + 248) - 1;
    if (*(v0 + 248) == 1)
    {
      v66 = *(v0 + 240);
      goto LABEL_32;
    }
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v69 = sub_1C216FFA4();
  v71 = v70;
  *(v0 + 256) = v70;
  v72 = swift_task_alloc();
  *(v0 + 264) = v72;
  *v72 = v0;
  v72[1] = sub_1C21208A8;
  v73 = *(v0 + 104);
  v74 = *(v0 + 112);

  return sub_1C2162124(v69, v71, v73, v74);
}

uint64_t sub_1C21208A8(char a1)
{
  v4 = *v2;
  *(v4 + 272) = v1;

  v5 = *(v4 + 136);
  if (v1)
  {
    v6 = sub_1C2120D3C;
  }

  else
  {
    *(v4 + 284) = a1 & 1;
    v6 = sub_1C2120A04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C2120A04()
{
  if (*(v0 + 284))
  {
    v1 = *(v0 + 240);
    v2 = *(v0 + 224);
    v3 = *(v0 + 200);
    v4 = *(v0 + 184);
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 144);

    sub_1C2121FB4(v3, v2);
    v8 = type metadata accessor for ASCPasswordSignInEvent();
    v9 = objc_allocWithZone(v8);
    v10 = (v2 + *(v4 + 24));
    v12 = *v10;
    v11 = v10[1];
    v13 = &v9[OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_providerBundleIdentifier];
    *v13 = v12;
    *(v13 + 1) = v11;
    v14 = *(v2 + *(v4 + 32));
    *&v9[OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_externalProviderListenerEndpoint] = v14;
    *(v0 + 40) = v9;
    *(v0 + 48) = v8;

    v15 = v14;
    v16 = objc_msgSendSuper2((v0 + 40), sel_init);

    sub_1C2122018(v2);
    (*(v6 + 8))(v5, v7);
    sub_1C2122018(v3);
LABEL_3:

    v17 = *(v0 + 8);

    return v17(v16);
  }

  v19 = *(v0 + 200);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  result = sub_1C2122018(v19);
  v20 = *(v0 + 248);
  v21 = v20 - 1;
  if (v20 == 1)
  {
LABEL_10:
    v29 = *(v0 + 240);

    v16 = 0;
    goto LABEL_3;
  }

  while (1)
  {
    *(v0 + 248) = v21;
    v22 = *(v0 + 232);
    if (v21 > *(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v23 = *(v0 + 200);
    v24 = *(v0 + 184);
    v25 = *(v0 + 168);
    v26 = *(v0 + 144);
    v27 = *(v0 + 152);
    sub_1C2121FB4(v22 + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(*(v0 + 192) + 72) * (v20 - 2), v23);
    sub_1C20EB3E8(v23 + *(v24 + 28), v25, &qword_1EBF251D0, &qword_1C2176940);
    if ((*(v27 + 48))(v25, 1, v26) != 1)
    {
      break;
    }

    v28 = *(v0 + 168);
    sub_1C2122018(*(v0 + 200));
    result = sub_1C20EB498(v28, &qword_1EBF251D0, &qword_1C2176940);
    v20 = *(v0 + 248);
    v21 = v20 - 1;
    if (v20 == 1)
    {
      goto LABEL_10;
    }
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v30 = sub_1C216FFA4();
  v32 = v31;
  *(v0 + 256) = v31;
  v33 = swift_task_alloc();
  *(v0 + 264) = v33;
  *v33 = v0;
  v33[1] = sub_1C21208A8;
  v34 = *(v0 + 104);
  v35 = *(v0 + 112);

  return sub_1C2162124(v30, v32, v34, v35);
}

void sub_1C2120D3C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 200);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  sub_1C2122018(v2);

  v3 = *(v0 + 248);
  v4 = v3 - 1;
  if (v3 == 1)
  {
LABEL_5:
    v12 = *(v0 + 240);

    v13 = *(v0 + 8);

    v13(0);
  }

  else
  {
    while (1)
    {
      *(v0 + 248) = v4;
      v5 = *(v0 + 232);
      if (v4 > *(v5 + 16))
      {
        __break(1u);
        return;
      }

      v6 = *(v0 + 200);
      v7 = *(v0 + 184);
      v8 = *(v0 + 168);
      v9 = *(v0 + 144);
      v10 = *(v0 + 152);
      sub_1C2121FB4(v5 + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(*(v0 + 192) + 72) * (v3 - 2), v6);
      sub_1C20EB3E8(v6 + *(v7 + 28), v8, &qword_1EBF251D0, &qword_1C2176940);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        break;
      }

      v11 = *(v0 + 168);
      sub_1C2122018(*(v0 + 200));
      sub_1C20EB498(v11, &qword_1EBF251D0, &qword_1C2176940);
      v3 = *(v0 + 248);
      v4 = v3 - 1;
      if (v3 == 1)
      {
        goto LABEL_5;
      }
    }

    (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
    v14 = sub_1C216FFA4();
    v16 = v15;
    *(v0 + 256) = v15;
    v17 = swift_task_alloc();
    *(v0 + 264) = v17;
    *v17 = v0;
    v17[1] = sub_1C21208A8;
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);

    sub_1C2162124(v14, v16, v18, v19);
  }
}

uint64_t type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(uint64_t a1)
{
  result = qword_1EBF241C0;
  if (!qword_1EBF241C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C212119C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v6 = sub_1C2170914();
  v8 = v7;
  v5[4] = v7;
  v9 = sub_1C2170914();
  v11 = v10;
  v5[5] = v10;
  v12 = sub_1C2170914();
  v14 = v13;
  v5[6] = v13;

  v15 = swift_task_alloc();
  v5[7] = v15;
  *v15 = v5;
  v15[1] = sub_1C21212C0;

  return sub_1C212000C(v6, v8, v9, v11, v12, v14);
}

uint64_t sub_1C21212C0(void *a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1C212146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C2121558, v4, 0);
}

uint64_t sub_1C2121558()
{
  v1 = *(v0 + 88);
  sub_1C211FCE0();
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);

    v5 = sub_1C2122104(v4, v3, MEMORY[0x1E69E60C8], sub_1C20F1C6C);
    if (v6)
    {
      v7 = *(v0 + 120);
      v8 = *(v0 + 104);
      v9 = *(*(v2 + 56) + 8 * v5);

      v11 = *(v9 + 16);
      while (v11)
      {
        if (v11 > *(v9 + 16))
        {
          __break(1u);
          return result;
        }

        --v11;
        v12 = *(v0 + 120);
        v14 = *(v0 + 56);
        v13 = *(v0 + 64);
        v15 = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11;
        sub_1C2121FB4(v15, v12);
        v16 = *v12;
        v17 = *(v0 + 120);
        if (v16 == v14 && *(v7 + 8) == v13)
        {
          sub_1C2122018(*(v0 + 120));
LABEL_15:
          v22 = *(v0 + 128);
          v21 = *(v0 + 136);
          v23 = *(v0 + 112);
          v24 = *(v0 + 96);
          sub_1C2121FB4(v15, v22);

          sub_1C2122074(v22, v21);
          sub_1C2121FB4(v21, v23);
          v25 = type metadata accessor for ASCPasswordSignInEvent();
          v26 = objc_allocWithZone(v25);
          v27 = (v23 + *(v24 + 24));
          v29 = *v27;
          v28 = v27[1];
          v30 = &v26[OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_providerBundleIdentifier];
          *v30 = v29;
          *(v30 + 1) = v28;
          v31 = *(v23 + *(v24 + 32));
          *&v26[OBJC_IVAR____TtC26AuthenticationServicesCore22ASCPasswordSignInEvent_externalProviderListenerEndpoint] = v31;
          *(v0 + 40) = v26;
          *(v0 + 48) = v25;

          v32 = v31;
          v20 = objc_msgSendSuper2((v0 + 40), sel_init);
          sub_1C2122018(v23);
          sub_1C2122018(v21);
          goto LABEL_16;
        }

        v19 = sub_1C2171324();
        result = sub_1C2122018(v17);
        if (v19)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v20 = 0;
LABEL_16:

  v33 = *(v0 + 8);

  return v33(v20);
}

uint64_t sub_1C2121960(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_1C2170914();
  v7 = v6;
  v4[4] = v6;
  v8 = sub_1C2170914();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1C2121A5C;

  return sub_1C212146C(v5, v7, v8, v10);
}

uint64_t sub_1C2121A5C(void *a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

id ASPasswordSignInEventCollector.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = sub_1C213F510(MEMORY[0x1E69E7CC0]);
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id ASPasswordSignInEventCollector.init()()
{
  swift_defaultActor_initialize();
  v0[14] = sub_1C213F510(MEMORY[0x1E69E7CC0]);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASPasswordSignInEventCollector();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t ASPasswordSignInEventCollector.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ASPasswordSignInEventCollector.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C2121D58@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_1C216FDD4();
    if (v10)
    {
      v11 = sub_1C216FE04();
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
      result = sub_1C216FDF4();
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
  v10 = sub_1C216FDD4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C216FE04();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C216FDF4();
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

uint64_t sub_1C2121FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2122018(uint64_t a1)
{
  v2 = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2122074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASPasswordSignInEventCollector.SignInEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2122104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1C2171434();
  a3(v10, a1, a2);
  v7 = sub_1C2171454();

  return a4(a1, a2, v7);
}

unint64_t sub_1C2122198(uint64_t a1)
{
  sub_1C2171054();
  v2 = sub_1C2170884();

  return sub_1C21226E0(a1, v2);
}

unint64_t sub_1C212224C(uint64_t a1)
{
  v2 = sub_1C2170EB4();

  return sub_1C2122878(a1, v2);
}

unint64_t sub_1C21222E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45[3] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v43 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v40 = v14;
    v39 = HIDWORD(a1) - a1;
    v41 = v10;
    v42 = BYTE6(a2);
    v36 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v42;
          if (v13)
          {
            v26 = v39;
            if (v40)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          return v6;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        return v6;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v45[0] = v17;
          LOWORD(v45[1]) = v16;
          BYTE2(v45[1]) = BYTE2(v16);
          BYTE3(v45[1]) = BYTE3(v16);
          BYTE4(v45[1]) = BYTE4(v16);
          BYTE5(v45[1]) = BYTE5(v16);
          sub_1C20D865C(v17, v16);
          sub_1C2121D58(v45, v9, v8, &v44);
          sub_1C20D3174(v17, v16);
          if (v44)
          {
            return v6;
          }

          v10 = v41;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1C20D865C(v17, v16);
        v31 = sub_1C216FDD4();
        if (v31)
        {
          v33 = sub_1C216FE04();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1C20D865C(v17, v16);
        v31 = sub_1C216FDD4();
        if (v31)
        {
          v32 = sub_1C216FE04();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_1C216FDF4();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1C2121D58(v34, a1, a2, v45);
        sub_1C20D3174(v17, v16);
        if (v45[0])
        {
          return v6;
        }

        v4 = v36;
        v10 = v41;
        goto LABEL_13;
      }

      memset(v45, 0, 14);
      sub_1C20D865C(v17, v16);
      sub_1C2121D58(v45, v9, v8, &v44);
      sub_1C20D3174(v17, v16);
      if (v44)
      {
        return v6;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        return v6;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v43) & 1) == 0)
    {
      return v6;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  return v6;
}

unint64_t sub_1C21226E0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1C2171054();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_1C21708E4();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1C2122878(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C21234DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6914170](v9, a1);
      sub_1C20EADC8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C2122940(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1C20DB8B8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1C2170CF4();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1C2122A0C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C2122B04;

  return v6(a1);
}

uint64_t sub_1C2122B04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of ASPasswordSignInEventCollector.signInEventForRecentlyFilledCredential(withUsername:for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x98);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1C2117430;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ASPasswordSignInEventCollector.signInEventForRecentlyFilledCredential(withUsername:forApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xA8);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C21236C8;

  return v13(a1, a2, a3, a4);
}

void sub_1C2122FB4(uint64_t a1)
{
  sub_1C21701F4();
  if (v1 <= 0x3F)
  {
    sub_1C2123060(319);
    if (v2 <= 0x3F)
    {
      sub_1C21230B8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2123060(uint64_t a1)
{
  if (!qword_1EBF241D0)
  {
    sub_1C2170024();
    v1 = sub_1C2170D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBF241D0);
    }
  }
}

void sub_1C21230B8(uint64_t a1)
{
  if (!qword_1EBF241D8)
  {
    sub_1C20DB8B8(255, &qword_1EBF241E0, 0x1E696B0E0);
    v1 = sub_1C2170D24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBF241D8);
    }
  }
}

uint64_t sub_1C2123120()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C20DBF8C;

  return sub_1C2121960(v2, v3, v5, v4);
}

uint64_t sub_1C21231E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C20DBF8C;

  return sub_1C2166BB8(v2, v3, v4);
}

uint64_t sub_1C21232A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C20DBD8C;

  return sub_1C212119C(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroyTm()
{
  v1 = sub_1C2170024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1C2123558(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C20DBF8C;

  return sub_1C2122A0C(a1, v4);
}

uint64_t sub_1C2123610(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C20DBD8C;

  return sub_1C2122A0C(a1, v4);
}

uint64_t sub_1C21236F4()
{
  if (*v0)
  {
    return 0x6C69616D65;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_1C2123734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C2123810(uint64_t a1)
{
  v2 = sub_1C2123C28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C212384C(uint64_t a1)
{
  v2 = sub_1C2123C28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2123888(uint64_t a1)
{
  v2 = sub_1C2123C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C21238C4(uint64_t a1)
{
  v2 = sub_1C2123C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2123900(uint64_t a1)
{
  v2 = sub_1C2123CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C212393C(uint64_t a1)
{
  v2 = sub_1C2123CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyAccountRegistrationOptions.ASCContactIdentifierRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF241F0, &qword_1C2179A20);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF241F8, &qword_1C2179A28);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24200, &qword_1C2179A30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2123C28();
  sub_1C2171484();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1C2123C7C();
    v14 = v18;
    sub_1C2171214();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1C2123CD0();
    sub_1C2171214();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1C2123C28()
{
  result = qword_1EBF24208;
  if (!qword_1EBF24208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24208);
  }

  return result;
}

unint64_t sub_1C2123C7C()
{
  result = qword_1EBF24210;
  if (!qword_1EBF24210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24210);
  }

  return result;
}

unint64_t sub_1C2123CD0()
{
  result = qword_1EBF24218;
  if (!qword_1EBF24218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24218);
  }

  return result;
}

uint64_t ASCPublicKeyAccountRegistrationOptions.ASCContactIdentifierRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t ASCPublicKeyAccountRegistrationOptions.ASCContactIdentifierRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24220, &qword_1C2179A38);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24228, &qword_1C2179A40);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF24230, &unk_1C2179A48);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2123C28();
  v12 = v31;
  sub_1C2171464();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1C2171204();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1C20DA3C4();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1C2170F74();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B0, &qword_1C2175AA0);
      *v22 = &type metadata for ASCPublicKeyAccountRegistrationOptions.ASCContactIdentifierRequest;
      sub_1C2171154();
      sub_1C2170F64();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1C2123C7C();
        sub_1C2171144();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1C2123CD0();
        sub_1C2171144();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

BOOL sub_1C21242F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 32);
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v5 = *v3++;
    --v2;
  }

  while (v5 != 1);
  return result;
}

BOOL sub_1C2124334()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 32);
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v5 = *v3++;
    --v2;
  }

  while ((v5 & 1) != 0);
  return result;
}

id ASCPublicKeyAccountRegistrationOptions.__allocating_init(acceptedContactIdentifiers:shouldRequestName:challenge:userID:relyingPartyIdentifier:test_shouldLoadContactData:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = objc_allocWithZone(v9);
  *&v18[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers] = a1;
  v18[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_shouldRequestName] = a2;
  v19 = &v18[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge];
  *v19 = a3;
  v19[1] = a4;
  v20 = &v18[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID];
  *v20 = a5;
  v20[1] = a6;
  v21 = &v18[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier];
  *v21 = a7;
  v21[1] = a8;
  v18[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_test_shouldLoadContactData] = a9;
  v23.receiver = v18;
  v23.super_class = v9;
  return objc_msgSendSuper2(&v23, sel_init);
}

id ASCPublicKeyAccountRegistrationOptions.init(acceptedContactIdentifiers:shouldRequestName:challenge:userID:relyingPartyIdentifier:test_shouldLoadContactData:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *&v9[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers] = a1;
  v9[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_shouldRequestName] = a2;
  v10 = &v9[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge];
  *v10 = a3;
  v10[1] = a4;
  v11 = &v9[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID];
  *v11 = a5;
  v11[1] = a6;
  v12 = &v9[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier];
  *v12 = a7;
  v12[1] = a8;
  v9[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_test_shouldLoadContactData] = a9;
  v14.receiver = v9;
  v14.super_class = type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
  return objc_msgSendSuper2(&v14, sel_init);
}

id ASCPublicKeyAccountRegistrationOptions.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C20D36A0();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C2170174();
    v6 = v5;

    sub_1C216FCE4();
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C2125820(&qword_1EBF24278, &protocol conformance descriptor for ASCPublicKeyAccountRegistrationOptions);
    sub_1C216FCC4();

    v15 = v33;
    v16 = *(v33 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers);
    v30 = *(v33 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_shouldRequestName);
    v17 = *(v33 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge + 8);
    v18 = *(v33 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID);
    v19 = *(v33 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID + 8);
    v20 = *(v33 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier + 8);
    v28 = *(v33 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier);
    v29 = *(v33 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge);
    v31 = a1;
    v21 = type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers] = v16;
    v22[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_shouldRequestName] = v30;
    v23 = &v22[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge];
    *v23 = v29;
    v23[1] = v17;
    v24 = &v22[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID];
    *v24 = v18;
    v24[1] = v19;
    v25 = &v22[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier];
    *v25 = v28;
    v25[1] = v20;
    v22[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_test_shouldLoadContactData] = 1;
    sub_1C20D865C(v29, v17);
    sub_1C20D865C(v18, v19);
    sub_1C20D865C(v29, v17);
    sub_1C20D865C(v18, v19);
    v32.receiver = v22;
    v32.super_class = v21;

    v26 = objc_msgSendSuper2(&v32, sel_init);
    sub_1C20D3174(v4, v6);

    sub_1C20D3174(v18, v19);
    sub_1C20D3174(v29, v17);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v26;
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v7 = sub_1C21705A4();
    __swift_project_value_buffer(v7, qword_1EDD4CB08);
    v8 = sub_1C2170584();
    v9 = sub_1C2170C54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136446210;
      v12 = sub_1C21714E4();
      v14 = sub_1C20D7F2C(v12, v13, &v33);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1C20AD000, v8, v9, "Could not find encoded json for %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x1C6915360](v11, -1, -1);
      MEMORY[0x1C6915360](v10, -1, -1);
    }

    else
    {
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1C2124ACC(void *a1)
{
  sub_1C216FD44();
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
  sub_1C2125820(&qword_1EBF24280, &protocol conformance descriptor for ASCPublicKeyAccountRegistrationOptions);
  v2 = sub_1C216FD24();
  v4 = v3;

  v5 = sub_1C2170154();
  v6 = sub_1C21708F4();
  [a1 encodeObject:v5 forKey:v6];

  return sub_1C20D3174(v2, v4);
}

id ASCPublicKeyAccountRegistrationOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C2124E24()
{
  v1 = *v0;
  v2 = 0x676E656C6C616863;
  v3 = 0x444972657375;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
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

uint64_t sub_1C2124EF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2125ECC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2124F18(uint64_t a1)
{
  v2 = sub_1C2125860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2124F54(uint64_t a1)
{
  v2 = sub_1C2125860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPublicKeyAccountRegistrationOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C212503C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24288, &unk_1C2179A58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2125860();
  sub_1C2171484();
  v13 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers);
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23DD0, &qword_1C2178F90);
  sub_1C21258B4(&qword_1EBF242A0, sub_1C21169B4, MEMORY[0x1E69E6300]);
  sub_1C2171294();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1C2171284();
    v9 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge + 8);
    v13 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge);
    v14 = v9;
    v15 = 2;
    sub_1C20D865C(v13, v9);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v13, v14);
    v10 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID + 8);
    v13 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID);
    v14 = v10;
    v15 = 3;
    sub_1C20D865C(v13, v10);
    sub_1C2171294();
    sub_1C20D3174(v13, v14);
    LOBYTE(v13) = 4;
    sub_1C2171274();
    LOBYTE(v13) = 5;
    sub_1C2171284();
  }

  return (*(v6 + 8))(v8, v5);
}

void *ASCPublicKeyAccountRegistrationOptions.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF242A8, &qword_1C2179A68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2125860();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23DD0, &qword_1C2178F90);
    v16 = 0;
    sub_1C21258B4(&qword_1EBF23E20, sub_1C2116BB8, MEMORY[0x1E69E6330]);
    sub_1C21711D4();
    *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers) = v15;
    LOBYTE(v15) = 1;
    *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_shouldRequestName) = sub_1C21711C4() & 1;
    v16 = 2;
    sub_1C20D8E24();
    sub_1C21711D4();
    *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge) = v15;
    v16 = 3;
    sub_1C21711D4();
    *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID) = v15;
    LOBYTE(v15) = 4;
    v10 = sub_1C21711B4();
    v11 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier);
    *v11 = v10;
    v11[1] = v12;
    LOBYTE(v15) = 5;
    *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_test_shouldLoadContactData) = sub_1C21711C4() & 1;
    v13 = type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
    v14.receiver = v1;
    v14.super_class = v13;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void *sub_1C21257A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPublicKeyAccountRegistrationOptions());
  result = ASCPublicKeyAccountRegistrationOptions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C2125820(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2125860()
{
  result = qword_1EBF24290;
  if (!qword_1EBF24290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24290);
  }

  return result;
}

uint64_t sub_1C21258B4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF23DD0, &qword_1C2178F90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2125930()
{
  result = qword_1EBF242B8;
  if (!qword_1EBF242B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF242B8);
  }

  return result;
}

unint64_t sub_1C2125B60()
{
  result = qword_1EBF242C8;
  if (!qword_1EBF242C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF242C8);
  }

  return result;
}

unint64_t sub_1C2125BB8()
{
  result = qword_1EBF242D0;
  if (!qword_1EBF242D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF242D0);
  }

  return result;
}

unint64_t sub_1C2125C10()
{
  result = qword_1EBF242D8;
  if (!qword_1EBF242D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF242D8);
  }

  return result;
}

unint64_t sub_1C2125C68()
{
  result = qword_1EBF242E0;
  if (!qword_1EBF242E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF242E0);
  }

  return result;
}

unint64_t sub_1C2125CC0()
{
  result = qword_1EBF242E8;
  if (!qword_1EBF242E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF242E8);
  }

  return result;
}

unint64_t sub_1C2125D18()
{
  result = qword_1EBF242F0;
  if (!qword_1EBF242F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF242F0);
  }

  return result;
}

unint64_t sub_1C2125D70()
{
  result = qword_1EBF242F8;
  if (!qword_1EBF242F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF242F8);
  }

  return result;
}

unint64_t sub_1C2125DC8()
{
  result = qword_1EBF24300;
  if (!qword_1EBF24300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24300);
  }

  return result;
}

unint64_t sub_1C2125E20()
{
  result = qword_1EBF24308;
  if (!qword_1EBF24308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24308);
  }

  return result;
}

unint64_t sub_1C2125E78()
{
  result = qword_1EBF24310;
  if (!qword_1EBF24310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF24310);
  }

  return result;
}

uint64_t sub_1C2125ECC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001C2185A30 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C2185A50 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xE900000000000065 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C2186400 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C2186420 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1C2171324();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1C21260D8()
{
  v1 = *(v0 + 32);
  if (v1 && *(v1 + 16) && (v2 = sub_1C2121F88(30325, 0xE200000000000000), (v3 & 1) != 0))
  {
    return ~*(*(v1 + 56) + v2) & 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1C212612C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24350, &qword_1C217A0E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C21272A0();
  sub_1C2171484();
  *&v12 = *v3;
  v11[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
  sub_1C20FD358(&qword_1EBF239E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1C2171294();
  if (!v2)
  {
    *&v12 = *(v3 + 8);
    v11[0] = 1;
    sub_1C2171264();
    v12 = *(v3 + 16);
    v13 = v12;
    v11[23] = 2;
    sub_1C2127360(&v13, v11);
    sub_1C20D8CEC();
    sub_1C2171294();
    sub_1C20D3174(v12, *(&v12 + 1));
    *&v12 = *(v3 + 32);
    v11[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24330, &qword_1C217A0D0);
    sub_1C21273BC(&qword_1EBF24358, MEMORY[0x1E69E6160], MEMORY[0x1E69E6378], MEMORY[0x1E69E5E38]);
    sub_1C2171264();
    LOBYTE(v12) = 4;
    sub_1C2171254();
    *&v12 = *(v3 + 56);
    v11[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24340, &qword_1C217A0D8);
    sub_1C21272F4(&qword_1EBF24360, MEMORY[0x1E69E6818], MEMORY[0x1E69E6300]);
    sub_1C2171264();
    *&v12 = *(v3 + 64);
    v11[0] = 6;
    sub_1C2171264();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C21264D8()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C217A238[v1]);
  return sub_1C2171454();
}

uint64_t sub_1C2126560(uint64_t a1)
{
  v2 = *v1;
  sub_1C2171434();
  MEMORY[0x1C69146F0](qword_1C217A238[v2]);
  return sub_1C2171454();
}

uint64_t sub_1C21265AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B0DBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C21265F0()
{
  v1 = *v0;
  v2 = 0x736E6F6973726576;
  v3 = 0x6F746F72506E6970;
  if (v1 != 5)
  {
    v3 = 0x726F70736E617274;
  }

  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 0x617373654D78616DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F69736E65747865;
  if (v1 != 1)
  {
    v5 = 0x646975676161;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1C21266E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2126A74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2126728@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B0DBC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C2126750(uint64_t a1)
{
  v2 = sub_1C21272A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C212678C(uint64_t a1)
{
  v2 = sub_1C21272A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1C21267C8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1C2126CD0(a2, v6);
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

BOOL sub_1C2126834(uint64_t a1, uint64_t a2)
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
  return sub_1C212695C(v7, v9);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C21268B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C21268FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1C212695C(uint64_t a1, uint64_t a2)
{
  if ((sub_1C21546B8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || (sub_1C21546B8(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_1C21068CC(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    if (v6)
    {
      if (!v7)
      {
        return 0;
      }

      v8 = sub_1C213A9A8(v6, v7);

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    v9 = *(a2 + 48);
    if (*(a1 + 48))
    {
      if (!*(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 40) != *(a2 + 40))
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    v10 = *(a1 + 56);
    v11 = *(a2 + 56);
    if (v10)
    {
      if (!v11 || (sub_1C2154848(v10, v11) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    v12 = *(a1 + 64);
    v13 = *(a2 + 64);
    if (v12)
    {
      return v13 && (sub_1C21546B8(v12, v13) & 1) != 0;
    }

    if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C2126A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6973726576 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEA0000000000736ELL || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646975676161 && a2 == 0xE600000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1C2171324() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617373654D78616DLL && a2 == 0xEE00657A69536567 || (sub_1C2171324() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F746F72506E6970 && a2 == 0xEC000000736C6F63 || (sub_1C2171324() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F70736E617274 && a2 == 0xEA00000000007374)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C2171324();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}