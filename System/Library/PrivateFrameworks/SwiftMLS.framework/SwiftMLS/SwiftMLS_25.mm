uint64_t sub_26BFF3500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x35)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 204) = 0;
    *(result + 200) = 0;
    *result = a2 - 54;
    if (a3 >= 0x36)
    {
      *(result + 205) = 1;
    }
  }

  else
  {
    if (a3 >= 0x36)
    {
      *(result + 205) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      v3 = (-a2 >> 4) & 3 | (4 * (-a2 & 0x3F));
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 144) = ((-a2 >> 4) & 3) << 60;
      *(result + 152) = 0;
      *(result + 160) = 0;
      *(result + 168) = (v3 << 58) & 0x3000000000000000;
      *(result + 176) = 0;
      *(result + 184) = 0;
      *(result + 192) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_26BFF35C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFF3630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFF36AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFF36F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFF375C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v7 = *v2++;
    v6 = v7;
    if ((v7 - 1) >= 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26BECB8B4(0, *(v3 + 16) + 1, 1);
      }

      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_26BECB8B4((v4 > 1), v5 + 1, 1);
      }

      *(v3 + 16) = v5 + 1;
      *(v3 + 2 * v5 + 32) = v6;
    }

    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_26BFF3840(uint64_t a1, char a2)
{
  v4 = v3;
  v6 = v2[8];
  v5 = v2[9];
  v7 = v2[10];
  v8 = *(a1 + 16);
  if (v8)
  {
    v42 = v4;
    v45 = MEMORY[0x277D84F90];

    v46 = v5;

    sub_26BECB8B4(0, v8, 0);
    v10 = v45;
    v11 = (a1 + 32);
    v12 = *(v45 + 16);
    v13 = v8;
    do
    {
      v15 = *v11;
      v11 += 12;
      v14 = v15;
      v45 = v10;
      v16 = *(v10 + 24);
      v17 = v12 + 1;
      if (v12 >= v16 >> 1)
      {
        sub_26BECB8B4((v16 > 1), v12 + 1, 1);
        v10 = v45;
      }

      *(v10 + 16) = v17;
      *(v10 + 2 * v12++ + 32) = v14;
      --v13;
    }

    while (v13);
    v4 = v42;
    v5 = v46;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);

    if (!v17)
    {
LABEL_18:

      if (a2)
      {
        v25 = (a1 + 32);
        v26 = v8 + 1;
        while (--v26)
        {
          v27 = v25 + 12;
          v28 = *v25;
          v25 += 12;
          if (v28 == 3)
          {
            v43 = 3;
            v44 = *(v27 - 1);
            sub_26BFF740C(&v43, &v45);
            if (v4)
            {
              return v23 & 1;
            }

            v29 = v5;
            v30 = v45;
            if (v45)
            {

              v46 = v29;

              v32 = sub_26BEC7EF0(v31);

              v33 = sub_26BFF3D4C(v6, v32, sub_26BEBE83C, sub_26BFF3DF0);

              if ((v33 & 1) == 0 || (v34 = , v35 = sub_26BEC7F24(v34), , v36 = sub_26BFF3D4C(v46, v35, sub_26BEBE83C, sub_26BFF3F70), , (v36 & 1) == 0))
              {

                sub_26BEC8C80(v30);
                goto LABEL_16;
              }

              v38 = sub_26BEC7F58(v37);

              v41 = sub_26BFF3D4C(v7, v38, sub_26BEBE83C, sub_26BFF3DF0);

              sub_26BEC8C80(v30);
              if ((v41 & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            break;
          }
        }
      }

      v23 = 1;
      return v23 & 1;
    }
  }

  v18 = 0;
  while (1)
  {
    v19 = *(v10 + 32 + 2 * v18);
    if ((v19 - 1) >= 5)
    {
      break;
    }

LABEL_9:
    if (++v18 == v17)
    {
      goto LABEL_18;
    }
  }

  v20 = *(v6 + 16);
  v21 = 32;
  while (v20)
  {
    v22 = *(v6 + v21);
    v21 += 2;
    --v20;
    if (v22 == v19)
    {
      goto LABEL_9;
    }
  }

LABEL_16:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_26BFF3CE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = *(v1 + 16);
  while (1)
  {
    v5 = *(a1 + 32 + 2 * v3);
    if ((v5 - 1) >= 5)
    {
      break;
    }

LABEL_3:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  v6 = *(v4 + 16);
  v7 = (v4 + 32);
  while (v6)
  {
    v8 = *v7++;
    --v6;
    if (v8 == v5)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_26BFF3D4C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t), uint64_t (*a4)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4 == 1)
  {
    result = a3(&v11, a2);
    if ((v11 & 0x10000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *(a1 + 16);
      v8 = (a1 + 32);
      do
      {
        v9 = v7-- != 0;
        result = v9;
        if (!v9)
        {
          break;
        }

        v10 = *v8++;
      }

      while (v10 != v11);
    }
  }

  else if (v4)
  {

    return a4(a1);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_26BFF3DF0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x277D85DE8];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_26BFF40F0(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_26BFF428C(v12, &v16);
    v13 = v16;
    MEMORY[0x26D69A4E0](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_26BFF3F70(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x277D85DE8];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_26BFF40F0(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_26BFF423C(v12, &v16);
    v13 = v16;
    MEMORY[0x26D69A4E0](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_26BFF40F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = a2 + 32;
  while (1)
  {
    v10 = *(v8 + 2 * v6);
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v12 = -1 << *(a3 + 32);
    v13 = result & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v7 + 8 * (v13 >> 6))) != 0)
    {
      v16 = *(a3 + 48);
      if (*(v16 + 2 * v13) != v10)
      {
        v17 = ~v12;
        do
        {
          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & *(v7 + 8 * (v13 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v16 + 2 * v13) != v10);
      }

      v9 = *(a1 + 8 * v14);
      *(a1 + 8 * v14) = v9 | v15;
      if ((v9 & v15) == 0)
      {
        break;
      }
    }

LABEL_4:
    if (++v6 == v3)
    {
      return 0;
    }
  }

  if (!__OFADD__(v5++, 1))
  {
    if (v5 == *(a3 + 16))
    {
      return 1;
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFF4254@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26BFF40F0(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

void MLS.Identity.Credential.telURI.getter()
{
  if ((*(v0 + 15) & 0x20) == 0)
  {
    return;
  }

  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x26D6996F0](0);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  if (!SecCertificateCopyURIs())
  {
LABEL_13:
    __break(1u);
    return;
  }

  type metadata accessor for CFArray(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
  if ((swift_dynamicCast() & 1) != 0 && v4 && !*(v4 + 16))
  {
  }
}

void (*sub_26BFF43D8@<X0>(void (*result)(void)@<X0>, uint64_t a2@<X8>))(void)
{
  if ((*(v2 + 15) & 0x20) != 0)
  {
    v5 = result;
    v6 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D6996F0](0);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v7 = *(v6 + 32);
    }

    v8 = v7;
    v5();
    sub_26C00916C();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v9 = sub_26C00921C();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v4, 1, v9);
}

void MLS.Identity.Credential.participantInfoNotAfter.getter(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MLS.Time(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s18RCSParticipantInfoVMa(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 15) & 0x20) == 0)
  {
    v11 = sub_26C00921C();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    return;
  }

  v12 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v13 = v8;
    v14 = MEMORY[0x26D6996F0](0);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = v8;
    v14 = *(v12 + 32);
  }

  v15 = v14;
  sub_26BECF754(v15);
  if (v2)
  {
  }

  else
  {
    v16 = *(v13 + 20);
    v17 = type metadata accessor for MLS.Validity(0);
    sub_26BEBF078(&v10[v16 + *(v17 + 20)], v6);
    Date.init(_:)(v6, a1);

    sub_26BFF55C8(v10);
    v18 = sub_26C00921C();
    (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.Identity.SigningIdentity.verifyConsistentKeys()()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    if (v1 >> 62)
    {
      v10 = sub_26C00AB8C();
      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_5:
        if ((v1 & 0xC000000000000001) != 0)
        {

          v11 = MEMORY[0x26D6996F0](0, v1);
          sub_26BE0489C(v1, v2);
        }

        else
        {
          if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return v10;
          }

          v11 = *(v1 + 32);
        }

        v12 = SecCertificateCopyKey(v11);
        if (v12)
        {
          v13 = v12;
          v14 = SecKeyCopyExternalRepresentation(v13, 0);
          if (v14)
          {
            v15 = v14;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              sub_26C0090FC();
            }
          }

          v16 = v0[5];
          v17 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
          v18 = (*(*(v17 + 8) + 16))(v16);
          v20 = v19;
          type metadata accessor for MLS.IdentityError(0);
          sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
          swift_allocError();
          *v21 = v18;
          v21[1] = v20;
          v21[2] = 0;
          v21[3] = 0xF000000000000000;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        else
        {
          type metadata accessor for MLS.IdentityError(0);
          sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        goto LABEL_18;
      }
    }

    type metadata accessor for MLS.IdentityError(v10);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_18:
    LOBYTE(v10) = 1;
    return v10;
  }

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = *(v4 + 8);
  v6 = *(v5 + 16);
  sub_26BE00608(v1, v2);
  v7 = v6(v3, v5);
  v9 = v8;
  LOBYTE(v5) = sub_26BE02DEC(v1, v2, v7, v8);
  sub_26BE00258(v7, v9);
  sub_26BE0489C(v1, v2);
  LOBYTE(v10) = v5 & 1;
  return v10;
}

uint64_t MLS.Identity.SigningIdentity.verifyTrust(certs:vendorId:telURI:timestamp:anchors:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v61 = a7;
  v63 = a1;
  trust[1] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_26C00921C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v59 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v14;
  trust[0] = 0;
  v16 = *(v14 + 48);
  v62 = a6;
  v16(a6, 1, v13);
  if (a5)
  {
    a5 = sub_26C00A45C();
  }

  if (a3)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_26C00A88C();
  }

  RCSEncryption = SecPolicyCreateRCSEncryption();

  type metadata accessor for SecCertificate(0);
  v19 = sub_26C00A6EC();
  v20 = SecTrustCreateWithCertificates(v19, RCSEncryption, trust);

  v21 = trust[0];
  if (v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = trust[0] == 0;
  }

  if (v22)
  {
    type metadata accessor for MLS.IdentityError(0);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    swift_allocError();
    *v23 = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_36;
  }

  sub_26BE30C8C(v62, v12);
  v24 = (v16)(v12, 1, v13);
  if (v24 != 1)
  {
    v63 = RCSEncryption;
    v26 = v59;
    v27 = v60;
    (*(v60 + 32))(v59, v12, v13);
    v28 = v21;
    v29 = sub_26C00919C();
    v30 = SecTrustSetVerifyDate(v28, v29);

    if (v30)
    {
      type metadata accessor for MLS.IdentityError(0);
      sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
      swift_allocError();
      *v31 = v30;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v27 + 8))(v26, v13);
      goto LABEL_36;
    }

    (*(v27 + 8))(v26, v13);
    RCSEncryption = v63;
    if (!v61)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v25 = v21;
  sub_26BE2E258(v12, &qword_28045E4A8, &unk_26C00ECB0);
  if (v61)
  {
LABEL_18:
    v32 = sub_26C00A6EC();
    v33 = SecTrustSetAnchorCertificates(v21, v32);

    if (!v33)
    {
      goto LABEL_20;
    }

    type metadata accessor for MLS.IdentityError(0);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    swift_allocError();
    *v34 = v33;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_36:
    return 1;
  }

LABEL_20:
  error = 0;
  if (!SecTrustEvaluateWithError(v21, &error))
  {
    v35 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_26BFF6980(&qword_280460950, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      v36 = swift_allocError();
      *v37 = v35;
      v38 = v35;
      v39 = sub_26C008F7C();
    }

    else
    {
      v39 = 0;
    }

    v63 = RCSEncryption;
    if (qword_28045E1D8 != -1)
    {
      swift_once();
    }

    v40 = sub_26C009A5C();
    __swift_project_value_buffer(v40, qword_280479338);
    v41 = v39;
    v42 = sub_26C009A3C();
    v43 = sub_26C00AA0C();

    v44 = os_log_type_enabled(v42, v43);
    v61 = v41;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v64 = v46;
      *v45 = 136315138;
      if (v39)
      {
        v47 = [v41 description];
        v48 = v39;
        v49 = v47;
        v50 = sub_26C00A48C();
        v52 = v51;

        v39 = v48;
      }

      else
      {
        v52 = 0xED0000726F727265;
        v50 = 0x206E776F6E6B6E75;
      }

      v53 = sub_26BE29740(v50, v52, &v64);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_26BDFE000, v42, v43, "RCS verification failed: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x26D69A4E0](v46, -1, -1);
      MEMORY[0x26D69A4E0](v45, -1, -1);
    }

    IsExpiredOnly = SecTrustIsExpiredOnly();
    type metadata accessor for MLS.IdentityError(0);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    swift_allocError();
    v56 = v63;
    if (IsExpiredOnly)
    {
      sub_26BE30C8C(v62, v55);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      *v55 = v39;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    goto LABEL_36;
  }

  return 1;
}

uint64_t MLS.Identity.SigningIdentity.verify(timestamp:vendorId:telURI:anchors:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = _s18RCSParticipantInfoVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MLS.Identity.SigningIdentity.verifyConsistentKeys()();
  if (v17)
  {
    return 1;
  }

  if (!v16 || (*(v6 + 15) & 0x20) == 0)
  {
    type metadata accessor for MLS.IdentityError(0);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    swift_allocError();
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return 1;
  }

  v19 = *v6;
  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

LABEL_22:
    type metadata accessor for MLS.IdentityError(result);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    swift_allocError();
    goto LABEL_5;
  }

  v27 = 0;
  result = sub_26C00AB8C();
  v17 = v27;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_9:
  v27 = v17;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x26D6996F0](0, v19);
LABEL_12:
    v21 = v20;
    v22 = v27;
    sub_26BECF754(v21);
    if (!v22)
    {
      v23 = *v15;
      if ((a3 & 1) == 0 && v23 != a2)
      {
        v24 = *v15;
        type metadata accessor for MLS.IdentityError(0);
        sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
        swift_allocError();
        *v25 = a2;
        v25[1] = v24;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_16:
        sub_26BFF55C8(v15);
        return 1;
      }

      MLS.Identity.SigningIdentity.verifyTrust(certs:vendorId:telURI:timestamp:anchors:)(v19, v23, 0, a4, a5, a1, a6);
      if ((sub_26BED00C4(v21, a1) & 1) == 0)
      {
        type metadata accessor for MLS.IdentityError(0);
        sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_16;
      }

      sub_26BFF55C8(v15);
    }

    return 1;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v19 + 32);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFF55C8(uint64_t a1)
{
  v2 = _s18RCSParticipantInfoVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFF5670(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_26BFF5700(uint64_t a1, uint64_t a2)
{
  v5 = _s18RCSParticipantInfoVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v8 = *(v2 + 24);
  if (v8 == 2)
  {
    v26[3] = &type metadata for SwiftMLSFeatureFlags;
    v26[4] = sub_26BE295D8();
    LOBYTE(v26[0]) = 1;
    v9 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v26);
    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  else if ((v8 & 1) == 0)
  {
    return 1;
  }

  v10 = *(v2 + 16);

  result = MLS.Identity.SigningIdentity.verifyConsistentKeys()();
  v13 = v12;
  if (v12)
  {

LABEL_10:
    if (qword_28045E1D8 != -1)
    {
      swift_once();
    }

    v14 = sub_26C009A5C();
    __swift_project_value_buffer(v14, qword_280479338);
    v15 = v13;
    v16 = sub_26C009A3C();
    v17 = sub_26C00AA0C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_26BDFE000, v16, v17, "Error verifying member: %@", v18, 0xCu);
      sub_26BE2E258(v19, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v19, -1, -1);
      MEMORY[0x26D69A4E0](v18, -1, -1);
    }

    swift_willThrow();
    return 1;
  }

  if ((result & 1) == 0 || (*(a1 + 15) & 0x20) == 0)
  {
LABEL_9:

    type metadata accessor for MLS.IdentityError(0);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    v13 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v22 = *a1;
  v23 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    result = sub_26C00AB8C();
    if (!result)
    {
      goto LABEL_9;
    }
  }

  else if (!*(v23 + 16))
  {
    goto LABEL_9;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x26D6996F0](0, v22);
    goto LABEL_21;
  }

  if (*(v23 + 16))
  {
    v24 = *(v22 + 32);
LABEL_21:
    v25 = v24;
    sub_26BECF754(v25);
    MLS.Identity.SigningIdentity.verifyTrust(certs:vendorId:telURI:timestamp:anchors:)(v22, *v7, 0, 0, 0, a2, v10);

    if ((sub_26BED00C4(v25, a2) & 1) == 0)
    {
      type metadata accessor for MLS.IdentityError(0);
      sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
      v13 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_26BFF55C8(v7);
      goto LABEL_10;
    }

    sub_26BFF55C8(v7);

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFF5C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  v13 = *(v6 + 24);
  if (v13 == 2)
  {
    v25[3] = &type metadata for SwiftMLSFeatureFlags;
    v25[4] = sub_26BE295D8();
    LOBYTE(v25[0]) = 1;
    v14 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(v25);
    if ((v14 & 1) == 0)
    {
      return 1;
    }
  }

  else if ((v13 & 1) == 0)
  {
    return 1;
  }

  v15 = *(v6 + 16);

  MLS.Identity.SigningIdentity.verify(timestamp:vendorId:telURI:anchors:)(a2, a3, a4 & 1, a5, a6, v15);
  if (v7)
  {

    if (qword_28045E1D8 != -1)
    {
      swift_once();
    }

    v16 = sub_26C009A5C();
    __swift_project_value_buffer(v16, qword_280479338);
    v17 = v7;
    v18 = sub_26C009A3C();
    v19 = sub_26C00AA0C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v7;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26BDFE000, v18, v19, "Error verifying identity: %@", v20, 0xCu);
      sub_26BE2E258(v21, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v21, -1, -1);
      MEMORY[0x26D69A4E0](v20, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
  }

  return 1;
}

uint64_t sub_26BFF5E44(__int128 *a1, uint64_t a2)
{
  v4 = v2;
  v59 = a2;
  v6 = _s18RCSParticipantInfoVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  swift_beginAccess();
  v14 = *(v2 + 24);
  if (v14 == 2)
  {
    v66 = &type metadata for SwiftMLSFeatureFlags;
    v67 = sub_26BE295D8();
    LOBYTE(v3) = 1;
    LOBYTE(v65) = 1;
    v15 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1(&v65);
    if ((v15 & 1) == 0)
    {
      return v3 & 1;
    }
  }

  else if ((v14 & 1) == 0)
  {
    LOBYTE(v3) = 1;
    return v3 & 1;
  }

  v65 = *a1;
  MLS.Identity.Credential.telURI.getter();
  if (!v16)
  {
LABEL_43:
    type metadata accessor for MLS.IdentityError(0);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
LABEL_46:
    swift_willThrow();
    return v3 & 1;
  }

  v18 = v16;
  v3 = *(v16 + 16);
  if (!v3)
  {

    goto LABEL_43;
  }

  v19 = 0;
  v55 = v16 + 16 * v3;
  v20 = (v16 + 40);
  *&v17 = 136315394;
  v53 = v17;
  v54 = v13;
  v57 = v11;
  v58 = v16;
  v56 = v3;
  v52 = v4;
  while (1)
  {
    if (v19 >= *(v18 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:

      swift_bridgeObjectRelease_n();
      sub_26BFF55C8(v8);
      sub_26BE2E258(v13, &qword_28045E4A8, &unk_26C00ECB0);
      LOBYTE(v3) = 1;
      return v3 & 1;
    }

    v22 = *(v20 - 1);
    v21 = *v20;
    v62 = v19;
    v63 = v22;
    v61 = v20;
    v23 = qword_28045DF48;
    v64 = v21;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v8, qword_28045E4F0);
    swift_beginAccess();
    sub_26BE30C8C(v24, v11);
    v25 = sub_26C00921C();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (v27(v11, 1, v25) == 1)
    {
      sub_26C00920C();
      if (v27(v11, 1, v25) != 1)
      {
        sub_26BE2E258(v11, &qword_28045E4A8, &unk_26C00ECB0);
      }
    }

    else
    {
      (*(v26 + 32))(v13, v11, v25);
    }

    (*(v26 + 56))(v13, 0, 1, v25);
    v28 = *(v4 + 16);

    v29 = v64;

    result = MLS.Identity.SigningIdentity.verifyConsistentKeys()();
    v32 = v31;
    if (v31)
    {

      goto LABEL_20;
    }

    if ((result & 1) == 0 || (*(v59 + 15) & 0x20) == 0)
    {

      type metadata accessor for MLS.IdentityError(0);
      sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
      v32 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_20;
    }

    v47 = *v59;
    if (*v59 >> 62)
    {
      result = sub_26C00AB8C();
      if (!result)
      {
LABEL_39:

        type metadata accessor for MLS.IdentityError(0);
        sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
        v32 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v29 = v64;
        goto LABEL_20;
      }
    }

    else if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    v50 = v8;
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x26D6996F0](0, v47);
      goto LABEL_36;
    }

    if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v48 = *(v47 + 32);
LABEL_36:
    v3 = v48;
    v8 = v51;
    sub_26BECF754(v3);
    MLS.Identity.SigningIdentity.verifyTrust(certs:vendorId:telURI:timestamp:anchors:)(v47, *v8, 0, v63, v64, v13, v28);

    if (sub_26BED00C4(v3, v13))
    {
      goto LABEL_50;
    }

    type metadata accessor for MLS.IdentityError(0);
    sub_26BFF6980(&qword_28045EB48, type metadata accessor for MLS.IdentityError, &protocol conformance descriptor for MLS.IdentityError);
    v32 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_26BFF55C8(v8);
    v8 = v50;
    v29 = v64;
LABEL_20:
    sub_26BE2E258(v13, &qword_28045E4A8, &unk_26C00ECB0);
    if (qword_28045E1D8 != -1)
    {
      swift_once();
    }

    v33 = sub_26C009A5C();
    __swift_project_value_buffer(v33, qword_280479338);

    v34 = v32;
    v35 = sub_26C009A3C();
    v36 = sub_26C00AA0C();

    v37 = os_log_type_enabled(v35, v36);
    v60 = 0;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68 = v40;
      *v38 = v53;
      v41 = v8;
      v42 = sub_26BE29740(v63, v29, &v68);

      *(v38 + 4) = v42;
      v8 = v41;
      *(v38 + 12) = 2112;
      v43 = v32;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v44;
      *v39 = v44;
      _os_log_impl(&dword_26BDFE000, v35, v36, "Error succeessor identity with %s: %@", v38, 0x16u);
      sub_26BE2E258(v39, &qword_28045FB40, &unk_26C021280);
      v45 = v39;
      v4 = v52;
      v13 = v54;
      MEMORY[0x26D69A4E0](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x26D69A4E0](v40, -1, -1);
      MEMORY[0x26D69A4E0](v38, -1, -1);
    }

    else
    {
    }

    v11 = v57;
    v18 = v58;
    v3 = v56;
    if (v56 > *(v58 + 16))
    {
      goto LABEL_49;
    }

    if (v63 == *(v55 + 16) && v64 == *(v55 + 24))
    {

LABEL_45:

      goto LABEL_46;
    }

    v46 = sub_26C00AF2C();

    if (v46)
    {
      goto LABEL_45;
    }

    v19 = v62 + 1;

    v20 = v61 + 2;
    if (v3 == v19)
    {

      LOBYTE(v3) = 0;
      return v3 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t MLS.Identity.X509RCSIdentityProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26BFF68AC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_26BFF690C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_26BFF6980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BFF69C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_26BFF6A10(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

void sub_26BFF6CA4(__int128 *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v25 = a1[4];
  v26 = v3;
  v27 = *(a1 + 12);
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = a1[3];
  v23 = a1[2];
  v24 = v5;
  v6 = *(a1 + 104);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v28 = *(a1 + 104);
  *&v29[15] = *(a1 + 120);
  *v29 = *(a1 + 105);
  sub_26BE7EBA4(&v21);
  if (!v2 && v6)
  {
    if (v7 >> 60 == 15)
    {
      sub_26BE01654();
      swift_allocError();
      *v11 = 10;
      v11[112] = 0;
      swift_willThrow();
      return;
    }

    v12 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = v10;
        v14 = 0;
LABEL_16:
        v17 = sub_26BF30414(v14);
        sub_26BE11228(v8, v7);
        v18 = v17 + v14;
        if (__OFADD__(v17, v14))
        {
          __break(1u);
        }

        else
        {
          v19 = v13 + v18;
          if (!__OFADD__(v13, v18))
          {
            v20 = bswap32(v9);
            *(&v22 + 1) = MEMORY[0x277D838B0];
            *&v23 = MEMORY[0x277CC9C18];
            *&v21 = &v20;
            *(&v21 + 1) = &v21;
            __swift_project_boxed_opaque_existential_1(&v21, MEMORY[0x277D838B0]);
            sub_26C00908C();
            __swift_destroy_boxed_opaque_existential_1(&v21);
            sub_26BE132D4(v8, v7);
            if (!__OFADD__(v19, 4))
            {
              return;
            }

            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      v14 = v15 - v16;
      if (__OFSUB__(v15, v16))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v13 = v10;
    }

    else
    {
      if (!v12)
      {
        v13 = v10;
        v14 = BYTE6(v7);
        goto LABEL_16;
      }

      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_24;
      }

      v13 = v10;
      v14 = HIDWORD(v8) - v8;
    }

    sub_26BE00608(v8, v7);
    goto LABEL_16;
  }
}

uint64_t sub_26BFF6ED4(unsigned __int16 *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 100);
  v61 = *(a1 + 92);
  v62 = v3;
  v63[0] = *(a1 + 108);
  *(v63 + 9) = *(a1 + 225);
  v4 = *(a1 + 60);
  v5 = *(a1 + 76);
  v58 = *(a1 + 68);
  v59 = v5;
  v60 = *(a1 + 84);
  v6 = *(a1 + 28);
  v7 = *(a1 + 44);
  v54 = *(a1 + 36);
  v55 = v7;
  v56 = *(a1 + 52);
  v57 = v4;
  v8 = *(a1 + 12);
  v50 = *(a1 + 4);
  v51 = v8;
  v52 = *(a1 + 20);
  v53 = v6;
  v10 = *(a1 + 31);
  v9 = *(a1 + 32);
  v21 = bswap32(v2) >> 16;
  *(&v23 + 1) = MEMORY[0x277D838B0];
  *&v24 = MEMORY[0x277CC9C18];
  *&v22 = &v21;
  *(&v22 + 1) = &v22;
  __swift_project_boxed_opaque_existential_1(&v22, MEMORY[0x277D838B0]);
  sub_26BE2FB24(&v50, &v36);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v47 = v61;
  v48 = v62;
  v49[0] = v63[0];
  *(v49 + 9) = *(v63 + 9);
  v44 = v58;
  v45 = v59;
  v46 = v60;
  v40 = v54;
  v41 = v55;
  v42 = v56;
  v43 = v57;
  v36 = v50;
  v37 = v51;
  v38 = v52;
  v39 = v53;
  v11 = sub_26BEDC390(&v36);
  if (v1)
  {
    v34 = v48;
    v35[0] = v49[0];
    *(v35 + 9) = *(v49 + 9);
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    return sub_26BE71494(&v22);
  }

  v13 = v11;
  v34 = v48;
  v35[0] = v49[0];
  *(v35 + 9) = *(v49 + 9);
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  sub_26BE71494(&v22);
  v14 = v13 + 2;
  if (__OFADD__(v13, 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v9);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v18 = *(v10 + 16);
  v17 = *(v10 + 24);
  v16 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
LABEL_11:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_20;
    }

    v16 = HIDWORD(v10) - v10;
  }

LABEL_14:
  v19 = sub_26BF30414(v16);
  sub_26BE11228(v10, v9);
  v20 = v19 + v16;
  if (__OFADD__(v19, v16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = v14 + v20;
  if (__OFADD__(v14, v20))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BFF71A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 264))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 36);
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

uint64_t sub_26BFF71F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

uint64_t MLS.UpdatePathNode.init(encryptionKey:encryptedPathSecret:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_26BFF72A0(uint64_t *a1@<X8>)
{
  v3 = sub_26BF2F7B0();
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_26BF2F7B0();
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    a1[3] = v8;
  }
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.extensionTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.proposalTypes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.credentialTypes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.Extension.RequiredCapabilitiesExtension.init(extensionTypes:proposalTypes:credentialTypes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_26BFF740C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = 0;
  v70 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v4 = *(v6 + 16);
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    v4 = v6;
LABEL_6:
    sub_26BE00608(*(a1 + 8), v5);
  }

  v67 = v6;
  v68 = v5;
  v69 = v4;
  sub_26BE00608(v6, v5);
  sub_26BE00608(v6, v5);
  sub_26BF30764(&v67, &v65);
  if (v2)
  {
    sub_26BE00258(v67, v68);
    v67 = v6;
    v68 = v5;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (v66)
  {
    sub_26BE00258(v67, v68);
    v8 = v5;
    v9 = v6;
LABEL_13:
    sub_26BE00258(v9, v8);
    v67 = v6;
    v68 = v5;
    goto LABEL_14;
  }

  v11 = v65;
  sub_26BE00258(v6, v5);
  if (v11 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v12 = 5;
    goto LABEL_9;
  }

  v61 = a2;
  v13 = sub_26BF2A44C(v11);
  if (v14 >> 60 == 15)
  {
    v9 = v67;
    v8 = v68;
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  v18 = v15;
  v19 = v14 >> 62;
  v62 = v13 >> 32;
  v63 = BYTE6(v14);
  v64 = MEMORY[0x277D84F90];
  if ((v14 >> 62) > 1)
  {
    goto LABEL_23;
  }

LABEL_21:
  v20 = v63;
  if (v19)
  {
    v20 = v62;
  }

  while (1)
  {
    v21 = __OFSUB__(v20, v18);
    v22 = &v20[-v18];
    if (v21)
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v43 = *(v18 + 24);
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = v60;
        if (!v16)
        {
          v43 = v62;
        }
      }

      if (__OFSUB__(v43, v5))
      {
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v43 != v5)
      {
        v44 = v14;
        sub_26BE01654();
        swift_allocError();
        *v46 = 0;
        v46[112] = 1;
LABEL_106:
        swift_willThrow();

        sub_26BE00258(v18, v44);
        goto LABEL_56;
      }

      sub_26BE00258(v18, v14);
      sub_26BE00258(v17, v6);
      v17 = v67;
      v6 = v68;
      sub_26BE00608(v67, v68);
      sub_26BE00608(v17, v6);
      sub_26BF30764(&v67, &v65);
      if (v66)
      {
        sub_26BE00258(v67, v68);

LABEL_60:

        v31 = v6;
        v32 = v17;
LABEL_61:
        sub_26BE00258(v32, v31);
        v67 = v17;
        v68 = v6;
LABEL_14:
        sub_26BE01600();
        swift_allocError();
        *v10 = 1;
        goto LABEL_15;
      }

      v47 = v65;
      sub_26BE00258(v17, v6);
      if (v47 > 100000000)
      {
        sub_26BE01600();
        swift_allocError();
        *v48 = 5;
        swift_willThrow();
        goto LABEL_105;
      }

      v62 = sub_26BF2A44C(v47);
      v60 = v49;
      if (v49 >> 60 == 15)
      {

        goto LABEL_65;
      }

      goto LABEL_114;
    }

    if (v22 < 1)
    {
      break;
    }

    v23 = v18 + 2;
    if (__OFADD__(v18, 2))
    {
      goto LABEL_91;
    }

    if (v19 <= 1)
    {
      v24 = v63;
      if (v19)
      {
        v24 = v62;
      }

LABEL_34:
      if (v24 < v23)
      {
        goto LABEL_48;
      }

      goto LABEL_37;
    }

    if (v19 == 2)
    {
      v24 = *(v16 + 3);
      goto LABEL_34;
    }

    if (v23 > 0)
    {
LABEL_48:
      sub_26BE01600();
      swift_allocError();
      *v28 = 1;
      goto LABEL_57;
    }

LABEL_37:
    v65 = v16;
    v66 = v17;
    if (v23 < v18)
    {
      goto LABEL_92;
    }

    sub_26BE00608(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v65, v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_26BEEBA70(0, *(v64 + 2) + 1, 1, v64);
    }

    v26 = *(v64 + 2);
    v25 = *(v64 + 3);
    if (v26 >= v25 >> 1)
    {
      v64 = sub_26BEEBA70((v25 > 1), v26 + 1, 1, v64);
    }

    *(v64 + 2) = v26 + 1;
    *&v64[2 * v26 + 32] = bswap32(0) >> 16;
    v18 += 2;
    if (v19 <= 1)
    {
      goto LABEL_21;
    }

LABEL_23:
    if (v19 == 2)
    {
      v20 = *(v16 + 3);
    }

    else
    {
      v20 = 0;
    }
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v27 = *(v16 + 3);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = v62;
    if (!v19)
    {
      v27 = v63;
    }
  }

  if (__OFSUB__(v27, v18))
  {
    __break(1u);
LABEL_114:
    v5 = v15;
    v18 = v60 >> 62;
    v59 = v62 >> 32;
    v16 = MEMORY[0x277D84F90];
    v29 = BYTE6(v60);
    if ((v60 >> 62) > 1)
    {
      goto LABEL_117;
    }

LABEL_115:
    v50 = BYTE6(v60);
    if (v18)
    {
      v50 = v62 >> 32;
    }

    while (1)
    {
      v21 = __OFSUB__(v50, v5);
      v51 = v50 - v5;
      if (v21)
      {
        goto LABEL_155;
      }

      if (v51 < 1)
      {
        goto LABEL_141;
      }

      v52 = v5 + 2;
      if (__OFADD__(v5, 2))
      {
        goto LABEL_156;
      }

      if (v18 <= 1)
      {
        break;
      }

      if (v18 == 2)
      {
        v53 = *(v62 + 24);
        goto LABEL_128;
      }

      if (v52 > 0)
      {
LABEL_145:
        sub_26BE01600();
        swift_allocError();
        *v57 = 1;
        goto LABEL_153;
      }

LABEL_131:
      v65 = v62;
      v66 = v60;
      if (v52 < v5)
      {
        goto LABEL_157;
      }

      sub_26BE00608(v62, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v65, v66);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_26BEEBA48(0, *(v16 + 2) + 1, 1, v16);
      }

      v55 = *(v16 + 2);
      v54 = *(v16 + 3);
      if (v55 >= v54 >> 1)
      {
        v16 = sub_26BEEBA48((v54 > 1), v55 + 1, 1, v16);
      }

      *(v16 + 2) = v55 + 1;
      *&v16[2 * v55 + 32] = bswap32(0) >> 16;
      v5 += 2;
      if (v18 <= 1)
      {
        goto LABEL_115;
      }

LABEL_117:
      if (v18 == 2)
      {
        v50 = *(v62 + 24);
      }

      else
      {
        v50 = 0;
      }
    }

    v53 = BYTE6(v60);
    if (v18)
    {
      v53 = v62 >> 32;
    }

LABEL_128:
    if (v53 < v52)
    {
      goto LABEL_145;
    }

    goto LABEL_131;
  }

  if (v27 != v18)
  {
    sub_26BE01654();
    swift_allocError();
    *v30 = 0;
    v30[112] = 1;
LABEL_57:
    swift_willThrow();

    sub_26BE00258(v16, v17);
LABEL_10:
    sub_26BE00258(v67, v68);
    v67 = v6;
    v68 = v5;
    goto LABEL_15;
  }

  sub_26BE00258(v16, v17);
  sub_26BE00258(v6, v5);
  v17 = v67;
  v6 = v68;
  v29 = v69;
  sub_26BE00608(v67, v68);
  sub_26BE00608(v17, v6);
  sub_26BF30764(&v67, &v65);
  if (v66)
  {
    sub_26BE00258(v67, v68);
    goto LABEL_60;
  }

  v33 = v65;
  sub_26BE00258(v17, v6);
  if (v33 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v34 = 5;
    swift_willThrow();
    goto LABEL_56;
  }

  v35 = sub_26BF2A44C(v33);
  if (v14 >> 60 == 15)
  {
LABEL_65:

    v32 = v67;
    v31 = v68;
    goto LABEL_61;
  }

  v18 = v35;
  v5 = v36;
  v16 = (v14 >> 62);
  v60 = v35 >> 32;
  v62 = BYTE6(v14);
  v63 = MEMORY[0x277D84F90];
  if ((v14 >> 62) > 1)
  {
    goto LABEL_69;
  }

  while (2)
  {
    v37 = v62;
    if (v16)
    {
      v37 = v60;
    }

LABEL_72:
    v21 = __OFSUB__(v37, v5);
    v38 = v37 - v5;
    if (!v21)
    {
      if (v38 < 1)
      {
        goto LABEL_93;
      }

      v39 = v5 + 2;
      if (__OFADD__(v5, 2))
      {
        goto LABEL_139;
      }

      if (v16 <= 1)
      {
        v40 = v62;
        if (v16)
        {
          v40 = v60;
        }

        goto LABEL_80;
      }

      if (v16 == 2)
      {
        v40 = *(v18 + 24);
LABEL_80:
        if (v40 < v39)
        {
          goto LABEL_97;
        }
      }

      else if (v39 > 0)
      {
LABEL_97:
        v44 = v14;
        sub_26BE01600();
        swift_allocError();
        *v45 = 1;
        goto LABEL_106;
      }

      v65 = v18;
      v66 = v14;
      if (v39 < v5)
      {
        goto LABEL_140;
      }

      v29 = v14;
      sub_26BE00608(v18, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v65, v66);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_26BEEBA5C(0, *(v63 + 2) + 1, 1, v63);
      }

      v42 = *(v63 + 2);
      v41 = *(v63 + 3);
      if (v42 >= v41 >> 1)
      {
        v63 = sub_26BEEBA5C((v41 > 1), v42 + 1, 1, v63);
      }

      *(v63 + 2) = v42 + 1;
      *&v63[2 * v42 + 32] = bswap32(0) >> 16;
      v5 += 2;
      v14 = v29;
      if (v16 <= 1)
      {
        continue;
      }

LABEL_69:
      if (v16 == 2)
      {
        v37 = *(v18 + 24);
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_72;
    }

    break;
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v56 = *(v62 + 24);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = v59;
    if (!v18)
    {
      v56 = v29;
    }
  }

  if (__OFSUB__(v56, v5))
  {
LABEL_158:
    __break(1u);
    return;
  }

  if (v56 == v5)
  {
    sub_26BE00258(v62, v60);
    sub_26BE00258(v17, v6);
    sub_26BE00258(v67, v68);
    *v61 = v64;
    v61[1] = v63;
    v61[2] = v16;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v58 = 0;
    v58[112] = 1;
LABEL_153:
    swift_willThrow();

    sub_26BE00258(v62, v60);
LABEL_105:

LABEL_56:

    sub_26BE00258(v67, v68);
    v67 = v17;
    v68 = v6;
LABEL_15:
    swift_willThrow();
    sub_26BE00258(v67, v68);
  }
}

void MLS.Extension.RequiredCapabilitiesExtension.toExtension()(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v18 = xmmword_26C00BBD0;
  v19 = 0;
  v16 = xmmword_26C00BBD0;
  v17 = 0;
  v7 = sub_26BE7F300(0, v4);
  if (!v2)
  {
    sub_26BF30414(v7);
    sub_26BF2A30C(&v16);
    sub_26BE00258(v16, *(&v16 + 1));
    v16 = xmmword_26C00BBD0;
    v17 = 0;
    v10 = sub_26BE7F300(0, v5);
    sub_26BF30414(v10);
    sub_26BF2A30C(&v16);
    sub_26BE00258(v16, *(&v16 + 1));
    v16 = xmmword_26C00BBD0;
    v17 = 0;
    v11 = sub_26BE7F300(0, v6);
    sub_26BF30414(v11);
    sub_26BF2A30C(&v16);
    sub_26BE00258(v16, *(&v16 + 1));
    v12 = v18;
    v13 = *(&v18 + 1) >> 62;
    if ((*(&v18 + 1) >> 62) > 1)
    {
      if (v13 != 2 || (*(v18 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (!v13 || ((v18 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    v14 = sub_26C00909C();
    *a1 = 3;
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    v9 = v12 >> 64;
    v8 = v12;
    goto LABEL_4;
  }

  sub_26BE00258(v16, *(&v16 + 1));
  v8 = 0;
  v9 = 0xC000000000000000;
LABEL_4:
  sub_26BE00258(v8, v9);
}

void sub_26BFF8178(uint64_t a1@<X8>)
{
  sub_26BE7DE38(v71);
  if (v2)
  {
    return;
  }

  v68 = v71[6];
  v69 = v71[7];
  v70 = v72;
  v64 = v71[2];
  v65 = v71[3];
  v66 = v71[4];
  v67 = v71[5];
  v62 = v71[0];
  v63 = v71[1];
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  sub_26BE00608(*v1, v4);
  sub_26BE00608(v5, v4);
  sub_26BF30764(v1, &v59);
  if (v60)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v7 = v4;
    v8 = v5;
    v1[2] = v6;
LABEL_6:
    sub_26BE00258(v8, v7);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
    sub_26BE01600();
    swift_allocError();
    *v9 = 1;
LABEL_7:
    swift_willThrow();
    sub_26BE00854(&v62);
    return;
  }

  v10 = v59;
  sub_26BE00258(v5, v4);
  if (v10 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v11 = 5;
    swift_willThrow();
LABEL_3:
    sub_26BE00258(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
    goto LABEL_7;
  }

  v12 = sub_26BF2A44C(v10);
  if (v13 >> 60 == 15)
  {
    v8 = *v1;
    v7 = v1[1];
    goto LABEL_6;
  }

  v15 = v12;
  v16 = v13;
  v59 = v12;
  v60 = v13;
  v61 = v14;
  v73 = MEMORY[0x277D84F90];
  v52 = a1;
  for (i = v6; ; v6 = i)
  {
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(v15 + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17)
    {
      v18 = v15 >> 32;
    }

    else
    {
      v18 = BYTE6(v16);
    }

    v19 = __OFSUB__(v18, v14);
    v20 = v18 - v14;
    if (v19)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v20 < 1)
    {
      break;
    }

    sub_26BE00608(v15, v16);
    sub_26BE00608(v15, v16);
    sub_26BF30764(&v59, &v57);
    if (v58)
    {
      sub_26BE00258(v59, v60);
      v42 = v16;
      v24 = v15;
      goto LABEL_54;
    }

    v21 = v15;
    v22 = v57;
    v55 = v21;
    v56 = v16;
    sub_26BE00258(v21, v16);
    v19 = __OFADD__(v61, v22);
    v23 = v61 + v22;
    if (v19)
    {
      goto LABEL_66;
    }

    v24 = v59;
    v16 = v60;
    v25 = v60 >> 62;
    if ((v60 >> 62) <= 1)
    {
      if (v25)
      {
        v26 = v59 >> 32;
      }

      else
      {
        v26 = BYTE6(v60);
      }

LABEL_31:
      if (v26 < v23)
      {
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    if (v25 == 2)
    {
      v26 = *(v59 + 24);
      goto LABEL_31;
    }

    if (v23 > 0)
    {
LABEL_53:
      v15 = v55;
      v42 = v56;
LABEL_54:
      sub_26BE00258(v24, v16);
      v59 = v15;
      v60 = v42;
      sub_26BE01600();
      swift_allocError();
      *v43 = 1;
LABEL_55:
      swift_willThrow();
LABEL_57:

      sub_26BE00258(v59, v60);
      goto LABEL_3;
    }

LABEL_34:
    if (v23 < v61)
    {
      goto LABEL_67;
    }

    v54 = v59;
    v27 = sub_26C00909C();
    v28 = v27;
    v30 = v29;
    v61 = v23;
    v31 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_42;
      }

      v27 = *(v27 + 16);
      v32 = *(v28 + 24);
    }

    else
    {
      if (!v31)
      {
        goto LABEL_42;
      }

      v27 = v27;
      v32 = v28 >> 32;
    }

    if (v32 < v27)
    {
      goto LABEL_68;
    }

LABEL_42:
    v33 = sub_26C00909C();
    v35 = v34;
    sub_26BE00258(v28, v30);
    sub_26BE00258(v55, v56);
    sub_26BE00608(v54, v16);
    v36 = sub_26BF2FE68(&v59, sub_26BFF72A0, 0);
    if (!v36)
    {
      sub_26BE00258(v59, v60);
      v59 = v54;
      v60 = v16;
      sub_26BE01600();
      swift_allocError();
      *v44 = 1;
      swift_willThrow();
      sub_26BE00258(v33, v35);
      v6 = i;
      goto LABEL_57;
    }

    sub_26BE00258(v54, v16);
    sub_26BE00608(v33, v35);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_26BEECC88(0, *(v73 + 2) + 1, 1, v73);
    }

    v38 = *(v73 + 2);
    v37 = *(v73 + 3);
    if (v38 >= v37 >> 1)
    {
      v73 = sub_26BEECC88((v37 > 1), v38 + 1, 1, v73);
    }

    sub_26BE00258(v33, v35);

    v39 = v73;
    *(v73 + 2) = v38 + 1;
    v40 = &v39[24 * v38];
    *(v40 + 4) = v33;
    *(v40 + 5) = v35;
    *(v40 + 6) = v36;
    v15 = v59;
    v16 = v60;
    v14 = v61;
    a1 = v52;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v41 = *(v15 + 24);
    }

    else
    {
      v41 = 0;
    }
  }

  else if (v17)
  {
    v41 = v15 >> 32;
  }

  else
  {
    v41 = BYTE6(v16);
  }

  if (__OFSUB__(v41, v14))
  {
LABEL_69:
    __break(1u);
    return;
  }

  if (v41 != v14)
  {
    sub_26BE01654();
    swift_allocError();
    *v51 = 0;
    v51[112] = 1;
    goto LABEL_55;
  }

  sub_26BE00258(v15, v16);
  sub_26BE00258(v5, v4);
  v45 = v69;
  *(a1 + 96) = v68;
  *(a1 + 112) = v45;
  v46 = v70;
  v47 = v65;
  *(a1 + 32) = v64;
  *(a1 + 48) = v47;
  v48 = v67;
  *(a1 + 64) = v66;
  *(a1 + 80) = v48;
  v49 = v63;
  *a1 = v62;
  *(a1 + 16) = v49;
  v50 = v73;
  *(a1 + 128) = v46;
  *(a1 + 136) = v50;
}

uint64_t MLS.UpdatePath.leafNode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 128);
  *(a1 + 128) = *(v1 + 128);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_26BE00758(v15, v14);
}

__n128 MLS.UpdatePath.leafNode.setter(uint64_t a1)
{
  v3 = *(v1 + 112);
  v11[6] = *(v1 + 96);
  v11[7] = v3;
  v12 = *(v1 + 128);
  v4 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v4;
  v5 = *(v1 + 80);
  v11[4] = *(v1 + 64);
  v11[5] = v5;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v6;
  sub_26BE00854(v11);
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  *(v1 + 128) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v8;
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t MLS.UpdatePath.nodes.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t sub_26BFF8930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BFF8978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MLS.MLSMessage.groupID.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLS.GroupInfo(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BEE3514(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[4];
      v15 = v10[5];
      v16 = v10[6];
      v17 = v10[7];
      v19 = v10[8];
      v18 = v10[9];
      sub_26BE00608(v12, v13);
      sub_26BE00258(v12, v13);
      sub_26BE00258(v14, v15);
      sub_26BE00258(v16, v17);
      sub_26BE00258(v19, v18);
      break;
    case 3:
      sub_26BFF8C48(v10, v4, type metadata accessor for MLS.PublicMessage);
      v12 = *v4;
      sub_26BE00608(*v4, *(v4 + 1));
      sub_26BFF8CB0(v4, type metadata accessor for MLS.PublicMessage);
      break;
    case 1:
      sub_26BFF8C48(v10, v7, type metadata accessor for MLS.GroupInfo);
      v12 = *(v7 + 1);
      sub_26BE00608(v12, *(v7 + 2));
      sub_26BFF8CB0(v7, type metadata accessor for MLS.GroupInfo);
      break;
    default:
      sub_26BFF8CB0(v10, type metadata accessor for MLS.MLSMessage.Inner);
      return 0;
  }

  return v12;
}

uint64_t sub_26BFF8C48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFF8CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLS.MLSMessage.epoch.getter()
{
  v1 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLS.GroupInfo(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BEE3514(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v14 = *v9;
    v15 = v9[1];
    v11 = v9[2];
    v16 = v9[4];
    v17 = v9[5];
    v18 = v9[6];
    v19 = v9[7];
    v21 = v9[8];
    v20 = v9[9];
    sub_26BE00258(v14, v15);
    sub_26BE00258(v16, v17);
    sub_26BE00258(v18, v19);
    sub_26BE00258(v21, v20);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26BFF8C48(v9, v3, type metadata accessor for MLS.PublicMessage);
      v11 = *(v3 + 2);
      v12 = type metadata accessor for MLS.PublicMessage;
      v13 = v3;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_26BFF8CB0(v9, type metadata accessor for MLS.MLSMessage.Inner);
        return 0;
      }

      sub_26BFF8C48(v9, v6, type metadata accessor for MLS.GroupInfo);
      v11 = *(v6 + 3);
      v12 = type metadata accessor for MLS.GroupInfo;
      v13 = v6;
    }

    sub_26BFF8CB0(v13, v12);
  }

  return v11;
}

void MLS.MLSMessage.contentType.getter(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.PublicMessage(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MLS.MLSMessage.Inner(0);
  MEMORY[0x28223BE20](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEE3514(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v20 = *v9;
    v21 = *(v9 + 1);
    v19 = v9[24];
    v22 = *(v9 + 4);
    v23 = *(v9 + 5);
    v24 = *(v9 + 6);
    v25 = *(v9 + 7);
    v27 = *(v9 + 8);
    v26 = *(v9 + 9);
    sub_26BE00258(v20, v21);
    sub_26BE00258(v22, v23);
    sub_26BE00258(v24, v25);
    sub_26BE00258(v27, v26);
LABEL_11:
    v28 = 0;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_26BFF8C48(v9, v6, type metadata accessor for MLS.PublicMessage);
    v11 = v6[13];
    v41 = v6[12];
    v42[0] = v11;
    *(v42 + 9) = *(v6 + 217);
    v12 = v6[9];
    v37 = v6[8];
    v38 = v12;
    v13 = v6[11];
    v39 = v6[10];
    v40 = v13;
    v14 = v6[5];
    v33 = v6[4];
    v34 = v14;
    v15 = v6[7];
    v35 = v6[6];
    v36 = v15;
    v16 = v6[1];
    v31[0] = *v6;
    v31[1] = v16;
    v17 = v6[3];
    v31[2] = v6[2];
    v32 = v17;
    sub_26BE2FB24(v31, v29);
    sub_26BFF8CB0(v6, type metadata accessor for MLS.PublicMessage);
    v29[8] = v40;
    v29[9] = v41;
    v30[0] = v42[0];
    *(v30 + 9) = *(v42 + 9);
    v29[4] = v36;
    v29[5] = v37;
    v29[6] = v38;
    v29[7] = v39;
    v29[0] = v32;
    v29[1] = v33;
    v29[2] = v34;
    v29[3] = v35;
    v18 = sub_26BE6917C(v29);
    if (v18)
    {
      if (v18 == 1)
      {
        nullsub_1();
        v19 = 2;
      }

      else
      {
        nullsub_1();
        v19 = 3;
      }
    }

    else
    {
      nullsub_1();
      v19 = 1;
    }

    sub_26BE71494(v31);
    goto LABEL_11;
  }

  sub_26BFF8CB0(v9, type metadata accessor for MLS.MLSMessage.Inner);
  v19 = 0;
  v28 = 1;
LABEL_12:
  *a1 = v19;
  a1[1] = v28;
}

void sub_26BFF91C8(uint64_t a1@<X8>)
{
  v3 = sub_26BEE6180();
  if ((v3 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v11 = 1;
LABEL_8:
    *v10 = v11;
    swift_willThrow();
    return;
  }

  if (v3 != 1)
  {
    sub_26BE01600();
    swift_allocError();
    v11 = 11;
    goto LABEL_8;
  }

  v4 = sub_26BF2F7B0();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_26BEE6028();
    if ((v8 & 0x100000000) != 0)
    {
      sub_26BE01600();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
      sub_26BE00258(v6, v7);
    }

    else
    {
      v9 = v8;
      sub_26BE02A74(v15);
      v13[0] = v15[0];
      v13[1] = v15[1];
      v14 = v16;
      *(a1 + 48) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 64) = 0;
      *a1 = 1;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = v9;
      sub_26BE822A4(v13, a1 + 32);
    }
  }
}

unint64_t sub_26BFF933C(unsigned __int16 *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  LOWORD(v18) = bswap32(*a1) >> 16;
  v3 = MEMORY[0x277D838B0];
  v4 = MEMORY[0x277CC9C18];
  v21 = MEMORY[0x277D838B0];
  v22 = MEMORY[0x277CC9C18];
  v19 = &v18;
  v20 = (&v18 + 2);
  __swift_project_boxed_opaque_existential_1(&v19, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v6);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_23;
    }

    v8 = HIDWORD(v5) - v5;
  }

LABEL_11:
  result = sub_26BF30414(v8);
  if (v1)
  {
    return result;
  }

  v12 = result;
  sub_26BE11228(v5, v6);
  v13 = v12 + v8;
  if (__OFADD__(v12, v8))
  {
    goto LABEL_20;
  }

  v14 = v13 + 2;
  if (__OFADD__(v13, 2))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = bswap32(*(a1 + 6));
  v21 = v3;
  v22 = v4;
  v19 = &v18;
  v20 = &v19;
  __swift_project_boxed_opaque_existential_1(&v19, v3);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v15 = v14 + 4;
  if (__OFADD__(v14, 4))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v16 = sub_26BE0256C((a1 + 16));
  v17 = __OFADD__(v15, v16);
  result = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t MLS.AuthenticatedData.init(version:messageID:era:verifiableDerivedContent:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0;
  *a6 = v6;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = 0u;
  return sub_26BE822A4(a5, a6 + 32);
}

uint64_t MLS.AuthenticatedData.messageID.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

void MLS.AuthenticatedData.messageID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

double MLS.AuthenticatedData.init(version:messageID:originalMessageID:era:)@<D0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  sub_26BE00258(a4, a5);
  v12 = *a1;
  result = 0.0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0;
  *a7 = v12;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a6;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O24VerifiableDerivedContent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BFF96E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_26BFF973C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_26BFF97B0(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E700, &qword_26C011368);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v43 - v4;
  v5 = sub_26C009C8C();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v50 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = _s11HashRatchetVMa(0);
  v14 = v13[6];
  v15 = *(v1 + v14);
  v16 = (v1 + v13[8]);
  v18 = *(v16 + 3);
  v17 = *(v16 + 4);
  v54 = *v16;
  *v55 = *(v16 + 8);
  *&v55[16] = v18;
  v56 = v17;
  v19 = v13[5];

  v57 = v15;
  v20 = v18;
  v21 = v53;
  MLS.Cryptography.Ciphersuite.deriveTreeSecret(_:_:_:_:)(v1 + v19, 7955819, 0xE300000000000000, v15, v20, v12);

  if (v21)
  {
    return v57;
  }

  v44 = v14;
  v45 = v13;
  v46 = v8;
  v47 = v12;
  v22 = *(v16 + 1);
  v23 = *(v16 + 4);
  v54 = *v16;
  *v55 = v22;
  v53 = *(v16 + 1);
  *&v55[8] = v53;
  v56 = v23;

  v24 = v50;
  v25 = v57;
  MLS.Cryptography.Ciphersuite.deriveTreeSecret(_:_:_:_:)(v1 + v19, 0x65636E6F6ELL, 0xE500000000000000, v57, v53, v50);
  v26 = v19;

  v28 = *(v16 + 3);
  v27 = *(v16 + 4);
  v54 = *v16;
  v53 = *(v16 + 8);
  *v55 = v53;
  *&v55[16] = v28;
  v56 = v27;

  MLS.Cryptography.Ciphersuite.deriveTreeSecret(_:_:_:_:)(v1 + v19, 0x746572636573, 0xE600000000000000, v25, v53, v46);
  v29 = v47;
  v30 = v24;

  v33 = v51;
  v32 = v52;
  if (v25 != -1)
  {
    *(v2 + v44) = v25 + 1;
    v34 = v2 + v26;
    v35 = v46;
    (*(v33 + 24))(v34, v46, v32);
    *&v53 = v2;
    v36 = v33;
    v37 = *(v33 + 16);
    v38 = v48;
    v37(v48, v29, v32);
    v39 = v32;
    v40 = type metadata accessor for MLS.KeyAndNonce(0);
    v37(v38 + *(v40 + 20), v30, v39);
    v41 = v49;
    sub_26BFFAE4C(v38, v49);
    (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
    sub_26BE4D8CC(v41, v57);
    v42 = *(v36 + 8);
    v42(v35, v39);
    v42(v30, v39);
    v42(v47, v39);
    return v57;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFF9BFC@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for MLS.KeyAndNonce(0);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v69 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - v8;
  v10 = sub_26C009C8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = sub_26BEE6180();
  if ((v17 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v24 = 1;
    return swift_willThrow();
  }

  v74 = v17;
  v66 = v14;
  result = sub_26BF2F7B0();
  if (v2)
  {
    return result;
  }

  v70 = result;
  *&v71 = v19;
  sub_26C009C5C();
  v20 = sub_26BEE6028();
  if (v20 & 0x100000000) != 0 || (v62 = v20, v21 = sub_26BEEE594(), (v22))
  {
    sub_26BE01600();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    return (*(v11 + 8))(v16, v10);
  }

  v25 = v21;
  v60 = v10;
  v61 = v16;
  v26 = sub_26C0050B4(MEMORY[0x277D84F90]);
  v59 = a1;
  if (v25)
  {
    v63 = v3;
    v64 = v11;
    do
    {
      while (1)
      {
        v65 = v25;
        v27 = sub_26BEE6028();
        if ((v27 & 0x100000000) != 0)
        {
          sub_26BE01600();
          swift_allocError();
          *v58 = 1;
          swift_willThrow();

          v10 = v60;
          v16 = v61;
          return (*(v11 + 8))(v16, v10);
        }

        v28 = v27;
        v29 = sub_26BF2F7B0();
        v31 = v30;
        v32 = sub_26BF2F7B0();
        v34 = v33;
        v70 = v29;
        *&v71 = v31;
        sub_26BE00608(v29, v31);
        sub_26C009C5C();
        v70 = v32;
        *&v71 = v34;
        sub_26BE00608(v32, v34);
        sub_26C009C5C();
        sub_26BE00258(v29, v31);
        sub_26BE00258(v32, v34);
        sub_26BFFAE4C(v9, v69);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v26;
        v36 = sub_26BEBB208(v28);
        v38 = v26[2];
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          result = sub_26C00AF8C();
          __break(1u);
          return result;
        }

        v42 = v37;
        v11 = v64;
        if (v26[3] < v41)
        {
          break;
        }

        v44 = v65;
        if (isUniquelyReferenced_nonNull_native)
        {
          v26 = v70;
          if ((v37 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v47 = v36;
          sub_26BE6EE0C();
          v44 = v65;
          v36 = v47;
          v26 = v70;
          if ((v42 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_11:
        sub_26BFFAF84(v69, v26[7] + *(v67 + 72) * v36);
        sub_26BF2E220(v9);
        v25 = v44 - 1;
        if (!v25)
        {
          goto LABEL_25;
        }
      }

      sub_26BE6BA84(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_26BEBB208(v28);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_31;
      }

      v44 = v65;
      v26 = v70;
      if (v42)
      {
        goto LABEL_11;
      }

LABEL_20:
      v26[(v36 >> 6) + 8] |= 1 << v36;
      *(v26[6] + 4 * v36) = v28;
      sub_26BFFAEB0(v69, v26[7] + *(v67 + 72) * v36);
      sub_26BF2E220(v9);
      v45 = v26[2];
      v40 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v40)
      {
        goto LABEL_29;
      }

      v26[2] = v46;
      v25 = v44 - 1;
    }

    while (v25);
  }

LABEL_25:
  v69 = v26;
  v48 = v74;
  v49 = *(v11 + 16);
  v50 = v66;
  v51 = v60;
  v49(v66, v61, v60);
  v52 = v59;
  *v59 = v48;
  v53 = _s11HashRatchetVMa(0);
  v49(&v52[v53[5]], v50, v51);
  *&v52[v53[6]] = v62;
  *&v52[v53[7]] = v69;
  if ((v48 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_30;
  }

  v75 = v48 != 1;
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
  v54 = *(v11 + 8);
  v54(v50, v51);
  result = (v54)(v61, v51);
  v55 = v72;
  v56 = v73;
  v57 = &v52[v53[8]];
  *v57 = v70;
  *(v57 + 8) = v71;
  *(v57 + 3) = v55;
  *(v57 + 4) = v56;
  return result;
}

uint64_t MLS.KeyAndNonce.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C009C8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MLS.KeyAndNonce.key.setter(uint64_t a1)
{
  v3 = sub_26C009C8C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MLS.KeyAndNonce.nonce.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.KeyAndNonce(0) + 20);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.KeyAndNonce.nonce.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.KeyAndNonce(0) + 20);
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static MLS.KeyAndNonce.== infix(_:_:)()
{
  if (MEMORY[0x26D698700]())
  {
    type metadata accessor for MLS.KeyAndNonce(0);

    JUMPOUT(0x26D698700);
  }

  return 0;
}

uint64_t sub_26BFFA4BC()
{
  if (MEMORY[0x26D698700]())
  {

    JUMPOUT(0x26D698700);
  }

  return 0;
}

uint64_t sub_26BFFA538(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFFA5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C009C8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BFFA628(uint64_t a1)
{
  result = sub_26C009C8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFFA6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C009C8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26BFFA77C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C009C8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_26BFFA858(uint64_t a1)
{
  sub_26C009C8C();
  if (v1 <= 0x3F)
  {
    sub_26BFFA8FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BFFA8FC(uint64_t a1)
{
  if (!qword_280460978)
  {
    type metadata accessor for MLS.KeyAndNonce(255);
    v1 = sub_26C00A39C();
    if (!v2)
    {
      atomic_store(v1, &qword_280460978);
    }
  }
}

uint64_t sub_26BFFA968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyAndNonce(0);
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v9);
  v57 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460980, &qword_26C028FD0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = (&v53 - v18);
  if (a1 == a2)
  {
    return 1;
  }

  v20 = *(a1 + 16);
  v58 = a2;
  if (v20 != *(a2 + 16))
  {
    return 0;
  }

  v55 = a1;
  v56 = v8;
  v21 = 0;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v53 = v16;
  v54 = v11;
  while (v27)
  {
    v29 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v30 = v29 | (v21 << 6);
LABEL_16:
    v35 = *(*(v55 + 48) + 4 * v30);
    v36 = v57;
    sub_26BFFAE4C(*(v55 + 56) + *(v60 + 72) * v30, v57);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460988, &qword_26C028FD8);
    v38 = *(v37 + 48);
    v39 = v53;
    *v53 = v35;
    v16 = v39;
    sub_26BFFAEB0(v36, &v39[v38]);
    (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
    v11 = v54;
LABEL_17:
    sub_26BFFAF14(v16, v19);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460988, &qword_26C028FD8);
    v41 = (*(*(v40 - 8) + 48))(v19, 1, v40);
    v42 = v41 == 1;
    if (v41 == 1)
    {
      return v42;
    }

    v43 = *(v40 + 48);
    v44 = *v19;
    sub_26BFFAEB0(v19 + v43, v11);
    v45 = v58;
    v46 = sub_26BEBB208(v44);
    if ((v47 & 1) == 0)
    {
      goto LABEL_25;
    }

    v48 = v56;
    sub_26BFFAE4C(*(v45 + 56) + *(v60 + 72) * v46, v56);
    if ((MEMORY[0x26D698700](v48, v11) & 1) == 0)
    {
      sub_26BF2E220(v48);
LABEL_25:
      sub_26BF2E220(v11);
      return 0;
    }

    v49 = MEMORY[0x26D698700](v48 + *(v59 + 20), &v11[*(v59 + 20)]);
    v50 = v48;
    v51 = v49;
    sub_26BF2E220(v50);
    result = sub_26BF2E220(v11);
    if ((v51 & 1) == 0)
    {
      return v42;
    }
  }

  if (v28 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  while (1)
  {
    v33 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v33 >= v28)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460988, &qword_26C028FD8);
      (*(*(v52 - 8) + 56))(v16, 1, 1, v52);
      v27 = 0;
      v21 = v32;
      goto LABEL_17;
    }

    v34 = *(v23 + 8 * v33);
    ++v21;
    if (v34)
    {
      v27 = (v34 - 1) & v34;
      v30 = __clz(__rbit64(v34)) | (v33 << 6);
      v21 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFFAD9C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = _s11HashRatchetVMa(0);
  if (MEMORY[0x26D698700](a1 + v4[5], a2 + v4[5]) & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && (sub_26BFFA968(*(a1 + v4[7]), *(a2 + v4[7])))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_26BFFAE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyAndNonce(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFFAEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyAndNonce(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFFAF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460980, &qword_26C028FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFFAF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.KeyAndNonce(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26BFFAFE8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return;
  }

  v8 = HIDWORD(a1) - a1;
LABEL_10:
  sub_26BF30414(v8);
  if (v3)
  {
    sub_26BE00258(0, 0xC000000000000000);
  }

  else
  {
    sub_26BE11228(a1, a2);
    v11 = sub_26C00909C();
    v13 = v12;
    sub_26BE00258(0, 0xC000000000000000);
    *a3 = 4;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
  }
}

void sub_26BFFB11C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return;
  }

  v8 = HIDWORD(a1) - a1;
LABEL_10:
  sub_26BF30414(v8);
  if (v3)
  {
    sub_26BE00258(0, 0xC000000000000000);
  }

  else
  {
    sub_26BE11228(a1, a2);
    v11 = sub_26C00909C();
    v13 = v12;
    sub_26BE00258(0, 0xC000000000000000);
    *a3 = -4091;
    *(a3 + 8) = v11;
    *(a3 + 16) = v13;
  }
}

uint64_t static MLS.Storage.StorageOptions.testInMemoryOptions.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for MLS.Storage.InMemoryGroupStateStore();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  *(v4 + 24) = sub_26C001A90(v5);
  *(a2 + 32) = v3;
  *(a2 + 40) = &protocol witness table for MLS.Storage.InMemoryGroupStateStore;
  *(a2 + 8) = v4;
  v6 = type metadata accessor for MLS.Storage.InMemoryGroupStateStoreV2();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26C00581C(v5, sub_26BEBE840);
  *(v7 + 24) = sub_26C001BDC(v5);
  v12 = v6;
  v13 = &protocol witness table for MLS.Storage.InMemoryGroupStateStoreV2;
  *&v11 = v7;
  v8 = type metadata accessor for MLS.Storage.InMemoryClientStateStore();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26C001D40(v5);
  *(a2 + 112) = v8;
  *(a2 + 120) = &protocol witness table for MLS.Storage.InMemoryClientStateStore;
  *a2 = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = v9;
  *(a2 + 48) = 0u;
  a2 += 48;
  sub_26C001F28(a2);
  return sub_26BE03890(&v11, a2);
}

uint64_t sub_26BFFB3F4(uint64_t (*a1)(uint64_t))
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  *(v2 + 24) = a1(v3);
  return v2;
}

uint64_t MLS.Storage.InMemoryClientStateStore.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_26C001D40(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t MLS.Storage.StorageOptions.init(storeHPKESecretsInSEP:groupStateStorage:groupStateStorageV2:clientStateStorage:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 80) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 48) = 0u;
  v8 = a5 + 48;
  *a5 = a1;
  sub_26BE03890(a2, a5 + 8);
  sub_26C001F28(v8);
  sub_26BE03890(a3, v8);

  return sub_26BE03890(a4, a5 + 88);
}

uint64_t MLS.Storage.StorageOptions.groupStateStorage.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_26BE03890(a1, v1 + 8);
}

uint64_t MLS.Storage.StorageOptions.clientStateStorage.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 88));

  return sub_26BE03890(a1, v1 + 88);
}

uint64_t MLS.Storage.StorageOptions.init(storeHPKESecretsInSEP:groupStateStorage:clientStateStorage:)@<X0>(char a1@<W0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *a4 = a1;
  sub_26BE03890(a2, a4 + 8);

  return sub_26BE03890(a3, a4 + 88);
}

uint64_t MLS.Storage.EpochRecord.data.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.Storage.GroupStateUpdate.groupState.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.Storage.GroupStateUpdate.groupState.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.Storage.GroupStateUpdate.epochInserts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MLS.Storage.GroupStateUpdate.epochUpdates.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t MLS.Storage.GroupStateUpdate.epochDeletes.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_26BFFB968()
{
  if (*v0)
  {
    return 0x444968636F7065;
  }

  else
  {
    return 6386277;
  }
}

uint64_t sub_26BFFB99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6386277 && a2 == 0xE300000000000000;
  if (v5 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x444968636F7065 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BFFBA78(uint64_t a1)
{
  v2 = sub_26C001F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFBAB4(uint64_t a1)
{
  v2 = sub_26C001F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.Storage.EpochKey.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460990, &qword_26C029078);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C001F90();
  sub_26C00B10C();
  v11 = 0;
  sub_26C00AECC();
  if (!v2)
  {
    v10 = 1;
    sub_26C00AECC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MLS.Storage.EpochKey.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x26D699B60](*v0);
  return MEMORY[0x26D699B60](v1);
}

uint64_t MLS.Storage.EpochKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t MLS.Storage.EpochKey.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609A0, &qword_26C029080);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C001F90();
  sub_26C00B0FC();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_26C00AE4C();
    v13 = 1;
    v10 = sub_26C00AE4C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26BFFBEB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v1);
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFFBF10()
{
  v1 = v0[1];
  MEMORY[0x26D699B60](*v0);
  return MEMORY[0x26D699B60](v1);
}

uint64_t sub_26BFFBF4C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26C00B05C();
  MEMORY[0x26D699B60](v2);
  MEMORY[0x26D699B60](v3);
  return sub_26C00B0CC();
}

__n128 MLS.Storage.Record.key.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 MLS.Storage.Record.key.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t MLS.Storage.Record.data.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

void MLS.Storage.Record.data.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MLS.Storage.ReadGroupKey.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.Storage.ReadGroupKey.groupID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.Storage.ReadEpochKey.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.Storage.ReadEpochKey.groupID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

__n128 MLS.Storage.ReadEpochKey.key.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 MLS.Storage.ReadEpochKey.key.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

BOOL static MLS.Storage.ReadEpochKey.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = sub_26BE02DEC(*a1, a1[1], *a2, a2[1]);
  v8 = v2 == v4 && v3 == v5;
  return v6 && v8;
}

uint64_t sub_26BFFC23C()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x444970756F7267;
  }
}

uint64_t sub_26BFFC270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BFFC34C(uint64_t a1)
{
  v2 = sub_26C001FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFC388(uint64_t a1)
{
  v2 = sub_26C001FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.Storage.ReadEpochKey.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609A8, &qword_26C029088);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE00608(v7, v8);
  sub_26C001FE4();
  sub_26C00B10C();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  sub_26BE3AFC4();
  sub_26C00AEBC();
  sub_26BE00258(v15, v16);
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_26C002038();
    sub_26C00AEBC();
  }

  return (*(v14 + 8))(v6, v4);
}

uint64_t MLS.Storage.ReadEpochKey.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_26C00911C();
  MEMORY[0x26D699B60](v2);
  return MEMORY[0x26D699B60](v3);
}

uint64_t MLS.Storage.ReadEpochKey.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v1);
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

void MLS.Storage.ReadEpochKey.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609C0, &qword_26C029090);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C001FE4();
  sub_26C00B0FC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = 0;
    sub_26BE3B018();
    sub_26C00AE3C();
    v9 = v11;
    v12 = 1;
    sub_26C00208C();
    sub_26C00AE3C();
    (*(v6 + 8))(v8, v5);
    v10 = v11;
    *a2 = v9;
    a2[1] = v10;
    sub_26BE00608(v9, *(&v9 + 1));
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_26BE00258(v9, *(&v9 + 1));
  }
}

BOOL sub_26BFFC834(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = sub_26BE02DEC(*a1, a1[1], *a2, a2[1]);
  v8 = v2 == v4 && v3 == v5;
  return v6 && v8;
}

uint64_t sub_26BFFC888()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v1);
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFFC900(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_26C00911C();
  MEMORY[0x26D699B60](v2);
  return MEMORY[0x26D699B60](v3);
}

uint64_t sub_26BFFC948(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v2);
  MEMORY[0x26D699B60](v3);
  return sub_26C00B0CC();
}

uint64_t MLS.Storage.WriteGroupData.groupID.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.Storage.WriteGroupData.groupID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.Storage.WriteGroupData.groupState.getter()
{
  v1 = *(v0 + 16);
  sub_26BE2E408(v1, *(v0 + 24));
  return v1;
}

void MLS.Storage.WriteGroupData.groupState.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE136AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MLS.Storage.WriteGroupData.epochInserts.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t MLS.Storage.WriteGroupData.epochUpdates.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t MLS.Storage.WriteGroupData.epochDeletes.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_26BFFCC00(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_26BFFCC24, 0, 0);
}

uint64_t sub_26BFFCC24()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = v0[5];
    v3 = v0[6];

    v5 = sub_26BEBE840(v4, v3);
    if (v6)
    {
      v7 = (*(v2 + 56) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];
      sub_26BE00608(*v7, v9);
    }

    else
    {
      v8 = 0;
      v9 = 0xF000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = v0[1];

  return v10(v8, v9);
}

uint64_t sub_26BFFCD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_26BFFCD2C, 0, 0);
}

uint64_t sub_26BFFCD2C()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[5];

    v6 = sub_26BEBB250(v5, v4, v3);
    if (v7)
    {
      v8 = (*(v2 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      sub_26BE00608(*v8, v10);
    }

    else
    {
      v9 = 0;
      v10 = 0xF000000000000000;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0xF000000000000000;
  }

  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_26BFFCE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  *(v4 + 88) = *a3;
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 104) = v5;
  *(v4 + 120) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_26BFFCE50, 0, 0);
}

void sub_26BFFCE50()
{
  v88 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  swift_beginAccess();
  sub_26BE00608(v5, v3);
  sub_26BE00608(v2, v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v87 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_26BE57374(v2, v1, v5, v3, isUniquelyReferenced_nonNull_native);
  sub_26BE00258(v5, v3);
  *(v4 + 16) = v87;
  swift_endAccess();
  v7 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (v7)
    {
      if (*(v0 + 88) != *(v0 + 88) >> 32)
      {
        goto LABEL_10;
      }
    }

    else if (*(v0 + 102))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7 != 2 || *(*(v0 + 88) + 16) == *(*(v0 + 88) + 24))
  {
LABEL_9:
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    swift_beginAccess();
    sub_26BE00608(v9, v8);
    sub_26C000288(v9, v8, &v87);
    sub_26BE00258(v9, v8);
    sub_26BE136AC(v87, *(&v87 + 1));
    swift_endAccess();
  }

LABEL_10:
  v83 = *(v0 + 104);
  v85 = *(v0 + 80);
  v86 = v0;
  v81 = *(v83 + 16);
  if (!v81)
  {
LABEL_24:
    v84 = *(v0 + 112);
    v82 = *(v84 + 16);
    if (!v82)
    {
LABEL_40:
      v67 = *(v0 + 120);
      v68 = *(v67 + 16);
      if (v68)
      {
        v69 = (v67 + 32);
        do
        {
          v70 = *(v0 + 64);
          v71 = *(v0 + 72);
          v72 = *v69++;
          swift_beginAccess();
          sub_26BE00608(v70, v71);
          v73 = sub_26BEBB250(v70, v71, v72);
          if (v74)
          {
            v75 = v73;
            v76 = swift_isUniquelyReferenced_nonNull_native();
            v77 = *(v85 + 24);
            *&v87 = v77;
            *(v85 + 24) = 0x8000000000000000;
            if (!v76)
            {
              sub_26BE6E610();
              v77 = v87;
            }

            v79 = *(v0 + 64);
            v78 = *(v0 + 72);
            sub_26BE00258(*(*(v77 + 48) + 24 * v75), *(*(v77 + 48) + 24 * v75 + 8));
            sub_26BE00258(*(*(v77 + 56) + 16 * v75), *(*(v77 + 56) + 16 * v75 + 8));
            sub_26C00117C(v75, v77);
            sub_26BE00258(v79, v78);
            *(v85 + 24) = v77;
          }

          else
          {
            sub_26BE00258(*(v0 + 64), *(v0 + 72));
          }

          swift_endAccess();
          --v68;
        }

        while (v68);
      }

      v80 = *(v0 + 8);

      v80();
      return;
    }

    v39 = 0;
    v40 = (v84 + 48);
    while (1)
    {
      if (v39 >= *(v84 + 16))
      {
        goto LABEL_56;
      }

      v45 = *(v0 + 64);
      v44 = *(v0 + 72);
      v47 = *(v40 - 2);
      v46 = *(v40 - 1);
      v48 = *v40;
      swift_beginAccess();
      sub_26BE00608(v46, v48);
      sub_26BE00608(v45, v44);
      sub_26BE00608(v46, v48);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *&v87 = *(v85 + 24);
      v50 = v87;
      *(v85 + 24) = 0x8000000000000000;
      v51 = sub_26BEBB250(v45, v44, v47);
      v53 = v50[2];
      v54 = (v52 & 1) == 0;
      v26 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v26)
      {
        goto LABEL_57;
      }

      v56 = v52;
      if (v50[3] >= v55)
      {
        v0 = v86;
        if (v49)
        {
          v61 = *(v86 + 64);
          v60 = *(v86 + 72);
          if (v52)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v66 = v51;
          sub_26BE6E610();
          v51 = v66;
          v50 = v87;
          v61 = *(v86 + 64);
          v60 = *(v86 + 72);
          if (v56)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v58 = *(v86 + 64);
        v57 = *(v86 + 72);
        sub_26BE6AE10(v55, v49);
        v50 = v87;
        v51 = sub_26BEBB250(v58, v57, v47);
        if ((v56 & 1) != (v59 & 1))
        {
          goto LABEL_51;
        }

        v0 = v86;
        v61 = *(v86 + 64);
        v60 = *(v86 + 72);
        if (v56)
        {
LABEL_26:
          v41 = (v50[7] + 16 * v51);
          v42 = *v41;
          v43 = v41[1];
          *v41 = v46;
          v41[1] = v48;
          sub_26BE00258(v42, v43);
          sub_26BE00258(v61, v60);
          goto LABEL_27;
        }
      }

      v50[(v51 >> 6) + 8] |= 1 << v51;
      v62 = (v50[6] + 24 * v51);
      *v62 = v61;
      v62[1] = v60;
      v62[2] = v47;
      v63 = (v50[7] + 16 * v51);
      *v63 = v46;
      v63[1] = v48;
      v64 = v50[2];
      v26 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v26)
      {
        goto LABEL_59;
      }

      v50[2] = v65;
LABEL_27:
      ++v39;
      *(v85 + 24) = v50;
      swift_endAccess();
      sub_26BE00258(v46, v48);
      v40 += 3;
      if (v82 == v39)
      {
        goto LABEL_40;
      }
    }
  }

  v10 = 0;
  v11 = (v83 + 48);
  while (v10 < *(v83 + 16))
  {
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v18 = *(v11 - 2);
    v17 = *(v11 - 1);
    v19 = *v11;
    swift_beginAccess();
    sub_26BE00608(v17, v19);
    sub_26BE00608(v16, v15);
    sub_26BE00608(v17, v19);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v87 = *(v85 + 24);
    v21 = v87;
    *(v85 + 24) = 0x8000000000000000;
    v22 = sub_26BEBB250(v16, v15, v18);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_55;
    }

    v28 = v23;
    if (v21[3] >= v27)
    {
      if ((v20 & 1) == 0)
      {
        v38 = v22;
        sub_26BE6E610();
        v22 = v38;
        v21 = v87;
      }
    }

    else
    {
      v30 = *(v86 + 64);
      v29 = *(v86 + 72);
      sub_26BE6AE10(v27, v20);
      v21 = v87;
      v22 = sub_26BEBB250(v30, v29, v18);
      if ((v28 & 1) != (v31 & 1))
      {
LABEL_51:

        sub_26C00AF8C();
        return;
      }
    }

    v33 = *(v86 + 64);
    v32 = *(v86 + 72);
    if (v28)
    {
      v12 = (v21[7] + 16 * v22);
      v13 = *v12;
      v14 = v12[1];
      *v12 = v17;
      v12[1] = v19;
      sub_26BE00258(v13, v14);
      sub_26BE00258(v33, v32);
    }

    else
    {
      v21[(v22 >> 6) + 8] |= 1 << v22;
      v34 = (v21[6] + 24 * v22);
      *v34 = v33;
      v34[1] = v32;
      v34[2] = v18;
      v35 = (v21[7] + 16 * v22);
      *v35 = v17;
      v35[1] = v19;
      v36 = v21[2];
      v26 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v26)
      {
        goto LABEL_58;
      }

      v21[2] = v37;
    }

    ++v10;
    v0 = v86;
    *(v85 + 24) = v21;
    swift_endAccess();
    sub_26BE00258(v17, v19);
    v11 += 3;
    if (v81 == v10)
    {
      goto LABEL_24;
    }
  }

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
  __break(1u);
}

uint64_t sub_26BFFD510()
{
  if (*v0)
  {
    return 0x74614468636F7065;
  }

  else
  {
    return 0x74614470756F7267;
  }
}

uint64_t sub_26BFFD54C(uint64_t a1)
{
  v2 = sub_26C0020E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFD588(uint64_t a1)
{
  v2 = sub_26C0020E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BFFD5CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609D0, &qword_26C0290B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C0020E0();
  sub_26C00B10C();
  swift_beginAccess();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609E0, &qword_26C0290B8);
  sub_26C002188(&qword_2804609E8, sub_26BE3AFC4, MEMORY[0x277D83508]);
  sub_26C00AEBC();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    v10[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609F0, &qword_26C0290C0);
    sub_26C002200(&qword_2804609F8, sub_26C002134, sub_26BE3AFC4, MEMORY[0x277D83508]);
    sub_26C00AEBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MLS.Storage.InMemoryGroupStateStore.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  MLS.Storage.InMemoryGroupStateStore.init(from:)(a1);
  return v2;
}

uint64_t MLS.Storage.InMemoryGroupStateStore.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A08, &qword_26C0290C8);
  v14 = *(v5 - 8);
  v15 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = MEMORY[0x277D84F90];
  *(v3 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  *(v3 + 24) = sub_26C001A90(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C0020E0();
  sub_26C00B0FC();
  if (v2)
  {
  }

  else
  {
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609E0, &qword_26C0290B8);
    v17 = 0;
    sub_26C002188(&qword_280460A10, sub_26BE3B018, MEMORY[0x277D83528]);
    v10 = v15;
    sub_26C00AE3C();
    v11 = v16;
    swift_beginAccess();
    *(v3 + 16) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609F0, &qword_26C0290C0);
    LOBYTE(v16) = 1;
    sub_26C002200(&qword_280460A18, sub_26C002290, sub_26BE3B018, MEMORY[0x277D83528]);
    sub_26C00AE3C();
    (*(v9 + 8))(v7, v10);
    v13 = v18;
    swift_beginAccess();
    *(v3 + 24) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26BFFDB78(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26BFFDC20;

  return sub_26BFFCC00(a1, a2);
}

uint64_t sub_26BFFDC20(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_26BFFDD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26C006454;

  return sub_26BFFCD08(a1, a2, a3);
}

uint64_t sub_26BFFDDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BE28F58;

  return sub_26BFFCE18(a1, a2, a3);
}

uint64_t sub_26BFFDEF8(_OWORD *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_26BFFDF20, 0, 0);
}

uint64_t sub_26BFFDF20()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = v0[6];
    v3 = v0[7];

    v5 = sub_26BEBE840(v4, v3);
    if (v6)
    {
      v7 = (*(v2 + 56) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];
      sub_26BE00608(*v7, v9);
    }

    else
    {
      v8 = 0;
      v9 = 0xF000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  v10 = v0[1];

  return v10(v8, v9);
}

uint64_t sub_26BFFE004(_OWORD *a1)
{
  *(v2 + 40) = v1;
  v3 = a1[1];
  *(v2 + 48) = *a1;
  *(v2 + 64) = v3;
  return MEMORY[0x2822009F8](sub_26BFFE02C, 0, 0);
}

uint64_t sub_26BFFE02C()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v4 = v0[8];
    v3 = v0[9];
    v6 = v0[6];
    v5 = v0[7];

    v7 = sub_26BEBB2E8(v6, v5, v4, v3);
    if (v8)
    {
      v9 = (*(v2 + 56) + 16 * v7);
      v10 = *v9;
      v11 = v9[1];
      sub_26BE00608(*v9, v11);
    }

    else
    {
      v10 = 0;
      v11 = 0xF000000000000000;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = v0[1];

  return v12(v10, v11);
}

uint64_t sub_26BFFE124(uint64_t a1)
{
  *(v2 + 64) = v1;
  v3 = *(a1 + 16);
  *(v2 + 72) = *a1;
  *(v2 + 88) = v3;
  *(v2 + 104) = *(a1 + 32);
  *(v2 + 120) = *(a1 + 48);
  return MEMORY[0x2822009F8](sub_26BFFE160, 0, 0);
}

void sub_26BFFE160()
{
  v91 = v0;
  v1 = v0[12];
  v2 = v0[8];
  swift_beginAccess();
  if (v1 >> 60 == 15)
  {
    v4 = v0[9];
    v3 = v0[10];
    sub_26BE00608(v4, v3);
    sub_26C000288(v4, v3, &v90);
    sub_26BE136AC(v90, *(&v90 + 1));
    swift_endAccess();
    swift_beginAccess();
    sub_26C000288(v4, v3, &v90);
    sub_26BE00258(v4, v3);
    sub_26BE136AC(v90, *(&v90 + 1));
    swift_endAccess();
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    v8 = v0[9];
    v7 = v0[10];
    sub_26BE00608(v8, v7);
    sub_26BE00608(v8, v7);
    sub_26BE2E408(v6, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = *(v2 + 16);
    sub_26BE57374(v6, v5, v8, v7, isUniquelyReferenced_nonNull_native);
    sub_26BE00258(v8, v7);
    *(v2 + 16) = v90;
    swift_endAccess();
    sub_26BE00258(v8, v7);
  }

  v88 = v0[8];
  v89 = v0;
  v82 = *(v0[13] + 16);
  v84 = v0[13];
  if (!v82)
  {
LABEL_20:
    v85 = v0[14];
    v83 = *(v85 + 16);
    if (!v83)
    {
LABEL_36:
      v65 = v0[15];
      v66 = *(v65 + 16);
      if (v66)
      {
        v67 = (v65 + 40);
        do
        {
          v68 = v0[9];
          v69 = v0[10];
          v70 = *(v67 - 1);
          v71 = *v67;
          swift_beginAccess();
          sub_26BE00608(v68, v69);
          v72 = sub_26BEBB2E8(v68, v69, v70, v71);
          if (v73)
          {
            v74 = v72;
            v75 = swift_isUniquelyReferenced_nonNull_native();
            v76 = *(v88 + 24);
            *&v90 = v76;
            *(v88 + 24) = 0x8000000000000000;
            if (!v75)
            {
              sub_26BE6E474();
              v76 = v90;
            }

            v78 = v0[9];
            v77 = v0[10];
            sub_26BE00258(*(*(v76 + 48) + 32 * v74), *(*(v76 + 48) + 32 * v74 + 8));
            sub_26BE00258(*(*(v76 + 56) + 16 * v74), *(*(v76 + 56) + 16 * v74 + 8));
            sub_26C000F68(v74, v76);
            sub_26BE00258(v78, v77);
            *(v88 + 24) = v76;
          }

          else
          {
            sub_26BE00258(v0[9], v0[10]);
          }

          v67 += 2;
          swift_endAccess();
          --v66;
        }

        while (v66);
      }

      v79 = v0[1];

      v79();
      return;
    }

    v38 = 0;
    v39 = (v85 + 56);
    while (1)
    {
      if (v38 >= *(v85 + 16))
      {
        goto LABEL_52;
      }

      v44 = v0[9];
      v43 = v0[10];
      v45 = *(v39 - 2);
      v87 = *(v39 - 3);
      v46 = *(v39 - 1);
      v47 = *v39;
      swift_beginAccess();
      sub_26BE00608(v46, v47);
      sub_26BE00608(v44, v43);
      sub_26BE00608(v46, v47);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v90 = *(v88 + 24);
      v49 = v90;
      *(v88 + 24) = 0x8000000000000000;
      v50 = sub_26BEBB2E8(v44, v43, v87, v45);
      v52 = v49[2];
      v53 = (v51 & 1) == 0;
      v26 = __OFADD__(v52, v53);
      v54 = v52 + v53;
      if (v26)
      {
        goto LABEL_53;
      }

      v55 = v51;
      if (v49[3] >= v54)
      {
        if (v48)
        {
          v59 = v89[9];
          v58 = v89[10];
          if (v51)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v64 = v50;
          sub_26BE6E474();
          v50 = v64;
          v49 = v90;
          v59 = v89[9];
          v58 = v89[10];
          if (v55)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v56 = v89[9];
        v81 = v89[10];
        sub_26BE6AB30(v54, v48);
        v49 = v90;
        v50 = sub_26BEBB2E8(v56, v81, v87, v45);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_47;
        }

        v59 = v89[9];
        v58 = v89[10];
        if (v55)
        {
LABEL_22:
          v40 = (v49[7] + 16 * v50);
          v41 = *v40;
          v42 = v40[1];
          *v40 = v46;
          v40[1] = v47;
          sub_26BE00258(v41, v42);
          sub_26BE00258(v59, v58);
          goto LABEL_23;
        }
      }

      v49[(v50 >> 6) + 8] |= 1 << v50;
      v60 = (v49[6] + 32 * v50);
      *v60 = v59;
      v60[1] = v58;
      v60[2] = v87;
      v60[3] = v45;
      v61 = (v49[7] + 16 * v50);
      *v61 = v46;
      v61[1] = v47;
      v62 = v49[2];
      v26 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v26)
      {
        goto LABEL_55;
      }

      v49[2] = v63;
LABEL_23:
      ++v38;
      v0 = v89;
      *(v88 + 24) = v49;
      swift_endAccess();
      sub_26BE00258(v46, v47);
      v39 += 4;
      if (v83 == v38)
      {
        goto LABEL_36;
      }
    }
  }

  v10 = 0;
  v11 = (v84 + 56);
  while (v10 < *(v84 + 16))
  {
    v16 = v0[9];
    v15 = v0[10];
    v17 = *(v11 - 2);
    v86 = *(v11 - 3);
    v18 = *(v11 - 1);
    v19 = *v11;
    swift_beginAccess();
    sub_26BE00608(v18, v19);
    sub_26BE00608(v16, v15);
    sub_26BE00608(v18, v19);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = *(v88 + 24);
    v21 = v90;
    *(v88 + 24) = 0x8000000000000000;
    v22 = sub_26BEBB2E8(v16, v15, v86, v17);
    v24 = v21[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_51;
    }

    v28 = v23;
    if (v21[3] >= v27)
    {
      if (v20)
      {
        v32 = v89[9];
        v31 = v89[10];
        if (v23)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v37 = v22;
        sub_26BE6E474();
        v22 = v37;
        v21 = v90;
        v32 = v89[9];
        v31 = v89[10];
        if (v28)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v29 = v89[9];
      v80 = v89[10];
      sub_26BE6AB30(v27, v20);
      v21 = v90;
      v22 = sub_26BEBB2E8(v29, v80, v86, v17);
      if ((v28 & 1) != (v30 & 1))
      {
LABEL_47:

        sub_26C00AF8C();
        return;
      }

      v32 = v89[9];
      v31 = v89[10];
      if (v28)
      {
LABEL_6:
        v12 = (v21[7] + 16 * v22);
        v13 = *v12;
        v14 = v12[1];
        *v12 = v18;
        v12[1] = v19;
        sub_26BE00258(v13, v14);
        sub_26BE00258(v32, v31);
        goto LABEL_7;
      }
    }

    v21[(v22 >> 6) + 8] |= 1 << v22;
    v33 = (v21[6] + 32 * v22);
    *v33 = v32;
    v33[1] = v31;
    v33[2] = v86;
    v33[3] = v17;
    v34 = (v21[7] + 16 * v22);
    *v34 = v18;
    v34[1] = v19;
    v35 = v21[2];
    v26 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v26)
    {
      goto LABEL_54;
    }

    v21[2] = v36;
LABEL_7:
    ++v10;
    v0 = v89;
    *(v88 + 24) = v21;
    swift_endAccess();
    sub_26BE00258(v18, v19);
    v11 += 4;
    if (v82 == v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_26BFFE850(uint64_t (*a1)(uint64_t))
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  *(v1 + 24) = a1(v3);
  return v1;
}

uint64_t sub_26BFFE8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74614470756F7267 && a2 == 0xE900000000000061;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74614468636F7065 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BFFE998(uint64_t a1)
{
  v2 = sub_26C0022E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFE9D4(uint64_t a1)
{
  v2 = sub_26C0022E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s8SwiftMLS0B0O7StorageO23InMemoryGroupStateStoreCfd_0()
{

  return v0;
}

uint64_t _s8SwiftMLS0B0O7StorageO23InMemoryGroupStateStoreCfD_0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26BFFEA78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A28, &qword_26C0290E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C0022E4();
  sub_26C00B10C();
  swift_beginAccess();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609E0, &qword_26C0290B8);
  sub_26C002188(&qword_2804609E8, sub_26BE3AFC4, MEMORY[0x277D83508]);
  sub_26C00AEBC();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    v10[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A38, &qword_26C0290F0);
    sub_26C00238C(&qword_280460A40, sub_26C002338, sub_26BE3AFC4, MEMORY[0x277D83508]);
    sub_26C00AEBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MLS.Storage.InMemoryGroupStateStoreV2.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  MLS.Storage.InMemoryGroupStateStoreV2.init(from:)(a1);
  return v2;
}

uint64_t MLS.Storage.InMemoryGroupStateStoreV2.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A50, &qword_26C0290F8);
  v14 = *(v5 - 8);
  v15 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = MEMORY[0x277D84F90];
  *(v3 + 16) = sub_26C00581C(MEMORY[0x277D84F90], sub_26BEBE840);
  *(v3 + 24) = sub_26C001BDC(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C0022E4();
  sub_26C00B0FC();
  if (v2)
  {
  }

  else
  {
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804609E0, &qword_26C0290B8);
    v17 = 0;
    sub_26C002188(&qword_280460A10, sub_26BE3B018, MEMORY[0x277D83528]);
    v10 = v15;
    sub_26C00AE3C();
    v11 = v16;
    swift_beginAccess();
    *(v3 + 16) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A38, &qword_26C0290F0);
    LOBYTE(v16) = 1;
    sub_26C00238C(&qword_280460A58, sub_26C00241C, sub_26BE3B018, MEMORY[0x277D83528]);
    sub_26C00AE3C();
    (*(v9 + 8))(v7, v10);
    v13 = v18;
    swift_beginAccess();
    *(v3 + 24) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26BFFF024(_OWORD *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26C006454;

  return sub_26BFFDEF8(a1);
}

uint64_t sub_26BFFF0BC(_OWORD *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26C006454;

  return sub_26BFFE004(a1);
}

uint64_t sub_26BFFF154(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26BE2E3F4;

  return sub_26BFFE124(a1);
}

uint64_t sub_26BFFF254(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_26BFFF274, 0, 0);
}

uint64_t sub_26BFFF274()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = v0[5];

    v4 = sub_26BEBB390(v3);
    if (v5)
    {
      v6 = (*(v2 + 56) + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
      sub_26BE00608(*v6, v8);
    }

    else
    {
      v7 = 0;
      v8 = 0xF000000000000000;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = v0[1];

  return v9(v7, v8);
}

uint64_t sub_26BFFF354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_26BFFF378, 0, 0);
}

uint64_t sub_26BFFF378()
{
  v11 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_beginAccess();
  sub_26BE00608(v3, v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v10 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_26BE569E0(v3, v1, v4, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v10;
  swift_endAccess();
  v6 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (v6)
    {
      if (*(v0 + 48) != *(v0 + 48) >> 32)
      {
        goto LABEL_10;
      }
    }

    else if (*(v0 + 62))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6 != 2 || *(*(v0 + 48) + 16) == *(*(v0 + 48) + 24))
  {
LABEL_9:
    v7 = *(v0 + 40);
    swift_beginAccess();
    sub_26C0000EC(v7, &v10);
    sub_26BE136AC(v10, *(&v10 + 1));
    swift_endAccess();
  }

LABEL_10:
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26BFFF510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26C00AF2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26BFFF598(uint64_t a1)
{
  v2 = sub_26C002470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFF5D4(uint64_t a1)
{
  v2 = sub_26C002470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.Storage.InMemoryClientStateStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26BFFF668(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A68, &qword_26C029110);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C002470();
  sub_26C00B10C();
  swift_beginAccess();
  v9 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A78, &qword_26C029118);
  sub_26C0024C4();
  sub_26C00AEBC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t MLS.Storage.InMemoryClientStateStore.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  MLS.Storage.InMemoryClientStateStore.init(from:)(a1);
  return v2;
}

uint64_t MLS.Storage.InMemoryClientStateStore.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A90, &qword_26C029120);
  v12[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  *(v1 + 16) = sub_26C001D40(MEMORY[0x277D84F90]);
  v8 = (v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C002470();
  sub_26C00B0FC();
  if (v2)
  {
  }

  else
  {
    v9 = v12[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460A78, &qword_26C029118);
    sub_26C00256C();
    sub_26C00AE3C();
    (*(v9 + 8))(v7, v5);
    v10 = v12[5];
    swift_beginAccess();
    *v8 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_26BFFFA18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26C006454;

  return sub_26BFFF254(a1);
}

uint64_t sub_26BFFFAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BE2E3F4;

  return sub_26BFFF354(a1, a2, a3);
}

uint64_t sub_26BFFFBA4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_26BFFFC38(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B38, &qword_26C02A160);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C004428();
  sub_26C00B10C();
  v14 = a2;
  v15 = a3;
  v16 = 0;
  sub_26BE00608(a2, a3);
  sub_26BE3AFC4();
  sub_26C00AEBC();
  sub_26BE00258(v14, v15);
  if (!v4)
  {
    LOBYTE(v14) = 1;
    sub_26C00AECC();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26BFFFDD4()
{
  if (*v0)
  {
    return 0x68636F7065;
  }

  else
  {
    return 0x444970756F7267;
  }
}

uint64_t sub_26BFFFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x68636F7065 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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

uint64_t sub_26BFFFEE4(uint64_t a1)
{
  v2 = sub_26C004428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BFFFF20(uint64_t a1)
{
  v2 = sub_26C004428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BFFFF5C()
{
  v1 = *(v0 + 16);
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFFFFC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_26C00911C();
  return MEMORY[0x26D699B60](v2);
}

uint64_t sub_26BFFFFF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_26C00B05C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v2);
  return sub_26C00B0CC();
}

uint64_t sub_26C000058(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  return sub_26BE02DEC(*a1, a1[1], *a2, a2[1]) & (v2 == v3);
}

uint64_t sub_26C00009C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26C00613C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

double sub_26C0000EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_26BEBB390(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6D5C0();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_26C00928C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_26C0003D0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_26C00DA60;
  }

  return result;
}

double sub_26C0001C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_26BEBE840(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6D84C();
      v10 = v15;
    }

    sub_26BE00258(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = (*(v10 + 56) + 80 * v8);
    v12 = v11[3];
    a3[2] = v11[2];
    a3[3] = v12;
    a3[4] = v11[4];
    v13 = v11[1];
    *a3 = *v11;
    a3[1] = v13;
    sub_26C0006D8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_26C000288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_26BEBE840(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26BE6E2F0();
      v10 = v12;
    }

    sub_26BE00258(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    *a3 = *(*(v10 + 56) + 16 * v8);
    sub_26C000DB0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_26C00DA60;
  }

  return result;
}

uint64_t sub_26C000338(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26BEBB618(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26BE6F278();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_26C0018C8(v6, v8);
  *v3 = v8;
  return v9;
}

unint64_t sub_26C0003D0(int64_t a1, uint64_t a2)
{
  v40 = sub_26C00928C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_26C00AB5C();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_26BEBE70C(&qword_28045E828, MEMORY[0x277CC9600]);
      v23 = sub_26C00A3BC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_26C0006D8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_26C00B05C();
      sub_26BE00608(v10, v11);
      sub_26C00911C();
      v12 = sub_26C00B0CC();
      sub_26BE00258(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 80 * v3);
        v19 = (v17 + 80 * v6);
        if (v3 != v6 || v18 >= v19 + 80)
        {
          memmove(v18, v19, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_26C000898(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 4 * v3);
        v12 = (v10 + 4 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C000A2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 4 * v3);
        v14 = (v12 + 4 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (v3 != v6 || v16 >= v17 + 40)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C000BCC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_26C00B05C();
      sub_26C00B09C();
      MEMORY[0x26D699B60](v9);
      result = sub_26C00B0CC();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_26C00921C() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_26C000DB0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_26C00B05C();
      sub_26BE00608(v10, v11);
      sub_26C00911C();
      v12 = sub_26C00B0CC();
      sub_26BE00258(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_26C000F68(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    v30 = v4;
    do
    {
      v9 = v2;
      v10 = (*(v2 + 48) + 32 * v6);
      v11 = v7;
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      v16 = v8;
      sub_26C00B05C();
      sub_26BE00608(v12, v13);
      sub_26C00911C();
      MEMORY[0x26D699B60](v14);
      MEMORY[0x26D699B60](v15);
      v17 = sub_26C00B0CC();
      v18 = v12;
      v7 = v11;
      sub_26BE00258(v18, v13);
      v8 = v16;
      v19 = v17 & v11;
      if (v3 >= v16)
      {
        if (v19 < v16)
        {
          v4 = v30;
          v2 = v9;
        }

        else
        {
          v4 = v30;
          v2 = v9;
          if (v3 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v9;
        if (v19 >= v8 || v3 >= v19)
        {
LABEL_11:
          v20 = *(v2 + 48);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v23 = v22[1];
            *v21 = *v22;
            v21[1] = v23;
          }

          v24 = *(v2 + 56);
          v25 = (v24 + 16 * v3);
          v26 = (v24 + 16 * v6);
          if (v3 != v6 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v11;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }
}

void sub_26C00117C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 24 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      sub_26C00B05C();
      sub_26BE00608(v10, v11);
      sub_26C00911C();
      MEMORY[0x26D699B60](v12);
      v13 = sub_26C00B0CC();
      sub_26BE00258(v10, v11);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v18 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

unint64_t sub_26C001358(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    while (1)
    {
      sub_26C00B05C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v3);
      v12 = (v10 + 4 * v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_26C009C8C() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C001528(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    while (1)
    {
      sub_26C00B05C();
      sub_26C00B07C();
      sub_26C00B09C();
      result = sub_26C00B0CC();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v3);
      v12 = (v10 + 8 * v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(_s11HashRatchetVMa(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C001714(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x26D699B00](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for MLS.KeyAndNonce(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C0018C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C00AB5C() + 1) & ~v5;
    do
    {
      sub_26C00B05C();

      sub_26C00A58C();
      v9 = sub_26C00B0CC();

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
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
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

unint64_t sub_26C001A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E840, &unk_26C0124E0);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      sub_26BE00608(v5, v6);
      sub_26BE00608(v7, v9);
      result = sub_26BEBB250(v5, v6, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v8;
      v13 = (v3[7] + 16 * result);
      *v13 = v7;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_26C001BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E830, &qword_26C0124D0);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 5);
      v16 = *(i - 5);
      v17 = *(i - 3);
      v8 = *(i - 4);
      sub_26BE00608(v7, v8);
      sub_26BE00608(v5, v6);
      result = sub_26BEBB2E8(v7, v8, v17, *(&v17 + 1));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 32 * result);
      *v11 = v16;
      v11[1] = v17;
      v12 = (v3[7] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_26C001D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460BA0, &qword_26C02A218);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E820, &qword_26C02A220);
    v7 = sub_26C00ADAC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26BE2E1F0(v9, v5, &qword_280460BA0, &qword_26C02A218);
      result = sub_26BEBB390(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26C00928C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t sub_26C001F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA20, &qword_26C029070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C001F90()
{
  result = qword_280460998;
  if (!qword_280460998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460998);
  }

  return result;
}

unint64_t sub_26C001FE4()
{
  result = qword_2804609B0;
  if (!qword_2804609B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804609B0);
  }

  return result;
}

unint64_t sub_26C002038()
{
  result = qword_2804609B8;
  if (!qword_2804609B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804609B8);
  }

  return result;
}

unint64_t sub_26C00208C()
{
  result = qword_2804609C8;
  if (!qword_2804609C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804609C8);
  }

  return result;
}

unint64_t sub_26C0020E0()
{
  result = qword_2804609D8;
  if (!qword_2804609D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804609D8);
  }

  return result;
}

unint64_t sub_26C002134()
{
  result = qword_280460A00;
  if (!qword_280460A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A00);
  }

  return result;
}

uint64_t sub_26C002188(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804609E0, &qword_26C0290B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26C002200(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804609F0, &qword_26C0290C0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26C002290()
{
  result = qword_280460A20;
  if (!qword_280460A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A20);
  }

  return result;
}

unint64_t sub_26C0022E4()
{
  result = qword_280460A30;
  if (!qword_280460A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A30);
  }

  return result;
}

unint64_t sub_26C002338()
{
  result = qword_280460A48;
  if (!qword_280460A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A48);
  }

  return result;
}

uint64_t sub_26C00238C(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460A38, &qword_26C0290F0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26C00241C()
{
  result = qword_280460A60;
  if (!qword_280460A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A60);
  }

  return result;
}

unint64_t sub_26C002470()
{
  result = qword_280460A70;
  if (!qword_280460A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A70);
  }

  return result;
}

unint64_t sub_26C0024C4()
{
  result = qword_280460A80;
  if (!qword_280460A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460A78, &qword_26C029118);
    sub_26BEBE70C(&qword_280460A88, MEMORY[0x277CC95F8]);
    sub_26BE3AFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A80);
  }

  return result;
}

unint64_t sub_26C00256C()
{
  result = qword_280460A98;
  if (!qword_280460A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460A78, &qword_26C029118);
    sub_26BEBE70C(&qword_280460AA0, MEMORY[0x277CC9618]);
    sub_26BE3B018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460A98);
  }

  return result;
}

unint64_t sub_26C002618()
{
  result = qword_280460AA8;
  if (!qword_280460AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AA8);
  }

  return result;
}

unint64_t sub_26C002670()
{
  result = qword_280460AB0;
  if (!qword_280460AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AB0);
  }

  return result;
}

uint64_t sub_26C0026D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C00271C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C00279C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26C0027E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t dispatch thunk of MLS.Storage.GroupStateStorage.readGroupState(groupID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26BE3B910;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorage.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26BE45BF4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorage.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26BE28F58;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_26C002BFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C002C50(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C002CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C002D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorageV2.readGroupState(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BE45BF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorageV2.readEpochData(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BE45BF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.GroupStateStorageV2.write(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BE2E3F4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.ClientStateStorage.read(clientUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BE45BF4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.ClientStateStorage.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26BE2E3F4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStore.readGroupState(groupID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE45BF4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStore.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 152) + **(*v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE45BF4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStore.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStoreV2.readGroupState(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE45BF4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStoreV2.readEpochData(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE45BF4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryGroupStateStoreV2.write(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryClientStateStore.read(clientUUID:)(uint64_t a1)
{
  v6 = (*(*v1 + 112) + **(*v1 + 112));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE45BF4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Storage.InMemoryClientStateStore.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

unint64_t sub_26C003EAC()
{
  result = qword_280460AB8;
  if (!qword_280460AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AB8);
  }

  return result;
}

unint64_t sub_26C003F04()
{
  result = qword_280460AC0;
  if (!qword_280460AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AC0);
  }

  return result;
}

unint64_t sub_26C003F5C()
{
  result = qword_280460AC8;
  if (!qword_280460AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AC8);
  }

  return result;
}

unint64_t sub_26C003FB4()
{
  result = qword_280460AD0;
  if (!qword_280460AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AD0);
  }

  return result;
}

unint64_t sub_26C00400C()
{
  result = qword_280460AD8;
  if (!qword_280460AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AD8);
  }

  return result;
}

unint64_t sub_26C004064()
{
  result = qword_280460AE0;
  if (!qword_280460AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AE0);
  }

  return result;
}

unint64_t sub_26C0040BC()
{
  result = qword_280460AE8;
  if (!qword_280460AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AE8);
  }

  return result;
}

unint64_t sub_26C004114()
{
  result = qword_280460AF0;
  if (!qword_280460AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AF0);
  }

  return result;
}

unint64_t sub_26C00416C()
{
  result = qword_280460AF8;
  if (!qword_280460AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460AF8);
  }

  return result;
}

unint64_t sub_26C0041C4()
{
  result = qword_280460B00;
  if (!qword_280460B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B00);
  }

  return result;
}

unint64_t sub_26C00421C()
{
  result = qword_280460B08;
  if (!qword_280460B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B08);
  }

  return result;
}

unint64_t sub_26C004274()
{
  result = qword_280460B10;
  if (!qword_280460B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B10);
  }

  return result;
}

unint64_t sub_26C0042CC()
{
  result = qword_280460B18;
  if (!qword_280460B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B18);
  }

  return result;
}

unint64_t sub_26C004324()
{
  result = qword_280460B20;
  if (!qword_280460B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B20);
  }

  return result;
}

unint64_t sub_26C00437C()
{
  result = qword_280460B28;
  if (!qword_280460B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B28);
  }

  return result;
}

unint64_t sub_26C0043D4()
{
  result = qword_280460B30;
  if (!qword_280460B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B30);
  }

  return result;
}

unint64_t sub_26C004428()
{
  result = qword_280460B40;
  if (!qword_280460B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460B40);
  }

  return result;
}

unint64_t sub_26C00447C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E858, &qword_26C0124F8);
  v3 = sub_26C00ADAC();

  v4 = *(a1 + 208);
  v48 = *(a1 + 192);
  v49 = v4;
  v50 = *(a1 + 224);
  v5 = *(a1 + 144);
  v44 = *(a1 + 128);
  v45 = v5;
  v6 = *(a1 + 176);
  v46 = *(a1 + 160);
  v47 = v6;
  v7 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v7;
  v8 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v8;
  v9 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v9;
  v11 = *(&v38 + 1);
  v10 = v38;
  sub_26BE2E1F0(&v38, v37, &qword_280460B98, &qword_26C02A210);
  result = sub_26BEBE840(v10, v11);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = (a1 + 232);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v15 = (v3[6] + 16 * result);
    *v15 = v10;
    v15[1] = v11;
    v16 = v3[7] + 184 * result;
    v17 = v39;
    v18 = v40;
    v19 = v42;
    *(v16 + 32) = v41;
    *(v16 + 48) = v19;
    *v16 = v17;
    *(v16 + 16) = v18;
    v20 = v43;
    v21 = v44;
    v22 = v46;
    *(v16 + 96) = v45;
    *(v16 + 112) = v22;
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    *(v16 + 176) = v50;
    *(v16 + 144) = v24;
    *(v16 + 160) = v25;
    *(v16 + 128) = v23;
    v26 = v3[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v3[2] = v28;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v29 = (v14 + 200);
    v30 = v14[11];
    v48 = v14[10];
    v49 = v30;
    v50 = *(v14 + 24);
    v31 = v14[7];
    v44 = v14[6];
    v45 = v31;
    v32 = v14[9];
    v46 = v14[8];
    v47 = v32;
    v33 = v14[3];
    v40 = v14[2];
    v41 = v33;
    v34 = v14[5];
    v42 = v14[4];
    v43 = v34;
    v35 = v14[1];
    v38 = *v14;
    v39 = v35;
    v11 = *(&v38 + 1);
    v10 = v38;
    sub_26BE2E1F0(&v38, v37, &qword_280460B98, &qword_26C02A210);
    result = sub_26BEBE840(v10, v11);
    v14 = v29;
    if (v36)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C004684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E850, &qword_26C0124F0);
    v3 = sub_26C00ADAC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26BE2E1F0(v4, v14, &qword_280460B90, &unk_26C02A200);
      result = sub_26BEBE840(*&v14[0], *(&v14[0] + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v14[0];
      v7 = (v3[7] + 80 * result);
      *v7 = v14[1];
      v8 = v14[2];
      v9 = v14[3];
      v10 = v14[5];
      v7[3] = v14[4];
      v7[4] = v10;
      v7[1] = v8;
      v7[2] = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 96;
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

unint64_t sub_26C0047C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E8, &qword_26C012490);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 2);
      v8 = *i;

      result = sub_26BEBB618(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_26C0048D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B58, &qword_26C02A188);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F8, &unk_26C0124A0);
    v7 = sub_26C00ADAC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_26BE2E1F0(v9, v5, &qword_280460B58, &qword_26C02A188);
      result = sub_26BEBB598(*v5, *(v5 + 1));
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 16 * result;
      v15 = *(v5 + 1);
      *v14 = *v5;
      *(v14 + 8) = v15;
      v16 = v7[7];
      v17 = sub_26C00921C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, v5 + v8, v17);
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

unint64_t sub_26C004AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8A0, &unk_26C012540);
  v3 = sub_26C00ADAC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_26BEBB414(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_26BE00608(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 4);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_26BEBB414(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C004BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E898, &qword_26C012538);
    v3 = sub_26C00ADAC();
    for (i = a1 + 32; ; i += 48)
    {
      sub_26BE2E1F0(i, &v10, &qword_280460B80, &unk_26C02A1E0);
      result = sub_26BEBB414(v10);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v10;
      result = sub_26BE03890(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_26C004CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA90, &qword_26C01D990);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E890, &qword_26C012530);
    v7 = sub_26C00ADAC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_26BE2E1F0(v9, v5, &qword_28045FA90, &qword_26C01D990);
      result = sub_26BEBB414(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = *v5;
      v14 = v7[7];
      v15 = sub_26C009C8C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_26C004EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B68, &qword_26C02A1A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E888, &unk_26C02A1B0);
    v7 = sub_26C00ADAC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_26BE2E1F0(v9, v5, &qword_280460B68, &qword_26C02A1A8);
      result = sub_26BEBB480(*v5 | (*(v5 + 1) << 32));
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6] + 8 * result;
      v15 = *(v5 + 1);
      *v14 = *v5;
      *(v14 + 4) = v15;
      v16 = v7[7];
      v17 = _s11HashRatchetVMa(0);
      result = sub_26BF97370(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, _s11HashRatchetVMa);
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

unint64_t sub_26C0050B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B60, &qword_26C02A198);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E848, &qword_26C02A1A0);
    v7 = sub_26C00ADAC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_26BE2E1F0(v9, v5, &qword_280460B60, &qword_26C02A198);
      v11 = *v5;
      result = sub_26BEBB208(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for MLS.KeyAndNonce(0);
      result = sub_26BF97370(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for MLS.KeyAndNonce);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_26C00528C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B88, &unk_26C02A1F0);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;
      sub_26BE00608(v6, v8);
      sub_26BE00608(v7, v9);
      result = sub_26BEBB504(v5, v6, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v8;
      v13 = (v3[7] + 16 * result);
      *v13 = v7;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_26C0053B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D0, &qword_26C012578);
  v3 = sub_26C00ADAC();

  v4 = *(a1 + 208);
  v48 = *(a1 + 192);
  v49 = v4;
  v50 = *(a1 + 224);
  v51 = *(a1 + 240);
  v5 = *(a1 + 144);
  v44 = *(a1 + 128);
  v45 = v5;
  v6 = *(a1 + 176);
  v46 = *(a1 + 160);
  v47 = v6;
  v7 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v7;
  v8 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v8;
  v9 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v9;
  v11 = *(&v38 + 1);
  v10 = v38;
  sub_26BE2E1F0(&v38, v37, &qword_280460B78, &unk_26C02A1D0);
  result = sub_26BEBE840(v10, v11);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = (a1 + 248);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v15 = (v3[6] + 16 * result);
    *v15 = v10;
    v15[1] = v11;
    v16 = v3[7] + 200 * result;
    *v16 = v39;
    v17 = v40;
    v18 = v41;
    v19 = v43;
    *(v16 + 48) = v42;
    *(v16 + 64) = v19;
    *(v16 + 16) = v17;
    *(v16 + 32) = v18;
    v20 = v44;
    v21 = v45;
    v22 = v47;
    *(v16 + 112) = v46;
    *(v16 + 128) = v22;
    *(v16 + 80) = v20;
    *(v16 + 96) = v21;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    *(v16 + 192) = v51;
    *(v16 + 160) = v24;
    *(v16 + 176) = v25;
    *(v16 + 144) = v23;
    v26 = v3[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v3[2] = v28;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v29 = (v14 + 216);
    v30 = v14[11];
    v48 = v14[10];
    v49 = v30;
    v50 = v14[12];
    v51 = *(v14 + 208);
    v31 = v14[7];
    v44 = v14[6];
    v45 = v31;
    v32 = v14[9];
    v46 = v14[8];
    v47 = v32;
    v33 = v14[3];
    v40 = v14[2];
    v41 = v33;
    v34 = v14[5];
    v42 = v14[4];
    v43 = v34;
    v35 = v14[1];
    v38 = *v14;
    v39 = v35;
    v11 = *(&v38 + 1);
    v10 = v38;
    sub_26BE2E1F0(&v38, v37, &qword_280460B78, &unk_26C02A1D0);
    result = sub_26BEBE840(v10, v11);
    v14 = v29;
    if (v36)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C0055D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E818, &unk_26C0124C0);
    v3 = sub_26C00ADAC();
    v4 = a1 + 32;

    while (1)
    {
      sub_26BE2E1F0(v4, &v13, &qword_28045E940, &unk_26C014270);
      v5 = v13;
      v6 = v14;
      result = sub_26BEBB618(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26BE5B0F0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_26C005704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E0, &qword_26C012488);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_26BE04890(v7, v8);
      result = sub_26BEBB618(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_26C00581C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E838, &qword_26C0124D8);
    v5 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      sub_26BE00608(v7, v8);
      sub_26BE00608(v9, v10);
      result = a2(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_26C005940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B70, &unk_26C02A1C0);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_26BE00608(v7, v8);
      result = sub_26BEBB618(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_26C005A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E878, &qword_26C012518);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26BEBB618(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_26C005B6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B50, &unk_26C02A170);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26BEBB618(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_26C005CC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_26C00ADAC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_26BEBB618(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_26C005DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E868, &qword_26C02A180);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_26BE00608(v7, v8);
      result = sub_26BEBB618(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_26C005EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_26C00ADAC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_26BEBB618(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_26C005FE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E880, &unk_26C012520);
    v3 = sub_26C00ADAC();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      sub_26BE00608(v7, v8);
      sub_26BE00608(v9, v10);
      sub_26BE00608(v11, v12);
      result = sub_26BEBB618(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v7;
      v16[1] = v8;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

uint64_t sub_26C00613C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460B48, &qword_26C02A168);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_26C004428();
  sub_26C00B0FC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10[15] = 0;
    sub_26BE3B018();
    sub_26C00AE3C();
    v7 = v11;
    v9 = v12;
    LOBYTE(v11) = 1;
    sub_26C00AE4C();
    (*(v4 + 8))(v6, v3);
    sub_26BE00608(v7, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_26BE00258(v7, v9);
  }

  return v7;
}

unint64_t sub_26C006340()
{
  result = qword_280460BA8;
  if (!qword_280460BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BA8);
  }

  return result;
}

unint64_t sub_26C006398()
{
  result = qword_280460BB0;
  if (!qword_280460BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BB0);
  }

  return result;
}

unint64_t sub_26C0063F0()
{
  result = qword_280460BB8;
  if (!qword_280460BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BB8);
  }

  return result;
}

uint64_t static MLS.Identity.DefaultIdentityProvider()@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for MLS.Identity.PermissiveIdentityProvider();
  result = swift_allocObject();
  a2[3] = v3;
  a2[4] = &protocol witness table for MLS.Identity.PermissiveIdentityProvider;
  *a2 = result;
  return result;
}

uint64_t MLS.Identity.Credential.description.getter()
{
  if ((*(v0 + 8) & 0x2000000000000000) == 0)
  {
    return 0x63697361622ELL;
  }

  MLS.Identity.Credential.telURI.getter();
  if (!v2)
  {
    goto LABEL_7;
  }

  if (!v2[2])
  {

LABEL_7:
    v3 = 0xE300000000000000;
    v4 = 7104878;
    goto LABEL_8;
  }

  v4 = v2[4];
  v3 = v2[5];

LABEL_8:
  MEMORY[0x26D699090](v4, v3);

  MEMORY[0x26D699090](93, 0xE100000000000000);
  return 0x3A4952556C65745BLL;
}

void sub_26C006590(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x2000000000000000) == 0)
  {
LABEL_10:
    *a2 = v2;
    a2[1] = v3;
    return;
  }

  v4 = *(v2 + 16);
  if (!v4)
  {
    v11 = a2;
    sub_26BE0489C(*a1, v3);
    a2 = v11;
    v2 = MEMORY[0x277D84F90];
LABEL_9:
    v3 = 0x2000000000000000;
    goto LABEL_10;
  }

  v12 = a2;
  v13 = MEMORY[0x277D84F90];
  sub_26C00ACBC();
  v5 = 0;
  v6 = (v2 + 40);
  while (v5 < *(v2 + 16))
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    sub_26BE00608(v7, *v6);
    v9 = sub_26C0090DC();
    v10 = SecCertificateCreateWithData(0, v9);

    if (!v10)
    {
      goto LABEL_12;
    }

    ++v5;
    sub_26BE00258(v7, v8);
    sub_26C00AC8C();
    sub_26C00ACCC();
    sub_26C00ACDC();
    sub_26C00AC9C();
    v6 += 2;
    if (v4 == v5)
    {
      sub_26BE0489C(v2, v3);
      v2 = v13;
      a2 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

char *MLS.Identity.Credential.serializedRepresentation.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    sub_26BE00608(*v0, v0[1]);
LABEL_20:
    MLS.Credential.rawValue.getter();
    v24 = v23;
    sub_26BE0489C(v2, v1);
    return v24;
  }

  if (v2 >> 62)
  {
    v3 = sub_26C00AB8C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v2 = MEMORY[0x277D84F90];
LABEL_19:
    v1 = 0x2000000000000000;
    goto LABEL_20;
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_26BECB894(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x26D6996F0](v5, v2);
        v7 = SecCertificateCopyData(v6);
        v8 = sub_26C00910C();
        v10 = v9;

        swift_unknownObjectRelease();
        v12 = *(v25 + 16);
        v11 = *(v25 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_26BECB894((v11 > 1), v12 + 1, 1);
        }

        ++v5;
        *(v25 + 16) = v12 + 1;
        v13 = v25 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v3 != v5);
    }

    else
    {
      v14 = (v2 + 32);
      do
      {
        v15 = *v14;
        v16 = SecCertificateCopyData(v15);
        v17 = sub_26C00910C();
        v19 = v18;

        v21 = *(v25 + 16);
        v20 = *(v25 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_26BECB894((v20 > 1), v21 + 1, 1);
        }

        *(v25 + 16) = v21 + 1;
        v22 = v25 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        ++v14;
        --v3;
      }

      while (v3);
    }

    v2 = v25;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void MLS.Identity.Credential.init(serializedCredential:)(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26BE00608(a1, a2);
  MLS.Credential.init(rawValue:)(a1, a2, &v8);
  if (v3)
  {
    sub_26BE00258(a1, a2);
  }

  else
  {
    v7 = v8;
    sub_26C006590(&v7, &v8);
    sub_26BE00258(a1, a2);
    *a3 = v8;
  }
}

void sub_26C006990()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    sub_26BE00608(v1, v2);
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D6996F0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = SecCertificateCopyKey(v3);
  if (v5)
  {
    v6 = v5;
    v7 = SecKeyCopyExternalRepresentation(v5, 0);
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_26C0090FC();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t MLS.Identity.SigningIdentity.description.getter()
{
  v1 = v0;
  sub_26C00AC1C();

  strcpy(v22, "[credential: ");
  HIWORD(v22[1]) = -4864;
  v2 = MLS.Identity.Credential.description.getter();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](0x79656B627570202CLL, 0xEA0000000000203ALL);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v5 = (*(*(v3 + 8) + 16))(v4);
  v7 = v6;
  sub_26BF87240(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v8 = sub_26C00A3EC();
  v10 = v9;
  sub_26BE00258(v5, v7);

  v11 = sub_26BE411D0(16, v8, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x26D698FE0](v11, v13, v15, v17);
  v20 = v19;

  MEMORY[0x26D699090](v18, v20);

  MEMORY[0x26D699090](93, 0xE100000000000000);
  return v22[0];
}

void static MLS.Identity.findPriorAppearance(groupInfo:credential:ratchetTree:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X8>)
{
  v47 = a4;
  v8 = type metadata accessor for MLS.GroupInfo(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = a2[1];
  v13 = *a3;
  if (qword_28045E1D0 != -1)
  {
    swift_once();
  }

  v14 = sub_26C009A5C();
  __swift_project_value_buffer(v14, qword_280479320);
  sub_26C008A70(a1, v10, type metadata accessor for MLS.GroupInfo);
  sub_26BE04890(v12, v11);
  v15 = sub_26C009A3C();
  v16 = sub_26C00AA1C();
  sub_26BE0489C(v12, v11);
  v17 = os_log_type_enabled(v15, v16);
  v48 = v11;
  v49 = v12;
  if (v17)
  {
    v18 = v11;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = a1;
    v21 = v20;
    v54 = v20;
    *v19 = 136315394;
    v51 = v12;
    *&v52 = v18;
    v22 = MLS.Identity.Credential.description.getter();
    v24 = sub_26BE29740(v22, v23, &v54);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = MLS.GroupInfo.description.getter();
    v27 = v26;
    sub_26C008AD8(v10, type metadata accessor for MLS.GroupInfo);
    v28 = sub_26BE29740(v25, v27, &v54);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_26BDFE000, v15, v16, "Finding prior appearance for credential %s in group %s", v19, 0x16u);
    swift_arrayDestroy();
    v29 = v21;
    a1 = v46;
    MEMORY[0x26D69A4E0](v29, -1, -1);
    MEMORY[0x26D69A4E0](v19, -1, -1);

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {

    sub_26C008AD8(v10, type metadata accessor for MLS.GroupInfo);
    if (v13)
    {
LABEL_5:

LABEL_6:
      v50 = *a1;
      v54 = v13;
      MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v50, &v54, &v51);
      if (!v4)
      {
        v30 = v51;
        v31 = v52;
        v32 = DWORD2(v52);
        v33 = v53;
        v34 = swift_allocObject();
        *(v34 + 16) = 0;
        *(v34 + 20) = 1;
        LOWORD(v51) = v30;
        *&v52 = v31;
        DWORD2(v52) = v32;
        v53 = v33;
        v36 = v48;
        v35 = v49;
        sub_26BE04890(v49, v48);

        sub_26BE5AB10(&v51, v35, v36, v34);

        swift_beginAccess();
        v42 = *(v34 + 20);
        v43 = v47;
        *v47 = *(v34 + 16);
        *(v43 + 4) = v42;
      }

      return;
    }
  }

  v37 = *(a1 + 72);
  v38 = (v37 + 32);
  v39 = *(v37 + 16) + 1;
  while (--v39)
  {
    v40 = v38 + 12;
    v41 = *v38;
    v38 += 12;
    if (v41 == 2)
    {
      LOWORD(v51) = 2;
      v52 = *(v40 - 1);
      sub_26BEDFEB0(&v51, &v54);
      if (v4)
      {

        return;
      }

      v13 = v54;
      if (v54)
      {

        goto LABEL_6;
      }

      break;
    }
  }

  sub_26BE01654();
  swift_allocError();
  *v44 = 14;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  *(v44 + 40) = 0u;
  *(v44 + 56) = 0u;
  *(v44 + 72) = 0u;
  *(v44 + 88) = 0u;
  *(v44 + 104) = 0;
  *(v44 + 112) = 23;
  swift_willThrow();
}

uint64_t MLS.Identity.CredentialType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t MLS.Identity.CredentialType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void MLS.Identity.Credential.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if ((v1[1] & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);

    sub_26C0077E8(a1, v3);
  }

  else
  {
    MEMORY[0x26D699B20](0);

    sub_26C00911C();
  }
}

uint64_t MLS.Identity.Credential.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);
    sub_26C0077E8(v4, v1);
  }

  else
  {
    MEMORY[0x26D699B20](0);
    sub_26C00911C();
  }

  return sub_26C00B0CC();
}

uint64_t sub_26C00722C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C00B05C();
  if ((v2 & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);
    sub_26C0077E8(v4, v1);
  }

  else
  {
    MEMORY[0x26D699B20](0);
    sub_26C00911C();
  }

  return sub_26C00B0CC();
}

void sub_26C0072A8(uint64_t a1)
{
  v3 = *v1;
  if ((v1[1] & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);

    sub_26C0077E8(a1, v3);
  }

  else
  {
    MEMORY[0x26D699B20](0);

    sub_26C00911C();
  }
}

uint64_t sub_26C007334(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26C00B05C();
  if ((v3 & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);
    sub_26C0077E8(v5, v2);
  }

  else
  {
    MEMORY[0x26D699B20](0);
    sub_26C00911C();
  }

  return sub_26C00B0CC();
}

uint64_t sub_26C0073C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26C009A5C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26C009A4C();
}

void MLS.Identity.SigningIdentity.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((v1[1] & 0x2000000000000000) != 0)
  {
    MEMORY[0x26D699B20](1);
    sub_26C0077E8(a1, v4);
  }

  else
  {
    MEMORY[0x26D699B20](0);
    sub_26C00911C();
  }

  v6 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  (*(*(v5 + 8) + 24))(v12, v6);

  sub_26C00B08C();
  v8 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  v9 = (*(*(v7 + 8) + 16))(v8);
  v11 = v10;
  sub_26C00911C();

  sub_26BE00258(v9, v11);
}

void MLS.Identity.SigningIdentity.credential.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_26BE04890(v2, v3);
}

void MLS.Identity.SigningIdentity.credential.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE0489C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t MLS.Identity.SigningIdentity.signaturePublicKey.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_26BE2E410(a1, v1 + 16);
}

uint64_t MLS.Identity.SigningIdentity.hashValue.getter()
{
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26C007684()
{
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26C0076C8(uint64_t a1)
{
  sub_26C00B05C();
  MLS.Identity.SigningIdentity.hash(into:)(v2);
  return sub_26C00B0CC();
}

void (*sub_26C007760(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6996F0](a2, a3);
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
    return sub_26C0077E0;
  }

  __break(1u);
  return result;
}

void sub_26C0077E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_26C00AB8C();
    MEMORY[0x26D699B20](v8);
    v3 = sub_26C00AB8C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x26D699B20](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      MEMORY[0x26D6996F0](v4++, a2);
      type metadata accessor for SecCertificate(0);
      sub_26C008B38(&qword_28045FB08, type metadata accessor for SecCertificate, &unk_26C00BCF0);
      sub_26C0092BC();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v5 = (a2 + 32);
    type metadata accessor for SecCertificate(0);
    sub_26C008B38(&qword_28045FB08, type metadata accessor for SecCertificate, &unk_26C00BCF0);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_26C0092BC();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_26C007978(uint64_t a1, uint64_t a2)
{
  v3 = sub_26C0094DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v35 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = _s21RCSParticipantKeyRollVMa(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x26D699B20](v15);
  if (v15)
  {
    v17 = *(type metadata accessor for MLS.AlgorithmIdentifier(0) + 20);
    v18 = *(v11 + 24);
    v32 = *(v11 + 20);
    v38 = &v14[v18];
    v39 = v17;
    v19 = *(type metadata accessor for MLS.SubjectPublicKeyInfo(0) + 20);
    v20 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v37 = (v4 + 48);
    v30 = *(v12 + 72);
    v31 = v19;
    v28 = (v4 + 8);
    v29 = (v4 + 32);
    v33 = v10;
    v34 = v3;
    v40 = v14;
    do
    {
      sub_26C008A70(v20, v14, _s21RCSParticipantKeyRollVMa);
      sub_26C00947C();
      sub_26C008B38(&qword_28045F0C0, MEMORY[0x277D6A958], MEMORY[0x277D6A960]);
      sub_26C00A3CC();
      sub_26BEE2A7C(&v14[v39], v10);
      v21 = *v37;
      if ((*v37)(v10, 1, v3) == 1)
      {
        sub_26C00B07C();
      }

      else
      {
        v22 = v36;
        (*v29)(v36, v10, v3);
        sub_26C00B07C();
        sub_26C008B38(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
        sub_26C00A3CC();
        (*v28)(v22, v3);
      }

      sub_26C00959C();
      sub_26C008B38(&qword_28045F0D0, MEMORY[0x277D6A9E0], MEMORY[0x277D6A9E8]);
      sub_26C00A3CC();
      v23 = v38;
      sub_26C00A3CC();
      v24 = &v23[v39];
      v25 = v35;
      sub_26BEE2A7C(v24, v35);
      if (v21(v25, 1, v3) == 1)
      {
        sub_26C00B07C();
      }

      else
      {
        v26 = v36;
        (*v29)(v36, v25, v3);
        sub_26C00B07C();
        sub_26C008B38(&qword_28045F0C8, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
        sub_26C00A3CC();
        (*v28)(v26, v3);
      }

      sub_26C00A3CC();
      v14 = v40;
      result = sub_26C008AD8(v40, _s21RCSParticipantKeyRollVMa);
      v20 += v30;
      --v15;
      v10 = v33;
      v3 = v34;
    }

    while (v15);
  }

  return result;
}

uint64_t _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      sub_26BE04890(*a2, a2[1]);
      sub_26BE04890(v5, v4);
      sub_26BE04890(v7, v6);
      sub_26BE04890(v5, v4);
      v8 = sub_26BFB0104(v5, v7);
      goto LABEL_7;
    }

LABEL_5:
    sub_26BE04890(*a2, a2[1]);
    sub_26BE04890(v5, v4);
    sub_26BE0489C(v5, v4);
    sub_26BE0489C(v7, v6);
    return 0;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_5;
  }

  sub_26BE04890(*a2, a2[1]);
  sub_26BE04890(v5, v4);
  sub_26BE04890(v7, v6);
  sub_26BE04890(v5, v4);
  v8 = sub_26BE02DEC(v5, v4, v7, v6);
LABEL_7:
  v9 = v8;
  sub_26BE0489C(v5, v4);
  sub_26BE0489C(v7, v6);
  sub_26BE0489C(v7, v6);
  sub_26BE0489C(v5, v4);
  if (v9)
  {
    v11 = a1[5];
    v10 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v11);
    (*(*(v10 + 8) + 24))(v27, v11);
    v12 = LOBYTE(v27[0]);

    v14 = a2[5];
    v13 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v14);
    (*(*(v13 + 8) + 24))(v26, v14);
    LODWORD(v13) = LOBYTE(v26[0]);

    if (v12 == v13)
    {
      v17 = a1[5];
      v16 = a1[6];
      __swift_project_boxed_opaque_existential_1(a1 + 2, v17);
      v18 = (*(*(v16 + 8) + 16))(v17);
      v20 = v19;
      v22 = a2[5];
      v21 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v22);
      v23 = (*(*(v21 + 8) + 16))(v22);
      v25 = v24;
      LOBYTE(v22) = sub_26BE02DEC(v18, v20, v23, v24);
      sub_26BE00258(v23, v25);
      sub_26BE00258(v18, v20);
      return v22 & 1;
    }
  }

  return 0;
}

uint64_t _s8SwiftMLS0B0O8IdentityO10CredentialO2eeoiySbAG_AGtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((v3 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_26BE04890(*a2, a2[1]);
      sub_26BE04890(v2, v3);
      v6 = sub_26BFB0104(v2, v4);
      goto LABEL_7;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    sub_26BE04890(*a2, a2[1]);
    sub_26BE04890(v2, v3);
    v6 = sub_26BE02DEC(v2, v3, v4, v5);
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  sub_26BE04890(*a2, a2[1]);
  sub_26BE04890(v2, v3);
  v7 = 0;
LABEL_8:
  sub_26BE0489C(v2, v3);
  sub_26BE0489C(v4, v5);
  return v7 & 1;
}

void sub_26C0081F4(int *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  if ((a4 & 0x2000000000000000) == 0)
  {
    sub_26BE04890(*(a2 + 32), *(a2 + 40));
    if ((v10 & 0x2000000000000000) == 0)
    {
      sub_26BE04890(v11, v10);
      sub_26BE04890(a3, a4);
      if (sub_26BE02DEC(a3, a4, v11, v10))
      {
        swift_beginAccess();
        if (*(a5 + 20) == 1)
        {
          v12 = v11;
          v13 = v10;
LABEL_6:
          sub_26BE0489C(v12, v13);
          sub_26BE0489C(a3, a4);
          sub_26BE0489C(v11, v10);
          swift_beginAccess();
          *(a5 + 16) = v9;
          *(a5 + 20) = 0;
          return;
        }

        sub_26BE01654();
        swift_allocError();
        *v23 = 36;
        *(v23 + 8) = 0u;
        *(v23 + 24) = 0u;
        *(v23 + 40) = 0u;
        *(v23 + 56) = 0u;
        *(v23 + 72) = 0u;
        *(v23 + 88) = 0u;
        *(v23 + 104) = 0;
        *(v23 + 112) = 23;
        swift_willThrow();
      }

      v22 = v11;
      v21 = v10;
      goto LABEL_46;
    }

    goto LABEL_9;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v51 = *(a2 + 32);
    v52 = v10;
    sub_26BE04890(v11, v10);
    sub_26BE04890(v11, v10);
    sub_26BE04890(a3, a4);
    sub_26C006590(&v51, &v53);
    if (v5)
    {
      goto LABEL_47;
    }

    v14 = v54;
    v50 = v53;
    v53 = a3;
    v54 = a4;
    MLS.Identity.Credential.telURI.getter();
    if (!v15)
    {
      goto LABEL_45;
    }

    v16 = *(v15 + 16);

    if (!v16)
    {
      goto LABEL_45;
    }

    v53 = a3;
    v54 = a4;
    MLS.Identity.Credential.telURI.getter();
    v17 = v14;
    v19 = v18;
    v51 = v50;
    v52 = v17;
    v49 = v17;
    MLS.Identity.Credential.telURI.getter();
    if (v19)
    {
      if (v20)
      {
        v47 = sub_26BFB2508(v19, v20);

        v21 = v49;
        if ((v47 & 1) == 0)
        {
          v22 = v50;
LABEL_46:
          sub_26BE0489C(v22, v21);
          goto LABEL_47;
        }

LABEL_20:
        if (qword_28045E1D0 != -1)
        {
          swift_once();
        }

        v24 = sub_26C009A5C();
        __swift_project_value_buffer(v24, qword_280479320);

        v25 = sub_26C009A3C();
        v26 = sub_26C00AA1C();
        sub_26BE0489C(a3, a4);
        v43 = v26;
        if (!os_log_type_enabled(v25, v26))
        {

          goto LABEL_31;
        }

        log = v25;
        v27 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v51 = v41;
        buf = v27;
        *v27 = 136315138;
        v53 = a3;
        v54 = a4;
        MLS.Identity.Credential.telURI.getter();
        if (v28)
        {
          if (v28[2])
          {
            v30 = v28[4];
            v29 = v28[5];

LABEL_30:
            v31 = sub_26BE29740(v30, v29, &v51);

            *(buf + 4) = v31;
            _os_log_impl(&dword_26BDFE000, log, v43, "Found prior appearance for tel URI %s", buf, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v41);
            MEMORY[0x26D69A4E0](v41, -1, -1);
            MEMORY[0x26D69A4E0](buf, -1, -1);

LABEL_31:
            v14 = v49;
            swift_beginAccess();
            if (*(a5 + 20) == 1)
            {
              v12 = v50;
              v13 = v49;
              goto LABEL_6;
            }

            sub_26BE04890(a3, a4);

            v32 = sub_26C009A3C();
            v33 = sub_26C00AA0C();
            sub_26BE0489C(a3, a4);
            if (!os_log_type_enabled(v32, v33))
            {

LABEL_44:
              sub_26BE01654();
              swift_allocError();
              *v40 = 36;
              *(v40 + 8) = 0u;
              *(v40 + 24) = 0u;
              *(v40 + 40) = 0u;
              *(v40 + 56) = 0u;
              *(v40 + 72) = 0u;
              *(v40 + 88) = 0u;
              *(v40 + 104) = 0;
              *(v40 + 112) = 23;
              swift_willThrow();
LABEL_45:
              v22 = v50;
              v21 = v14;
              goto LABEL_46;
            }

            loga = v33;
            v48 = v32;
            v34 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v55 = v44;
            *v34 = 136315650;
            v51 = a3;
            v52 = a4;
            MLS.Identity.Credential.telURI.getter();
            if (v35)
            {
              if (v35[2])
              {
                v37 = v35[4];
                v36 = v35[5];

LABEL_40:
                v38 = sub_26BE29740(v37, v36, &v55);

                *(v34 + 4) = v38;
                *(v34 + 12) = 1024;
                swift_beginAccess();
                if (*(a5 + 20))
                {
                  v39 = 0;
                }

                else
                {
                  v39 = *(a5 + 16);
                }

                *(v34 + 14) = v39;

                *(v34 + 18) = 1024;
                *(v34 + 20) = v9;
                _os_log_impl(&dword_26BDFE000, v48, loga, "Multiple prior appearances found for tel URI %s, first appearance at %u, second appearance at %u", v34, 0x18u);
                __swift_destroy_boxed_opaque_existential_1(v44);
                MEMORY[0x26D69A4E0](v44, -1, -1);
                MEMORY[0x26D69A4E0](v34, -1, -1);

                v14 = v49;
                goto LABEL_44;
              }
            }

            v36 = 0xE500000000000000;
            v37 = 0x3E6C696E3CLL;
            goto LABEL_40;
          }
        }

        v30 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_30;
      }
    }

    else if (!v20)
    {
      goto LABEL_20;
    }

    sub_26BE0489C(v50, v49);
    sub_26BE0489C(a3, a4);
    sub_26BE0489C(v11, v10);

    return;
  }

  sub_26BE04890(*(a2 + 32), *(a2 + 40));
LABEL_9:
  sub_26BE04890(a3, a4);
LABEL_47:
  sub_26BE0489C(a3, a4);
  sub_26BE0489C(v11, v10);
}

unint64_t sub_26C008860()
{
  result = qword_280460BC0;
  if (!qword_280460BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BC0);
  }

  return result;
}

unint64_t sub_26C0088B8()
{
  result = qword_280460BC8;
  if (!qword_280460BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BC8);
  }

  return result;
}

unint64_t sub_26C008910()
{
  result = qword_280460BD0;
  if (!qword_280460BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BD0);
  }

  return result;
}

uint64_t sub_26C008A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C008AD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C008B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MLS.SharedPathSecretResult.pathSecret.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

void MLS.SharedPathSecretResult.pathSecret.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_26C008C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C008CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26C008D48()
{
  result = qword_280460BD8;
  if (!qword_280460BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460BD8);
  }

  return result;
}