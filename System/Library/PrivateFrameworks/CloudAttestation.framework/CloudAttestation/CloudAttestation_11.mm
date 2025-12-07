uint64_t sub_22FF9293C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for Proto_SealedHashLedger(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Proto_SealedHash(0);
  v31 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v14 + v15, v3, &qword_27DAF26E8, &qword_22FFB7C60);
  v16 = *(v5 + 48);
  if (v16(v3, 1, v4) == 1)
  {
    *v7 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v3, 1, v4) != 1)
    {
      sub_22FEAEA34(v3, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF93C00(v3, v7, type metadata accessor for Proto_SealedHashLedger);
  }

  v17 = *v7;

  sub_22FF93C68(v7, type metadata accessor for Proto_SealedHashLedger);
  if (qword_281490918 != -1)
  {
    swift_once();
  }

  v18 = sub_22FFB0958();
  __swift_project_value_buffer(v18, qword_281490920);
  v19 = sub_22FFB0928();
  if (!*(v17 + 16))
  {

    goto LABEL_14;
  }

  v21 = sub_22FFA619C(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  sub_22FF93B98(*(v17 + 56) + *(v31 + 72) * v21, v11, type metadata accessor for Proto_SealedHash);

  sub_22FF93C00(v11, v13, type metadata accessor for Proto_SealedHash);
  v24 = *v13;
  v25 = v13[8];
  sub_22FF93C68(v13, type metadata accessor for Proto_SealedHash);
  if (v25 != 1)
  {
    return 0;
  }

  result = v24;
  if (v24)
  {
    if (v24 == 1)
    {
      v27 = sub_22FFB13C8();
      v28 = &qword_28148F198;
      v29 = MEMORY[0x277CC5540];
      v30 = MEMORY[0x277CC5538];
    }

    else
    {
      v27 = sub_22FFB13F8();
      v28 = &qword_28148F188;
      v29 = MEMORY[0x277CC5550];
      v30 = MEMORY[0x277CC5548];
    }

    sub_22FF74244(v28, v29, v30);
    return v27;
  }

  return result;
}

uint64_t sub_22FF92D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v5;
  v73 = a1;
  v74 = a2;
  v9 = type metadata accessor for SEP.SealedHash(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v16;
  v19 = *v4;
  v20 = *(*v4 + 16);
  if (v4[8] != 1 || a3 >> 60 == 15)
  {
    v68 = *v4;
    v22 = MEMORY[0x277D84F90];
    if (v20)
    {
      v62 = v15;
      v63 = v5;
      v64 = &v61 - v16;
      v65 = v12;
      v66 = v9;
      v67 = a4;
      v77 = MEMORY[0x277D84F90];
      v23 = v68;

      sub_22FECD9FC(0, v20, 0);
      v22 = v77;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v71 = AssociatedTypeWitness;
      v25 = *(AssociatedTypeWitness - 8);
      v70 = *(v25 + 64);
      v69 = (v25 + 8);
      v26 = (v23 + 40);
      do
      {
        v72 = &v61;
        v27 = *(v26 - 1);
        v28 = *v26;
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        v75 = v27;
        v76 = v28;
        sub_22FEA5608(v27, v28);
        sub_22FEA5608(v27, v28);
        sub_22FEB0E54();
        sub_22FFB1378();
        sub_22FEA55AC(v75, v76);
        v31 = v71;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v33 = sub_22FEC4190(v30, v31, *(AssociatedConformanceWitness + 32));
        v35 = v34;
        sub_22FEA55AC(v27, v28);
        AssociatedTypeWitness = (*v69)(v30, v31);
        v77 = v22;
        v37 = *(v22 + 16);
        v36 = *(v22 + 24);
        if (v37 >= v36 >> 1)
        {
          AssociatedTypeWitness = sub_22FECD9FC((v36 > 1), v37 + 1, 1);
          v22 = v77;
        }

        v26 += 3;
        *(v22 + 16) = v37 + 1;
        v38 = v22 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        --v20;
      }

      while (v20);

      v9 = v66;
      a4 = v67;
      v18 = v64;
      v12 = v65;
      v15 = v62;
      v6 = v63;
    }

    v55 = v15;
    result = sub_22FF5D114(v22, v15);
    if (!v6)
    {
      sub_22FF93C00(v55, v18, type metadata accessor for SEP.SealedHash);
LABEL_22:
      sub_22FF93C00(v18, v12, type metadata accessor for SEP.SealedHash);
      return sub_22FF93C00(&v12[*(v9 + 20)], a4, type metadata accessor for SEP.SealedHash.Value);
    }
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
    if (v20)
    {
      v62 = v17;
      v63 = v5;
      v64 = &v61 - v16;
      v65 = v12;
      v66 = v9;
      v67 = a4;
      v77 = MEMORY[0x277D84F90];

      sub_22FECD9FC(0, v20, 0);
      v39 = v77;
      v40 = swift_getAssociatedTypeWitness();
      v71 = v40;
      v41 = *(v40 - 8);
      v70 = *(v41 + 64);
      v68 = v19;
      v69 = (v41 + 8);
      v42 = (v19 + 40);
      do
      {
        v72 = &v61;
        v44 = *(v42 - 1);
        v43 = *v42;
        MEMORY[0x28223BE20](v40);
        v46 = &v61 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
        v75 = v44;
        v76 = v43;
        sub_22FEA5608(v44, v43);
        sub_22FEA5608(v44, v43);
        sub_22FEB0E54();
        sub_22FFB1378();
        sub_22FEA55AC(v75, v76);
        v47 = v71;
        v48 = swift_getAssociatedConformanceWitness();
        v49 = sub_22FEC4190(v46, v47, *(v48 + 32));
        v51 = v50;
        sub_22FEA55AC(v44, v43);
        v40 = (*v69)(v46, v47);
        v77 = v39;
        v53 = *(v39 + 16);
        v52 = *(v39 + 24);
        if (v53 >= v52 >> 1)
        {
          v40 = sub_22FECD9FC((v52 > 1), v53 + 1, 1);
          v39 = v77;
        }

        v42 += 3;
        *(v39 + 16) = v53 + 1;
        v54 = v39 + 16 * v53;
        *(v54 + 32) = v49;
        *(v54 + 40) = v51;
        --v20;
      }

      while (v20);

      v9 = v66;
      a4 = v67;
      v18 = v64;
      v12 = v65;
      v17 = v62;
      v6 = v63;
    }

    v57 = v17;
    result = sub_22FF5D114(v39, v17);
    if (!v6)
    {
      sub_22FF93C00(v57, v18, type metadata accessor for SEP.SealedHash);
      v58 = sub_22FF9F990();
      v60 = v59;
      LOBYTE(v75) = 6;
      SEP.SealedHash.ratchet(digest:flags:)(v58, v59, &v75);
      sub_22FEA55AC(v58, v60);
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_22FF933EC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-v6];
  v8 = type metadata accessor for Proto_SealedHashLedger(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v13 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v12 + v13, v7, &qword_27DAF26E8, &qword_22FFB7C60);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    *v11 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v14(v7, 1, v8) != 1)
    {
      sub_22FEAEA34(v7, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF93C00(v7, v11, type metadata accessor for Proto_SealedHashLedger);
  }

  v15 = *v11;

  sub_22FF93C68(v11, type metadata accessor for Proto_SealedHashLedger);
  if (qword_281490918 != -1)
  {
    swift_once();
  }

  v16 = sub_22FFB0958();
  v17 = __swift_project_value_buffer(v16, qword_281490920);
  v18 = sub_22FFB0928();
  if (*(v15 + 16))
  {
    sub_22FFA619C(v18, v19);
    v21 = v20;

    if (v21)
    {
      return sub_22FF91BD0(v17, v24 & 1, a2);
    }
  }

  else
  {
  }

  *a2 = 0;
  *(a2 + 8) = -1;
  return result;
}

uint64_t sub_22FF936C4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];

    sub_22FECD998(0, v2, 0);
    v3 = v12;
    v4 = (v1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      sub_22FEA5608(v5, v6);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_22FECD998((v8 > 1), v9 + 1, 1);
      }

      v4 += 24;
      *(v12 + 16) = v9 + 1;
      v10 = v12 + 24 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v6;
      *(v10 + 48) = v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t static Cryptex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_22FEA5608(*a1, v3);
  sub_22FEA5608(v5, v6);
  v8 = sub_22FEC3DC8(v2, v3, v5, v6);
  sub_22FEA55AC(v5, v6);
  sub_22FEA55AC(v2, v3);
  return v8 & (v4 == v7);
}

uint64_t sub_22FF93858(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_22FEA5608(*a1, v3);
  sub_22FEA5608(v5, v6);
  v8 = sub_22FEC3DC8(v2, v3, v5, v6);
  sub_22FEA55AC(v5, v6);
  sub_22FEA55AC(v2, v3);
  return v8 & (v4 == v7);
}

uint64_t sub_22FF938FC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(&a1[*(v7 + 24)], v6, &qword_27DAF2130, &unk_22FFB5C80);
  v8 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_22FEAEA34(v6, &qword_27DAF2130, &unk_22FFB5C80);
LABEL_5:
    v11 = (*a1 >> 2) & 1;
    goto LABEL_6;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_22FF93C68(v6, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_5;
  }

  LOBYTE(v11) = 1;
LABEL_6:
  *a2 = v11;
  return result;
}

uint64_t _s16CloudAttestation9CryptexesO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  v5 = sub_22FEE76FC(v4, v2);

  return v5 & 1;
}

uint64_t sub_22FF93AF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_22FF93B38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_22FF93B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF93C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF93C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DarwinInit.SecureConfigSecurityPolicy.rawValue.getter()
{
  v1 = 1701736302;
  if (*v0)
  {
    v1 = 0x7972726163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x72656D6F74737563;
  }
}

char *DarwinInit.ensembleCertificateFingerprints.getter()
{
  v1 = *v0;
  if (*(v1 + 16))
  {
    v2 = sub_22FFA619C(0x632D657275636573, 0xED00006769666E6FLL);
    if (v3)
    {
      sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3950, &unk_22FFBFBC8);
      if (swift_dynamicCast())
      {
        if (*(v26 + 16) && (v4 = sub_22FFA619C(0xD00000000000002ALL, 0x800000022FFCB720), (v5 & 1) != 0))
        {
          sub_22FEBF2A4(*(v26 + 56) + 32 * v4, v27);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
          if (swift_dynamicCast())
          {
            v6 = 0;
            v7 = *(v26 + 16);
            v8 = MEMORY[0x277D84F90];
LABEL_8:
            v9 = v26 + 40 + 16 * v6;
            while (v7 != v6)
            {
              if (v6 >= *(v26 + 16))
              {
                __break(1u);
LABEL_26:
                swift_once();
                goto LABEL_22;
              }

              ++v6;
              v10 = v9 + 16;

              v11 = sub_22FFB0728();
              v13 = v12;

              v9 = v10;
              if (v13 >> 60 != 15)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v8 = sub_22FEC334C(0, *(v8 + 2) + 1, 1, v8);
                }

                v15 = *(v8 + 2);
                v14 = *(v8 + 3);
                v16 = v15 + 1;
                if (v15 >= v14 >> 1)
                {
                  v18 = sub_22FEC334C((v14 > 1), v15 + 1, 1, v8);
                  v16 = v15 + 1;
                  v8 = v18;
                }

                *(v8 + 2) = v16;
                v17 = &v8[16 * v15];
                *(v17 + 4) = v11;
                *(v17 + 5) = v13;
                goto LABEL_8;
              }
            }

            v20 = *(v8 + 2);
            v21 = *(v26 + 16);

            if (v20 == v21)
            {
              return v8;
            }

            if (qword_27DAF14B0 != -1)
            {
              goto LABEL_26;
            }

LABEL_22:
            v22 = sub_22FFB12F8();
            __swift_project_value_buffer(v22, qword_27DB05AE0);
            v23 = sub_22FFB12D8();
            v24 = sub_22FFB1838();
            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_22FE99000, v23, v24, "Invalid formatted data in com.apple.CloudAttestation.ensembleMembers", v25, 2u);
              MEMORY[0x23190EFF0](v25, -1, -1);
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t DarwinInit.secureConfigRoutingHint.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_22FFA619C(0x632D657275636573, 0xED00006769666E6FLL);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3950, &unk_22FFBFBC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v7 + 16) || (v4 = sub_22FFA619C(0xD000000000000026, 0x800000022FFCB750), (v5 & 1) == 0))
  {

    return 0;
  }

  sub_22FEBF2A4(*(v7 + 56) + 32 * v4, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t DarwinInit.cfPrefsRoutingHint.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_22FFA619C(0x6E65726566657270, 0xEB00000000736563);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3958, &qword_22FFBFBD8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v5 = *(v16 + 16);
  if (!v5)
  {
LABEL_23:

    return 0;
  }

  v6 = 0;
  while (1)
  {
    if (v6 >= *(v16 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = *(v16 + 8 * v6 + 32);
    if (*(v7 + 16))
    {
      break;
    }

LABEL_7:
    if (v5 == ++v6)
    {
      goto LABEL_23;
    }
  }

  v8 = sub_22FFA619C(0x746163696C707061, 0xEE0064695F6E6F69);
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_22FEBF2A4(*(v7 + 56) + 32 * v8, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v16 != 0xD000000000000011 || 0x800000022FFC9FC0 != v17)
  {
    v10 = sub_22FFB1BC8();

    if (v10)
    {
      goto LABEL_16;
    }

LABEL_6:

    goto LABEL_7;
  }

LABEL_16:
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v11 = sub_22FFA619C(7955819, 0xE300000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_22FEBF2A4(*(v7 + 56) + 32 * v11, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v16 != 0x44496C6C6563 || v17 != 0xE600000000000000)
  {
    v13 = sub_22FFB1BC8();

    if (v13)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

LABEL_26:

  if (!*(v7 + 16))
  {
    goto LABEL_23;
  }

  v14 = sub_22FFA619C(0x65756C6176, 0xE500000000000000);
  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_22FEBF2A4(*(v7 + 56) + 32 * v14, v18);

  if (swift_dynamicCast())
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FF944DC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05AE0);
  __swift_project_value_buffer(v0, qword_27DB05AE0);
  return sub_22FFB12E8();
}

uint64_t DarwinInit.routingHint.getter()
{
  result = DarwinInit.secureConfigRoutingHint.getter();
  if (!v1)
  {
    return DarwinInit.cfPrefsRoutingHint.getter();
  }

  return result;
}

uint64_t DarwinInit.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  if (!*(v5 + 16) || (v8 = sub_22FFA619C(0x7079745F656D696DLL, 0xE900000000000065), (v9 & 1) == 0) || ((v10 = (*(v5 + 56) + 16 * v8), *v10 == 0xD000000000000010) ? (v11 = 0x800000022FFC9E50 == v10[1]) : (v11 = 0), !v11 && (sub_22FFB1BC8() & 1) == 0))
  {
    sub_22FEA55AC(v4, v3);

    sub_22FEA55AC(v6, v7);
    sub_22FEDA044();
    swift_allocError();
    *v23 = xmmword_22FFB3CC0;
LABEL_21:
    *(v23 + 16) = 2;
    return swift_willThrow();
  }

  if (!*(v5 + 16) || (v12 = sub_22FFA619C(1701667182, 0xE400000000000000), (v13 & 1) == 0) || ((v14 = (*(v5 + 56) + 16 * v12), *v14 == 0x692D6E6977726164) ? (v15 = v14[1] == 0xEB0000000074696ELL) : (v15 = 0), !v15 && (sub_22FFB1BC8() & 1) == 0))
  {
    sub_22FEA55AC(v4, v3);

    sub_22FEA55AC(v6, v7);
    sub_22FEDA044();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    goto LABEL_21;
  }

  v16 = objc_opt_self();
  v17 = sub_22FFB07B8();
  sub_22FEA55AC(v4, v3);

  sub_22FEA55AC(v6, v7);
  *&v33[0] = 0;
  v18 = [v16 JSONObjectWithData:v17 options:0 error:v33];

  v19 = *&v33[0];
  if (!v18)
  {
    v25 = v19;
    sub_22FFB0648();

    return swift_willThrow();
  }

  sub_22FFB18C8();
  swift_unknownObjectRelease();
  sub_22FEBF2A4(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3960, &unk_22FFBFBE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22FEDA044();
    swift_allocError();
    *v26 = xmmword_22FFB3CD0;
    *(v26 + 16) = 2;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v20 = v32[0];
  if (*(v32[0] + 16))
  {

    v21 = sub_22FFA619C(0xD000000000000016, 0x800000022FFCB780);
    if (v22)
    {
      sub_22FEBF2A4(*(v32[0] + 56) + 32 * v21, v33);

      goto LABEL_28;
    }
  }

  memset(v33, 0, sizeof(v33));
LABEL_28:
  sub_22FED6328(v33, v32);
  if (!v32[3])
  {
    sub_22FED62C0(v33);
    v27 = v34;
    goto LABEL_32;
  }

  sub_22FED6328(v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  sub_22FEC8B3C();
  if (swift_dynamicCast())
  {
    sub_22FED62C0(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);

    v27 = v31;
LABEL_32:
    __swift_destroy_boxed_opaque_existential_1(v27);
    LOBYTE(v28) = 0;
LABEL_33:
    result = sub_22FED62C0(v32);
    *a2 = v20;
    *(a2 + 8) = v28;
    return result;
  }

  if (swift_dynamicCast())
  {
    v28 = sub_22FFB1B28();

    if (v28 <= 3)
    {
      sub_22FED62C0(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_33;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_22FED62C0(v32);
  sub_22FEDA044();
  swift_allocError();
  *v29 = 0xD000000000000016;
  *(v29 + 8) = 0x800000022FFCB780;
  *(v29 + 16) = 1;
  swift_willThrow();
  sub_22FED62C0(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
}

CloudAttestation::DarwinInit::SecureConfigSecurityPolicy_optional __swiftcall DarwinInit.SecureConfigSecurityPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22FFB1B28();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FF94B34()
{
  sub_22FFB1CA8();
  sub_22FFB1548();

  return sub_22FFB1CF8();
}

uint64_t sub_22FF94BF8(uint64_t a1)
{
  sub_22FFB1548();
}

uint64_t sub_22FF94CA8()
{
  sub_22FFB1CA8();
  sub_22FFB1548();

  return sub_22FFB1CF8();
}

void sub_22FF94D74(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE800000000000000;
  if (*v1 != 2)
  {
    v4 = 0xED000079786F7250;
  }

  if (*v1)
  {
    v3 = 0x7972726163;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x72656D6F74737563;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_22FF94EB4(unint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_22FFB19B8();

    v8 = 0xD00000000000002DLL;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v8 = 0;
    sub_22FFB19B8();
    MEMORY[0x23190DD10](0xD00000000000003BLL, 0x800000022FFCB840);
LABEL_5:
    MEMORY[0x23190DD10](a1, a2);
    MEMORY[0x23190DD10](34, 0xE100000000000000);
    return v8;
  }

  if (a1 > 2)
  {
    v7 = 0xD000000000000037;
    if (!(a1 ^ 4 | a2))
    {
      v7 = 0xD000000000000027;
    }

    if (a1 ^ 3 | a2)
    {
      return v7;
    }

    else
    {
      return 0xD000000000000038;
    }
  }

  else
  {
    if (a1 ^ 1 | a2)
    {
      v6 = 0xD00000000000002ELL;
    }

    else
    {
      v6 = 0xD00000000000002ALL;
    }

    if (a1 | a2)
    {
      return v6;
    }

    else
    {
      return 0xD000000000000025;
    }
  }
}

unint64_t sub_22FF95098()
{
  result = qword_27DAF3968;
  if (!qword_27DAF3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3968);
  }

  return result;
}

unint64_t sub_22FF950F0()
{
  result = qword_27DAF3970;
  if (!qword_27DAF3970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF3978, &qword_22FFBFC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3970);
  }

  return result;
}

uint64_t sub_22FF95154(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22FF9519C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation10DarwinInitV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_22FF9522C()
{
  result = qword_27DAF3980;
  if (!qword_27DAF3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3980);
  }

  return result;
}

uint64_t sub_22FF95280(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_22FFB1488();
  CFProperty = IORegistryEntryCreateCFProperty(v2, v3, *MEMORY[0x277CBECE8], 0);

  if (!CFProperty)
  {
    goto LABEL_21;
  }

  if (!swift_dynamicCast())
  {
LABEL_20:
    LODWORD(CFProperty) = 0;
LABEL_21:
    v15 = 1;
    return CFProperty | (v15 << 32);
  }

  LODWORD(CFProperty) = v21;
  v5 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    v7 = *(v21 + 16);
    v6 = *(v21 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == 4)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(v21), v21))
    {
      if (HIDWORD(v21) - v21 == 4)
      {
        goto LABEL_10;
      }

LABEL_19:
      sub_22FEA55AC(v21, v22);
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (BYTE6(v22) != 4)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      sub_22FEA55AC(v21, v22);
      v15 = 0;
      return CFProperty | (v15 << 32);
    }

    if (v21 <= v21 >> 32)
    {
      v10 = sub_22FFB0588();
      if (!v10)
      {
LABEL_34:
        result = sub_22FFB05A8();
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v11 = v10;
      v12 = sub_22FFB05B8();
      if (!__OFSUB__(v21, v12))
      {
        v13 = (v21 - v12 + v11);
        result = sub_22FFB05A8();
        if (!v13)
        {
          goto LABEL_35;
        }

LABEL_26:
        v20 = *v13;
        sub_22FEA55AC(v21, v22);
        v15 = 0;
        LODWORD(CFProperty) = v20;
        return CFProperty | (v15 << 32);
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v16 = *(v21 + 16);
  v17 = sub_22FFB0588();
  if (!v17)
  {
LABEL_33:
    sub_22FFB05A8();
    __break(1u);
    goto LABEL_34;
  }

  v18 = v17;
  v19 = sub_22FFB05B8();
  if (__OFSUB__(v16, v19))
  {
    goto LABEL_31;
  }

  v13 = (v16 - v19 + v18);
  result = sub_22FFB05A8();
  if (v13)
  {
    goto LABEL_26;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_22FF95474(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_22FFB1488();
  CFProperty = IORegistryEntryCreateCFProperty(v2, v3, *MEMORY[0x277CBECE8], 0);

  if (!CFProperty || !swift_dynamicCast())
  {
    return 0;
  }

  v5 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_19;
    }

    v7 = *(v21 + 16);
    v6 = *(v21 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 == 8)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(v21), v21))
    {
      if (HIDWORD(v21) - v21 == 8)
      {
        goto LABEL_10;
      }

LABEL_19:
      sub_22FEA55AC(v21, v22);
      return 0;
    }

    goto LABEL_27;
  }

  if (BYTE6(v22) != 8)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      sub_22FEA55AC(v21, v22);
      return v21;
    }

    if (v21 <= v21 >> 32)
    {
      v10 = v21;
      v11 = sub_22FFB0588();
      if (!v11)
      {
LABEL_32:
        result = sub_22FFB05A8();
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v12 = v11;
      v13 = sub_22FFB05B8();
      if (!__OFSUB__(v21, v13))
      {
        v14 = (v21 - v13 + v12);
        result = sub_22FFB05A8();
        if (!v14)
        {
          goto LABEL_33;
        }

LABEL_24:
        v20 = *v14;
        sub_22FEA55AC(v10, v22);
        return v20;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v10 = v21;
  v16 = *(v21 + 16);
  v17 = sub_22FFB0588();
  if (!v17)
  {
LABEL_31:
    sub_22FFB05A8();
    __break(1u);
    goto LABEL_32;
  }

  v18 = v17;
  v19 = sub_22FFB05B8();
  if (__OFSUB__(v16, v19))
  {
    goto LABEL_29;
  }

  v14 = (v16 - v19 + v18);
  result = sub_22FFB05A8();
  if (v14)
  {
    goto LABEL_24;
  }

LABEL_34:
  __break(1u);
  return result;
}

void static DeviceMode.local.getter(uint64_t a1@<X8>)
{
  v2 = sub_22FEB1B20(0xD000000000000032, 0x800000022FFCB950);
  if (v2 == 2)
  {
    if (qword_27DAF14B8 != -1)
    {
      swift_once();
    }

    v3 = sub_22FFB12F8();
    __swift_project_value_buffer(v3, qword_27DB05AF8);
    v4 = sub_22FFB12D8();
    v5 = sub_22FFB1838();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_23;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "failed to read sysctl('security.mac.amfi.restricted_execution_mode_status')";
LABEL_22:
    _os_log_impl(&dword_22FE99000, v4, v5, v7, v6, 2u);
    MEMORY[0x23190EFF0](v6, -1, -1);
LABEL_23:

    v18 = 2;
    goto LABEL_24;
  }

  v8 = v2;
  v9 = sub_22FEB1B20(0xD000000000000027, 0x800000022FFCB990);
  if (v9 == 2)
  {
    if (qword_27DAF14B8 != -1)
    {
      swift_once();
    }

    v10 = sub_22FFB12F8();
    __swift_project_value_buffer(v10, qword_27DB05AF8);
    v4 = sub_22FFB12D8();
    v5 = sub_22FFB1838();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_23;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "failed to read sysctl('security.mac.amfi.developer_mode_status')";
    goto LABEL_22;
  }

  v11 = v9;
  type metadata accessor for IORegistryEntry();
  inited = swift_initStackObject();
  v13 = *MEMORY[0x277CD2898];
  v14 = sub_22FFB1488();
  v15 = IORegistryEntryCopyFromPath(v13, v14);

  *(inited + 16) = v15;
  if (!v15)
  {
    swift_setDeallocating();
    IOObjectRelease(0);
    goto LABEL_18;
  }

  v16 = sub_22FF95280(0xD000000000000013);
  swift_setDeallocating();
  IOObjectRelease(v15);
  if ((v16 & 0x100000000) != 0)
  {
LABEL_18:
    if (qword_27DAF14B8 != -1)
    {
      swift_once();
    }

    v19 = sub_22FFB12F8();
    __swift_project_value_buffer(v19, qword_27DB05AF8);
    v4 = sub_22FFB12D8();
    v5 = sub_22FFB1838();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_23;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "failed to read IODeviceTree:/product 'ephemeral-data-mode'";
    goto LABEL_22;
  }

  if (v11)
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v8 & 1 | ((v16 == 1) << 8) | v17;
LABEL_24:
  *a1 = v18;
  *(a1 + 2) = BYTE2(v18);
}

CloudAttestation::DeviceMode __swiftcall DeviceMode.init(restrictedExecution:ephemeralData:developer:)(Swift::Bool restrictedExecution, Swift::Bool ephemeralData, Swift::Bool developer)
{
  *v3 = restrictedExecution;
  v3[1] = ephemeralData;
  v3[2] = developer;
  result.restrictedExecution = restrictedExecution;
  return result;
}

uint64_t sub_22FF959AC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05AF8);
  __swift_project_value_buffer(v0, qword_27DB05AF8);
  return sub_22FFB12E8();
}

uint64_t DeviceMode.hash(into:)()
{
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  return sub_22FFB1CC8();
}

uint64_t DeviceMode.hashValue.getter()
{
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF95B38()
{
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  return sub_22FFB1CC8();
}

uint64_t sub_22FF95B84()
{
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  sub_22FFB1CC8();
  return sub_22FFB1CF8();
}

unint64_t sub_22FF95C2C()
{
  result = qword_27DAF3988;
  if (!qword_27DAF3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3988);
  }

  return result;
}

uint64_t PrivateCloudComputeFeatures.hashValue.getter()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

unint64_t sub_22FF95D30()
{
  result = qword_27DAF3990;
  if (!qword_27DAF3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3990);
  }

  return result;
}

char *sub_22FF95E4C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = a1(0);
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v26 - v9, v4, v8);
  sub_22FF9F948(a2, a3, a4);
  result = sub_22FFB1608();
  v12 = v27;
  v13 = v28;
  v14 = *(v27 + 2);
  v15 = MEMORY[0x277D84F90];
  if (v28 == v14)
  {
LABEL_2:

    v27 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
    sub_22FEBF78C(&qword_28148F130, &unk_27DAF3740, &unk_22FFB4290, MEMORY[0x277D83958]);
    v16 = sub_22FFB1458();

    return v16;
  }

  else
  {
    v26 = xmmword_22FFB2D10;
    v17 = v28;
    while ((v13 & 0x8000000000000000) == 0)
    {
      if (v17 >= *(v12 + 2))
      {
        goto LABEL_13;
      }

      v18 = v12[v17 + 32];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v19 = swift_allocObject();
      *(v19 + 16) = v26;
      *(v19 + 56) = MEMORY[0x277D84B78];
      *(v19 + 64) = MEMORY[0x277D84BC0];
      *(v19 + 32) = v18;
      v20 = sub_22FFB14D8();
      v22 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22FEC2E8C(0, *(v15 + 2) + 1, 1, v15);
        v15 = result;
      }

      v24 = *(v15 + 2);
      v23 = *(v15 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_22FEC2E8C((v23 > 1), v24 + 1, 1, v15);
        v15 = result;
      }

      ++v17;
      *(v15 + 2) = v24 + 1;
      v25 = &v15[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      if (v14 == v17)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_22FF960FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CA8, &qword_22FFC0150);
  v16[3] = v8;
  v16[4] = sub_22FEBF78C(&qword_28148F0B0, &qword_27DAF1CA8, &qword_22FFC0150, MEMORY[0x277CC9EE0]);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_22FF9E9E4((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

uint64_t sub_22FF96214(uint64_t a1, unint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = a1;
  v51 = a2;
  *&v46 = a1;
  *(&v46 + 1) = a2;
  sub_22FEA5608(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36D0, &qword_22FFBE480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C88, &unk_22FFC0140);
  if (swift_dynamicCast())
  {
    sub_22FE9B84C(v44, &v47);
    __swift_project_boxed_opaque_existential_1(&v47, v49);
    sub_22FFB0618();
    v44[0] = v46;
    __swift_destroy_boxed_opaque_existential_1(&v47);
    goto LABEL_61;
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_22FEAEA34(v44, &qword_27DAF1C90, &qword_22FFB3FF0);
  v2 = v51 >> 62;
  if ((v51 >> 62) > 1)
  {
    v3 = 0;
    v4 = 0;
    if (v2 == 2)
    {
      v3 = *(v50 + 16);
      v4 = *(v50 + 24);
    }
  }

  else
  {
    if (v2)
    {
      v3 = v50;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v50 >> 32;
    }

    else
    {
      v4 = BYTE6(v51);
    }
  }

  v5 = sub_22FF5B7EC(v3, v4, v50, v51);
  *&v44[0] = sub_22FF9F498(v5);
  *(&v44[0] + 1) = v6;
  MEMORY[0x28223BE20](*&v44[0]);
  v29[2] = &v50;
  sub_22FF5AF38(sub_22FF9F614, v29);
  v7 = v47;
  v8 = v48;
  v9 = *(&v44[0] + 1) >> 62;
  if ((*(&v44[0] + 1) >> 62) > 1)
  {
    if (v9 == 2)
    {
      v11 = *(*&v44[0] + 16);
      v10 = *(*&v44[0] + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (v12)
      {
        goto LABEL_73;
      }

      if (v49 != v13)
      {
        goto LABEL_22;
      }
    }

    else if (v49)
    {
      v14 = 0;
      goto LABEL_58;
    }

    goto LABEL_27;
  }

  if (v9)
  {
    if (__OFSUB__(DWORD1(v44[0]), v44[0]))
    {
      goto LABEL_74;
    }

    if (v49 != DWORD1(v44[0]) - LODWORD(v44[0]))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v49 == BYTE14(v44[0]))
  {
LABEL_27:
    LOBYTE(v15) = 0;
    v16 = *(&v47 + 1) >> 62;
    v42 = v47 >> 32;
    v43 = BYTE14(v47);
    *(&v47 + 7) = 0;
    *&v47 = 0;
    v41 = v7 >> 8;
    v40 = v7 >> 16;
    v39 = v7 >> 24;
    v38 = DWORD1(v7);
    v37 = v7 >> 40;
    v36 = WORD3(v7);
    v35 = BYTE7(v7);
    v34 = *(&v7 + 1) >> 8;
    v33 = *(&v7 + 1) >> 16;
    v32 = *(&v7 + 1) >> 24;
    v31 = HIDWORD(*(&v7 + 1));
    v30 = *(&v7 + 1) >> 40;
    while (1)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v17 = *(v7 + 16);
LABEL_33:
          if (v8 == v17)
          {
            goto LABEL_62;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v17 = v7;
        if (v16)
        {
          goto LABEL_33;
        }
      }

      if (!v8)
      {
LABEL_62:
        if (v15)
        {
          *&v46 = v47;
          *(&v46 + 6) = *(&v47 + 6);
          sub_22FFB0778();
        }

        goto LABEL_60;
      }

LABEL_36:
      v12 = __OFSUB__(v8--, 1);
      if (v12)
      {
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
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (v16 > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_75;
        }

        if (v8 < *(v7 + 16))
        {
          goto LABEL_66;
        }

        if (v8 >= *(v7 + 24))
        {
          goto LABEL_69;
        }

        v19 = sub_22FFB0588();
        if (!v19)
        {
          goto LABEL_77;
        }

        v20 = v19;
        v21 = sub_22FFB05B8();
        v22 = v8 - v21;
        if (__OFSUB__(v8, v21))
        {
          goto LABEL_71;
        }

        goto LABEL_52;
      }

      if (v16)
      {
        if (v8 < v7 || v8 >= v42)
        {
          goto LABEL_68;
        }

        v23 = sub_22FFB0588();
        if (!v23)
        {
          goto LABEL_76;
        }

        v20 = v23;
        v24 = sub_22FFB05B8();
        v22 = v8 - v24;
        if (__OFSUB__(v8, v24))
        {
          goto LABEL_70;
        }

LABEL_52:
        v18 = *(v20 + v22);
        goto LABEL_53;
      }

      if (v8 >= v43)
      {
        goto LABEL_67;
      }

      LOBYTE(v46) = v7;
      BYTE1(v46) = v41;
      BYTE2(v46) = v40;
      BYTE3(v46) = v39;
      BYTE4(v46) = v38;
      BYTE5(v46) = v37;
      BYTE6(v46) = v36;
      BYTE7(v46) = v35;
      BYTE8(v46) = BYTE8(v7);
      BYTE9(v46) = v34;
      BYTE10(v46) = v33;
      BYTE11(v46) = v32;
      BYTE12(v46) = v31;
      BYTE13(v46) = v30;
      v18 = *(&v46 + v8);
LABEL_53:
      *(&v47 + v15) = v18;
      v15 = v15 + 1;
      if ((v15 >> 8))
      {
        goto LABEL_65;
      }

      if (v15 == 14)
      {
        *&v46 = v47;
        *(&v46 + 6) = *(&v47 + 6);
        sub_22FFB0778();
        LOBYTE(v15) = 0;
      }
    }
  }

LABEL_22:
  if (v9 == 2)
  {
    v14 = *(*&v44[0] + 24);
  }

  else if (v9 == 1)
  {
    v14 = *&v44[0] >> 32;
  }

  else
  {
    v14 = BYTE14(v44[0]);
  }

LABEL_58:
  if (v14 < v49)
  {
    goto LABEL_72;
  }

  sub_22FFB0758();
LABEL_60:
  sub_22FEA55AC(v7, *(&v7 + 1));
LABEL_61:
  v25 = v44[0];
  v26 = v50;
  v27 = v51;
  sub_22FEA5608(*&v44[0], *(&v44[0] + 1));
  sub_22FEA55AC(v26, v27);
  sub_22FEA55AC(v25, *(&v25 + 1));
  return v25;
}

uint64_t NodeAttestor.attestingKey.getter()
{
  if (qword_27DAF14C8 != -1)
  {
    swift_once();
  }

  if (qword_27DB05B28)
  {
    v1 = qword_27DB05B28;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v0 = Duplicate;
    }

    else
    {
      type metadata accessor for NodeAttestor.Error(0);
      sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
      swift_allocError();
      v0 = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v7 - 8) + 56))(v0, 1, 7, v7);
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for NodeAttestor.Error(0);
    sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
    swift_allocError();
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v5 - 8) + 56))(v4, 1, 7, v5);
    swift_willThrow();
  }

  return v0;
}

double NodeAttestor.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = xmmword_22FFB3760;
  *(a1 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a1 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a1 + 147) = 0;
  static Environment.default.getter(&v11);
  v2 = v11;
  *(v12 + 8) = xmmword_22FFB3760;
  *(&v16 + 1) = &type metadata for SEP.PhysicalDevice;
  *&v17 = &protocol witness table for SEP.PhysicalDevice;
  *(&v19[1] + 3) = 0;
  if (MEMORY[0x277D73580])
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    v3 = 0;
  }

  sub_22FF9A6A8(v2, v3, v2, v9);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v17 = v9[6];
  v18 = v9[7];
  v19[0] = *v10;
  *(v19 + 13) = *&v10[13];
  v13 = v9[2];
  v14 = v9[3];
  v15 = v9[4];
  v16 = v9[5];
  v12[0] = v9[0];
  v12[1] = v9[1];
  __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  v4 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v4;
  *(a1 + 128) = v19[0];
  *(a1 + 141) = *(v19 + 13);
  v5 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v5;
  v6 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v6;
  result = *v12;
  v8 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v8;
  return result;
}

uint64_t NodeAttestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[59] = a6;
  v7[60] = v6;
  v7[57] = a4;
  v7[58] = a5;
  v7[55] = a2;
  v7[56] = a3;
  v7[54] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v7[61] = swift_task_alloc();
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  v7[62] = v8;
  v7[63] = *(v8 - 8);
  v7[64] = swift_task_alloc();
  v7[65] = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v7[66] = swift_task_alloc();
  type metadata accessor for TransparencyLogProofs(0);
  v7[67] = swift_task_alloc();
  v9 = sub_22FFB13C8();
  v7[68] = v9;
  v7[69] = *(v9 - 8);
  v7[70] = swift_task_alloc();
  v10 = sub_22FFB0E58();
  v7[71] = v10;
  v7[72] = *(v10 - 8);
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v11 = sub_22FFB1398();
  v7[75] = v11;
  v7[76] = *(v11 - 8);
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = type metadata accessor for Release(0);
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  v7[85] = swift_task_alloc();
  type metadata accessor for AttestationBundle(0);
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = type metadata accessor for Proto_AttestationBundle(0);
  v7[89] = swift_task_alloc();
  v7[90] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF96E64, 0, 0);
}

uint64_t sub_22FF96E64()
{
  v32 = v0;
  if (qword_27DAF14C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 480);
  v2 = sub_22FFB12F8();
  *(v0 + 728) = __swift_project_value_buffer(v2, qword_27DB05B10);
  sub_22FEAEC34(v1, v0 + 16);
  v3 = sub_22FFB12D8();
  v4 = sub_22FFB1848();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136446210;
    v31 = *(v0 + 16);
    v7 = Environment.rawValue.getter(v6);
    v9 = v8;
    sub_22FF9E97C(v0 + 16);
    v10 = sub_22FF9E448(v7, v9, &v28);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_22FE99000, v3, v4, "Attesting key in environment %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23190EFF0](v6, -1, -1);
    MEMORY[0x23190EFF0](v5, -1, -1);
  }

  else
  {

    sub_22FF9E97C(v0 + 16);
  }

  v11 = *(v0 + 472);
  if (v11 >> 60 != 15)
  {
    v12 = *(v0 + 464);
    sub_22FEA5608(v12, *(v0 + 472));
    v13 = sub_22FFB07B8();
    SecKeySetParameter();

    sub_22FEA56EC(v12, v11);
  }

  v14 = *(v0 + 480);
  v15 = *(v0 + 440);
  v16 = *(v0 + 448);
  v17 = v14[11];
  v18 = v14[12];
  __swift_project_boxed_opaque_existential_1(v14 + 8, v17);
  (*(v18 + 8))(&v28, v15, v16, v17, v18);
  v19 = *(v0 + 480);
  v20 = v28;
  *(v0 + 736) = v28;
  v26 = v29;
  *(v0 + 744) = v29;
  *(v0 + 760) = v30;
  v21 = v19[6];
  v22 = v19[7];
  __swift_project_boxed_opaque_existential_1(v19 + 3, v21);
  v23 = *(v22 + 16);
  sub_22FEA5608(v20, v26);
  v27 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v0 + 768) = v24;
  *v24 = v0;
  v24[1] = sub_22FF97410;

  return v27(v21, v22);
}

uint64_t sub_22FF97410(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 776) = v1;

  if (v1)
  {

    v5 = sub_22FF98580;
  }

  else
  {
    *(v4 + 784) = a1;
    v5 = sub_22FF97540;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FF97540()
{
  v99 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  *(v0 + 792) = v1;
  v3 = *(v0 + 480);
  v4 = *(v0 + 456);
  v5 = swift_task_alloc();
  v7 = *(v0 + 736);
  v6 = *(v0 + 752);
  *(v5 + 16) = v7;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = v1;
  *(v5 + 72) = v6;
  *(v5 + 56) = v7;
  sub_22FF9F948(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  sub_22FFB11B8();
  if (v2)
  {
    v8 = *(v0 + 760);
    v9 = *(v0 + 752);
    v10 = *(v0 + 744);
    v11 = *(v0 + 736);
    sub_22FEA55AC(v11, v10);

    sub_22FEA55AC(v11, v10);
    sub_22FEA55AC(v9, v8);

    v23 = v2;
    v24 = sub_22FFB12D8();
    v25 = sub_22FFB1838();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_22FE99000, v24, v25, "Attestation failed: %{public}@", v26, 0xCu);
      sub_22FEAEA34(v27, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v27, -1, -1);
      MEMORY[0x23190EFF0](v26, -1, -1);
    }

    swift_willThrow();

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v12 = *(v0 + 720);
    v13 = *(v0 + 696);
    v14 = *(v0 + 480);

    sub_22FF9F6DC(v12, v13, type metadata accessor for Proto_AttestationBundle);
    v15 = *(v14 + 146);
    sub_22FEAEC34(v14, v0 + 168);
    v16 = sub_22FFB12D8();
    v17 = sub_22FFB1848();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67240448;
      *(v18 + 4) = v15;
      *(v18 + 8) = 1026;
      v19 = *(v0 + 314);
      sub_22FF9E97C(v0 + 168);
      *(v18 + 10) = v19;
      _os_log_impl(&dword_22FE99000, v16, v17, "Computing release object: evaluateTrust=%{BOOL,public}d, requireCryptex1=%{BOOL,public}d)", v18, 0xEu);
      MEMORY[0x23190EFF0](v18, -1, -1);
    }

    else
    {
      sub_22FF9E97C(v0 + 168);
    }

    v20 = *(v0 + 712);
    v21 = *(v0 + 688);
    v22 = *(v0 + 672);
    sub_22FF9F6DC(*(v0 + 696), v21, type metadata accessor for AttestationBundle);
    sub_22FF9F6DC(v21, v20, type metadata accessor for Proto_AttestationBundle);
    sub_22FF68C5C(v20, v15, v15, v22);
    v32 = *(v0 + 680);
    v33 = *(v0 + 672);
    v34 = *(v0 + 664);
    v35 = *(v0 + 656);
    sub_22FF9F8E8(*(v0 + 688), type metadata accessor for AttestationBundle);
    sub_22FF9F880(v33, v32, type metadata accessor for Release);
    sub_22FF9F6DC(v32, v34, type metadata accessor for Release);
    sub_22FF9F6DC(v32, v35, type metadata accessor for Release);
    v36 = sub_22FFB12D8();
    v37 = sub_22FFB1848();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 664);
    if (v38)
    {
      v40 = *(v0 + 648);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v98[0] = v42;
      *v41 = 136446466;
      sub_22FF9F6DC(v39, v40, type metadata accessor for Release);
      sub_22FFB19B8();

      v98[1] = 0xD000000000000010;
      v98[2] = 0x800000022FFC9F50;
      sub_22FFB0E48();
      sub_22FF9F948(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
      sub_22FFB0E38();
      v88 = v41;
      v90 = *(v0 + 656);
      v84 = *(v0 + 664);
      v86 = *(v0 + 648);
      v82 = *(v0 + 608);
      v83 = *(v0 + 600);
      v44 = *(v0 + 592);
      log = v36;
      v45 = *(v0 + 576);
      v46 = *(v0 + 568);
      v47 = *(v0 + 560);
      v80 = *(v0 + 632);
      v81 = *(v0 + 552);
      v48 = *(v0 + 544);
      v49 = sub_22FFB0E18();
      v93 = v37;
      v50 = sub_22FF9F538(v49);
      v95 = v42;
      v52 = v51;

      (*(v45 + 8))(v44, v46);
      sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_22FFB1388();
      sub_22FEA5608(v50, v52);
      sub_22FF9EA78(v50, v52, v47);
      sub_22FEA55AC(v50, v52);
      sub_22FFB1368();
      sub_22FEA55AC(v50, v52);
      (*(v81 + 8))(v47, v48);
      v53 = sub_22FF95E4C(MEMORY[0x277CC5290], &qword_28148F1B8, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
      v55 = v54;
      (*(v82 + 8))(v80, v83);
      MEMORY[0x23190DD10](v53, v55);

      MEMORY[0x23190DD10](41, 0xE100000000000000);
      sub_22FF9F8E8(v86, type metadata accessor for Release);
      sub_22FF9F8E8(v84, type metadata accessor for Release);
      v56 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, v98);

      *(v88 + 1) = v56;
      *(v88 + 6) = 2082;
      v57 = Release.jsonString.getter();
      v59 = v58;
      sub_22FF9F8E8(v90, type metadata accessor for Release);
      v60 = sub_22FF9E448(v57, v59, v98);

      *(v88 + 14) = v60;
      _os_log_impl(&dword_22FE99000, log, v93, "This device's %{public}s:\n%{public}s", v88, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v95, -1, -1);
      MEMORY[0x23190EFF0](v88, -1, -1);
    }

    else
    {
      v43 = *(v0 + 656);

      sub_22FF9F8E8(v43, type metadata accessor for Release);
      sub_22FF9F8E8(v39, type metadata accessor for Release);
    }

    v61 = *(v0 + 480);
    v62 = v61[16];
    v63 = v61[17];
    __swift_project_boxed_opaque_existential_1(v61 + 13, v62);
    sub_22FFB0E48();
    sub_22FF9F948(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
    sub_22FFB0E38();
    v91 = *(v0 + 608);
    v94 = v63;
    v87 = *(v0 + 624);
    v89 = *(v0 + 600);
    v64 = *(v0 + 584);
    v65 = *(v0 + 576);
    v85 = *(v0 + 568);
    v66 = *(v0 + 560);
    v67 = *(v0 + 552);
    v68 = *(v0 + 544);
    v69 = sub_22FFB0E18();
    v96 = v62;
    v70 = sub_22FF9F538(v69);
    v72 = v71;

    (*(v65 + 8))(v64, v85);
    *(v0 + 800) = sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_22FFB1388();
    sub_22FEA5608(v70, v72);
    sub_22FF9EA78(v70, v72, v66);
    sub_22FEA55AC(v70, v72);
    sub_22FFB1368();
    sub_22FEA55AC(v70, v72);
    v73 = *(v67 + 8);
    *(v0 + 808) = v73;
    *(v0 + 816) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v73(v66, v68);
    *(v0 + 344) = v89;
    *(v0 + 352) = sub_22FF9F948(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
    (*(v91 + 16))(boxed_opaque_existential_1, v87, v89);
    __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
    sub_22FFB0618();
    v75 = *(v91 + 8);
    *(v0 + 824) = v75;
    *(v0 + 832) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75(v87, v89);
    v77 = *(v0 + 408);
    v76 = *(v0 + 416);
    *(v0 + 840) = v77;
    *(v0 + 848) = v76;
    __swift_destroy_boxed_opaque_existential_1((v0 + 320));
    v92 = (*(v94 + 8) + **(v94 + 8));
    v78 = swift_task_alloc();
    *(v0 + 856) = v78;
    *v78 = v0;
    v78[1] = sub_22FF995CC;
    v79 = *(v0 + 536);

    return v92(v79, v77, v76, v96, v94);
  }
}

uint64_t sub_22FF98580()
{
  v86 = v0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 792) = MEMORY[0x277D84F90];
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
  v4 = swift_task_alloc();
  v6 = *(v0 + 736);
  v5 = *(v0 + 752);
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  *(v4 + 72) = v5;
  *(v4 + 56) = v6;
  sub_22FF9F948(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  sub_22FFB11B8();
  v7 = *(v0 + 720);
  v8 = *(v0 + 696);
  v9 = *(v0 + 480);

  sub_22FF9F6DC(v7, v8, type metadata accessor for Proto_AttestationBundle);
  v10 = *(v9 + 146);
  sub_22FEAEC34(v9, v0 + 168);
  v11 = sub_22FFB12D8();
  v12 = sub_22FFB1848();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240448;
    *(v13 + 4) = v10;
    *(v13 + 8) = 1026;
    v14 = *(v0 + 314);
    sub_22FF9E97C(v0 + 168);
    *(v13 + 10) = v14;
    _os_log_impl(&dword_22FE99000, v11, v12, "Computing release object: evaluateTrust=%{BOOL,public}d, requireCryptex1=%{BOOL,public}d)", v13, 0xEu);
    MEMORY[0x23190EFF0](v13, -1, -1);
  }

  else
  {
    sub_22FF9E97C(v0 + 168);
  }

  v15 = *(v0 + 712);
  v16 = *(v0 + 688);
  v17 = *(v0 + 672);
  sub_22FF9F6DC(*(v0 + 696), v16, type metadata accessor for AttestationBundle);
  sub_22FF9F6DC(v16, v15, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v15, v10, v10, v17);
  v18 = *(v0 + 680);
  v19 = *(v0 + 672);
  v20 = *(v0 + 664);
  v21 = *(v0 + 656);
  sub_22FF9F8E8(*(v0 + 688), type metadata accessor for AttestationBundle);
  sub_22FF9F880(v19, v18, type metadata accessor for Release);
  sub_22FF9F6DC(v18, v20, type metadata accessor for Release);
  sub_22FF9F6DC(v18, v21, type metadata accessor for Release);
  v22 = sub_22FFB12D8();
  v23 = sub_22FFB1848();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 664);
  if (v24)
  {
    v26 = *(v0 + 648);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v85[0] = v28;
    *v27 = 136446466;
    sub_22FF9F6DC(v25, v26, type metadata accessor for Release);
    sub_22FFB19B8();

    v85[1] = 0xD000000000000010;
    v85[2] = 0x800000022FFC9F50;
    sub_22FFB0E48();
    sub_22FF9F948(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
    sub_22FFB0E38();
    v75 = v27;
    v77 = *(v0 + 656);
    v71 = *(v0 + 664);
    v73 = *(v0 + 648);
    v69 = *(v0 + 608);
    v70 = *(v0 + 600);
    v30 = *(v0 + 592);
    log = v22;
    v31 = *(v0 + 576);
    v32 = *(v0 + 568);
    v33 = *(v0 + 560);
    v67 = *(v0 + 632);
    v68 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = sub_22FFB0E18();
    v80 = v23;
    v36 = sub_22FF9F538(v35);
    v82 = v28;
    v38 = v37;

    (*(v31 + 8))(v30, v32);
    sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_22FFB1388();
    sub_22FEA5608(v36, v38);
    sub_22FF9EA78(v36, v38, v33);
    sub_22FEA55AC(v36, v38);
    sub_22FFB1368();
    sub_22FEA55AC(v36, v38);
    (*(v68 + 8))(v33, v34);
    v39 = sub_22FF95E4C(MEMORY[0x277CC5290], &qword_28148F1B8, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    v41 = v40;
    (*(v69 + 8))(v67, v70);
    MEMORY[0x23190DD10](v39, v41);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    sub_22FF9F8E8(v73, type metadata accessor for Release);
    sub_22FF9F8E8(v71, type metadata accessor for Release);
    v42 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, v85);

    *(v75 + 1) = v42;
    *(v75 + 6) = 2082;
    v43 = Release.jsonString.getter();
    v45 = v44;
    sub_22FF9F8E8(v77, type metadata accessor for Release);
    v46 = sub_22FF9E448(v43, v45, v85);

    *(v75 + 14) = v46;
    _os_log_impl(&dword_22FE99000, log, v80, "This device's %{public}s:\n%{public}s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v82, -1, -1);
    MEMORY[0x23190EFF0](v75, -1, -1);
  }

  else
  {
    v29 = *(v0 + 656);

    sub_22FF9F8E8(v29, type metadata accessor for Release);
    sub_22FF9F8E8(v25, type metadata accessor for Release);
  }

  v47 = *(v0 + 480);
  v48 = v47[16];
  v49 = v47[17];
  __swift_project_boxed_opaque_existential_1(v47 + 13, v48);
  sub_22FFB0E48();
  sub_22FF9F948(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
  sub_22FFB0E38();
  v78 = *(v0 + 608);
  v81 = v49;
  v74 = *(v0 + 624);
  v76 = *(v0 + 600);
  v50 = *(v0 + 584);
  v51 = *(v0 + 576);
  v72 = *(v0 + 568);
  v52 = *(v0 + 560);
  v53 = *(v0 + 552);
  v54 = *(v0 + 544);
  v55 = sub_22FFB0E18();
  v83 = v48;
  v56 = sub_22FF9F538(v55);
  v58 = v57;

  (*(v51 + 8))(v50, v72);
  *(v0 + 800) = sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v56, v58);
  sub_22FF9EA78(v56, v58, v52);
  sub_22FEA55AC(v56, v58);
  sub_22FFB1368();
  sub_22FEA55AC(v56, v58);
  v59 = *(v53 + 8);
  *(v0 + 808) = v59;
  *(v0 + 816) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59(v52, v54);
  *(v0 + 344) = v76;
  *(v0 + 352) = sub_22FF9F948(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
  (*(v78 + 16))(boxed_opaque_existential_1, v74, v76);
  __swift_project_boxed_opaque_existential_1((v0 + 320), *(v0 + 344));
  sub_22FFB0618();
  v61 = *(v78 + 8);
  *(v0 + 824) = v61;
  *(v0 + 832) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v74, v76);
  v63 = *(v0 + 408);
  v62 = *(v0 + 416);
  *(v0 + 840) = v63;
  *(v0 + 848) = v62;
  __swift_destroy_boxed_opaque_existential_1((v0 + 320));
  v79 = (*(v81 + 8) + **(v81 + 8));
  v64 = swift_task_alloc();
  *(v0 + 856) = v64;
  *v64 = v0;
  v64[1] = sub_22FF995CC;
  v65 = *(v0 + 536);

  return v79(v65, v63, v62, v83, v81);
}

uint64_t sub_22FF995CC()
{
  v2 = *v1;
  v2[108] = v0;

  sub_22FEA55AC(v2[105], v2[106]);
  if (v0)
  {

    v3 = sub_22FF9A170;
  }

  else
  {
    v3 = sub_22FF99724;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

__SecKey *sub_22FF99724(uint64_t a1)
{
  v81 = v1;
  v2 = sub_22FFB12D8();
  v3 = sub_22FFB1828();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FE99000, v2, v3, "Fetched inclusion proofs for release", v4, 2u);
    MEMORY[0x23190EFF0](v4, -1, -1);
  }

  v5 = *(v1 + 864);
  v6 = *(v1 + 456);

  TransparencyLogProofs.verify(expiration:)(v6);
  if (v5)
  {
    v7 = v5;
    v8 = *(v1 + 760);
    v9 = *(v1 + 752);
    v10 = *(v1 + 744);
    v11 = *(v1 + 736);
    v12 = *(v1 + 720);
    v13 = *(v1 + 696);
    v14 = *(v1 + 680);
    v15 = *(v1 + 536);

    sub_22FEA55AC(v11, v10);
    sub_22FEA55AC(v11, v10);
    sub_22FEA55AC(v9, v8);
    sub_22FF9F8E8(v14, type metadata accessor for Release);
    sub_22FF9F8E8(v12, type metadata accessor for Proto_AttestationBundle);
    sub_22FF9F8E8(v13, type metadata accessor for AttestationBundle);
    sub_22FF9F8E8(v15, type metadata accessor for TransparencyLogProofs);
    v16 = v7;
    v17 = sub_22FFB12D8();
    v18 = sub_22FFB1838();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v7;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_22FE99000, v17, v18, "Attestation failed: %{public}@", v19, 0xCu);
      sub_22FEAEA34(v20, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v20, -1, -1);
      MEMORY[0x23190EFF0](v19, -1, -1);
    }

    swift_willThrow();

    v23 = *(v1 + 8);
    goto LABEL_17;
  }

  v24 = *(v1 + 536);
  v25 = *(v1 + 528);
  v26 = *(v1 + 520);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v27 = *(v26 + 20);
  v28 = type metadata accessor for LogEntry(0);
  (*(*(v28 - 8) + 56))(v25 + v27, 1, 1, v28);
  v29 = *(v26 + 24);
  v30 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  (*(*(v30 - 8) + 56))(v25 + v29, 1, 1, v30);
  LOBYTE(v24) = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v24, v25);
  sub_22FF9F8E8(v25, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  if ((v24 & 1) == 0)
  {
    v31 = *(v1 + 704);
    v32 = *(v1 + 696);
    v33 = *(v1 + 536);
    *(swift_task_alloc() + 16) = v33;
    sub_22FF9F948(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);
    sub_22FFB11B8();

    v34 = *(v31 + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v32 + v34);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v36 = sub_22FF10520(v36);
      *(v32 + v34) = v36;
    }

    v37 = *(v1 + 504);
    v39 = *(v1 + 488);
    v38 = *(v1 + 496);
    sub_22FF9F880(*(v1 + 512), v39, type metadata accessor for Proto_TransparencyProofs);
    (*(v37 + 56))(v39, 0, 1, v38);
    v40 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
    swift_beginAccess();
    sub_22FEFF0DC(v39, v36 + v40, &qword_27DAF2118, &unk_22FFB5C70);
    swift_endAccess();
  }

  result = SecKeyCopyPublicKey(*(v1 + 440));
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v42 = result;
  result = SecKeyCopyExternalRepresentation(result, 0);
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v43 = result;

  v44 = v43;
  v45 = sub_22FFB12D8();
  v46 = sub_22FFB1848();

  if (os_log_type_enabled(v45, v46))
  {
    v70 = *(v1 + 824);
    v66 = *(v1 + 808);
    v77 = *(v1 + 760);
    v75 = *(v1 + 752);
    v72 = *(v1 + 736);
    v73 = *(v1 + 744);
    v78 = *(v1 + 680);
    v79 = *(v1 + 720);
    v76 = v44;
    v47 = *(v1 + 616);
    v68 = *(v1 + 600);
    v74 = v42;
    v48 = *(v1 + 560);
    v49 = *(v1 + 544);
    log = v45;
    v50 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v80 = v69;
    *v50 = 136446210;
    v51 = sub_22FFB07E8();
    v53 = v52;
    v67 = v46;
    sub_22FFB1388();
    sub_22FEA5608(v51, v53);
    sub_22FF9EA78(v51, v53, v48);
    sub_22FEA55AC(v51, v53);
    sub_22FFB1368();
    sub_22FEA55AC(v51, v53);
    v66(v48, v49);
    sub_22FF9F948(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
    v54 = sub_22FFB1BA8();
    v56 = v55;
    v70(v47, v68);
    v57 = sub_22FF9E448(v54, v56, &v80);

    *(v50 + 4) = v57;
    _os_log_impl(&dword_22FE99000, log, v67, "Successfully created attestation for key: %{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x23190EFF0](v69, -1, -1);
    MEMORY[0x23190EFF0](v50, -1, -1);
    sub_22FEA55AC(v72, v73);

    sub_22FEA55AC(v72, v73);
    sub_22FEA55AC(v75, v77);

    sub_22FF9F8E8(v78, type metadata accessor for Release);
    v58 = v79;
  }

  else
  {
    v59 = *(v1 + 760);
    v60 = *(v1 + 752);
    v61 = *(v1 + 744);
    v62 = *(v1 + 736);
    v63 = *(v1 + 720);
    v64 = *(v1 + 680);
    sub_22FEA55AC(v62, v61);

    sub_22FEA55AC(v62, v61);
    sub_22FEA55AC(v60, v59);

    sub_22FF9F8E8(v64, type metadata accessor for Release);
    v58 = v63;
  }

  sub_22FF9F8E8(v58, type metadata accessor for Proto_AttestationBundle);
  v65 = *(v1 + 536);
  sub_22FF9F880(*(v1 + 696), *(v1 + 432), type metadata accessor for AttestationBundle);
  sub_22FF9F8E8(v65, type metadata accessor for TransparencyLogProofs);

  v23 = *(v1 + 8);
LABEL_17:

  return v23();
}

uint64_t sub_22FF9A170()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[90];
  v6 = v0[87];
  v7 = v0[85];
  sub_22FEA55AC(v4, v3);
  sub_22FEA55AC(v4, v3);
  sub_22FEA55AC(v2, v1);
  sub_22FF9F8E8(v7, type metadata accessor for Release);
  sub_22FF9F8E8(v5, type metadata accessor for Proto_AttestationBundle);
  sub_22FF9F8E8(v6, type metadata accessor for AttestationBundle);
  v8 = v0[108];
  v9 = v8;
  v10 = sub_22FFB12D8();
  v11 = sub_22FFB1838();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22FE99000, v10, v11, "Attestation failed: %{public}@", v12, 0xCu);
    sub_22FEAEA34(v13, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v13, -1, -1);
    MEMORY[0x23190EFF0](v12, -1, -1);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FF9A468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_variant_allows_internal_security_policies() && (v3 = sub_22FFB1488(), v4 = sub_22FFB1488(), CFPreferencesCopyAppValue(v3, v4), v3, v4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39C0, &qword_22FFC0158), swift_dynamicCast()))
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

double NodeAttestor.init<A>(transparencyProver:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + 8) = xmmword_22FFB3760;
  *(a4 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a4 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a4 + 147) = 0;
  (*(v8 + 16))(v10, a1, a2);
  v12 = NodeAttestor.init<A, B>(transparencyProver:assetProvider:)(v10, v11, a2, &type metadata for PCC.AssetProvider, a3, &protocol witness table for PCC.AssetProvider, v19);
  (*(v8 + 8))(a1, a2, v12);
  __swift_destroy_boxed_opaque_existential_1((a4 + 64));
  v13 = v19[7];
  *(a4 + 96) = v19[6];
  *(a4 + 112) = v13;
  *(a4 + 128) = *v20;
  *(a4 + 141) = *&v20[13];
  v14 = v19[3];
  *(a4 + 32) = v19[2];
  *(a4 + 48) = v14;
  v15 = v19[5];
  *(a4 + 64) = v19[4];
  *(a4 + 80) = v15;
  result = *v19;
  v17 = v19[1];
  *a4 = v19[0];
  *(a4 + 16) = v17;
  return result;
}

uint64_t sub_22FF9A6A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = xmmword_22FFB3760;
  *(a4 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a4 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a4 + 147) = 0;
  *(a4 + 48) = &type metadata for PCC.AssetProvider;
  *(a4 + 56) = &protocol witness table for PCC.AssetProvider;
  *(a4 + 128) = &type metadata for SWTransparencyLog;
  *(a4 + 136) = &protocol witness table for SWTransparencyLog;
  *(a4 + 104) = a1;
  *(a4 + 112) = a2;
  *a4 = a3;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v6 = sub_22FF9A468(qword_2814915F0, unk_2814915F8, qword_281491600);
  v7 = 0x3F8u >> a3;
  if (v6 == 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  *(a4 + 144) = v8 & 1;
  v9 = sub_22FF9A468(qword_2814915D0, unk_2814915D8, qword_2814915E0);
  if (v9 == 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  *(a4 + 145) = v10 & 1;
  result = sub_22FF9A468(qword_281491610, unk_281491618, qword_281491620);
  if (result == 2)
  {
    v12 = v7;
  }

  else
  {
    v12 = result;
  }

  *(a4 + 146) = v12 & 1;
  return result;
}

uint64_t sub_22FF9A7CC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = xmmword_22FFB3760;
  *(a3 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a3 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a3 + 147) = 0;
  *(a3 + 48) = &type metadata for PCC.AssetProvider;
  *(a3 + 56) = &protocol witness table for PCC.AssetProvider;
  *(a3 + 128) = &type metadata for NopTransparencyLog;
  *(a3 + 136) = &protocol witness table for NopTransparencyLog;
  *(a3 + 104) = a1;
  *a3 = a2;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v5 = sub_22FF9A468(qword_2814915F0, unk_2814915F8, qword_281491600);
  v6 = 0x3F8u >> a2;
  if (v5 == 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  *(a3 + 144) = v7 & 1;
  v8 = sub_22FF9A468(qword_2814915D0, unk_2814915D8, qword_2814915E0);
  if (v8 == 2)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  *(a3 + 145) = v9 & 1;
  result = sub_22FF9A468(qword_281491610, unk_281491618, qword_281491620);
  if (result == 2)
  {
    v11 = v6;
  }

  else
  {
    v11 = result;
  }

  *(a3 + 146) = v11 & 1;
  return result;
}

uint64_t NodeAttestor.init<A, B>(transparencyProver:assetProvider:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a3;
  *(a8 + 8) = xmmword_22FFB3760;
  *(a8 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a8 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a8 + 147) = 0;
  *(a8 + 48) = a5;
  *(a8 + 56) = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 24));
  v16 = *(a5 - 8);
  (*(v16 + 16))(boxed_opaque_existential_1, a2, a5);
  *(a8 + 128) = a4;
  *(a8 + 136) = a6;
  v17 = __swift_allocate_boxed_opaque_existential_1((a8 + 104));
  v18 = *(a4 - 8);
  (*(v18 + 16))(v17, a1, a4);
  *a8 = v14;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v19 = sub_22FF9A468(qword_2814915F0, unk_2814915F8, qword_281491600);
  v20 = 0x3F8u >> v14;
  if (v19 == 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  *(a8 + 144) = v21 & 1;
  v22 = sub_22FF9A468(qword_2814915D0, unk_2814915D8, qword_2814915E0);
  if (v22 == 2)
  {
    v23 = v20;
  }

  else
  {
    v23 = v22;
  }

  *(a8 + 145) = v23 & 1;
  v24 = sub_22FF9A468(qword_281491610, unk_281491618, qword_281491620);
  (*(v16 + 8))(a2, a5);
  result = (*(v18 + 8))(a1, a4);
  if (v24 == 2)
  {
    v26 = v20;
  }

  else
  {
    v26 = v24;
  }

  *(a8 + 146) = v26 & 1;
  return result;
}

double NodeAttestor.init<A, B>(transparencyProver:assetProvider:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a6;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v14);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a7 + 8) = xmmword_22FFB3760;
  *(a7 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a7 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a7 + 147) = 0;
  (*(v18 + 16))(v20, a1);
  (*(v13 + 16))(v16, a2, a4);
  static Environment.default.getter(&v27);
  NodeAttestor.init<A, B>(transparencyProver:assetProvider:environment:)(v20, v16, &v27, a3, a4, a5, v26, v28);
  (*(v13 + 8))(a2, a4);
  (*(v18 + 8))(a1, a3);
  __swift_destroy_boxed_opaque_existential_1((a7 + 64));
  v21 = v28[7];
  *(a7 + 96) = v28[6];
  *(a7 + 112) = v21;
  *(a7 + 128) = v29[0];
  *(a7 + 141) = *(v29 + 13);
  v22 = v28[3];
  *(a7 + 32) = v28[2];
  *(a7 + 48) = v22;
  v23 = v28[5];
  *(a7 + 64) = v28[4];
  *(a7 + 80) = v23;
  result = *v28;
  v25 = v28[1];
  *a7 = v28[0];
  *(a7 + 16) = v25;
  return result;
}

uint64_t NodeAttestor.defaultKeyDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NodeAttestor.transparencyProver.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 104));

  return sub_22FE9B84C(a1, v1 + 104);
}

uint64_t sub_22FF9AF14()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05B10);
  __swift_project_value_buffer(v0, qword_27DB05B10);
  return sub_22FFB12E8();
}

uint64_t sub_22FF9AF94()
{
  result = SecKeyCopySystemKey();
  qword_27DB05B28 = result;
  return result;
}

uint64_t type metadata accessor for NodeAttestor.Error(uint64_t a1)
{
  result = qword_27DAF3998;
  if (!qword_27DAF3998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double NodeAttestor.init(environment:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 8) = xmmword_22FFB3760;
  *(a2 + 88) = &type metadata for SEP.PhysicalDevice;
  *(a2 + 96) = &protocol witness table for SEP.PhysicalDevice;
  *(a2 + 147) = 0;
  if (MEMORY[0x277D73580])
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    v4 = 0;
  }

  sub_22FF9A6A8(v3, v4, v3, v10);
  __swift_destroy_boxed_opaque_existential_1((a2 + 64));
  v5 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v5;
  *(a2 + 128) = *v11;
  *(a2 + 141) = *&v11[13];
  v6 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v6;
  v7 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v7;
  result = *v10;
  v9 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v9;
  return result;
}

void sub_22FF9B0E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v143 = a8;
  v142 = a7;
  v144 = a6;
  v152 = a5;
  v147 = a4;
  v150 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v12 - 8);
  v149 = &v141 - v13;
  v146 = sub_22FFB0908();
  v14 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_22FFB0EE8();
  v17 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v19 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + v20);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v22 = sub_22FF10520(v22);
    *(a1 + v20) = v22;
  }

  swift_beginAccess();
  v23 = v22[2];
  v24 = v22[3];
  v25 = v150;
  v22[2] = a2;
  v22[3] = v25;
  sub_22FEA55AC(v23, v24);
  (*(v14 + 16))(v16, v147, v146);
  sub_22FEA5608(a2, v25);
  sub_22FFB0EC8();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v20);
  v145 = a1;
  if ((v26 & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v27 = sub_22FF10520(v27);
    *(a1 + v20) = v27;
  }

  v28 = v148;
  v29 = v149;
  (*(v17 + 32))(v149, v19, v148);
  (*(v17 + 56))(v29, 0, 1, v28);
  v30 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v29, v27 + v30, &qword_27DAF1520, &qword_22FFB3A30);
  swift_endAccess();
  v31 = v152;
  v32 = v152[6];
  v33 = v152[7];
  __swift_project_boxed_opaque_existential_1(v152 + 3, v32);
  v34 = v151;
  v35 = (*(v33 + 8))(v32, v33);
  if (v34)
  {
    if (qword_27DAF14C0 != -1)
    {
      swift_once();
    }

    v37 = sub_22FFB12F8();
    __swift_project_value_buffer(v37, qword_27DB05B10);
    v38 = v34;
    v39 = sub_22FFB12D8();
    v40 = sub_22FFB1838();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138543362;
      v43 = v34;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_22FE99000, v39, v40, "Unable to fetch ap ticket: %{public}@", v41, 0xCu);
      sub_22FEAEA34(v42, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v42, -1, -1);
      MEMORY[0x23190EFF0](v41, -1, -1);
    }

    swift_willThrow();
    return;
  }

  v45 = v35;
  v46 = v36;
  v47 = v145;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v47 + v20);
  if ((v48 & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v49 = sub_22FF10520(v49);
    *(v47 + v20) = v49;
  }

  swift_beginAccess();
  v50 = v49[4];
  v51 = v49[5];
  v49[4] = v45;
  v49[5] = v46;
  sub_22FEA55AC(v50, v51);
  v52 = v144;
  if (*(v144 + 16))
  {
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(v47 + v20);
    if ((v53 & 1) == 0)
    {
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v54 = sub_22FF10520(v54);
      *(v47 + v20) = v54;
    }

    v55 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
    swift_beginAccess();
    *(v54 + v55) = v52;

    goto LABEL_25;
  }

  if (qword_27DAF14C0 != -1)
  {
    swift_once();
  }

  v56 = sub_22FFB12F8();
  __swift_project_value_buffer(v56, qword_27DB05B10);
  v57 = sub_22FFB12D8();
  v58 = sub_22FFB1838();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_22FE99000, v57, v58, "Empty provisioning certificate chain", v59, 2u);
    MEMORY[0x23190EFF0](v59, -1, -1);
  }

  if (*(v31 + 144) != 1)
  {
LABEL_25:
    v72 = v31[6];
    v73 = v31[7];
    __swift_project_boxed_opaque_existential_1(v31 + 3, v72);
    v154 = (*(v73 + 24))(v72, v73);
    v153[0] = v142;
    v153[1] = v143;
    v153[2] = a9;
    v153[3] = a10;
    sub_22FF9C238(v153, &v154);
    if (qword_281490280 != -1)
    {
      swift_once();
    }

    v74 = sub_22FFB0958();
    v75 = __swift_project_value_buffer(v74, qword_281491418);
    v76 = v154;
    if (*(v154 + 16) && (v77 = sub_22FFA6214(v75), (v78 & 1) != 0))
    {
      v79 = *(*(v76 + 56) + 8 * v77);
      v80 = qword_27DAF14C0;

      if (v80 != -1)
      {
        swift_once();
      }

      v81 = sub_22FFB12F8();
      __swift_project_value_buffer(v81, qword_27DB05B10);
      v82 = sub_22FFB12D8();
      v83 = sub_22FFB1848();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v150 = v79;
        v85 = v84;
        v86 = swift_slowAlloc();
        v151 = v76;
        v87 = v86;
        v153[0] = v86;
        *v85 = 136446210;
        sub_22FF9F948(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v88 = sub_22FFB1BA8();
        v90 = sub_22FF9E448(v88, v89, v153);

        *(v85 + 4) = v90;
        _os_log_impl(&dword_22FE99000, v82, v83, "Reading cryptexes from %{public}s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v91 = v87;
        v76 = v151;
        MEMORY[0x23190EFF0](v91, -1, -1);
        v92 = v85;
        v79 = v150;
        MEMORY[0x23190EFF0](v92, -1, -1);
      }

      v31 = v152;
      sub_22FF9CC3C(v145, v79);
    }

    else
    {
      if (qword_27DAF14C0 != -1)
      {
        swift_once();
      }

      v93 = sub_22FFB12F8();
      __swift_project_value_buffer(v93, qword_27DB05B10);
      v94 = sub_22FFB12D8();
      v95 = sub_22FFB1838();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v151 = v76;
        v98 = v97;
        v153[0] = v97;
        *v96 = 136446210;
        sub_22FF9F948(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v99 = sub_22FFB1BA8();
        v101 = sub_22FF9E448(v99, v100, v153);

        *(v96 + 4) = v101;
        _os_log_impl(&dword_22FE99000, v94, v95, "Failed to read cryptexes from %{public}s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        v102 = v98;
        v76 = v151;
        MEMORY[0x23190EFF0](v102, -1, -1);
        MEMORY[0x23190EFF0](v96, -1, -1);
      }

      if (*(v31 + 145) == 1)
      {
        type metadata accessor for NodeAttestor.Error(0);
        sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
        v103 = swift_allocError();
        v105 = v104;
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
        (*(*(v106 - 8) + 56))(v105, 4, 7, v106);
LABEL_55:
        swift_willThrow();

        if (qword_27DAF14C0 != -1)
        {
          swift_once();
        }

        v133 = sub_22FFB12F8();
        __swift_project_value_buffer(v133, qword_27DB05B10);
        v134 = v103;
        v135 = sub_22FFB12D8();
        v136 = sub_22FFB1838();

        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          v138 = swift_slowAlloc();
          *v137 = 138543362;
          v139 = v103;
          v140 = _swift_stdlib_bridgeErrorToNSError();
          *(v137 + 4) = v140;
          *v138 = v140;
          _os_log_impl(&dword_22FE99000, v135, v136, "Failed to read sealed hashes: %{public}@", v137, 0xCu);
          sub_22FEAEA34(v138, &qword_27DAF1680, &unk_22FFB4B10);
          MEMORY[0x23190EFF0](v138, -1, -1);
          MEMORY[0x23190EFF0](v137, -1, -1);
        }

        if (*(v31 + 145) == 1)
        {
          swift_willThrow();
        }

        else
        {
        }

        return;
      }
    }

    if (qword_28148FA40 != -1)
    {
      swift_once();
    }

    v107 = __swift_project_value_buffer(v74, qword_2814913A0);
    if (*(v76 + 16))
    {
      v108 = sub_22FFA6214(v107);
      if (v109)
      {
        v110 = *(*(v76 + 56) + 8 * v108);
        v111 = qword_27DAF14C0;

        if (v111 != -1)
        {
          swift_once();
        }

        v112 = sub_22FFB12F8();
        __swift_project_value_buffer(v112, qword_27DB05B10);

        v113 = sub_22FFB12D8();
        v114 = sub_22FFB1848();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v151 = v76;
          v117 = v116;
          v153[0] = v116;
          *v115 = 136446210;
          v118 = MEMORY[0x23190DEA0](v110, &type metadata for SEP.SealedHash.Entry);
          v120 = sub_22FF9E448(v118, v119, v153);

          *(v115 + 4) = v120;
          _os_log_impl(&dword_22FE99000, v113, v114, "Reading secure config from %{public}s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v117);
          MEMORY[0x23190EFF0](v117, -1, -1);
          MEMORY[0x23190EFF0](v115, -1, -1);
        }

        sub_22FF9D1B4(v145, v110);

LABEL_62:

        return;
      }
    }

    if (qword_27DAF14C0 != -1)
    {
      swift_once();
    }

    v121 = sub_22FFB12F8();
    __swift_project_value_buffer(v121, qword_27DB05B10);
    v122 = sub_22FFB12D8();
    v123 = sub_22FFB1838();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v151 = v76;
      v126 = v125;
      v153[0] = v125;
      *v124 = 136446210;
      sub_22FF9F948(&qword_27DAF38F8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v127 = sub_22FFB1BA8();
      v129 = sub_22FF9E448(v127, v128, v153);

      *(v124 + 4) = v129;
      _os_log_impl(&dword_22FE99000, v122, v123, "Failed to read secure config from %{public}s", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v126);
      MEMORY[0x23190EFF0](v126, -1, -1);
      MEMORY[0x23190EFF0](v124, -1, -1);
    }

    if (*(v31 + 145) != 1)
    {
      goto LABEL_62;
    }

    type metadata accessor for NodeAttestor.Error(0);
    sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
    v103 = swift_allocError();
    v131 = v130;
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v132 - 8) + 56))(v131, 5, 7, v132);
    goto LABEL_55;
  }

  type metadata accessor for NodeAttestor.Error(0);
  sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
  v60 = swift_allocError();
  v62 = v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  (*(*(v63 - 8) + 56))(v62, 3, 7, v63);
  swift_willThrow();
  v64 = v60;
  v65 = v60;
  v66 = sub_22FFB12D8();
  v67 = sub_22FFB1838();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138543362;
    v70 = v60;
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v68 + 4) = v71;
    *v69 = v71;
    _os_log_impl(&dword_22FE99000, v66, v67, "Failed to obtain provisioning certificate chain from CFPrefs: %{public}@", v68, 0xCu);
    sub_22FEAEA34(v69, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v69, -1, -1);
    MEMORY[0x23190EFF0](v68, -1, -1);
  }

  swift_willThrow();
}

uint64_t sub_22FF9C238(uint64_t a1, uint64_t *a2)
{
  v116 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  MEMORY[0x28223BE20](v4 - 8);
  v97 = &v83 - v5;
  v101 = type metadata accessor for SEP.SealedHash(0);
  v6 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22FFB0958();
  v8 = MEMORY[0x28223BE20](v109);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v83 - v11;
  MEMORY[0x28223BE20](v10);
  v105 = &v83 - v14;
  v90 = a2;
  v15 = *a2;
  v18 = *(*a2 + 64);
  v17 = *a2 + 64;
  v16 = v18;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = v19 + 63;
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = v22 >> 6;
  v107 = v13 + 16;
  v103 = v13 + 32;
  v102 = v24 >> 62;
  v95 = v23;
  v94 = v23;
  v92 = v23 >> 32;
  v100 = (v6 + 48);
  v106 = v13;
  v98 = (v13 + 8);
  v26 = 0;

  v93 = v108;
  v104 = v25;
  while (2)
  {
    v27 = v97;
    if (!v21)
    {
      goto LABEL_8;
    }

    while (1)
    {
      while (1)
      {
        v28 = v27;
        v29 = v24;
        v30 = v12;
LABEL_12:
        v32 = v106;
        v33 = *(v108 + 48) + *(v106 + 72) * (__clz(__rbit64(v21)) | (v26 << 6));
        v34 = v105;
        v35 = v109;
        v96 = *(v106 + 16);
        (v96)(v105, v33, v109);
        v36 = *(v32 + 32);
        v12 = v30;
        v36(v30, v34, v35);
        v114 = 0u;
        memset(v115, 0, sizeof(v115));
        v113 = 0u;
        if (v102 > 1)
        {
          v24 = v29;
          if (v102 != 2)
          {
            v27 = v28;
            *(v112 + 6) = 0;
            *&v112[0] = 0;
            goto LABEL_26;
          }

          v37 = *(v94 + 16);
          v38 = sub_22FFB0588();
          v25 = v104;
          if (!v38)
          {
            goto LABEL_53;
          }

          v39 = v38;
          v40 = sub_22FFB05B8();
          if (__OFSUB__(v37, v40))
          {
            goto LABEL_51;
          }

          v41 = v37 - v40 + v39;
          sub_22FFB05A8();
          if (!v41)
          {
            goto LABEL_54;
          }

LABEL_24:
          v27 = v97;
          sub_22FF53FB0(&v113, v97);
          goto LABEL_27;
        }

        v24 = v29;
        if (v102)
        {
          v25 = v104;
          if (v92 < v95)
          {
            goto LABEL_50;
          }

          v42 = sub_22FFB0588();
          if (!v42)
          {
            goto LABEL_55;
          }

          v43 = v42;
          v44 = sub_22FFB05B8();
          if (__OFSUB__(v95, v44))
          {
            goto LABEL_52;
          }

          v45 = v95 - v44 + v43;
          sub_22FFB05A8();
          if (!v45)
          {
            goto LABEL_57;
          }

          goto LABEL_24;
        }

        v27 = v28;
        LOBYTE(v112[0]) = v95;
        *(v112 + 1) = *(&v94 + 1);
        *(v112 + 5) = *(&v94 + 5);
        BYTE7(v112[0]) = HIBYTE(v94);
        WORD4(v112[0]) = v29;
        BYTE10(v112[0]) = BYTE2(v29);
        BYTE11(v112[0]) = BYTE3(v29);
        BYTE12(v112[0]) = BYTE4(v29);
        BYTE13(v112[0]) = BYTE5(v29);
LABEL_26:
        sub_22FF53FB0(&v113, v27);
        v25 = v104;
LABEL_27:
        v21 &= v21 - 1;
        if ((*v100)(v27, 1, v101) != 1)
        {
          break;
        }

        (*v98)(v12, v109);
        sub_22FEAEA34(v27, &qword_27DAF1F08, &qword_22FFB4B00);
        if (!v21)
        {
          goto LABEL_8;
        }
      }

      v46 = v99;
      sub_22FF9F880(v27, v99, type metadata accessor for SEP.SealedHash);
      if ((*v46 & 4) != 0)
      {
        if (*(v93 + 16))
        {
          v47 = sub_22FFA6214(v12);
          v27 = v97;
          if (v48)
          {
            v49 = *(*(*(v93 + 56) + 8 * v47) + 16);
            if (v49)
            {
              if (*(v93 + 16))
              {
                v50 = sub_22FFA6214(v12);
                v27 = v97;
                if (v51)
                {
                  v52 = *(*(v93 + 56) + 8 * v50);
                  v53 = *(v52 + 16);
                  if (v53)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      sub_22FF9F8E8(v99, type metadata accessor for SEP.SealedHash);
      (*v98)(v12, v109);
      if (!v21)
      {
LABEL_8:
        while (1)
        {
          v31 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v31 >= v25)
          {
          }

          v21 = *(v17 + 8 * v31);
          ++v26;
          if (v21)
          {
            v28 = v27;
            v29 = v24;
            v30 = v12;
            v26 = v31;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_22FFB05A8();
LABEL_54:
        __break(1u);
LABEL_55:
        sub_22FFB05A8();
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
    }

    v54 = (v52 + (v53 << 6));
    v55 = *(v54 - 2);
    v56 = *(v54 - 1);
    v57 = *v54;
    *&v115[16] = v54[1];
    v114 = v56;
    *v115 = v57;
    v113 = v55;
    v87 = *&v115[8];
    v84 = v57;
    v89 = *(&v56 + 1);
    v93 = v56;
    v59 = *(&v55 + 1);
    v58 = v55;
    sub_22FEBF904(&v113, v112);
    v86 = v58;
    v85 = v59;
    sub_22FEA5608(v58, v59);
    sub_22FEBF8F0(v93, v89);
    v60 = v90;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v91;
    (v96)(v91, v12, v109);
    v62 = *v60;
    v110 = v62;
    v64 = sub_22FFA6214(v61);
    v65 = *(v62 + 16);
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_56;
    }

    v68 = *(v62 + 24);
    v83 = v24;
    if (v68 >= v67)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = v63;
        sub_22FF8E260();
        LOBYTE(v63) = v81;
      }

LABEL_43:
      v96 = v12;
      if ((v63 & 1) == 0)
      {
        goto LABEL_58;
      }

      v71 = v110;
      v72 = *(*(v110 + 56) + 8 * v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_22FF8FC68(v72);
      }

      if (v49 > *(v72 + 2))
      {
        goto LABEL_59;
      }

      v73 = &v72[64 * v49];
      v74 = *(v73 - 2);
      v75 = *(v73 - 1);
      v76 = v84 | 4;
      v77 = *(v73 + 1);
      v112[2] = *v73;
      v112[3] = v77;
      v112[0] = v74;
      v112[1] = v75;
      v78 = v85;
      *(v73 - 4) = v86;
      *(v73 - 3) = v78;
      v79 = v89;
      *(v73 - 2) = v93;
      *(v73 - 1) = v79;
      *v73 = v76;
      *(v73 + 1) = *v111;
      *(v73 + 1) = *&v111[3];
      *(v73 + 8) = v87;
      *(v73 + 3) = 0;
      sub_22FEBF960(v112);
      *(*(v71 + 56) + 8 * v64) = v72;

      sub_22FEBF960(&v113);
      v80 = *v98;
      (*v98)(v91, v109);
      sub_22FF9F8E8(v99, type metadata accessor for SEP.SealedHash);

      v93 = v110;
      *v90 = v110;
      v12 = v96;
      v80();
      v24 = v83;
      continue;
    }

    break;
  }

  LODWORD(v96) = v63;
  sub_22FF8BECC(v67, isUniquelyReferenced_nonNull_native);
  v69 = sub_22FFA6214(v91);
  v70 = v63 & 1;
  LOBYTE(v63) = v96;
  if ((v96 & 1) == v70)
  {
    v64 = v69;
    goto LABEL_43;
  }

  result = sub_22FFB1C18();
  __break(1u);
  return result;
}

uint64_t sub_22FF9CC3C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Proto_SealedHash(0);
  v45 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Proto_SealedHashLedger(0);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  result = MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  if (*(a2 + 16))
  {
    v39 = v19;
    v43 = v10;
    v40 = sub_22FFB0928();
    v42 = v22;
    MEMORY[0x28223BE20](v40);
    *(&v38 - 2) = a2;
    *(&v38 - 1) = v2;
    sub_22FF9F948(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
    sub_22FFB11B8();
    v23 = v45;
    (*(v45 + 56))(v21, 0, 1, v5);
    v24 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
    v25 = *(a1 + v24);
    v26 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FF9F760(v25 + v26, v12);
    v27 = *(v46 + 48);
    v28 = v27(v12, 1, v13);
    v41 = v13;
    if (v28 == 1)
    {
      *v15 = sub_22FFA6E68(MEMORY[0x277D84F90]);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v27(v12, 1, v13) != 1)
      {
        sub_22FEAEA34(v12, &qword_27DAF26E8, &qword_22FFB7C60);
      }
    }

    else
    {
      sub_22FF9F880(v12, v15, type metadata accessor for Proto_SealedHashLedger);
    }

    v29 = (*(v23 + 48))(v21, 1, v5);
    v30 = v43;
    if (v29 == 1)
    {
      sub_22FEAEA34(v21, &qword_27DAF38F0, &unk_22FFC0170);
      v31 = v39;
      sub_22FF8A3AC(v40, v42, v39);

      sub_22FEAEA34(v31, &qword_27DAF38F0, &unk_22FFC0170);
    }

    else
    {
      v32 = v44;
      sub_22FF9F880(v21, v44, type metadata accessor for Proto_SealedHash);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v15;
      sub_22FF8C7D8(v32, v40, v42, isUniquelyReferenced_nonNull_native);

      *v15 = v47;
    }

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a1 + v24);
    if ((v34 & 1) == 0)
    {
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v35 = sub_22FF10520(v35);
      *(a1 + v24) = v35;
    }

    v36 = v46;
    sub_22FF9F880(v15, v30, type metadata accessor for Proto_SealedHashLedger);
    (*(v36 + 56))(v30, 0, 1, v41);
    v37 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEFF0DC(v30, v35 + v37, &qword_27DAF26E8, &qword_22FFB7C60);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22FF9D1B4(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v4 = type metadata accessor for Proto_SealedHash(0);
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Proto_SealedHashLedger(0);
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF38F0, &unk_22FFC0170);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  result = MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  if (*(a2 + 16))
  {
    v45 = v17;
    v46 = v9;
    v47 = v12;
    if (qword_28148FA40 != -1)
    {
      swift_once();
    }

    v20 = sub_22FFB0958();
    __swift_project_value_buffer(v20, qword_2814913A0);
    v21 = sub_22FFB0928();
    v23 = v22;
    MEMORY[0x28223BE20](v21);
    *(&v43 - 2) = a2;
    *(&v43 - 1) = v2;
    sub_22FF9F948(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
    v24 = v54;
    sub_22FFB11B8();
    if (v24)
    {
    }

    else
    {
      v44 = v21;
      v54 = v23;
      (*(v50 + 56))(v19, 0, 1, v4);
      v25 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
      v26 = *(v52 + v25);
      v27 = &unk_281491000;
      v28 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      sub_22FF9F760(v26 + v28, v11);
      v29 = *(v51 + 48);
      v30 = v47;
      if (v29(v11, 1, v47) == 1)
      {
        v31 = sub_22FFA6E68(MEMORY[0x277D84F90]);
        v32 = v49;
        *v49 = v31;
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v33 = v30;
        v34 = v32;
        v27 = &unk_281491000;
        if (v29(v11, 1, v33) != 1)
        {
          sub_22FEAEA34(v11, &qword_27DAF26E8, &qword_22FFB7C60);
        }
      }

      else
      {
        v34 = v49;
        sub_22FF9F880(v11, v49, type metadata accessor for Proto_SealedHashLedger);
      }

      if ((*(v50 + 48))(v19, 1, v4) == 1)
      {
        sub_22FEAEA34(v19, &qword_27DAF38F0, &unk_22FFC0170);
        v35 = v45;
        sub_22FF8A3AC(v44, v54, v45);

        sub_22FEAEA34(v35, &qword_27DAF38F0, &unk_22FFC0170);
      }

      else
      {
        v36 = v48;
        sub_22FF9F880(v19, v48, type metadata accessor for Proto_SealedHash);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *v34;
        sub_22FF8C7D8(v36, v44, v54, isUniquelyReferenced_nonNull_native);

        *v34 = v53;
      }

      v38 = v52;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v38 + v25);
      if ((v39 & 1) == 0)
      {
        type metadata accessor for Proto_AttestationBundle._StorageClass(0);
        swift_allocObject();
        v40 = sub_22FF10520(v40);
        *(v38 + v25) = v40;
      }

      v41 = v46;
      sub_22FF9F880(v34, v46, type metadata accessor for Proto_SealedHashLedger);
      (*(v51 + 56))(v41, 0, 1, v47);
      v42 = v27[93];
      swift_beginAccess();
      sub_22FEFF0DC(v41, v40 + v42, &qword_27DAF26E8, &qword_22FFB7C60);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22FF9D7BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF9F6DC(a2, v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v8 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(a1 + v8, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FF9F880(v7, a1 + v8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return (*(v5 + 56))(a1 + v8, 0, 1, v4);
}

uint64_t sub_22FF9D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FF9D9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 16);
  if (v6)
  {
    a1 = sub_22FF226F0(&v11);
    v6 = v11;
    v7 = v12;
  }

  else
  {
    v7 = 1;
  }

  *v5 = v6;
  *(v5 + 8) = v7;
  MEMORY[0x28223BE20](a1);
  v10[2] = a3;
  v8 = sub_22FF7AEE0(sub_22FF9F7D0, v10, a2);

  *(v5 + 16) = v8;
  return result;
}

uint64_t sub_22FF9DAB0(_OWORD *a1, uint64_t a2)
{
  type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FF9F948(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);
  return sub_22FFB11B8();
}

uint64_t sub_22FF9DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = type metadata accessor for Proto_Cryptex(0);
  MEMORY[0x28223BE20](v5);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Proto_Cryptex.Salt(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 32);
  *a1 = v10;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v12;
  sub_22FEA5608(v11, v12);
  v15 = sub_22FEA55AC(v13, v14);
  v16 = *(a2 + 56);
  if (v16 && *(v24 + 147) == 1)
  {
    v17 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 28);

    *(a1 + v17) = v16;
  }

  if (v10 & 4) != 0 && (v15 = sub_22FECB038(&unk_2844D8490, v11, v12), (v15))
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v18 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v18, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF9F880(v9, a1 + v18, type metadata accessor for Proto_Cryptex.Salt);
    v19 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v19 - 8) + 56))(a1 + v18, 0, 1, v19);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    *(&v24 - 2) = a2;
    sub_22FF9F948(qword_281490550, type metadata accessor for Proto_Cryptex, &protocol conformance descriptor for Proto_Cryptex);
    v21 = v25;
    sub_22FFB11B8();
    v22 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v22, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF9F880(v21, a1 + v22, type metadata accessor for Proto_Cryptex);
    v23 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v23 - 8) + 56))(a1 + v22, 0, 1, v23);
  }
}

uint64_t sub_22FF9DEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a2 + 16);
  if (v7)
  {
    a1 = sub_22FF226F0(&v12);
    v7 = v12;
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  *v6 = v7;
  *(v6 + 8) = v8;
  MEMORY[0x28223BE20](a1);
  v11[2] = a3;
  result = sub_22FF7B110(sub_22FF9F828, v11, a2);
  if (!v3)
  {
    v10 = result;

    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_22FF9DF90(_OWORD *a1, uint64_t a2, void *a3)
{
  type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FF9F948(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);
  result = sub_22FFB11B8();
  if (v3)
  {
    *a3 = v3;
  }

  return result;
}

uint64_t sub_22FF9E068(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = type metadata accessor for Proto_SecureConfig(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = *(a2 + 32);
  v19 = *a2;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  sub_22FF91A04(&v19, v18);
  sub_22FEA55AC(v10, v11);
  *(a1 + 8) = v19;
  v16 = a2;
  v17 = a3;
  sub_22FF9F948(&qword_28148FD30, type metadata accessor for Proto_SecureConfig, &protocol conformance descriptor for Proto_SecureConfig);
  result = sub_22FFB11B8();
  if (!v3)
  {
    v13 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
    sub_22FEAEA34(a1 + v13, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF9F880(v9, a1 + v13, type metadata accessor for Proto_SecureConfig);
    v14 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v14 - 8) + 56))(a1 + v13, 0, 1, v14);
  }

  return result;
}

uint64_t *sub_22FF9E23C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  if (v4 >> 60 != 15)
  {
    v6 = result;
    v24 = v3;
    v7 = *(a2 + 16);
    sub_22FEA5608(v7, v4);
    sub_22FEA5608(v7, v4);
    SecureConfig.init(from:)(v7, v4, v20);
    v8 = v21;
    if (v21)
    {
      v10 = v20[0];
      v9 = v20[1];
      v12 = v22;
      v11 = v23;
      sub_22FEA56EC(v7, v4);
      if (*(a3 + 148))
      {
        v13 = v6[3];
        v14 = v6[4];
        sub_22FEA5608(v12, v11);
        sub_22FEA55AC(v13, v14);
        result = sub_22FF91A7C(v10, v9, v8, v12, v11);
        v6[3] = v12;
        v6[4] = v11;
      }

      else
      {
        v18 = *v6;
        v19 = v6[1];
        sub_22FEA5608(v10, v9);
        sub_22FEA55AC(v18, v19);
        *v6 = v10;
        v6[1] = v9;

        result = sub_22FF91A7C(v10, v9, v8, v12, v11);
        v6[2] = v8;
      }
    }

    else
    {
      type metadata accessor for NodeAttestor.Error(0);
      sub_22FF9F948(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
      swift_allocError();
      v16 = v15;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v17 - 8) + 56))(v16, 2, 7, v17);
      swift_willThrow();
      return sub_22FEA56EC(v7, v4);
    }
  }

  return result;
}

unint64_t sub_22FF9E448(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22FF9E514(v11, 0, 0, 1, a1, a2);
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
    sub_22FEBF2A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_22FF9E514(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22FF9E620(a5, a6);
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
    result = sub_22FFB19F8();
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

void *sub_22FF9E620(uint64_t a1, unint64_t a2)
{
  v3 = sub_22FF9E66C(a1, a2);
  sub_22FF9E79C(&unk_2844D82D8);
  return v3;
}

void *sub_22FF9E66C(uint64_t a1, unint64_t a2)
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

  v6 = sub_22FF6BE0C(v5, 0);
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

  result = sub_22FFB19F8();
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
        v10 = sub_22FFB1578();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22FF6BE0C(v10, 0);
        result = sub_22FFB1998();
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

uint64_t sub_22FF9E79C(uint64_t result)
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

  result = sub_22FF9E888(result, v11, 1, v3);
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

char *sub_22FF9E888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
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

_BYTE *sub_22FF9E9E4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22FF55698(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22FF9ED38(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22FF9EDB4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_22FF9EA78(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22FFB13C8();
      sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22FFB1358();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22FF9EC58(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22FF9EC58(v5, v6);
  }

  sub_22FFB13C8();
  sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22FFB1358();
}

uint64_t sub_22FF9EC58(uint64_t a1, uint64_t a2)
{
  result = sub_22FFB0588();
  if (!result || (result = sub_22FFB05B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FFB05A8();
      sub_22FFB13C8();
      sub_22FF9F948(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22FFB1358();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF9ED38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22FFB05D8();
  swift_allocObject();
  result = sub_22FFB0578();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22FFB0738();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22FF9EDB4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22FFB05D8();
  swift_allocObject();
  result = sub_22FFB0578();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s16CloudAttestation12NodeAttestorV5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0908();
  v33 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for NodeAttestor.Error(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39B0, &qword_22FFC0128);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  v20 = &v32 + *(v17 + 56) - v18;
  sub_22FF9F6DC(a1, &v32 - v18, type metadata accessor for NodeAttestor.Error);
  sub_22FF9F6DC(a2, v20, type metadata accessor for NodeAttestor.Error);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v19, 7, v21);
  if (v23 > 3)
  {
    if (v23 > 5)
    {
      if (v23 == 6)
      {
        if (v22(v20, 7, v21) != 6)
        {
          goto LABEL_23;
        }
      }

      else if (v22(v20, 7, v21) != 7)
      {
        goto LABEL_23;
      }
    }

    else if (v23 == 4)
    {
      if (v22(v20, 7, v21) != 4)
      {
        goto LABEL_23;
      }
    }

    else if (v22(v20, 7, v21) != 5)
    {
      goto LABEL_23;
    }
  }

  else if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (v22(v20, 7, v21) != 2)
      {
        goto LABEL_23;
      }
    }

    else if (v22(v20, 7, v21) != 3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!v23)
    {
      sub_22FF9F6DC(v19, v15, type metadata accessor for NodeAttestor.Error);
      v32 = *(v21 + 48);
      if (!v22(v20, 7, v21))
      {
        v27 = *(v33 + 32);
        v27(v12, v20, v4);
        v28 = v32;
        v27(v10, &v15[v32], v4);
        v27(v7, &v20[v28], v4);
        v29 = v33;
        v30 = sub_22FFB08C8();
        v31 = *(v29 + 8);
        v31(v15, v4);
        if (v30)
        {
          v25 = sub_22FFB08C8();
          v31(v7, v4);
          v31(v10, v4);
          v31(v12, v4);
          sub_22FF9F8E8(v19, type metadata accessor for NodeAttestor.Error);
          return v25 & 1;
        }

        v31(v7, v4);
        v31(v10, v4);
        v31(v12, v4);
        sub_22FF9F8E8(v19, type metadata accessor for NodeAttestor.Error);
        goto LABEL_24;
      }

      v24 = *(v33 + 8);
      v24(&v15[v32], v4);
      v24(v15, v4);
LABEL_23:
      sub_22FEAEA34(v19, &qword_27DAF39B0, &qword_22FFC0128);
LABEL_24:
      v25 = 0;
      return v25 & 1;
    }

    if (v22(v20, 7, v21) != 1)
    {
      goto LABEL_23;
    }
  }

  sub_22FF9F8E8(v19, type metadata accessor for NodeAttestor.Error);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_22FF9F3D8(uint64_t a1)
{
  sub_22FF9F430(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22FF9F430(uint64_t a1)
{
  if (!qword_27DAF39A8)
  {
    sub_22FFB0908();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF39A8);
    }
  }
}

uint64_t sub_22FF9F498(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_22FF55678(result);
    }

    else
    {
      sub_22FFB05D8();
      swift_allocObject();
      sub_22FFB0598();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22FFB0738();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22FF9F538(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39B8, &unk_22FFC0130);
  v10 = sub_22FEBF78C(&qword_28148F118, &qword_27DAF39B8, &unk_22FFC0130, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22FF9E9E4(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_22FF9F614(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_22FF5B58C(sub_22FF9F66C, v4, a1, a2);
}

uint64_t sub_22FF9F66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *v7;
  v9 = v7[1];
  sub_22FEA5608(*v7, v9);
  result = sub_22FF8FC7C(a3, a1, a2, v8, v9);
  a3[3] = result;
  return result;
}

uint64_t sub_22FF9F6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF9F760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FF9F880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF9F8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF9F948(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF9F994(uint64_t a1, uint64_t a2)
{
  sub_22FFB1648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
  sub_22FEBF78C(&qword_28148F130, &unk_27DAF3740, &unk_22FFB4290, MEMORY[0x277D83958]);
  v2 = sub_22FFB1458();

  return v2;
}

uint64_t NodeValidator.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NodeValidator(0);
  v3 = (v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = MEMORY[0x277D84F90];
  *(a1 + 64) = MEMORY[0x277D84F90];
  v10 = v3[10];
  v11 = sub_22FFB0908();
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  *(a1 + v3[21]) = 2;
  *(a1 + v3[23]) = 0;
  *(v8 + 8) = v9;
  v13 = v3[10];
  v12(&v8[v13], 1, 1, v11);
  v8[v3[21]] = 2;
  *&v8[v3[23]] = 0;
  static Environment.default.getter(&v16);
  NodeValidator.init(validity:environment:)(0xC0DDD92E56000000, 4683, &v16, v6);
  sub_22FEAEA34(&v8[v13], &qword_27DAF1510, &qword_22FFB3800);
  sub_22FFA7D78(v6, v8, type metadata accessor for NodeValidator);
  sub_22FEAEA34(a1 + v10, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FFA7D78(v8, a1, type metadata accessor for NodeValidator);
}

uint64_t NodeValidator.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v3 = sub_22FFB0A08();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for KeyOptionsPolicy(0);
  v5 = MEMORY[0x28223BE20](v68);
  v76 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v61 - v7;
  v8 = type metadata accessor for SecureConfigPolicy(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v74 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - v13;
  v15 = type metadata accessor for X509Policy(0);
  v16 = (v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v21 = type metadata accessor for NodeValidator(0);
  v22 = *(v1 + v21[10]);
  v23 = sub_22FFA5D10();
  sub_22FEBF3A4(v2 + v21[8], v14, &qword_27DAF1510, &qword_22FFB3800);
  *(v20 + 1) = MEMORY[0x277D84F90];
  v24 = v16[8];
  v25 = sub_22FFB0908();
  (*(*(v25 - 8) + 56))(&v20[v24], 1, 1, v25);
  v26 = &v20[v16[9]];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v20[v16[10]];
  LODWORD(v66) = v22;
  *v20 = v22;
  sub_22FED2C04(v23);
  v71 = v20;
  sub_22FEB3E04(v14, &v20[v24]);
  *v27 = 0;
  *(v27 + 1) = 0;
  *v26 = 0;
  v26[8] = 1;
  v28 = *(v2 + v21[21]);
  if (v28)
  {
    v29 = v28;
    sub_22FECB480(v28);
    sub_22FE9AC3C(0, 0);
    sub_22FEBAFF4(v28);
    sub_22FEA5C80(0, 0);
    v65 = v28;
    v66 = 0;
    v64 = 0;
  }

  else
  {
    SEPAttestationPolicy.init(insecure:)(v66 ^ 1, &v95);
    v31 = v95;
    v30 = v96;
    v32 = v97;
    sub_22FECB480(v95);
    sub_22FE9AC3C(v30, v32);
    v65 = v31;
    sub_22FEBAFF4(v31);
    v66 = v30;
    v64 = v32;
    sub_22FEA5C80(v30, v32);
  }

  v33 = *(v2 + v21[16]);
  v62 = v28 == 0;
  v63 = v33;
  v34 = type metadata accessor for SEP.SealedHash(0);
  v35 = v77;
  (*(*(v34 - 8) + 56))(v77, 1, 1, v34);
  v36 = *(v2 + v21[9]);
  sub_22FEAF43C(v2 + 8, v107);
  v107[40] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A18, &unk_22FFB3820);
  v37 = v69;
  v38 = swift_allocObject();
  v38[1] = xmmword_22FFB2D20;
  sub_22FFB09E8();
  sub_22FFB09D8();
  v95 = v38;
  sub_22FFA7E88(&qword_281491308, MEMORY[0x277CEE010], MEMORY[0x277CEE020]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A20, &unk_22FFC0180);
  sub_22FEBF78C(&qword_28148F150, &qword_27DAF1A20, &unk_22FFC0180, MEMORY[0x277D83970]);
  v39 = v67;
  v40 = v70;
  sub_22FFB1938();
  v41 = v72;
  (*(v37 + 32))(v72, v39, v40);
  type metadata accessor for KeyOptionsPolicy.Assertion(0);
  swift_storeEnumTagMultiPayload();
  v42 = *(v68 + 20);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  (*(*(v43 - 8) + 56))(v41 + v42, 1, 1, v43);
  v44 = v21[14];
  v45 = 3;
  v46 = v21[13];
  v47 = *(v2 + v21[12]);
  if (*(v2 + v21[15]))
  {
    v45 = 33816833;
  }

  v69 = v45;
  v48 = *(v2 + v46);
  v49 = *(v2 + v44);
  if (v47)
  {
    v50 = 1;
  }

  else
  {
    v50 = 2;
  }

  LODWORD(v68) = v50;
  if (v48)
  {
    v51 = 1;
  }

  else
  {
    v51 = 2;
  }

  if (v49)
  {
    v52 = 0;
  }

  else
  {
    v52 = 2;
  }

  sub_22FFA5E30();
  v54 = v53;
  LODWORD(v70) = *(v2 + v21[17]);
  v55 = v71;
  v56 = v73;
  sub_22FFA7DE0(v71, v73, type metadata accessor for X509Policy);
  v91 = v65;
  v92 = v66;
  v93 = v64;
  v94 = v62;
  v95 = v56;
  v96 = &v91;
  v89 = 0;
  v90 = v63;
  v98 = &v89;
  v57 = v35;
  v58 = v74;
  sub_22FFA7DE0(v57, v74, type metadata accessor for SecureConfigPolicy);
  v99 = v58;
  sub_22FFA5F40(v107, v88);
  v100 = v88;
  v59 = v76;
  sub_22FFA7DE0(v41, v76, type metadata accessor for KeyOptionsPolicy);
  v87 = 0;
  v86 = v69;
  v101 = v59;
  v102 = &v86;
  v83[0] = v68;
  v83[1] = v51;
  v83[2] = v52;
  v85 = 0;
  v84 = 2;
  v82[0] = v54;
  v82[1] = MEMORY[0x277D84F90];
  v103 = v83;
  v104 = v82;
  *(v81 + 7) = 0;
  v81[0] = 0;
  v78 = v70;
  v79 = 0;
  v80 = 0;
  v105 = v81;
  v106 = &v78;
  sub_22FFA1E58(&v95, v75);
  sub_22FFA6BC0(v41, type metadata accessor for KeyOptionsPolicy);
  sub_22FFA5F9C(v107);
  sub_22FFA6BC0(v77, type metadata accessor for SecureConfigPolicy);
  sub_22FFA6BC0(v55, type metadata accessor for X509Policy);

  sub_22FFA6BC0(v59, type metadata accessor for KeyOptionsPolicy);
  sub_22FFA5F9C(v88);
  sub_22FFA6BC0(v58, type metadata accessor for SecureConfigPolicy);

  sub_22FFA5FF0(v91, v92, v93);
  return sub_22FFA6BC0(v56, type metadata accessor for X509Policy);
}

uint64_t NodeValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  type metadata accessor for AttestationBundle(0);
  v7[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v7[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v7[36] = swift_task_alloc();
  v8 = sub_22FFB0EE8();
  v7[37] = v8;
  v7[38] = *(v8 - 8);
  v7[39] = swift_task_alloc();
  v9 = sub_22FFB0908();
  v7[40] = v9;
  v7[41] = *(v9 - 8);
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v10 = sub_22FFB13C8();
  v7[47] = v10;
  v7[48] = *(v10 - 8);
  v7[49] = swift_task_alloc();
  v11 = sub_22FFB1398();
  v7[50] = v11;
  v7[51] = *(v11 - 8);
  v7[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A8, &qword_22FFC01A0);
  v7[53] = swift_task_alloc();
  v7[54] = type metadata accessor for NodeValidator(0);
  v7[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA07BC, 0, 0);
}

uint64_t sub_22FFA07BC()
{
  v19 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  if (qword_281490908 != -1)
  {
    swift_once();
  }

  v1 = v0[55];
  v2 = v0[33];
  v3 = sub_22FFB12F8();
  v0[56] = __swift_project_value_buffer(v3, qword_281491460);
  sub_22FFA7DE0(v2, v1, type metadata accessor for NodeValidator);
  v4 = sub_22FFB12D8();
  v5 = sub_22FFB1848();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[55];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446210;
    v10 = Environment.rawValue.getter(v9);
    v12 = v11;
    sub_22FFA6BC0(v7, type metadata accessor for NodeValidator);
    v13 = sub_22FF9E448(v10, v12, v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22FE99000, v4, v5, "Validating attestation bundle in environment %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23190EFF0](v9, -1, -1);
    MEMORY[0x23190EFF0](v8, -1, -1);
  }

  else
  {

    sub_22FFA6BC0(v7, type metadata accessor for NodeValidator);
  }

  v14 = v0[53];
  sub_22FF88030();
  v0[22] = sub_22FFA7050(MEMORY[0x277D84F90]);
  NodeValidator.policy.getter(v14);
  v15 = swift_task_alloc();
  v0[57] = v15;
  *v15 = v0;
  v15[1] = sub_22FFA0A6C;
  v16 = v0[30];

  return sub_22FFA2AA4(v16, (v0 + 22));
}

uint64_t sub_22FFA0A6C()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_22FFA1C08;
  }

  else
  {
    sub_22FEAEA34(*(v2 + 424), &qword_27DAF21A8, &qword_22FFC01A0);
    v3 = sub_22FFA0BCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FFA0BCC()
{
  v129 = v0;
  v128 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if (*(v1 + 16) && (v2 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v3 & 1) != 0))
  {
    sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v123 = v0;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
    if (swift_dynamicCast())
    {
      v121 = *(v0 + 48);
      v122 = *(v0 + 64);
      v4 = *(v0 + 464);
      goto LABEL_12;
    }
  }

  else
  {
    sub_22FEAEA34(v0 + 16, &qword_27DAF1A78, &unk_22FFB3A50);
  }

  v4 = *(v0 + 464);
  v5 = *(v0 + 240);
  v6 = *(v5 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  sub_22FEA5608(v8, v7);
  SEP.Attestation.init(from:)(v8, v7, &v124);
  if (v4)
  {
    v9 = v4;

LABEL_16:
    v17 = v9;
    v18 = sub_22FFB12D8();
    v19 = sub_22FFB1838();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = v9;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_22FE99000, v18, v19, "AttestationBundle validation failed: %{public}@", v20, 0xCu);
      sub_22FEAEA34(v21, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v21, -1, -1);
      MEMORY[0x23190EFF0](v20, -1, -1);
    }

    swift_willThrow();

    v24 = v123[1];
    goto LABEL_19;
  }

  v121 = v124;
  v122 = v125;
LABEL_12:
  v120 = *(v0 + 448);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = *(v0 + 240);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 184;
  *(v13 + 24) = v0 + 192;
  sub_22FED55F8(v122, *(&v122 + 1), sub_22FEBF260);

  v14 = v124;
  sub_22FF85468(v11, v10, v124, *(&v124 + 1), v12, v120);
  v9 = v4;
  sub_22FEA56EC(v14, *(&v14 + 1));
  if (v4)
  {
    sub_22FEA55AC(v121, *(&v121 + 1));
    sub_22FEA55AC(v122, *(&v122 + 1));

    goto LABEL_16;
  }

  v124 = v121;
  v125 = v122;
  SEP.Attestation.publicKeyData.getter(&v126);
  v15 = v127;
  if ((~v127 & 0x3000000000000000) == 0)
  {

    type metadata accessor for CloudAttestationError(0);
    sub_22FFA7E88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v9 = swift_allocError();
    *v16 = 0xD000000000000017;
    v16[1] = 0x800000022FFC9B70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA55AC(v121, *(&v121 + 1));
    sub_22FEA55AC(v122, *(&v122 + 1));
    goto LABEL_16;
  }

  v117 = v122;
  v26 = v126;
  sub_22FEA5600(v126, v127);
  v27 = sub_22FFB12D8();
  v28 = sub_22FFB1848();
  sub_22FEBF27C(v26, v15);
  v118 = v26;
  v119 = v15;
  if (os_log_type_enabled(v27, v28))
  {
    v110 = *(v0 + 416);
    v114 = *(v0 + 408);
    v112 = *(v0 + 400);
    v29 = *(v0 + 392);
    v30 = *(v0 + 384);
    v31 = *(v0 + 376);
    buf = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *&v124 = v115;
    *buf = 136446210;
    sub_22FEA5600(v26, v15);
    sub_22FFA7E88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v111 = v28;
    sub_22FFB1388();
    sub_22FEA5600(v26, v15);
    sub_22FF9EA78(v26, v15 & 0xDFFFFFFFFFFFFFFFLL, v29);
    sub_22FEBF27C(v26, v15);
    sub_22FFB1368();
    sub_22FEBF27C(v26, v15);
    (*(v30 + 8))(v29, v31);
    sub_22FFA7E88(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
    v32 = sub_22FFB1BA8();
    v34 = v33;
    (*(v114 + 8))(v110, v112);
    v35 = sub_22FF9E448(v32, v34, &v124);

    *(buf + 4) = v35;
    _os_log_impl(&dword_22FE99000, v27, v111, "AttestationBundle passed validation for public key: %{public}s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x23190EFF0](v115, -1, -1);
    MEMORY[0x23190EFF0](buf, -1, -1);
  }

  v37 = *(v0 + 296);
  v36 = *(v0 + 304);
  v38 = *(v0 + 288);
  v39 = *(v0 + 240);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v40 = *(v39 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v41 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v40 + v41, v38, &qword_27DAF1520, &qword_22FFB3A30);
  v42 = *(v36 + 48);
  if (v42(v38, 1, v37) == 1)
  {
    v44 = *(v0 + 288);
    v43 = *(v0 + 296);
    sub_22FFB0ED8();
    if (v42(v44, 1, v43) != 1)
    {
      sub_22FEAEA34(*(v0 + 288), &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(*(v0 + 304) + 32))(*(v0 + 312), *(v0 + 288), *(v0 + 296));
  }

  v46 = *(v0 + 360);
  v45 = *(v0 + 368);
  v47 = *(v0 + 352);
  v49 = *(v0 + 320);
  v48 = *(v0 + 328);
  v51 = *(v0 + 304);
  v50 = *(v0 + 312);
  v52 = *(v0 + 296);
  v53 = *(v0 + 280);
  sub_22FFB0EB8();
  (*(v51 + 8))(v50, v52);
  if (sub_22FFB0888())
  {
    v54 = v46;
  }

  else
  {
    v54 = v45;
  }

  *&v122 = *(v48 + 16);
  (v122)(v47, v54, v49);
  *&v124 = *(v0 + 176);
  AttestationPolicyContext.proofExpiration.getter(v53);
  if ((*(v48 + 48))(v53, 1, v49) == 1)
  {
    sub_22FEAEA34(*(v0 + 280), &qword_27DAF1510, &qword_22FFB3800);
    v55 = v0;
    v56 = v0 + 176;
  }

  else
  {
    (*(*(v0 + 328) + 32))(*(v0 + 344), *(v0 + 280), *(v0 + 320));
    v55 = v0;
    v56 = v0 + 176;
    if (sub_22FFB0888())
    {
      (*(v123[41] + 40))(v123[44], v123[43], v123[40]);
    }

    else
    {
      (*(v123[41] + 8))(v123[43], v123[40]);
    }
  }

  v58 = v55[41];
  v57 = v55[42];
  v59 = v55[40];
  sub_22FFB08E8();
  v60 = sub_22FFB0878();
  v61 = *(v58 + 8);
  v61(v57, v59);
  if (v60)
  {
    if ((*(v55[33] + *(v55[54] + 72)) & 1) == 0)
    {
      v100 = v55[46];
      v101 = v123[45];
      v102 = v123[44];
      v103 = v123[40];

      type metadata accessor for CloudAttestationError(0);
      sub_22FFA7E88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
      v9 = swift_allocError();
      (v122)(v104, v102, v103);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22FEA55AC(v121, *(&v121 + 1));
      sub_22FEA55AC(v117, *(&v122 + 1));
      sub_22FEBF27C(v118, v119);
      v61(v101, v103);
      v61(v100, v103);
      v61(v102, v103);
      goto LABEL_16;
    }

    v62 = sub_22FFB12D8();
    v63 = sub_22FFB1838();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v124 = v65;
      *v64 = 136446210;
      swift_beginAccess();
      sub_22FFA7E88(&qword_281491330, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v66 = sub_22FFB1BA8();
      v68 = sub_22FF9E448(v66, v67, &v124);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_22FE99000, v62, v63, "Allowing expired bundle to fail open: expiration=%{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v69 = v65;
      v55 = v123;
      MEMORY[0x23190EFF0](v69, -1, -1);
      MEMORY[0x23190EFF0](v64, -1, -1);
    }
  }

  v116 = v61;
  v70 = v55[44];
  v71 = v55[40];
  v72 = v55[34];
  v73 = v55[30];
  v74 = v55[27];
  v75 = v55[28];
  *v74 = v118;
  v74[1] = v119;
  swift_beginAccess();
  (v122)(v75, v70, v71);
  sub_22FFA7DE0(v73, v72, type metadata accessor for AttestationBundle);
  v55[25] = 0;
  v55[26] = 0;
  v76 = swift_task_alloc();
  *(v76 + 16) = v56 + 24;
  *(v76 + 24) = v56 + 32;
  sub_22FEBF290(v118, v119);
  v77 = v117;
  sub_22FED55F8(v117, *(&v122 + 1), sub_22FEB341C);

  v78 = 0;
  v79 = 0;
  if (v125 != 2)
  {
    v80 = *(&v124 + 1);
    v81 = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_22FFB2D20;
    v83 = MEMORY[0x277D84D30];
    *(v82 + 56) = MEMORY[0x277D84CC0];
    *(v82 + 64) = v83;
    v84 = MEMORY[0x277D84D38];
    *(v82 + 32) = v81;
    v77 = v117;
    v85 = MEMORY[0x277D84D90];
    *(v82 + 96) = v84;
    *(v82 + 104) = v85;
    *(v82 + 72) = v80;
    v78 = sub_22FFB14D8();
  }

  v105 = v78;
  v106 = v79;
  v86 = v55[45];
  v87 = v55[46];
  v88 = v55[40];
  v89 = v55[34];
  v109 = v55[44];
  v90 = v55[29];
  v126 = v55[22];
  v91 = sub_22FEE2580();
  v107 = v92;
  v108 = v91;
  *&v124 = v55[22];
  v93 = AttestationPolicyContext.releaseDigest.getter();
  v95 = v94;
  sub_22FEA55AC(v121, *(&v121 + 1));
  sub_22FEA55AC(v77, *(&v122 + 1));
  sub_22FEBF27C(v118, v119);
  v116(v86, v88);
  v116(v87, v88);

  v96 = type metadata accessor for Validated.AttestationBundle(0);
  *(v90 + v96[8]) = 0;
  sub_22FFA7D78(v89, v90, type metadata accessor for AttestationBundle);
  v116(v109, v88);
  v97 = (v90 + v96[5]);
  *v97 = v105;
  v97[1] = v106;
  v98 = (v90 + v96[6]);
  *v98 = v108;
  v98[1] = v107;
  v99 = (v90 + v96[7]);
  *v99 = v93;
  v99[1] = v95;

  v24 = v123[1];
LABEL_19:

  return v24();
}

uint64_t sub_22FFA1C08()
{
  sub_22FEAEA34(v0[53], &qword_27DAF21A8, &qword_22FFC01A0);

  v1 = v0[58];
  v2 = v1;
  v3 = sub_22FFB12D8();
  v4 = sub_22FFB1838();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22FE99000, v3, v4, "AttestationBundle validation failed: %{public}@", v5, 0xCu);
    sub_22FEAEA34(v6, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v6, -1, -1);
    MEMORY[0x23190EFF0](v5, -1, -1);
  }

  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_22FFA1E58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F8, &qword_22FFC02F8);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - v5;
  type metadata accessor for X509Policy(0);
  sub_22FFA7DE0(*a1, v6, type metadata accessor for X509Policy);
  v36[0] = v6;
  v7 = &v6[v4[14]];
  v8 = a1[1];
  v9 = *(v8 + 8);
  v34 = *v8;
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  *v7 = v34;
  *(v7 + 8) = v9;
  *(v7 + 16) = v10;
  *(v7 + 24) = v11;
  v36[1] = v7;
  v12 = &v6[v4[30]];
  v13 = a1[5];
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  *v12 = v14;
  *(v12 + 8) = v13;
  v36[5] = v12;
  type metadata accessor for SecureConfigPolicy(0);
  v15 = &v6[v4[34]];
  sub_22FFA7DE0(a1[6], v15, type metadata accessor for SecureConfigPolicy);
  v36[6] = v15;
  v16 = &v6[v4[38]];
  sub_22FFA5F40(a1[7], v16);
  v36[7] = v16;
  type metadata accessor for KeyOptionsPolicy(0);
  v17 = &v6[v4[42]];
  sub_22FFA7DE0(a1[8], v17, type metadata accessor for KeyOptionsPolicy);
  v36[8] = v17;
  v18 = &v6[v4[46]];
  v19 = a1[9];
  v20 = a1[10];
  v21 = *(v19 + 4);
  *v18 = *v19;
  *(v18 + 4) = v21;
  v36[9] = v18;
  v22 = &v6[v4[50]];
  LOWORD(v19) = *v20;
  LOBYTE(v21) = *(v20 + 2);
  v23 = *(v20 + 5);
  LOWORD(v20) = *(v20 + 3);
  *v22 = v19;
  *(v22 + 2) = v21;
  *(v22 + 3) = v20;
  *(v22 + 5) = v23;
  v36[10] = v22;
  v24 = &v6[v4[54]];
  v25 = a1[11];
  v26 = a1[12];
  v27 = v25[1];
  *v24 = *v25;
  *(v24 + 1) = v27;
  v36[11] = v24;
  v28 = &v6[v4[58]];
  v29 = *v26;
  LOBYTE(v25) = *(v26 + 8);
  LOBYTE(v21) = *(v26 + 9);
  LOBYTE(v26) = *(v26 + 10);
  *v28 = v29;
  *(v28 + 8) = v25;
  *(v28 + 9) = v21;
  *(v28 + 10) = v26;
  v36[12] = v28;
  v30 = &v6[v4[62]];
  v31 = a1[13];
  LOBYTE(v26) = *v31;
  v32 = *(v31 + 8);
  LOBYTE(v31) = *(v31 + 16);
  *v30 = v26;
  *(v30 + 8) = v32;
  *(v30 + 16) = v31;
  v36[13] = v30;
  sub_22FFA2374(v36, v35);
  sub_22FFA7E48(v34, v9, v10);
}

uint64_t sub_22FFA20EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F0, &qword_22FFC02E8);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - v6;
  type metadata accessor for X509Policy(0);
  sub_22FFA7DE0(*a1, v7, type metadata accessor for X509Policy);
  v35[0] = v7;
  v8 = &v7[v5[14]];
  sub_22FEBF3A4(a1[1], v8, &qword_27DAF1A10, &qword_22FFC02F0);
  v35[1] = v8;
  v9 = &v7[v5[18]];
  v10 = a1[2];
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 1) = v11;
  *(v9 + 2) = v13;
  v35[2] = v9;
  v14 = &v7[v5[30]];
  v15 = a1[5];
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  *v14 = v16;
  *(v14 + 8) = v15;
  v35[5] = v14;
  type metadata accessor for SecureConfigPolicy(0);
  v17 = &v7[v5[34]];
  sub_22FFA7DE0(a1[6], v17, type metadata accessor for SecureConfigPolicy);
  v35[6] = v17;
  type metadata accessor for KeyOptionsPolicy(0);
  v18 = &v7[v5[38]];
  sub_22FFA7DE0(a1[7], v18, type metadata accessor for KeyOptionsPolicy);
  v35[7] = v18;
  type metadata accessor for SoftwareReleasePolicy(0);
  v19 = &v7[v5[42]];
  sub_22FFA7DE0(a1[8], v19, type metadata accessor for SoftwareReleasePolicy);
  v35[8] = v19;
  v20 = &v7[v5[46]];
  v21 = a1[9];
  v22 = a1[10];
  v23 = *v21;
  v24 = *(v21 + 1);
  v25 = *(v21 + 2);
  v26 = *(v21 + 12);
  v27 = *(v21 + 4);
  LODWORD(v21) = *(v21 + 20);
  *v20 = v23;
  *(v20 + 1) = v24;
  *(v20 + 2) = v25;
  *(v20 + 4) = v27;
  *(v20 + 12) = v26;
  *(v20 + 20) = v21;
  v35[9] = v20;
  v28 = &v7[v5[50]];
  LOWORD(v21) = *v22;
  v29 = *(v22 + 2);
  v30 = *(v22 + 3);
  LOBYTE(v22) = *(v22 + 5);
  *v28 = v21;
  *(v28 + 2) = v29;
  *(v28 + 5) = v22;
  *(v28 + 3) = v30;
  v35[10] = v28;
  v31 = &v7[v5[54]];
  v32 = a1[11];
  v33 = v32[1];
  *v31 = *v32;
  *(v31 + 1) = v33;
  v35[11] = v31;
  sub_22FFA2514(v35, a2);
  sub_22FECB480(v12);
  sub_22FE9AC3C(v11, v13);
}

__n128 sub_22FFA2374@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FFA7D78(*a1, a2, type metadata accessor for X509Policy);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F8, &qword_22FFC02F8);
  v5 = a2 + v4[12];
  v6 = a1[1];
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *v5 = *v6;
  *(v5 + 16) = v7;
  *(v5 + 24) = v8;
  v9 = a2 + v4[28];
  v11 = a1[5];
  v10 = a1[6];
  v12 = *v11;
  LOBYTE(v11) = *(v11 + 8);
  *v9 = v12;
  *(v9 + 8) = v11;
  sub_22FFA7D78(v10, a2 + v4[32], type metadata accessor for SecureConfigPolicy);
  v13 = (a2 + v4[36]);
  v15 = a1[7];
  v14 = a1[8];
  v16 = *v15;
  v17 = v15[1];
  *(v13 + 25) = *(v15 + 25);
  *v13 = v16;
  v13[1] = v17;
  sub_22FFA7D78(v14, a2 + v4[40], type metadata accessor for KeyOptionsPolicy);
  v18 = a2 + v4[44];
  v19 = a1[9];
  v20 = a1[10];
  v21 = *v19;
  *(v18 + 4) = *(v19 + 4);
  *v18 = v21;
  v22 = a2 + v4[48];
  LOWORD(v19) = *v20;
  LOBYTE(v21) = *(v20 + 2);
  v23 = *(v20 + 5);
  LOWORD(v20) = *(v20 + 3);
  *v22 = v19;
  *(v22 + 2) = v21;
  *(v22 + 3) = v20;
  *(v22 + 5) = v23;
  v24 = a1[12];
  result = *a1[11];
  *(a2 + v4[52]) = result;
  v26 = a2 + v4[56];
  v27 = *v24;
  LOBYTE(v21) = *(v24 + 8);
  v28 = *(v24 + 9);
  LOBYTE(v24) = *(v24 + 10);
  *v26 = v27;
  *(v26 + 8) = v21;
  *(v26 + 9) = v28;
  *(v26 + 10) = v24;
  v29 = a2 + v4[60];
  v30 = a1[13];
  LOBYTE(v24) = *v30;
  v31 = *(v30 + 8);
  LOBYTE(v30) = *(v30 + 16);
  *v29 = v24;
  *(v29 + 8) = v31;
  *(v29 + 16) = v30;
  return result;
}

__n128 sub_22FFA2514@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FFA7D78(*a1, a2, type metadata accessor for X509Policy);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F0, &qword_22FFC02E8);
  sub_22FEBF4E4(a1[1], a2 + v4[12], &qword_27DAF1A10, &qword_22FFC02F0);
  v5 = a2 + v4[16];
  v6 = a1[2];
  v7 = *(v6 + 16);
  *v5 = *v6;
  *(v5 + 16) = v7;
  v8 = a2 + v4[28];
  v10 = a1[5];
  v9 = a1[6];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v8 = v11;
  *(v8 + 8) = v10;
  sub_22FFA7D78(v9, a2 + v4[32], type metadata accessor for SecureConfigPolicy);
  sub_22FFA7D78(a1[7], a2 + v4[36], type metadata accessor for KeyOptionsPolicy);
  sub_22FFA7D78(a1[8], a2 + v4[40], type metadata accessor for SoftwareReleasePolicy);
  v12 = a2 + v4[44];
  v13 = a1[9];
  v14 = a1[10];
  v15 = *v13;
  v16 = *(v13 + 1);
  v17 = *(v13 + 2);
  v18 = *(v13 + 12);
  v19 = *(v13 + 4);
  LODWORD(v13) = *(v13 + 20);
  *v12 = v15;
  *(v12 + 1) = v16;
  *(v12 + 2) = v17;
  *(v12 + 4) = v19;
  *(v12 + 12) = v18;
  *(v12 + 20) = v13;
  v20 = a2 + v4[48];
  LOWORD(v13) = *v14;
  v21 = *(v14 + 2);
  v22 = *(v14 + 5);
  LOWORD(v14) = *(v14 + 3);
  *v20 = v13;
  *(v20 + 2) = v21;
  *(v20 + 3) = v14;
  *(v20 + 5) = v22;
  v23 = a1[11];
  result = *v23;
  *(a2 + v4[52]) = *v23;
  return result;
}

__n128 sub_22FFA26AC@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F8, &qword_22FFC02F8);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  sub_22FEBF3A4(v2, &v36 - v6, &qword_27DAF39F8, &qword_22FFC02F8);
  sub_22FFA7D78(v7, *a1, type metadata accessor for X509Policy);
  v8 = a1[1];
  v9 = &v7[v5[14]];
  v10 = *(v9 + 2);
  v11 = v9[24];
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 24) = v11;
  v12 = &v7[v5[30]];
  v13 = *v12;
  LOBYTE(v12) = v12[8];
  v15 = a1[5];
  v14 = a1[6];
  *v15 = v13;
  *(v15 + 8) = v12;
  sub_22FFA7D78(&v7[v5[34]], v14, type metadata accessor for SecureConfigPolicy);
  v16 = &v7[v5[38]];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 25);
  v21 = a1[7];
  v20 = a1[8];
  *(v21 + 25) = v19;
  *v21 = v17;
  v21[1] = v18;
  sub_22FFA7D78(&v7[v5[42]], v20, type metadata accessor for KeyOptionsPolicy);
  v22 = &v7[v5[46]];
  v23 = *v22;
  v24 = a1[9];
  v25 = a1[10];
  *(v24 + 4) = *(v22 + 2);
  *v24 = v23;
  v26 = &v7[v5[50]];
  LOWORD(v23) = *v26;
  LOBYTE(v24) = v26[2];
  v27 = v26[5];
  LOWORD(v26) = *(v26 + 3);
  *v25 = v23;
  *(v25 + 2) = v24;
  *(v25 + 3) = v26;
  *(v25 + 5) = v27;
  result = *&v7[v5[54]];
  v29 = a1[12];
  *a1[11] = result;
  v30 = &v7[v5[58]];
  v31 = *v30;
  LOBYTE(v25) = v30[8];
  v32 = v30[9];
  LOBYTE(v30) = v30[10];
  *v29 = v31;
  *(v29 + 8) = v25;
  *(v29 + 9) = v32;
  *(v29 + 10) = v30;
  v33 = a1[13];
  v34 = &v7[v5[62]];
  LOBYTE(v31) = *v34;
  v35 = *(v34 + 1);
  LOBYTE(v34) = v34[16];
  *v33 = v31;
  *(v33 + 8) = v35;
  *(v33 + 16) = v34;
  return result;
}

__n128 sub_22FFA28AC@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F0, &qword_22FFC02E8);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  sub_22FEBF3A4(v2, &v29 - v6, &qword_27DAF39F0, &qword_22FFC02E8);
  sub_22FFA7D78(v7, *a1, type metadata accessor for X509Policy);
  sub_22FEBF4E4(&v7[v5[14]], a1[1], &qword_27DAF1A10, &qword_22FFC02F0);
  v8 = a1[2];
  v9 = &v7[v5[18]];
  v10 = *(v9 + 2);
  *v8 = *v9;
  *(v8 + 16) = v10;
  v11 = &v7[v5[30]];
  v12 = *v11;
  LOBYTE(v11) = v11[8];
  v14 = a1[5];
  v13 = a1[6];
  *v14 = v12;
  *(v14 + 8) = v11;
  sub_22FFA7D78(&v7[v5[34]], v13, type metadata accessor for SecureConfigPolicy);
  sub_22FFA7D78(&v7[v5[38]], a1[7], type metadata accessor for KeyOptionsPolicy);
  sub_22FFA7D78(&v7[v5[42]], a1[8], type metadata accessor for SoftwareReleasePolicy);
  v15 = &v7[v5[46]];
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = *(v15 + 12);
  v20 = *(v15 + 5);
  v21 = *(v15 + 4);
  v22 = a1[9];
  v23 = a1[10];
  *v22 = v16;
  *(v22 + 1) = v17;
  *(v22 + 2) = v18;
  *(v22 + 4) = v21;
  *(v22 + 12) = v19;
  *(v22 + 20) = v20;
  v24 = &v7[v5[50]];
  v25 = *v24;
  v26 = v24[2];
  v27 = v24[5];
  LOWORD(v24) = *(v24 + 3);
  *v23 = v25;
  *(v23 + 2) = v26;
  *(v23 + 3) = v24;
  *(v23 + 5) = v27;
  result = *&v7[v5[54]];
  *a1[11] = result;
  return result;
}

uint64_t sub_22FFA2AA4(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F8, &qword_22FFC02F8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA2B48, 0, 0);
}

uint64_t sub_22FFA2B48()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[21] = type metadata accessor for X509Policy(0);
  v0[2] = v1;
  v0[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3A00, &qword_22FFC0300);
  v0[3] = v1 + v2[12];
  v0[7] = v1 + v2[28];
  v0[23] = type metadata accessor for SecureConfigPolicy(0);
  v0[8] = v1 + v2[32];
  v0[9] = v1 + v2[36];
  v0[24] = type metadata accessor for KeyOptionsPolicy(0);
  v0[10] = v1 + v2[40];
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3A08, &unk_22FFC0308);
  v0[11] = v1 + v2[44];
  v0[12] = v1 + v2[48];
  v0[13] = v1 + v2[52];
  v0[14] = v1 + v2[56];
  v0[15] = v1 + v2[60];
  sub_22FFA26AC(v0 + 2);
  v3 = v0[21];
  v0[26] = 0;
  v0[27] = v3;
  v4 = *(v3 - 8);
  v0[28] = v4;
  v0[29] = swift_task_alloc();
  (*(v4 + 16))();
  v9 = off_2844DA3A0 + *off_2844DA3A0;
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_22FFA2DD8;
  v7 = v0[16];
  v6 = v0[17];

  return (v9)(v7, v6, v3, &protocol witness table for X509Policy);
}

uint64_t sub_22FFA2DD8()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[28] + 8))(v2[29], v2[27]);
  if (v0)
  {
    v3 = sub_22FFA32A8;
  }

  else
  {

    v3 = sub_22FFA2F4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FFA2F4C()
{
  v1 = v0[26];
  v0[26] = v1 + 1;
  v2 = &protocol witness table for APTicketPolicy;
  v3 = &type metadata for APTicketPolicy;
  switch(v1)
  {
    case 1:
      goto LABEL_17;
    case 2:
      v2 = &protocol witness table for LocalBootPolicy;
      v3 = &type metadata for LocalBootPolicy;
      goto LABEL_17;
    case 3:
      v2 = &protocol witness table for SEPImagePolicy;
      v3 = &type metadata for SEPImagePolicy;
      goto LABEL_17;
    case 4:
      v2 = &protocol witness table for CryptexPolicy;
      v3 = &type metadata for CryptexPolicy;
      goto LABEL_17;
    case 5:
      v3 = v0[23];
      v2 = &protocol witness table for SecureConfigPolicy;
      goto LABEL_17;
    case 6:
      v2 = &protocol witness table for TransparencyPolicy;
      v3 = &type metadata for TransparencyPolicy;
      goto LABEL_17;
    case 7:
      v3 = v0[24];
      v2 = &protocol witness table for KeyOptionsPolicy;
      goto LABEL_17;
    case 8:
      v3 = v0[25];
      v2 = &protocol witness table for PolicyBuilder.OptionalPolicy<A>;
      goto LABEL_17;
    case 9:
      v2 = &protocol witness table for DeviceModePolicy;
      v3 = &type metadata for DeviceModePolicy;
      goto LABEL_17;
    case 10:
      v2 = &protocol witness table for DarwinInitPolicy;
      v3 = &type metadata for DarwinInitPolicy;
      goto LABEL_17;
    case 11:
      v2 = &protocol witness table for RoutingHintPolicy;
      v3 = &type metadata for RoutingHintPolicy;
      goto LABEL_17;
    case 12:
      v2 = &protocol witness table for EnsembleMembersPolicy;
      v3 = &type metadata for EnsembleMembersPolicy;
      goto LABEL_17;
    case 13:
      sub_22FEAEA34(v0[20], &qword_27DAF39F8, &qword_22FFC02F8);

      v4 = v0[1];

      return v4();
    default:
      v3 = v0[22];
      v2 = &protocol witness table for PolicyBuilder.ConditionalPolicy<A, B>;
LABEL_17:
      v0[27] = v3;
      Description = v3[-1].Description;
      v0[28] = Description;
      v0[29] = swift_task_alloc();
      Description[2]();
      v10 = (v2[1] + *v2[1]);
      v7 = swift_task_alloc();
      v0[30] = v7;
      *v7 = v0;
      v7[1] = sub_22FFA2DD8;
      v9 = v0[16];
      v8 = v0[17];

      return v10(v9, v8, v3, v2);
  }
}

uint64_t sub_22FFA32A8()
{
  v1 = *(v0 + 160);

  sub_22FEAEA34(v1, &qword_27DAF39F8, &qword_22FFC02F8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FFA3330(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39F0, &qword_22FFC02E8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA33D4, 0, 0);
}

uint64_t sub_22FFA33D4()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[19] = type metadata accessor for X509Policy(0);
  v0[2] = v1;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A10, &qword_22FFC02F0);
  v0[3] = v1 + v2[12];
  v0[4] = v1 + v2[16];
  v0[7] = v1 + v2[28];
  v0[21] = type metadata accessor for SecureConfigPolicy(0);
  v0[8] = v1 + v2[32];
  v0[22] = type metadata accessor for KeyOptionsPolicy(0);
  v0[9] = v1 + v2[36];
  v0[23] = type metadata accessor for SoftwareReleasePolicy(0);
  v0[10] = v1 + v2[40];
  v0[11] = v1 + v2[44];
  v0[12] = v1 + v2[48];
  v0[13] = v1 + v2[52];
  sub_22FFA28AC(v0 + 2);
  v3 = v0[19];
  v0[24] = 0;
  v0[25] = v3;
  v4 = *(v3 - 8);
  v0[26] = v4;
  v0[27] = swift_task_alloc();
  (*(v4 + 16))();
  v9 = off_2844DA3A0 + *off_2844DA3A0;
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_22FFA364C;
  v7 = v0[14];
  v6 = v0[15];

  return (v9)(v7, v6, v3, &protocol witness table for X509Policy);
}

uint64_t sub_22FFA364C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  (*(v2[26] + 8))(v2[27], v2[25]);
  if (v0)
  {
    v3 = sub_22FFA3B28;
  }

  else
  {

    v3 = sub_22FFA37C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FFA37C0()
{
  v1 = v0[24];
  v0[24] = v1 + 1;
  if (v1 <= 5)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = &protocol witness table for SEPImagePolicy;
        v2 = &type metadata for SEPImagePolicy;
      }

      else if (v1 == 4)
      {
        v3 = &protocol witness table for CryptexPolicy;
        v2 = &type metadata for CryptexPolicy;
      }

      else
      {
        v2 = v0[21];
        v3 = &protocol witness table for SecureConfigPolicy;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = &type metadata for SEPAttestationPolicy;
      }

      else
      {
        v2 = &type metadata for APTicketPolicy;
      }

      if (v1 == 1)
      {
        v3 = &protocol witness table for SEPAttestationPolicy;
      }

      else
      {
        v3 = &protocol witness table for APTicketPolicy;
      }
    }

    else
    {
      v2 = v0[20];
      v3 = &protocol witness table for PolicyBuilder.OptionalPolicy<A>;
    }

    goto LABEL_26;
  }

  if (v1 <= 8)
  {
    if (v1 == 6)
    {
      v2 = v0[22];
      v3 = &protocol witness table for KeyOptionsPolicy;
    }

    else if (v1 == 7)
    {
      v2 = v0[23];
      v3 = &protocol witness table for SoftwareReleasePolicy;
    }

    else
    {
      v3 = &protocol witness table for HardwareIdentifiersPolicy;
      v2 = &type metadata for HardwareIdentifiersPolicy;
    }

LABEL_26:
    v0[25] = v2;
    Description = v2[-1].Description;
    v0[26] = Description;
    v0[27] = swift_task_alloc();
    Description[2]();
    v10 = (v3[1] + *v3[1]);
    v5 = swift_task_alloc();
    v0[28] = v5;
    *v5 = v0;
    v5[1] = sub_22FFA364C;
    v7 = v0[14];
    v6 = v0[15];

    return v10(v7, v6, v2, v3);
  }

  if (v1 == 9)
  {
    v3 = &protocol witness table for DeviceModePolicy;
    v2 = &type metadata for DeviceModePolicy;
    goto LABEL_26;
  }

  if (v1 == 10)
  {
    v3 = &protocol witness table for DarwinInitPolicy;
    v2 = &type metadata for DarwinInitPolicy;
    goto LABEL_26;
  }

  sub_22FEAEA34(v0[18], &qword_27DAF39F0, &qword_22FFC02E8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22FFA3B28()
{
  v1 = *(v0 + 144);

  sub_22FEAEA34(v1, &qword_27DAF39F0, &qword_22FFC02E8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FFA3BB0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FFA3BD4, 0, 0);
}

uint64_t sub_22FFA3BD4()
{
  sub_22FEF4004(v0[10], (v0 + 2));
  v1 = off_2844DA278;
  v0[11] = off_2844DA278;
  v0[12] = swift_task_alloc();
  v1[2]();
  v6 = off_2844DA210 + *off_2844DA210;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_22FFA3D7C;
  v4 = v0[8];
  v3 = v0[9];

  return (v6)(v4, v3, &type metadata for ProxiedReleaseTransparencyPolicy, &protocol witness table for ProxiedReleaseTransparencyPolicy);
}

uint64_t sub_22FFA3D7C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, &type metadata for ProxiedReleaseTransparencyPolicy);
  if (v0)
  {
    v4 = sub_22FFA3F48;
  }

  else
  {

    v4 = sub_22FFA3EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FFA3EE4()
{
  sub_22FEF4060(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FFA3F48()
{

  sub_22FEF4060(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FFA3FB4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A0, &unk_22FFB6210);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA4064, 0, 0);
}

uint64_t sub_22FFA4064()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v0[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A8, &qword_22FFC01A0);
  v5 = *(v4 + 48);
  sub_22FEBF3A4(v3, v1, &qword_27DAF21A0, &unk_22FFB6210);
  sub_22FEBF4E4(v1, v2, &qword_27DAF21A8, &qword_22FFC01A0);
  *(v2 + v5) = *(v1 + *(v4 + 48));
  v6 = v0[8];
  v0[9] = 0;
  v0[10] = v6;
  v7 = *(v6 - 8);
  v0[11] = v7;
  v0[12] = swift_task_alloc();
  (*(v7 + 16))();
  v12 = off_2844DB228 + *off_2844DB228;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_22FFA4280;
  v10 = v0[2];
  v9 = v0[3];

  return (v12)(v10, v9, v6, &protocol witness table for PolicyBuilder.TuplePolicy<Pack{repeat A}>);
}

uint64_t sub_22FFA4280()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_22FFA4628;
  }

  else
  {

    v3 = sub_22FFA43F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FFA43F4()
{
  v1 = v0[9] + 1;
  v0[9] = v1;
  if (v1 == 2)
  {
    sub_22FEAEA34(v0[7], &qword_27DAF21A0, &unk_22FFB6210);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[10] = &type metadata for ProxiedReleasePolicy;
    v4 = off_2844DA158;
    v0[11] = off_2844DA158;
    v0[12] = swift_task_alloc();
    v4[2]();
    v8 = off_2844DA0F0 + *off_2844DA0F0;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_22FFA4280;
    v7 = v0[2];
    v6 = v0[3];

    return (v8)(v7, v6, &type metadata for ProxiedReleasePolicy, &protocol witness table for ProxiedReleasePolicy);
  }
}

uint64_t sub_22FFA4628()
{
  v1 = *(v0 + 56);

  sub_22FEAEA34(v1, &qword_27DAF21A0, &unk_22FFB6210);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FFA46B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE0, &unk_22FFB40E0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FFA4768, 0, 0);
}

uint64_t sub_22FFA4768()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v0[8] = type metadata accessor for X509Policy(0);
  v5 = v2 + *(v4 + 48);
  sub_22FEBF3A4(v3, v1, &qword_27DAF1CE0, &unk_22FFB40E0);
  sub_22FFA7D78(v1, v2, type metadata accessor for X509Policy);
  v6 = v1 + *(v4 + 48);
  v7 = *(v6 + 16);
  *v5 = *v6;
  *(v5 + 16) = v7;
  v8 = v0[8];
  v0[9] = 0;
  v0[10] = v8;
  v9 = *(v8 - 8);
  v0[11] = v9;
  v0[12] = swift_task_alloc();
  (*(v9 + 16))();
  v14 = off_2844DA3A0 + *off_2844DA3A0;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_22FFA4984;
  v12 = v0[2];
  v11 = v0[3];

  return (v14)(v12, v11, v8, &protocol witness table for X509Policy);
}

uint64_t sub_22FFA4984()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_22FFA4D2C;
  }

  else
  {

    v3 = sub_22FFA4AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FFA4AF8()
{
  v1 = v0[9] + 1;
  v0[9] = v1;
  if (v1 == 2)
  {
    sub_22FEAEA34(v0[7], &qword_27DAF1CE0, &unk_22FFB40E0);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[10] = &type metadata for SEPAttestationPolicy;
    v4 = off_2844DB800;
    v0[11] = off_2844DB800;
    v0[12] = swift_task_alloc();
    v4[2]();
    v8 = off_2844DB798 + *off_2844DB798;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_22FFA4984;
    v7 = v0[2];
    v6 = v0[3];

    return (v8)(v7, v6, &type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy);
  }
}

uint64_t sub_22FFA4D2C()
{
  v1 = *(v0 + 56);

  sub_22FEAEA34(v1, &qword_27DAF1CE0, &unk_22FFB40E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t NodeValidator.init(environment:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NodeValidator(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  *(a2 + 64) = MEMORY[0x277D84F90];
  v8 = v5[10];
  v9 = sub_22FFB0908();
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  *(a2 + v5[21]) = 2;
  *(a2 + v5[23]) = 0;
  v12 = a1;
  NodeValidator.init(validity:environment:)(0xC0DDD92E56000000, 4683, &v12, v7);
  sub_22FEAEA34(a2 + v8, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FFA7D78(v7, a2, type metadata accessor for NodeValidator);
}

uint64_t NodeValidator.init(validity:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  *(a4 + 64) = MEMORY[0x277D84F90];
  v8 = type metadata accessor for NodeValidator(0);
  v9 = v8[8];
  v10 = sub_22FFB0908();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *(a4 + v8[19]) = 2;
  *(a4 + v8[21]) = 0;
  *(a4 + 48) = a1;
  *(a4 + 56) = a2;
  *(a4 + 32) = &type metadata for SWTransparencyVerifier;
  *(a4 + 40) = &protocol witness table for SWTransparencyVerifier;
  if (MEMORY[0x277D73580])
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    v11 = 0;
  }

  *(a4 + 8) = v11;
  *a4 = v7;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v12 = sub_22FF9A468(qword_281491490, *algn_281491498, qword_2814914A0);
  v13 = 0x3F8u >> v7;
  if (v12 == 2)
  {
    v14 = 0x3F8u >> v7;
  }

  else
  {
    v14 = v12;
  }

  *(a4 + v8[9]) = v14 & 1;
  v15 = sub_22FF9A468(qword_2814914B0, unk_2814914B8, qword_2814914C0);
  if (v15 == 2)
  {
    v16 = 0x3F8u >> v7;
  }

  else
  {
    v16 = v15;
  }

  *(a4 + v8[10]) = v16 & 1;
  v17 = sub_22FF9A468(qword_2814914D0, unk_2814914D8, qword_2814914E0);
  if (v17 == 2)
  {
    v18 = 0x3C0u >> v7;
  }

  else
  {
    v18 = v17;
  }

  *(a4 + v8[11]) = v18 & 1;
  v19 = sub_22FF9A468(qword_2814914F0, unk_2814914F8, qword_281491500);
  if (v19 == 2)
  {
    v20 = 0x3F8u >> v7;
  }

  else
  {
    v20 = v19;
  }

  *(a4 + v8[12]) = v20 & 1;
  v21 = sub_22FF9A468(qword_281491510, unk_281491518, qword_281491520);
  if (v21 == 2)
  {
    v22 = 0x3F8u >> v7;
  }

  else
  {
    v22 = v21;
  }

  *(a4 + v8[13]) = v22 & 1;
  v23 = sub_22FF9A468(qword_281491530, unk_281491538, qword_281491540);
  v24 = v7 == 9;
  if (v23 == 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  *(a4 + v8[14]) = v25;
  v26 = sub_22FF9A468(qword_281491550, unk_281491558, qword_281491560);
  if (v26 == 2)
  {
    v27 = v24;
  }

  else
  {
    v27 = v26;
  }

  *(a4 + v8[15]) = v27;
  v28 = sub_22FF9A468(qword_281491570, unk_281491578, qword_281491580);
  if (v28 == 2)
  {
    v29 = v13;
  }

  else
  {
    v29 = v28;
  }

  *(a4 + v8[16]) = v29 & 1;
  v30 = sub_22FF9A468(qword_281491650, unk_281491658, qword_281491660);
  if (v30 == 2)
  {
    v31 = v13;
  }

  else
  {
    v31 = v30;
  }

  *(a4 + v8[17]) = v31 & 1;
  *(a4 + v8[18]) = sub_22FF9A468(qword_281491590, unk_281491598, qword_2814915A0) & 1;
  result = sub_22FF9A468(qword_281491630, unk_281491638, qword_281491640);
  *(a4 + v8[20]) = (result == 2) | result & 1;
  return result;
}

uint64_t NodeValidator.transparencyVerifier.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_22FE9B84C(a1, v1 + 8);
}

uint64_t NodeValidator.validity.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NodeValidator.roots.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t NodeValidator.clock.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NodeValidator(0) + 32);

  return sub_22FEB3E04(a1, v3);
}

uint64_t NodeValidator.transparencyProofValidation.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NodeValidator.strictCertificateValidation.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t NodeValidator.requireProdTrustAnchors.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NodeValidator.requireRestrictedExecutionMode.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t NodeValidator.requireEphemeralDataMode.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t NodeValidator.restrictDeveloperMode.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t NodeValidator.requireProdFusing.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t NodeValidator.requireLockedCryptexes.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t NodeValidator.ensembleTopologyValidation.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t NodeValidator.allowExpired.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t NodeValidator.customerSecurityPolicy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NodeValidator(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t NodeValidator.customerSecurityPolicy.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 76)) = v2;
  return result;
}

uint64_t NodeValidator.restrictSecurityPolicies.setter(char a1)
{
  result = type metadata accessor for NodeValidator(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t sub_22FFA5B00()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491460);
  __swift_project_value_buffer(v0, qword_281491460);
  return sub_22FFB12E8();
}

uint64_t NodeValidator.init(validity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NodeValidator(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 64) = MEMORY[0x277D84F90];
  v10 = v7[10];
  v11 = sub_22FFB0908();
  (*(*(v11 - 8) + 56))(a3 + v10, 1, 1, v11);
  *(a3 + v7[21]) = 2;
  *(a3 + v7[23]) = 0;
  static Environment.default.getter(&v14);
  NodeValidator.init(validity:environment:)(a1, a2, &v14, v9);
  sub_22FEAEA34(a3 + v10, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FFA7D78(v9, a3, type metadata accessor for NodeValidator);
}

uint64_t type metadata accessor for NodeValidator(uint64_t a1)
{
  result = qword_2814908F8;
  if (!qword_2814908F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FFA5D10()
{
  if (*(v0 + *(type metadata accessor for NodeValidator(0) + 44)) == 1)
  {
    if (qword_281490B50 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v2 = *(v0 + 64);
    v3 = qword_281490B50;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_22FECB2C8(v4);
    if (qword_27DAF1268 != -1)
    {
      swift_once();
    }

    sub_22FECB2C8(v5);
    return v2;
  }
}

double sub_22FFA5E30()
{
  v1 = type metadata accessor for NodeValidator(0);
  if (v0[*(v1 + 80)] == 1)
  {
    v3 = v1;
    v4 = 1 << *v0;
    if ((v4 & 0x1F8) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
      v5 = swift_allocObject();
      *&result = 2;
      *(v5 + 16) = xmmword_22FFB2D20;
      v6 = *(v3 + 76);
      *(v5 + 33) = 1;
LABEL_4:
      *(v5 + 32) = v0[v6];
      return result;
    }

    if ((v4 & 0xC07) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
      v5 = swift_allocObject();
      *&result = 1;
      *(v5 + 16) = xmmword_22FFB2D10;
      v6 = *(v3 + 76);
      goto LABEL_4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
    v7 = swift_allocObject();
    *&result = 3;
    *(v7 + 16) = xmmword_22FFB2F60;
    *(v7 + 32) = v0[*(v3 + 76)];
    *(v7 + 33) = 1;
  }

  return result;
}

uint64_t sub_22FFA5FF0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22FEBAFF4(a1);

  return sub_22FEA5C80(a2, a3);
}

uint64_t sub_22FFA6034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FFA610C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84B78];
  *(v4 + 16) = xmmword_22FFB2D10;
  v6 = MEMORY[0x277D84BC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_22FFB14D8();
  *a2 = result;
  a2[1] = v8;
  return result;
}

unint64_t sub_22FFA619C(uint64_t a1, uint64_t a2)
{
  sub_22FFB1CA8();
  sub_22FFB1548();
  v4 = sub_22FFB1CF8();

  return sub_22FFA656C(a1, a2, v4);
}

unint64_t sub_22FFA6214(uint64_t a1)
{
  sub_22FFB0958();
  sub_22FFA7E88(&qword_281491320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_22FFB1428();

  return sub_22FFA6624(a1, v2);
}

unint64_t sub_22FFA62AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](a1);
  v8 = sub_22FFB1CF8();

  return sub_22FFA67E4(a1, a2, a3, a4, v8);
}

unint64_t sub_22FFA6338(uint64_t a1)
{
  v2 = sub_22FFB1C98();

  return sub_22FFA68B8(a1, v2);
}

unint64_t sub_22FFA637C(uint64_t a1)
{
  sub_22FFB1CA8();
  type metadata accessor for CFString(0);
  sub_22FFA7E88(&qword_27DAF3A20, type metadata accessor for CFString, &unk_22FFB2C88);
  sub_22FFB0A28();
  v2 = sub_22FFB1CF8();

  return sub_22FFA6924(a1, v2);
}

unint64_t sub_22FFA6430(uint64_t a1)
{
  sub_22FFB1CA8();
  sub_22FFB1CC8();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_22FFA7E88(&qword_27DAF3A20, type metadata accessor for CFString, &unk_22FFB2C88);
    sub_22FFB0A28();
  }

  v2 = sub_22FFB1CF8();

  return sub_22FFA6A30(a1, v2);
}

unint64_t sub_22FFA6500(uint64_t a1)
{
  v1 = a1;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  v2 = sub_22FFB1CF8();

  return sub_22FFA6B50(v1, v2);
}

unint64_t sub_22FFA656C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22FFB1BC8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22FFA6624(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_22FFB0958();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_22FFA7E88(&qword_281491318, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_22FFB1478();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_22FFA67E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    v13 = *(v5 + 48);
    do
    {
      v14 = (v13 + 32 * v8);
      if (*v14 == a1)
      {
        v15 = v14[2] == a3 && v14[3] == a4;
        if (v15 || (sub_22FFB1BC8() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_22FFA68B8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22FFA6924(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_22FFA7E88(&qword_27DAF3A20, type metadata accessor for CFString, &unk_22FFB2C88);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22FFB0A18();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_22FFA6A30(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_22FFA7E88(&qword_27DAF3A20, type metadata accessor for CFString, &unk_22FFB2C88);
          v10 = v9;
          v11 = sub_22FFB0A18();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22FFA6B50(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22FFA6BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FFA6C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3938, &qword_22FFBFA28);
    v3 = sub_22FFB1AE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FEBF3A4(v4, &v13, &qword_27DAF1B58, &qword_22FFC02B0);
      v5 = v13;
      v6 = v14;
      result = sub_22FFA619C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22FEA2968(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22FFA6D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3940, &unk_22FFBFA30);
    v3 = sub_22FFB1AE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_22FEA5608(v7, v8);
      result = sub_22FFA619C(v5, v6);
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

unint64_t sub_22FFA6E68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39E0, &unk_22FFC0290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3900, &qword_22FFBF978);
    v7 = sub_22FFB1AE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22FEBF3A4(v9, v5, &qword_27DAF39E0, &unk_22FFC0290);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22FFA619C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Proto_SealedHash(0);
      result = sub_22FFA7D78(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Proto_SealedHash);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_22FFA7050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3928, &qword_22FFBFA10);
    v3 = sub_22FFB1AE8();
    for (i = a1 + 32; ; i += 64)
    {
      sub_22FEBF3A4(i, &v13, &qword_27DAF3A10, &unk_22FFC0318);
      result = sub_22FFA62AC(v13, *(&v13 + 1), v14, v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 32 * result;
      v8 = v14;
      v9 = v15;
      *v7 = v13;
      *(v7 + 16) = v8;
      *(v7 + 24) = v9;
      result = sub_22FEA2968(&v16, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_22FFA71D8(uint64_t a1)
{
  sub_22FFA736C();
  if (v1 <= 0x3F)
  {
    sub_22FFA73D0(319, &qword_28148F120, type metadata accessor for SecCertificate, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22FFA73D0(319, &qword_281491328, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22FFA73D0(319, &qword_28148F0B8, type metadata accessor for SecKey, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_22FFA736C()
{
  result = qword_28148FA48[0];
  if (!qword_28148FA48[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_28148FA48);
  }

  return result;
}

void sub_22FFA73D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22FFA7434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39E8, &qword_22FFC02B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3920, &unk_22FFC02C0);
    v7 = sub_22FFB1AE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22FEBF3A4(v9, v5, &qword_27DAF39E8, &qword_22FFC02B8);
      result = sub_22FFA6214(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22FFB0958();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for SEP.SealedHash(0);
      result = sub_22FFA7D78(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for SEP.SealedHash);
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

unint64_t sub_22FFA7650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3A28, &qword_22FFC0338);
    v3 = sub_22FFB1AE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FEBF3A4(v4, &v11, &qword_27DAF1768, &unk_22FFC0340);
      v5 = v11;
      result = sub_22FFA6430(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22FEA2968(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_22FFA7778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3A18, &qword_22FFC0328);
    v3 = sub_22FFB1AE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FEBF3A4(v4, &v11, qword_27DAF1780, &qword_22FFC0330);
      v5 = v11;
      result = sub_22FFA637C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22FEA2968(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_22FFA78A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39C8, &unk_22FFC0260);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3898, &unk_22FFBF3C0);
    v7 = sub_22FFB1AE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22FEBF3A4(v9, v5, &qword_27DAF39C8, &unk_22FFC0260);
      result = sub_22FFA6214(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22FFB0958();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

unint64_t sub_22FFA7A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39D8, &qword_22FFC0288);
    v3 = sub_22FFB1AE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22FFA619C(v5, v6);
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

unint64_t sub_22FFA7B9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF39D0, &qword_22FFC0280);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3918, &unk_22FFBFA00);
    v7 = sub_22FFB1AE8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_22FEBF3A4(v9, v5, &qword_27DAF39D0, &qword_22FFC0280);
      v11 = *v5;
      result = sub_22FFA6338(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_22FFB0CC8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
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

uint64_t sub_22FFA7D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFA7DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFA7E48(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22FECB480(a1);

  return sub_22FE9AC3C(a2, a3);
}

uint64_t sub_22FFA7E88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FFA7ED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v67 - v2;
  v4 = type metadata accessor for Proto_SecureConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67 - v11;
  v13 = type metadata accessor for Proto_SealedHashLedger(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Proto_SealedHash(0);
  v73 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v74 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v68 = &v67 - v20;
  v21 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v22 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v21 + v22, v12, &qword_27DAF26E8, &qword_22FFB7C60);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    *v16 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v23(v12, 1, v13) != 1)
    {
      sub_22FEAEA34(v12, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FFA9770(v12, v16, type metadata accessor for Proto_SealedHashLedger);
  }

  v24 = *v16;

  sub_22FFA97D8(v16, type metadata accessor for Proto_SealedHashLedger);
  if (qword_28148FBD0 != -1)
  {
    swift_once();
  }

  v25 = sub_22FFB0958();
  __swift_project_value_buffer(v25, qword_28148FBD8);
  v26 = sub_22FFB0928();
  if (!*(v24 + 16))
  {

LABEL_39:

    return 0;
  }

  v28 = sub_22FFA619C(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    goto LABEL_39;
  }

  v31 = *(v24 + 56) + *(v73 + 9) * v28;
  v32 = v74;
  sub_22FF93B98(v31, v74, type metadata accessor for Proto_SealedHash);

  v33 = v32;
  v34 = v68;
  sub_22FFA9770(v33, v68, type metadata accessor for Proto_SealedHash);
  v35 = *(v34 + 16);
  v36 = *(v35 + 16);
  if (v36)
  {
    v74 = *(v70 + 24);
    v37 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v67 = v35;
    v38 = v35 + v37;
    v39 = *(v71 + 72);
    v73 = MEMORY[0x277D84F90];
    v40 = &unk_22FFB5C80;
    v41 = v72;
    v71 = v39;
    while (1)
    {
      sub_22FF93B98(v38, v9, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FEBF3A4(&v9[v74], v3, &qword_27DAF2130, v40);
      v42 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
      if ((*(*(v42 - 8) + 48))(v3, 1, v42) == 1)
      {
        sub_22FFA97D8(v9, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FEAEA34(v3, &qword_27DAF2130, v40);
LABEL_12:
        memset(v78, 0, 40);
        goto LABEL_13;
      }

      v43 = v40;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_22FFA97D8(v9, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FFA97D8(v3, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        goto LABEL_12;
      }

      sub_22FFA9770(v3, v41, type metadata accessor for Proto_SecureConfig);
      v44 = v41[3];
      v45 = v41[4];
      v46 = v45 >> 62;
      if ((v45 >> 62) > 1)
      {
        if (v46 != 2)
        {
          goto LABEL_26;
        }

        v47 = *(v44 + 16);
        v48 = *(v44 + 24);
      }

      else
      {
        if (!v46)
        {
          if ((v45 & 0xFF000000000000) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_28;
        }

        v47 = v44;
        v48 = v44 >> 32;
      }

      if (v47 == v48)
      {
LABEL_26:
        v49 = *v41;
        v50 = v41[1];
        v51 = v41[2];
        sub_22FEA5608(*v41, v50);

        v52 = v51;
        v39 = v71;
        sub_22FFA92EC(v49, v50, v52, &v75);
        sub_22FFA97D8(v9, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FFA97D8(v41, type metadata accessor for Proto_SecureConfig);
        v53 = v76;
        v78[0] = v75;
        *&v78[1] = v76;
        *(&v78[1] + 8) = v77;
        if (v76)
        {
          goto LABEL_29;
        }

        goto LABEL_13;
      }

LABEL_28:
      sub_22FEA5608(v41[3], v41[4]);
      SecureConfig.init(from:)(v44, v45, v78);
      sub_22FFA97D8(v9, type metadata accessor for Proto_SealedHash.Entry);
      sub_22FFA97D8(v41, type metadata accessor for Proto_SecureConfig);
      v53 = *&v78[1];
      if (*&v78[1])
      {
LABEL_29:
        v54 = v78[0];
        v69 = *&v78[2];
        v70 = *(&v78[1] + 1);
        v55 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_22FEC322C(0, *(v55 + 2) + 1, 1, v55);
        }

        v57 = *(v55 + 2);
        v56 = *(v55 + 3);
        v58 = v55;
        if (v57 >= v56 >> 1)
        {
          v58 = sub_22FEC322C((v56 > 1), v57 + 1, 1, v55);
        }

        v73 = v58;
        *(v58 + 2) = v57 + 1;
        v59 = &v58[40 * v57];
        *(v59 + 2) = v54;
        v60 = v69;
        v61 = v70;
        *(v59 + 6) = v53;
        *(v59 + 7) = v61;
        *(v59 + 8) = v60;
        v39 = v71;
        v41 = v72;
        v40 = v43;
        goto LABEL_14;
      }

LABEL_13:
      sub_22FF91A7C(*&v78[0], *(&v78[0] + 1), 0, *(&v78[1] + 1), *&v78[2]);
LABEL_14:
      v38 += v39;
      if (!--v36)
      {
        v62 = *(v67 + 16);
        v63 = v73;
        goto LABEL_38;
      }
    }
  }

  v62 = 0;
  v63 = MEMORY[0x277D84F90];
LABEL_38:
  v64 = v63;
  v65 = *(v63 + 16);
  sub_22FFA97D8(v68, type metadata accessor for Proto_SealedHash);
  result = v64;
  if (v65 != v62)
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_22FFA874C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for Proto_SealedHashLedger(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Proto_SealedHash(0);
  v31 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v14 + v15, v3, &qword_27DAF26E8, &qword_22FFB7C60);
  v16 = *(v5 + 48);
  if (v16(v3, 1, v4) == 1)
  {
    *v7 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v16(v3, 1, v4) != 1)
    {
      sub_22FEAEA34(v3, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FFA9770(v3, v7, type metadata accessor for Proto_SealedHashLedger);
  }

  v17 = *v7;

  sub_22FFA97D8(v7, type metadata accessor for Proto_SealedHashLedger);
  if (qword_28148FBD0 != -1)
  {
    swift_once();
  }

  v18 = sub_22FFB0958();
  __swift_project_value_buffer(v18, qword_28148FBD8);
  v19 = sub_22FFB0928();
  if (!*(v17 + 16))
  {

    goto LABEL_14;
  }

  v21 = sub_22FFA619C(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  sub_22FF93B98(*(v17 + 56) + *(v31 + 72) * v21, v11, type metadata accessor for Proto_SealedHash);

  sub_22FFA9770(v11, v13, type metadata accessor for Proto_SealedHash);
  v24 = *v13;
  v25 = v13[8];
  sub_22FFA97D8(v13, type metadata accessor for Proto_SealedHash);
  if (v25 != 1)
  {
    return 0;
  }

  result = v24;
  if (v24)
  {
    if (v24 == 1)
    {
      v27 = sub_22FFB13C8();
      v28 = &qword_28148F198;
      v29 = MEMORY[0x277CC5540];
      v30 = MEMORY[0x277CC5538];
    }

    else
    {
      v27 = sub_22FFB13F8();
      v28 = &qword_28148F188;
      v29 = MEMORY[0x277CC5550];
      v30 = MEMORY[0x277CC5548];
    }

    sub_22FF74244(v28, v29, v30);
    return v27;
  }

  return result;
}

uint64_t sub_22FFA8BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v42 = a1;
  v9 = type metadata accessor for SEP.SealedHash(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v9;
    v36 = v4;
    v37 = a4;
    v49 = MEMORY[0x277D84F90];
    sub_22FECD9FC(0, v12, 0);
    v14 = v49;
    v41 = a2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v40 = AssociatedTypeWitness;
    v16 = *(AssociatedTypeWitness - 8);
    v39 = *(v16 + 64);
    v38 = (v16 + 8);
    v17 = (a3 + 64);
    do
    {
      v45 = &v33;
      v46 = v12;
      v19 = *(v17 - 4);
      v18 = *(v17 - 3);
      v20 = *(v17 - 1);
      v44 = *(v17 - 2);
      v21 = *v17;
      MEMORY[0x28223BE20](AssociatedTypeWitness);
      v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v47 = v20;
      v48 = v21;
      sub_22FEA5608(v19, v18);

      sub_22FEA5608(v20, v21);
      sub_22FEA5608(v20, v21);
      sub_22FEB0E54();
      sub_22FFB1378();
      sub_22FEA55AC(v47, v48);
      v24 = v40;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v26 = sub_22FEC4190(v23, v24, *(AssociatedConformanceWitness + 32));
      v43 = v27;
      sub_22FEA55AC(v19, v18);

      sub_22FEA55AC(v20, v21);
      AssociatedTypeWitness = (*v38)(v23, v24);
      v49 = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        AssociatedTypeWitness = sub_22FECD9FC((v28 > 1), v29 + 1, 1);
        v14 = v49;
      }

      v17 += 5;
      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      v31 = v43;
      *(v30 + 32) = v26;
      *(v30 + 40) = v31;
      v12 = v46 - 1;
    }

    while (v46 != 1);
    v5 = v36;
    a4 = v37;
    v11 = v34;
    v9 = v35;
    v13 = v14;
  }

  result = sub_22FF5D114(v13, v11);
  if (!v5)
  {
    return sub_22FFA9770(&v11[*(v9 + 20)], a4, type metadata accessor for SEP.SealedHash.Value);
  }

  return result;
}

uint64_t SecureConfig.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22FFB15D8();
  v6 = sub_22FFB1448();

  if ((v6 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v15) = v6;
    MEMORY[0x28223BE20](result);
    v14[2] = &v15;
    sub_22FEA5608(a1, a2);
    v8 = sub_22FF57588(2, 1, sub_22FFA96CC, v14, a1, a2);
    if (v8[2] == 2)
    {
      v9 = v8[4];
      v10 = v8[5];
      v11 = v8[6];
      v12 = v8[7];
      sub_22FEA5608(v9, v10);
      sub_22FEA5608(v11, v12);

      sub_22FFB04D8();
      swift_allocObject();
      sub_22FFB04C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF29D8, &qword_22FFC0350);
      sub_22FFA96E4();
      sub_22FFB04B8();

      result = sub_22FEA55AC(v9, v10);
      v13 = v15;
      *a3 = v11;
      a3[1] = v12;
      a3[2] = v13;
      a3[3] = a1;
      a3[4] = a2;
    }

    else
    {
      sub_22FEA55AC(a1, a2);

      a3[4] = 0;
      *a3 = 0u;
      *(a3 + 1) = 0u;
    }
  }

  return result;
}

uint64_t sub_22FFA90E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_22FFA619C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 16 * v4);

  return v6;
}

uint64_t SecureConfig.entry.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t SecureConfig.serializedData.getter()
{
  v1 = *(v0 + 24);
  sub_22FEA5608(v1, *(v0 + 32));
  return v1;
}

void *SecureConfig.rawMetadata.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_22FEA5608(v1, v2);
  sub_22FFB15D8();
  v3 = sub_22FFB1448();

  if ((v3 & 0x100) == 0)
  {
    v7 = v3;
    MEMORY[0x28223BE20](result);
    v6[2] = &v7;
    result = sub_22FF57588(2, 1, sub_22FFA9838, v6, v1, v2);
    if (result[2])
    {
      v5 = result[4];
      sub_22FEA5608(v5, result[5]);

      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double SecureConfig.init(entry:metadata:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22FFA92EC(a1, a2, a3, &v7);
  v5 = v8;
  *a4 = v7;
  *(a4 + 16) = v5;
  result = v9[0];
  *(a4 + 24) = *v9;
  return result;
}

uint64_t sub_22FFA92EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();

  sub_22FEA5608(a1, a2);
  v9 = sub_22FFB1408();

  v22[0] = 0;
  v10 = [v8 dataWithJSONObject:v9 options:2 error:v22];

  v11 = v22[0];
  if (v10)
  {
    v12 = sub_22FFB07E8();
    v14 = v13;

    *&v23 = v12;
    *(&v23 + 1) = v14;
    sub_22FEA5608(v12, v14);
    sub_22FF5BE00(10, 0xE100000000000000);
    sub_22FEA55AC(v12, v14);
    v15 = v23;
    v24 = v23;
    v22[3] = MEMORY[0x277CC9318];
    v22[4] = MEMORY[0x277CC9300];
    v22[0] = a1;
    v22[1] = a2;
    v16 = __swift_project_boxed_opaque_existential_1(v22, MEMORY[0x277CC9318]);
    v17 = *v16;
    v18 = v16[1];
    sub_22FEA5608(v15, *(&v15 + 1));
    sub_22FFA94D4(v17, v18, &v24);
    sub_22FEA55AC(v15, *(&v15 + 1));
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    v20 = v24;
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
    *(a4 + 24) = v20;
  }

  else
  {
    v21 = v11;
    sub_22FFB0648();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FFA94D4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_22FFB0778();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22FFA960C(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_22FFA960C(v4, v5);
  }

  return sub_22FFB0778();
}

uint64_t sub_22FFA960C(uint64_t a1, uint64_t a2)
{
  result = sub_22FFB0588();
  if (!result || (result = sub_22FFB05B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FFB05A8();
      return sub_22FFB0778();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22FFA96E4()
{
  result = qword_27DAF3A30;
  if (!qword_27DAF3A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF29D8, &qword_22FFC0350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3A30);
  }

  return result;
}

uint64_t sub_22FFA9770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFA97D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double DERImg4DecodeFindInSequence(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v7 = 0;
  v8 = 0uLL;
  while (!DERDecodeSeqNext(a1, &v7))
  {
    if (v7 == a2)
    {
      result = *&v8;
      *a3 = v8;
      return result;
    }
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t DERImg4DecodeParseManifestPropertiesInternal(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePayloadExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136))
    {
      v4 = *(a1 + 144) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayload(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 136);
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *v2;
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadType(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = DERParseInteger(a1 + 104, a2);
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (result)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadVersion(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 120);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadKeybagExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 152))
    {
      v4 = *(a1 + 160) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadKeybag(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 152);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadCompressionInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 168))
    {
      v4 = *(a1 + 176) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadCompressionInfo(void *a1, _DWORD *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a1[17] && a1[18] && a1[21] && a1[22])
    {
      v7 = 0u;
      v8 = 0u;
      result = DERParseSequenceContentToObject(a1 + 21, 2u, &DERImg4CompressionItemSpecs, &v7, 0x20uLL, 0);
      if (!result)
      {
        result = DERParseInteger(&v7, a2);
        if (!result)
        {
          result = DERParseInteger(&v8, a3);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (a3)
    {
      *a2 = -1;
      *a3 = -1;
    }
  }

  return result;
}

double Img4DecodeCopyPayloadHashWithCallback(uint64_t a1, void (*a2)(void, void, __int128 *), uint64_t a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || a4 != 20 || !a3)
  {
    if (!a3)
    {
      return *&v5;
    }

LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    return *&v5;
  }

  if (!*(a1 + 136) || !*(a1 + 144))
  {
    goto LABEL_9;
  }

  if (*a1 == 1)
  {
    v5 = *(a1 + 184);
    *(a3 + 16) = *(a1 + 200);
    *a3 = v5;
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
    a2(*(a1 + 8), *(a1 + 16), &v7);
    *&v5 = v7;
    *a3 = v7;
    *(a3 + 16) = v8;
  }

  return *&v5;
}

uint64_t Img4DecodeManifestExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24) != 0;
    }
  }

  return result;
}

double Img4DecodeCopyManifestHashWithCallback(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  if (!a1 || a4 != 20 || !a3)
  {
    if (!a3)
    {
      return *&v5;
    }

LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    return *&v5;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

  if (*(a1 + 1) == 1)
  {
    v5 = *(a1 + 328);
    *(a3 + 16) = *(a1 + 344);
    *a3 = v5;
  }

  else
  {
    a2();
    *&v5 = 0;
    *a3 = 0uLL;
    *(a3 + 16) = 0;
  }

  return *&v5;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t Img4DecodeRestoreInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 440))
    {
      v4 = *(a1 + 448) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6)
{
  memset(v10, 0, sizeof(v10));
  v6 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v10);
      v6 = v8;
      if (!v8)
      {
        return DERParseBoolean(&v10[1] + 1, a4);
      }
    }
  }

  return v6;
}

void Img4DecodeGetIntegerFromSection(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  memset(v8, 0, sizeof(v8));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v8);
      if (!v7)
      {
        if (DERParseInteger(&v8[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetInteger64FromSection(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  memset(v8, 0, sizeof(v8));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v8);
      if (!v7)
      {
        if (DERParseInteger64(&v8[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetDataFromSection(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 4uLL, &v10);
    if (v8)
    {
      *a5 = 0;
      *a4 = 0;
    }

    else
    {
      v9 = v12;
      *a4 = *(&v11 + 1);
      *a5 = v9;
    }
  }
}

double Img4DecodeGetObjectProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (DERImg4DecodeParseManifestProperties(a1, v11, 0) || DERImg4DecodeFindProperty(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || DERImg4DecodeFindProperty(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void Img4DecodeGetObjectPropertyInteger(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger64(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

void Img4DecodeGetObjectPropertyString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 0x16uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, &v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(&v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyData(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = DERImg4DecodeProperty(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, (a3 + 88)) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, (a3 + 88)))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t Img4DecodeInitManifestCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePerformTrustEvaluation(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t Img4DecodePerformTrustEvaluatation(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t _Img4DecodeValidateManifestPropertyInterposer(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a1;
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a4;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  memset(v11, 0, sizeof(v11));
  if (v8 && !DERImg4DecodeProperty(v8, 0xE00000006D616E78, &v13) && *(&v15 + 1) == 0x2000000000000011 && !DERDecodeSeqContentInit(&v14 + 1, v12))
  {
    v9 = a1 | 0xE000000000000000;
    while (!DERDecodeSeqNext(v12, v11))
    {
      if (v11[0] == v9)
      {
        (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, 4, &v10);
        return 0;
      }
    }
  }

  (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, *(a2 + 8), *a2);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a11 = 0u;
  v14 = *(a1 + 2);
  a9 = *a1;
  a10 = v14;
  v15 = a2 | 0xE000000000000000;

  return DERImg4DecodeProperty(&a9, v15, &a11);
}

void OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _Img4DecodePayloadPropertyExistsWithValue(a1, a2, 2uLL, &a9, 0);
}

void OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  bzero(va, 0xA0uLL);
}

void *OUTLINED_FUNCTION_6(uint64_t a1, const void *a2)
{

  return memcpy(v3, a2, v2);
}

void _Img4DecodePayloadPropertyExistsWithValue(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, BOOL *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    bzero(v18, 0xA0uLL);
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
    v11 = *(a1 + 8);
    v10 = a1 + 8;
    if (v11)
    {
      bzero(v18, 0xA0uLL);
      if (!DERImg4DecodePayloadWithProperties(v10, v18))
      {
        if (v19[0])
        {
          DERImg4DecodeContentFindItemWithTag(v19, 0x2000000000000010, &v17);
          if (!v12)
          {
            DERImg4DecodeContentFindItemWithTag(&v17, 0x2000000000000011, &v16);
            if (!v13)
            {
              if (a5)
              {
                DERImg4DecodeContentFindItemWithTag(&v16, a2, &v15);
                if (v14)
                {
                  return;
                }

                *a5 = v15 != 0;
              }

              if (a4)
              {
                DERImg4DecodeFindProperty(&v16, a2, a3, a4);
              }
            }
          }
        }
      }
    }
  }
}

void Img4DecodeEvaluateCertificatePropertiesInternal(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !DERDecodeSeqInit((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (DERDecodeSeqNext(v21, &v17))
      {
        return;
      }

      v4 = a1 + 7;
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (DERImg4DecodeProperty(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || DERDecodeSeqContentInit(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = DERDecodeSeqNext(v20, &v14);
            if (v5)
            {
              break;
            }

            if (DERImg4DecodeProperty(&__s1, v14, v9))
            {
              return;
            }

            DERImg4DecodeContentFindItemWithTag(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = a1 + 9;
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = a1 + 9;
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t _Img4DecodePerformTrustEvaluationWithCallbacksInternal(unsigned int a1, uint64_t a2, uint64_t (**a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  v20 = 0;
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v14 = a3[1];
  if (v14 && (v15 = (v14)(a2, a6)) != 0 && !memcmp((a2 + 328), v15, **(a4 + 32)))
  {
    v16 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v20, &v21, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v20, v21, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v16 = 1;
  }

  result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v17 = a3[2];
    v18 = (a2 + 40);
    v19 = a1 | 0xE000000000000000;
    if (v17)
    {
      result = (v17)(v18, v19, 0x2000000000000011, v22, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERImg4DecodeFindProperty(v18, v19, 0x2000000000000011uLL, v22);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v22[1] + 8);
  }

  if (v16)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_rsa3k(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 3072);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_pkcs1_sig(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (a5 != 4096 && a5 != 3072)
  {
    return 0xFFFFFFFFLL;
  }

  v13[2] = 0;
  v13[3] = 0;
  v6 = (a5 + 63) >> 6;
  MEMORY[0x28223BE20](a1);
  v8 = (v12 - v7);
  bzero(v12 - v7, v7);
  *v8 = v6;
  v9 = *(a1 + 8);
  v13[0] = *a1;
  v13[1] = v9;
  memset(v12, 0, sizeof(v12));
  if (DERParseSequenceToObject(v13, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v12, 0x20uLL, 0x20uLL) || ccrsa_pub_init(v8, *(&v12[0] + 1), *&v12[0]))
  {
    return 0xFFFFFFFFLL;
  }

  if (MEMORY[0x277D85C38] && MEMORY[0x28223BE48])
  {
    if (ccrsa_verify_pkcs1v15_digest() || cc_cmp_safe())
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  LOBYTE(v12[0]) = 0;
  v11 = ccrsa_verify_pkcs1v15();
  result = 0xFFFFFFFFLL;
  if (!v11 && (v12[0] & 1) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t verify_signature_rsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_signature_rsa4096_fixed(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    if (*v10)
                    {
                      result = 0xFFFFFFFFLL;
                      if (a2 == 516 && **v10 == a6)
                      {
                        if (a1 >= 0xFFFFFFFFFFFFFE00)
                        {
                          __break(0x5513u);
                        }

                        else
                        {
                          MEMORY[0x28223BE20](0xFFFFFFFFLL);
                          bzero(&v12, 0x638uLL);
                          v11 = 64;
                          result = ccrsa_pub_init(&v11, 0x200uLL, a1);
                          if (!result)
                          {
                            if (MEMORY[0x277D85C38] && MEMORY[0x28223BE48])
                            {
                              result = ccrsa_verify_pkcs1v15_digest();
                              if (!result)
                              {
                                if (cc_cmp_safe())
                                {
                                  return 0xFFFFFFFFLL;
                                }

                                return 0;
                              }
                            }

                            else
                            {
                              v13 = 0;
                              LODWORD(result) = ccrsa_verify_pkcs1v15();
                              if (!result && (v13 & 1) != 0)
                              {
                                return 0;
                              }

                              if (result)
                              {
                                return result;
                              }

                              else
                              {
                                return 0xFFFFFFFFLL;
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ccrsa_pub_init(unint64_t *a1, unint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a2)
  {
    while (!*a3)
    {
      if (a3 == -1)
      {
        __break(0x5513u);
        goto LABEL_10;
      }

      ++a3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
  }

  else
  {
    v5 = (v4 + 7) >> 3;
    if (v5 > *a1)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v5;
  }

  return MEMORY[0x282201880]();
}

void verify_signature_ecdsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  if (v9[2] && *(a7 + 48) && *v9 == a6)
                  {
                    v12[2] = v7;
                    v12[3] = v8;
                    v12[0] = a1;
                    v12[1] = a2;
                    v11[0] = a3;
                    v11[1] = a4;
                    v10[0] = a5;
                    v10[1] = a6;
                    verify_ecdsa_sig(v12, v10, v11);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void verify_ecdsa_sig(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v14[7] = 0;
  ccec_x963_import_pub_size();
  if (ccec_keysize_is_supported())
  {
    cp = ccec_get_cp();
    v5 = *cp;
    if (*cp >> 61 || !is_mul_ok(8 * v5, 3uLL))
    {
      __break(0x550Cu);
    }

    else
    {
      v6 = 24 * v5;
      v7 = __CFADD__(v6, 16);
      v8 = v6 + 16;
      if (!v7)
      {
        v7 = __CFADD__(v8, 16);
        v9 = v8 + 16;
        if (!v7)
        {
          v10 = cp;
          v11 = v9 - 1;
          MEMORY[0x28223BE20](cp);
          v13 = &v14[-v12];
          bzero(&v14[-v12], v12);
          if (v11 < 0x10)
          {
            __break(1u);
          }

          else
          {
            *v13 = v10;
            if (!MEMORY[0x23190E7F0](v10, a1[1], *a1, v13))
            {
              ccec_verify();
            }
          }

          return;
        }
      }
    }

    __break(0x5500u);
  }
}

uint64_t verify_chain_img4_v1(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &ROOT_CA_CERTIFICATE;
        v30[1] = 1215;
        if (!_crack_chain_with_anchor(v29, v30, 3u) && !parse_chain(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = 0;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (DERDecodeSeqContentInit(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!DERDecodeSeqNext(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!DERDecodeSeqContentInit(v44, v50))
                {
                  do
                  {
                    v23 = DERDecodeSeqNext(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || DERParseSequenceContentToObject(v49, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!DEROidCompare(&oidCommonName, &v46));
                  v28 = v47;
                  result = DEROidCompare(&verify_chain_img4_v1_sboot_item, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_chain(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = DERParseSequenceToObject(v7 + 16 * v8, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = DERParseSequenceToObject(a3 + 48 * v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (DERParseSequenceContentToObject((v12 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v23, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = DEROidCompare(&v20, &oidRsa);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = DERParseBitString(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = parse_extensions(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_signatures(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0;
  memset(v13, 0, sizeof(v13));
  v8 = 0;
  v9 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || DERParseSequenceContentToObject(a2 + 2, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v11, 0x20uLL, 0x20uLL))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(&v12 + 1))
  {
    result = DEROidCompare(&v11, &oidEcPubKey);
    if ((result & 1) == 0)
    {
      if (*(&v12 + 1) != 2 || *v12 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v12 == -1)
      {
        __break(0x5513u);
        return result;
      }

      if (*(v12 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (!DEROidCompare(&v11, *(a3 + 40)))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a3)(*a2, a2[1], v13, **(a3 + 32), a3))
  {
    return 0xFFFFFFFFLL;
  }

  if (DERParseBitString((a2 + 4), &v8, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(a3 + 16))(*a1, a1[1], v8, v9, v13, **(a3 + 32), a3, 0);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_chain_img4_v2_with_crack_callback(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = parse_chain(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = verify_chain_signatures(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t crack_chain_rsa4k_sha384_x86(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_X86_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_DDI_ROOT_CA_CERTIFICATE;
  a2[1] = 1394;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_global(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_DDI_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_ROOT_CA_CERTIFICATE;
  a2[1] = 1425;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake_global(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1435;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_avp(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_AVP_ROOT_CA_CERTIFICATE;
  a2[1] = 1431;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy_hacktivate(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &LOCAL_RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1442;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa3k_sha384(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA3K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1118;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1374;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_AWG1(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_ROOT_CA_CERTIFICATE_AWG1;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_PED(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &RSA4K_SHA384_PED_ROOT_CA_CERTIFICATE;
  a2[1] = 1400;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t verify_chain_img4_ec_v1(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v28, 0x330uLL);
        v27[0] = a1;
        v27[1] = v10;
        if (!a8(v27, v28, 3) && !parse_ec_chain(v28, 3u, &v29, v31, v33, &v36, v37))
        {
          v26 = a3;
          v15 = v32;
          v16 = &v30;
          v17 = 0;
          v18 = 2;
          v19 = v32;
          while (1)
          {
            v20 = &v31[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v33[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              if (v33 > 0xFFFFFFFFFFFFFFDFLL || (*v26 = v34, *a4 = v35, v37 > 0xFFFFFFFFFFFFFFDFLL))
              {
                __break(0x5513u);
              }

              else if (v38 && (v23 = v39) != 0)
              {
                result = 0;
                if (a5)
                {
                  if (a6)
                  {
                    result = 0;
                    *a5 = v38;
                    *a6 = v23;
                  }
                }
              }

              else
              {
                return 0;
              }

              return result;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_ec_chain(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a4;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v22 = result;
  v24 = ~result;
  v23 = ~a3;
  v21 = ~a4;
  if (a5 <= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a5;
  }

  v20 = ~v12;
  v14 = ~a7;
  v15 = 16 * a2;
  while (v11 <= v24 && v10 <= v23)
  {
    result = DERParseSequenceToObject(v22 + v11, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9 > v21)
    {
      break;
    }

    result = DERParseSequenceToObject(v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v7, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v20)
    {
      break;
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    if (DERParseSequenceContentToObject((v7 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v31, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v31, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v28, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (!DEROidCompare(&v28, &oidEcPubKey))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseBitString(&v32, (a5 + v11), &v30))
    {
      return 0xFFFFFFFFLL;
    }

    if (v30)
    {
      return 0xFFFFFFFFLL;
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    result = DERDecodeItem(&v29, &v25);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = (a6 + v11);
    v17 = v27;
    *v16 = v26;
    v16[1] = v17;
    if (v11 > v14)
    {
      break;
    }

    result = parse_extensions(v7, (a7 + v11));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    v11 += 16;
    v8 += 48;
    v7 += 160;
    v10 += 48;
    v9 += 160;
    if (v15 == v11)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_img4_ec_v2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  v10 = a2;
  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  bzero(v20, 0x220uLL);
  v19[0] = a1;
  v19[1] = v10;
  if (a8(v19, v20, 2))
  {
    return 0xFFFFFFFFLL;
  }

  result = parse_ec_chain(v20, 2u, v21, v23, v28, &v29, v30);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v23 > 0xFFFFFFFFFFFFFF5FLL)
  {
    goto LABEL_22;
  }

  if (__n != v27)
  {
    return 0xFFFFFFFFLL;
  }

  result = memcmp(__s1, __s2, __n);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v21 > 0xFFFFFFFFFFFFFFCFLL)
  {
LABEL_22:
    __break(0x5513u);
    return result;
  }

  result = verify_chain_signatures(v28, v22, a7);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  if (v28 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  v17 = v28[3];
  *a3 = v28[2];
  *a4 = v17;
  if (v30 > 0xFFFFFFFFFFFFFFEFLL)
  {
    goto LABEL_22;
  }

  if (!v31)
  {
    return 0;
  }

  v18 = v32;
  if (!v32)
  {
    return 0;
  }

  result = 0;
  if (a5)
  {
    if (a6)
    {
      result = 0;
      *a5 = v31;
      *a6 = v18;
    }
  }

  return result;
}

uint64_t crack_chain_ecdsa256_sha256(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &LOCAL_EC256_SHA256_ROOT_CA_CERTIFICATE;
  a2[1] = 551;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_hacktivate(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &LOCAL_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 610;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &EC384_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 542;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_ecdsa384_sha384_qa(unint64_t *a1, void *a2, uint64_t a3)
{
  *a2 = &QA_EC384_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 540;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t img4_verify_signature_with_chain(unint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, void *a7, void *a8)
{
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  if (verify_chain_img4_v1(a1, a2, &v17, &v18, &v15, &v16, kImg4DecodeSecureBootRsa1kSha1))
  {
    return 0xFFFFFFFFLL;
  }

  *a7 = v15;
  *a8 = v16;
  result = verify_signature_rsa(v17, v18, a3, a4, a5, a6, kImg4DecodeSecureBootRsa1kSha1);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _crack_chain_with_anchor(unint64_t *a1, uint64_t a2, unsigned int a3)
{
  v18 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v5 = ~a2;
  v6 = 1;
  v7 = *a1;
  v8 = a1[1];
  while (1)
  {
    v18 = v7;
    v19 = v8;
    result = DERDecodeItem(&v18, &v15);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (__CFADD__(v16, v17))
    {
      break;
    }

    v10 = v16 + v17;
    v11 = v16 + v17 - v7;
    v12 = !(v11 >> 17) && v8 >= v11;
    if (!v12 || v6 >= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < 16 * v6)
    {
      break;
    }

    v14 = (a2 + 16 * v6);
    *v14 = v7;
    v14[1] = v11;
    if (v10 < v7)
    {
      break;
    }

    v12 = v8 >= v11;
    v8 -= v11;
    if (!v12)
    {
      goto LABEL_21;
    }

    ++v6;
    v7 = v10;
    if (!v8)
    {
      if (v6 == a3)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  __break(0x5513u);
LABEL_21:
  __break(0x5515u);
  return result;
}

uint64_t parse_extensions(uint64_t a1, void *a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v9[1] = 0;
  v10 = 0;
  v8 = 0;
  v9[0] = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  *a2 = 0;
  a2[1] = 0;
  if (!*(a1 + 152))
  {
    return 0;
  }

  if (DERDecodeSeqInit(a1 + 144, &v10, v11) || v10 != 0x2000000000000010)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  while (1)
  {
    v4 = DERDecodeSeqNext(v11, &v8);
    if (v4)
    {
      break;
    }

    if (v8 != 0x2000000000000010 || DERParseSequenceContentToObject(v9, DERNumExtensionItemSpecs, &DERExtensionItemSpecs, v6, 0x30uLL, 0x30uLL))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 0;
    if (DEROidCompare(&oidAppleImg4ManifestCertSpec, v6))
    {
      memset(v12, 0, sizeof(v12));
      if (DERDecodeItem(&v7, v12) || v12[0] != 0x2000000000000011)
      {
        return 0xFFFFFFFFLL;
      }

      v3 = 0;
      *a2 = v7;
    }
  }

  if (v4 != 1 || (v3 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t hybrid_scheme3_pubkey_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 3129)
  {
    return 0;
  }

  v2 = *result == 0xC8233E0E5C386FFLL && *(result + 8) == 0x282042C0C823030;
  if (!v2 || *(result + 16) != 4)
  {
    return 0;
  }

  if (*(result + 533) != 537559556)
  {
    return 0;
  }

  return result;
}

uint64_t hybrid_scheme3_signature_cast(uint64_t result, uint64_t a2)
{
  if (a2 != 5160 || *result ^ 0x148233CEE5C386FFLL | *(result + 8) ^ 0x282041B1482301FLL | *(result + 16))
  {
    return 0;
  }

  if (*(result + 529) != 319980036)
  {
    return 0;
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x277D85DE8];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x277D85DE8];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x277D85DE8];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

double DERImg4DecodeContentFindItemWithTag(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeSeqContentInit(a1, v6))
  {
    v7 = 0;
    v8 = 0uLL;
    while (!DERDecodeSeqNext(v6, &v7))
    {
      if (v7 == a2)
      {
        result = *&v8;
        *a3 = v8;
        return result;
      }
    }
  }

  return result;
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, void *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!a2[10] || (OUTLINED_FUNCTION_1(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = a2[12];
          v5 = a2 + 12;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, _OWORD *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 10);
          v5 = a2 + 5;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      a2[1] = v7;
      v8 = v11[3];
      a2[2] = v11[2];
      a2[3] = v8;
      v9 = v11[5];
      a2[4] = v11[4];
      a2[5] = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeCertificatePropertiesAndPubKey(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              v21[0] = a1;
              v21[1] = a2;
              v16 = 0u;
              v17 = 0u;
              v14 = 0u;
              v15 = 0u;
              result = DERDecodeItem(v21, &v18);
              if (!result)
              {
                if (v18 != 0x2000000000000011)
                {
                  return 2;
                }

                if (!DERParseSequenceContentToObject(&v19, 2u, &DERIM4CItemSpecs, &v16, 0x20uLL, 0))
                {
                  result = DERDecodeItem(&v16, &v18);
                  if (result)
                  {
                    return result;
                  }

                  if (v18 != 0x2000000000000010)
                  {
                    return 2;
                  }

                  if (!DERParseSequenceContentToObject(&v19, 2u, &DERCRTPSequenceItemSpecs, &v14, 0x20uLL, 0))
                  {
                    v12 = *(&v15 + 1);
                    *a3 = v15;
                    *a4 = v12;
                    result = DERDecodeItem(&v17, &v18);
                    if (result)
                    {
                      return result;
                    }

                    if (v18 == 4)
                    {
                      result = 0;
                      v13 = v20;
                      *a5 = v19;
                      *a6 = v13;
                      return result;
                    }

                    return 2;
                  }
                }

                return 0xFFFFFFFFLL;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePropertyWithItem(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = 0;
  v9[2] = 0;
  v9[1] = 22;
  v9[3] = 24;
  v10 = a3;
  result = DERParseSequenceToObject(a1, 2u, v9, a4, 0x30uLL, 0);
  if (!result)
  {
    result = DERParseInteger(a4, &v8);
    if (!result)
    {
      if ((v8 | 0xE000000000000000) == a2)
      {
        result = 0;
        a4[2] = a2 | 0xE000000000000000;
        a4[5] = a3;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

unint64_t *DERImg4DecodeFindProperty(unint64_t *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8[0] = 0;
  v8[1] = 0;
  result = DERDecodeSeqContentInit(a1, v8);
  if (!result)
  {
    return DERImg4DecodeFindPropertyInSequence(v8, a2, a3, a4);
  }

  return result;
}

void Img4DecodeCopyPayloadDigest(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v11[7] = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4 && *a4 && *(a1 + 136) && *(a1 + 144) && a3 <= 0x30)
  {
    if (*a1 == 1)
    {
      v6 = (a1 + 184);
      v7 = a2;
LABEL_15:
      memcpy(v7, v6, a3);
      return;
    }

    v10 = OUTLINED_FUNCTION_0_0();
    if (**(a4 + 32) <= 0x30uLL && !v9(*(v8 + 8), *(v8 + 16), v11, v10))
    {
      a3 = **(a4 + 32);
      v6 = v11;
      v7 = a2;
      goto LABEL_15;
    }
  }
}

uint64_t Img4DecodeCopyManifestDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v12[7] = *MEMORY[0x277D85DE8];
  v4 = 6;
  if (a1 && a2 && a3 && a4 && *a4)
  {
    if (*(a1 + 24))
    {
      if (a3 > 0x30)
      {
        return 7;
      }

      else if (*(a1 + 1) == 1)
      {
        OUTLINED_FUNCTION_6(a1, (a1 + 328));
        return 0;
      }

      else
      {
        v6 = OUTLINED_FUNCTION_0_0();
        v10 = v9(v8, *(v7 + 32), v12, a3, v6);
        v4 = v10;
        if (!v10)
        {
          OUTLINED_FUNCTION_6(v10, v12);
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

uint64_t Img4DecodeGetManifest(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 32);
    if (HIDWORD(v5))
    {
      return 7;
    }

    else
    {
      v6 = *(a1 + 24);
      *a2 = v6;
      *a3 = v5;
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      return (v8 << 31 >> 31);
    }
  }

  return result;
}

uint64_t Img4DecodePayloadPropertiesExists(uint64_t a1, uint64_t a2)
{
  v7[20] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 6;
  }

  OUTLINED_FUNCTION_5(a1, a2);
  result = 6;
  if (v2)
  {
    v6 = *(v3 + 8);
    v5 = v3 + 8;
    if (v6)
    {
      result = DERImg4DecodePayloadWithProperties(v5, v7);
      if (!result)
      {
        *v2 = v7[12] != 0;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadProperties(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 6;
  }

  OUTLINED_FUNCTION_5(a1, a2);
  result = 6;
  if (v2)
  {
    v6 = *(v3 + 8);
    v5 = v3 + 8;
    if (v6)
    {
      result = DERImg4DecodePayloadWithProperties(v5, v8);
      if (!result)
      {
        if (v9)
        {
          result = 0;
          v7 = v10;
          *v2 = v9;
          v2[1] = v7;
          return result;
        }

        return 6;
      }
    }
  }

  return result;
}

uint64_t Img4DecodeCopyPayloadPropertiesDigest(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v10[7] = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a3 > 0x30)
    {
      return 7;
    }

    else if (a4 && *a4)
    {
      v7 = OUTLINED_FUNCTION_0_0();
      result = v9(*v8, v8[1], v10, a3, v7);
      if (!result)
      {
        OUTLINED_FUNCTION_6(result, v10);
        return 0;
      }
    }
  }

  return result;
}

void Img4DecodePayloadPropertiesFindItemWithTag(unint64_t *a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    v21[0] = 0;
    v21[1] = 0;
    v20 = 0;
    v19[0] = 0;
    v19[1] = 0;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v13 = 0uLL;
    v12 = 0uLL;
    v11 = 0uLL;
    if (a3)
    {
      if (*a1)
      {
        DERImg4DecodeContentFindItemWithTag(a1, 0x2000000000000010, &v11);
        if (!v5)
        {
          if (v11)
          {
            DERImg4DecodeContentFindItemWithTag(&v11, 22, &v13);
            if (!v6 && !DERImg4DecodeTagCompare(&v13, 0x50415950u))
            {
              DERImg4DecodeContentFindItemWithTag(&v11, 0x2000000000000011, &v12);
              if (!v7 && !DERDecodeSeqContentInit(&v12, v23))
              {
                while (1)
                {
                  do
                  {
                    while (1)
                    {
                      v8 = DERDecodeSeqNext(v23, &v20);
                      if (!v8)
                      {
                        break;
                      }

                      if (v8 == 1)
                      {
                        return;
                      }
                    }
                  }

                  while (DERDecodeItem(v21, &v18));
                  DERImg4DecodeContentFindItemWithTag(v19, 22, &v13);
                  if (v9)
                  {
                    break;
                  }

                  if (!DERImg4DecodeTagCompare(&v13, a2) && !DERDecodeSeqContentInit(v19, v22) && !DERDecodeSeqNext(v22, v17) && v17[0] == 22 && !DERDecodeSeqNext(v22, &v14))
                  {
                    if (v15)
                    {
                      v10 = v16;
                      *a3 = v15;
                      a3[1] = v10;
                    }

                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void Img4DecodeGetPayloadPropertiesBoolean()
{
  OUTLINED_FUNCTION_0_0();
  _Img4DecodePayloadPropertyExistsWithValue(v0, v1, 1uLL, v5, 0);
  if (!v2)
  {
    v3 = OUTLINED_FUNCTION_3();
    DERParseBoolean(v3, v4);
  }
}

void Img4DecodeGetPayloadPropertiesInteger()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3();
    DERParseInteger(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesInteger64()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v0, v1, v2, v3, v4, v5, v6, v7, v11);
  if (!v8)
  {
    v9 = OUTLINED_FUNCTION_3();
    DERParseInteger64(v9, v10);
  }
}

void Img4DecodeGetPayloadPropertiesData(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  OUTLINED_FUNCTION_0_0();
  _Img4DecodePayloadPropertyExistsWithValue(v6, v7, 4uLL, v10, 0);
  if (!v8)
  {
    v9 = v10[4];
    *a3 = v10[3];
    *a4 = v9;
  }
}

uint64_t Img4DecodeGetObjectPropertyBoolean()
{
  OUTLINED_FUNCTION_0_0();
  v4 = 6;
  if (v0 && v3)
  {
    Img4DecodeGetObjectProperty(v0, v1, v2 | 0xE000000000000000, 1uLL, v9);
    if (!v5)
    {
      v6 = OUTLINED_FUNCTION_3();
      return DERParseBoolean(v6, v7);
    }

    return v5;
  }

  return v4;
}

void Img4DecodeGetPayloadVersionPropertyString(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 && a4)
  {
    v14 = 0;
    v15[0] = 0;
    v15[1] = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0uLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    if (DERDecodeItem(a1, &v14) || DERImg4DecodeProperty(v15, v14, v13) || (DERImg4DecodeContentFindItemWithTag(&v13[1] + 1, a2, &v12), v7) || DERImg4DecodeProperty(&v12, a2, &v9))
    {
      v8 = 0;
      *a3 = 0;
    }

    else
    {
      v8 = v11;
      *a3 = *(&v10 + 1);
    }

    *a4 = v8;
  }
}

uint64_t Img4DecodeGetPropertyInteger(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_0(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyInteger64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_1_0(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v26, v29);
  if (!result)
  {
    if (v30 != 2)
    {
      result = 2;
      if (!v8)
      {
        return result;
      }

      goto LABEL_6;
    }

    if (!v8)
    {
      return 6;
    }

    v17 = OUTLINED_FUNCTION_2(result, v10, v11, v12, v13, v14, v15, v16, v20, v22, v24, v25, v27, v28);
    result = DERParseInteger64(v17, v18);
  }

  if (!v8)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyBoolean(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v15 = *a1;
  v16 = v4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = DERImg4DecodeProperty(&v15, a2 | 0xE000000000000000, &v17);
  if (!result)
  {
    if (*(&v19 + 1) == 1)
    {
      if (a3)
      {
        v13 = OUTLINED_FUNCTION_2(result, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1));
        return DERParseBoolean(v13, v14);
      }

      else
      {
        return 6;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void Img4DecodeCopyManifestTrustedBootPolicyMeasurement(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17[26] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a5)
    {
      if (a5 <= 0x30)
      {
        bzero(v16, 0x100uLL);
        v10[0] = Img4DecodeDigestInit;
        v10[1] = Img4DecodeDigestUpdate;
        v10[2] = Img4DecodeDigestReturnHash;
        *&v13 = &default_manifest_property_exclude;
        *(&v13 + 1) = 156;
        v14 = a3;
        v15 = v10;
        Img4DecodeEvaluateCertificatePropertiesInternal(a1, &v13);
        if (!v8)
        {
          if (a1)
          {
            if (a2)
            {
              v11[0] = &v13;
              v11[1] = a2;
              v11[2] = a1;
              v12 = v17;
              if (!(*v15)(*(v14 + 32), &v12) && !Img4DecodeEvaluateDictionaryProperties(a1 + 7, 0, _Img4DecodeValidateManifestPropertyInterposer, v11))
              {
                v9 = (v15[2])(*(v14 + 32), &v12, 48, v16);
                if (!v9)
                {
                  OUTLINED_FUNCTION_6(v9, v16);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t Img4DecodeEvaluateDictionaryProperties(unint64_t *a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a4)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  if (!a3)
  {
    return 6;
  }

  result = DERDecodeSeqContentInit(a1, v13);
  if (!result)
  {
    while (1)
    {
      result = DERDecodeSeqNext(v13, &v14);
      if (result == 1)
      {
        return 0;
      }

      if (result)
      {
        return result;
      }

      result = DERImg4DecodeProperty(&v15, v14, v8);
      if (result)
      {
        return result;
      }

      result = 2;
      if (*(&v9 + 1) > 0x16uLL || ((1 << SBYTE8(v9)) & 0x400016) == 0 || !(v14 >> 62) || (v14 & 0x2000000000000000) == 0)
      {
        return result;
      }

      if (HIDWORD(v16))
      {
        break;
      }

      v10 = v15;
      LODWORD(v11) = v16;
      v12 = *(&v9 + 1);
      result = a3(v14, &v10, a2, a4);
      if (result)
      {
        return result;
      }
    }

    return 7;
  }

  return result;
}

uint64_t Img4DecodeEvaluateCertificateChain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a1 && a2 && a3 && a4 && a7 && a6)
  {
    v9 = *(a4 + 8);
    if (v9)
    {
      v9(a1);
      return 3;
    }
  }

  return result;
}

uint64_t Img4DecodeEvaluateTrustWithCallbacks(unsigned int a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a4)(void, void, void, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void, void, uint64_t), uint64_t a7)
{
  memset(v15, 0, sizeof(v15));
  result = 6;
  if (a2)
  {
    if (a3)
    {
      if (*(a2 + 24))
      {
        a6(*(a2 + 264), *(a2 + 272), a2 + 376);
        result = a4(*(a2 + 296), *(a2 + 304), *(a2 + 280), *(a2 + 288), a2 + 376, 20, a2 + 312, a2 + 320, a7);
        if (!result)
        {
          result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
          if (!result)
          {
            result = DERImg4DecodeFindProperty((a2 + 40), a1 | 0xE000000000000000, 0x2000000000000011uLL, v15);
            if (!result)
            {
              *(a2 + 72) = *(&v15[1] + 8);
              result = a5(a2, a7);
              if (!result)
              {
                if (*(a2 + 136) && *(a2 + 144))
                {
                  a6(*(a2 + 8), *(a2 + 16), a2 + 184);
                  *a2 = 1;
                }

                result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, a3, a7);
                if (!result)
                {
                  result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, a3, a7);
                  if (!result)
                  {
                    a6(*(a2 + 24), *(a2 + 32), a2 + 328);
                    result = 0;
                    *(a2 + 1) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Img4DecodeVerifyChainIM4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v24[10] = *MEMORY[0x277D85DE8];
  bzero(v19, 0x1C8uLL);
  result = 6;
  if (a3 && a4 && a5 && a6 && a7 && a8 && a9)
  {
    if (Img4DecodeInitManifestCommon(a3, a4, 1, v19, 1229796419) || (*a9)(v20, v21, v24, **(a9 + 32), a9) || (*(a9 + 16))(a1, a2, v22, v23, v24, **(a9 + 32), a9, a10))
    {
      return 0xFFFFFFFFLL;
    }

    else if (DERImg4DecodeCertificatePropertiesAndPubKey(v20, v21, a7, a8, a5, a6))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_ml_dsa_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[325] = *MEMORY[0x277D85DE8];
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    v11 = *v10;
                    if (!v11)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v12 = *v11;
                    if (a2 != 2592 || v12 != a6)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    if (!MEMORY[0x28223BE30])
                    {
                      return 4;
                    }

                    ccmldsa87();
                    bzero(v14, 0xA28uLL);
                    if (!MEMORY[0x28223BE38])
                    {
                      return 4;
                    }

                    result = ccmldsa_import_pubkey();
                    if (result)
                    {
                      return result;
                    }

                    if (!MEMORY[0x28223BE40])
                    {
                      return 4;
                    }

                    return ccmldsa_verify();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 6;
  if (a7 && a5 && a3 && a1 && a2 && a4 && a6)
  {
    if (hybrid_scheme3_pubkey_cast(a1, a2) && hybrid_scheme3_signature_cast(a3, a4))
    {
      OUTLINED_FUNCTION_0_1();
      result = verify_signature_rsa4096_fixed(v11, v12, v13, v14, v15, v16, v17);
      if (!result)
      {
        OUTLINED_FUNCTION_0_1();

        return verify_signature_ml_dsa_87(v18, v19, v20, v21, v22, v23, v24);
      }
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t verify_signature_hybrid_scheme3_no_pqc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a7 || !a5 || !a3 || !a1 || !a2 || !a4 || !a6 || !hybrid_scheme3_pubkey_cast(a1, a2) || !hybrid_scheme3_signature_cast(a3, a4))
  {
    return 6;
  }

  OUTLINED_FUNCTION_0_1();

  return verify_signature_rsa4096_fixed(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Img4DecodeDigestInit(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 16);
  if (!v2 || !*v2)
  {
    return 0xFFFFFFFFLL;
  }

  ccdigest_init();
  return 0;
}

uint64_t Img4DecodeDigestUpdate(uint64_t a1, void *a2)
{
  if (!a1 || !**(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  ccdigest_update();
  return 0;
}

uint64_t Img4DecodeDigestReturnHash(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = **(a1 + 16);
  if (!v4 || *v4 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v4 + 56))(v4, *a2, a4);
  return 0;
}

uint64_t Img4DecodeDigestFinal(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = **(a1 + 16);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  (*(v2 + 56))(v2, *a2);
  return 0;
}

uint64_t Img4DecodeComputeDigest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          v8 = *(a5 + 32);
          if (v8)
          {
            v9 = v8[2];
            if (v9)
            {
              if (*v8 == a4)
              {
                if (*v9 && **v9 == a4)
                {
                  ccdigest();
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}