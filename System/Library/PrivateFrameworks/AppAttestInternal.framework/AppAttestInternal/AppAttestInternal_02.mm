const char *sub_2261A0CF4()
{
  v1 = "modernization";
  if (*v0 != 1)
  {
    v1 = "mac";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "extensionAttestation";
  }
}

uint64_t sub_2261A0D3C(char a1)
{
  v2 = sub_2261E3CDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = j__getpid();
  v7 = sub_2261A0BA4(v6);
  if (!v8)
  {
    goto LABEL_7;
  }

  if (v7 != 0xD000000000000010 || v8 != 0x80000002261EB2D0)
  {
    v9 = sub_2261E425C();

    if (v9)
    {
      goto LABEL_6;
    }

LABEL_7:
    v15[3] = &type metadata for FeatureFlags;
    v15[4] = sub_2261A0F00();
    LOBYTE(v15[0]) = a1;
    v12 = sub_2261E3C7C();
    __swift_destroy_boxed_opaque_existential_0(v15);
    return v12 & 1;
  }

LABEL_6:
  v10 = sub_2261A5280();
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_2261E3FEC();
  sub_2261A4EAC(v11, 0xD000000000000035, 0x80000002261EB2F0, 0xD00000000000004BLL, 0x80000002261EB330, 46);
  (*(v3 + 8))(v5, v2);
  v12 = 1;
  return v12 & 1;
}

unint64_t sub_2261A0F00()
{
  result = qword_27D78DF68;
  if (!qword_27D78DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DF68);
  }

  return result;
}

unint64_t sub_2261A0F58()
{
  result = qword_27D78DF70;
  if (!qword_27D78DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DF70);
  }

  return result;
}

id sub_2261A0FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC17AppAttestInternal18SecurityController_logger;
  v11 = sub_2261A50C0();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v9[v10], v11, v12);
  *&v9[OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___secTask] = 1;
  *&v9[OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___selfSecTask] = 1;
  v13 = &v9[OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_2261A10B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  error[1] = *MEMORY[0x277D85DE8];
  v9 = sub_2261E406C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v38 - v11;
  if (a3)
  {
    v13 = sub_2261A15F0();
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = sub_2261A1668();
    if (v13)
    {
LABEL_3:
      error[0] = 0;
      v14 = sub_2261E3DAC();
      v15 = SecTaskCopyValueForEntitlement(v13, v14, error);

      v40 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF78, &qword_2261E6930);
      if (swift_dynamicCast())
      {

        v16 = *(a4 - 8);
        v17 = *(v16 + 56);
        v17(v12, 0, 1, a4);
        v18 = v39;
        (*(v16 + 32))(v39, v12, a4);
        return (v17)(v18, 0, 1, a4);
      }

      else
      {
        v25 = *(a4 - 8);
        v26 = *(v25 + 56);
        v38[2] = v25 + 56;
        v26(v12, 1, 1, a4);
        (*(v10 + 8))(v12, v9);
        if (error[0])
        {
          v27 = error[0];
          v40 = v27;
          type metadata accessor for CFError(0);
          sub_2261A2790();
          v28 = v26;
          v29 = sub_2261E429C();
          v31 = v30;

          v38[1] = OBJC_IVAR____TtC17AppAttestInternal18SecurityController_logger;
          LOBYTE(v27) = sub_2261E3FFC();
          v40 = 0;
          v41 = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD000000000000035, 0x80000002261EB380);
          MEMORY[0x22AA782B0](a1, a2);
          MEMORY[0x22AA782B0](0x3D726F727265202CLL, 0xE800000000000000);
          v32 = v29;
          v26 = v28;
          MEMORY[0x22AA782B0](v32, v31);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v33 = v40;
          v34 = v27;
          v35 = v41;
          v36 = 42;
        }

        else
        {
          v37 = sub_2261E3FFC();
          v40 = 0;
          v41 = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD000000000000035, 0x80000002261EB380);
          MEMORY[0x22AA782B0](a1, a2);
          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v33 = v40;
          v34 = v37;
          v35 = v41;
          v36 = 44;
        }

        sub_2261A4EAC(v34, v33, v35, 0xD00000000000006FLL, 0x80000002261EB3C0, v36);

        return (v26)(v39, 1, 1, a4);
      }
    }
  }

  v20 = sub_2261E3CBC();
  v21 = sub_2261E3FFC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_226177000, v20, v21, "Cannot fetch entitlement, SecTask is nil.", v22, 2u);
    MEMORY[0x22AA792E0](v22, -1, -1);
  }

  v23 = *(*(a4 - 8) + 56);
  v24 = v39;

  return v23(v24, 1, 1, a4);
}

SecTaskRef sub_2261A15F0()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___selfSecTask;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___selfSecTask);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_2261A27E8(v4);
  }

  sub_2261A27F8(v2);
  return v3;
}

SecTaskRef sub_2261A1668()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___secTask;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController____lazy_storage___secTask);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken + 16);
    *v8.val = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken);
    *&v8.val[4] = v4;
    v3 = SecTaskCreateWithAuditToken(0, &v8);
    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_2261A27E8(v5);
  }

  sub_2261A27F8(v2);
  return v3;
}

BOOL sub_2261A16F8()
{
  v0 = sub_2261A1668();
  if (v0)
  {
    v1 = v0;
    if (SecTaskEntitlementsValidated())
    {

      return 1;
    }

    else
    {
      CodeSignStatus = SecTaskGetCodeSignStatus(v1);
      v7 = *sub_2261A07E0();

      v9 = (~CodeSignStatus & 0x14002000) == 0 || (CodeSignStatus & 0x4002001) == 67117057;
      if (v7 == 1)
      {
        return v9;
      }

      else
      {
        return (CodeSignStatus & 0x4002001) == 67117057;
      }
    }
  }

  else
  {
    v3 = sub_2261E3CBC();
    v4 = sub_2261E3FFC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_226177000, v3, v4, "Cannot check security controls, SecTask is nil.", v5, 2u);
      MEMORY[0x22AA792E0](v5, -1, -1);
    }

    return 0;
  }
}

char *sub_2261A180C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2261E3E2C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2261E3E1C();
  sub_2261E3DFC();
  if (v4)
  {
    v5 = 0xD00000000000006FLL;
    v6 = "ain data to String format.";
    v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v8 = sub_2261A26A0(0xD000000000000041, 0x80000002261EB470, 0);
    if (v2)
    {
    }

    else
    {
      v10 = v8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF80, &qword_2261E6938);
      sub_2261A2808();
      sub_22619C8E8();
      v11 = sub_2261E405C();
      v13 = v12;
      v14 = sub_2261E3DAC();
      v46 = v10;
      v15 = [v10 matchesInString:v14 options:0 range:{v11, v13}];

      sub_2261A286C();
      v16 = sub_2261E3F2C();

      v17 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        goto LABEL_48;
      }

      v52 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        while (1)
        {

          v18 = MEMORY[0x277D84F90];
          if (v52)
          {
            v19 = 0;
            v51 = v16 & 0xC000000000000001;
            do
            {
              v5 = v19;
              while (1)
              {
                if (v51)
                {
                  v20 = MEMORY[0x22AA78540](v5, v16);
                }

                else
                {
                  if (v5 >= *(v17 + 16))
                  {
                    goto LABEL_44;
                  }

                  v20 = *(v16 + 8 * v5 + 32);
                }

                v21 = v20;
                v19 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
                  __break(1u);
LABEL_44:
                  __break(1u);
LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

                v22 = [v20 numberOfRanges];
                if (v22 < 1)
                {
                  goto LABEL_45;
                }

                if (v22 != 1)
                {
                  break;
                }

                ++v5;
                if (v19 == v52)
                {
                  goto LABEL_28;
                }
              }

              v23 = v22;
              v5 = 1;
              v47 = v17;
              v48 = v16;
              do
              {
                [v21 rangeAtIndex_];
                sub_2261E3FCC();
                if ((v25 & 1) == 0)
                {
                  v26 = sub_2261E3EDC();
                  v27 = MEMORY[0x22AA78280](v26);
                  v29 = v28;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v18 = sub_2261986A4(0, *(v18 + 2) + 1, 1, v18);
                  }

                  v30 = v18;
                  v31 = *(v18 + 2);
                  v32 = v30;
                  v33 = *(v30 + 3);
                  if (v31 >= v33 >> 1)
                  {
                    v32 = sub_2261986A4((v33 > 1), v31 + 1, 1, v32);
                  }

                  *(v32 + 2) = v31 + 1;
                  v24 = &v32[16 * v31];
                  v18 = v32;
                  *(v24 + 4) = v27;
                  *(v24 + 5) = v29;
                  v16 = v48;
                  v17 = v47;
                }

                ++v5;
              }

              while (v23 != v5);
            }

            while (v19 != v52);
          }

LABEL_28:

          swift_bridgeObjectRelease_n();
          v6 = MEMORY[0x277D84F90];
          v54 = MEMORY[0x277D84F90];
          v34 = *(v18 + 2);
          if (!v34)
          {
            break;
          }

          v35 = v18;
          v36 = 0;
          v53 = *MEMORY[0x277CBECE8];
          v37 = v35 + 40;
          v17 = 10;
          v49 = v35 + 40;
LABEL_30:
          v50 = v6;
          v38 = &v37[16 * v36];
          v16 = v36;
          while (v16 < v34)
          {
            v36 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_47;
            }

            sub_2261E408C();
            v5 = sub_2261E3B5C();
            v40 = v39;

            if (v40 >> 60 != 15)
            {
              v41 = sub_2261E3B8C();
              v42 = SecCertificateCreateWithData(v53, v41);

              if (v42)
              {
                v43 = v42;
                MEMORY[0x22AA78330]();
                if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2261E3F3C();
                }

                sub_2261E3F4C();
                sub_2261A28B8(v5, v40);

                v6 = v54;

                v37 = v49;
                v17 = 10;
                if (v36 != v34)
                {
                  goto LABEL_30;
                }

                goto LABEL_42;
              }

              sub_2261A28B8(v5, v40);
              v17 = 10;
            }

            ++v16;
            v38 += 16;
            if (v36 == v34)
            {
              v6 = v50;
              goto LABEL_42;
            }
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          if (!sub_2261E416C())
          {
            goto LABEL_50;
          }

          v52 = sub_2261E416C();
        }

LABEL_42:
      }

      else
      {
LABEL_50:

        v44 = sub_2261E3FFC();
        sub_2261A4EAC(v44, v5 - 78, 0x80000002261EB4C0, 0xD00000000000006FLL, 0x80000002261EB3C0, 101);

        return 0;
      }
    }
  }

  else
  {
    v9 = sub_2261E3FFC();
    sub_2261A4EAC(v9, 0xD00000000000003ALL, 0x80000002261EB430, 0xD00000000000006FLL, 0x80000002261EB3C0, 91);
    return 0;
  }

  return v6;
}

BOOL sub_2261A1E9C(__SecTrust *a1, uint64_t a2, uint64_t a3)
{
  error[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2261E3DAC();
  v5 = sub_2261E3DAC();
  v6 = sub_2261E3DAC();
  AppleSSLPinned = SecPolicyCreateAppleSSLPinned();

  if (!AppleSSLPinned)
  {
    v16 = sub_2261E3FFC();
    sub_2261A4EAC(v16, 0xD000000000000024, 0x80000002261EB530, 0xD00000000000006FLL, 0x80000002261EB3C0, 142);
    return 0;
  }

  v8 = SecTrustSetPolicies(a1, AppleSSLPinned);
  if (v8 != sub_2261E3CEC())
  {
    v17 = sub_2261E3FFC();
    sub_2261E410C();

    LODWORD(error[0]) = v8;
    v18 = sub_2261E423C();
    MEMORY[0x22AA782B0](v18);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v17, 0xD00000000000002ALL, 0x80000002261EB560, 0xD00000000000006FLL, 0x80000002261EB3C0, 148);

    return 0;
  }

  error[0] = 0;
  v9 = SecTrustEvaluateWithError(a1, error);
  if (error[0])
  {
    v10 = error[0];
    v11 = CFErrorCopyDescription(v10);
    if (v11)
    {
      v12 = v11;
      v13 = sub_2261E3DDC();
      v15 = v14;
    }

    else
    {
      v15 = 0xEE006E6F69747069;
      v13 = 0x7263736564206F4ELL;
    }

    v22 = sub_2261E3FFC();
    sub_2261E410C();

    MEMORY[0x22AA782B0](v13, v15);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v22, 0xD00000000000002BLL, 0x80000002261EB5B0, 0xD00000000000006FLL, 0x80000002261EB3C0, 157);

    return 0;
  }

  v19 = v9;
  if (!v9)
  {
    v20 = sub_2261E3FEC();
    sub_2261A4EAC(v20, 0xD00000000000001DLL, 0x80000002261EB590, 0xD00000000000006FLL, 0x80000002261EB3C0, 162);
  }

  return v19;
}

unint64_t sub_2261A2234()
{
  v1 = v0;
  v20 = *MEMORY[0x277D85DE8];
  v2 = sub_2261E433C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken + 16);
  *atoken.val = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18SecurityController_auditToken);
  *&atoken.val[4] = v6;
  audit_token_to_pid(&atoken);
  memset(v16, 0, sizeof(v16));
  v7 = csops();
  if (v7 == sub_2261E3CEC())
  {
    *&atoken.val[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF90, &qword_2261E6948);
    *atoken.val = *v16;
    atoken.val[4] = *&v16[16];
    sub_2261E431C();
    sub_2261E432C();
    (*(v3 + 8))(v5, v2);
    v8 = sub_2261E414C();

    v9 = sub_2261A28CC(v16, v8);
    sub_22619DC94(&v16[20], v17);
  }

  else
  {
    v10 = sub_2261E3FFC();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD000000000000021;
    *&atoken.val[2] = 0x80000002261EB5E0;
    v18 = strerror(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF88, &qword_2261E6940);
    v11 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v11);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v10, *atoken.val, *&atoken.val[2], 0xD00000000000006FLL, 0x80000002261EB3C0, 179);

    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_2261E410C();

    *atoken.val = 0xD000000000000021;
    *&atoken.val[2] = 0x80000002261EB5E0;
    v18 = strerror(v7);
    v12 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v12);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v9 = *atoken.val;
    v13 = *&atoken.val[2];
    sub_22619C7B4();
    swift_allocError();
    *v14 = v9;
    *(v14 + 8) = v13;
    *(v14 + 16) = 1;
    swift_willThrow();
  }

  return v9;
}

id sub_2261A2594()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2261A2658()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_2261E3BBC();

  return v2;
}

id sub_2261A26A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2261E3DAC();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2261E3AEC();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_2261A2790()
{
  result = qword_28136E218;
  if (!qword_28136E218)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E218);
  }

  return result;
}

void sub_2261A27E8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_2261A27F8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_2261A2808()
{
  result = qword_28136E220;
  if (!qword_28136E220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DF80, &qword_2261E6938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E220);
  }

  return result;
}

unint64_t sub_2261A286C()
{
  result = qword_28136E1C8;
  if (!qword_28136E1C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1C8);
  }

  return result;
}

uint64_t sub_2261A28B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22619C840(result, a2);
  }

  return result;
}

unint64_t sub_2261A28CC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22619DC94(a1, &a1[a2]);
  }

  sub_2261E3A9C();
  swift_allocObject();
  sub_2261E3A5C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_2261E3B6C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for SecurityController(uint64_t a1)
{
  result = qword_28136EF28;
  if (!qword_28136EF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261A29D0(uint64_t a1)
{
  result = sub_2261E3CDC();
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2261A2A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2261A2AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

char *sub_2261A2BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController_logger;
  v10 = sub_2261A5088();
  v11 = sub_2261E3CDC();
  (*(*(v11 - 8) + 16))(&v8[v9], v10, v11);
  *&v8[OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___securityController] = 0;
  *&v8[OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache] = 0;
  *&v8[OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes] = 0;
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  return v8;
}

double sub_2261A2CB8@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_2261A2DC0(a2);
  v5 = v4;
  v6 = sub_2261A37AC();
  if (v6 && (v7 = v6, v8 = [v6 teamIdentifier], v7, v8))
  {
    v9 = sub_2261E3DDC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (sub_2261A30F4() == 4)
  {
    v12 = sub_2261A33B4(1);
    v14 = v13;
    v15 = v3;
    v16 = v5;
    v17 = v9;
    v18 = v11;
  }

  else
  {
    v15 = v3;
    v16 = v5;
    v17 = v9;
    v18 = v11;
    v12 = 0;
    v14 = 0;
  }

  sub_2261A57C8(v15, v16, v17, v18, v12, v14, v22);
  result = *v22;
  v20 = v22[1];
  v21 = v22[2];
  *a1 = v22[0];
  a1[1] = v20;
  a1[2] = v21;
  return result;
}

id sub_2261A2DC0(uint64_t a1)
{
  v1 = sub_2261A30F4();
  if (v1 > 4)
  {
    if (v1 == 5)
    {
      if (sub_2261A30F4() == 5)
      {
        v10 = sub_2261A3CAC();
        v11 = MEMORY[0x277D837D0];
        v12 = isRunningInRecovery();
        sub_2261A10B4(0xD000000000000016, 0x80000002261EAE40, v12 & 1, v11, v19);

        if (v19[1])
        {
          return v19[0];
        }

        v6 = sub_2261E3CBC();
        v7 = sub_2261E3FFC();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_28;
        }

        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Failed to fetch Application Identifier.";
        goto LABEL_27;
      }

      v6 = sub_2261E3CBC();
      v7 = sub_2261E3FFC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Record type is not Daemon, cannot fetch bundle identifier.";
        goto LABEL_27;
      }

LABEL_28:

      return 0;
    }

    if (v1 != 6)
    {
LABEL_10:
      if ((sub_2261A30F4() - 3) >= 4u)
      {
        v13 = sub_2261A37AC();
        if (v13)
        {
          v14 = v13;
          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            v16 = [v15 bundleIdentifier];
            if (v16)
            {
              v17 = v16;
              v18 = sub_2261E3DDC();

              return v18;
            }

            return 0;
          }
        }

        v6 = sub_2261E3CBC();
        v7 = sub_2261E3FFC();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_28;
        }

        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Failed to cast record. { from=LSBundleRecord, to=LSApplicationExtensionRecord }";
        goto LABEL_27;
      }

      v6 = sub_2261E3CBC();
      v7 = sub_2261E3FFC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Record type is not App Extension, cannot fetch bundle identifier.";
LABEL_27:
        _os_log_impl(&dword_226177000, v6, v7, v9, v8, 2u);
        MEMORY[0x22AA792E0](v8, -1, -1);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else if (v1 != 3)
  {
    if (v1 == 4)
    {
      return sub_2261A33B4(0);
    }

    goto LABEL_10;
  }

  result = sub_2261A37AC();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result bundleIdentifier];

  if (v4)
  {
    v5 = sub_2261E3DDC();

    return v5;
  }

  return 0;
}

uint64_t sub_2261A30F4()
{
  v1 = v0;
  v2 = sub_2261A37AC();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 appClipMetadata];

      if (!v5)
      {
        return 3;
      }

      return 4;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 extensionPointRecord];
      v9 = [v8 name];
      v10 = sub_2261E3DDC();
      v12 = v11;

      if (*(sub_2261A3C14() + 16))
      {
        sub_2261A48EC(v10, v12);
        v14 = v13;

        if (v14)
        {
          v15 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes);
          if (!*(v15 + 16))
          {

            return 2;
          }

          v16 = sub_2261A48EC(v10, v12);
          v18 = v17;

          if (v18)
          {
            v19 = *(*(v15 + 56) + v16);

            return v19;
          }
        }
      }

      else
      {
      }

      return 2;
    }
  }

  v20 = sub_2261A3CAC();
  v21 = MEMORY[0x277D839B0];
  v22 = isRunningInRecovery();
  sub_2261A10B4(0xD000000000000023, 0x80000002261EADE0, v22 & 1, v21, &v23);

  if (v23 == 2 || (v23 & 1) == 0)
  {
    return 6;
  }

  else
  {
    return 5;
  }
}

BOOL sub_2261A3324(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      return a2 == 3;
    }

    if (a1 == 4)
    {
      return a2 == 4;
    }

LABEL_10:
    if (a2 - 3 >= 4)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 != 5)
  {
    if (a1 == 6)
    {
      return a2 == 6;
    }

    goto LABEL_10;
  }

  return a2 == 5;
}

uint64_t sub_2261A33B4(char a1)
{
  v27[3] = *MEMORY[0x277D85DE8];
  if (sub_2261A30F4() != 4)
  {
    v3 = sub_2261E3CBC();
    v14 = sub_2261E3FFC();
    if (os_log_type_enabled(v3, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Record type is not App Clip, cannot fetch bundle identifier.";
LABEL_20:
      _os_log_impl(&dword_226177000, v3, v14, v16, v15, 2u);
      MEMORY[0x22AA792E0](v15, -1, -1);
    }

LABEL_21:

    return 0;
  }

  v2 = sub_2261A37AC();
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 appClipMetadata];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 parentApplicationIdentifiers];
          v8 = sub_2261E3F2C();

          v9 = *(v8 + 16);
          if (v9)
          {
            v10 = 0;
            v11 = v8 + 40;
            while (1)
            {
              if (v10 >= *(v8 + 16))
              {
                __break(1u);
              }

              v27[2] = 0;

              v12 = sub_2261E3DAC();

              v13 = CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();

              if (v13)
              {
                break;
              }

              ++v10;
              v11 += 16;
              if (v9 == v10)
              {
                goto LABEL_11;
              }
            }
          }

          else
          {
LABEL_11:
          }

          return 0;
        }

        v20 = sub_2261E3CBC();
        v21 = sub_2261E3FFC();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v27[0] = v23;
          *v22 = 136315138;
          v24 = sub_2261A052C();
          v26 = sub_2261A4344(v24, v25, v27);

          *(v22 + 4) = v26;
          _os_log_impl(&dword_226177000, v20, v21, "Record does not contain App Clip metadata. { auditToken=%s }", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x22AA792E0](v23, -1, -1);
          MEMORY[0x22AA792E0](v22, -1, -1);
        }

        goto LABEL_21;
      }
    }

    v3 = sub_2261E3CBC();
    v14 = sub_2261E3FFC();
    if (os_log_type_enabled(v3, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Failed to cast record. { from=LSBundleRecord, to=LSApplicationRecord }";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v2)
  {
    v17 = [v2 bundleIdentifier];

    if (v17)
    {
      v18 = sub_2261E3DDC();

      return v18;
    }
  }

  return 0;
}

id sub_2261A37AC()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = sub_2261A0778();
  if (sub_2261A078C(v6, v7, v8, v9, v2, v3, v4, v5))
  {
    return 0;
  }

  v11 = sub_2261A40FC();
  sub_2261A052C();
  v12 = sub_2261E3DAC();

  v13 = [v11 objectForKey_];

  result = v13;
  if (!v13)
  {
    sub_2261A4964();
    result = sub_2261A4170(v1[2], v1[3], v1[4], v1[5]);
    if (result)
    {
      v14 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache);
      v15 = result;
      v16 = v14;
      sub_2261A052C();
      v17 = sub_2261E3DAC();

      [v16 setObject:v15 forKey:v17];

      return v15;
    }
  }

  return result;
}

uint64_t sub_2261A3908(uint64_t a1, uint64_t a2)
{
  v2 = sub_2261E3DAC();
  CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();

  return 0;
}

id sub_2261A3B2C(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2261E3DAC();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_2261E3AEC();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_2261A3C14()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___allowlistedThirdPartyAppExtensionTypes);
  }

  else
  {
    v2 = sub_2261A4DB0(&unk_28395C450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFB0, &qword_2261E6CA8);
    swift_arrayDestroy();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_2261A3CAC()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___securityController;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___securityController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___securityController);
  }

  else
  {
    type metadata accessor for SecurityController(0);
    v4 = v0;
    v5 = sub_2261A0FCC(v0[2], v0[3], v0[4], v0[5]);
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2261A3D28()
{
  result = sub_2261A37AC();
  if (result)
  {
    v1 = result;
    v2 = [result bundleVersion];

    if (v2)
    {
      v3 = sub_2261E3DDC();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2261A3DA0()
{
  v0 = sub_2261A37AC();
  if (v0)
  {
    v1 = v0;
    v2 = 0;
    v3 = 1 << sub_2261A30F4();
    if ((v3 & 0x74) == 0)
    {
      if ((v3 & 3) != 0)
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {
          v5 = sub_2261E3FFC();
          sub_2261A4EAC(v5, 0xD00000000000004DLL, 0x80000002261EB8E0, 0xD000000000000073, 0x80000002261EB860, 182);
LABEL_9:
          v2 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v2 = [v4 isProfileValidated];
    }

LABEL_10:

    return v2;
  }

  return 0;
}

id sub_2261A3EC0(SEL *a1)
{
  v2 = sub_2261A37AC();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 *a1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_2261A3F34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 4)
  {
    if (v2 != 5)
    {
      if (v2 == 6)
      {
        return v3 == 6;
      }

LABEL_10:
      if ((v3 - 3) >= 4)
      {
        return v2 == v3;
      }

      return 0;
    }

    if (v3 == 5)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return v3 == 4;
      }

      goto LABEL_10;
    }

    if (v3 == 3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2261A3FB4()
{
  v1 = *v0;
  sub_2261E42EC();
  if ((v1 - 3) >= 4u)
  {
    MEMORY[0x22AA78720](2);
  }

  else
  {
    v1 = qword_2261E6CB8[(v1 - 3)];
  }

  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

uint64_t sub_2261A402C()
{
  v1 = *v0;
  if ((v1 - 3) >= 4u)
  {
    MEMORY[0x22AA78720](2);
  }

  else
  {
    v1 = qword_2261E6CB8[(v1 - 3)];
  }

  return MEMORY[0x22AA78720](v1);
}

uint64_t sub_2261A4088(uint64_t a1)
{
  v2 = *v1;
  sub_2261E42EC();
  if ((v2 - 3) >= 4u)
  {
    MEMORY[0x22AA78720](2);
  }

  else
  {
    v2 = qword_2261E6CB8[(v2 - 3)];
  }

  MEMORY[0x22AA78720](v2);
  return sub_2261E430C();
}

id sub_2261A40FC()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController____lazy_storage___recordCache);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2261A4170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_2261E3AEC();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_2261A4278()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal22BundleRecordController_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_2261A4344(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2261A4410(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_226198CB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2261A4410(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2261A451C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2261E412C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2261A451C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2261A4568(a1, a2);
  sub_2261A4698(&unk_28395C4A0);
  return v3;
}

void *sub_2261A4568(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2261A4784(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2261E412C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2261E3EAC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2261A4784(v10, 0);
        result = sub_2261E40FC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2261A4698(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2261A47F8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2261A4784(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E230, &qword_2261E8B80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2261A47F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E230, &qword_2261E8B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2261A48EC(uint64_t a1, uint64_t a2)
{
  sub_2261E42EC();
  sub_2261E3E6C();
  v4 = sub_2261E430C();

  return sub_2261A4CF8(a1, a2, v4);
}

unint64_t sub_2261A4964()
{
  result = qword_28136E1E8;
  if (!qword_28136E1E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1E8);
  }

  return result;
}

unint64_t sub_2261A49B4()
{
  result = qword_27D78DFA0;
  if (!qword_27D78DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DFA0);
  }

  return result;
}

unint64_t sub_2261A4A0C()
{
  result = qword_27D78DFA8;
  if (!qword_27D78DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DFA8);
  }

  return result;
}

uint64_t type metadata accessor for BundleRecordController(uint64_t a1)
{
  result = qword_28136EE60;
  if (!qword_28136EE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261A4AB4(uint64_t a1)
{
  result = sub_2261E3CDC();
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

uint64_t getEnumTagSinglePayload for BundleRecordController.RecordType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BundleRecordController.RecordType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2261A4CB4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2261A4CC8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_2261A4CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2261E425C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2261A4DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFB8, &qword_2261E6CB0);
    v3 = sub_2261E41CC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2261A48EC(v5, v6);
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

void sub_2261A4EAC(os_log_type_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = a4;
  v18[0] = a4;
  v18[1] = a5;
  sub_22619C8E8();
  v12 = (sub_2261E407C() + 16);
  if (*v12)
  {
    v13 = &v12[2 * *v12];
    v8 = *v13;
    v7 = v13[1];
  }

  else
  {
  }

  v14 = sub_2261E3CBC();
  if (os_log_type_enabled(v14, a1))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315650;
    v17 = sub_2261A4344(v8, v7, v18);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a6;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_2261A4344(a2, a3, v18);
    _os_log_impl(&dword_226177000, v14, a1, "%s.%ld      %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA792E0](v16, -1, -1);
    MEMORY[0x22AA792E0](v15, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2261A534C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_2261E3CDC();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_2261E3CCC();
}

uint64_t sub_2261A53C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_2261E3CDC();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2261A54B0()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    v7 = *(v0 + 1);
    if (!*(&v7 + 1) || (v7 == 0x3030303030303030 ? (v3 = *(&v7 + 1) == 0xEA00000000003030) : (v3 = 0), v3 || (sub_2261E425C() & 1) != 0))
    {
    }

    else
    {
      v6 = v7;

      sub_22619F854(&v7, &v5);
      MEMORY[0x22AA782B0](46, 0xE100000000000000);
      MEMORY[0x22AA782B0](v1, v2);

      return v6;
    }
  }

  return v1;
}

uint64_t sub_2261A5588()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (v2)
  {
    v7 = *(v0 + 16);
    if (!*(&v7 + 1) || (v7 == 0x3030303030303030 ? (v3 = *(&v7 + 1) == 0xEA00000000003030) : (v3 = 0), v3 || (sub_2261E425C() & 1) != 0))
    {
    }

    else
    {
      v6 = v7;

      sub_22619F854(&v7, &v5);
      MEMORY[0x22AA782B0](46, 0xE100000000000000);
      MEMORY[0x22AA782B0](v1, v2);

      return v6;
    }
  }

  return v1;
}

uint64_t sub_2261A5660()
{
  v1 = 7104878;
  sub_2261E410C();

  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x22AA782B0](v2, v3);

  MEMORY[0x22AA782B0](0x44496D616574202CLL, 0xE90000000000003DLL);
  if (v0[3])
  {
    v4 = v0[2];
    v5 = v0[3];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x22AA782B0](v4, v5);

  MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EB9F0);
  if (v0[5])
  {
    v1 = v0[4];
    v6 = v0[5];
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v1, v6);

  return 0x4449656C646E7562;
}

uint64_t sub_2261A57C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2261A57F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2261A584C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

char *sub_2261A58BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  type metadata accessor for KeychainController(0);
  v9 = sub_2261A2B48();
  v10 = *v9;
  v11 = v9[1];

  *(v8 + 6) = sub_2261DFDC8(v10, v11);
  *(v8 + 7) = 0;
  v12 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
  v13 = sub_2261A51D8();
  v14 = sub_2261E3CDC();
  (*(*(v14 - 8) + 16))(&v8[v12], v13, v14);
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  return v8;
}

void sub_2261A5998(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v88 = a3;
  v98[6] = *MEMORY[0x277D85DE8];
  v5 = sub_2261E406C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v70 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261A6578(a1, &v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  if (!swift_dynamicCast())
  {
    v26 = v88;
    *v88 = 0xD000000000000017;
    v26[1] = 0x80000002261EBA10;
    *(v26 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
LABEL_13:
    swift_storeEnumTagMultiPayload();
    return;
  }

  v13 = v90;
  v14 = HIDWORD(v90);
  v15 = v91;
  v16 = v95;
  if (v91)
  {
    goto LABEL_12;
  }

  v17 = HIBYTE(v93) & 0xF;
  if ((v93 & 0x2000000000000000) == 0)
  {
    v17 = v92 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v18 = v94 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_12:
    v86 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
    v27 = v93;
    v28 = v92;
    v29 = v94;
    LODWORD(v85) = sub_2261E3FEC();
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_2261E410C();

    v87 = v5;
    v30 = v88;
    v96 = 0xD000000000000027;
    v97 = 0x80000002261EBA30;
    LOBYTE(v90) = v13;
    HIDWORD(v90) = v14;
    LOBYTE(v91) = v15;
    v92 = v28;
    v93 = v27;
    v94 = v29;
    v95 = v16;
    sub_2261A65DC();
    v31 = sub_2261E423C();
    v33 = v32;

    MEMORY[0x22AA782B0](v31, v33);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v85, v96, v97, 0xD00000000000006ELL, 0x80000002261EBA60, 35);

    *v30 = 0xD000000000000024;
    v30[1] = 0x80000002261EBAD0;
    *(v30 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    goto LABEL_13;
  }

  v87 = v6;
  v86 = v10;
  v98[0] = v90 | (HIDWORD(v90) << 32);
  v98[1] = 0;
  v98[2] = v92;
  v98[3] = v93;
  v98[4] = v94;
  v98[5] = v95;
  v19 = v93;
  v85 = v92;
  v84 = v94;

  v20 = v14;
  v21 = v16;
  v22 = v89;
  v23 = sub_2261A6630(v98);
  v89 = v22;
  if (v22)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v34 = v24;
  v83 = v23;
  v82 = v20;
  v35 = v25;

  if ((v35 & 0x100) != 0)
  {

    v53 = v83;
    v90 = v83;
    v91 = v34;
    LOBYTE(v92) = v35 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v89 = swift_allocError();
    *v54 = v53;
    *(v54 + 8) = v34;
    *(v54 + 16) = v35 & 1;
  }

  else
  {
    v78 = v35;
    v81 = v34;
    v79 = v21;
    v80 = v19;
    v36 = objc_opt_self();
    v37 = sub_2261E435C();
    v90 = 0;
    v38 = [v36 archivedDataWithRootObject:v37 requiringSecureCoding:1 error:&v90];

    v39 = v90;
    if (v38)
    {
      v40 = sub_2261E3BBC();
      v42 = v41;

      v76 = v40;
      v77 = v42;
      v43 = sub_2261E3B8C();
      type metadata accessor for CFData(0);
      v45 = sub_2261E09C4(v43, v83, v81, v44);
      v47 = v46;
      v49 = v48;

      if ((v49 & 0x100) == 0)
      {
        v73 = v47;
        v72 = v45;
        if (v45)
        {
          v50 = v45;
          v51 = sub_2261E3BBC();
          v75 = v52;
          sub_2261795CC(v45, v47, v49, 0);
        }

        else
        {
          v51 = 0;
          v75 = 0xF000000000000000;
        }

        v58 = v86;
        v59 = v87;
        v74 = v49;
        v90 = v51;
        v91 = v75;
        v71 = v51;
        sub_2261A74CC(v51, v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC8, qword_2261E6D58);
        if (swift_dynamicCast())
        {

          v87 = v5;
          v85 = *(v58 + 56);
          v85(v9, 0, 1, a2);
          v60 = *(v58 + 32);
          v86 = v58 + 32;
          v60(v12, v9, a2);
          v84 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
          v61 = sub_2261E3FEC();
          v90 = 0;
          v91 = 0xE000000000000000;
          sub_2261E410C();
          MEMORY[0x22AA782B0](0xD000000000000021, 0x80000002261EBB60);
          v62 = v83;
          v63 = v81;
          MEMORY[0x22AA782B0](v83, v81);
          sub_22619C81C(v62, v63, v78, 0);
          MEMORY[0x22AA782B0](0x3D65756C6176202CLL, 0xE800000000000000);
          sub_2261E424C();
          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v61, v90, v91, 0xD00000000000006ELL, 0x80000002261EBA60, 50);
          sub_22619C840(v76, v77);
          sub_2261795CC(v72, v73, v74, 0);
          sub_2261A28B8(v71, v75);

          v64 = v88;
          v60(v88, v12, a2);
          v85(v64, 0, 1, a2);
        }

        else
        {
          sub_22619C81C(v83, v81, v78, 0);
          (*(v58 + 56))(v9, 1, 1, a2);
          (*(v59 + 8))(v9, v5);
          v87 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
          v65 = sub_2261E3FEC();
          v90 = 0;
          v91 = 0xE000000000000000;
          sub_2261E410C();
          v96 = v90;
          v97 = v91;
          MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EBB00);
          LOBYTE(v90) = v13;
          HIDWORD(v90) = v82;
          LOBYTE(v91) = 0;
          v92 = v85;
          v93 = v80;
          v94 = v84;
          v95 = v79;
          sub_2261A65DC();
          v66 = sub_2261E423C();
          v68 = v67;

          MEMORY[0x22AA782B0](v66, v68);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v65, v96, v97, 0xD00000000000006ELL, 0x80000002261EBA60, 46);

          sub_22619C840(v76, v77);
          sub_2261795CC(v72, v73, v74, 0);
          sub_2261A28B8(v71, v75);
          v69 = v88;
          *v88 = 0xD00000000000002CLL;
          v69[1] = 0x80000002261EBB30;
          *(v69 + 16) = 1;
        }

        sub_22619C7B4();
        sub_2261E434C();
        goto LABEL_13;
      }

      sub_22619C838(v45, v47);

      sub_22619C81C(v83, v81, v78, 0);
      v90 = v45;
      v91 = v47;
      LOBYTE(v92) = v49 & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      v89 = swift_allocError();
      *v57 = v45;
      *(v57 + 8) = v47;
      *(v57 + 16) = v49 & 1;
      sub_22619C840(v76, v77);
      sub_2261795CC(v45, v47, v49, 1);
    }

    else
    {
      v55 = v39;
      sub_22619C81C(v83, v81, v78, 0);

      v56 = sub_2261E3AEC();

      v89 = v56;
      swift_willThrow();
    }
  }
}

uint64_t sub_2261A6578(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2261A65DC()
{
  result = qword_28136E7E8[0];
  if (!qword_28136E7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136E7E8);
  }

  return result;
}

unint64_t sub_2261A6630(unint64_t *a1)
{
  v2 = a1[1];
  v94 = *a1;
  v93 = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v90 = sub_2261E3D3C();
  v91 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2261E3D2C();
  v92 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v89 = v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2261E3E2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
    return 0xD000000000000017;
  }

  v14 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v14 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return 0xD000000000000024;
  }

  v15 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v15 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    return 0xD000000000000024;
  }

  v87 = v5;
  v85 = v8;
  v16 = v94;
  v17 = HIDWORD(v94);
  v86 = v1;
  v18 = sub_2261A9864();
  sub_2261A2CB8(v101, v18);

  if (*(&v101[0] + 1) == 1)
  {
    goto LABEL_15;
  }

  v84 = v17;
  v102 = v101[0];
  v103 = v101[1];
  v104 = v101[2];
  v19 = sub_2261A54B0();
  if (!v20)
  {
    v105 = v102;
    sub_22619A7B4(&v105, &qword_27D78DE20, &unk_2261E6280);
    v106 = v103;
    sub_22619A7B4(&v106, &qword_27D78DE20, &unk_2261E6280);
    v107 = v104;
    sub_22619A7B4(&v107, &qword_27D78DE20, &unk_2261E6280);
    v16 = v94;
    LODWORD(v17) = v84;
LABEL_15:
    v26 = sub_2261E3FEC();
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v99 = 0xD000000000000019;
    v100 = 0x80000002261EBB90;
    LOBYTE(v96) = v16 & 1;
    DWORD1(v96) = v17;
    BYTE8(v96) = v93 & 1;
    *&v97 = v3;
    *(&v97 + 1) = v4;
    *&v98 = v87;
    *(&v98 + 1) = v6;
    sub_2261A65DC();
    v27 = sub_2261E423C();
    MEMORY[0x22AA782B0](v27);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v26, v99, v100, 0xD00000000000006ELL, 0x80000002261EBA60, 111);

    return 0xD000000000000016;
  }

  v81 = v19;
  sub_2261E3E1C();
  v83 = sub_2261E3DEC();
  v22 = v21;
  v23 = *(v11 + 8);
  v23(v13, v10);
  v82 = v22;
  if (v22 >> 60 == 15)
  {

    v24 = v87;
LABEL_20:
    v32 = sub_2261E3FEC();
    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_2261E410C();

    v99 = 0xD000000000000029;
    v100 = 0x80000002261EBBD0;
    LOBYTE(v96) = v94 & 1;
    DWORD1(v96) = v84;
    BYTE8(v96) = v93 & 1;
    *&v97 = v3;
    *(&v97 + 1) = v4;
    *&v98 = v24;
    *(&v98 + 1) = v6;
    sub_2261A65DC();
    v33 = sub_2261E423C();
    MEMORY[0x22AA782B0](v33);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v105 = v104;
    v106 = v103;
    v107 = v102;
    v96 = v102;
    v97 = v103;
    v98 = v104;
    sub_22619C894();
    v34 = sub_2261E423C();
    v36 = v35;
    sub_22619A7B4(&v107, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v106, &qword_27D78DE20, &unk_2261E6280);
    sub_22619A7B4(&v105, &qword_27D78DE20, &unk_2261E6280);
    MEMORY[0x22AA782B0](v34, v36);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v32, v99, v100, 0xD00000000000006ELL, 0x80000002261EBA60, 118);

    return 0xD000000000000026;
  }

  sub_2261E3E1C();
  v81 = sub_2261E3DEC();
  v29 = v28;

  v79 = v23;
  v23(v13, v10);
  v80 = v29;
  v24 = v87;
  if (v29 >> 60 == 15)
  {
LABEL_19:
    sub_2261A28B8(v83, v82);
    goto LABEL_20;
  }

  sub_2261E3E1C();
  v78 = sub_2261E3DEC();
  v31 = v30;
  v79(v13, v10);
  v77 = v31;
  if (v31 >> 60 == 15)
  {
    sub_2261A28B8(v81, v80);
    goto LABEL_19;
  }

  v105 = v102;
  sub_22619A7B4(&v105, &qword_27D78DE20, &unk_2261E6280);
  v106 = v103;
  sub_22619A7B4(&v106, &qword_27D78DE20, &unk_2261E6280);
  v107 = v104;
  sub_22619A7B4(&v107, &qword_27D78DE20, &unk_2261E6280);
  v37 = sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v38 = v88;
  v39 = v90;
  sub_2261E3D1C();
  v40 = v83;
  v41 = v82;
  sub_22619D8F4(v83, v82);
  sub_22619D714(v40, v41, v38);
  sub_2261A28B8(v40, v41);
  v42 = v89;
  sub_2261E3D0C();
  v43 = *(v91 + 8);
  v91 += 8;
  v95 = v43;
  v43(v38, v39);
  v44 = v85;
  *(&v97 + 1) = v85;
  v45 = sub_22619D948(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  *&v98 = v45;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v96);
  v47 = v92;
  v48 = *(v92 + 16);
  v87 = v92 + 16;
  v93 = v48;
  v48(boxed_opaque_existential_1, v42, v44);
  __swift_project_boxed_opaque_existential_0(&v96, *(&v97 + 1));
  v86 = sub_22619D680;
  sub_2261E3ADC();
  v84 = *(v47 + 8);
  v92 = v47 + 8;
  v84(v42, v44);
  v49 = v99;
  v50 = v100;
  __swift_destroy_boxed_opaque_existential_0(&v96);
  v79 = sub_2261E3B9C();
  v76 = v51;
  sub_22619C840(v49, v50);
  v73[1] = v37;
  sub_2261E3D1C();
  v52 = v81;
  v53 = v80;
  sub_22619D8F4(v81, v80);
  sub_22619D714(v52, v53, v38);
  sub_2261A28B8(v52, v53);
  sub_2261E3D0C();
  v95(v38, v39);
  *(&v97 + 1) = v44;
  *&v98 = v45;
  v54 = __swift_allocate_boxed_opaque_existential_1(&v96);
  v93(v54, v42, v44);
  __swift_project_boxed_opaque_existential_0(&v96, *(&v97 + 1));
  sub_2261E3ADC();
  v84(v42, v44);
  v55 = v99;
  v56 = v100;
  __swift_destroy_boxed_opaque_existential_0(&v96);
  v75 = sub_2261E3B9C();
  v74 = v57;
  sub_22619C840(v55, v56);
  sub_2261E3D1C();
  v58 = v78;
  v59 = v77;
  sub_22619D8F4(v78, v77);
  sub_22619D714(v58, v59, v38);
  sub_2261A28B8(v58, v59);
  sub_2261E3D0C();
  v95(v38, v39);
  *(&v97 + 1) = v44;
  *&v98 = v45;
  v60 = __swift_allocate_boxed_opaque_existential_1(&v96);
  v93(v60, v42, v44);
  __swift_project_boxed_opaque_existential_0(&v96, *(&v97 + 1));
  sub_2261E3ADC();
  v84(v42, v44);
  v61 = v99;
  v62 = v100;
  __swift_destroy_boxed_opaque_existential_0(&v96);
  v63 = sub_2261E3B9C();
  v65 = v64;
  sub_22619C840(v61, v62);
  *&v96 = 0;
  *(&v96 + 1) = 0xE000000000000000;
  sub_2261E410C();

  v66 = sub_2261A2B60();
  v68 = *v66;
  v67 = v66[1];
  *&v96 = v68;
  *(&v96 + 1) = v67;

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v79, v76);

  v69 = sub_22619C4AC(v94 & 1);
  MEMORY[0x22AA782B0](v69);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v75, v74);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  MEMORY[0x22AA782B0](v63, v65);

  MEMORY[0x22AA782B0](58, 0xE100000000000000);
  v70 = sub_2261A2B6C();
  v72 = *v70;
  v71 = v70[1];

  MEMORY[0x22AA782B0](v72, v71);

  sub_2261A28B8(v78, v77);
  sub_2261A28B8(v81, v80);
  sub_2261A28B8(v83, v82);
  return v96;
}

uint64_t sub_2261A74CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22619D8F4(result, a2);
  }

  return result;
}

uint64_t sub_2261A74E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v151 = a4;
  v128 = sub_2261E406C();
  v127 = *(v128 - 8);
  v8 = MEMORY[0x28223BE20](v128);
  v136 = v104 - v9;
  v139 = a3;
  v135 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v129 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2261E3D3C();
  v137 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2261E3D2C();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v131 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2261E3E2C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2261E406C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v104 - v19;
  (*(v18 + 16))(v104 - v19, a1, v17);
  if ((*(*(a2 - 8) + 48))(v20, 1, a2) == 1)
  {
    (*(v18 + 8))(v20, v17);
LABEL_14:
    v35 = v151;
    *v151 = 0xD000000000000017;
    v35[1] = 0x80000002261EBA10;
    *(v35 + 16) = 0;
    sub_22619C7B4();
    sub_2261E434C();
    return swift_storeEnumTagMultiPayload();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = *(&v146 + 1);
  v22 = *(&v147 + 1);
  v23 = HIBYTE(*(&v146 + 1)) & 0xFLL;
  if ((*(&v146 + 1) & 0x2000000000000000) == 0)
  {
    v23 = v146 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = HIBYTE(*(&v147 + 1)) & 0xFLL;
    if ((*(&v147 + 1) & 0x2000000000000000) == 0)
    {
      v24 = v147 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v125 = v147;
      v126 = v146;
      v25 = v145;
      v26 = DWORD1(v145);
      v27 = BYTE8(v145);
      v124 = v4;
      v28 = sub_2261A9864();
      sub_2261A2CB8(v144, v28);

      if (*(&v144[0] + 1) != 1)
      {
        v123 = v25;
        v122 = v27;
        v145 = v144[0];
        v146 = v144[1];
        v147 = v144[2];
        sub_2261A54B0();
        if (v29)
        {
          v121 = v22;
          sub_2261E3E1C();
          v119 = sub_2261E3DEC();
          v31 = v30;
          v32 = *(v14 + 8);
          v32(v16, v13);
          v120 = v31;
          if (v31 >> 60 == 15)
          {

            v33 = v125;
            v34 = v26;
          }

          else
          {
            sub_2261E3E1C();
            v117 = sub_2261E3DEC();
            v45 = v44;

            v32(v16, v13);
            v118 = v26;
            if (v45 >> 60 == 15)
            {
              sub_2261A28B8(v119, v120);
              v33 = v125;
            }

            else
            {
              sub_2261E3E1C();
              v33 = v125;
              v116 = sub_2261E3DEC();
              v47 = v46;
              v32(v16, v13);
              if (v47 >> 60 != 15)
              {
                v110 = v21;
                v56 = sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
                v57 = v130;
                v58 = v45;
                v59 = v132;
                v104[1] = v56;
                sub_2261E3D1C();
                v115 = v47;
                v60 = v119;
                v61 = v120;
                sub_22619D8F4(v119, v120);
                sub_22619D714(v60, v61, v57);
                sub_2261A28B8(v60, v61);
                v62 = v131;
                sub_2261E3D0C();
                v63 = *(v137 + 8);
                v137 += 8;
                v138 = v63;
                v63(v57, v59);
                v64 = v134;
                *(&v141 + 1) = v134;
                *&v142 = sub_22619D948(&qword_28136E238, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
                v111 = v142;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v140);
                v66 = v133;
                v67 = *(v133 + 16);
                v113 = v133 + 16;
                v114 = v67;
                v67(boxed_opaque_existential_1, v62, v64);
                __swift_project_boxed_opaque_existential_0(&v140, *(&v141 + 1));
                v112 = sub_22619D680;
                sub_2261E3ADC();
                v133 = *(v66 + 8);
                (v133)(v62, v64);
                v68 = v150;
                __swift_destroy_boxed_opaque_existential_0(&v140);
                v108 = sub_2261E3B9C();
                v107 = v69;
                sub_22619C840(v68, *(&v68 + 1));
                sub_2261E3D1C();
                v70 = v117;
                sub_22619D8F4(v117, v58);
                sub_22619D714(v70, v58, v57);
                v109 = v58;
                sub_2261A28B8(v70, v58);
                sub_2261E3D0C();
                v138(v57, v59);
                *(&v141 + 1) = v64;
                *&v142 = v111;
                v71 = __swift_allocate_boxed_opaque_existential_1(&v140);
                v114(v71, v62, v64);
                __swift_project_boxed_opaque_existential_0(&v140, *(&v141 + 1));
                sub_2261E3ADC();
                (v133)(v62, v64);
                v72 = v150;
                __swift_destroy_boxed_opaque_existential_0(&v140);
                v106 = sub_2261E3B9C();
                v105 = v73;
                sub_22619C840(v72, *(&v72 + 1));
                sub_2261E3D1C();
                v74 = v116;
                v75 = v115;
                sub_22619D8F4(v116, v115);
                sub_22619D714(v74, v75, v57);
                sub_2261A28B8(v74, v75);
                sub_2261E3D0C();
                v138(v57, v59);
                *(&v141 + 1) = v64;
                *&v142 = v111;
                v76 = __swift_allocate_boxed_opaque_existential_1(&v140);
                v114(v76, v62, v64);
                __swift_project_boxed_opaque_existential_0(&v140, *(&v141 + 1));
                sub_2261E3ADC();
                (v133)(v62, v64);
                v77 = v150;
                __swift_destroy_boxed_opaque_existential_0(&v140);
                v78 = sub_2261E3B9C();
                v80 = v79;
                sub_22619C840(v77, *(&v77 + 1));
                *&v140 = 0;
                *(&v140 + 1) = 0xE000000000000000;
                sub_2261E410C();
                v81 = sub_2261A2B60();
                v82 = v120;
                v84 = *v81;
                v83 = v81[1];

                *&v140 = v84;
                *(&v140 + 1) = v83;
                MEMORY[0x22AA782B0](58, 0xE100000000000000);
                MEMORY[0x22AA782B0](v108, v107);

                v85 = v123;
                v86 = sub_22619C4AC(v123);
                MEMORY[0x22AA782B0](v86);

                MEMORY[0x22AA782B0](58, 0xE100000000000000);
                MEMORY[0x22AA782B0](v106, v105);

                MEMORY[0x22AA782B0](58, 0xE100000000000000);
                MEMORY[0x22AA782B0](v78, v80);

                MEMORY[0x22AA782B0](58, 0xE100000000000000);
                v87 = sub_2261A2B6C();
                v89 = *v87;
                v88 = v87[1];

                MEMORY[0x22AA782B0](v89, v88);

                v90 = v140;
                v148 = v140;

                v91 = v136;
                v92 = v139;
                if (swift_dynamicCast())
                {
                  v149 = v145;
                  sub_22619A7B4(&v149, &qword_27D78DE20, &unk_2261E6280);
                  v150 = v146;
                  sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
                  v140 = v147;
                  sub_22619A7B4(&v140, &qword_27D78DE20, &unk_2261E6280);
                  sub_2261A28B8(v119, v82);
                  sub_2261A28B8(v117, v109);

                  sub_2261A28B8(v116, v115);

                  v93 = v135;
                  (*(v135 + 56))(v91, 0, 1, v92);
                  v94 = *(v93 + 32);
                  v95 = v129;
                  v94(v129, v91, v92);
                  v94(v151, v95, v92);
                }

                else
                {
                  (*(v135 + 56))(v91, 1, 1, v92);
                  (*(v127 + 8))(v91, v128);
                  v96 = sub_2261E3FEC();
                  *&v140 = 0;
                  *(&v140 + 1) = 0xE000000000000000;
                  sub_2261E410C();
                  v143 = v140;
                  MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBC30);
                  MEMORY[0x22AA782B0](v90, *(&v90 + 1));

                  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                  LOBYTE(v140) = v85;
                  DWORD1(v140) = v118;
                  BYTE8(v140) = v122;
                  *&v141 = v126;
                  *(&v141 + 1) = v110;
                  *&v142 = v125;
                  *(&v142 + 1) = v121;
                  sub_2261A65DC();
                  v97 = sub_2261E423C();
                  v99 = v98;

                  MEMORY[0x22AA782B0](v97, v99);

                  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
                  v148 = v147;
                  v149 = v146;
                  v150 = v145;
                  v140 = v145;
                  v141 = v146;
                  v142 = v147;
                  sub_22619C894();
                  v100 = sub_2261E423C();
                  v102 = v101;
                  sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
                  sub_22619A7B4(&v149, &qword_27D78DE20, &unk_2261E6280);
                  sub_22619A7B4(&v148, &qword_27D78DE20, &unk_2261E6280);
                  MEMORY[0x22AA782B0](v100, v102);

                  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
                  sub_2261A4EAC(v96, v143, *(&v143 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 128);

                  sub_2261A28B8(v119, v120);
                  sub_2261A28B8(v117, v109);
                  sub_2261A28B8(v116, v115);
                  v103 = v151;
                  *v151 = 0xD000000000000025;
                  v103[1] = 0x80000002261EBC60;
                  *(v103 + 16) = 1;
                }

                sub_22619C7B4();
                sub_2261E434C();
                return swift_storeEnumTagMultiPayload();
              }

              sub_2261A28B8(v117, v45);
              sub_2261A28B8(v119, v120);
            }

            v34 = v118;
          }

          v48 = sub_2261E3FEC();
          *&v140 = 0;
          *(&v140 + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&v143 = 0xD000000000000029;
          *(&v143 + 1) = 0x80000002261EBBD0;
          LOBYTE(v140) = v123;
          DWORD1(v140) = v34;
          BYTE8(v140) = v122;
          *&v141 = v126;
          *(&v141 + 1) = v21;
          *&v142 = v33;
          *(&v142 + 1) = v121;
          sub_2261A65DC();
          v49 = sub_2261E423C();
          v51 = v50;

          MEMORY[0x22AA782B0](v49, v51);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v148 = v147;
          v149 = v146;
          v150 = v145;
          v140 = v145;
          v141 = v146;
          v142 = v147;
          sub_22619C894();
          v52 = sub_2261E423C();
          v54 = v53;
          sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
          sub_22619A7B4(&v149, &qword_27D78DE20, &unk_2261E6280);
          sub_22619A7B4(&v148, &qword_27D78DE20, &unk_2261E6280);
          MEMORY[0x22AA782B0](v52, v54);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v48, v143, *(&v143 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 118);

          v42 = 0x80000002261EBC00;
          v43 = 0xD000000000000026;
          goto LABEL_25;
        }

        v148 = v145;
        sub_22619A7B4(&v148, &qword_27D78DE20, &unk_2261E6280);
        v149 = v146;
        sub_22619A7B4(&v149, &qword_27D78DE20, &unk_2261E6280);
        v150 = v147;
        sub_22619A7B4(&v150, &qword_27D78DE20, &unk_2261E6280);
        LOBYTE(v27) = v122;
        LOBYTE(v25) = v123;
      }

      v38 = sub_2261E3FEC();
      *&v140 = 0;
      *(&v140 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v143 = 0xD000000000000019;
      *(&v143 + 1) = 0x80000002261EBB90;
      LOBYTE(v140) = v25;
      DWORD1(v140) = v26;
      BYTE8(v140) = v27;
      *&v141 = v126;
      *(&v141 + 1) = v21;
      *&v142 = v125;
      *(&v142 + 1) = v22;
      sub_2261A65DC();
      v39 = sub_2261E423C();
      v41 = v40;

      MEMORY[0x22AA782B0](v39, v41);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v38, v143, *(&v143 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 111);

      v42 = 0x80000002261EBBB0;
      v43 = 0xD000000000000016;
LABEL_25:
      v55 = v151;
      *v151 = v43;
      v55[1] = v42;
      *(v55 + 16) = 1;
      goto LABEL_26;
    }
  }

  v37 = v151;
  *v151 = 0xD000000000000024;
  v37[1] = 0x80000002261EBAD0;
  *(v37 + 16) = 0;
LABEL_26:
  sub_22619C7B4();
  sub_2261E434C();
  return swift_storeEnumTagMultiPayload();
}

void sub_2261A8A9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2261E406C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v82 - v10;
  v101 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261A9AD8(a1, &v107);
  if (!v108)
  {
    sub_22619A7B4(&v107, &qword_27D78DFD0, &qword_2261E6FF0);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFC0, &qword_2261E6D50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a3 = 0xD000000000000017;
    *(a3 + 8) = 0x80000002261EBA10;
    *(a3 + 16) = 0;
    sub_22619C7B4();
    goto LABEL_15;
  }

  v99 = v7;
  v100 = v3;
  v14 = v104;
  v15 = v106;
  v16 = HIBYTE(v104) & 0xF;
  if ((v104 & 0x2000000000000000) == 0)
  {
    v16 = v103 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = HIBYTE(v106) & 0xF;
  if ((v106 & 0x2000000000000000) == 0)
  {
    v17 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
LABEL_13:
    v101 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
    v24 = v105;
    v25 = BYTE8(v102);
    v26 = v104;
    v27 = v103;
    v28 = v106;
    v29 = DWORD1(v102);
    v30 = v102;
    LODWORD(v98) = sub_2261E3FEC();
    *&v102 = 0;
    *(&v102 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v107 = 0xD000000000000027;
    *(&v107 + 1) = 0x80000002261EBA30;
    LOBYTE(v102) = v30;
    DWORD1(v102) = v29;
    BYTE8(v102) = v25;
    v103 = v27;
    v104 = v26;
    v105 = v24;
    v106 = v28;
    sub_2261A65DC();
    v31 = sub_2261E423C();
    v33 = v32;

    MEMORY[0x22AA782B0](v31, v33);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v98, v107, *(&v107 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 67);

    *a3 = 0xD000000000000024;
    *(a3 + 8) = 0x80000002261EBAD0;
    *(a3 + 16) = 0;
LABEL_14:
    sub_22619C7B4();
    goto LABEL_15;
  }

  v95 = v8;
  v109[0] = v102 | (DWORD1(v102) << 32);
  v109[1] = BYTE8(v102);
  v109[2] = v103;
  v109[3] = v104;
  v109[4] = v105;
  v109[5] = v106;
  v98 = v105;
  v97 = BYTE8(v102);
  v96 = v103;
  v18 = DWORD1(v102);
  v19 = v102;

  v20 = v110;
  v21 = sub_2261A6630(v109);
  v110 = v20;
  if (v20)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v34 = v22;
  v92 = v19;
  v93 = v18;
  v94 = v21;
  v35 = v23;

  if ((v35 & 0x100) != 0)
  {

    v54 = v94;
    *&v102 = v94;
    *(&v102 + 1) = v34;
    LOBYTE(v103) = v35 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v110 = swift_allocError();
    *v55 = v54;
    *(v55 + 8) = v34;
    *(v55 + 16) = v35 & 1;
    return;
  }

  v89 = v14;
  v90 = v15;
  v36 = v34;
  type metadata accessor for CFData(0);
  v38 = v37;

  v39 = v94;
  v91 = sub_2261DFE64(v94, v34, v38);
  v41 = v40;
  v43 = v42;
  v88 = v36;
  sub_22619C81C(v39, v36, v35, 0);
  if ((v43 & 0x100) != 0)
  {
    v56 = v43;
    v57 = v43 & 1;
    v58 = v91;
    sub_22619C838(v91, v41);

    sub_22619C81C(v94, v88, v35, 0);
    *&v102 = v58;
    *(&v102 + 1) = v41;
    LOBYTE(v103) = v57;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    v110 = swift_allocError();
    *v59 = v58;
    *(v59 + 8) = v41;
    *(v59 + 16) = v57;
    sub_2261795CC(v58, v41, v56, 1);
    return;
  }

  v85 = v35;
  v86 = v41;
  v87 = v43;
  v44 = v89;
  v45 = v91;
  if (!v91)
  {
    goto LABEL_24;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_24;
  }

  v102 = xmmword_2261E6D40;
  v46 = v45;
  sub_2261E3BAC();
  sub_2261795CC(v45, v86, v87, 0);
  v47 = *(&v102 + 1);
  if (*(&v102 + 1) >> 60 == 15)
  {
    v45 = v91;
LABEL_24:
    LODWORD(v95) = sub_2261E3FEC();
    *&v102 = 0;
    *(&v102 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v107 = v102;
    MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EBC90);
    v48 = v94;
    v49 = v88;
    MEMORY[0x22AA782B0](v94, v88);
    sub_22619C81C(v48, v49, v85, 0);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    LOBYTE(v102) = v92;
    DWORD1(v102) = v93;
    BYTE8(v102) = v97;
    v103 = v96;
    v104 = v44;
    v105 = v98;
    v106 = v90;
    sub_2261A65DC();
    v50 = sub_2261E423C();
    v52 = v51;

    MEMORY[0x22AA782B0](v50, v52);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v95, v107, *(&v107 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 75);
    sub_2261795CC(v45, v86, v87, 0);

    *&v102 = 0;
    v53 = swift_dynamicCast();
    (*(v101 + 56))(a3, v53 ^ 1u, 1, a2);
LABEL_25:
    sub_22619C7B4();
    sub_2261E434C();
    goto LABEL_16;
  }

  v60 = v102;
  sub_2261A9B48(0, &qword_28136E1E0, 0x277CCAAC8);
  sub_2261A9B48(0, &qword_28136E1A0, 0x277CCABB0);
  v61 = v110;
  v62 = sub_2261E401C();
  v110 = v61;
  if (v61)
  {
    sub_2261A28B8(v60, v47);
    sub_2261795CC(v91, v86, v87, 0);
    sub_22619C81C(v94, v88, v85, 0);

    return;
  }

  v83 = v60;
  v84 = v47;
  if (!v62)
  {
    v68 = sub_2261E3FEC();
    *&v102 = 0;
    *(&v102 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v107 = v102;
    MEMORY[0x22AA782B0](0xD00000000000002BLL, 0x80000002261EBCC0);
    v69 = v94;
    v70 = v88;
    MEMORY[0x22AA782B0](v94, v88);
    sub_22619C81C(v69, v70, v85, 0);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    LOBYTE(v102) = v92;
    DWORD1(v102) = v93;
    BYTE8(v102) = v97;
    v103 = v96;
    v104 = v44;
    v105 = v98;
    v106 = v90;
    sub_2261A65DC();
    v71 = sub_2261E423C();
    v73 = v72;

    MEMORY[0x22AA782B0](v71, v73);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v68, v107, *(&v107 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 80);

    sub_2261795CC(v91, v86, v87, 0);
    sub_2261A28B8(v83, v84);
    *a3 = 0xD000000000000022;
    *(a3 + 8) = 0x80000002261EBCF0;
    *(a3 + 16) = 1;
    goto LABEL_14;
  }

  v63 = v62;

  *&v102 = v63;
  v64 = v63;
  if (swift_dynamicCast())
  {
    sub_22619C81C(v94, v88, v85, 0);
    sub_2261795CC(v91, v86, v87, 0);

    sub_2261A28B8(v83, v84);
    v65 = v101;
    v66 = *(v101 + 56);
    v66(v11, 0, 1, a2);
    v67 = *(v65 + 32);
    v67(v13, v11, a2);
    v67(a3, v13, a2);
    v66(a3, 0, 1, a2);
    goto LABEL_25;
  }

  (*(v101 + 56))(v11, 1, 1, a2);
  (*(v95 + 8))(v11, v99);
  v101 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
  v74 = sub_2261E3FEC();
  *&v102 = 0;
  *(&v102 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000036, 0x80000002261EBD20);
  v75 = v94;
  v76 = v88;
  MEMORY[0x22AA782B0](v94, v88);
  sub_22619C81C(v75, v76, v85, 0);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v77 = v64;
  v78 = [v77 description];
  v79 = sub_2261E3DDC();
  v81 = v80;

  MEMORY[0x22AA782B0](v79, v81);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v74, v102, *(&v102 + 1), 0xD00000000000006ELL, 0x80000002261EBA60, 85);

  sub_2261795CC(v91, v86, v87, 0);

  sub_2261A28B8(v83, v84);
  *a3 = 0xD00000000000002DLL;
  *(a3 + 8) = 0x80000002261EBD60;
  *(a3 + 16) = 1;
  sub_22619C7B4();
LABEL_15:
  sub_2261E434C();
LABEL_16:
  swift_storeEnumTagMultiPayload();
}

char *sub_2261A9864()
{
  if (v0[7])
  {
    v1 = v0[7];
  }

  else
  {
    type metadata accessor for BundleRecordController(0);
    v1 = sub_2261A2BE4(v0[2], v0[3], v0[4], v0[5]);
    v0[7] = v1;
  }

  return v1;
}

uint64_t sub_2261A98D8()
{

  v1 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
  v2 = sub_2261E3CDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2261A9984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = swift_allocObject();
  type metadata accessor for KeychainController(0);
  v11 = sub_2261A2B48();
  v12 = *v11;
  v13 = v11[1];

  *(v10 + 48) = sub_2261DFDC8(v12, v13);
  *(v10 + 56) = 0;
  v14 = OBJC_IVAR____TtC17AppAttestInternal20AssertionDataManager_logger;
  v15 = sub_2261A51D8();
  v16 = sub_2261E3CDC();
  result = (*(*(v16 - 8) + 16))(v10 + v14, v15, v16);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = v10;
  return result;
}

uint64_t sub_2261A9AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFD0, &qword_2261E6FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2261A9B48(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for AssertionDataManager(uint64_t a1)
{
  result = qword_28136EEF0;
  if (!qword_28136EEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261A9BE8(uint64_t a1)
{
  result = sub_2261E3CDC();
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

uint64_t sub_2261A9C9C()
{
  v1 = *v0;
  sub_22619C838(*v0, v0[1]);
  return v1;
}

id sub_2261A9CDC(char a1, uint64_t a2, uint64_t a3)
{
  v5 = ~a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFD8, qword_2261E6E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2261E6DF0;
  *(inited + 32) = sub_2261E3DDC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_2261A9F20(inited);
  swift_setDeallocating();
  sub_2261AA030(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v9 = sub_2261E3DAC();
  v10 = sub_2261E3D4C();

  v11 = [v8 initWithDomain:v9 code:*&v5 | 0xFFFFFFFFFFFFFF00 userInfo:v10];

  return v11;
}

uint64_t sub_2261A9E28()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](~v1);
  return sub_2261E430C();
}

uint64_t sub_2261A9EA0(uint64_t a1)
{
  v2 = *v1;
  sub_2261E42EC();
  MEMORY[0x22AA78720](~v2);
  return sub_2261E430C();
}

uint64_t sub_2261A9EE4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2261AA098(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2261A9F20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DFE8, &qword_2261E6FC8);
    v3 = sub_2261E41CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2261AA1D8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2261A48EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22619A7A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_2261AA030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E220, &unk_2261E8B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261AA098(unint64_t a1)
{
  if (a1 > 0xFFFFFFFFFFFFFFF8)
  {
    return ~a1;
  }

  else
  {
    return 7;
  }
}

unint64_t sub_2261AA0AC()
{
  result = qword_27D78DFE0;
  if (!qword_27D78DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DFE0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2261AA120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2261AA168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_2261AA1D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E220, &unk_2261E8B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id AppAttestHandler.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___appUUIDDataManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___eligibilityManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationCborManager] = 0;
  *&v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionCborManager] = 0;
  v10 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  v11 = sub_2261A52F0();
  v12 = sub_2261E3CDC();
  (*(*(v12 - 8) + 16))(&v4[v10], v11, v12);
  v13 = &v4[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken];
  *v13 = a1;
  *(v13 + 1) = a2;
  *(v13 + 2) = a3;
  *(v13 + 3) = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

Swift::Bool __swiftcall AppAttestHandler.supported()()
{
  v0 = sub_2261AA444();
  v2 = sub_22619DFA0(v0, v1);

  return v2 & 1;
}

uint64_t sub_2261AA444()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___eligibilityManager;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___eligibilityManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___eligibilityManager);
  }

  else
  {
    type metadata accessor for EligibilityManager(0);
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken);
    v4 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8);
    v5 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16);
    v6 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24);
    v7 = isRunningInRecovery();
    v2 = sub_22619DE4C(v3, v4, v5, v6, v7);
    *(v0 + v1) = v2;
  }

  return v2;
}

void AppAttestHandler.createKey(with:completion:)(unint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v168 = a4;
  v180 = *MEMORY[0x277D85DE8];
  v156 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v156);
  v157 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppUUID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v149 - v12);
  v14 = sub_2261E3C3C();
  v15 = *(v14 - 8);
  v162 = v14;
  v163 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v161 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v158 = &v149 - v19;
  MEMORY[0x28223BE20](v18);
  v164 = &v149 - v20;
  v21 = sub_2261E3CDC();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v28 = &v149 - v27;
  v165 = a1;
  if (!a2)
  {
    a1 = 7104878;
    goto LABEL_9;
  }

  v29 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v29 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
LABEL_9:
    v166 = a1;
    v167 = a3;
    v159 = v10;
    v160 = v13;
    v32 = v25;
    v154 = v8;
    v33 = v169;
    v34 = v26;
    v35 = sub_2261AA444();
    v37 = sub_22619DFA0(v35, v36);

    v38 = *(v34 + 16);
    if (a2)
    {
      v39 = a2;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    if ((v37 & 1) == 0)
    {
      v38(v24, &v33[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger], v32);
      v43 = sub_2261E3FFC();
      *&v177 = 0;
      *(&v177 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v177 = 0xD00000000000002ELL;
      *(&v177 + 1) = 0x80000002261EBE00;

      MEMORY[0x22AA782B0](v166, v39);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v43, v177, *(&v177 + 1), 0xD000000000000061, 0x80000002261EBE30, 48);

      (*(v34 + 8))(v24, v32);
      v44 = sub_2261A9CDC(3, 0xD000000000000020, 0x80000002261EBEA0);
      (v167)(0, 0, 0, 0, v44);

      return;
    }

    v155 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
    v38(v28, &v33[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger], v32);
    LODWORD(v153) = sub_2261E400C();
    *&v177 = 0;
    *(&v177 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&error = 0xD00000000000001BLL;
    *(&error + 1) = 0x80000002261EBED0;

    MEMORY[0x22AA782B0](v166, v39);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
    sub_22619C448();

    v177 = v174;
    v178 = v175;
    v179 = v176;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
    v41 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v41);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v153, error, *(&error + 1), 0xD000000000000061, 0x80000002261EBE30, 53);

    (*(v34 + 8))(v28, v32);
    v42 = v160;
    sub_2261AC2DC(v165, a2, v160);
    v151 = v40;
    v152 = 0;
    v150 = a2;
    v166 = "n is ineligible. { clientUUID=";
    v46 = v162;
    v45 = v163;
    v47 = (*(v163 + 48))(v42, 1, v162);
    if (v47 == 1)
    {
      sub_22619A7B4(v42, &qword_27D78DF28, &unk_2261E6FD0);
      v48 = v164;
      sub_2261E3C2C();
      v49 = sub_2261E400C();
      *&v177 = 0;
      *(&v177 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v177 = 0xD000000000000021;
      *(&v177 + 1) = 0x80000002261EBF50;
      v50 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v50);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v51 = v166;
      v52 = v169;
      sub_2261A4EAC(v49, v177, *(&v177 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 62);

      v53 = *(v45 + 16);
      v54 = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    else
    {
      v55 = v158;
      (*(v45 + 32))(v158, v42, v46);
      v160 = *(v45 + 16);
      v153 = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v48 = v164;
      (v160)(v164, v55, v46);
      LODWORD(v149) = sub_2261E400C();
      *&v177 = 0;
      *(&v177 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v177 = 0xD00000000000001DLL;
      *(&v177 + 1) = 0x80000002261EC1B0;
      v56 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v56);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v51 = v166;
      v52 = v169;
      sub_2261A4EAC(v149, v177, *(&v177 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 59);

      (*(v45 + 8))(v55, v46);
      v54 = v153;
      v53 = v160;
    }

    v57 = v161;
    v160 = v53;
    v153 = v54;
    (v53)(v161, v48, v46);
    v58 = sub_2261E3C1C();
    sub_2261C350C(v57, v58, v59, v159);
    LOBYTE(v57) = sub_2261E400C();
    *&v177 = 0;
    *(&v177 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v177 = 0xD000000000000016;
    *(&v177 + 1) = 0x80000002261EBF80;
    v60 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v60);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v57, v177, *(&v177 + 1), 0xD000000000000061, v51 | 0x8000000000000000, 72);

    type metadata accessor for SecurityController(0);
    v61 = sub_2261A0FCC(*&v52[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken], *&v52[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8], *&v52[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16], *&v52[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24]);
    v62 = sub_2261A2BD8();
    v63 = *v62;
    v64 = v62[1];

    v65 = MEMORY[0x277D839B0];
    v66 = isRunningInRecovery();
    sub_2261A10B4(v63, v64, v66 & 1, v65, &v177);

    v158 = v61;
    if (v177 == 2 || (v177 & 1) == 0)
    {
      v68 = 0;
    }

    else
    {
      *&error = 0;
      if (!*MEMORY[0x277CDBF00])
      {
        __break(1u);
        return;
      }

      v67 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, &error);
      v68 = v67;
      v69 = error;
      if (error)
      {
        type metadata accessor for CFError(0);
        sub_2261A2790();
        v70 = v69;
        v71 = swift_allocError();
        *v72 = v70;
        v73 = v68;
        v74 = v46;
        v75 = sub_2261E3FFC();
        *&v177 = 0;
        *(&v177 + 1) = 0xE000000000000000;
        sub_2261E410C();
        MEMORY[0x22AA782B0](0xD00000000000003FLL, 0x80000002261EC170);
        swift_getErrorValue();
        v76 = sub_2261E429C();
        MEMORY[0x22AA782B0](v76);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v77 = v75;
        v46 = v74;
        sub_2261A4EAC(v77, v177, *(&v177 + 1), 0xD000000000000061, v51 | 0x8000000000000000, 90);

        v78 = v152;
        if (error)
        {
        }

LABEL_26:
        isRunningInRecovery();
        v79 = sub_2261C854C(v68);
        if (v78)
        {

          v80 = sub_2261E3FFC();
          *&v177 = 0;
          *(&v177 + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&v170 = 0xD00000000000001ELL;
          *(&v170 + 1) = 0x80000002261EBFA0;
          swift_getErrorValue();
          v81 = sub_2261E429C();
          MEMORY[0x22AA782B0](v81);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v82 = v68;
          v83 = v164;
          v84 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v84);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);

          sub_22619C448();

          error = v177;
          v172 = v178;
          v173 = v179;
          v85 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v85);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v80, v170, *(&v170 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 101);

          *&error = 0;
          *(&error + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&error = 0xD00000000000001ELL;
          *(&error + 1) = 0x80000002261EBFA0;
          swift_getErrorValue();
          v86 = sub_2261E429C();
          MEMORY[0x22AA782B0](v86);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v87 = sub_2261A9CDC(0, error, *(&error + 1));

          (v167)(0, 0, 0, 0, v87);

          sub_2261AC974(v159, type metadata accessor for AppUUID);
          (*(v163 + 8))(v83, v162);
          return;
        }

        v88 = v79;
        v89 = v46;

        v90 = v88;
        v91 = sub_2261C9E2C(v90);
        v93 = v92;

        if (!v93)
        {
          v111 = sub_2261E3FFC();
          sub_2261A4EAC(v111, 0xD000000000000031, 0x80000002261EBFC0, 0xD000000000000061, v166 | 0x8000000000000000, 107);
          v112 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EBFC0);
          (v167)(v91, 0, v91, 0, v112);

          sub_2261AC974(v159, type metadata accessor for AppUUID);
          (*(v163 + 8))(v164, v89);
          return;
        }

        v152 = v68;
        v149 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;

        v94 = sub_22619C044();

        v95 = v161;
        (v160)(v161, v159, v89);
        v160 = v90;
        v96 = v157;
        sub_2261C3918(v94 & 1, v95, v90, v91, v93, v157);
        v97 = sub_2261E400C();
        *&v177 = 0;
        *(&v177 + 1) = 0xE000000000000000;
        sub_2261E410C();

        *&v177 = 0xD000000000000015;
        *(&v177 + 1) = 0x80000002261EC000;
        v98 = v156;
        v99 = &v96[*(v156 + 28)];
        v101 = *v99;
        v100 = v99[1];
        MEMORY[0x22AA782B0](*v99, v100);
        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v97, v177, *(&v177 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 114);

        sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
        *(&v178 + 1) = v98;
        *&v179 = &off_28395C890;
        v102 = v96;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v177);
        sub_2261AC9D4(v96, boxed_opaque_existential_1, type metadata accessor for Key);
        type metadata accessor for SecKey();
        v105 = v104;
        nullsub_1();
        sub_2261C3CDC(&v177, v105, &error);

        __swift_destroy_boxed_opaque_existential_0(&v177);
        v114 = error;
        v115 = v172;
        if (BYTE1(v172) == 1)
        {
          v116 = *(&error + 1);
          sub_22619C838(error, *(&error + 1));
          v117 = sub_2261E3FFC();
          *&v177 = 0;
          *(&v177 + 1) = 0xE000000000000000;
          sub_2261E410C();
          v170 = v177;
          MEMORY[0x22AA782B0](0xD000000000000029, 0x80000002261EC140);
          *&v177 = v114;
          *(&v177 + 1) = v116;
          LOBYTE(v178) = v115 & 1;
          sub_22619C7B4();
          v118 = sub_2261E429C();
          v120 = v119;
          sub_2261795CC(v114, v116, v115, 1);
          MEMORY[0x22AA782B0](v118, v120);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v121 = v159;
          MEMORY[0x22AA782B0](*&v159[*(v154 + 20)], *&v159[*(v154 + 20) + 8]);
          MEMORY[0x22AA782B0](8236, 0xE200000000000000);

          sub_22619C448();

          error = v177;
          v172 = v178;
          v173 = v179;
          v122 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v122);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v117, v170, *(&v170 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 119);

          v123 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC050);
          (v167)(0, 0, 0, 0, v123);

          sub_2261795CC(v114, v116, v115, 1);
          v124 = v121;
LABEL_35:
          sub_2261AC974(v124, type metadata accessor for AppUUID);
          (*(v163 + 8))(v164, v162);
LABEL_50:
          sub_2261AC974(v102, type metadata accessor for Key);
          return;
        }

        if (error)
        {
          v156 = *(&error + 1);
          LODWORD(v161) = v172;
          v125 = sub_2261E400C();
          *&v177 = 0;
          *(&v177 + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&v177 = 0xD00000000000001DLL;
          *(&v177 + 1) = 0x80000002261EC070;
          MEMORY[0x22AA782B0](v101, v100);
          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v125, v177, *(&v177 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 131);

          v126 = v164;
          v127 = sub_2261E3C1C();
          if (v150)
          {
            v129 = v167;
            if (v127 == v165 && v128 == v150)
            {

              goto LABEL_49;
            }

            v132 = sub_2261E425C();

            if (v132)
            {
              goto LABEL_49;
            }
          }

          else
          {
          }

          v165 = v114;
          sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___appUUIDDataManager, type metadata accessor for AppUUIDDataManager, sub_2261DD6B8);
          *(&v178 + 1) = v154;
          *&v179 = &off_28395C880;
          v133 = __swift_allocate_boxed_opaque_existential_1(&v177);
          sub_2261AC9D4(v159, v133, type metadata accessor for AppUUID);
          v134 = MEMORY[0x277CC9318];
          nullsub_1();
          sub_2261DD794(&v177, v134, &error);

          __swift_destroy_boxed_opaque_existential_0(&v177);
          v139 = error;
          v140 = v172;
          if (BYTE1(v172) != 1)
          {
            if (*(&error + 1) >> 60 == 15)
            {
              v145 = *(&error + 1);
              LODWORD(v153) = v172;
              v146 = error;
              v135 = sub_2261E3FFC();
              *&v177 = 0;
              *(&v177 + 1) = 0xE000000000000000;
              sub_2261E410C();

              *&v170 = 0xD000000000000027;
              *(&v170 + 1) = 0x80000002261EC090;
              v136 = v159;
              MEMORY[0x22AA782B0](*&v159[*(v154 + 20)], *&v159[*(v154 + 20) + 8]);
              MEMORY[0x22AA782B0](8236, 0xE200000000000000);

              sub_22619C448();

              error = v177;
              v172 = v178;
              v173 = v179;
              v137 = sub_2261E3E3C();
              MEMORY[0x22AA782B0](v137);

              MEMORY[0x22AA782B0](32032, 0xE200000000000000);
              sub_2261A4EAC(v135, v170, *(&v170 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 144);

              v138 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC0C0);
              (v167)(0, 0, 0, 0, v138);

              sub_2261ACA3C(v146, v145, v153);
              sub_2261795CC(v165, v156, v161, 0);
              v124 = v136;
              goto LABEL_35;
            }

            sub_22619D8F4(error, *(&error + 1));
            v147 = sub_2261E400C();
            sub_2261A4EAC(v147, 0xD000000000000023, 0x80000002261EC0E0, 0xD000000000000061, v166 | 0x8000000000000000, 149);
            sub_2261B5424(v139, *(&v139 + 1), v140, 0, sub_2261A28B8, sub_22619C830);
            sub_2261B5424(v139, *(&v139 + 1), v140, 0, sub_2261A28B8, sub_22619C830);
            v129 = v167;
            v126 = v164;
            v114 = v165;
LABEL_49:
            v148 = sub_2261E3C1C();
            v129(v148);

            sub_2261795CC(v114, v156, v161, 0);
            sub_2261AC974(v159, type metadata accessor for AppUUID);
            (*(v163 + 8))(v126, v162);
            goto LABEL_50;
          }

          sub_22619C838(error, *(&error + 1));
          v141 = sub_2261E3FFC();
          *&v177 = 0;
          *(&v177 + 1) = 0xE000000000000000;
          sub_2261E410C();
          v170 = v177;
          MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC110);
          v177 = v139;
          LOBYTE(v178) = v140 & 1;
          sub_2261E413C();
          sub_2261B5424(v139, *(&v139 + 1), v140, 1, sub_2261A28B8, sub_22619C830);
          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v142 = v159;
          MEMORY[0x22AA782B0](*&v159[*(v154 + 20)], *&v159[*(v154 + 20) + 8]);
          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v154 = v139;

          sub_22619C448();

          error = v177;
          v172 = v178;
          v173 = v179;
          v143 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v143);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v141, v170, *(&v170 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 137);

          v144 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC0C0);
          (v167)(0, 0, 0, 0, v144);

          sub_2261B5424(v154, *(&v139 + 1), v140, 1, sub_2261A28B8, sub_22619C830);
          sub_2261795CC(v165, v156, v161, 0);
          v110 = v142;
        }

        else
        {
          v130 = v167;
          v131 = *(&error + 1);
          v106 = sub_2261E3FFC();
          *&v177 = 0;
          *(&v177 + 1) = 0xE000000000000000;
          sub_2261E410C();

          *&v170 = 0xD000000000000027;
          *(&v170 + 1) = 0x80000002261EC020;
          v107 = v159;
          MEMORY[0x22AA782B0](*&v159[*(v154 + 20)], *&v159[*(v154 + 20) + 8]);
          MEMORY[0x22AA782B0](8236, 0xE200000000000000);

          sub_22619C448();

          error = v177;
          v172 = v178;
          v173 = v179;
          v108 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v108);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v106, v170, *(&v170 + 1), 0xD000000000000061, v166 | 0x8000000000000000, 126);

          v109 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC050);
          v130(0, 0, 0, 0, v109);

          sub_2261AC95C(0, v131, v115);
          v110 = v107;
        }

        sub_2261AC974(v110, type metadata accessor for AppUUID);
        (*(v163 + 8))(v164, v162);
        sub_2261AC974(v157, type metadata accessor for Key);
        return;
      }

      v113 = v67;
    }

    v78 = v152;
    goto LABEL_26;
  }

  v30 = sub_2261E3FFC();
  sub_2261A4EAC(v30, 0xD000000000000015, 0x80000002261EC1D0, 0xD000000000000061, 0x80000002261EBE30, 41);
  v169 = sub_2261A9CDC(1, 0xD000000000000013, 0x80000002261EC1F0);
  (a3)(0, 0, 0, 0);
  v31 = v169;
}

uint64_t sub_2261AC2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43 - v8;
  if (!a2)
  {
    v14 = sub_2261E3FEC();
    sub_2261A4EAC(v14, 0xD000000000000013, 0x80000002261ED0D0, 0xD000000000000061, 0x80000002261EBE30, 655);
    v15 = sub_2261E3C3C();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  v50 = a1;
  v75 = a3;

  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619B27C();
  if (v3)
  {
  }

  v16 = v10;
  v17 = v11;
  v18 = v12;

  if ((v18 & 0x100) != 0)
  {

    v51 = v16;
    v52 = v17;
    v23 = v18 & 1;
    v53 = v18 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v24 = v16;
    *(v24 + 8) = v17;
LABEL_10:
    *(v24 + 16) = v23;
    return result;
  }

  if (!v17)
  {

    v25 = sub_2261E3FEC();
    v26 = 0xD000000000000038;
    v27 = 0x80000002261ED0F0;
    v28 = 662;
LABEL_20:
    sub_2261A4EAC(v25, v26, v27, 0xD000000000000061, 0x80000002261EBE30, v28);
    v39 = sub_2261E3C3C();
    return (*(*(v39 - 8) + 56))(v75, 1, 1, v39);
  }

  v45 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;

  sub_22619B9B8(v16, v17, v54);
  v46 = v54[0];
  v47 = v54[1];
  v44 = v54[3];
  v48 = v54[4];
  v49 = v54[2];
  sub_22619C81C(v16, v17, v18, 0);

  if (v55)
  {

    v20 = v46;
    v19 = v47;
    v51 = v46;
    v52 = v47;
    v21 = v49 & 1;
    v53 = v49 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v19;
    *(v22 + 16) = v21;
    return result;
  }

  v70[0] = v46;
  v71 = v47;
  v72 = v49;
  v73 = v44;
  v74 = v48;

  LODWORD(v47) = sub_22619C400();

  sub_22619C448();

  if (*(&v56 + 1) == 1)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v62 = v56;
    v63 = v57;
    v64 = v58;
    v29 = sub_2261A54B0();
    v30 = v31;
    v65 = v62;
    sub_22619A7B4(&v65, &qword_27D78DE20, &unk_2261E6280);
    v66 = v63;
    sub_22619A7B4(&v66, &qword_27D78DE20, &unk_2261E6280);
    v67 = v64;
    sub_22619A7B4(&v67, &qword_27D78DE20, &unk_2261E6280);
  }

  sub_22619C49C(v47, v29, v30, v50, a2, v59);

  v49 = sub_22619ACB0(v70, v59);
  v50 = v32;
  v34 = v33;

  v69 = v60;
  sub_22619A7B4(&v69, &qword_27D78DE20, &unk_2261E6280);
  v68 = v61;
  sub_22619A7B4(&v68, &qword_27D78DE20, &unk_2261E6280);

  if ((v34 & 0x100) != 0)
  {
    v41 = v49;
    v40 = v50;
    v51 = v49;
    v52 = v50;
    v23 = v34 & 1;
    v53 = v34 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v24 = v41;
    *(v24 + 8) = v40;
    goto LABEL_10;
  }

  v35 = v49;
  if (!v50)
  {
LABEL_19:
    v25 = sub_2261E3FEC();
    v26 = 0xD00000000000005BLL;
    v27 = 0x80000002261ED130;
    v28 = 671;
    goto LABEL_20;
  }

  v36 = v50;
  sub_2261E3C0C();
  sub_22619C81C(v35, v36, v34, 0);
  v37 = sub_2261E3C3C();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v9, 1, v37) == 1)
  {
    sub_22619A7B4(v9, &qword_27D78DF28, &unk_2261E6FD0);
    goto LABEL_19;
  }

  v42 = v75;
  (*(v38 + 32))(v75, v9, v37);
  return (*(v38 + 56))(v42, 0, 1, v37);
}

void sub_2261AC95C(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (HIBYTE(a3) != 255)
  {
    sub_2261795CC(a1, a2, a3, HIBYTE(a3) & 1);
  }
}

uint64_t sub_2261AC974(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2261AC9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2261ACA3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    return sub_2261B5424(result, a2, a3, BYTE1(a3) & 1, sub_2261A28B8, sub_22619C830);
  }

  return result;
}

void AppAttestHandler.attestKey(with:credential:clientDataHash:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void, unint64_t, unint64_t), uint64_t a8)
{
  v251 = a7;
  v252 = a8;
  v249 = a5;
  v250 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  MEMORY[0x28223BE20](v11 - 8);
  v245 = &v221 - v12;
  v13 = sub_2261E3CDC();
  v14 = *(v13 - 8);
  v247 = v13;
  v248 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v221 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v246 = &v221 - v18;
  v19 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v221 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v221 - v23;
  v25 = sub_2261E3C3C();
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    goto LABEL_16;
  }

  v35 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = v250 >> 62;
  if ((v250 >> 62) > 1)
  {
    if (v36 != 2 || *(v249 + 16) == *(v249 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v36)
  {
    if (v249 == v249 >> 32)
    {
LABEL_16:
      v42 = sub_2261E3FFC();
      sub_2261A4EAC(v42, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 166);
      v43 = 0x80000002261EC1F0;
      v44 = 1;
      v45 = 0xD000000000000013;
LABEL_17:
      v250 = sub_2261A9CDC(v44, v45, v43);
      v251(0, 0xF000000000000000, v250);
      v46 = v250;

      return;
    }
  }

  else if ((v250 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  v234 = v29;
  v235 = v28;
  v242 = v33;
  v243 = v32;
  v238 = v21;
  v239 = &v221 - v30;
  v240 = v31;
  v241 = v27;
  v244 = v8;
  v37 = sub_2261AA444();
  v39 = sub_22619DFA0(v37, v38);

  v40 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v39 & 1) == 0)
  {
    v47 = sub_2261E3FFC();
    v281.n128_u64[0] = 0;
    v281.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v242, v243);
    MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
    v48 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v48);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v47, v281.n128_i64[0], v281.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 172);

    v45 = 0xD000000000000020;
    v43 = 0x80000002261EBEA0;
    v44 = 3;
    goto LABEL_17;
  }

  LODWORD(v233) = sub_2261E400C();
  v281.n128_u64[0] = 0;
  v281.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v253 = v281;
  v232 = 0xD00000000000001CLL;
  MEMORY[0x22AA782B0]();
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v242, v243);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448();

  v281 = v265[3];
  v282 = v265[4];
  v283 = v265[5];
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v41 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v41);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v236 = "n is ineligible. { clientUUID=";
  v237 = v40;
  sub_2261A4EAC(v233, v253, *(&v253 + 1), 0xD000000000000061, 0x80000002261EBE30, 177);

  sub_2261AC2DC(a1, a2, v24);
  v49 = v240;
  if ((*(v240 + 48))(v24, 1, v241) != 1)
  {
    v59 = *(v49 + 32);
    v58 = v49 + 32;
    v233 = v59;
    v59(v239, v24, v241);
    if (sub_2261E3C1C() == a1 && v60 == a2)
    {
    }

    else
    {
      v61 = sub_2261E425C();

      if ((v61 & 1) == 0)
      {
        v88 = sub_2261E3FFC();
        v281.n128_u64[0] = 0;
        v281.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        *v267 = v281;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v89 = v239;
        v90 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v90);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v242, v243);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v253 = v281;
        v254 = v282;
        v255 = v283;
        v91 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v91);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v88, v267[0], v267[1], 0xD000000000000061, v236 | 0x8000000000000000, 187);

        v92 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        v251(0, 0xF000000000000000, v92);

        (*(v240 + 8))(v89, v241);
        return;
      }
    }

    v230 = v58;
    v62 = sub_2261E400C();
    v281.n128_u64[0] = 0;
    v281.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v63 = v239;
    v64 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v64);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v62, v281.n128_i64[0], v281.n128_u64[1], 0xD000000000000061, v236 | 0x8000000000000000, 192);

    v65 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;

    v66 = sub_22619C044();

    v67 = *(v240 + 16);
    v68 = v235;
    v69 = v63;
    v70 = v240 + 16;
    v67(v235, v69, v241);
    v71 = v243;

    v72 = v66 & 1;
    v73 = v238;
    sub_2261C3918(v72, v68, 0, v242, v71, v238);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v282 + 1) = v19;
    *&v283 = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v281);
    sub_2261AC9D4(v73, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v281, v75, &v253);
    v229 = v67;

    sub_22619A7B4(&v281, &qword_27D78DFD0, &qword_2261E6FF0);
    v80 = v253;
    v81 = v254;
    if (BYTE1(v254) == 1)
    {
      sub_22619C838(v253, *(&v253 + 1));
      v82 = sub_2261E3FFC();
      v281.n128_u64[0] = 0;
      v281.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      *&v253 = 0xD00000000000001DLL;
      *(&v253 + 1) = 0x80000002261EC6B0;
      v281 = v80;
      LOBYTE(v282) = v81 & 1;
      sub_22619C7B4();
      v83 = sub_2261E429C();
      v85 = v84;
      sub_2261795CC(v80, *(&v80 + 1), v81, 1);
      MEMORY[0x22AA782B0](v83, v85);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v77 = v239;
      v86 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v86);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v82, v253, *(&v253 + 1), 0xD000000000000061, v236 | 0x8000000000000000, 198);

      v87 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v251(0, 0xF000000000000000, v87);

      sub_2261795CC(v80, *(&v80 + 1), v81, 1);
      goto LABEL_33;
    }

    v224 = v70;
    v93 = v232;
    if (!v253)
    {
      v76 = sub_2261E3FFC();
      v281.n128_u64[0] = 0;
      v281.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      v281.n128_u64[0] = v93;
      v281.n128_u64[1] = 0x80000002261EC3E0;
      v77 = v239;
      v78 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v78);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v76, v281.n128_i64[0], v281.n128_u64[1], 0xD000000000000061, v236 | 0x8000000000000000, 205);

      v79 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v251(0, 0xF000000000000000, v79);

      sub_2261AC95C(0, *(&v80 + 1), v81);
LABEL_33:
      sub_2261AC974(v238, type metadata accessor for Key);
      (*(v240 + 8))(v77, v241);
      return;
    }

    v94 = v248;
    v95 = *(v248 + 16);
    v232 = v65;
    v96 = v246;
    v95(v246, &v244[v237], v247);
    v226 = v80;
    v97 = v80;
    v225 = sub_2261E400C();
    v281.n128_u64[0] = 0;
    v281.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    v98 = MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
    v99 = sub_2261C9E2C(v98);
    if (v100)
    {
      v101 = v100;
    }

    else
    {
      v99 = 7104878;
      v101 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v99, v101);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v225, v281.n128_i64[0], v281.n128_u64[1], 0xD000000000000061, v236 | 0x8000000000000000, 210);

    (*(v94 + 8))(v96, v247);

    LODWORD(v248) = sub_22619C044();

    v102 = sub_2261E3C1C();
    v104 = v103;
    v105 = sub_2261C9E2C(v102);
    v228 = v81;
    v227 = *(&v80 + 1);
    v223 = v97;
    if (v106)
    {
      v107 = v105;
      v108 = v106;
    }

    else
    {
      v108 = v243;

      v107 = v242;
    }

    v109 = swift_allocObject();
    v281.n128_u8[0] = 0;
    sub_2261C378C(v248 & 1, 0, v102, v104, v107, v108, v266);
    v110 = v266[1];
    *(v109 + 16) = v266[0];
    *(v109 + 32) = v110;
    *(v109 + 48) = v266[2];
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
    v111 = *(v109 + 16);
    v112 = *(v109 + 20);
    v113 = *(v109 + 24);
    v115 = *(v109 + 32);
    v114 = *(v109 + 40);
    v248 = v109;
    v116 = *(v109 + 48);
    v117 = *(v109 + 56);
    *(&v282 + 1) = &type metadata for AssertionCounter;
    *&v283 = &off_28395C888;
    v118 = swift_allocObject();
    v281.n128_u64[0] = v118;
    *(v118 + 16) = v111;
    *(v118 + 20) = v112;
    *(v118 + 24) = v113;
    *(v118 + 32) = v115;
    *(v118 + 40) = v114;
    *(v118 + 48) = v116;
    *(v118 + 56) = v117;

    sub_2261A8A9C(&v281, MEMORY[0x277D83B88], &v253);

    sub_22619A7B4(&v281, &qword_27D78DFD0, &qword_2261E6FF0);
    v126 = v253;
    if (BYTE1(v254) == 1)
    {
      v127 = v254;
      v128 = sub_2261E3FFC();
      v281.n128_u64[0] = 0;
      v281.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      *v267 = v281;
      MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC650);
      v281 = v126;
      LOBYTE(v282) = v127 & 1;
      sub_22619C7B4();
      v129 = sub_2261E429C();
      v131 = v130;
      sub_226179098(v126, *(&v126 + 1), v127, 1);
      MEMORY[0x22AA782B0](v129, v131);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v120 = v239;
      v132 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v132);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v253 = v281;
      v254 = v282;
      v255 = v283;
      v133 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v133);

      MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
      sub_2261A4EAC(v128, v267[0], v267[1], 0xD000000000000061, v236 | 0x8000000000000000, 217);

      v123 = 0xD000000000000027;
      v124 = 0x80000002261EC680;
      v125 = 0;
    }

    else
    {
      v141 = v236;
      if ((BYTE8(v253) & 1) == 0 && v253 <= 1)
      {
        v142 = sub_2261E400C();
        v281.n128_u64[0] = 0;
        v281.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        MEMORY[0x22AA782B0](0xD00000000000005CLL, 0x80000002261EC4B0);
        *&v253 = v126;
        v143 = sub_2261E423C();
        MEMORY[0x22AA782B0](v143);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v142, v281.n128_i64[0], v281.n128_u64[1], 0xD000000000000061, v141 | 0x8000000000000000, 230);

        v144 = sub_22619C044();

        LOBYTE(v267[0]) = v144 & 1;
        LOBYTE(v271) = 0;
        sub_2261AF3A8();
        sub_2261E3EFC();
        sub_2261E3EFC();
        v145 = v248;
        if (*&v281 == v253)
        {

          v146 = v223;
          v147 = sub_2261CDB98();
        }

        else
        {
          v148 = sub_2261E425C();

          v146 = v223;
          if (v148)
          {
            v147 = sub_2261CDB98();
          }

          else
          {
            v147 = sub_2261CDAC8();
          }
        }

        v150 = *v147;
        v149 = v147[1];
        sub_22619D8F4(*v147, v149);
        v151 = sub_2261CDBE8();
        v152 = v145[2];
        v289[0] = v145[1];
        v289[1] = v152;
        v153 = v145[2];
        v289[2] = v145[3];
        v154 = *v151;
        v155 = v145[3];
        v290 = v153;
        v291[0] = v155;
        sub_2261790A8(v226, v227, v228, 0);
        sub_2261AF3FC(&v290, &v281);
        sub_2261AF3FC(v291, &v281);
        sub_2261CD7CC(v150, v149, v154, v289, v146, v267);
        sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager, type metadata accessor for AuthenticationManager, sub_2261CB950);
        v156 = sub_2261CBA0C(1, v267);
        LODWORD(v150) = v157;
        v246 = v156;
        v247 = v158;

        v225 = v150;
        if ((v150 & 0x100) != 0)
        {
          v172 = v225;
          v173 = v225 & 1;
          v174 = v246;
          v175 = v247;
          sub_22619C838(v246, v247);
          v176 = sub_2261E3FFC();
          v281.n128_u64[0] = 0;
          v281.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v271 = v281;
          MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EC620);
          v281.n128_u64[0] = v174;
          v281.n128_u64[1] = v175;
          LOBYTE(v282) = v173;
          sub_2261E413C();
          sub_2261B5424(v174, v175, v172, 1, sub_22619C840, sub_22619C830);
          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v177 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v177);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);

          sub_22619C448();

          v253 = v281;
          v254 = v282;
          v255 = v283;
          v178 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v178);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v176, v271, *(&v271 + 1), 0xD000000000000061, v236 | 0x8000000000000000, 240);

          v179 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EC540);
          v251(0, 0xF000000000000000, v179);

          sub_2261AF4E8(v267);
          sub_2261B5424(v174, v175, v172, 1, sub_22619C840, sub_22619C830);
          v181 = v226;
          v180 = v227;
          v182 = v228;
          sub_2261795CC(v226, v227, v228, 0);
          sub_2261795CC(v181, v180, v182, 0);
          sub_2261AC974(v238, type metadata accessor for Key);
          (*(v240 + 8))(v239, v241);
          goto LABEL_48;
        }

        sub_22619D8F4(v246, v247);
        v159 = sub_2261E400C();
        v281.n128_u64[0] = 0;
        v281.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();

        v281.n128_u64[0] = 0xD00000000000002CLL;
        v281.n128_u64[1] = 0x80000002261EC570;
        v160 = sub_2261E3B9C();
        MEMORY[0x22AA782B0](v160);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v159, v281.n128_i64[0], v281.n128_u64[1], 0xD000000000000061, v236 | 0x8000000000000000, 252);

        sub_22619C448();

        if (v268.n128_u64[1] == 1 || (v275 = v268, v276 = v269, v277 = v270, v222 = sub_2261A54B0(), v162 = v161, v278 = v275, sub_22619A7B4(&v278, &qword_27D78DE20, &unk_2261E6280), v279 = v276, sub_22619A7B4(&v279, &qword_27D78DE20, &unk_2261E6280), v280 = v277, sub_22619A7B4(&v280, &qword_27D78DE20, &unk_2261E6280), !v162))
        {
          v183 = sub_2261E3FFC();
          v281.n128_u64[0] = 0;
          v281.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();

          *&v271 = 0xD00000000000001ELL;
          *(&v271 + 1) = 0x80000002261EC5A0;
          v120 = v239;
          v184 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v184);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);

          sub_22619C448();

          v253 = v281;
          v254 = v282;
          v255 = v283;
          v185 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v185);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v183, v271, *(&v271 + 1), 0xD000000000000061, v236 | 0x8000000000000000, 256);

          v186 = sub_2261A9CDC(0, 0xD000000000000016, 0x80000002261EBBB0);
          v251(0, 0xF000000000000000, v186);
          sub_2261AF4E8(v267);

          v188 = v246;
          v187 = v247;
          v189 = v225;
          sub_2261B5424(v246, v247, v225, 0, sub_22619C840, sub_22619C830);
          v191 = v226;
          v190 = v227;
          v192 = v228;
          sub_2261795CC(v226, v227, v228, 0);
        }

        else
        {

          v163 = sub_22619C044();

          sub_2261790A8(v226, v227, v228, 0);
          v164 = v246;
          v165 = v247;
          sub_2261B5424(v246, v247, v225, 0, sub_22619D8F4, sub_22619C838);
          v166 = v249;
          v167 = v250;
          sub_22619D8F4(v249, v250);
          sub_2261D02A8(0, v163 & 1, v222, v162, v146, v164, v165, v166, &v271, v167);
          v168 = sub_2261AF53C();
          *(&v262 + 1) = &type metadata for AppAttestationRequestContext;
          *&v263 = sub_2261AF5C4();
          v169 = swift_allocObject();
          *&v261 = v169;
          v170 = v272;
          v169[1] = v271;
          v169[2] = v170;
          v171 = v274;
          v169[3] = v273;
          v169[4] = v171;
          sub_2261AF618(&v271, &v281);
          sub_2261D4738(&v261, &v253);

          __swift_destroy_boxed_opaque_existential_0(&v261);
          if (BYTE8(v255))
          {
            v193 = v253;
            v281 = v253;
            LOBYTE(v282) = v254;
            sub_22619C7B4();
            swift_willThrowTypedImpl();
            sub_22619C830(v193, *(&v193 + 1));
          }

          else
          {
            sub_2261795DC(&v253, v265);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E048, &qword_2261E6FF8);
            if (swift_dynamicCast())
            {
              v285 = v257;
              v286 = v258;
              v287 = v259;
              v288 = v260;
              v281 = v253;
              v282 = v254;
              v283 = v255;
              v284 = v256;
              v194 = sub_2261E3FAC();
              v195 = v245;
              (*(*(v194 - 8) + 56))(v245, 1, 1, v194);
              v196 = v235;
              v197 = v241;
              v229(v235, v239, v241);
              v198 = (v234 + 263) & 0xFFFFFFFFFFFFFFF8;
              v199 = swift_allocObject();
              *(v199 + 16) = 0;
              *(v199 + 24) = 0;
              v200 = v244;
              *(v199 + 32) = v244;
              v201 = v286;
              *(v199 + 104) = v285;
              *(v199 + 120) = v201;
              *(v199 + 136) = v287;
              *(v199 + 152) = v288;
              v202 = v282;
              *(v199 + 40) = v281;
              *(v199 + 56) = v202;
              v203 = v284;
              *(v199 + 72) = v283;
              *(v199 + 88) = v203;
              v204 = v274;
              *(v199 + 192) = v273;
              *(v199 + 208) = v204;
              v205 = v272;
              *(v199 + 160) = v271;
              *(v199 + 176) = v205;
              v206 = v252;
              *(v199 + 224) = v251;
              *(v199 + 232) = v206;
              v207 = v243;
              *(v199 + 240) = v242;
              *(v199 + 248) = v207;
              v233(v199 + 256, v196, v197);
              *(v199 + v198) = v248;

              sub_2261AF618(&v271, &v253);
              v208 = v200;

              sub_2261B0BA4(0, 0, v195, &unk_2261E7008, v199);
              sub_2261AF4E8(v267);

              v209 = v246;
              v210 = v247;
              v211 = v225;
              sub_2261B5424(v246, v247, v225, 0, sub_22619C840, sub_22619C830);
              v213 = v226;
              v212 = v227;
              LOBYTE(v198) = v228;
              sub_2261795CC(v226, v227, v228, 0);
              sub_2261AF6C8(&v271);
              sub_2261B5424(v209, v210, v211, 0, sub_22619C840, sub_22619C830);
              sub_2261795CC(v213, v212, v198, 0);
              sub_2261AC974(v238, type metadata accessor for Key);
              (*(v240 + 8))(v239, v241);
              goto LABEL_48;
            }
          }

          v214 = sub_2261E3FFC();
          v281.n128_u64[0] = 0;
          v281.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v264 = v281;
          MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC5C0);
          v253 = v271;
          v254 = v272;
          v255 = v273;
          v256 = v274;
          sub_2261AF618(&v271, &v281);
          sub_2261AF674();
          v215 = sub_2261E423C();
          v217 = v216;
          v281 = v253;
          v282 = v254;
          v283 = v255;
          v284 = v256;
          sub_2261AF6C8(&v281);
          MEMORY[0x22AA782B0](v215, v217);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v120 = v239;
          v218 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v218);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);

          sub_22619C448();

          v261 = v253;
          v262 = v254;
          v263 = v255;
          v219 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v219);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v214, v264.n128_i64[0], v264.n128_u64[1], 0xD000000000000061, v236 | 0x8000000000000000, 270);

          v220 = sub_2261A9CDC(0, 0xD000000000000025, 0x80000002261EC5F0);
          v251(0, 0xF000000000000000, v220);
          sub_2261AF4E8(v267);

          v188 = v246;
          v187 = v247;
          v189 = v225;
          sub_2261B5424(v246, v247, v225, 0, sub_22619C840, sub_22619C830);
          v191 = v226;
          v190 = v227;
          v192 = v228;
          sub_2261795CC(v226, v227, v228, 0);
          sub_2261AF6C8(&v271);
        }

        sub_2261B5424(v188, v187, v189, 0, sub_22619C840, sub_22619C830);
        v138 = v191;
        v139 = v190;
        v140 = v192;
LABEL_47:
        sub_2261795CC(v138, v139, v140, 0);
        sub_2261AC974(v238, type metadata accessor for Key);
        (*(v240 + 8))(v120, v241);
LABEL_48:

        return;
      }

      v119 = sub_2261E3FFC();
      v281.n128_u64[0] = 0;
      v281.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      v267[0] = 0xD000000000000027;
      v267[1] = 0x80000002261EC450;
      v120 = v239;
      v121 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v121);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v253 = v281;
      v254 = v282;
      v255 = v283;
      v122 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v122);

      MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
      sub_2261A4EAC(v119, v267[0], v267[1], 0xD000000000000061, v141 | 0x8000000000000000, 225);

      v123 = 0xD000000000000028;
      v124 = 0x80000002261EC480;
      v125 = 1;
    }

    v134 = sub_2261A9CDC(v125, v123, v124);
    v251(0, 0xF000000000000000, v134);

    v136 = v226;
    v135 = v227;
    v137 = v228;
    sub_2261795CC(v226, v227, v228, 0);
    v138 = v136;
    v139 = v135;
    v140 = v137;
    goto LABEL_47;
  }

  sub_22619A7B4(v24, &qword_27D78DF28, &unk_2261E6FD0);
  v50 = v247;
  (*(v248 + 16))(v17, &v244[v237], v247);
  v51 = sub_2261E3FFC();
  v281.n128_u64[0] = 0;
  v281.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v275 = v281;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v242, v243);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);

  sub_22619C448();

  v52 = 0;
  v53 = 0;
  v54 = v236;
  if (*(&v253 + 1) != 1)
  {
    v281 = v253;
    v282 = v254;
    v283 = v255;
    v52 = sub_2261A5660();
    v53 = v55;
    v289[0] = v281;
    sub_22619A7B4(v289, &qword_27D78DE20, &unk_2261E6280);
    v271 = v282;
    sub_22619A7B4(&v271, &qword_27D78DE20, &unk_2261E6280);
    *v267 = v283;
    sub_22619A7B4(v267, &qword_27D78DE20, &unk_2261E6280);
  }

  v268.n128_u64[0] = v52;
  v268.n128_u64[1] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v56 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v56);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v51, v275.n128_i64[0], v275.n128_u64[1], 0xD000000000000061, v54 | 0x8000000000000000, 181);

  (*(v248 + 8))(v17, v50);
  v57 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  v251(0, 0xF000000000000000, v57);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2261AF3A8()
{
  result = qword_28136E8B0;
  if (!qword_28136E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E8B0);
  }

  return result;
}

uint64_t sub_2261AF458(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void, void, void, void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    a2();
    v6 = a3(*(v3 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken), *(v3 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8), *(v3 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16), *(v3 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24));
    *(v3 + v4) = v6;
  }

  return v6;
}

id sub_2261AF53C()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationManager;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationManager);
  }

  else
  {
    type metadata accessor for AttestationManager(0);
    v4 = v0;
    v5 = sub_2261D4654(*(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken), *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8), *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16), *(v0 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24));
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t sub_2261AF5C4()
{
  result = qword_28136EA10;
  if (!qword_28136EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA10);
  }

  return result;
}

unint64_t sub_2261AF674()
{
  result = qword_28136EA18;
  if (!qword_28136EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136EA18);
  }

  return result;
}

uint64_t sub_2261AF71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1592) = v12;
  *(v8 + 1584) = v11;
  *(v8 + 1568) = v10;
  *(v8 + 1560) = a8;
  *(v8 + 1552) = a7;
  *(v8 + 1544) = a6;
  *(v8 + 1536) = a5;
  *(v8 + 1528) = a4;
  return MEMORY[0x2822009F8](sub_2261AF764, 0, 0);
}

uint64_t sub_2261AF764()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 1536);
  *(v0 + 1600) = sub_2261AF53C();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v5;
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  *(v0 + 128) = *(v2 + 112);
  *(v0 + 96) = v7;
  *(v0 + 112) = v8;
  *(v0 + 80) = v6;
  *(v0 + 1272) = &type metadata for AppAttestationRequestContext;
  *(v0 + 1280) = sub_2261AF5C4();
  v9 = swift_allocObject();
  *(v0 + 1248) = v9;
  v10 = v1[3];
  v12 = *v1;
  v11 = v1[1];
  v9[3] = v1[2];
  v9[4] = v10;
  v9[1] = v12;
  v9[2] = v11;
  sub_2261AF618(v1, v0 + 432);
  v13 = swift_task_alloc();
  *(v0 + 1608) = v13;
  v14 = sub_2261C336C();
  sub_2261C33C0();
  *v13 = v0;
  v13[1] = sub_2261AF8B8;

  return sub_2261D5624(v0 + 216, v0 + 16, v0 + 1248, &type metadata for AppAttestationRequest, &type metadata for AppAttestationObjectContext, v14);
}

uint64_t sub_2261AF8B8()
{
  v2 = *v1;
  *(*v1 + 1616) = v0;

  if (v0)
  {
    v3 = sub_2261B0A44;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 1248));
    v3 = sub_2261AF9E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2261AF9E4(uint64_t a1)
{
  *(v1 + 136) = *(v1 + 216);
  *(v1 + 152) = *(v1 + 232);
  *(v1 + 193) = *(v1 + 273);
  *(v1 + 168) = *(v1 + 248);
  *(v1 + 184) = *(v1 + 264);
  if (*(v1 + 208))
  {
    v3 = *(v1 + 136);
    v2 = *(v1 + 144);
    v4 = *(v1 + 152);
    sub_2261C3414(v3, v2, v4);
    v5 = sub_2261E3FFC();
    sub_2261E410C();

    *(v1 + 1472) = v3;
    *(v1 + 1480) = v2;
    *(v1 + 1488) = v4;
    sub_2261C3440();
    v6 = sub_2261E429C();
    MEMORY[0x22AA782B0](v6);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v5, 0xD000000000000027, 0x80000002261ED0A0, 0xD000000000000061, 0x80000002261EBE30, 279);

    v7 = *(v1 + 1552);
    sub_2261E410C();

    if ((v4 & 0xC0) == 0x40)
    {
      MEMORY[0x22AA782B0](v3, v2);
      sub_22619A7B4(v1 + 136, &qword_27D78E058, &unk_2261E7070);
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v8 = sub_2261A9CDC(5, 0xD000000000000027, 0x80000002261ED0A0);

      v7(0, 0xF000000000000000, v8);
    }

    else
    {
      *(v1 + 1496) = v3;
      *(v1 + 1504) = v2;
      *(v1 + 1512) = v4;
      v31 = sub_2261E429C();
      v33 = v32;
      sub_22619A7B4(v1 + 136, &qword_27D78E058, &unk_2261E7070);
      MEMORY[0x22AA782B0](v31, v33);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v34 = sub_2261A9CDC(6, 0xD000000000000027, 0x80000002261ED0A0);

      v7(0, 0xF000000000000000, v34);
    }

    v9 = v1 + 136;
    goto LABEL_10;
  }

  v10 = *(v1 + 152);
  if (!v10)
  {
    v35 = *(v1 + 1552);
    v36 = sub_2261E3FFC();
    sub_2261A4EAC(v36, 0xD00000000000002BLL, 0x80000002261ECF10, 0xD000000000000061, 0x80000002261EBE30, 292);
    v37 = sub_2261A9CDC(0, 0xD00000000000002BLL, 0x80000002261ECF10);
    v35(0, 0xF000000000000000, v37);

    v9 = v1 + 136;
LABEL_10:
    sub_22619A7B4(v9, &qword_27D78E058, &unk_2261E7070);
    goto LABEL_11;
  }

  v11 = *(v1 + 1616);
  *(v1 + 296) = *(v1 + 216);
  *(v1 + 312) = v10;
  v12 = *(v1 + 256);
  *(v1 + 320) = *(v1 + 240);
  *(v1 + 336) = v12;
  *(v1 + 352) = *(v1 + 272);
  sub_2261B5358(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___attestationCborManager, type metadata accessor for AttestationCBORManager, sub_2261E3160);
  v13 = sub_2261E2560((v1 + 296));
  if (v11)
  {
    v15 = *(v1 + 1576);
    v16 = *(v1 + 1568);
    v104 = *(v1 + 1552);
    v17 = *(v1 + 1544);

    v101 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000004CLL, 0x80000002261ECF40);
    swift_getErrorValue();
    v18 = sub_2261E429C();
    MEMORY[0x22AA782B0](v18);

    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v16, v15);
    MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
    v19 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v19);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v20 = *v17;
    v21 = v17[1];
    v22 = v17[3];
    *(v1 + 656) = v17[2];
    *(v1 + 672) = v22;
    *(v1 + 624) = v20;
    *(v1 + 640) = v21;
    sub_2261AF618(v17, v1 + 688);
    sub_2261AF674();
    v23 = sub_2261E423C();
    v25 = v24;
    v26 = *(v1 + 640);
    *(v1 + 496) = *(v1 + 624);
    *(v1 + 512) = v26;
    v27 = *(v1 + 672);
    *(v1 + 528) = *(v1 + 656);
    *(v1 + 544) = v27;
    sub_2261AF6C8(v1 + 496);
    MEMORY[0x22AA782B0](v23, v25);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
    sub_22619C448();

    v28 = *(v1 + 1120);
    *(v1 + 1056) = *(v1 + 1104);
    *(v1 + 1072) = v28;
    *(v1 + 1088) = *(v1 + 1136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
    v29 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v29);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v101, 0, 0xE000000000000000, 0xD000000000000061, 0x80000002261EBE30, 301);

    v30 = sub_2261A9CDC(0, 0xD000000000000043, 0x80000002261ECF90);
    v104(0, 0xF000000000000000, v30);
    sub_22619A7B4(v1 + 136, &qword_27D78E058, &unk_2261E7070);

    goto LABEL_11;
  }

  v105 = v13;
  v106 = v14;
  v40 = *(v1 + 1592);

  swift_beginAccess();
  *(v40 + 20) = 1;
  *(v40 + 24) = 0;
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
  swift_beginAccess();
  v41 = *(v40 + 16);
  v42 = *(v40 + 20);
  v43 = *(v40 + 24);
  v45 = *(v40 + 32);
  v44 = *(v40 + 40);
  v46 = *(v40 + 48);
  v47 = *(v40 + 56);
  *(v1 + 1312) = &type metadata for AssertionCounter;
  *(v1 + 1320) = &off_28395C888;
  v48 = swift_allocObject();
  *(v1 + 1288) = v48;
  *(v48 + 16) = v41;
  *(v48 + 20) = v42;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = v44;
  *(v48 + 48) = v46;
  *(v48 + 56) = v47;

  v49 = MEMORY[0x277CC9318];
  nullsub_1();
  sub_2261A5998(v1 + 1288, v49, (v1 + 1424));

  __swift_destroy_boxed_opaque_existential_0((v1 + 1288));
  v66 = *(v1 + 1432);
  v67 = *(v1 + 1440);
  if (*(v1 + 1441) == 1)
  {
    v68 = *(v1 + 1576);
    v69 = *(v1 + 1568);
    v98 = *(v1 + 1552);
    v70 = *(v1 + 1544);
    v71 = *(v1 + 1424);
    v72 = *(v1 + 1432);
    sub_22619C838(v71, v66);
    v96 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261ECFE0);
    MEMORY[0x22AA782B0](v69, v68);
    MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
    v73 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v73);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v74 = *v70;
    v75 = v70[1];
    v76 = v70[3];
    *(v1 + 400) = v70[2];
    *(v1 + 416) = v76;
    *(v1 + 368) = v74;
    *(v1 + 384) = v75;
    sub_2261AF618(v70, v1 + 560);
    sub_2261AF674();
    v77 = sub_2261E423C();
    v79 = v78;
    v80 = *(v1 + 384);
    *(v1 + 944) = *(v1 + 368);
    *(v1 + 960) = v80;
    v81 = *(v1 + 416);
    *(v1 + 976) = *(v1 + 400);
    *(v1 + 992) = v81;
    sub_2261AF6C8(v1 + 944);
    MEMORY[0x22AA782B0](v77, v79);

    MEMORY[0x22AA782B0](0x3D726F727265202CLL, 0xE800000000000000);
    *(v1 + 1448) = v71;
    *(v1 + 1456) = v72;
    *(v1 + 1464) = v67 & 1;
    sub_22619C7B4();
    v82 = sub_2261E429C();
    v84 = v83;
    sub_2261B5424(v71, v72, v67, 1, sub_2261A28B8, sub_22619C830);
    MEMORY[0x22AA782B0](v82, v84);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v96, 0, 0xE000000000000000, 0xD000000000000061, 0x80000002261EBE30, 309);

    v85 = sub_2261A9CDC(0, 0xD000000000000023, 0x80000002261ED020);
    v98(0, 0xF000000000000000, v85);
    sub_2261B5424(v71, v72, v67, 1, sub_2261A28B8, sub_22619C830);

    sub_22619A7B4(v1 + 136, &qword_27D78E058, &unk_2261E7070);
    goto LABEL_18;
  }

  v103 = *(v1 + 1432);
  v102 = *(v1 + 1440);
  v100 = *(v1 + 1424);
  if (v66 >> 60 == 15)
  {
    v50 = *(v1 + 1576);
    v51 = *(v1 + 1568);
    v97 = *(v1 + 1552);
    v52 = *(v1 + 1544);
    v53 = sub_2261E3FFC();
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261ECFE0);
    MEMORY[0x22AA782B0](v51, v50);
    MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
    v54 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v54);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    v55 = *v52;
    v56 = v52[1];
    v57 = v52[3];
    *(v1 + 848) = v52[2];
    *(v1 + 864) = v57;
    *(v1 + 816) = v55;
    *(v1 + 832) = v56;
    sub_2261AF618(v52, v1 + 880);
    sub_2261AF674();
    v58 = sub_2261E423C();
    v60 = v59;
    v61 = *(v1 + 832);
    *(v1 + 752) = *(v1 + 816);
    *(v1 + 768) = v61;
    v62 = *(v1 + 864);
    *(v1 + 784) = *(v1 + 848);
    *(v1 + 800) = v62;
    sub_2261AF6C8(v1 + 752);
    MEMORY[0x22AA782B0](v58, v60);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
    sub_22619C448();

    v63 = *(v1 + 1024);
    *(v1 + 1152) = *(v1 + 1008);
    *(v1 + 1168) = v63;
    *(v1 + 1184) = *(v1 + 1040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
    v64 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v64);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v53, 0, 0xE000000000000000, 0xD000000000000061, 0x80000002261EBE30, 316);

    v65 = sub_2261A9CDC(0, 0xD000000000000023, 0x80000002261ED020);
    v97(0, 0xF000000000000000, v65);
    sub_2261ACA3C(v100, v103, v102);
    sub_22619A7B4(v1 + 136, &qword_27D78E058, &unk_2261E7070);

LABEL_18:
    sub_22619C840(v105, v106);
    goto LABEL_11;
  }

  v86 = *(v1 + 1592);
  v99 = *(v1 + 1552);
  v87 = sub_2261E400C();
  sub_2261E410C();

  swift_beginAccess();
  v88 = *(v40 + 20);
  v89 = *(v40 + 24);
  v90 = *(v40 + 32);
  v91 = *(v40 + 48);
  v92 = *(v40 + 56);
  *(v1 + 1200) = *(v86 + 16);
  *(v1 + 1204) = v88;
  *(v1 + 1208) = v89;
  *(v1 + 1216) = v90;
  *(v1 + 1232) = v91;
  *(v1 + 1240) = v92;
  sub_2261A65DC();
  v93 = sub_2261E423C();
  MEMORY[0x22AA782B0](v93);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v87, 0xD00000000000001DLL, 0x80000002261ED050, 0xD000000000000061, 0x80000002261EBE30, 321);

  v94 = sub_2261E400C();
  sub_2261E410C();

  v95 = sub_2261E3B9C();
  MEMORY[0x22AA782B0](v95);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v94, 0xD00000000000002BLL, 0x80000002261ED070, 0xD000000000000061, 0x80000002261EBE30, 322);

  v99(v105, v106, 0);
  sub_22619A7B4(v1 + 136, &qword_27D78E058, &unk_2261E7070);
  sub_2261B5424(v100, v103, v67, 0, sub_2261A28B8, sub_22619C830);
  sub_22619C840(v105, v106);
LABEL_11:
  v38 = *(v1 + 8);

  return v38();
}

uint64_t sub_2261B0A44()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 1248));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2261B0AA8()
{
  sub_2261E3C3C();
  v2 = v0[4];
  v3 = v0[28];
  v4 = v0[29];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2261C3494;

  return sub_2261AF71C(v5, v6, v7, v2, (v0 + 5), (v0 + 20), v3, v4);
}

uint64_t sub_2261B0BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2261C32FC(a3, v22 - v9);
  v11 = sub_2261E3FAC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22619A7B4(v10, &qword_27D78E040, &unk_2261E6FE0);
  }

  else
  {
    sub_2261E3F9C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2261E3F6C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2261E3E4C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22619A7B4(a3, &qword_27D78E040, &unk_2261E6FE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22619A7B4(a3, &qword_27D78E040, &unk_2261E6FE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_2261B0E58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2261E3B8C();
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

void AppAttestHandler.generateAssertion(with:credential:clientDataHash:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), void (*a7)(void, unint64_t, unint64_t), uint64_t a8)
{
  v342 = a8;
  v343 = a7;
  v340 = a5;
  v341 = a6;
  v11 = sub_2261E3CDC();
  v12 = *(v11 - 8);
  v338 = v11;
  v339 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v303[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v337 = &v303[-v16];
  v17 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v303[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v303[-v21];
  v23 = sub_2261E3C3C();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v303[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v24);
  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_16;
  }

  v34 = v341 >> 62;
  if ((v341 >> 62) > 1)
  {
    if (v34 != 2 || *(v340 + 16) == *(v340 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v34)
  {
    if (v340 == v340 >> 32)
    {
LABEL_16:
      v40 = sub_2261E3FFC();
      sub_2261A4EAC(v40, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 337);
      v41 = 0x80000002261EC1F0;
      v42 = 1;
      v43 = 0xD000000000000013;
LABEL_17:
      v341 = sub_2261A9CDC(v42, v43, v41);
      v343(0, 0xF000000000000000, v341);
      v44 = v341;

      return;
    }
  }

  else if ((v341 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  v334 = v31;
  v335 = v30;
  v330 = v19;
  v331 = &v303[-v28];
  v332 = v29;
  v333 = v27;
  v336 = v8;
  v35 = sub_2261AA444();
  v37 = sub_22619DFA0(v35, v36);

  v38 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v37 & 1) == 0)
  {
    v45 = sub_2261E3FFC();
    v364.n128_u64[0] = 0;
    v364.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v334, v335);
    MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
    v46 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v46);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v45, v364.n128_i64[0], v364.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 343);

    v43 = 0xD000000000000020;
    v41 = 0x80000002261EBEA0;
    v42 = 3;
    goto LABEL_17;
  }

  v326 = v17;
  LODWORD(v327) = sub_2261E400C();
  v364.n128_u64[0] = 0;
  v364.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v359 = v364;
  v324.n128_u64[1] = 0xD000000000000023;
  MEMORY[0x22AA782B0]();
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v334, v335);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448();

  v364 = v353;
  v365 = v354;
  v366 = v355;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v39 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v39);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v328 = v38;
  v329 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v327, v359.n128_i64[0], v359.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 348);

  sub_2261AC2DC(a1, a2, v22);
  v47 = v332;
  v48 = (*(v332 + 48))(v22, 1, v333);
  if (v48 != 1)
  {
    (*(v47 + 32))(v331, v22, v333);
    if (sub_2261E3C1C() == a1 && v56 == a2)
    {

      v57 = v326;
    }

    else
    {
      v58 = sub_2261E425C();

      v57 = v326;
      if ((v58 & 1) == 0)
      {
        v76 = sub_2261E3FFC();
        v364.n128_u64[0] = 0;
        v364.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v348 = v364;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v77 = v331;
        v78 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v78);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v334, v335);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v359 = v364;
        v360 = v365;
        v361 = v366;
        v79 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v79);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v76, v348.n128_i64[0], v348.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 358);

        v80 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        v343(0, 0xF000000000000000, v80);

LABEL_32:
        (*(v332 + 8))(v77, v333);
        return;
      }
    }

    LODWORD(v327) = sub_2261E400C();
    v364.n128_u64[0] = 0;
    v364.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v59 = v331;
    v60 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v60);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v327, v364.n128_i64[0], v364.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 363);

    v327 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;

    v61 = sub_22619C044();

    (*(v332 + 16))(v26, v59, v333);
    v62 = v335;

    v63 = v330;
    sub_2261C3918(v61 & 1, v26, 0, v334, v62, v330);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    v365.n128_u64[1] = v57;
    v366.n128_u64[0] = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v364);
    sub_2261AC9D4(v63, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v364, v65, &v359);

    sub_22619A7B4(&v364, &qword_27D78DFD0, &qword_2261E6FF0);
    v66 = v359;
    v67 = v360.n128_u8[0];
    if (v360.n128_u8[1])
    {
      v364 = v359;
      v365.n128_u8[0] = v360.n128_u8[0] & 1;
      sub_22619C838(v359.n128_i64[0], v359.n128_i64[1]);
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      LODWORD(v341) = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v348 = v364;
      MEMORY[0x22AA782B0](0xD00000000000001DLL, 0x80000002261EC6B0);
      v364 = v66;
      v365.n128_u8[0] = v67 & 1;
      v68 = sub_2261E429C();
      MEMORY[0x22AA782B0](v68);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v69 = v331;
      v70 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v70);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v334, v335);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v359 = v364;
      v360 = v365;
      v361 = v366;
      v71 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v71);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v341, v348.n128_i64[0], v348.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 379);

      v348.n128_u64[0] = 0xD000000000000017;
      v348.n128_u64[1] = 0x80000002261EC700;
      v359 = v66;
      v360.n128_u8[0] = v67 & 1;
      v72 = sub_2261E429C();
      v74 = v73;
      sub_2261795CC(v66.n128_i64[0], v66.n128_i64[1], v67, 1);
      MEMORY[0x22AA782B0](v72, v74);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v75 = sub_2261A9CDC(2, v348.n128_i64[0], v348.n128_i64[1]);

      v343(0, 0xF000000000000000, v75);

      sub_2261795CC(v66.n128_i64[0], v66.n128_i64[1], v67, 1);
      sub_2261AC974(v330, type metadata accessor for Key);
      (*(v332 + 8))(v69, v333);
      return;
    }

    if (!v359.n128_u64[0])
    {
      sub_2261795CC(0, v359.n128_i64[1], v360.n128_i8[0], 0);
      v104 = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v348 = v364;
      MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC720);
      v77 = v331;
      v105 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v105);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v334, v335);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v359 = v364;
      v360 = v365;
      v361 = v366;
      v106 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v106);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v104, v348.n128_i64[0], v348.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 385);

      v107 = sub_2261A9CDC(2, 0xD000000000000034, 0x80000002261EC760);
      v343(0, 0xF000000000000000, v107);
      sub_2261795CC(0, v66.n128_i64[1], v67, 0);

LABEL_49:
      sub_2261AC974(v330, type metadata accessor for Key);
      goto LABEL_32;
    }

    v81 = v359.n128_u64[0];
    v82 = sub_2261C9E2C(v81);
    v84 = v329;
    if (!v83)
    {
      sub_2261795CC(v66.n128_i64[0], v66.n128_i64[1], v67, 0);
      v108 = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](v324.n128_u64[1], 0x80000002261EC7A0);
      v109 = v331;
      v110 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v110);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v334, v335);
      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v108, v364.n128_i64[0], v364.n128_u64[1], 0xD000000000000061, v84 | 0x8000000000000000, 391);

      v111 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v343(0, 0xF000000000000000, v111);
      sub_2261795CC(v66.n128_i64[0], v66.n128_i64[1], v67, 0);

      sub_2261795CC(v66.n128_i64[0], v66.n128_i64[1], v67, 0);
      sub_2261AC974(v330, type metadata accessor for Key);
      (*(v332 + 8))(v109, v333);
      return;
    }

    v323 = v67;
    v324 = v66;
    v86 = v338;
    v85 = v339;
    v87 = *(v339 + 16);
    v88 = v337;
    v89 = v83;
    v326 = v82;
    v87(v337, v336 + v328, v338);
    v90 = sub_2261E400C();
    v364.n128_u64[0] = 0;
    v364.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    v321 = 0xD00000000000002FLL;
    v91 = MEMORY[0x22AA782B0]();
    v322 = v81;
    v92 = sub_2261C9E2C(v91);
    if (v93)
    {
      v94 = v93;
    }

    else
    {
      v92 = 7104878;
      v94 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v92, v94);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v90, v364.n128_i64[0], v364.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 396);

    (*(v85 + 8))(v88, v86);

    v95 = sub_22619C044();

    v96 = sub_2261E3C1C();
    v98 = v97;

    v364.n128_u8[0] = 1;
    v337 = v89;
    sub_2261C378C(v95 & 1, 0x100000000, v96, v98, v326, v89, &v356);
    v99 = v357.n128_u64[0];
    v100 = v358;
    v101 = v356.n128_u8[0];
    v339 = v357.n128_u64[1];

    v338 = v100.n128_i64[1];

    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
    v365.n128_u64[1] = &type metadata for AssertionCounter;
    v366.n128_u64[0] = &off_28395C888;
    v102 = swift_allocObject();
    v364.n128_u64[0] = v102;
    v103 = v357;
    v102[1] = v356;
    v102[2] = v103;
    v102[3] = v358;
    sub_2261A8A9C(&v364, MEMORY[0x277D84CC0], &v359);

    sub_22619A7B4(&v364, &qword_27D78DFD0, &qword_2261E6FF0);
    v112 = v324.n128_u64[0];
    v113 = v323;
    sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);
    v114 = v359.n128_u64[0];
    if (v360.n128_u8[1])
    {
      v115 = v359.n128_i64[1];
      v116 = v360.n128_u8[0];
      v364 = v359;
      v365.n128_u8[0] = v360.n128_u8[0] & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      sub_226179098(v114, v115, v116, 1);
      v117 = v324.n128_i64[1];
LABEL_47:
      v126 = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v348 = v364;
      MEMORY[0x22AA782B0](0xD000000000000038, 0x80000002261EC7D0);
      v77 = v331;
      v127 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v127);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v326, v337);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v364 = v356;
      v365 = v357;
      v366 = v358;
      sub_2261A65DC();
      v128 = sub_2261E423C();
      v130 = v129;

      MEMORY[0x22AA782B0](v128, v130);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);

      sub_22619C448();

      v359 = v364;
      v360 = v365;
      v361 = v366;
      v131 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v131);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v126, v348.n128_i64[0], v348.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 410);

      v132 = sub_2261A9CDC(0, 0xD000000000000030, 0x80000002261EC810);
      v343(0, 0xF000000000000000, v132);
      sub_2261795CC(v112, v117, v113, 0);

      v133 = v112;
      v134 = v117;
LABEL_48:
      sub_2261795CC(v133, v134, v113, 0);
      goto LABEL_49;
    }

    v320 = v101;
    v117 = v324.n128_i64[1];
    if ((v359.n128_u64[0] & 0x100000000) != 0)
    {
      goto LABEL_47;
    }

    v318 = v99;
    v319 = v100.n128_u64[0];
    if (v359.n128_u32[0] == -1)
    {
      v135 = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v348 = v364;
      MEMORY[0x22AA782B0](0xD000000000000030, 0x80000002261EC8C0);
      v77 = v331;
      v136 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v136);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v326, v337);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v364 = v356;
      v365 = v357;
      v366 = v358;
      sub_2261A65DC();
      v137 = sub_2261E423C();
      v139 = v138;

      MEMORY[0x22AA782B0](v137, v139);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);

      sub_22619C448();

      v359 = v364;
      v360 = v365;
      v361 = v366;
      v140 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v140);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v135, v348.n128_i64[0], v348.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 422);

      v124 = "reached. { uuid=";
      v125 = 0xD000000000000028;
      goto LABEL_51;
    }

    if (!v359.n128_u32[0])
    {
      v118 = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v348 = v364;
      MEMORY[0x22AA782B0](0xD000000000000031, 0x80000002261EC850);
      v77 = v331;
      v119 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v119);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v326, v337);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v364 = v356;
      v365 = v357;
      v366 = v358;
      sub_2261A65DC();
      v120 = sub_2261E423C();
      v122 = v121;

      MEMORY[0x22AA782B0](v120, v122);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);

      sub_22619C448();

      v359 = v364;
      v360 = v365;
      v361 = v366;
      v123 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v123);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v118, v348.n128_i64[0], v348.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 416);

      v124 = "ssertion. { uuid=";
      v125 = 0xD000000000000029;
LABEL_51:
      v141 = sub_2261A9CDC(2, v125, v124 | 0x8000000000000000);
      v343(0, 0xF000000000000000, v141);
      v142 = v324.n128_i64[1];
      v143 = v324.n128_u64[0];
      v113 = v323;
      sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);

      v133 = v143;
      v134 = v142;
      goto LABEL_48;
    }

    v144 = v359.n128_u32[0] + 1;
    v365.n128_u64[1] = &type metadata for AssertionCounter;
    v366.n128_u64[0] = &off_28395C888;
    v145 = swift_allocObject();
    v364.n128_u64[0] = v145;
    *(v145 + 16) = v320;
    v316 = v144;
    *(v145 + 20) = v144;
    *(v145 + 24) = 0;
    v146 = v319;
    v148 = v338;
    v147 = v339;
    *(v145 + 32) = v318;
    *(v145 + 40) = v147;
    *(v145 + 48) = v146;
    *(v145 + 56) = v148;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v149 = MEMORY[0x277CC9318];
    nullsub_1();
    sub_2261A5998(&v364, v149, &v359);

    __swift_destroy_boxed_opaque_existential_0(&v364);
    v317 = v359;
    v315 = v360.n128_u8[0];
    if (v360.n128_u8[1])
    {
      v161 = 256;
    }

    else
    {
      v161 = 0;
    }

    if (v360.n128_u8[1] == 1)
    {
      v162 = v315;
      v163 = v315 & 1;
      v164 = v317;
      sub_22619C838(v317.n128_i64[0], v317.n128_i64[1]);
      v165 = v338;

      v166 = v339;

      LODWORD(v341) = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v348 = v364;
      MEMORY[0x22AA782B0](0xD00000000000003ALL, 0x80000002261ECBB0);
      v364 = v164;
      v365.n128_u8[0] = v163;
      sub_22619C7B4();
      v167 = sub_2261E429C();
      v169 = v168;
      sub_2261B5424(v164.n128_i64[0], v164.n128_i64[1], v162, 1, sub_2261A28B8, sub_22619C830);
      MEMORY[0x22AA782B0](v167, v169);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v170 = v331;
      v171 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v171);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v326, v337);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v364.n128_u8[0] = v320;
      v364.n128_u32[1] = v316;
      v364.n128_u8[8] = 0;
      v365.n128_u64[0] = v318;
      v365.n128_u64[1] = v166;
      v366.n128_u64[0] = v319;
      v366.n128_u64[1] = v165;
      sub_2261A65DC();
      v172 = sub_2261E423C();
      v174 = v173;

      MEMORY[0x22AA782B0](v172, v174);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);

      sub_22619C448();

      v359 = v364;
      v360 = v365;
      v361 = v366;
      v175 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v175);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v341, v348.n128_i64[0], v348.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 432);

      v176 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EC970);
      v343(0, 0xF000000000000000, v176);
      v177 = v324.n128_i64[1];
      v178 = v324.n128_u64[0];
      LOBYTE(v166) = v323;
      sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);

      sub_2261795CC(v178, v177, v166, 0);
      sub_2261B5424(v317.n128_i64[0], v317.n128_i64[1], v315, 1, sub_2261A28B8, sub_22619C830);
      sub_2261AC974(v330, type metadata accessor for Key);
      (*(v332 + 8))(v170, v333);
      return;
    }

    if (v317.n128_u64[1] >> 60 == 15)
    {
      v179 = v315;
      v180 = v161 | v315;

      sub_2261B5424(v317.n128_i64[0], v317.n128_i64[1], v179, 0, sub_2261A28B8, sub_22619C830);
      v150 = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v348 = v364;
      MEMORY[0x22AA782B0](0xD000000000000039, 0x80000002261EC930);
      v151 = v331;
      v152 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v152);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v326, v337);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v364.n128_u8[0] = v320;
      v364.n128_u32[1] = v316;
      v364.n128_u8[8] = 0;
      v365.n128_u64[0] = v318;
      v365.n128_u64[1] = v339;
      v366.n128_u64[0] = v319;
      v366.n128_u64[1] = v338;
      sub_2261A65DC();
      v153 = sub_2261E423C();
      v155 = v154;

      MEMORY[0x22AA782B0](v153, v155);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);

      sub_22619C448();

      v359 = v364;
      v360 = v365;
      v361 = v366;
      v156 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v156);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v150, v348.n128_i64[0], v348.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 439);

      v157 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EC970);
      v343(0, 0xF000000000000000, v157);
      v158 = v324.n128_i64[1];
      v159 = v324.n128_u64[0];
      v160 = v323;
      sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);

      sub_2261795CC(v159, v158, v160, 0);
      sub_2261ACA3C(v317.n128_i64[0], v317.n128_i64[1], v180);
      sub_2261AC974(v330, type metadata accessor for Key);
      (*(v332 + 8))(v151, v333);
      return;
    }

    v181 = sub_22619C044();

    v348.n128_u8[0] = v181 & 1;
    v372.n128_u8[0] = 0;
    sub_2261AF3A8();
    sub_2261E3EFC();
    sub_2261E3EFC();
    if (*&v364 == *&v359)
    {

      v182 = sub_2261CDB98();
    }

    else
    {
      v183 = sub_2261E425C();

      if (v183)
      {
        v182 = sub_2261CDB98();
      }

      else
      {
        v182 = sub_2261CDAC8();
      }
    }

    v185 = *v182;
    v184 = v182[1];
    sub_22619D8F4(*v182, v184);
    v186 = sub_2261CDBE8();
    v372.n128_u8[0] = v320;
    v372.n128_u32[1] = v114;
    v372.n128_u8[8] = 0;
    v373.n128_u64[0] = v318;
    v373.n128_u64[1] = v339;
    v374.n128_u64[0] = v319;
    v374.n128_u64[1] = v338;
    v187 = *v186;
    sub_2261790A8(v324.n128_i64[0], v324.n128_i64[1], v323, 0);

    sub_2261CD7CC(v185, v184, v187, &v372, v322, &v359);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager, type metadata accessor for AuthenticationManager, sub_2261CB950);
    v188 = sub_2261CBA0C(0, &v359);
    v311 = v189;
    v312 = v188;
    v313 = v190;
    v314 = 0;

    if ((v313 & 0x100) != 0)
    {
      v202 = v313;
      v203 = v313 & 1;
      v205 = v311;
      v204 = v312;
      sub_22619C838(v312, v311);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v206 = sub_2261E3FFC();
      v364.n128_u64[0] = 0;
      v364.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      v344 = v364;
      MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EC620);
      v364.n128_u64[0] = v204;
      v364.n128_u64[1] = v205;
      v365.n128_u8[0] = v203;
      sub_22619C7B4();
      v207 = sub_2261E429C();
      v209 = v208;
      v341 = sub_22619C840;
      sub_2261B5424(v204, v205, v202, 1, sub_22619C840, sub_22619C830);
      MEMORY[0x22AA782B0](v207, v209);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v210 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v210);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v326, v337);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);
      v350 = v361;
      v351 = v362;
      v352 = v363;
      v348 = v359;
      v349 = v360;
      sub_2261B50AC(&v359, &v364);
      sub_2261B5108();
      v211 = sub_2261E423C();
      v213 = v212;
      v366 = v350;
      v367 = v351;
      v368 = v352;
      v364 = v348;
      v365 = v349;
      sub_2261AF4E8(&v364);
      MEMORY[0x22AA782B0](v211, v213);

      MEMORY[0x22AA782B0](32, 0xE100000000000000);

      sub_22619C448();

      v369 = v348;
      v370 = v349;
      v371 = v350;
      v214 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v214);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v206, v344.n128_i64[0], v344.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 452);

      v215 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EC540);
      v343(0, 0xF000000000000000, v215);
      v216 = v324.n128_i64[1];
      v217 = v324.n128_u64[0];
      v218 = v323;
      sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);

      sub_2261AF4E8(&v359);
      sub_2261B5424(v204, v205, v202, 1, v341, sub_22619C830);
      v219 = v217;
      v220 = v216;
      goto LABEL_69;
    }

    sub_22619D8F4(v312, v311);
    v191 = sub_2261E400C();
    v364.n128_u64[0] = 0;
    v364.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](v321, 0x80000002261EC9B0);
    v192 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v192);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v193 = v336;
    sub_2261A4EAC(v191, v364.n128_i64[0], v364.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 464);

    type metadata accessor for SecurityController(0);
    v307 = sub_2261A0FCC(*(v193 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken), *(v193 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8), *(v193 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16), *(v193 + OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24));
    if (sub_2261B515C())
    {
      v194 = v314;
      v195 = sub_2261A2234();
      v308 = v196;
      v309 = v195;
      v310 = v197;
      v321 = v198;
      v314 = v194;
      if (!v194)
      {
LABEL_73:
        sub_2261790A8(v324.n128_i64[0], v324.n128_i64[1], v323, 0);
        v224 = v311;
        sub_2261B5424(v312, v311, v313, 0, sub_22619D8F4, sub_22619C838);
        v225 = v340;
        v226 = v341;
        sub_22619D8F4(v340, v341);
        v228 = v308;
        v227 = v309;
        v229 = v310;
        v230 = v321;
        sub_22619D9F4(v309, v308, v310, v321);
        sub_22619D664(v322, v312, v224, v225, v226, v227, v228, v229, &v348, v230);
        v231 = v314;
        v340 = sub_22619D21C(&v348);
        v341 = v232;
        if (v231)
        {

LABEL_76:

          v233 = sub_2261E3FFC();
          v364.n128_u64[0] = 0;
          v364.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v344 = v364;
          MEMORY[0x22AA782B0](0xD00000000000002ALL, 0x80000002261EC9E0);
          v234 = v331;
          v235 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v235);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v326, v337);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v364 = v372;
          v365 = v373;
          v366 = v374;
          sub_2261A65DC();
          v236 = sub_2261E423C();
          v238 = v237;

          MEMORY[0x22AA782B0](v236, v238);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);

          sub_22619C448();

          v369 = v364;
          v370 = v365;
          v371 = v366;
          v239 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v239);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v233, v344.n128_i64[0], v344.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 499);

          v240 = sub_2261A9CDC(0, 0xD000000000000022, 0x80000002261ECA10);
          v343(0, 0xF000000000000000, v240);
          v241 = v324.n128_i64[1];
          v242 = v324.n128_u64[0];
          v243 = v323;
          sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);

          sub_2261B5258(&v348);
          sub_2261B52AC(v309, v308, v310, v321);
          v245 = v311;
          v244 = v312;
          v246 = v313;
          sub_2261B5424(v312, v311, v313, 0, sub_22619C840, sub_22619C830);

          sub_2261B5424(v244, v245, v246, 0, sub_22619C840, sub_22619C830);
          sub_2261AF4E8(&v359);
          sub_2261795CC(v242, v241, v243, 0);
          sub_2261B5424(v317.n128_i64[0], v317.n128_i64[1], v315, 0, sub_2261A28B8, sub_22619C830);
          sub_2261AC974(v330, type metadata accessor for Key);
          (*(v332 + 8))(v234, v333);
          return;
        }

        if (v341 >> 60 == 15)
        {
          goto LABEL_76;
        }

        v248 = v340;
        v247 = v341;
        sub_2261A74CC(v340, v341);
        sub_2261B52FC(&v348, &v364);
        sub_2261CDF10(v248, v247, &v348, &v364);
        sub_2261B5358(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionCborManager, type metadata accessor for AssertionCBORManager, sub_2261CE6A0);
        v314 = sub_2261CDF30(&v364);
        v322 = v249;

        LOBYTE(v248) = sub_2261E400C();
        v369.n128_u64[0] = 0xD00000000000002CLL;
        v369.n128_u64[1] = 0x80000002261ECA70;
        v250 = sub_2261E3B9C();
        MEMORY[0x22AA782B0](v250);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v248, v369.n128_i64[0], v369.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 514);

        sub_2261B53D0(&v364);
        v370.n128_u64[1] = &type metadata for AssertionCounter;
        v371.n128_u64[0] = &off_28395C888;
        v251 = swift_allocObject();
        v369.n128_u64[0] = v251;
        *(v251 + 16) = v320;
        *(v251 + 20) = v316;
        *(v251 + 24) = 0;
        v252 = v339;
        *(v251 + 32) = v318;
        *(v251 + 40) = v252;
        v253 = v338;
        *(v251 + 48) = v319;
        *(v251 + 56) = v253;

        v254 = MEMORY[0x277CC9318];
        nullsub_1();
        sub_2261A5998(&v369, v254, &v344);

        __swift_destroy_boxed_opaque_existential_0(&v369);
        v270 = v344.n128_i64[1];
        v335 = v344.n128_u64[0];
        v271 = v345.n128_u8[0];
        if (v345.n128_u8[1] == 1)
        {
          LODWORD(v334) = v345.n128_u8[0];
          v272 = v335;
          v273 = v345.n128_u8[0] & 1;
          v306 = v345.n128_u8[0] & 1;
          sub_22619C838(v335, v344.n128_i64[1]);
          v304 = sub_2261E3FFC();
          v369.n128_u64[0] = 0;
          v369.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v347 = v369;
          v305 = 0xD000000000000042;
          MEMORY[0x22AA782B0]();
          v369.n128_u64[0] = v272;
          v369.n128_u64[1] = v270;
          v370.n128_u8[0] = v273;
          sub_22619C7B4();
          v274 = sub_2261E429C();
          MEMORY[0x22AA782B0](v274);

          MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
          v275 = sub_2261E3C1C();
          MEMORY[0x22AA782B0](v275);

          MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
          MEMORY[0x22AA782B0](v326, v337);

          MEMORY[0x22AA782B0](8236, 0xE200000000000000);
          v369.n128_u8[0] = v320;
          v369.n128_u32[1] = v316;
          v369.n128_u8[8] = 0;
          v370.n128_u64[0] = v318;
          v370.n128_u64[1] = v339;
          v371.n128_u64[0] = v319;
          v371.n128_u64[1] = v338;
          sub_2261A65DC();
          v276 = sub_2261E423C();
          v278 = v277;

          MEMORY[0x22AA782B0](v276, v278);

          MEMORY[0x22AA782B0](32, 0xE100000000000000);

          sub_22619C448();

          v344 = v369;
          v345 = v370;
          v346 = v371;
          v279 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v279);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v304, v347.n128_i64[0], v347.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 530);

          v344.n128_u64[0] = 0;
          v344.n128_u64[1] = 0xE000000000000000;
          sub_2261E410C();
          v347 = v344;
          MEMORY[0x22AA782B0](v305, 0x80000002261ECB60);
          v280 = v272;
          v344.n128_u64[0] = v272;
          v344.n128_u64[1] = v270;
          v345.n128_u8[0] = v306;
          v281 = sub_2261E429C();
          v283 = v282;
          v284 = v334;
          sub_2261B5424(v280, v270, v334, 1, sub_2261A28B8, sub_22619C830);
          MEMORY[0x22AA782B0](v281, v283);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v285 = sub_2261A9CDC(0, v347.n128_i64[0], v347.n128_i64[1]);

          v286 = v343;
          v343(0, 0xF000000000000000, v285);

          sub_2261B5424(v280, v270, v284, 1, sub_2261A28B8, sub_22619C830);
          v287 = v314;
          v288 = v322;
          v286(v314, v322, 0);
          v289 = v324.n128_i64[1];
          v290 = v324.n128_u64[0];
          v291 = v323;
          sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);
          v292 = v287;
LABEL_83:
          sub_22619C840(v292, v288);
          sub_2261B5258(&v348);
          sub_2261A28B8(v340, v341);
          sub_2261B52AC(v309, v308, v310, v321);
          v301 = v311;
          v300 = v312;
          v302 = v313;
          sub_2261B5424(v312, v311, v313, 0, sub_22619C840, sub_22619C830);

          sub_2261B5424(v300, v301, v302, 0, sub_22619C840, sub_22619C830);
          sub_2261AF4E8(&v359);
          sub_2261795CC(v290, v289, v291, 0);
          v222 = v317.n128_i64[1];
          v221 = v317.n128_u64[0];
          v223 = v315;
          goto LABEL_70;
        }

        if (v344.n128_u64[1] >> 60 != 15)
        {
          v293 = v335;
          v294 = v345.n128_u8[0];
          sub_2261B5424(v335, v344.n128_i64[1], v345.n128_u8[0], 0, sub_2261A74CC, sub_22619C838);

          v295 = sub_2261E400C();
          v344.n128_u64[0] = 0xD000000000000025;
          v344.n128_u64[1] = 0x80000002261ECB30;
          v369.n128_u8[0] = v320;
          v369.n128_u32[1] = v316;
          v369.n128_u8[8] = 0;
          v370.n128_u64[0] = v318;
          v370.n128_u64[1] = v339;
          v371.n128_u64[0] = v319;
          v371.n128_u64[1] = v338;
          sub_2261A65DC();
          v296 = sub_2261E423C();
          v298 = v297;

          MEMORY[0x22AA782B0](v296, v298);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v295, v344.n128_i64[0], v344.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 542);

          sub_2261B5424(v293, v270, v294, 0, sub_2261A28B8, sub_22619C830);
          sub_2261B5424(v293, v270, v294, 0, sub_2261A28B8, sub_22619C830);
          v299 = v314;
          v288 = v322;
          v343(v314, v322, 0);
          v289 = v324.n128_i64[1];
          v290 = v324.n128_u64[0];
          v291 = v323;
          sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);
          v292 = v299;
          goto LABEL_83;
        }

        v255 = sub_2261E3FFC();
        v369.n128_u64[0] = 0;
        v369.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v347 = v369;
        MEMORY[0x22AA782B0](0xD000000000000041, 0x80000002261ECAA0);
        v256 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v256);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v326, v337);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);
        v369.n128_u8[0] = v320;
        v369.n128_u32[1] = v316;
        v369.n128_u8[8] = 0;
        v370.n128_u64[0] = v318;
        v370.n128_u64[1] = v339;
        v371.n128_u64[0] = v319;
        v371.n128_u64[1] = v338;
        sub_2261A65DC();
        v257 = sub_2261E423C();
        v259 = v258;

        MEMORY[0x22AA782B0](v257, v259);

        MEMORY[0x22AA782B0](32, 0xE100000000000000);

        sub_22619C448();

        v344 = v369;
        v345 = v370;
        v346 = v371;
        v260 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v260);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v255, v347.n128_i64[0], v347.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 537);

        v261 = sub_2261A9CDC(0, 0xD000000000000039, 0x80000002261ECAF0);
        v262 = v343;
        v343(0, 0xF000000000000000, v261);

        sub_2261ACA3C(v335, v270, v271);
        v263 = v314;
        v264 = v322;
        v262(v314, v322, 0);
        v265 = v324.n128_i64[1];
        v266 = v324.n128_u64[0];
        v218 = v323;
        sub_2261795CC(v324.n128_i64[0], v324.n128_i64[1], v323, 0);
        sub_22619C840(v263, v264);
        sub_2261B5258(&v348);
        sub_2261A28B8(v340, v341);
        sub_2261B52AC(v309, v308, v310, v321);
        v268 = v311;
        v267 = v312;
        v269 = v313;
        sub_2261B5424(v312, v311, v313, 0, sub_22619C840, sub_22619C830);

        sub_2261B5424(v267, v268, v269, 0, sub_22619C840, sub_22619C830);
        sub_2261AF4E8(&v359);
        v219 = v266;
        v220 = v265;
LABEL_69:
        sub_2261795CC(v219, v220, v218, 0);
        v222 = v317.n128_i64[1];
        v221 = v317.n128_u64[0];
        v223 = v315;
LABEL_70:
        sub_2261B5424(v221, v222, v223, 0, sub_2261A28B8, sub_22619C830);
        sub_2261AC974(v330, type metadata accessor for Key);
        (*(v332 + 8))(v331, v333);
        return;
      }

      v199 = sub_2261E3FFC();
      v364.n128_u64[0] = 0xD000000000000021;
      v364.n128_u64[1] = 0x80000002261EB5E0;
      v200 = v314;
      swift_getErrorValue();
      v201 = sub_2261E429C();
      MEMORY[0x22AA782B0](v201);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v199, v364.n128_i64[0], v364.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 482);

      v309 = 0;
      v310 = 0;
      v321 = 0;
      v314 = 0;
    }

    else
    {
      v309 = 0;
      v310 = 0;
      v321 = 0;
    }

    v308 = 0xF000000000000000;
    goto LABEL_73;
  }

  sub_22619A7B4(v22, &qword_27D78DF28, &unk_2261E6FD0);
  v49 = v338;
  (*(v339 + 16))(v15, v336 + v328, v338);
  v50 = sub_2261E3FFC();
  v364.n128_u64[0] = 0;
  v364.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v356 = v364;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v334, v335);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);

  sub_22619C448();

  v51 = 0;
  v52 = 0;
  if (v359.n128_u64[1] != 1)
  {
    v364 = v359;
    v365 = v360;
    v366 = v361;
    v51 = sub_2261A5660();
    v52 = v53;
    v369 = v364;
    sub_22619A7B4(&v369, &qword_27D78DE20, &unk_2261E6280);
    v372 = v365;
    sub_22619A7B4(&v372, &qword_27D78DE20, &unk_2261E6280);
    v348 = v366;
    sub_22619A7B4(&v348, &qword_27D78DE20, &unk_2261E6280);
  }

  v344.n128_u64[0] = v51;
  v344.n128_u64[1] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v54 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v54);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v50, v356.n128_i64[0], v356.n128_u64[1], 0xD000000000000061, v329 | 0x8000000000000000, 352);

  (*(v339 + 8))(v15, v49);
  v55 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  v343(0, 0xF000000000000000, v55);
}

unint64_t sub_2261B5108()
{
  result = qword_27D78E050;
  if (!qword_27D78E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78E050);
  }

  return result;
}

uint64_t sub_2261B515C()
{
  v0 = sub_2261A2BB4();
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_2261C32B0();

  v4 = isRunningInRecovery();
  sub_2261A10B4(v1, v2, v4 & 1, v3, &v13);

  v5 = v13;
  if (v13 && (sub_2261A2BC0(), , v6 = sub_2261E3DAC(), , v7 = [v5 containsObject_], v6, v5, (v7 & 1) != 0))
  {
    v8 = 1;
  }

  else
  {
    v9 = sub_2261A2B84();
    v10 = *v9;
    v11 = v9[1];

    v8 = sub_2261CF5C8(v10, v11);
  }

  return v8 & 1;
}

uint64_t sub_2261B52AC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22619C840(result, a2);

    return sub_22619C840(a3, a4);
  }

  return result;
}

uint64_t sub_2261B5358(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    a2();
    v6 = a3();
    *(v3 + v4) = v6;
  }

  return v6;
}

uint64_t sub_2261B5424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    return a6(a1, a2, a3 & 1);
  }

  else
  {
    return a5(a1, a2, a3);
  }
}

uint64_t sub_2261B5454(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_2261E3DDC();
  v13 = v12;
  v14 = sub_2261E3DDC();
  v16 = v15;
  v17 = a5;
  v18 = a1;
  v19 = sub_2261E3BBC();
  v21 = v20;

  _Block_copy(v10);
  a7(v11, v13, v14, v16, v19, v21, v18, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_22619C840(v19, v21);
}

void AppAttestHandler.sign(clientUUID:blob:credential:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, void (*a7)(void, unint64_t, id), uint64_t a8)
{
  v116 = a8;
  v115 = a5;
  v114 = a4;
  v113 = a3;
  v111 = sub_2261E3CDC();
  v112 = *(v111 - 8);
  v13 = MEMORY[0x28223BE20](v111);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v100 - v16;
  v17 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v100 - v21;
  v23 = sub_2261E3C3C();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v30 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v30 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
    goto LABEL_16;
  }

  v31 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v31 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    goto LABEL_16;
  }

  v32 = v114 >> 62;
  if ((v114 >> 62) > 1)
  {
    if (v32 != 2 || *(v113 + 16) == *(v113 + 24))
    {
      goto LABEL_16;
    }
  }

  else if (v32)
  {
    if (v113 == v113 >> 32)
    {
LABEL_16:
      v37 = sub_2261E3FFC();
      sub_2261A4EAC(v37, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 549);
      v115 = sub_2261A9CDC(1, 0xD000000000000013, 0x80000002261EC1F0);
      a7(0, 0xF000000000000000, v115);
LABEL_17:
      v38 = v115;

      return;
    }
  }

  else if ((v114 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

  v104 = v19;
  v105 = &v100 - v28;
  v106 = v29;
  v107 = v27;
  v109 = v8;
  v33 = sub_2261AA444();
  v35 = sub_22619DFA0(v33, v34);

  v108 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v35 & 1) == 0)
  {
    v39 = sub_2261E3FFC();
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v115, a6);
    MEMORY[0x22AA782B0](0x3D626F6C62202CLL, 0xE700000000000000);
    v40 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v40);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v39, v123, *(&v123 + 1), 0xD000000000000061, 0x80000002261EBE30, 555);

    v115 = sub_2261A9CDC(3, 0xD000000000000020, 0x80000002261EBEA0);
    a7(0, 0xF000000000000000, v115);
    goto LABEL_17;
  }

  v102 = a7;
  v101 = sub_2261E3FEC();
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v120 = v123;
  MEMORY[0x22AA782B0](0xD000000000000023, 0x80000002261ECBF0);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v115, a6);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448();

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v36 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v36);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v103 = "n is ineligible. { clientUUID=";
  sub_2261A4EAC(v101, v120, *(&v120 + 1), 0xD000000000000061, 0x80000002261EBE30, 560);

  sub_2261AC2DC(a1, a2, v22);
  v41 = v106;
  if ((*(v106 + 48))(v22, 1, v107) != 1)
  {
    (*(v41 + 32))(v105, v22, v107);
    if (sub_2261E3C1C() == a1 && v49 == a2)
    {

      v50 = v108;
    }

    else
    {
      v51 = sub_2261E425C();

      v50 = v108;
      if ((v51 & 1) == 0)
      {
        v69 = sub_2261E3FFC();
        *&v123 = 0;
        *(&v123 + 1) = 0xE000000000000000;
        sub_2261E410C();
        v128 = v123;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v66 = v105;
        v70 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v70);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v115, a6);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v120 = v123;
        v121 = v124;
        v122 = v125;
        v71 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v71);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v69, v128, *(&v128 + 1), 0xD000000000000061, v103 | 0x8000000000000000, 570);

        v72 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        v102(0, 0xF000000000000000, v72);

        goto LABEL_33;
      }
    }

    v52 = sub_2261E3FEC();
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v53 = v105;
    v54 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v54);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v52, v123, *(&v123 + 1), 0xD000000000000061, v103 | 0x8000000000000000, 575);

    v55 = sub_22619C044();

    (*(v106 + 16))(v26, v53, v107);

    v56 = v55 & 1;
    v57 = v104;
    sub_2261C3918(v56, v26, 0, v115, a6, v104);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v124 + 1) = v17;
    *&v125 = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v123);
    sub_2261AC9D4(v57, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    sub_2261C74AC(&v123, v59, &v120);

    v60 = sub_22619A7B4(&v123, &qword_27D78DFD0, &qword_2261E6FF0);
    v61 = v120;
    v62 = v121;
    v63 = v102;
    if (BYTE1(v121))
    {
      v123 = v120;
      LOBYTE(v124) = v121 & 1;
      sub_22619C7B4();
      swift_willThrowTypedImpl();
      sub_2261795CC(v61, *(&v61 + 1), v62, 1);
      v64 = v103;
    }

    else
    {
      v64 = v103;
      if (v120)
      {
        v73 = sub_2261C9E2C(v60);
        if (v74)
        {
          v108 = v74;
          LODWORD(v115) = v62;
          v100 = v73;
          v75 = v112;
          v76 = v110;
          v77 = v111;
          (*(v112 + 16))(v110, v109 + v50, v111);
          v101 = sub_2261E3FEC();
          *&v123 = 0;
          *(&v123 + 1) = 0xE000000000000000;
          sub_2261E410C();
          v78 = MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
          v79 = sub_2261C9E2C(v78);
          if (v80)
          {
            v81 = v80;
          }

          else
          {
            v79 = 7104878;
            v81 = 0xE300000000000000;
          }

          MEMORY[0x22AA782B0](v79, v81);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          sub_2261A4EAC(v101, v123, *(&v123 + 1), 0xD000000000000061, v64 | 0x8000000000000000, 587);

          (*(v75 + 8))(v76, v77);
          v82 = sub_2261E3B8C();
          v83 = sub_2261C8E9C(v61, v82);
          v85 = v84;
          v87 = v86;

          if ((v87 & 0x100) != 0)
          {
            *&v123 = v83;
            *(&v123 + 1) = v85;
            LOBYTE(v124) = v87 & 1;
            LODWORD(v114) = v87 & 1;
            sub_22619C838(v83, v85);
            sub_22619C7B4();
            swift_willThrowTypedImpl();
            LODWORD(v113) = sub_2261E3FFC();
            *&v123 = 0;
            *(&v123 + 1) = 0xE000000000000000;
            sub_2261E410C();
            v120 = v123;
            MEMORY[0x22AA782B0](0xD00000000000001DLL, 0x80000002261ECC20);
            *&v123 = v83;
            *(&v123 + 1) = v85;
            LOBYTE(v124) = v87 & 1;
            v88 = sub_2261E429C();
            MEMORY[0x22AA782B0](v88);

            MEMORY[0x22AA782B0](0x3D644979656B202CLL, 0xE800000000000000);
            MEMORY[0x22AA782B0](v100, v108);

            MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
            v89 = v105;
            v90 = sub_2261E3C1C();
            MEMORY[0x22AA782B0](v90);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v113, v120, *(&v120 + 1), 0xD000000000000061, v103 | 0x8000000000000000, 594);

            *&v123 = 0;
            *(&v123 + 1) = 0xE000000000000000;
            sub_2261E410C();

            *&v120 = 0xD000000000000017;
            *(&v120 + 1) = 0x80000002261ECC40;
            *&v123 = v83;
            *(&v123 + 1) = v85;
            LOBYTE(v124) = v114;
            v91 = sub_2261E429C();
            v93 = v92;
            sub_2261795CC(v83, v85, v87, 1);
            MEMORY[0x22AA782B0](v91, v93);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v94 = sub_2261A9CDC(0, v120, *(&v120 + 1));

            v102(0, 0xF000000000000000, v94);
            sub_2261795CC(v61, *(&v61 + 1), v115, 0);
          }

          else
          {
            sub_2261790A8(v83, v85, v87, 0);

            v95 = v115;
            if (v83)
            {
              v96 = v83;
              v97 = sub_2261E3BBC();
              v99 = v98;
              sub_2261795CC(v83, v85, v87, 0);
            }

            else
            {
              v97 = 0;
              v99 = 0xF000000000000000;
            }

            v102(v97, v99, 0);
            sub_2261795CC(v61, *(&v61 + 1), v95, 0);
            sub_2261A28B8(v97, v99);
            sub_2261795CC(v83, v85, v87, 0);
            v89 = v105;
          }

          sub_2261795CC(v83, v85, v87, HIBYTE(v87) & 1);
          sub_2261AC974(v104, type metadata accessor for Key);
          (*(v106 + 8))(v89, v107);
          return;
        }

        sub_2261795CC(v61, *(&v61 + 1), v62, 0);
      }
    }

    v65 = sub_2261E3FFC();
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v123 = 0xD00000000000001CLL;
    *(&v123 + 1) = 0x80000002261EC3E0;
    v66 = v105;
    v67 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v67);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v65, v123, *(&v123 + 1), 0xD000000000000061, v64 | 0x8000000000000000, 582);

    v68 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
    v63(0, 0xF000000000000000, v68);

    sub_2261AC974(v104, type metadata accessor for Key);
LABEL_33:
    (*(v106 + 8))(v66, v107);
    return;
  }

  sub_22619A7B4(v22, &qword_27D78DF28, &unk_2261E6FD0);
  v42 = v111;
  (*(v112 + 16))(v15, v109 + v108, v111);
  v43 = sub_2261E3FFC();
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v119 = v123;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v115, a6);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);

  sub_22619C448();

  v44 = 0;
  v45 = 0;
  if (*(&v120 + 1) != 1)
  {
    v123 = v120;
    v124 = v121;
    v125 = v122;
    v44 = sub_2261A5660();
    v45 = v46;
    v126 = v123;
    sub_22619A7B4(&v126, &qword_27D78DE20, &unk_2261E6280);
    v127 = v124;
    sub_22619A7B4(&v127, &qword_27D78DE20, &unk_2261E6280);
    v128 = v125;
    sub_22619A7B4(&v128, &qword_27D78DE20, &unk_2261E6280);
  }

  v117 = v44;
  v118 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v47 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v47);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v43, v119, *(&v119 + 1), 0xD000000000000061, v103 | 0x8000000000000000, 564);

  (*(v112 + 8))(v15, v42);
  v48 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  v102(0, 0xF000000000000000, v48);
}

void AppAttestHandler.getKey(for:credential:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void, char *), uint64_t a6)
{
  v100 = a6;
  v101 = a5;
  v11 = sub_2261E3CDC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v99 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = v86 - v15;
  v98 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v98);
  v17 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v86 - v19;
  v21 = sub_2261E3C3C();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v28 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v28 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
    goto LABEL_9;
  }

  v29 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v29 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
LABEL_9:
    v37 = sub_2261E3FFC();
    sub_2261A4EAC(v37, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 602);
    v38 = 0x80000002261EC1F0;
    v39 = 1;
    v40 = 0xD000000000000013;
LABEL_11:
    v99 = sub_2261A9CDC(v39, v40, v38);
    v101(0, v99);
    v42 = v99;

    return;
  }

  v96 = a4;
  v90 = v17;
  v95 = v12;
  v92 = v11;
  v91 = v86 - v26;
  v93 = v27;
  v94 = v25;
  v30 = sub_2261AA444();
  v32 = sub_22619DFA0(v30, v31);

  v33 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v32 & 1) == 0)
  {
    v41 = sub_2261E3FFC();
    *&v108 = 0;
    *(&v108 + 1) = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](a3, v96);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v41, v108, *(&v108 + 1), 0xD000000000000061, 0x80000002261EBE30, 608);

    v40 = 0xD000000000000020;
    v38 = 0x80000002261EBEA0;
    v39 = 3;
    goto LABEL_11;
  }

  LODWORD(v89) = sub_2261E3FEC();
  *&v108 = 0;
  *(&v108 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v105 = v108;
  MEMORY[0x22AA782B0](0xD000000000000026, 0x80000002261ECC60);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  v34 = a3;
  MEMORY[0x22AA782B0](a3, v96);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448();

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v36 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v36);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v87 = "n is ineligible. { clientUUID=";
  v88 = v33;
  sub_2261A4EAC(v89, v105, *(&v105 + 1), 0xD000000000000061, 0x80000002261EBE30, 613);

  v89 = v6;
  sub_2261AC2DC(a1, a2, v20);
  v86[1] = v35;
  v43 = v93;
  v44 = v94;
  v45 = (*(v93 + 48))(v20, 1, v94);
  v46 = v99;
  if (v45 == 1)
  {
    sub_22619A7B4(v20, &qword_27D78DF28, &unk_2261E6FD0);
    v47 = v92;
    (*(v95 + 16))(v46, v89 + v88, v92);
    v48 = sub_2261E3FFC();
    *&v108 = 0;
    *(&v108 + 1) = 0xE000000000000000;
    sub_2261E410C();
    v104 = v108;
    MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v34, v96);
    MEMORY[0x22AA782B0](8236, 0xE200000000000000);

    sub_22619C448();

    v49 = 0;
    v50 = 0;
    if (*(&v105 + 1) != 1)
    {
      v108 = v105;
      v109 = v106;
      v110 = v107;
      v49 = sub_2261A5660();
      v50 = v51;
      v111 = v108;
      sub_22619A7B4(&v111, &qword_27D78DE20, &unk_2261E6280);
      v112 = v109;
      sub_22619A7B4(&v112, &qword_27D78DE20, &unk_2261E6280);
      v113 = v110;
      v47 = v92;
      sub_22619A7B4(&v113, &qword_27D78DE20, &unk_2261E6280);
    }

    v102 = v49;
    v103 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
    v52 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v52);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v48, v104, *(&v104 + 1), 0xD000000000000061, v87 | 0x8000000000000000, 617);

    (*(v95 + 8))(v46, v47);
    v53 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
    v101(0, v53);

    return;
  }

  v54 = *(v43 + 32);
  v55 = v91;
  v54(v91, v20, v44);
  if (sub_2261E3C1C() == a1 && v56 == a2)
  {

    v57 = v90;
  }

  else
  {
    v58 = sub_2261E425C();

    v57 = v90;
    if ((v58 & 1) == 0)
    {
      v72 = sub_2261E3FFC();
      *&v108 = 0;
      *(&v108 + 1) = 0xE000000000000000;
      sub_2261E410C();
      v113 = v108;
      MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
      MEMORY[0x22AA782B0](a1, a2);
      MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
      v73 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v73);

      MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
      MEMORY[0x22AA782B0](v34, v96);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v105 = v108;
      v106 = v109;
      v107 = v110;
      v74 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v74);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v72, v113, *(&v113 + 1), 0xD000000000000061, v87 | 0x8000000000000000, 623);

      v75 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
      v101(0, v75);

      (*(v93 + 8))(v55, v94);
      return;
    }
  }

  v59 = sub_2261E3FEC();
  *&v108 = 0;
  *(&v108 + 1) = 0xE000000000000000;
  sub_2261E410C();
  MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
  v60 = sub_2261E3C1C();
  MEMORY[0x22AA782B0](v60);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v61 = v87;
  sub_2261A4EAC(v59, v108, *(&v108 + 1), 0xD000000000000061, v87 | 0x8000000000000000, 628);

  v62 = sub_22619C044();

  (*(v93 + 16))(v24, v55, v94);
  v63 = v96;

  sub_2261C3918(v62 & 1, v24, 0, v34, v63, v57);
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
  *(&v109 + 1) = v98;
  *&v110 = &off_28395C890;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
  sub_2261AC9D4(v57, boxed_opaque_existential_1, type metadata accessor for Key);
  type metadata accessor for SecKey();
  sub_2261C74AC(&v108, v65, &v105);

  sub_22619A7B4(&v108, &qword_27D78DFD0, &qword_2261E6FF0);
  v66 = v105;
  v67 = v106;
  if (BYTE1(v106))
  {
    v108 = v105;
    LOBYTE(v109) = v106 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    sub_2261795CC(v66, *(&v66 + 1), v67, 1);
LABEL_24:
    v68 = sub_2261E3FFC();
    *&v108 = 0;
    *(&v108 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v108 = 0xD00000000000001CLL;
    *(&v108 + 1) = 0x80000002261EC3E0;
    v69 = v91;
    v70 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v70);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v68, v108, *(&v108 + 1), 0xD000000000000061, v61 | 0x8000000000000000, 634);

    v71 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
    v101(0, v71);

    sub_2261AC974(v57, type metadata accessor for Key);
    (*(v93 + 8))(v69, v94);
    return;
  }

  if (!v105)
  {
    sub_2261795CC(0, *(&v105 + 1), v106, 0);
    goto LABEL_24;
  }

  v76 = v95;
  v77 = v97;
  v78 = v92;
  (*(v95 + 16))(v97, v89 + v88, v92);
  v79 = v66;
  v80 = sub_2261E3FEC();
  *&v108 = 0;
  *(&v108 + 1) = 0xE000000000000000;
  sub_2261E410C();
  v81 = MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
  v82 = sub_2261C9E2C(v81);
  if (v83)
  {
    v84 = v83;
  }

  else
  {
    v82 = 7104878;
    v84 = 0xE300000000000000;
  }

  MEMORY[0x22AA782B0](v82, v84);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v80, v108, *(&v108 + 1), 0xD000000000000061, v87 | 0x8000000000000000, 639);

  (*(v76 + 8))(v77, v78);
  v85 = v79;
  v101(v66, 0);
  sub_2261795CC(v66, *(&v66 + 1), v67, 0);
  sub_2261795CC(v66, *(&v66 + 1), v67, 0);

  sub_2261AC974(v90, type metadata accessor for Key);
  (*(v93 + 8))(v91, v94);
}

id AppAttestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppAttestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AppAttestHandler(uint64_t a1)
{
  result = qword_28136F370;
  if (!qword_28136F370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2261B7F34(uint64_t a1)
{
  result = sub_2261E3CDC();
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

void sub_2261B8014(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v163 = a3;
  v174 = *MEMORY[0x277D85DE8];
  v150 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v150);
  v151 = v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppUUID(0);
  MEMORY[0x28223BE20](v8);
  v10 = v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v144 - v12;
  v159 = sub_2261E3C3C();
  v156 = *(v159 - 8);
  v14 = MEMORY[0x28223BE20](v159);
  v155 = v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v152 = v144 - v17;
  MEMORY[0x28223BE20](v16);
  v157 = v144 - v18;
  v19 = sub_2261E3CDC();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v26 = v144 - v25;
  v158 = a1;
  if (!a2)
  {
    a1 = 7104878;
    goto LABEL_9;
  }

  v27 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v27 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
LABEL_9:
    v160 = a1;
    v153 = v10;
    v154 = v13;
    v32 = v23;
    v148 = v8;
    v162 = a4;
    v33 = v163;
    v34 = v24;
    v35 = sub_2261AA444();
    v37 = sub_22619DFA0(v35, v36);

    v161 = v34;
    v38 = *(v34 + 16);
    if (a2)
    {
      v39 = a2;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    if ((v37 & 1) == 0)
    {
      v38(v22, &v33[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger], v32);
      v44 = sub_2261E3FFC();
      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v171 = 0xD00000000000002ELL;
      *(&v171 + 1) = 0x80000002261EBE00;

      MEMORY[0x22AA782B0](v160, v39);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v44, v171, *(&v171 + 1), 0xD000000000000061, 0x80000002261EBE30, 48);

      (*(v161 + 8))(v22, v32);
      v45 = sub_2261A9CDC(3, 0xD000000000000020, 0x80000002261EBEA0);
      (*(v162 + 16))(v162, 0, 0, v45);

      return;
    }

    v149 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
    v38(v26, &v33[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger], v32);
    v40 = sub_2261E400C();
    *&v171 = 0;
    *(&v171 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&error = 0xD00000000000001BLL;
    *(&error + 1) = 0x80000002261EBED0;

    MEMORY[0x22AA782B0](v160, v39);

    MEMORY[0x22AA782B0](8236, 0xE200000000000000);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
    sub_22619C448();

    v171 = v168;
    v172 = v169;
    v173 = v170;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
    v42 = sub_2261E3E3C();
    MEMORY[0x22AA782B0](v42);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v40, error, *(&error + 1), 0xD000000000000061, 0x80000002261EBE30, 53);

    (*(v161 + 8))(v26, v32);
    v43 = v154;
    sub_2261AC2DC(v158, a2, v154);
    v146 = v41;
    v147 = 0;
    v145 = a2;
    v161 = "n is ineligible. { clientUUID=";
    v46 = v156;
    v47 = v159;
    v48 = (*(v156 + 48))(v43, 1, v159);
    if (v48 == 1)
    {
      sub_22619A7B4(v43, &qword_27D78DF28, &unk_2261E6FD0);
      v49 = v157;
      sub_2261E3C2C();
      v50 = sub_2261E400C();
      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v171 = 0xD000000000000021;
      *(&v171 + 1) = 0x80000002261EBF50;
      v51 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v51);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v52 = v161;
      v53 = v163;
      sub_2261A4EAC(v50, v171, *(&v171 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 62);
      v54 = v159;

      v55 = *(v46 + 16);
      v56 = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    else
    {
      v57 = v152;
      (*(v46 + 32))(v152, v43, v47);
      v160 = *(v46 + 16);
      (v160)(v157, v57, v47);
      LODWORD(v154) = sub_2261E400C();
      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v171 = 0xD00000000000001DLL;
      *(&v171 + 1) = 0x80000002261EC1B0;
      v58 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v58);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v52 = v161;
      v53 = v163;
      sub_2261A4EAC(v154, v171, *(&v171 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 59);
      v54 = v159;
      v49 = v157;

      (*(v46 + 8))(v57, v54);
      v56 = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v55 = v160;
    }

    v59 = v155;
    v160 = v55;
    v152 = v56;
    (v55)(v155, v49, v54);
    v60 = sub_2261E3C1C();
    sub_2261C350C(v59, v60, v61, v153);
    LOBYTE(v59) = sub_2261E400C();
    *&v171 = 0;
    *(&v171 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v171 = 0xD000000000000016;
    *(&v171 + 1) = 0x80000002261EBF80;
    v62 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v62);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v59, v171, *(&v171 + 1), 0xD000000000000061, v52 | 0x8000000000000000, 72);

    type metadata accessor for SecurityController(0);
    v63 = sub_2261A0FCC(*&v53[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken], *&v53[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 8], *&v53[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 16], *&v53[OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_auditToken + 24]);
    v64 = sub_2261A2BD8();
    v65 = *v64;
    v66 = v64[1];

    v67 = MEMORY[0x277D839B0];
    v68 = isRunningInRecovery();
    sub_2261A10B4(v65, v66, v68 & 1, v67, &v171);

    v154 = v63;
    if (v171 == 2 || (v171 & 1) == 0)
    {
      v70 = 0;
    }

    else
    {
      *&error = 0;
      if (!*MEMORY[0x277CDBF00])
      {
        __break(1u);
        return;
      }

      v69 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, &error);
      v70 = v69;
      v71 = error;
      if (error)
      {
        type metadata accessor for CFError(0);
        sub_2261A2790();
        v72 = v71;
        v73 = swift_allocError();
        *v74 = v72;
        v75 = v70;
        LOBYTE(v72) = sub_2261E3FFC();
        *&v171 = 0;
        *(&v171 + 1) = 0xE000000000000000;
        sub_2261E410C();
        MEMORY[0x22AA782B0](0xD00000000000003FLL, 0x80000002261EC170);
        swift_getErrorValue();
        v76 = sub_2261E429C();
        MEMORY[0x22AA782B0](v76);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v72, v171, *(&v171 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 90);

        if (error)
        {
        }
      }

      else
      {
        v108 = v69;
      }
    }

    isRunningInRecovery();
    v77 = v147;
    v78 = sub_2261C854C(v70);
    if (v77)
    {

      v79 = sub_2261E3FFC();
      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v164 = 0xD00000000000001ELL;
      *(&v164 + 1) = 0x80000002261EBFA0;
      swift_getErrorValue();
      v80 = sub_2261E429C();
      MEMORY[0x22AA782B0](v80);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v81 = v157;
      v82 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v82);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      error = v171;
      v166 = v172;
      v167 = v173;
      v83 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v83);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v79, v164, *(&v164 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 101);

      *&error = 0;
      *(&error + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&error = 0xD00000000000001ELL;
      *(&error + 1) = 0x80000002261EBFA0;
      swift_getErrorValue();
      v84 = sub_2261E429C();
      MEMORY[0x22AA782B0](v84);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v85 = sub_2261A9CDC(0, error, *(&error + 1));

      (*(v162 + 16))(v162, 0, 0, v85);

      sub_2261AC974(v153, type metadata accessor for AppUUID);
      (*(v156 + 8))(v81, v159);
      return;
    }

    v86 = v78;

    v87 = v86;
    v88 = sub_2261C9E2C(v87);
    v90 = v89;

    if (!v90)
    {
      v106 = sub_2261E3FFC();
      sub_2261A4EAC(v106, 0xD000000000000031, 0x80000002261EBFC0, 0xD000000000000061, v161 | 0x8000000000000000, 107);
      v107 = sub_2261A9CDC(0, 0xD000000000000031, 0x80000002261EBFC0);
      (*(v162 + 16))(v162, 0, 0, v107);

      sub_2261AC974(v153, type metadata accessor for AppUUID);
      (*(v156 + 8))(v157, v159);
      return;
    }

    v147 = v70;
    v144[1] = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;

    v91 = sub_22619C044();

    v92 = v155;
    (v160)(v155, v153, v159);
    v160 = v87;
    v93 = v151;
    sub_2261C3918(v91 & 1, v92, v87, v88, v90, v151);
    v94 = sub_2261E400C();
    *&v171 = 0;
    *(&v171 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v171 = 0xD000000000000015;
    *(&v171 + 1) = 0x80000002261EC000;
    v95 = v150;
    v96 = &v93[*(v150 + 28)];
    v97 = *v96;
    v98 = v96[1];
    MEMORY[0x22AA782B0](*v96, v98);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v94, v171, *(&v171 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 114);

    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v172 + 1) = v95;
    *&v173 = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v171);
    sub_2261AC9D4(v93, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    v101 = v100;
    nullsub_1();
    sub_2261C3CDC(&v171, v101, &error);
    v155 = v98;

    __swift_destroy_boxed_opaque_existential_0(&v171);
    v109 = *(&error + 1);
    v110 = v166;
    if (BYTE1(v166) == 1)
    {
      v111 = error;
      sub_22619C838(error, *(&error + 1));
      v112 = sub_2261E3FFC();
      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      sub_2261E410C();
      v164 = v171;
      MEMORY[0x22AA782B0](0xD000000000000029, 0x80000002261EC140);
      v171 = v111;
      LOBYTE(v172) = v110 & 1;
      sub_22619C7B4();
      v113 = sub_2261E429C();
      v115 = v114;
      sub_2261795CC(v111, *(&v111 + 1), v110, 1);
      MEMORY[0x22AA782B0](v113, v115);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v116 = v153;
      MEMORY[0x22AA782B0](*&v153[*(v148 + 20)], *&v153[*(v148 + 20) + 8]);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      error = v171;
      v166 = v172;
      v167 = v173;
      v117 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v117);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v112, v164, *(&v164 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 119);

      v118 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC050);
      (*(v162 + 16))(v162, 0, 0, v118);

      sub_2261795CC(v111, *(&v111 + 1), v110, 1);
      v119 = v116;
LABEL_33:
      sub_2261AC974(v119, type metadata accessor for AppUUID);
      (*(v156 + 8))(v157, v159);
LABEL_34:
      v120 = v93;
LABEL_35:
      sub_2261AC974(v120, type metadata accessor for Key);
      return;
    }

    LODWORD(v152) = v166;
    if (!error)
    {
      v125 = v152;
      v102 = sub_2261E3FFC();
      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v164 = 0xD000000000000027;
      *(&v164 + 1) = 0x80000002261EC020;
      v103 = v153;
      MEMORY[0x22AA782B0](*&v153[*(v148 + 20)], *&v153[*(v148 + 20) + 8]);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      error = v171;
      v166 = v172;
      v167 = v173;
      v104 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v104);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v102, v164, *(&v164 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 126);

      v105 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC050);
      (*(v162 + 16))(v162, 0, 0, v105);

      sub_2261AC95C(0, v109, v125);
      v119 = v103;
      goto LABEL_33;
    }

    v150 = *(&error + 1);
    v144[0] = error;
    v121 = sub_2261E400C();
    *&v171 = 0;
    *(&v171 + 1) = 0xE000000000000000;
    sub_2261E410C();

    *&v171 = 0xD00000000000001DLL;
    *(&v171 + 1) = 0x80000002261EC070;
    MEMORY[0x22AA782B0](v97, v155);
    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v121, v171, *(&v171 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 131);

    v122 = v157;
    v123 = sub_2261E3C1C();
    if (v145)
    {
      if (v123 == v158 && v124 == v145)
      {

LABEL_50:
        sub_2261E3C1C();
        v142 = sub_2261E3DAC();
        v143 = sub_2261E3DAC();
        (*(v162 + 16))(v162, v142, v143, 0);

        sub_2261795CC(v144[0], v150, v152, 0);
        sub_2261AC974(v153, type metadata accessor for AppUUID);
        (*(v156 + 8))(v122, v159);
        goto LABEL_34;
      }

      v126 = sub_2261E425C();

      if (v126)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___appUUIDDataManager, type metadata accessor for AppUUIDDataManager, sub_2261DD6B8);
    *(&v172 + 1) = v148;
    *&v173 = &off_28395C880;
    v127 = __swift_allocate_boxed_opaque_existential_1(&v171);
    sub_2261AC9D4(v153, v127, type metadata accessor for AppUUID);
    v128 = MEMORY[0x277CC9318];
    nullsub_1();
    sub_2261DD794(&v171, v128, &error);

    __swift_destroy_boxed_opaque_existential_0(&v171);
    v133 = error;
    v134 = v166;
    if (BYTE1(v166) == 1)
    {
      sub_22619C838(error, *(&error + 1));
      LODWORD(v158) = sub_2261E3FFC();
      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      sub_2261E410C();
      v164 = v171;
      MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC110);
      v171 = v133;
      LOBYTE(v172) = v134 & 1;
      sub_2261E413C();
      sub_2261B5424(v133, *(&v133 + 1), v134, 1, sub_2261A28B8, sub_22619C830);
      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v135 = v153;
      MEMORY[0x22AA782B0](*&v153[*(v148 + 20)], *&v153[*(v148 + 20) + 8]);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      error = v171;
      v166 = v172;
      v167 = v173;
      v136 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v136);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v158, v164, *(&v164 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 137);

      v137 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC0C0);
      (*(v162 + 16))(v162, 0, 0, v137);

      sub_2261B5424(v133, *(&v133 + 1), v134, 1, sub_2261A28B8, sub_22619C830);
      sub_2261795CC(v144[0], v150, v152, 0);
      v138 = v135;
    }

    else
    {
      if (*(&error + 1) >> 60 != 15)
      {
        sub_22619D8F4(error, *(&error + 1));
        v141 = sub_2261E400C();
        sub_2261A4EAC(v141, 0xD000000000000023, 0x80000002261EC0E0, 0xD000000000000061, v161 | 0x8000000000000000, 149);
        sub_2261B5424(v133, *(&v133 + 1), v134, 0, sub_2261A28B8, sub_22619C830);
        sub_2261B5424(v133, *(&v133 + 1), v134, 0, sub_2261A28B8, sub_22619C830);
        v122 = v157;
        v93 = v151;
        goto LABEL_50;
      }

      v139 = error;
      v140 = v166;
      v129 = sub_2261E3FFC();
      *&v171 = 0;
      *(&v171 + 1) = 0xE000000000000000;
      sub_2261E410C();

      *&v164 = 0xD000000000000027;
      *(&v164 + 1) = 0x80000002261EC090;
      v130 = v153;
      MEMORY[0x22AA782B0](*&v153[*(v148 + 20)], *&v153[*(v148 + 20) + 8]);
      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      error = v171;
      v166 = v172;
      v167 = v173;
      v131 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v131);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v129, v164, *(&v164 + 1), 0xD000000000000061, v161 | 0x8000000000000000, 144);

      v132 = sub_2261A9CDC(0, 0xD00000000000001FLL, 0x80000002261EC0C0);
      (*(v162 + 16))(v162, 0, 0, v132);

      sub_2261ACA3C(v139, *(&v133 + 1), v140);
      sub_2261795CC(v144[0], v150, v152, 0);
      v138 = v130;
    }

    sub_2261AC974(v138, type metadata accessor for AppUUID);
    (*(v156 + 8))(v157, v159);
    v120 = v151;
    goto LABEL_35;
  }

  v28 = sub_2261E3FFC();
  sub_2261A4EAC(v28, 0xD000000000000015, 0x80000002261EC1D0, 0xD000000000000061, 0x80000002261EBE30, 41);
  v29 = sub_2261A9CDC(1, 0xD000000000000013, 0x80000002261EC1F0);
  v30 = *(a4 + 16);
  v163 = v29;
  v30(a4, 0, 0);
  v31 = v163;
}

void sub_2261B9D60(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char *a7, void (**a8)(const void *, void, char *))
{
  v255 = a7;
  v252 = a5;
  v253 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E040, &unk_2261E6FE0);
  MEMORY[0x28223BE20](v13 - 8);
  v244 = &v225[-v14];
  v15 = sub_2261E3CDC();
  v250 = *(v15 - 8);
  v251 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v225[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v245 = &v225[-v19];
  v246 = type metadata accessor for Key(0);
  MEMORY[0x28223BE20](v246);
  v248 = &v225[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v225[-v22];
  v24 = sub_2261E3C3C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v247 = &v225[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v243 = v27;
  MEMORY[0x28223BE20](v26);
  v249 = &v225[-v28];
  v29 = swift_allocObject();
  v30 = a4;
  v254 = v29;
  *(v29 + 16) = a8;
  v31 = a8;
  v32 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v32 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_15;
  }

  v33 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v33 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_15;
  }

  v34 = v253 >> 62;
  if ((v253 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_15;
    }

    v35 = *(v252 + 16);
    v36 = *(v252 + 24);
LABEL_14:
    if (v35 != v36)
    {
      goto LABEL_19;
    }

LABEL_15:
    _Block_copy(a8);
    v37 = sub_2261E3FFC();
    sub_2261A4EAC(v37, 0xD000000000000013, 0x80000002261EC1F0, 0xD000000000000061, 0x80000002261EBE30, 166);
    v38 = 0x80000002261EC1F0;
    v39 = 1;
    v40 = 0xD000000000000013;
LABEL_16:
    v255 = sub_2261A9CDC(v39, v40, v38);
    v31[2](v31, 0, v255);

    v41 = v255;

    return;
  }

  if (v34)
  {
    v35 = v252;
    v36 = v252 >> 32;
    goto LABEL_14;
  }

  if ((v253 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v241 = a3;
  v242 = v30;
  v239 = v24;
  v240 = v25;
  _Block_copy(a8);
  v42 = sub_2261AA444();
  v44 = sub_22619DFA0(v42, v43);

  v45 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler_logger;
  if ((v44 & 1) == 0)
  {
    v50 = sub_2261E3FFC();
    v284.n128_u64[0] = 0;
    v284.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD00000000000002ELL, 0x80000002261EBE00);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
    MEMORY[0x22AA782B0](v241, v242);
    MEMORY[0x22AA782B0](0xD000000000000011, 0x80000002261EC210);
    v51 = sub_2261E3B9C();
    MEMORY[0x22AA782B0](v51);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v50, v284.n128_i64[0], v284.n128_u64[1], 0xD000000000000061, 0x80000002261EBE30, 172);

    v40 = 0xD000000000000020;
    v38 = 0x80000002261EBEA0;
    v39 = 3;
    goto LABEL_16;
  }

  v235 = v31;
  LODWORD(v236) = sub_2261E400C();
  v284.n128_u64[0] = 0;
  v284.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v256 = v284;
  v234 = 0xD00000000000001CLL;
  MEMORY[0x22AA782B0]();
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v241, v242);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);
  v46 = v255;
  sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager, type metadata accessor for IdentityManager, sub_22619AB84);
  sub_22619C448();

  v284 = v268[3];
  v285 = v268[4];
  v286 = v268[5];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
  v48 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v48);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  v237 = "n is ineligible. { clientUUID=";
  v238 = v45;
  sub_2261A4EAC(v236, v256, *(&v256 + 1), 0xD000000000000061, 0x80000002261EBE30, 177);

  sub_2261AC2DC(a1, a2, v23);
  v49 = v46;
  v52 = v234;
  v236 = 0;
  v233 = v47;
  v54 = v239;
  v53 = v240;
  v55 = (*(v240 + 48))(v23, 1, v239);
  if (v55 != 1)
  {
    v62 = *(v53 + 32);
    v62(v249, v23, v54);
    if (sub_2261E3C1C() == a1 && v63 == a2)
    {
    }

    else
    {
      v64 = sub_2261E425C();

      if ((v64 & 1) == 0)
      {
        v93 = sub_2261E3FFC();
        v284.n128_u64[0] = 0;
        v284.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        *v270 = v284;
        MEMORY[0x22AA782B0](0xD000000000000051, 0x80000002261EC2C0);
        MEMORY[0x22AA782B0](a1, a2);
        MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
        v84 = v249;
        v94 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v94);

        MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
        MEMORY[0x22AA782B0](v241, v242);
        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v256 = v284;
        v257 = v285;
        v258 = v286;
        v95 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v95);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v93, v270[0], v270[1], 0xD000000000000061, v237 | 0x8000000000000000, 187);

        v96 = sub_2261A9CDC(1, 0xD000000000000043, 0x80000002261EC340);
        v235[2](v235, 0, v96);

        goto LABEL_37;
      }
    }

    v232 = v53 + 32;
    v65 = v52;
    v234 = v62;
    v66 = sub_2261E400C();
    v284.n128_u64[0] = 0;
    v284.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    MEMORY[0x22AA782B0](0xD000000000000045, 0x80000002261EC390);
    MEMORY[0x22AA782B0](a1, a2);
    MEMORY[0x22AA782B0](0xD000000000000012, 0x80000002261EC320);
    v67 = v249;
    v68 = sub_2261E3C1C();
    MEMORY[0x22AA782B0](v68);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    v69 = v255;
    sub_2261A4EAC(v66, v284.n128_i64[0], v284.n128_u64[1], 0xD000000000000061, v237 | 0x8000000000000000, 192);

    v70 = OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___identityManager;

    v71 = sub_22619C044();

    v72 = v240 + 16;
    v73 = v247;
    v74 = v67;
    v75 = *(v240 + 16);
    v75(v247, v74, v239);
    v76 = v242;

    v77 = v248;
    sub_2261C3918(v71 & 1, v73, 0, v241, v76, v248);
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___keyDataManager, type metadata accessor for KeyDataManager, sub_2261C3C28);
    *(&v285 + 1) = v246;
    *&v286 = &off_28395C890;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v284);
    sub_2261AC9D4(v77, boxed_opaque_existential_1, type metadata accessor for Key);
    type metadata accessor for SecKey();
    v79 = v236;
    sub_2261C74AC(&v284, v80, &v256);
    if (v79)
    {

      sub_22619A7B4(&v284, &qword_27D78DFD0, &qword_2261E6FF0);
      v81 = 0;
      v82 = -256;
LABEL_32:
      v83 = sub_2261E3FFC();
      v284.n128_u64[0] = 0;
      v284.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      v284.n128_u64[0] = v65;
      v284.n128_u64[1] = 0x80000002261EC3E0;
      v84 = v249;
      v85 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v85);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v83, v284.n128_i64[0], v284.n128_u64[1], 0xD000000000000061, v237 | 0x8000000000000000, 205);

      v86 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v235[2](v235, 0, v86);

      sub_2261AC95C(0, v81, v82);
LABEL_35:
      sub_2261AC974(v77, type metadata accessor for Key);
LABEL_37:
      (*(v240 + 8))(v84, v239);
LABEL_38:

      return;
    }

    v231 = v72;
    v246 = v70;

    sub_22619A7B4(&v284, &qword_27D78DFD0, &qword_2261E6FF0);
    v87 = v256;
    v82 = v257;
    if (BYTE1(v257) == 1)
    {
      sub_22619C838(v256, *(&v256 + 1));
      LODWORD(v253) = sub_2261E3FFC();
      v284.n128_u64[0] = 0;
      v284.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      *&v256 = 0xD00000000000001DLL;
      *(&v256 + 1) = 0x80000002261EC6B0;
      v284 = v87;
      LOBYTE(v285) = v82 & 1;
      sub_22619C7B4();
      v88 = sub_2261E429C();
      v90 = v89;
      sub_2261795CC(v87, *(&v87 + 1), v82, 1);
      MEMORY[0x22AA782B0](v88, v90);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v84 = v249;
      v91 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v91);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v253, v256, *(&v256 + 1), 0xD000000000000061, v237 | 0x8000000000000000, 198);

      v92 = sub_2261A9CDC(2, 0xD000000000000014, 0x80000002261EC400);
      v235[2](v235, 0, v92);

      sub_2261795CC(v87, *(&v87 + 1), v82, 1);
      goto LABEL_35;
    }

    v236 = *(&v256 + 1);
    if (!v256)
    {
      v81 = v236;
      goto LABEL_32;
    }

    v228 = v75;
    v230 = v257;
    v98 = v250;
    v97 = v251;
    v99 = v245;
    (v250)[2](v245, &v69[v238], v251);
    v229 = v87;
    v100 = v87;
    v101 = sub_2261E400C();
    v284.n128_u64[0] = 0;
    v284.n128_u64[1] = 0xE000000000000000;
    sub_2261E410C();
    v102 = MEMORY[0x22AA782B0](0xD00000000000002FLL, 0x80000002261EC420);
    v103 = sub_2261C9E2C(v102);
    if (v104)
    {
      v105 = v104;
    }

    else
    {
      v103 = 7104878;
      v105 = 0xE300000000000000;
    }

    MEMORY[0x22AA782B0](v103, v105);

    MEMORY[0x22AA782B0](32032, 0xE200000000000000);
    sub_2261A4EAC(v101, v284.n128_i64[0], v284.n128_u64[1], 0xD000000000000061, v237 | 0x8000000000000000, 210);

    (*(v98 + 8))(v99, v97);

    v106 = sub_22619C044();

    v107 = sub_2261E3C1C();
    v109 = v108;
    v250 = v100;
    v110 = sub_2261C9E2C(v107);
    if (v111)
    {
      v112 = v110;
      v113 = v111;
    }

    else
    {
      v113 = v242;

      v112 = v241;
    }

    v114 = swift_allocObject();
    v284.n128_u8[0] = 0;
    sub_2261C378C(v106 & 1, 0, v107, v109, v112, v113, v269);
    v115 = v269[1];
    *(v114 + 16) = v269[0];
    *(v114 + 32) = v115;
    *(v114 + 48) = v269[2];
    sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___assertionDataManager, type metadata accessor for AssertionDataManager, sub_2261A58BC);
    v116 = *(v114 + 16);
    v117 = *(v114 + 20);
    v118 = *(v114 + 24);
    v120 = *(v114 + 32);
    v119 = *(v114 + 40);
    v251 = v114;
    v121 = *(v114 + 48);
    v122 = *(v114 + 56);
    *(&v285 + 1) = &type metadata for AssertionCounter;
    *&v286 = &off_28395C888;
    v123 = swift_allocObject();
    v284.n128_u64[0] = v123;
    *(v123 + 16) = v116;
    *(v123 + 20) = v117;
    *(v123 + 24) = v118;
    *(v123 + 32) = v120;
    *(v123 + 40) = v119;
    *(v123 + 48) = v121;
    *(v123 + 56) = v122;

    sub_2261A8A9C(&v284, MEMORY[0x277D83B88], &v256);

    sub_22619A7B4(&v284, &qword_27D78DFD0, &qword_2261E6FF0);
    v132 = v256;
    if (BYTE1(v257) == 1)
    {
      v133 = v257;
      v134 = sub_2261E3FFC();
      v284.n128_u64[0] = 0;
      v284.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      *v270 = v284;
      MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC650);
      v284 = v132;
      LOBYTE(v285) = v133 & 1;
      sub_22619C7B4();
      v135 = sub_2261E429C();
      v137 = v136;
      sub_226179098(v132, *(&v132 + 1), v133, 1);
      MEMORY[0x22AA782B0](v135, v137);

      MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
      v125 = v249;
      v138 = sub_2261E3C1C();
      MEMORY[0x22AA782B0](v138);

      MEMORY[0x22AA782B0](8236, 0xE200000000000000);

      sub_22619C448();

      v256 = v284;
      v257 = v285;
      v258 = v286;
      v139 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v139);

      MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
      sub_2261A4EAC(v134, v270[0], v270[1], 0xD000000000000061, v237 | 0x8000000000000000, 217);

      v140 = sub_2261A9CDC(0, 0xD000000000000027, 0x80000002261EC680);
      v235[2](v235, 0, v140);

      v141 = v229;
      v142 = v236;
      LOBYTE(v140) = v230;
      sub_2261795CC(v229, v236, v230, 0);
      v143 = v141;
      v144 = v142;
      v145 = v140;
    }

    else
    {
      v146 = v248;
      if ((BYTE8(v256) & 1) != 0 || v256 > 1)
      {
        v124 = sub_2261E3FFC();
        v284.n128_u64[0] = 0;
        v284.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();

        v270[0] = 0xD000000000000027;
        v270[1] = 0x80000002261EC450;
        v125 = v249;
        v126 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v126);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v256 = v284;
        v257 = v285;
        v258 = v286;
        v127 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v127);

        MEMORY[0x22AA782B0](8200233, 0xE300000000000000);
        sub_2261A4EAC(v124, v270[0], v270[1], 0xD000000000000061, v237 | 0x8000000000000000, 225);

        v128 = sub_2261A9CDC(1, 0xD000000000000028, 0x80000002261EC480);
        v235[2](v235, 0, v128);

        v129 = v229;
        v130 = v236;
        LOBYTE(v128) = v230;
        sub_2261795CC(v229, v236, v230, 0);
        sub_2261795CC(v129, v130, v128, 0);
        v131 = v146;
LABEL_52:
        sub_2261AC974(v131, type metadata accessor for Key);
        (*(v240 + 8))(v125, v239);
LABEL_53:

        goto LABEL_38;
      }

      v147 = sub_2261E400C();
      v284.n128_u64[0] = 0;
      v284.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();
      MEMORY[0x22AA782B0](0xD00000000000005CLL, 0x80000002261EC4B0);
      *&v256 = v132;
      v148 = sub_2261E423C();
      MEMORY[0x22AA782B0](v148);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v147, v284.n128_i64[0], v284.n128_u64[1], 0xD000000000000061, v237 | 0x8000000000000000, 230);

      v149 = sub_22619C044();

      LOBYTE(v270[0]) = v149 & 1;
      LOBYTE(v274) = 0;
      sub_2261AF3A8();
      sub_2261E3EFC();
      sub_2261E3EFC();
      v150 = v251;
      if (*&v284 == v256)
      {

        v151 = sub_2261CDB98();
      }

      else
      {
        v152 = sub_2261E425C();

        if (v152)
        {
          v151 = sub_2261CDB98();
        }

        else
        {
          v151 = sub_2261CDAC8();
        }
      }

      v154 = *v151;
      v153 = v151[1];
      sub_22619D8F4(*v151, v153);
      v155 = sub_2261CDBE8();
      v156 = v150[2];
      v292[0] = v150[1];
      v292[1] = v156;
      v157 = v150[2];
      v292[2] = v150[3];
      v158 = *v155;
      v159 = v150[3];
      v293 = v157;
      v294[0] = v159;
      sub_2261790A8(v229, v236, v230, 0);
      sub_2261AF3FC(&v293, &v284);
      sub_2261AF3FC(v294, &v284);
      sub_2261CD7CC(v154, v153, v158, v292, v250, v270);
      sub_2261AF458(&OBJC_IVAR____TtC17AppAttestInternal16AppAttestHandler____lazy_storage___authenticationManager, type metadata accessor for AuthenticationManager, sub_2261CB950);
      v245 = sub_2261CBA0C(1, v270);
      v161 = v160;
      v227 = v162;

      v226 = v161;
      if ((v161 & 0x100) != 0)
      {
        v177 = v226;
        v178 = v226 & 1;
        v179 = v245;
        v180 = v227;
        sub_22619C838(v245, v227);
        LODWORD(v253) = sub_2261E3FFC();
        v284.n128_u64[0] = 0;
        v284.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v274 = v284;
        MEMORY[0x22AA782B0](0xD00000000000002DLL, 0x80000002261EC620);
        v284.n128_u64[0] = v179;
        v284.n128_u64[1] = v180;
        LOBYTE(v285) = v178;
        sub_2261E413C();
        sub_2261B5424(v179, v180, v177, 1, sub_22619C840, sub_22619C830);
        MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
        v181 = v249;
        v182 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v182);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v256 = v284;
        v257 = v285;
        v258 = v286;
        v183 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v183);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v253, v274, *(&v274 + 1), 0xD000000000000061, v237 | 0x8000000000000000, 240);

        v184 = sub_2261A9CDC(0, 0xD000000000000024, 0x80000002261EC540);
        v235[2](v235, 0, v184);

        sub_2261AF4E8(v270);
        sub_2261B5424(v179, v180, v177, 1, sub_22619C840, sub_22619C830);
        v185 = v229;
        v186 = v236;
        LOBYTE(v184) = v230;
        sub_2261795CC(v229, v236, v230, 0);
        sub_2261795CC(v185, v186, v184, 0);
        sub_2261AC974(v248, type metadata accessor for Key);
        (*(v240 + 8))(v181, v239);
        goto LABEL_53;
      }

      sub_22619D8F4(v245, v227);
      v163 = sub_2261E400C();
      v284.n128_u64[0] = 0;
      v284.n128_u64[1] = 0xE000000000000000;
      sub_2261E410C();

      v284.n128_u64[0] = 0xD00000000000002CLL;
      v284.n128_u64[1] = 0x80000002261EC570;
      v164 = sub_2261E3B9C();
      MEMORY[0x22AA782B0](v164);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      sub_2261A4EAC(v163, v284.n128_i64[0], v284.n128_u64[1], 0xD000000000000061, v237 | 0x8000000000000000, 252);

      sub_22619C448();

      if (v271.n128_u64[1] == 1 || (v278 = v271, v279 = v272, v280 = v273, v165 = sub_2261A54B0(), v167 = v166, v281 = v278, sub_22619A7B4(&v281, &qword_27D78DE20, &unk_2261E6280), v282 = v279, sub_22619A7B4(&v282, &qword_27D78DE20, &unk_2261E6280), v283 = v280, sub_22619A7B4(&v283, &qword_27D78DE20, &unk_2261E6280), !v167))
      {
        v187 = sub_2261E3FFC();
        v284.n128_u64[0] = 0;
        v284.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();

        *&v274 = 0xD00000000000001ELL;
        *(&v274 + 1) = 0x80000002261EC5A0;
        v125 = v249;
        v188 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v188);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v256 = v284;
        v257 = v285;
        v258 = v286;
        v189 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v189);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v187, v274, *(&v274 + 1), 0xD000000000000061, v237 | 0x8000000000000000, 256);

        v190 = sub_2261A9CDC(0, 0xD000000000000016, 0x80000002261EBBB0);
        v235[2](v235, 0, v190);
        sub_2261AF4E8(v270);

        v191 = v245;
        v192 = v227;
        v193 = v226;
        sub_2261B5424(v245, v227, v226, 0, sub_22619C840, sub_22619C830);
        v194 = v229;
        v195 = v236;
        v196 = v230;
        sub_2261795CC(v229, v236, v230, 0);
      }

      else
      {

        v168 = sub_22619C044();

        sub_2261790A8(v229, v236, v230, 0);
        v169 = v245;
        v170 = v227;
        sub_2261B5424(v245, v227, v226, 0, sub_22619D8F4, sub_22619C838);
        v171 = v252;
        v172 = v253;
        sub_22619D8F4(v252, v253);
        sub_2261D02A8(0, v168 & 1, v165, v167, v250, v169, v170, v171, &v274, v172);
        v173 = sub_2261AF53C();
        *(&v265 + 1) = &type metadata for AppAttestationRequestContext;
        *&v266 = sub_2261AF5C4();
        v174 = swift_allocObject();
        *&v264 = v174;
        v175 = v275;
        v174[1] = v274;
        v174[2] = v175;
        v176 = v277;
        v174[3] = v276;
        v174[4] = v176;
        sub_2261AF618(&v274, &v284);
        sub_2261D4738(&v264, &v256);

        __swift_destroy_boxed_opaque_existential_0(&v264);
        if (BYTE8(v258))
        {
          v197 = v256;
          v284 = v256;
          LOBYTE(v285) = v257;
          sub_22619C7B4();
          swift_willThrowTypedImpl();
          sub_22619C830(v197, *(&v197 + 1));
        }

        else
        {
          sub_2261795DC(&v256, v268);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78E048, &qword_2261E6FF8);
          if (swift_dynamicCast())
          {
            v288 = v260;
            v289 = v261;
            v290 = v262;
            v291 = v263;
            v284 = v256;
            v285 = v257;
            v286 = v258;
            v287 = v259;
            v198 = sub_2261E3FAC();
            v199 = v244;
            (*(*(v198 - 8) + 56))(v244, 1, 1, v198);
            v200 = v247;
            v201 = v239;
            v228(v247, v249, v239);
            v202 = (v243 + 263) & 0xFFFFFFFFFFFFFFF8;
            v203 = swift_allocObject();
            *(v203 + 16) = 0;
            *(v203 + 24) = 0;
            v204 = v255;
            *(v203 + 32) = v255;
            v205 = v289;
            *(v203 + 104) = v288;
            *(v203 + 120) = v205;
            *(v203 + 136) = v290;
            *(v203 + 152) = v291;
            v206 = v285;
            *(v203 + 40) = v284;
            *(v203 + 56) = v206;
            v207 = v287;
            *(v203 + 72) = v286;
            *(v203 + 88) = v207;
            v208 = v277;
            *(v203 + 192) = v276;
            *(v203 + 208) = v208;
            v209 = v275;
            *(v203 + 160) = v274;
            *(v203 + 176) = v209;
            v210 = v254;
            *(v203 + 224) = sub_2261C2F78;
            *(v203 + 232) = v210;
            v211 = v242;
            *(v203 + 240) = v241;
            *(v203 + 248) = v211;
            v234(v203 + 256, v200, v201);
            *(v203 + v202) = v251;

            sub_2261AF618(&v274, &v256);
            v212 = v204;

            sub_2261B0BA4(0, 0, v199, &unk_2261E7068, v203);
            sub_2261AF4E8(v270);

            v213 = v245;
            v214 = v227;
            v215 = v226;
            sub_2261B5424(v245, v227, v226, 0, sub_22619C840, sub_22619C830);
            v216 = v229;
            v217 = v236;
            LOBYTE(v204) = v230;
            sub_2261795CC(v229, v236, v230, 0);
            sub_2261AF6C8(&v274);
            sub_2261B5424(v213, v214, v215, 0, sub_22619C840, sub_22619C830);
            sub_2261795CC(v216, v217, v204, 0);
            sub_2261AC974(v248, type metadata accessor for Key);
            (*(v240 + 8))(v249, v239);

            goto LABEL_38;
          }
        }

        v218 = sub_2261E3FFC();
        v284.n128_u64[0] = 0;
        v284.n128_u64[1] = 0xE000000000000000;
        sub_2261E410C();
        v267 = v284;
        MEMORY[0x22AA782B0](0xD000000000000028, 0x80000002261EC5C0);
        v256 = v274;
        v257 = v275;
        v258 = v276;
        v259 = v277;
        sub_2261AF618(&v274, &v284);
        sub_2261AF674();
        v219 = sub_2261E423C();
        v221 = v220;
        v284 = v256;
        v285 = v257;
        v286 = v258;
        v287 = v259;
        sub_2261AF6C8(&v284);
        MEMORY[0x22AA782B0](v219, v221);

        MEMORY[0x22AA782B0](0x3D64697575202CLL, 0xE700000000000000);
        v125 = v249;
        v222 = sub_2261E3C1C();
        MEMORY[0x22AA782B0](v222);

        MEMORY[0x22AA782B0](8236, 0xE200000000000000);

        sub_22619C448();

        v264 = v256;
        v265 = v257;
        v266 = v258;
        v223 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v223);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        sub_2261A4EAC(v218, v267.n128_i64[0], v267.n128_u64[1], 0xD000000000000061, v237 | 0x8000000000000000, 270);

        v224 = sub_2261A9CDC(0, 0xD000000000000025, 0x80000002261EC5F0);
        v235[2](v235, 0, v224);
        sub_2261AF4E8(v270);

        v191 = v245;
        v192 = v227;
        v193 = v226;
        sub_2261B5424(v245, v227, v226, 0, sub_22619C840, sub_22619C830);
        v194 = v229;
        v195 = v236;
        v196 = v230;
        sub_2261795CC(v229, v236, v230, 0);
        sub_2261AF6C8(&v274);
      }

      sub_2261B5424(v191, v192, v193, 0, sub_22619C840, sub_22619C830);
      v143 = v194;
      v144 = v195;
      v145 = v196;
    }

    sub_2261795CC(v143, v144, v145, 0);
    v131 = v248;
    goto LABEL_52;
  }

  sub_22619A7B4(v23, &qword_27D78DF28, &unk_2261E6FD0);
  (v250)[2](v18, &v49[v238], v251);
  v56 = sub_2261E3FFC();
  v284.n128_u64[0] = 0;
  v284.n128_u64[1] = 0xE000000000000000;
  sub_2261E410C();
  v278 = v284;
  MEMORY[0x22AA782B0](0xD00000000000003CLL, 0x80000002261EC250);
  MEMORY[0x22AA782B0](a1, a2);
  MEMORY[0x22AA782B0](0x6E6564657263202CLL, 0xED00003D6C616974);
  MEMORY[0x22AA782B0](v241, v242);
  MEMORY[0x22AA782B0](8236, 0xE200000000000000);

  sub_22619C448();

  v57 = 0;
  v58 = 0;
  if (*(&v256 + 1) != 1)
  {
    v284 = v256;
    v285 = v257;
    v286 = v258;
    v57 = sub_2261A5660();
    v58 = v59;
    v292[0] = v284;
    sub_22619A7B4(v292, &qword_27D78DE20, &unk_2261E6280);
    v274 = v285;
    sub_22619A7B4(&v274, &qword_27D78DE20, &unk_2261E6280);
    *v270 = v286;
    sub_22619A7B4(v270, &qword_27D78DE20, &unk_2261E6280);
  }

  v271.n128_u64[0] = v57;
  v271.n128_u64[1] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DE20, &unk_2261E6280);
  v60 = sub_2261E3E3C();
  MEMORY[0x22AA782B0](v60);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v56, v278.n128_i64[0], v278.n128_u64[1], 0xD000000000000061, v237 | 0x8000000000000000, 181);

  (v250[1])(v18, v251);
  v61 = sub_2261A9CDC(1, 0xD00000000000002ELL, 0x80000002261EC290);
  v235[2](v235, 0, v61);
}