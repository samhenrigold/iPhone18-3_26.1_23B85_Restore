uint64_t _s16CloudAttestation07PrivateA36Compute_TransparencyLog_ATInsertDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_22FEC3DC8(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v4 = qword_22FFB7BF8[v4];
  }

  v5 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 100)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_22FEEA6F0(*(a1 + 48), *(a2 + 48)) & 1) != 0 && (sub_22FEEA830(*(a1 + 56), *(a2 + 56)))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATInsertData(0);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v39 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2148, &qword_22FFB5C98);
  MEMORY[0x28223BE20](v43);
  v46 = &v39 - v6;
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v39 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v42 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v18 = *(v42 + 20);
  v19 = *(v15 + 56);
  sub_22FEBF3A4(v47 + v18, v17, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEBF3A4(v48 + v18, &v17[v19], &qword_27DAF2150, &qword_22FFB5CA0);
  v20 = *(v8 + 48);
  if (v20(v17, 1, v7) != 1)
  {
    sub_22FEBF3A4(v17, v13, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v20(&v17[v19], 1, v7) != 1)
    {
      sub_22FEF6B58(&v17[v19], v10, type metadata accessor for LogEntry);
      v24 = _s16CloudAttestation8LogEntryV2eeoiySbAC_ACtFZ_0(v13, v10);
      sub_22FEF6ED0(v10, type metadata accessor for LogEntry);
      sub_22FEF6ED0(v13, type metadata accessor for LogEntry);
      sub_22FEAEA34(v17, &qword_27DAF2150, &qword_22FFB5CA0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    sub_22FEF6ED0(v13, type metadata accessor for LogEntry);
LABEL_6:
    v21 = &qword_27DAF2158;
    v22 = &unk_22FFB7B80;
    v23 = v17;
LABEL_15:
    sub_22FEAEA34(v23, v21, v22);
    goto LABEL_16;
  }

  if (v20(&v17[v19], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_22FEAEA34(v17, &qword_27DAF2150, &qword_22FFB5CA0);
LABEL_8:
  v25 = *(v42 + 24);
  v26 = *(v43 + 48);
  v27 = v46;
  sub_22FEBF3A4(v47 + v25, v46, &qword_27DAF2140, &qword_22FFB5C90);
  sub_22FEBF3A4(v48 + v25, v27 + v26, &qword_27DAF2140, &qword_22FFB5C90);
  v28 = v45;
  v29 = *(v44 + 48);
  if (v29(v27, 1, v45) == 1)
  {
    if (v29(v27 + v26, 1, v28) == 1)
    {
      sub_22FEAEA34(v27, &qword_27DAF2140, &qword_22FFB5C90);
LABEL_21:
      sub_22FFB0F88();
      sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v31 = sub_22FFB1478();
      return v31 & 1;
    }

    goto LABEL_13;
  }

  v30 = v41;
  sub_22FEBF3A4(v27, v41, &qword_27DAF2140, &qword_22FFB5C90);
  if (v29(v27 + v26, 1, v28) == 1)
  {
    sub_22FEF6ED0(v30, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
LABEL_13:
    v21 = &qword_27DAF2148;
    v22 = &qword_22FFB5C98;
LABEL_14:
    v23 = v27;
    goto LABEL_15;
  }

  v33 = v40;
  sub_22FEF6B58(v27 + v26, v40, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  v34 = *(v28 + 20);
  v35 = *(v30 + v34);
  v36 = *(v33 + v34);
  if (v35 != v36)
  {

    v37 = sub_22FEFFCE0(v35, v36);

    if (!v37)
    {
      sub_22FEF6ED0(v33, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      sub_22FEF6ED0(v30, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
      v21 = &qword_27DAF2140;
      v22 = &qword_22FFB5C90;
      goto LABEL_14;
    }
  }

  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v38 = sub_22FFB1478();
  sub_22FEF6ED0(v33, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  sub_22FEF6ED0(v30, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  sub_22FEAEA34(v27, &qword_27DAF2140, &qword_22FFB5C90);
  if (v38)
  {
    goto LABEL_21;
  }

LABEL_16:
  v31 = 0;
  return v31 & 1;
}

unint64_t sub_22FF05888()
{
  result = qword_27DAF23A8;
  if (!qword_27DAF23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF23A8);
  }

  return result;
}

unint64_t sub_22FF058DC()
{
  result = qword_28148F3C8;
  if (!qword_28148F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F3C8);
  }

  return result;
}

unint64_t sub_22FF05934()
{
  result = qword_27DAF23E8;
  if (!qword_27DAF23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF23E8);
  }

  return result;
}

unint64_t sub_22FF0598C()
{
  result = qword_27DAF23F0;
  if (!qword_27DAF23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF23F0);
  }

  return result;
}

unint64_t sub_22FF05A14()
{
  result = qword_27DAF2408;
  if (!qword_27DAF2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2408);
  }

  return result;
}

unint64_t sub_22FF05A6C()
{
  result = qword_27DAF2410;
  if (!qword_27DAF2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2410);
  }

  return result;
}

unint64_t sub_22FF05AC4()
{
  result = qword_27DAF2418;
  if (!qword_27DAF2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2418);
  }

  return result;
}

uint64_t sub_22FF05B48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22FF05BA0()
{
  result = qword_27DAF2430;
  if (!qword_27DAF2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2430);
  }

  return result;
}

uint64_t sub_22FF069BC(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FF06A98(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF06B3C(uint64_t a1)
{
  sub_22FF07220(319, &qword_28148F158, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF06C1C(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF06D40(319, qword_281490E80, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF06D40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22FF06DCC(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF06D40(319, qword_28148F448, type metadata accessor for LogEntry, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22FF06D40(319, qword_281490C50, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FF06EF0(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FF06F9C(uint64_t a1)
{
  sub_22FF07220(319, &qword_27DAF2578, &type metadata for PrivateCloudCompute_Environment);
  if (v1 <= 0x3F)
  {
    sub_22FF06D40(319, &qword_27DAF2580, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22FFB0F88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FF070C0(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF07164(uint64_t a1)
{
  sub_22FF07220(319, &qword_27DAF25A8, &type metadata for PrivateCloudCompute_TransparencyLog_ATReleaseType);
  if (v1 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF07220(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22FFB1738();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_69Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_70Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22FF07404(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22FF06D40(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FF074DC(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF0757C(uint64_t a1)
{
  sub_22FF06D40(319, qword_281490998, type metadata accessor for SignedObject, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22FF06D40(319, qword_28148F448, type metadata accessor for LogEntry, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Proto_AttestationBundle.keyExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v6 + v7, v5, &qword_27DAF1520, &qword_22FFB3A30);
  v8 = sub_22FFB0EE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v5, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  sub_22FFB0ED8();
  result = (v10)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF1520, &qword_22FFB3A30);
  }

  return result;
}

uint64_t Proto_AppData.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Proto_AppData(0);
  sub_22FEBF3A4(v1 + *(v6 + 32), v5, &qword_27DAF1D38, &qword_22FFB4270);
  v7 = sub_22FFB0F18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_22FFB0F08();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF1D38, &qword_22FFB4270);
  }

  return result;
}

uint64_t Proto_AttestationBundle.provisioningCertificateChain.getter()
{
  type metadata accessor for Proto_AttestationBundle(0);
  swift_beginAccess();
}

uint64_t sub_22FF07B30(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_22FEA5608(*v2, *(v2 + 8));
  return v3;
}

uint64_t Proto_AttestationBundle.apTicket.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_22FEA5608(v2, *(v1 + 40));
  return v2;
}

uint64_t Proto_AttestationBundle.localPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEBF3A4(v6 + v7, v5, &qword_27DAF2050, &unk_22FFB7C50);
  v8 = type metadata accessor for Proto_LocalPolicy(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22FF0B4A8(v5, a1, type metadata accessor for Proto_LocalPolicy);
  }

  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2050, &unk_22FFB7C50);
  }

  return result;
}

uint64_t Proto_AttestationBundle.sepAttestation.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);
  sub_22FEA5608(v2, *(v1 + 24));
  return v2;
}

uint64_t Proto_TransparencyProofs.proofs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(v1 + v3, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FF0B4A8(a1, v1 + v3, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Proto_AppData.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_AppData(0) + 32);
  sub_22FEAEA34(v1 + v3, &qword_27DAF1D38, &qword_22FFB4270);
  v4 = sub_22FFB0F18();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t Proto_HashAlg.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_22FF07FC8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_22FF07FF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF0800C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CBB8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22FF08058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_22FEA5608(v4, v5);
}

uint64_t sub_22FF080B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  sub_22FEA5608(v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v7 = sub_22FF10520(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  v8 = v7[2];
  v9 = v7[3];
  v7[2] = v3;
  v7[3] = v4;
  return sub_22FEA55AC(v8, v9);
}

uint64_t Proto_AttestationBundle.sepAttestation.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v8 = sub_22FF10520(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  v9 = v8[2];
  v10 = v8[3];
  v8[2] = a1;
  v8[3] = a2;
  return sub_22FEA55AC(v9, v10);
}

void (*Proto_AttestationBundle.sepAttestation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF082B0;
}

void sub_22FF082B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_22FEA5608(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v8 = sub_22FF10520(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    v11 = v8[2];
    v12 = v8[3];
    v8[2] = v3;
    v8[3] = v5;
    sub_22FEA55AC(v11, v12);
    v13 = *(v2 + 72);
    v14 = *(v2 + 80);
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v6 + v4);
    if ((v15 & 1) == 0)
    {
      v17 = *(v2 + 96);
      v18 = *(v2 + 88);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v16 = sub_22FF10520(v16);
      *(v18 + v17) = v16;
    }

    swift_beginAccess();
    v13 = v16[2];
    v14 = v16[3];
    v16[2] = v3;
    v16[3] = v5;
  }

  sub_22FEA55AC(v13, v14);

  free(v2);
}

uint64_t sub_22FF083E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *a2 = v4;
  a2[1] = v5;
  return sub_22FEA5608(v4, v5);
}

uint64_t sub_22FF08440(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  sub_22FEA5608(v3, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v7 = sub_22FF10520(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  v8 = v7[4];
  v9 = v7[5];
  v7[4] = v3;
  v7[5] = v4;
  return sub_22FEA55AC(v8, v9);
}

uint64_t Proto_AttestationBundle.apTicket.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v8 = sub_22FF10520(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  v9 = v8[4];
  v10 = v8[5];
  v8[4] = a1;
  v8[5] = a2;
  return sub_22FEA55AC(v9, v10);
}

void (*Proto_AttestationBundle.apTicket.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF0863C;
}

void sub_22FF0863C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    sub_22FEA5608(*(*a1 + 72), v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v8 = sub_22FF10520(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    v11 = v8[4];
    v12 = v8[5];
    v8[4] = v3;
    v8[5] = v5;
    sub_22FEA55AC(v11, v12);
    v13 = *(v2 + 72);
    v14 = *(v2 + 80);
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v6 + v4);
    if ((v15 & 1) == 0)
    {
      v17 = *(v2 + 96);
      v18 = *(v2 + 88);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v16 = sub_22FF10520(v16);
      *(v18 + v17) = v16;
    }

    swift_beginAccess();
    v13 = v16[4];
    v14 = v16[5];
    v16[4] = v3;
    v16[5] = v5;
  }

  sub_22FEA55AC(v13, v14);

  free(v2);
}

uint64_t Proto_AttestationBundle.sealedHashes.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v6 + v7, v5, &qword_27DAF26E8, &qword_22FFB7C60);
  v8 = type metadata accessor for Proto_SealedHashLedger(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22FF0B4A8(v5, a1, type metadata accessor for Proto_SealedHashLedger);
  }

  *a1 = sub_22FFA6E68(MEMORY[0x277D84F90]);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF26E8, &qword_22FFB7C60);
  }

  return result;
}

uint64_t sub_22FF088FC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v8 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF26E8, &qword_22FFB7C60);
  v9 = type metadata accessor for Proto_SealedHashLedger(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22FF0B4A8(v6, a2, type metadata accessor for Proto_SealedHashLedger);
  }

  *a2 = sub_22FFA6E68(MEMORY[0x277D84F90]);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF26E8, &qword_22FFB7C60);
  }

  return result;
}

uint64_t sub_22FF08A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_SealedHashLedger(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF1C994(a1, v10, type metadata accessor for Proto_SealedHashLedger);
  v11 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF10520(v13);
    *(a2 + v11) = v13;
  }

  sub_22FF0B4A8(v10, v6, type metadata accessor for Proto_SealedHashLedger);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF26E8, &qword_22FFB7C60);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.sealedHashes.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF10520(v9);
    *(v2 + v7) = v9;
  }

  sub_22FF0B4A8(a1, v6, type metadata accessor for Proto_SealedHashLedger);
  v10 = type metadata accessor for Proto_SealedHashLedger(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF26E8, &qword_22FFB7C60);
  return swift_endAccess();
}

uint64_t Proto_SealedHashLedger.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_22FFA6E68(MEMORY[0x277D84F90]);
  type metadata accessor for Proto_SealedHashLedger(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void (*Proto_AttestationBundle.sealedHashes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_SealedHashLedger(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF26E8, &qword_22FFB7C60);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = sub_22FFA6E68(MEMORY[0x277D84F90]);
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF26E8, &qword_22FFB7C60);
    }
  }

  else
  {
    sub_22FF0B4A8(v8, v14, type metadata accessor for Proto_SealedHashLedger);
  }

  return sub_22FF09090;
}

void sub_22FF09090(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF1C994(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_SealedHashLedger);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF10520(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF0B4A8(v10, v14, type metadata accessor for Proto_SealedHashLedger);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF26E8, &qword_22FFB7C60);
    swift_endAccess();
    sub_22FF1C9FC(v9, type metadata accessor for Proto_SealedHashLedger);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF10520(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF0B4A8(v9, v14, type metadata accessor for Proto_SealedHashLedger);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF26E8, &qword_22FFB7C60);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_22FF09340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v4 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22FF093AC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v6 = sub_22FF10520(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  *(v6 + v7) = v3;
}

uint64_t Proto_AttestationBundle.provisioningCertificateChain.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v6 = sub_22FF10520(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  *(v6 + v7) = a1;
}

void (*Proto_AttestationBundle.provisioningCertificateChain.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_22FF095AC;
}

void sub_22FF095AC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v7 = sub_22FF10520(v7);
      *(v9 + v8) = v7;
    }

    v10 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
    swift_beginAccess();
    *(v7 + v10) = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v12 = sub_22FF10520(v12);
      *(v14 + v13) = v12;
    }

    v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
    swift_beginAccess();
    *(v12 + v15) = v3;
  }

  free(v2);
}

void (*Proto_AttestationBundle.appData.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF0979C;
}

uint64_t sub_22FF097A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v8 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF1520, &qword_22FFB3A30);
  v9 = sub_22FFB0EE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  sub_22FFB0ED8();
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF1520, &qword_22FFB3A30);
  }

  return result;
}

uint64_t sub_22FF09934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_22FFB0EE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF10520(v13);
    *(a2 + v11) = v13;
  }

  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF1520, &qword_22FFB3A30);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.keyExpiration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF10520(v9);
    *(v2 + v7) = v9;
  }

  v10 = sub_22FFB0EE8();
  v11 = *(v10 - 8);
  (*(v11 + 32))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v12, &qword_27DAF1520, &qword_22FFB3A30);
  return swift_endAccess();
}

void (*Proto_AttestationBundle.keyExpiration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = sub_22FFB0EE8();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF1520, &qword_22FFB3A30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_22FFB0ED8();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_22FF09F0C;
}

void sub_22FF09F0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    (*(*(v2 + 104) + 16))(*(v2 + 112), *(v2 + 120), *(v2 + 96));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF10520(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF1520, &qword_22FFB3A30);
    swift_endAccess();
    (*(v12 + 8))(v9, v11);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF10520(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    (*(v22 + 32))(v14, v9, v21);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF1520, &qword_22FFB3A30);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

BOOL sub_22FF0A190(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_22FEBF3A4(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_22FEAEA34(v11, a1, a2);
  return v15;
}

uint64_t sub_22FF0A2D8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v15 = sub_22FF10520(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_22FEFF0DC(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.transparencyProofs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v6 + v7, v5, &qword_27DAF2118, &unk_22FFB5C70);
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22FF0B4A8(v5, a1, type metadata accessor for Proto_TransparencyProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2118, &unk_22FFB5C70);
  }

  return result;
}

uint64_t sub_22FF0A5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v8 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v7 + v8, v6, &qword_27DAF2118, &unk_22FFB5C70);
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22FF0B4A8(v6, a2, type metadata accessor for Proto_TransparencyProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2118, &unk_22FFB5C70);
  }

  return result;
}

uint64_t sub_22FF0A7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_TransparencyProofs(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF1C994(a1, v10, type metadata accessor for Proto_TransparencyProofs);
  v11 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF10520(v13);
    *(a2 + v11) = v13;
  }

  sub_22FF0B4A8(v10, v6, type metadata accessor for Proto_TransparencyProofs);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF2118, &unk_22FFB5C70);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.transparencyProofs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF10520(v9);
    *(v2 + v7) = v9;
  }

  sub_22FF0B4A8(a1, v6, type metadata accessor for Proto_TransparencyProofs);
  v10 = type metadata accessor for Proto_TransparencyProofs(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF2118, &unk_22FFB5C70);
  return swift_endAccess();
}

uint64_t Proto_TransparencyProofs.init()@<X0>(uint64_t a1@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v2 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  v3 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

void (*Proto_AttestationBundle.transparencyProofs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_TransparencyProofs(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2118, &unk_22FFB5C70);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2118, &unk_22FFB5C70);
    }
  }

  else
  {
    sub_22FF0B4A8(v8, v14, type metadata accessor for Proto_TransparencyProofs);
  }

  return sub_22FF0AE0C;
}

void sub_22FF0AE0C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF1C994(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_TransparencyProofs);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF10520(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF0B4A8(v10, v14, type metadata accessor for Proto_TransparencyProofs);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF2118, &unk_22FFB5C70);
    swift_endAccess();
    sub_22FF1C9FC(v9, type metadata accessor for Proto_TransparencyProofs);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF10520(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF0B4A8(v9, v14, type metadata accessor for Proto_TransparencyProofs);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF2118, &unk_22FFB5C70);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_22FF0B0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Proto_LocalPolicy(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF1C994(a1, v10, type metadata accessor for Proto_LocalPolicy);
  v11 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v13 = sub_22FF10520(v13);
    *(a2 + v11) = v13;
  }

  sub_22FF0B4A8(v10, v6, type metadata accessor for Proto_LocalPolicy);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v13 + v14, &qword_27DAF2050, &unk_22FFB7C50);
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.localPolicy.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v9 = sub_22FF10520(v9);
    *(v2 + v7) = v9;
  }

  sub_22FF0B4A8(a1, v6, type metadata accessor for Proto_LocalPolicy);
  v10 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEFF0DC(v6, v9 + v11, &qword_27DAF2050, &unk_22FFB7C50);
  return swift_endAccess();
}

uint64_t Proto_LocalPolicy.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for Proto_LocalPolicy(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF0B4A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Proto_AttestationBundle.localPolicy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Proto_LocalPolicy(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2050, &unk_22FFB7C50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2050, &unk_22FFB7C50);
    }
  }

  else
  {
    sub_22FF0B4A8(v8, v14, type metadata accessor for Proto_LocalPolicy);
  }

  return sub_22FF0B798;
}

void sub_22FF0B798(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22FF1C994(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_LocalPolicy);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v6 = sub_22FF10520(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF0B4A8(v10, v14, type metadata accessor for Proto_LocalPolicy);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v6 + v15, &qword_27DAF2050, &unk_22FFB7C50);
    swift_endAccess();
    sub_22FF1C9FC(v9, type metadata accessor for Proto_LocalPolicy);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v18 = sub_22FF10520(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_22FF0B4A8(v9, v14, type metadata accessor for Proto_LocalPolicy);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
    swift_beginAccess();
    sub_22FEFF0DC(v14, v18 + v23, &qword_27DAF2050, &unk_22FFB7C50);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_22FF0BA48@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + *a2);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a3 = *v4;
  a3[1] = v6;
  return sub_22FEA5608(v5, v6);
}

uint64_t sub_22FF0BAB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  sub_22FEA5608(v7, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v11 = sub_22FF10520(v11);
    *(a2 + v9) = v11;
  }

  v12 = (v11 + *a5);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v7;
  v12[1] = v8;
  return sub_22FEA55AC(v13, v14);
}

uint64_t sub_22FF0BB80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v10 = sub_22FF10520(v10);
    *(v5 + v8) = v10;
  }

  v11 = (v10 + *a3);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  *v11 = a1;
  v11[1] = a2;
  return sub_22FEA55AC(v12, v13);
}

void (*Proto_AttestationBundle.sfrManifest.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v8;
  sub_22FEA5608(v7, v8);
  return sub_22FF0BCE4;
}

void sub_22FF0BCF0(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    sub_22FEA5608(*(*a1 + 72), v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v10 = sub_22FF10520(v10);
      *(v12 + v11) = v10;
    }

    v13 = (v10 + *a3);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    *v13 = v5;
    v13[1] = v7;
    sub_22FEA55AC(v14, v15);
    v16 = *(v4 + 72);
    v17 = *(v4 + 80);
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v8 + v6);
    if ((v18 & 1) == 0)
    {
      v20 = *(v4 + 96);
      v21 = *(v4 + 88);
      type metadata accessor for Proto_AttestationBundle._StorageClass(0);
      swift_allocObject();
      v19 = sub_22FF10520(v19);
      *(v21 + v20) = v19;
    }

    v22 = (v19 + *a3);
    swift_beginAccess();
    v16 = *v22;
    v17 = v22[1];
    *v22 = v5;
    v22[1] = v7;
  }

  sub_22FEA55AC(v16, v17);

  free(v4);
}

uint64_t Proto_AttestationBundle.init()@<X0>(uint64_t a1@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v2 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  if (qword_2814912D0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_2814912D8;
}

uint64_t Proto_AppData.domain.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Proto_AppData.domain.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Proto_AppData.name.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Proto_AppData.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_22FF0C024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Proto_AppData(0);
  sub_22FEBF3A4(a1 + *(v7 + 32), v6, &qword_27DAF1D38, &qword_22FFB4270);
  v8 = sub_22FFB0F18();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_22FFB0F08();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF1D38, &qword_22FFB4270);
  }

  return result;
}

uint64_t sub_22FF0C18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *(type metadata accessor for Proto_AppData(0) + 32);
  sub_22FEAEA34(a2 + v8, &qword_27DAF1D38, &qword_22FFB4270);
  (*(v5 + 32))(a2 + v8, v7, v4);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Proto_AppData.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_22FFB0F18();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_AppData(0) + 32);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF1D38, &qword_22FFB4270);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_22FFB0F08();
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF1D38, &qword_22FFB4270);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_22FF0C4CC;
}

void sub_22FF0C4CC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_22FEAEA34(v9 + v3, &qword_27DAF1D38, &qword_22FFB4270);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_22FEAEA34(v9 + v3, &qword_27DAF1D38, &qword_22FFB4270);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_AppData.hasMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_AppData(0);
  sub_22FEBF3A4(v0 + *(v4 + 32), v3, &qword_27DAF1D38, &qword_22FFB4270);
  v5 = sub_22FFB0F18();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF1D38, &qword_22FFB4270);
  return v6;
}

Swift::Void __swiftcall Proto_AppData.clearMetadata()()
{
  v1 = *(type metadata accessor for Proto_AppData(0) + 32);
  sub_22FEAEA34(v0 + v1, &qword_27DAF1D38, &qword_22FFB4270);
  v2 = sub_22FFB0F18();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_AppData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  v2 = type metadata accessor for Proto_AppData(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 32);
  v4 = sub_22FFB0F18();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

void Proto_LocalPolicy.implementation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Proto_LocalPolicy.implementation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

unint64_t Proto_LocalPolicy.Implementation.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Proto_LocalPolicy.Implementation.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_22FF0C9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB64();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Proto_SealedHashLedger.slots.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void Proto_SealedHash.hashAlg.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Proto_SealedHash.hashAlg.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Proto_SealedHash.entries.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_22FF0CBC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF0CC5C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_SealedHash.Entry.digest.getter()
{
  v1 = *(v0 + 8);
  sub_22FEA5608(v1, *(v0 + 16));
  return v1;
}

uint64_t Proto_SealedHash.Entry.digest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Proto_SealedHash.Entry.generic.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v0 + *(v4 + 24), v3, &qword_27DAF2130, &unk_22FFB5C80);
  v5 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_22FEAEA34(v3, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return *v3;
    }

    sub_22FF1C9FC(v3, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  return 0;
}

uint64_t sub_22FF0CFE4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v11 - v5);
  v7 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v7 + 24), v6, &qword_27DAF2130, &unk_22FFB5C80);
  v8 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    result = sub_22FEAEA34(v6, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v10 = *v6;
      goto LABEL_6;
    }

    result = sub_22FF1C9FC(v6, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v10 = xmmword_22FFB33B0;
LABEL_6:
  *a2 = v10;
  return result;
}

uint64_t sub_22FF0D134(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 24));
  sub_22FEA5608(v2, v3);
  sub_22FEAEA34(v4, &qword_27DAF2130, &unk_22FFB5C80);
  *v4 = v2;
  v4[1] = v3;
  v5 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 0, 1, v5);
}

uint64_t Proto_SealedHash.Entry.generic.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 24));
  sub_22FEAEA34(v5, &qword_27DAF2130, &unk_22FFB5C80);
  *v5 = a1;
  v5[1] = a2;
  v6 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v5, 0, 1, v6);
}

void (*Proto_SealedHash.Entry.generic.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  v9 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  *(v5 + 48) = v9;
  sub_22FEBF3A4(v1 + v9, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v10 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  *(v5 + 32) = v10;
  v11 = *(v10 - 8);
  *(v5 + 40) = v11;
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v8;
      goto LABEL_12;
    }

    sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v12 = xmmword_22FFB33B0;
LABEL_12:
  *v5 = v12;
  return sub_22FF0D44C;
}

void sub_22FF0D44C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = *(*a1 + 12);
  v8 = (*a1)[3];
  v9 = ((*a1)[2] + v7);
  if (a2)
  {
    sub_22FEA5608(**a1, v3);
    sub_22FEAEA34(v9, &qword_27DAF2130, &unk_22FFB5C80);
    *v9 = v4;
    v9[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v9, 0, 1, v5);
    sub_22FEA55AC(*v2, v2[1]);
  }

  else
  {
    sub_22FEAEA34((*a1)[2] + v7, &qword_27DAF2130, &unk_22FFB5C80);
    *v9 = v4;
    v9[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v9, 0, 1, v5);
  }

  free(v8);

  free(v2);
}

uint64_t Proto_SealedHash.Entry.cryptex.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v1 + *(v6 + 24), v5, &qword_27DAF2130, &unk_22FFB5C80);
  v7 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_22FEAEA34(v5, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_22FF0B4A8(v5, a1, type metadata accessor for Proto_Cryptex);
    }

    sub_22FF1C9FC(v5, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  *a1 = xmmword_22FFB33B0;
  type metadata accessor for Proto_Cryptex(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF0D6E8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v7 + 24), v6, &qword_27DAF2130, &unk_22FFB5C80);
  v8 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_22FEAEA34(v6, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_22FF0B4A8(v6, a2, type metadata accessor for Proto_Cryptex);
    }

    sub_22FF1C9FC(v6, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  *a2 = xmmword_22FFB33B0;
  type metadata accessor for Proto_Cryptex(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t Proto_Cryptex.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  type metadata accessor for Proto_Cryptex(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void (*Proto_SealedHash.Entry.cryptex.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Proto_Cryptex(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  *(v5 + 12) = v12;
  sub_22FEBF3A4(v1 + v12, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v13 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
LABEL_15:
    *v11 = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    return sub_22FF0DB00;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    goto LABEL_15;
  }

  sub_22FF0B4A8(v8, v11, type metadata accessor for Proto_Cryptex);
  return sub_22FF0DB00;
}

uint64_t Proto_SealedHash.Entry.cryptexSalt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v1 + *(v6 + 24), v5, &qword_27DAF2130, &unk_22FFB5C80);
  v7 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_22FEAEA34(v5, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22FF0B4A8(v5, a1, type metadata accessor for Proto_Cryptex.Salt);
    }

    sub_22FF1C9FC(v5, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF0DCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v7 + 24), v6, &qword_27DAF2130, &unk_22FFB5C80);
  v8 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_22FEAEA34(v6, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_22FF0B4A8(v6, a2, type metadata accessor for Proto_Cryptex.Salt);
    }

    sub_22FF1C9FC(v6, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void (*Proto_SealedHash.Entry.cryptexSalt.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Proto_Cryptex.Salt(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  *(v5 + 12) = v12;
  sub_22FEBF3A4(v1 + v12, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v13 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
LABEL_15:
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    return sub_22FF0E050;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    goto LABEL_15;
  }

  sub_22FF0B4A8(v8, v11, type metadata accessor for Proto_Cryptex.Salt);
  return sub_22FF0E050;
}

uint64_t Proto_SealedHash.Entry.secureConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v1 + *(v6 + 24), v5, &qword_27DAF2130, &unk_22FFB5C80);
  v7 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_22FEAEA34(v5, &qword_27DAF2130, &unk_22FFB5C80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_22FF0B4A8(v5, a1, type metadata accessor for Proto_SecureConfig);
    }

    sub_22FF1C9FC(v5, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v9 = xmmword_22FFB33B0;
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
  *(a1 + 24) = v9;
  type metadata accessor for Proto_SecureConfig(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF0E234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_22FF1C994(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  sub_22FEAEA34(a2 + v15, &qword_27DAF2130, &unk_22FFB5C80);
  sub_22FF0B4A8(v14, a2 + v15, a7);
  v16 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t sub_22FF0E370(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  sub_22FEAEA34(v3 + v6, &qword_27DAF2130, &unk_22FFB5C80);
  sub_22FF0B4A8(a1, v3 + v6, a2);
  v7 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

uint64_t Proto_SecureConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
  *(a1 + 24) = xmmword_22FFB33B0;
  type metadata accessor for Proto_SecureConfig(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void (*Proto_SealedHash.Entry.secureConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Proto_SecureConfig(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  v12 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  *(v5 + 12) = v12;
  sub_22FEBF3A4(v1 + v12, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v13 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
LABEL_15:
    *v11 = xmmword_22FFB33B0;
    *(v11 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
    *(v11 + 24) = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    return sub_22FF0E6FC;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22FF1C9FC(v8, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    goto LABEL_15;
  }

  sub_22FF0B4A8(v8, v11, type metadata accessor for Proto_SecureConfig);
  return sub_22FF0E6FC;
}

void sub_22FF0E740(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_22FF1C994(v12, v11, a5);
    sub_22FEAEA34(v13 + v10, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_22FF1C9FC(v12, a6);
  }

  else
  {
    sub_22FEAEA34(v13 + v10, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t Proto_SealedHash.Entry.metadata.getter()
{
  type metadata accessor for Proto_SealedHash.Entry(0);
}

uint64_t Proto_SealedHash.Entry.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Proto_SealedHash.Entry.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Proto_SealedHash.Entry.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Proto_Cryptex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for Proto_Cryptex(0);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t static Proto_Cryptex.Salt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t Proto_SealedHash.Entry.Flags.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 4)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  if (result)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF0EC48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  v3 = result == 0;
  if (result == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  if (result == 2)
  {
    v3 = 1;
  }

  if (result != 4)
  {
    v2 = v4;
  }

  *a2 = v2;
  if (result == 4)
  {
    v3 = 1;
  }

  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t *sub_22FF0ECA8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  if (*result == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = *result;
  }

  if (v2 == 2)
  {
    v3 = 1;
  }

  v5 = v2 == 4;
  if (v2 == 4)
  {
    v6 = 2;
  }

  else
  {
    v6 = v4;
  }

  *a2 = v6;
  v7 = v5 || v3;
  *(a2 + 8) = v7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FF0ED00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1E6C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Proto_SealedHash.Entry.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_22FFB33B0;
  v2 = type metadata accessor for Proto_SealedHash.Entry(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  *(a1 + v5) = sub_22FFA6D50(MEMORY[0x277D84F90]);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t Proto_SealedHash.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for Proto_SealedHash(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t Proto_Cryptex.image4Manifest.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t Proto_Cryptex.image4Manifest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_22FF0EF08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF0EFA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_SecureConfig.data.getter()
{
  v1 = *(v0 + 24);
  sub_22FEA5608(v1, *(v0 + 32));
  return v1;
}

uint64_t Proto_SecureConfig.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_22FF0F170@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF0F20C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Proto_TransparencyProofs.proofs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FEBF3A4(v1 + *(v6 + 20), v5, &qword_27DAF37C0, &unk_22FFB5C60);
  v7 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FF0B4A8(v5, a1, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for LogEntry(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  return result;
}

uint64_t sub_22FF0F4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FEBF3A4(a1 + *(v7 + 20), v6, &qword_27DAF37C0, &unk_22FFB5C60);
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FF0B4A8(v6, a2, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for LogEntry(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  return result;
}

uint64_t sub_22FF0F690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF1C994(a1, v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v8 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(a2 + v8, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FF0B4A8(v7, a2 + v8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Proto_TransparencyProofs.proofs.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF37C0, &unk_22FFB5C60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for LogEntry(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    sub_22FF0B4A8(v8, v14, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  return sub_22FF0FA58;
}

void sub_22FF0FA58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22FF1C994((*a1)[5], v4, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FEAEA34(v9 + v3, &qword_27DAF37C0, &unk_22FFB5C60);
    sub_22FF0B4A8(v4, v9 + v3, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22FF1C9FC(v5, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  else
  {
    sub_22FEAEA34(v9 + v3, &qword_27DAF37C0, &unk_22FFB5C60);
    sub_22FF0B4A8(v5, v9 + v3, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_TransparencyProofs.hasProofs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FEBF3A4(v0 + *(v4 + 20), v3, &qword_27DAF37C0, &unk_22FFB5C60);
  v5 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF37C0, &unk_22FFB5C60);
  return v6;
}

Swift::Void __swiftcall Proto_TransparencyProofs.clearProofs()()
{
  v1 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(v0 + v1, &qword_27DAF37C0, &unk_22FFB5C60);
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22FF0FD60()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_2814904A0);
  __swift_project_value_buffer(v0, qword_2814904A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "HASH_ALG_UNKNOWN";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HASH_ALG_SHA256";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HASH_ALG_SHA384";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF0FFD0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_2814910D0);
  __swift_project_value_buffer(v0, qword_2814910D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22FFB7C30;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "sep_attestation";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "ap_ticket";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sealed_hashes";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "provisioning_certificate_chain";
  *(v13 + 1) = 30;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "app_data";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "key_expiration";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "transparency_proofs";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "local_policy";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "sfr_manifest";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  return sub_22FFB12A8();
}

__n128 sub_22FF10378()
{
  type metadata accessor for Proto_AttestationBundle._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FFB33B0;
  *(v0 + 32) = xmmword_22FFB33B0;
  v1 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v2 = type metadata accessor for Proto_SealedHashLedger(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData) = xmmword_22FFB33B0;
  v3 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  v4 = sub_22FFB0EE8();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  v6 = type metadata accessor for Proto_TransparencyProofs(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  v8 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  result = xmmword_22FFB33B0;
  *(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest) = xmmword_22FFB33B0;
  qword_2814912D8 = v0;
  return result;
}

uint64_t sub_22FF10520(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v55 - v10;
  v65 = xmmword_22FFB33B0;
  *(v1 + 16) = xmmword_22FFB33B0;
  *(v1 + 32) = xmmword_22FFB33B0;
  v11 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v55 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v12 = type metadata accessor for Proto_SealedHashLedger(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v57 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain) = MEMORY[0x277D84F90];
  v13 = (v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData) = v65;
  v14 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  v58 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  v15 = sub_22FFB0EE8();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  v59 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  v17 = type metadata accessor for Proto_TransparencyProofs(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  v60 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  v19 = type metadata accessor for Proto_LocalPolicy(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v62 = (v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest) = v65;
  swift_beginAccess();
  v21 = a1[2];
  v20 = a1[3];
  swift_beginAccess();
  v22 = *(v1 + 16);
  v23 = *(v1 + 24);
  *(v1 + 16) = v21;
  *(v1 + 24) = v20;
  sub_22FEA5608(v21, v20);
  sub_22FEA55AC(v22, v23);
  swift_beginAccess();
  v24 = a1[4];
  v25 = a1[5];
  swift_beginAccess();
  v26 = *(v1 + 32);
  v27 = *(v1 + 40);
  *(v1 + 32) = v24;
  *(v1 + 40) = v25;
  sub_22FEA5608(v24, v25);
  sub_22FEA55AC(v26, v27);
  v28 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  v29 = v56;
  sub_22FEBF3A4(a1 + v28, v56, &qword_27DAF26E8, &qword_22FFB7C60);
  v30 = v55;
  swift_beginAccess();
  sub_22FEFF0DC(v29, v1 + v30, &qword_27DAF26E8, &qword_22FFB7C60);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v57;
  swift_beginAccess();
  *(v1 + v33) = v32;

  v34 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  v37 = *v13;
  v38 = v13[1];
  *v13 = v36;
  v13[1] = v35;
  sub_22FEA5608(v36, v35);
  sub_22FEA55AC(v37, v38);
  v39 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  v40 = v61;
  sub_22FEBF3A4(a1 + v39, v61, &qword_27DAF1520, &qword_22FFB3A30);
  v41 = v58;
  swift_beginAccess();
  sub_22FEFF0DC(v40, v1 + v41, &qword_27DAF1520, &qword_22FFB3A30);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  v43 = v63;
  sub_22FEBF3A4(a1 + v42, v63, &qword_27DAF2118, &unk_22FFB5C70);
  v44 = v59;
  swift_beginAccess();
  sub_22FEFF0DC(v43, v1 + v44, &qword_27DAF2118, &unk_22FFB5C70);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  v46 = v64;
  sub_22FEBF3A4(a1 + v45, v64, &qword_27DAF2050, &unk_22FFB7C50);
  v47 = v60;
  swift_beginAccess();
  sub_22FEFF0DC(v46, v1 + v47, &qword_27DAF2050, &unk_22FFB7C50);
  swift_endAccess();
  v48 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  sub_22FEA5608(v50, v49);

  v51 = v62;
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  *v51 = v50;
  v51[1] = v49;
  sub_22FEA55AC(v52, v53);
  return v1;
}

uint64_t sub_22FF10BEC()
{
  sub_22FEA55AC(*(v0 + 16), *(v0 + 24));
  sub_22FEA55AC(*(v0 + 32), *(v0 + 40));
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes, &qword_27DAF26E8, &qword_22FFB7C60);

  sub_22FEA55AC(*(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData), *(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData + 8));
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration, &qword_27DAF1520, &qword_22FFB3A30);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy, &qword_27DAF2050, &unk_22FFB7C50);
  sub_22FEA55AC(*(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest), *(v0 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest + 8));
  return v0;
}

uint64_t sub_22FF10CCC()
{
  sub_22FF10BEC();

  return swift_deallocClassInstance();
}

uint64_t Proto_AttestationBundle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v10 = sub_22FF10520(v11);
    *(v4 + v8) = v10;
  }

  return sub_22FF10DC8(v10, a1, a2, a3);
}

uint64_t sub_22FF10DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FFB1058();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            sub_22FF1109C(a2, a1, a3, a4);
          }

          else
          {
            sub_22FF11178(a2, a1, a3, a4);
          }
        }

        else if (result == 1)
        {
          sub_22FF10F94(a2, a1, a3, a4);
        }

        else if (result == 2)
        {
          sub_22FF11018(a2, a1, a3, a4);
        }
      }

      else if (result <= 7)
      {
        if (result == 5)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData;
LABEL_25:
          sub_22FF11498(v11, v12, v13, v14, v15);
          goto LABEL_5;
        }

        if (result == 6)
        {
          sub_22FF11204(a2, a1, a3, a4);
        }
      }

      else
      {
        if (result == 8)
        {
          sub_22FF112E0(a2, a1, a3, a4);
          goto LABEL_5;
        }

        if (result != 9)
        {
          if (result != 10)
          {
            goto LABEL_5;
          }

          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest;
          goto LABEL_25;
        }

        sub_22FF113BC(a2, a1, a3, a4);
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FF10F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22FFB10C8();
  return swift_endAccess();
}

uint64_t sub_22FF11018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22FFB10C8();
  return swift_endAccess();
}

uint64_t sub_22FF1109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_SealedHashLedger(0);
  sub_22FF1CB1C(&qword_28148F980, type metadata accessor for Proto_SealedHashLedger, &protocol conformance descriptor for Proto_SealedHashLedger);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF11178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22FFB10A8();
  return swift_endAccess();
}

uint64_t sub_22FF11204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22FFB0EE8();
  sub_22FF1CB1C(&qword_28148F1E0, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF112E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FF1CB1C(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF113BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Proto_LocalPolicy(0);
  sub_22FF1CB1C(&qword_27DAF27C0, type metadata accessor for Proto_LocalPolicy, &protocol conformance descriptor for Proto_LocalPolicy);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FF11498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_22FFB10C8();
  return swift_endAccess();
}

uint64_t Proto_AttestationBundle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Proto_AttestationBundle(0);
  result = sub_22FF1158C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF1158C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v12 == v13)
  {
    goto LABEL_10;
  }

LABEL_9:
  sub_22FEA5608(*(a1 + 16), *(a1 + 24));
  sub_22FFB1228();
  result = sub_22FEA55AC(v9, v10);
  if (v4)
  {
    return result;
  }

LABEL_10:
  swift_beginAccess();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_19;
    }

    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
  }

  else
  {
    if (!v17)
    {
      if ((v16 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v18 = v15;
    v19 = v15 >> 32;
  }

  if (v18 == v19)
  {
    goto LABEL_19;
  }

LABEL_18:
  sub_22FEA5608(*(a1 + 32), *(a1 + 40));
  sub_22FFB1228();
  result = sub_22FEA55AC(v15, v16);
  if (v4)
  {
    return result;
  }

LABEL_19:
  result = sub_22FF1190C(a1, a2, a3, a4);
  if (v4)
  {
    return result;
  }

  v20 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  if (*(*(a1 + v20) + 16))
  {

    sub_22FFB1218();
  }

  v21 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  v24 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_32;
    }

    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
LABEL_30:
    if (v25 == v26)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v24)
  {
    v25 = v22;
    v26 = v22 >> 32;
    goto LABEL_30;
  }

  if ((v23 & 0xFF000000000000) != 0)
  {
LABEL_31:
    sub_22FEA5608(v22, v23);
    sub_22FFB1228();
    sub_22FEA55AC(v22, v23);
  }

LABEL_32:
  sub_22FF11B34(a1, a2, a3, a4);
  sub_22FF11D5C(a1, a2, a3, a4);
  sub_22FF11F84(a1, a2, a3, a4);
  v27 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  result = swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];
  v30 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    if (v30 != 2)
    {
      return result;
    }

    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
LABEL_39:
    if (v31 == v32)
    {
      return result;
    }

LABEL_40:
    sub_22FEA5608(v28, v29);
    sub_22FFB1228();
    return sub_22FEA55AC(v28, v29);
  }

  if (v30)
  {
    v31 = v28;
    v32 = v28 >> 32;
    goto LABEL_39;
  }

  if ((v29 & 0xFF000000000000) != 0)
  {
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_22FF1190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_SealedHashLedger(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF26E8, &qword_22FFB7C60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF26E8, &qword_22FFB7C60);
  }

  sub_22FF0B4A8(v7, v11, type metadata accessor for Proto_SealedHashLedger);
  sub_22FF1CB1C(&qword_28148F980, type metadata accessor for Proto_SealedHashLedger, &protocol conformance descriptor for Proto_SealedHashLedger);
  sub_22FFB1288();
  return sub_22FF1C9FC(v11, type metadata accessor for Proto_SealedHashLedger);
}

uint64_t sub_22FF11B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_22FFB0EE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF1520, &qword_22FFB3A30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF1520, &qword_22FFB3A30);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_22FF1CB1C(&qword_28148F1E0, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  sub_22FFB1288();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22FF11D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF2118, &unk_22FFB5C70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2118, &unk_22FFB5C70);
  }

  sub_22FF0B4A8(v7, v11, type metadata accessor for Proto_TransparencyProofs);
  sub_22FF1CB1C(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);
  sub_22FFB1288();
  return sub_22FF1C9FC(v11, type metadata accessor for Proto_TransparencyProofs);
}

uint64_t sub_22FF11F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_LocalPolicy(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v12, v7, &qword_27DAF2050, &unk_22FFB7C50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2050, &unk_22FFB7C50);
  }

  sub_22FF0B4A8(v7, v11, type metadata accessor for Proto_LocalPolicy);
  sub_22FF1CB1C(&qword_27DAF27C0, type metadata accessor for Proto_LocalPolicy, &protocol conformance descriptor for Proto_LocalPolicy);
  sub_22FFB1288();
  return sub_22FF1C9FC(v11, type metadata accessor for Proto_LocalPolicy);
}

BOOL sub_22FF121B0(void *a1, void *a2)
{
  v132 = type metadata accessor for Proto_LocalPolicy(0);
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v126 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2868, &qword_22FFB90A8);
  MEMORY[0x28223BE20](v129);
  v131 = &v125 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v127 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v134 = &v125 - v9;
  v10 = type metadata accessor for Proto_TransparencyProofs(0);
  v137 = *(v10 - 8);
  v138 = v10;
  MEMORY[0x28223BE20](v10);
  v128 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2120, &qword_22FFB90B0);
  MEMORY[0x28223BE20](v136);
  v139 = &v125 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v133 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v125 - v16;
  v142 = sub_22FFB0EE8();
  v145 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v135 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2870, &qword_22FFB90B8);
  MEMORY[0x28223BE20](v140);
  v141 = &v125 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v150 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v144 = &v125 - v22;
  v151 = type metadata accessor for Proto_SealedHashLedger(0);
  v148 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v146 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2878, &unk_22FFB90C0);
  MEMORY[0x28223BE20](v24);
  v149 = &v125 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v147 = (&v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v30 = &v125 - v29;
  swift_beginAccess();
  v32 = a1[2];
  v31 = a1[3];
  swift_beginAccess();
  v33 = a2[2];
  v34 = a2[3];

  sub_22FEA5608(v32, v31);
  sub_22FEA5608(v33, v34);
  v35 = sub_22FEC3DC8(v32, v31, v33, v34);
  sub_22FEA55AC(v33, v34);
  sub_22FEA55AC(v32, v31);
  if (v35)
  {
    swift_beginAccess();
    v36 = a1[4];
    v37 = a1[5];
    swift_beginAccess();
    v38 = a2[4];
    v39 = a2[5];
    sub_22FEA5608(v36, v37);
    sub_22FEA5608(v38, v39);
    v40 = sub_22FEC3DC8(v36, v37, v38, v39);
    sub_22FEA55AC(v38, v39);
    sub_22FEA55AC(v36, v37);
    if (v40)
    {
      v41 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      sub_22FEBF3A4(a1 + v41, v30, &qword_27DAF26E8, &qword_22FFB7C60);
      v42 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
      swift_beginAccess();
      v43 = *(v24 + 48);
      v44 = v149;
      sub_22FEBF3A4(v30, v149, &qword_27DAF26E8, &qword_22FFB7C60);
      sub_22FEBF3A4(a2 + v42, v44 + v43, &qword_27DAF26E8, &qword_22FFB7C60);
      v45 = *(v148 + 48);
      v46 = v151;
      v47 = a2;
      if (v45(v44, 1, v151) == 1)
      {
        sub_22FEAEA34(v30, &qword_27DAF26E8, &qword_22FFB7C60);
        v48 = v45(v44 + v43, 1, v46);
        v49 = v150;
        if (v48 == 1)
        {
          sub_22FEAEA34(v44, &qword_27DAF26E8, &qword_22FFB7C60);
          goto LABEL_6;
        }
      }

      else
      {
        v73 = v147;
        sub_22FEBF3A4(v44, v147, &qword_27DAF26E8, &qword_22FFB7C60);
        v74 = v45(v44 + v43, 1, v46);
        v49 = v150;
        if (v74 != 1)
        {
          v78 = v44 + v43;
          v79 = v146;
          sub_22FF0B4A8(v78, v146, type metadata accessor for Proto_SealedHashLedger);
          v80 = v44;
          if ((sub_22FF19A3C(*v73, *v79) & 1) == 0)
          {
            v82 = &qword_27DAF26E8;
            v83 = &qword_22FFB7C60;
            sub_22FEAEA34(v30, &qword_27DAF26E8, &qword_22FFB7C60);
            v84 = type metadata accessor for Proto_SealedHashLedger;
            v85 = v73;
LABEL_20:
            v86 = v84;
            sub_22FF1C9FC(v79, v84);
            sub_22FF1C9FC(v85, v86);
            v77 = v80;
            v75 = v82;
            v76 = v83;
            goto LABEL_39;
          }

          sub_22FFB0F88();
          sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v81 = sub_22FFB1478();
          sub_22FEAEA34(v30, &qword_27DAF26E8, &qword_22FFB7C60);
          sub_22FF1C9FC(v79, type metadata accessor for Proto_SealedHashLedger);
          sub_22FF1C9FC(v73, type metadata accessor for Proto_SealedHashLedger);
          sub_22FEAEA34(v80, &qword_27DAF26E8, &qword_22FFB7C60);
          if ((v81 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_6:
          v50 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
          swift_beginAccess();
          v51 = *(a1 + v50);
          v52 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
          swift_beginAccess();
          v53 = *(v47 + v52);

          v54 = sub_22FEE7C00(v51, v53);

          if ((v54 & 1) == 0)
          {
            goto LABEL_18;
          }

          v55 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
          swift_beginAccess();
          v57 = *v55;
          v56 = v55[1];
          v58 = (v47 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
          swift_beginAccess();
          v60 = *v58;
          v59 = v58[1];
          sub_22FEA5608(v57, v56);
          sub_22FEA5608(v60, v59);
          v61 = sub_22FEC3DC8(v57, v56, v60, v59);
          sub_22FEA55AC(v60, v59);
          sub_22FEA55AC(v57, v56);
          if (!v61)
          {
            goto LABEL_18;
          }

          v62 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
          swift_beginAccess();
          v63 = v144;
          sub_22FEBF3A4(a1 + v62, v144, &qword_27DAF1520, &qword_22FFB3A30);
          v64 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
          swift_beginAccess();
          v65 = v141;
          v66 = *(v140 + 48);
          sub_22FEBF3A4(v63, v141, &qword_27DAF1520, &qword_22FFB3A30);
          sub_22FEBF3A4(v47 + v64, v65 + v66, &qword_27DAF1520, &qword_22FFB3A30);
          v67 = *(v145 + 48);
          v68 = v142;
          if (v67(v65, 1, v142) == 1)
          {
            sub_22FEAEA34(v63, &qword_27DAF1520, &qword_22FFB3A30);
            v69 = v67(v65 + v66, 1, v68);
            v70 = v143;
            if (v69 == 1)
            {
              sub_22FEAEA34(v65, &qword_27DAF1520, &qword_22FFB3A30);
LABEL_25:
              v92 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
              swift_beginAccess();
              sub_22FEBF3A4(a1 + v92, v70, &qword_27DAF2118, &unk_22FFB5C70);
              v93 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
              swift_beginAccess();
              v94 = *(v136 + 48);
              v95 = v70;
              v96 = v70;
              v97 = v139;
              sub_22FEBF3A4(v95, v139, &qword_27DAF2118, &unk_22FFB5C70);
              sub_22FEBF3A4(v47 + v93, v97 + v94, &qword_27DAF2118, &unk_22FFB5C70);
              v98 = v138;
              v99 = *(v137 + 48);
              if (v99(v97, 1, v138) == 1)
              {
                sub_22FEAEA34(v96, &qword_27DAF2118, &unk_22FFB5C70);
                if (v99(v97 + v94, 1, v98) == 1)
                {
                  sub_22FEAEA34(v97, &qword_27DAF2118, &unk_22FFB5C70);
LABEL_32:
                  v104 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
                  swift_beginAccess();
                  v105 = v134;
                  sub_22FEBF3A4(a1 + v104, v134, &qword_27DAF2050, &unk_22FFB7C50);
                  v106 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
                  swift_beginAccess();
                  v107 = *(v129 + 48);
                  v108 = v131;
                  sub_22FEBF3A4(v105, v131, &qword_27DAF2050, &unk_22FFB7C50);
                  v109 = v47 + v106;
                  v80 = v108;
                  sub_22FEBF3A4(v109, v108 + v107, &qword_27DAF2050, &unk_22FFB7C50);
                  v110 = *(v130 + 48);
                  v111 = v108;
                  v112 = v132;
                  if (v110(v111, 1, v132) == 1)
                  {
                    sub_22FEAEA34(v105, &qword_27DAF2050, &unk_22FFB7C50);
                    if (v110(v80 + v107, 1, v112) == 1)
                    {
                      sub_22FEAEA34(v80, &qword_27DAF2050, &unk_22FFB7C50);
LABEL_35:
                      v113 = (a1 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
                      swift_beginAccess();
                      v114 = *v113;
                      v115 = v113[1];
                      v116 = (v47 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
                      swift_beginAccess();
                      v117 = *v116;
                      v118 = v116[1];
                      sub_22FEA5608(v114, v115);
                      sub_22FEA5608(v117, v118);
                      v71 = sub_22FEC3DC8(v114, v115, v117, v118);
                      sub_22FEA55AC(v117, v118);
                      sub_22FEA55AC(v114, v115);
                      goto LABEL_12;
                    }

                    goto LABEL_38;
                  }

                  v119 = v127;
                  sub_22FEBF3A4(v80, v127, &qword_27DAF2050, &unk_22FFB7C50);
                  if (v110(v80 + v107, 1, v112) == 1)
                  {
                    sub_22FEAEA34(v134, &qword_27DAF2050, &unk_22FFB7C50);
                    sub_22FF1C9FC(v119, type metadata accessor for Proto_LocalPolicy);
LABEL_38:
                    v75 = &qword_27DAF2868;
                    v76 = &qword_22FFB90A8;
                    v77 = v80;
                    goto LABEL_39;
                  }

                  v79 = v126;
                  sub_22FF0B4A8(v80 + v107, v126, type metadata accessor for Proto_LocalPolicy);
                  v120 = sub_22FEC3DC8(*v119, *(v119 + 8), *v79, *(v79 + 8));
                  v121 = v134;
                  if (!v120)
                  {
                    goto LABEL_46;
                  }

                  v122 = *(v119 + 16);
                  v123 = *(v79 + 16);
                  if (*(v119 + 24))
                  {
                    v122 = v122 != 0;
                  }

                  if (*(v79 + 24) == 1)
                  {
                    if (v123)
                    {
                      if (v122 != 1)
                      {
LABEL_46:
                        v82 = &qword_27DAF2050;
                        v85 = v119;
                        v83 = &unk_22FFB7C50;
                        sub_22FEAEA34(v134, &qword_27DAF2050, &unk_22FFB7C50);
                        v84 = type metadata accessor for Proto_LocalPolicy;
                        goto LABEL_20;
                      }
                    }

                    else if (v122)
                    {
                      goto LABEL_46;
                    }
                  }

                  else if (v122 != v123)
                  {
                    goto LABEL_46;
                  }

                  sub_22FFB0F88();
                  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                  v124 = sub_22FFB1478();
                  sub_22FEAEA34(v121, &qword_27DAF2050, &unk_22FFB7C50);
                  sub_22FF1C9FC(v79, type metadata accessor for Proto_LocalPolicy);
                  sub_22FF1C9FC(v119, type metadata accessor for Proto_LocalPolicy);
                  sub_22FEAEA34(v80, &qword_27DAF2050, &unk_22FFB7C50);
                  if (v124)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_18;
                }

LABEL_30:
                v75 = &qword_27DAF2120;
                v76 = &qword_22FFB90B0;
                v77 = v97;
                goto LABEL_39;
              }

              v100 = v133;
              sub_22FEBF3A4(v97, v133, &qword_27DAF2118, &unk_22FFB5C70);
              if (v99(v97 + v94, 1, v98) == 1)
              {
                sub_22FEAEA34(v143, &qword_27DAF2118, &unk_22FFB5C70);
                sub_22FF1C9FC(v100, type metadata accessor for Proto_TransparencyProofs);
                goto LABEL_30;
              }

              v101 = v97 + v94;
              v102 = v128;
              sub_22FF0B4A8(v101, v128, type metadata accessor for Proto_TransparencyProofs);
              v103 = _s16CloudAttestation24Proto_TransparencyProofsV2eeoiySbAC_ACtFZ_0(v100, v102);
              sub_22FF1C9FC(v102, type metadata accessor for Proto_TransparencyProofs);
              sub_22FEAEA34(v143, &qword_27DAF2118, &unk_22FFB5C70);
              sub_22FF1C9FC(v100, type metadata accessor for Proto_TransparencyProofs);
              sub_22FEAEA34(v97, &qword_27DAF2118, &unk_22FFB5C70);
              if (v103)
              {
                goto LABEL_32;
              }

LABEL_18:
              v71 = 0;
              goto LABEL_12;
            }
          }

          else
          {
            sub_22FEBF3A4(v65, v49, &qword_27DAF1520, &qword_22FFB3A30);
            v87 = v67(v65 + v66, 1, v68);
            v70 = v143;
            if (v87 != 1)
            {
              v88 = v145;
              v89 = v65 + v66;
              v90 = v135;
              (*(v145 + 32))(v135, v89, v68);
              sub_22FF1CB1C(&qword_27DAF2880, MEMORY[0x277D21570], MEMORY[0x277D21578]);
              LODWORD(v151) = sub_22FFB1478();
              v91 = *(v88 + 8);
              v91(v90, v68);
              sub_22FEAEA34(v144, &qword_27DAF1520, &qword_22FFB3A30);
              v91(v49, v68);
              sub_22FEAEA34(v65, &qword_27DAF1520, &qword_22FFB3A30);
              if ((v151 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_25;
            }

            sub_22FEAEA34(v144, &qword_27DAF1520, &qword_22FFB3A30);
            (*(v145 + 8))(v49, v68);
          }

          v75 = &qword_27DAF2870;
          v76 = &qword_22FFB90B8;
          v77 = v65;
          goto LABEL_39;
        }

        sub_22FEAEA34(v30, &qword_27DAF26E8, &qword_22FFB7C60);
        sub_22FF1C9FC(v73, type metadata accessor for Proto_SealedHashLedger);
      }

      v75 = &qword_27DAF2878;
      v76 = &unk_22FFB90C0;
      v77 = v44;
LABEL_39:
      sub_22FEAEA34(v77, v75, v76);
      v71 = 0;
      goto LABEL_12;
    }
  }

  v71 = 0;
LABEL_12:

  return v71;
}

uint64_t sub_22FF13500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 20);
  if (qword_2814912D0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_2814912D8;
}

uint64_t sub_22FF135C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2858, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF13664(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF136D0(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);

  return sub_22FFB11A8();
}

uint64_t sub_22FF13774()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2650);
  __swift_project_value_buffer(v0, qword_27DAF2650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "metadata";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_AppData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_22FF13AB0(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_22FFB10F8();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_22FFB10E8();
    }
  }
}

uint64_t sub_22FF13AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_AppData(0);
  sub_22FFB0F18();
  sub_22FF1CB1C(&qword_28148F1D0, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  return sub_22FFB1128();
}

uint64_t Proto_AppData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_22FFB1258(), !v4))
  {
    v9 = *(v3 + 16);
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_22FFB1248(), !v4))
    {
      v11 = *(v3 + 32);
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v12 || (result = sub_22FFB1248(), !v4))
      {
        result = sub_22FF13C60(v3, a1, a2, a3);
        if (!v4)
        {
          type metadata accessor for Proto_AppData(0);
          return sub_22FFB0F68();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FF13C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_22FFB0F18();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_AppData(0);
  sub_22FEBF3A4(a1 + *(v12 + 32), v7, &qword_27DAF1D38, &qword_22FFB4270);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF1D38, &qword_22FFB4270);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_22FF1CB1C(&qword_28148F1D0, MEMORY[0x277D215C8], MEMORY[0x277D215C0]);
  sub_22FFB1288();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22FF13EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 32);
  v5 = sub_22FFB0F18();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF13FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2850, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF1404C(uint64_t a1)
{
  v2 = sub_22FF1CB1C(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF140B8(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);

  return sub_22FFB11A8();
}

uint64_t sub_22FF14154()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2668);
  __swift_project_value_buffer(v0, qword_27DAF2668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "policy";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "implementation";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_LocalPolicy.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FFB10C8();
      }

      else if (result == 2)
      {
        sub_22FF1CB64();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t Proto_LocalPolicy.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_22FFB1228();
      if (v4)
      {
        return result;
      }

      goto LABEL_10;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 != v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3[2] || (sub_22FF1CB64(), result = sub_22FFB1208(), !v4))
  {
    type metadata accessor for Proto_LocalPolicy(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF14554@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_22FFB33B0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF145D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2848, type metadata accessor for Proto_LocalPolicy, &protocol conformance descriptor for Proto_LocalPolicy);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF14678(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_27DAF27C0, type metadata accessor for Proto_LocalPolicy, &protocol conformance descriptor for Proto_LocalPolicy);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF146E4(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(&qword_27DAF27C0, type metadata accessor for Proto_LocalPolicy, &protocol conformance descriptor for Proto_LocalPolicy);

  return sub_22FFB11A8();
}

uint64_t sub_22FF14764()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2680);
  __swift_project_value_buffer(v0, qword_27DAF2680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "IMPLEMENTATION_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMPLEMENTATION_EC384SHA384";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FF14A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22FFB0F58();
  type metadata accessor for Proto_SealedHash(0);
  sub_22FF1CB1C(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
  sub_22FF1CB1C(&qword_28148FEC8, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);
  return sub_22FFB1038();
}

uint64_t Proto_SealedHashLedger.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_22FFB0F58(), type metadata accessor for Proto_SealedHash(0), sub_22FF1CB1C(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash), sub_22FF1CB1C(&qword_28148FEC8, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash), result = sub_22FFB11C8(), !v5))
  {
    type metadata accessor for Proto_SealedHashLedger(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t static Proto_SealedHashLedger.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22FF19A3C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Proto_SealedHashLedger(0);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF14DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2840, type metadata accessor for Proto_SealedHashLedger, &protocol conformance descriptor for Proto_SealedHashLedger);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF14E54(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_28148F980, type metadata accessor for Proto_SealedHashLedger, &protocol conformance descriptor for Proto_SealedHashLedger);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF14EC0(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(&qword_28148F980, type metadata accessor for Proto_SealedHashLedger, &protocol conformance descriptor for Proto_SealedHashLedger);

  return sub_22FFB11A8();
}

uint64_t sub_22FF14F3C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22FF19A3C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF15000()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_281490060);
  __swift_project_value_buffer(v0, qword_281490060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hash_alg";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entries";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_SealedHash.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FF1CBB8();
        sub_22FFB1098();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_SealedHash.Entry(0);
        sub_22FF1CB1C(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);
        sub_22FFB1118();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t Proto_SealedHash.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22FF1CBB8(), result = sub_22FFB1208(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for Proto_SealedHash.Entry(0), sub_22FF1CB1C(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry), result = sub_22FFB1278(), !v4))
    {
      type metadata accessor for Proto_SealedHash(0);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FF154D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2838, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF15578(uint64_t a1)
{
  v2 = sub_22FF1CB1C(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF155E4(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(qword_28148FED0, type metadata accessor for Proto_SealedHash, &protocol conformance descriptor for Proto_SealedHash);

  return sub_22FFB11A8();
}

uint64_t sub_22FF15664()
{
  result = MEMORY[0x23190DD10](0x7972746E452ELL, 0xE600000000000000);
  qword_27DAF2698 = 0xD000000000000010;
  unk_27DAF26A0 = 0x800000022FFCA5F0;
  return result;
}

uint64_t sub_22FF156F4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148FF90);
  __swift_project_value_buffer(v0, qword_28148FF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FFB7C40;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "flags";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "digest";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 7;
  *v10 = "generic";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cryptex";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cryptex_salt";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "secure_config";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "metadata";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t Proto_SealedHash.Entry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_22FFB10D8();
          break;
        case 2:
          sub_22FFB10C8();
          break;
        case 3:
          sub_22FF15B70(v5, a1, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_22FF16CC8(a1, v5, a2, a3);
      }

      else if (result == 7)
      {
        sub_22FF16D94(a1, v5, a2, a3);
      }
    }

    else if (result == 4)
    {
      sub_22FF16138(v5, a1, a2, a3);
    }

    else
    {
      sub_22FF16700(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22FF15B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Proto_Cryptex(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2888, &qword_22FFB90D8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  v43 = a1;
  v41 = v28;
  sub_22FEBF3A4(a1 + v28, v12, &qword_27DAF2130, &unk_22FFB5C80);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_22FEAEA34(v12, &qword_27DAF2130, &unk_22FFB5C80);
    v30 = v13;
  }

  else
  {
    sub_22FF0B4A8(v12, v19, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FF0B4A8(v19, v17, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22FEAEA34(v24, &qword_27DAF2888, &qword_22FFB90D8);
      v31 = v17;
      v32 = v45;
      sub_22FF0B4A8(v31, v45, type metadata accessor for Proto_Cryptex);
      sub_22FF0B4A8(v32, v24, type metadata accessor for Proto_Cryptex);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_22FF1C9FC(v17, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_22FF1CB1C(qword_281490550, type metadata accessor for Proto_Cryptex, &protocol conformance descriptor for Proto_Cryptex);
  v35 = v48;
  sub_22FFB1128();
  if (v35)
  {
    return sub_22FEAEA34(v24, &qword_27DAF2888, &qword_22FFB90D8);
  }

  sub_22FEBF3A4(v24, v34, &qword_27DAF2888, &qword_22FFB90D8);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_22FEAEA34(v24, &qword_27DAF2888, &qword_22FFB90D8);
    return sub_22FEAEA34(v34, &qword_27DAF2888, &qword_22FFB90D8);
  }

  else
  {
    v37 = v44;
    sub_22FF0B4A8(v34, v44, type metadata accessor for Proto_Cryptex);
    if (v29 != 1)
    {
      sub_22FFB1068();
    }

    sub_22FEAEA34(v24, &qword_27DAF2888, &qword_22FFB90D8);
    v38 = v43;
    v39 = v41;
    sub_22FEAEA34(v43 + v41, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v37, v38 + v39, type metadata accessor for Proto_Cryptex);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_22FF16138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Proto_Cryptex.Salt(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2890, &qword_22FFB90E0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  v43 = a1;
  v41 = v28;
  sub_22FEBF3A4(a1 + v28, v12, &qword_27DAF2130, &unk_22FFB5C80);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_22FEAEA34(v12, &qword_27DAF2130, &unk_22FFB5C80);
    v30 = v13;
  }

  else
  {
    sub_22FF0B4A8(v12, v19, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FF0B4A8(v19, v17, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22FEAEA34(v24, &qword_27DAF2890, &qword_22FFB90E0);
      v31 = v17;
      v32 = v45;
      sub_22FF0B4A8(v31, v45, type metadata accessor for Proto_Cryptex.Salt);
      sub_22FF0B4A8(v32, v24, type metadata accessor for Proto_Cryptex.Salt);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_22FF1C9FC(v17, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_22FF1CB1C(&qword_27DAF27F0, type metadata accessor for Proto_Cryptex.Salt, &protocol conformance descriptor for Proto_Cryptex.Salt);
  v35 = v48;
  sub_22FFB1128();
  if (v35)
  {
    return sub_22FEAEA34(v24, &qword_27DAF2890, &qword_22FFB90E0);
  }

  sub_22FEBF3A4(v24, v34, &qword_27DAF2890, &qword_22FFB90E0);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_22FEAEA34(v24, &qword_27DAF2890, &qword_22FFB90E0);
    return sub_22FEAEA34(v34, &qword_27DAF2890, &qword_22FFB90E0);
  }

  else
  {
    v37 = v44;
    sub_22FF0B4A8(v34, v44, type metadata accessor for Proto_Cryptex.Salt);
    if (v29 != 1)
    {
      sub_22FFB1068();
    }

    sub_22FEAEA34(v24, &qword_27DAF2890, &qword_22FFB90E0);
    v38 = v43;
    v39 = v41;
    sub_22FEAEA34(v43 + v41, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v37, v38 + v39, type metadata accessor for Proto_Cryptex.Salt);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_22FF16700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Proto_SecureConfig(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2898, &qword_22FFB90E8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v47 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v46 = v6;
  v25 = *(v6 + 56);
  v49 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v40 - v23, 1, 1, v26);
  v28 = *(type metadata accessor for Proto_SealedHash.Entry(0) + 24);
  v43 = a1;
  v41 = v28;
  sub_22FEBF3A4(a1 + v28, v12, &qword_27DAF2130, &unk_22FFB5C80);
  v42 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_22FEAEA34(v12, &qword_27DAF2130, &unk_22FFB5C80);
    v30 = v13;
  }

  else
  {
    sub_22FF0B4A8(v12, v19, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    sub_22FF0B4A8(v19, v17, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22FEAEA34(v24, &qword_27DAF2898, &qword_22FFB90E8);
      v31 = v17;
      v32 = v45;
      sub_22FF0B4A8(v31, v45, type metadata accessor for Proto_SecureConfig);
      sub_22FF0B4A8(v32, v24, type metadata accessor for Proto_SecureConfig);
      v33 = v49;
      v27(v24, 0, 1, v49);
      goto LABEL_7;
    }

    sub_22FF1C9FC(v17, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v33 = v49;
LABEL_7:
  v34 = v47;
  sub_22FF1CB1C(&qword_28148FD30, type metadata accessor for Proto_SecureConfig, &protocol conformance descriptor for Proto_SecureConfig);
  v35 = v48;
  sub_22FFB1128();
  if (v35)
  {
    return sub_22FEAEA34(v24, &qword_27DAF2898, &qword_22FFB90E8);
  }

  sub_22FEBF3A4(v24, v34, &qword_27DAF2898, &qword_22FFB90E8);
  if ((*(v46 + 48))(v34, 1, v33) == 1)
  {
    sub_22FEAEA34(v24, &qword_27DAF2898, &qword_22FFB90E8);
    return sub_22FEAEA34(v34, &qword_27DAF2898, &qword_22FFB90E8);
  }

  else
  {
    v37 = v44;
    sub_22FF0B4A8(v34, v44, type metadata accessor for Proto_SecureConfig);
    if (v29 != 1)
    {
      sub_22FFB1068();
    }

    sub_22FEAEA34(v24, &qword_27DAF2898, &qword_22FFB90E8);
    v38 = v43;
    v39 = v41;
    sub_22FEAEA34(v43 + v41, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FF0B4A8(v37, v38 + v39, type metadata accessor for Proto_SecureConfig);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v38 + v39, 0, 1, v30);
  }
}

uint64_t sub_22FF16CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FFB0F58();
  sub_22FFB0F48();
  sub_22FF1CB1C(&qword_27DAF2718, MEMORY[0x277D21648], MEMORY[0x277D21640]);
  return sub_22FFB1048();
}

uint64_t sub_22FF16D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v18 = xmmword_22FFB2D00;
  sub_22FFB10B8();
  v9 = v18;
  if (v4 || *(&v18 + 1) >> 60 == 15)
  {
    return sub_22FEA56EC(v18, *(&v18 + 1));
  }

  v10 = (a2 + *(type metadata accessor for Proto_SealedHash.Entry(0) + 24));
  sub_22FEBF3A4(v10, v8, &qword_27DAF2130, &unk_22FFB5C80);
  v11 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v17 = *(v11 - 8);
  v12 = *(v17 + 48);
  v19 = v11;
  v13 = v12(v8, 1);
  sub_22FEA5608(v9, *(&v9 + 1));
  sub_22FEAEA34(v8, &qword_27DAF2130, &unk_22FFB5C80);
  if (v13 != 1)
  {
    sub_22FFB1068();
  }

  sub_22FEA56EC(v9, *(&v9 + 1));
  sub_22FEAEA34(v10, &qword_27DAF2130, &unk_22FFB5C80);
  *v10 = v9;
  v15 = v19;
  swift_storeEnumTagMultiPayload();
  return (*(v17 + 56))(v10, 0, 1, v15);
}

uint64_t Proto_SealedHash.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - v12;
  if (*v3)
  {
    result = sub_22FFB1238();
    if (v4)
    {
      return result;
    }
  }

  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2 || *(v15 + 16) == *(v15 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v17)
  {
    if (v15 == v15 >> 32)
    {
      goto LABEL_12;
    }
  }

  else if ((v16 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_12:
  v18 = v4;
  v19 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(v3 + *(v19 + 24), v13, &qword_27DAF2130, &unk_22FFB5C80);
  v20 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v20 - 8) + 48))(v13, 1, v20) != 1)
  {
    sub_22FEBF3A4(v13, v11, &qword_27DAF2130, &unk_22FFB5C80);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_22FF17598(v3, a1, a2, a3);
      }

      else
      {
        sub_22FF177DC(v3, a1, a2, a3);
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22FF1C9FC(v11, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        goto LABEL_23;
      }

      sub_22FF17354(v3, a1, a2, a3);
    }

    sub_22FF1C9FC(v11, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    if (v4)
    {
      return sub_22FEAEA34(v13, &qword_27DAF2130, &unk_22FFB5C80);
    }

    v18 = 0;
  }

LABEL_23:
  sub_22FEAEA34(v13, &qword_27DAF2130, &unk_22FFB5C80);
  if (*(*(v3 + *(v19 + 28)) + 16))
  {
    sub_22FFB0F58();
    sub_22FFB0F48();
    sub_22FF1CB1C(&qword_27DAF2718, MEMORY[0x277D21648], MEMORY[0x277D21640]);
    v22 = v18;
    result = sub_22FFB11D8();
    if (v18)
    {
      return result;
    }
  }

  else
  {
    v22 = v18;
  }

  result = sub_22FF17A20(v3);
  if (!v22)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF17354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Cryptex(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v11 + 24), v7, &qword_27DAF2130, &unk_22FFB5C80);
  v12 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22FF0B4A8(v7, v10, type metadata accessor for Proto_Cryptex);
    sub_22FF1CB1C(qword_281490550, type metadata accessor for Proto_Cryptex, &protocol conformance descriptor for Proto_Cryptex);
    sub_22FFB1288();
    return sub_22FF1C9FC(v10, type metadata accessor for Proto_Cryptex);
  }

  result = sub_22FF1C9FC(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  __break(1u);
  return result;
}

uint64_t sub_22FF17598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Cryptex.Salt(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v11 + 24), v7, &qword_27DAF2130, &unk_22FFB5C80);
  v12 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22FF0B4A8(v7, v10, type metadata accessor for Proto_Cryptex.Salt);
    sub_22FF1CB1C(&qword_27DAF27F0, type metadata accessor for Proto_Cryptex.Salt, &protocol conformance descriptor for Proto_Cryptex.Salt);
    sub_22FFB1288();
    return sub_22FF1C9FC(v10, type metadata accessor for Proto_Cryptex.Salt);
  }

  result = sub_22FF1C9FC(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  __break(1u);
  return result;
}

uint64_t sub_22FF177DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_SecureConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v11 + 24), v7, &qword_27DAF2130, &unk_22FFB5C80);
  v12 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_22FEAEA34(v7, &qword_27DAF2130, &unk_22FFB5C80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22FF0B4A8(v7, v10, type metadata accessor for Proto_SecureConfig);
    sub_22FF1CB1C(&qword_28148FD30, type metadata accessor for Proto_SecureConfig, &protocol conformance descriptor for Proto_SecureConfig);
    sub_22FFB1288();
    return sub_22FF1C9FC(v10, type metadata accessor for Proto_SecureConfig);
  }

  result = sub_22FF1C9FC(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  __break(1u);
  return result;
}

uint64_t sub_22FF17A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v10 - v3);
  v5 = type metadata accessor for Proto_SealedHash.Entry(0);
  sub_22FEBF3A4(a1 + *(v5 + 24), v4, &qword_27DAF2130, &unk_22FFB5C80);
  v6 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    return sub_22FEAEA34(v4, &qword_27DAF2130, &unk_22FFB5C80);
  }

  if (swift_getEnumCaseMultiPayload())
  {
    return sub_22FF1C9FC(v4, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  }

  v9 = *v4;
  v8 = v4[1];
  sub_22FFB1228();
  return sub_22FEA55AC(v9, v8);
}

uint64_t sub_22FF17BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_22FFB33B0;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 28);
  *(a2 + v6) = sub_22FFA6D50(MEMORY[0x277D84F90]);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF17CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2830, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF17D8C(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF17DF8(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(&qword_28148FF80, type metadata accessor for Proto_SealedHash.Entry, &protocol conformance descriptor for Proto_SealedHash.Entry);

  return sub_22FFB11A8();
}

uint64_t sub_22FF17E78()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF26A8);
  __swift_project_value_buffer(v0, qword_27DAF26A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FLAG_NONE";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "FLAG_RATCHET";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "FLAG_RATCHET_LOCK";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_Cryptex.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FFB10C8();
    }
  }

  return result;
}

uint64_t Proto_Cryptex.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for Proto_Cryptex(0);
  return sub_22FFB0F68();
}

uint64_t sub_22FF1833C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2828, type metadata accessor for Proto_Cryptex, &protocol conformance descriptor for Proto_Cryptex);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF183DC(uint64_t a1)
{
  v2 = sub_22FF1CB1C(qword_281490550, type metadata accessor for Proto_Cryptex, &protocol conformance descriptor for Proto_Cryptex);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF18448(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(qword_281490550, type metadata accessor for Proto_Cryptex, &protocol conformance descriptor for Proto_Cryptex);

  return sub_22FFB11A8();
}

uint64_t sub_22FF184C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF18570()
{
  strcpy(v1, "proto.Cryptex");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x23190DD10](0x746C61532ELL, 0xE500000000000000);
  qword_27DAF26C0 = v1[0];
  *algn_27DAF26C8 = v1[1];
  return result;
}

uint64_t sub_22FF18608(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_22FF18664()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF26D0);
  __swift_project_value_buffer(v0, qword_27DAF26D0);
  return sub_22FFB12B8();
}

uint64_t Proto_Cryptex.Salt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_22FFB1058();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_22FF187A4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_22FF18834(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2820, type metadata accessor for Proto_Cryptex.Salt, &protocol conformance descriptor for Proto_Cryptex.Salt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF188D4(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_27DAF27F0, type metadata accessor for Proto_Cryptex.Salt, &protocol conformance descriptor for Proto_Cryptex.Salt);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF18940(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(&qword_27DAF27F0, type metadata accessor for Proto_Cryptex.Salt, &protocol conformance descriptor for Proto_Cryptex.Salt);

  return sub_22FFB11A8();
}

uint64_t sub_22FF189BC(uint64_t a1, uint64_t a2)
{
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF18A60()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_28148FD40);
  __swift_project_value_buffer(v0, qword_28148FD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entry";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t Proto_SecureConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          sub_22FFB0F58();
          sub_22FFB1048();
          break;
        case 1:
LABEL_10:
          sub_22FFB10C8();
          break;
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t Proto_SecureConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v4;
  if (*(v3[2] + 16))
  {
    sub_22FFB0F58();
    result = sub_22FFB11D8();
    if (v4)
    {
      return result;
    }

    v11 = 0;
  }

  v12 = v3[3];
  v13 = v3[4];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v16 = *(v12 + 16);
    v17 = *(v12 + 24);
  }

  else
  {
    if (!v14)
    {
      v15 = v11;
      if ((v13 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      result = sub_22FFB1228();
      if (v15)
      {
        return result;
      }

      goto LABEL_22;
    }

    v16 = v12;
    v17 = v12 >> 32;
  }

  v15 = v11;
  if (v16 != v17)
  {
    goto LABEL_21;
  }

LABEL_22:
  type metadata accessor for Proto_SecureConfig(0);
  return sub_22FFB0F68();
}

uint64_t sub_22FF18F38@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = sub_22FFA7A88(MEMORY[0x277D84F90]);
  *(a1 + 24) = xmmword_22FFB33B0;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF18FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2818, type metadata accessor for Proto_SecureConfig, &protocol conformance descriptor for Proto_SecureConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF19084(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_28148FD30, type metadata accessor for Proto_SecureConfig, &protocol conformance descriptor for Proto_SecureConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF190F0(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(&qword_28148FD30, type metadata accessor for Proto_SecureConfig, &protocol conformance descriptor for Proto_SecureConfig);

  return sub_22FFB11A8();
}

uint64_t sub_22FF191AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22FFB2D10;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_22FFB1298();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_22FFB12A8();
}

uint64_t sub_22FF1936C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_22FFB1058();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22FF193F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Proto_TransparencyProofs(0);
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FF1CB1C(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return sub_22FFB1128();
}

uint64_t Proto_TransparencyProofs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FF194FC(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF194FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_TransparencyProofs(0);
  sub_22FEBF3A4(a1 + *(v12 + 20), v7, &qword_27DAF37C0, &unk_22FFB5C60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  sub_22FF0B4A8(v7, v11, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FF1CB1C(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FFB1288();
  return sub_22FF1C9FC(v11, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
}

uint64_t sub_22FF19764(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FFB1CA8();
  a1(0);
  sub_22FF1CB1C(a2, a3, a4);
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF197EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FF198B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF1CB1C(&qword_27DAF2810, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF19950(uint64_t a1)
{
  v2 = sub_22FF1CB1C(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF199BC(uint64_t a1, uint64_t a2)
{
  sub_22FF1CB1C(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);

  return sub_22FFB11A8();
}

uint64_t sub_22FF19A3C(uint64_t a1, uint64_t a2)
{
  __s2[2] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v140 - v9;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2138, &qword_22FFB90D0);
  MEMORY[0x28223BE20](v164);
  v12 = &v140 - v11;
  v169 = type metadata accessor for Proto_SealedHash.Entry(0);
  v167 = *(v169 - 8);
  v13 = MEMORY[0x28223BE20](v169);
  v171 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v140 - v15);
  v156 = type metadata accessor for Proto_SealedHash(0);
  v165 = *(v156 - 8);
  v17 = MEMORY[0x28223BE20](v156);
  v168 = (&v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v140 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v140 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A0, &qword_22FFB90F0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v163 = (&v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v162 = (&v140 - v27);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v145 = v7;
  v28 = 0;
  v29 = *(a1 + 64);
  v142 = a1 + 64;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v157 = (v5 + 48);
  v146 = v10;
  v158 = v12;
  v150 = v4;
  v144 = v23;
  v143 = v33;
  while (1)
  {
    if (v32)
    {
      v37 = a1;
      v149 = (v32 - 1) & v32;
      v148 = v28;
      v38 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_17:
      a1 = v37;
      v44 = (*(v37 + 48) + 16 * v38);
      v46 = *v44;
      v45 = v44[1];
      sub_22FF1C994(*(v37 + 56) + *(v165 + 72) * v38, v23, type metadata accessor for Proto_SealedHash);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A8, &qword_22FFB90F8);
      v48 = *(v47 + 48);
      v49 = v163;
      *v163 = v46;
      v49[1] = v45;
      v41 = v49;
      sub_22FF0B4A8(v23, v49 + v48, type metadata accessor for Proto_SealedHash);
      (*(*(v47 - 8) + 56))(v41, 0, 1, v47);
    }

    else
    {
      if (v33 <= v28 + 1)
      {
        v39 = v28 + 1;
      }

      else
      {
        v39 = v33;
      }

      v40 = v39 - 1;
      v41 = v163;
      while (1)
      {
        v42 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
        }

        if (v42 >= v33)
        {
          break;
        }

        v43 = *(v142 + 8 * v42);
        ++v28;
        if (v43)
        {
          v37 = a1;
          v149 = (v43 - 1) & v43;
          v38 = __clz(__rbit64(v43)) | (v42 << 6);
          v148 = v42;
          goto LABEL_17;
        }
      }

      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A8, &qword_22FFB90F8);
      (*(*(v65 - 8) + 56))(v41, 1, 1, v65);
      v149 = 0;
      v148 = v40;
    }

    v50 = v41;
    v51 = v162;
    sub_22FF1E71C(v50, v162);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A8, &qword_22FFB90F8);
    v53 = (*(*(v52 - 8) + 48))(v51, 1, v52) == 1;
    result = v53;
    if (v53)
    {
      return result;
    }

    v147 = v53;
    v54 = *(v52 + 48);
    v55 = *v51;
    v56 = v51[1];
    sub_22FF0B4A8(v51 + v54, v21, type metadata accessor for Proto_SealedHash);
    v57 = sub_22FFA619C(v55, v56);
    v59 = v58;

    if ((v59 & 1) == 0)
    {
      goto LABEL_174;
    }

    v60 = *(a2 + 56) + *(v165 + 72) * v57;
    v61 = v168;
    sub_22FF1C994(v60, v168, type metadata accessor for Proto_SealedHash);
    v62 = *v61;
    v63 = *v21;
    if (v21[8] == 1)
    {
      if (v63)
      {
        v64 = v150;
        if (v63 == 1)
        {
          if (v62 != 1)
          {
            goto LABEL_173;
          }
        }

        else if (v62 != 2)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v64 = v150;
        if (v62)
        {
          goto LABEL_173;
        }
      }
    }

    else
    {
      v64 = v150;
      if (v62 != v63)
      {
        goto LABEL_173;
      }
    }

    v66 = v168[2];
    v67 = *(v21 + 2);
    v68 = *(v66 + 16);
    if (v68 != *(v67 + 16))
    {
LABEL_173:
      sub_22FF1C9FC(v168, type metadata accessor for Proto_SealedHash);
LABEL_174:
      sub_22FF1C9FC(v21, type metadata accessor for Proto_SealedHash);
      return 0;
    }

    if (v68 && v66 != v67)
    {
      break;
    }

LABEL_6:
    sub_22FFB0F88();
    sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = v168;
    v35 = sub_22FFB1478();
    sub_22FF1C9FC(v34, type metadata accessor for Proto_SealedHash);
    sub_22FF1C9FC(v21, type metadata accessor for Proto_SealedHash);
    v23 = v144;
    v33 = v143;
    v32 = v149;
    result = v147;
    v28 = v148;
    if ((v35 & 1) == 0)
    {
      return result;
    }
  }

  v69 = 0;
  v70 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v160 = v67 + v70;
  v161 = v66 + v70;
  v170 = v16;
  v159 = v21;
  v155 = a1;
  v154 = a2;
  v153 = v66;
  v152 = v67;
  v151 = v68;
  while (1)
  {
    if (v69 >= *(v66 + 16))
    {
      goto LABEL_178;
    }

    v71 = v64;
    v72 = v69;
    v73 = *(v167 + 72) * v69;
    sub_22FF1C994(v161 + v73, v16, type metadata accessor for Proto_SealedHash.Entry);
    v74 = *(v67 + 16);
    v166 = v72;
    if (v72 >= v74)
    {
      goto LABEL_179;
    }

    v75 = v160 + v73;
    v76 = v171;
    sub_22FF1C994(v75, v171, type metadata accessor for Proto_SealedHash.Entry);
    if (*v16 != *v76)
    {
      goto LABEL_172;
    }

    v64 = v71;
    v77 = *(v170 + 1);
    v78 = *(v170 + 2);
    v80 = *(v171 + 8);
    v79 = *(v171 + 16);
    v81 = v78 >> 62;
    v82 = v79 >> 62;
    if (v78 >> 62 == 3)
    {
      v83 = 0;
      if (!v77 && v78 == 0xC000000000000000 && v79 >> 62 == 3)
      {
        v83 = 0;
        if (!v80 && v79 == 0xC000000000000000)
        {
          goto LABEL_160;
        }
      }

LABEL_55:
      if (v82 <= 1)
      {
        goto LABEL_56;
      }

      goto LABEL_61;
    }

    if (v81 <= 1)
    {
      if (!v81)
      {
        v83 = BYTE6(v78);
        if (v82 <= 1)
        {
          goto LABEL_56;
        }

        goto LABEL_61;
      }

      LODWORD(v83) = HIDWORD(v77) - v77;
      if (__OFSUB__(HIDWORD(v77), v77))
      {
        goto LABEL_182;
      }

      v83 = v83;
      goto LABEL_55;
    }

    if (v81 == 2)
    {
      v85 = *(v77 + 16);
      v84 = *(v77 + 24);
      v86 = __OFSUB__(v84, v85);
      v83 = v84 - v85;
      if (v86)
      {
        goto LABEL_183;
      }

      goto LABEL_55;
    }

    v83 = 0;
    if (v82 <= 1)
    {
LABEL_56:
      if (v82)
      {
        LODWORD(v87) = HIDWORD(v80) - v80;
        if (__OFSUB__(HIDWORD(v80), v80))
        {
          goto LABEL_180;
        }

        v87 = v87;
      }

      else
      {
        v87 = BYTE6(v79);
      }

      goto LABEL_63;
    }

LABEL_61:
    if (v82 != 2)
    {
      if (v83)
      {
        goto LABEL_172;
      }

      goto LABEL_160;
    }

    v89 = *(v80 + 16);
    v88 = *(v80 + 24);
    v86 = __OFSUB__(v88, v89);
    v87 = v88 - v89;
    if (v86)
    {
      goto LABEL_181;
    }

LABEL_63:
    if (v83 != v87)
    {
      goto LABEL_172;
    }

    if (v83 < 1)
    {
      goto LABEL_160;
    }

    if (v81 > 1)
    {
      break;
    }

    if (!v81)
    {
      __s2[0] = *(v170 + 1);
      LOWORD(__s2[1]) = v78;
      BYTE2(__s2[1]) = BYTE2(v78);
      BYTE3(__s2[1]) = BYTE3(v78);
      BYTE4(__s2[1]) = BYTE4(v78);
      BYTE5(__s2[1]) = BYTE5(v78);
      if (!v82)
      {
        goto LABEL_92;
      }

      if (v82 == 1)
      {
        v90 = (v80 >> 32) - v80;
        if (v80 >> 32 < v80)
        {
          goto LABEL_187;
        }

        v91 = sub_22FFB0588();
        if (!v91)
        {
          goto LABEL_218;
        }

        v92 = v91;
        v93 = sub_22FFB05B8();
        if (__OFSUB__(v80, v93))
        {
          goto LABEL_193;
        }

        v94 = v80 - v93 + v92;
        v95 = sub_22FFB05A8();
        if (!v94)
        {
          goto LABEL_217;
        }
      }

      else
      {
        v115 = *(v80 + 16);
        v116 = *(v80 + 24);
        v94 = sub_22FFB0588();
        if (v94)
        {
          v117 = sub_22FFB05B8();
          if (__OFSUB__(v115, v117))
          {
            goto LABEL_197;
          }

          v94 += v115 - v117;
        }

        v86 = __OFSUB__(v116, v115);
        v90 = v116 - v115;
        if (v86)
        {
          goto LABEL_190;
        }

        v95 = sub_22FFB05A8();
        if (!v94)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_129;
    }

    v100 = v77;
    if (v77 > v77 >> 32)
    {
      goto LABEL_184;
    }

    v101 = sub_22FFB0588();
    if (v101)
    {
      v102 = v101;
      v103 = sub_22FFB05B8();
      if (__OFSUB__(v100, v103))
      {
        goto LABEL_186;
      }

      v141 = (v100 - v103 + v102);
    }

    else
    {
      v141 = 0;
    }

    sub_22FFB05A8();
    if (v82 == 2)
    {
      v126 = *(v80 + 16);
      v127 = *(v80 + 24);
      v94 = sub_22FFB0588();
      v64 = v150;
      if (v94)
      {
        v128 = sub_22FFB05B8();
        if (__OFSUB__(v126, v128))
        {
          goto LABEL_200;
        }

        v94 += v126 - v128;
      }

      v86 = __OFSUB__(v127, v126);
      v129 = v127 - v126;
      if (v86)
      {
        goto LABEL_196;
      }

      v130 = sub_22FFB05A8();
      if (v130 >= v129)
      {
        v112 = v129;
      }

      else
      {
        v112 = v130;
      }

      v108 = v141;
      if (!v141)
      {
        goto LABEL_215;
      }

      if (!v94)
      {
        goto LABEL_214;
      }

LABEL_154:
      if (v108 == v94)
      {
        goto LABEL_160;
      }

      v107 = v112;
LABEL_156:
      v109 = v94;
      goto LABEL_159;
    }

    v64 = v150;
    if (v82 == 1)
    {
      if (v80 >> 32 < v80)
      {
        goto LABEL_195;
      }

      v94 = sub_22FFB0588();
      if (v94)
      {
        v113 = sub_22FFB05B8();
        if (__OFSUB__(v80, v113))
        {
          goto LABEL_202;
        }

        v94 += v80 - v113;
      }

      v114 = sub_22FFB05A8();
      if (v114 >= (v80 >> 32) - v80)
      {
        v112 = (v80 >> 32) - v80;
      }

      else
      {
        v112 = v114;
      }

      v108 = v141;
      if (!v141)
      {
        goto LABEL_213;
      }

      if (!v94)
      {
        goto LABEL_212;
      }

      goto LABEL_154;
    }

    v108 = v141;
    __s2[0] = v80;
    LOWORD(__s2[1]) = v79;
    BYTE2(__s2[1]) = BYTE2(v79);
    BYTE3(__s2[1]) = BYTE3(v79);
    BYTE4(__s2[1]) = BYTE4(v79);
    BYTE5(__s2[1]) = BYTE5(v79);
    if (!v141)
    {
      goto LABEL_211;
    }

LABEL_158:
    v107 = BYTE6(v79);
    v109 = __s2;
LABEL_159:
    if (memcmp(v108, v109, v107))
    {
      goto LABEL_172;
    }

LABEL_160:
    v131 = *(v169 + 24);
    v132 = *(v164 + 48);
    v133 = v158;
    sub_22FEBF3A4(v170 + v131, v158, &qword_27DAF2130, &unk_22FFB5C80);
    sub_22FEBF3A4(v171 + v131, v133 + v132, &qword_27DAF2130, &unk_22FFB5C80);
    v134 = *v157;
    if ((*v157)(v133, 1, v64) == 1)
    {
      if (v134(v133 + v132, 1, v64) != 1)
      {
        goto LABEL_171;
      }

      sub_22FEAEA34(v133, &qword_27DAF2130, &unk_22FFB5C80);
      a2 = v154;
      a1 = v155;
      v66 = v153;
    }

    else
    {
      v135 = v146;
      sub_22FEBF3A4(v133, v146, &qword_27DAF2130, &unk_22FFB5C80);
      if (v134(v133 + v132, 1, v64) == 1)
      {
        sub_22FF1C9FC(v135, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
LABEL_171:
        sub_22FEAEA34(v133, &qword_27DAF2138, &qword_22FFB90D0);
LABEL_172:
        sub_22FF1C9FC(v171, type metadata accessor for Proto_SealedHash.Entry);
        sub_22FF1C9FC(v170, type metadata accessor for Proto_SealedHash.Entry);
        v21 = v159;
        goto LABEL_173;
      }

      v136 = v145;
      sub_22FF0B4A8(v133 + v132, v145, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      v137 = _s16CloudAttestation16Proto_SealedHashV5EntryV10OneOf_InfoO2eeoiySbAG_AGtFZ_0(v135, v136);
      sub_22FF1C9FC(v136, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      sub_22FF1C9FC(v135, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      sub_22FEAEA34(v133, &qword_27DAF2130, &unk_22FFB5C80);
      a2 = v154;
      a1 = v155;
      v66 = v153;
      if ((v137 & 1) == 0)
      {
        goto LABEL_172;
      }
    }

    if (!sub_22FF1AD24(*(v170 + *(v169 + 28)), *(v171 + *(v169 + 28))))
    {
      goto LABEL_172;
    }

    sub_22FFB0F88();
    sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v16 = v170;
    v138 = v171;
    v139 = sub_22FFB1478();
    sub_22FF1C9FC(v138, type metadata accessor for Proto_SealedHash.Entry);
    sub_22FF1C9FC(v16, type metadata accessor for Proto_SealedHash.Entry);
    v21 = v159;
    v67 = v152;
    if ((v139 & 1) == 0)
    {
      goto LABEL_173;
    }

    v69 = v166 + 1;
    if (v151 == v166 + 1)
    {
      goto LABEL_6;
    }
  }

  if (v81 == 2)
  {
    v96 = *(v77 + 16);
    v97 = sub_22FFB0588();
    if (v97)
    {
      v98 = v97;
      v99 = sub_22FFB05B8();
      if (__OFSUB__(v96, v99))
      {
        goto LABEL_185;
      }

      v141 = (v96 - v99 + v98);
    }

    else
    {
      v141 = 0;
    }

    sub_22FFB05A8();
    if (v82 == 2)
    {
      v121 = *(v80 + 16);
      v122 = *(v80 + 24);
      v94 = sub_22FFB0588();
      v64 = v150;
      if (v94)
      {
        v123 = sub_22FFB05B8();
        if (__OFSUB__(v121, v123))
        {
          goto LABEL_199;
        }

        v94 += v121 - v123;
      }

      v86 = __OFSUB__(v122, v121);
      v124 = v122 - v121;
      if (v86)
      {
        goto LABEL_194;
      }

      v125 = sub_22FFB05A8();
      if (v125 >= v124)
      {
        v112 = v124;
      }

      else
      {
        v112 = v125;
      }

      v108 = v141;
      if (!v141)
      {
        goto LABEL_210;
      }

      if (!v94)
      {
        goto LABEL_209;
      }

      goto LABEL_154;
    }

    v64 = v150;
    if (v82 == 1)
    {
      if (v80 >> 32 < v80)
      {
        goto LABEL_191;
      }

      v94 = sub_22FFB0588();
      if (v94)
      {
        v110 = sub_22FFB05B8();
        if (__OFSUB__(v80, v110))
        {
          goto LABEL_201;
        }

        v94 += v80 - v110;
      }

      v111 = sub_22FFB05A8();
      if (v111 >= (v80 >> 32) - v80)
      {
        v112 = (v80 >> 32) - v80;
      }

      else
      {
        v112 = v111;
      }

      v108 = v141;
      if (!v141)
      {
        goto LABEL_208;
      }

      if (!v94)
      {
        goto LABEL_207;
      }

      goto LABEL_154;
    }

    v108 = v141;
    __s2[0] = v80;
    LOWORD(__s2[1]) = v79;
    BYTE2(__s2[1]) = BYTE2(v79);
    BYTE3(__s2[1]) = BYTE3(v79);
    BYTE4(__s2[1]) = BYTE4(v79);
    BYTE5(__s2[1]) = BYTE5(v79);
    if (!v141)
    {
      goto LABEL_206;
    }

    goto LABEL_158;
  }

  memset(__s2, 0, 14);
  if (!v82)
  {
LABEL_92:
    v172 = v80;
    v173 = v79;
    v174 = BYTE2(v79);
    v175 = BYTE3(v79);
    v176 = BYTE4(v79);
    v107 = BYTE6(v79);
    v177 = BYTE5(v79);
    v108 = __s2;
    v109 = &v172;
    goto LABEL_159;
  }

  if (v82 == 2)
  {
    v104 = *(v80 + 16);
    v105 = *(v80 + 24);
    v94 = sub_22FFB0588();
    if (v94)
    {
      v106 = sub_22FFB05B8();
      if (__OFSUB__(v104, v106))
      {
        goto LABEL_198;
      }

      v94 += v104 - v106;
    }

    v86 = __OFSUB__(v105, v104);
    v90 = v105 - v104;
    if (v86)
    {
      goto LABEL_189;
    }

    v95 = sub_22FFB05A8();
    if (!v94)
    {
      goto LABEL_205;
    }

LABEL_129:
    if (v95 >= v90)
    {
      v107 = v90;
    }

    else
    {
      v107 = v95;
    }

    v108 = __s2;
    goto LABEL_156;
  }

  v90 = (v80 >> 32) - v80;
  if (v80 >> 32 < v80)
  {
    goto LABEL_188;
  }

  v118 = sub_22FFB0588();
  if (v118)
  {
    v119 = v118;
    v120 = sub_22FFB05B8();
    if (__OFSUB__(v80, v120))
    {
      goto LABEL_192;
    }

    v94 = v80 - v120 + v119;
    v95 = sub_22FFB05A8();
    if (!v94)
    {
      goto LABEL_204;
    }

    goto LABEL_129;
  }

  sub_22FFB05A8();
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  result = sub_22FFB05A8();
  __break(1u);
  return result;
}

BOOL sub_22FF1AD24(uint64_t a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v56 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v56 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_22FEA5608(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_22FFA619C(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_22FEA55AC(v32, v33);
      v3 = a1;
      v8 = v56;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v58, 0, 14);
        sub_22FEA5608(v26, v25);
        goto LABEL_64;
      }

      v51 = *(v26 + 24);
      v53 = *(v26 + 16);
      sub_22FEA5608(v26, v25);
      v40 = sub_22FFB0588();
      if (v40)
      {
        v41 = v40;
        v42 = sub_22FFB05B8();
        v43 = v53;
        if (__OFSUB__(v53, v42))
        {
          goto LABEL_84;
        }

        v50 = v53 - v42 + v41;
      }

      else
      {
        v50 = 0;
        v43 = v53;
      }

      if (__OFSUB__(v51, v43))
      {
        goto LABEL_83;
      }

      sub_22FFB05A8();
      v48 = v50;
LABEL_70:
      sub_22FEEBB68(v48, v19, v18, v58);
      sub_22FEA55AC(v26, v25);
      sub_22FEA55AC(v19, v18);
      v47 = v58[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_22FEA5608(v26, v25);
      v44 = sub_22FFB0588();
      if (v44)
      {
        v52 = v44;
        v45 = sub_22FFB05B8();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v52;
      }

      else
      {
        v46 = 0;
      }

      sub_22FFB05A8();
      v48 = v46;
      goto LABEL_70;
    }

    v58[0] = v26;
    LOWORD(v58[1]) = v25;
    BYTE2(v58[1]) = BYTE2(v25);
    BYTE3(v58[1]) = BYTE3(v25);
    BYTE4(v58[1]) = BYTE4(v25);
    BYTE5(v58[1]) = BYTE5(v25);
    sub_22FEA5608(v26, v25);
LABEL_64:
    sub_22FEEBB68(v58, v19, v18, &v57);
    sub_22FEA55AC(v26, v25);
    sub_22FEA55AC(v19, v18);
    v47 = v57;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v56;
    if ((v47 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_22FEA55AC(v19, v18);
  return 0;
}

uint64_t sub_22FF1B220(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22FFA619C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22FFB1BC8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16CloudAttestation18Proto_SecureConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)) || (sub_22FF1B220(*(a1 + 16), *(a2 + 16)) & 1) == 0 || !sub_22FEC3DC8(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)))
  {
    return 0;
  }

  type metadata accessor for Proto_SecureConfig(0);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation17Proto_LocalPolicyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_22FEC3DC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 24))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  type metadata accessor for Proto_LocalPolicy(0);
  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation16Proto_SealedHashV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_22FEE8220(a1[2], a2[2]))
  {
    type metadata accessor for Proto_SealedHash(0);
    sub_22FFB0F88();
    sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation16Proto_SealedHashV5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2138, &qword_22FFB90D0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 || !sub_22FEC3DC8(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    goto LABEL_12;
  }

  v23 = type metadata accessor for Proto_SealedHash.Entry(0);
  v14 = *(v23 + 24);
  v15 = *(v11 + 48);
  sub_22FEBF3A4(a1 + v14, v13, &qword_27DAF2130, &unk_22FFB5C80);
  v16 = a2 + v14;
  v17 = v15;
  sub_22FEBF3A4(v16, &v13[v15], &qword_27DAF2130, &unk_22FFB5C80);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_22FEAEA34(v13, &qword_27DAF2130, &unk_22FFB5C80);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_22FEBF3A4(v13, v10, &qword_27DAF2130, &unk_22FFB5C80);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_22FF1C9FC(v10, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
LABEL_8:
    sub_22FEAEA34(v13, &qword_27DAF2138, &qword_22FFB90D0);
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  sub_22FF0B4A8(&v13[v17], v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  v19 = _s16CloudAttestation16Proto_SealedHashV5EntryV10OneOf_InfoO2eeoiySbAG_AGtFZ_0(v10, v7);
  sub_22FF1C9FC(v7, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  sub_22FF1C9FC(v10, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  sub_22FEAEA34(v13, &qword_27DAF2130, &unk_22FFB5C80);
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!sub_22FF1AD24(*(a1 + *(v23 + 28)), *(a2 + *(v23 + 28))))
  {
    goto LABEL_12;
  }

  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = sub_22FFB1478();
  return v20 & 1;
}

uint64_t _s16CloudAttestation13Proto_AppDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F18();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28B0, &qword_22FFB9100);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (*a1 != *a2 || (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_22FFB1BC8() & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_22FFB1BC8() & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = v7;
  v24 = type metadata accessor for Proto_AppData(0);
  v14 = *(v24 + 32);
  v15 = *(v11 + 48);
  sub_22FEBF3A4(a1 + v14, v13, &qword_27DAF1D38, &qword_22FFB4270);
  sub_22FEBF3A4(a2 + v14, &v13[v15], &qword_27DAF1D38, &qword_22FFB4270);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_22FEAEA34(v13, &qword_27DAF1D38, &qword_22FFB4270);
LABEL_17:
      sub_22FFB0F88();
      sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_22FFB1478();
      return v17 & 1;
    }

    goto LABEL_13;
  }

  sub_22FEBF3A4(v13, v10, &qword_27DAF1D38, &qword_22FFB4270);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_22FEAEA34(v13, &qword_27DAF28B0, &qword_22FFB9100);
    goto LABEL_14;
  }

  v19 = &v13[v15];
  v20 = v23;
  (*(v5 + 32))(v23, v19, v4);
  sub_22FF1CB1C(&qword_27DAF28B8, MEMORY[0x277D215C8], MEMORY[0x277D215D8]);
  v21 = sub_22FFB1478();
  v22 = *(v5 + 8);
  v22(v20, v4);
  v22(v10, v4);
  sub_22FEAEA34(v13, &qword_27DAF1D38, &qword_22FFB4270);
  if (v21)
  {
    goto LABEL_17;
  }

LABEL_14:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s16CloudAttestation24Proto_TransparencyProofsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2110, &qword_22FFB7B90);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_22FEBF3A4(a1 + v14, v13, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FEBF3A4(a2 + v14, &v13[v15], &qword_27DAF37C0, &unk_22FFB5C60);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_22FEAEA34(v13, &qword_27DAF37C0, &unk_22FFB5C60);
LABEL_9:
      sub_22FFB0F88();
      sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = sub_22FFB1478();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_22FEBF3A4(v13, v9, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_22FF1C9FC(v9, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
LABEL_6:
    sub_22FEAEA34(v13, &qword_27DAF2110, &qword_22FFB7B90);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_22FF0B4A8(&v13[v15], v21[0], type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v19 = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v9, v18);
  sub_22FF1C9FC(v18, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FF1C9FC(v9, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FEAEA34(v13, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s16CloudAttestation16Proto_SealedHashV5EntryV10OneOf_InfoO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Proto_SecureConfig(0);
  MEMORY[0x28223BE20](v43);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Proto_Cryptex.Salt(0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Proto_Cryptex(0);
  MEMORY[0x28223BE20](v44);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Proto_SealedHash.Entry.OneOf_Info(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v42 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28C0, &qword_22FFB9108);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - v22;
  v24 = (&v42 + *(v21 + 56) - v22);
  sub_22FF1C994(a1, &v42 - v22, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  sub_22FF1C994(a2, v24, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_22FF1C994(v23, v14, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v28 = v45;
        sub_22FF0B4A8(v24, v45, type metadata accessor for Proto_Cryptex.Salt);
        sub_22FFB0F88();
        sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v29 = sub_22FFB1478();
        sub_22FF1C9FC(v28, type metadata accessor for Proto_Cryptex.Salt);
        sub_22FF1C9FC(v14, type metadata accessor for Proto_Cryptex.Salt);
LABEL_26:
        sub_22FF1C9FC(v23, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        return v29 & 1;
      }

      v35 = type metadata accessor for Proto_Cryptex.Salt;
      v36 = v14;
    }

    else
    {
      sub_22FF1C994(v23, v11, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v34 = v47;
        sub_22FF0B4A8(v24, v47, type metadata accessor for Proto_SecureConfig);
        if (sub_22FEC3DC8(*v11, *(v11 + 1), *v34, *(v34 + 8)) && (sub_22FF1B220(*(v11 + 2), *(v34 + 16)) & 1) != 0 && sub_22FEC3DC8(*(v11 + 3), *(v11 + 4), *(v34 + 24), *(v34 + 32)))
        {
          sub_22FFB0F88();
          sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          if (sub_22FFB1478())
          {
            sub_22FF1C9FC(v34, type metadata accessor for Proto_SecureConfig);
            v33 = v11;
            v32 = type metadata accessor for Proto_SecureConfig;
            goto LABEL_12;
          }
        }

        sub_22FF1C9FC(v34, type metadata accessor for Proto_SecureConfig);
        v37 = v11;
        v38 = type metadata accessor for Proto_SecureConfig;
LABEL_29:
        sub_22FF1C9FC(v37, v38);
        sub_22FF1C9FC(v23, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
        goto LABEL_30;
      }

      v35 = type metadata accessor for Proto_SecureConfig;
      v36 = v11;
    }

LABEL_22:
    sub_22FF1C9FC(v36, v35);
    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_22FF1C994(v23, v19, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
    v26 = *v19;
    v27 = v19[1];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22FEA55AC(v26, v27);
LABEL_23:
      sub_22FEAEA34(v23, &qword_27DAF28C0, &qword_22FFB9108);
LABEL_30:
      v29 = 0;
      return v29 & 1;
    }

    v39 = *v24;
    v40 = v24[1];
    v29 = sub_22FEC3DC8(v26, v27, *v24, v40);
    sub_22FEA55AC(v39, v40);
    sub_22FEA55AC(v26, v27);
    goto LABEL_26;
  }

  sub_22FF1C994(v23, v17, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = type metadata accessor for Proto_Cryptex;
    v36 = v17;
    goto LABEL_22;
  }

  v30 = v46;
  sub_22FF0B4A8(v24, v46, type metadata accessor for Proto_Cryptex);
  if (!sub_22FEC3DC8(*v17, *(v17 + 1), *v30, *(v30 + 8)))
  {
    sub_22FF1C9FC(v30, type metadata accessor for Proto_Cryptex);
    goto LABEL_28;
  }

  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_22FFB1478();
  sub_22FF1C9FC(v30, type metadata accessor for Proto_Cryptex);
  if ((v31 & 1) == 0)
  {
LABEL_28:
    v38 = type metadata accessor for Proto_Cryptex;
    v37 = v17;
    goto LABEL_29;
  }

  v32 = type metadata accessor for Proto_Cryptex;
  v33 = v17;
LABEL_12:
  sub_22FF1C9FC(v33, v32);
  sub_22FF1C9FC(v23, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info);
  v29 = 1;
  return v29 & 1;
}

uint64_t _s16CloudAttestation06Proto_B6BundleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_22FF121B0(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_22FFB0F88();
  sub_22FF1CB1C(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF1C994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF1C9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF1CB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FF1CB64()
{
  result = qword_27DAF2700;
  if (!qword_27DAF2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2700);
  }

  return result;
}

unint64_t sub_22FF1CBB8()
{
  result = qword_281490490;
  if (!qword_281490490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490490);
  }

  return result;
}

unint64_t sub_22FF1CC10()
{
  result = qword_281490488;
  if (!qword_281490488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490488);
  }

  return result;
}

unint64_t sub_22FF1CC68()
{
  result = qword_281490478;
  if (!qword_281490478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490478);
  }

  return result;
}

unint64_t sub_22FF1CCF0()
{
  result = qword_281490480;
  if (!qword_281490480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490480);
  }

  return result;
}

unint64_t sub_22FF1CD48()
{
  result = qword_27DAF2758;
  if (!qword_27DAF2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2758);
  }

  return result;
}

unint64_t sub_22FF1CDA0()
{
  result = qword_27DAF2760;
  if (!qword_27DAF2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2760);
  }

  return result;
}

unint64_t sub_22FF1CE28()
{
  result = qword_27DAF2778;
  if (!qword_27DAF2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2778);
  }

  return result;
}

unint64_t sub_22FF1CE80()
{
  result = qword_27DAF2780;
  if (!qword_27DAF2780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2780);
  }

  return result;
}

unint64_t sub_22FF1CED8()
{
  result = qword_27DAF2788;
  if (!qword_27DAF2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2788);
  }

  return result;
}

unint64_t sub_22FF1CF60()
{
  result = qword_27DAF27A0;
  if (!qword_27DAF27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF27A0);
  }

  return result;
}

void sub_22FF1DB80(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF1DF48(319, &qword_28148F1C8, MEMORY[0x277D215C8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FF1DC7C(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FF1DD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FF1DDF4(uint64_t a1)
{
  if (!qword_28148F170)
  {
    type metadata accessor for Proto_SealedHash(255);
    v1 = sub_22FFB1418();
    if (!v2)
    {
      atomic_store(v1, &qword_28148F170);
    }
  }
}

void sub_22FF1DE84(uint64_t a1)
{
  sub_22FF1DF48(319, &qword_28148F140, type metadata accessor for Proto_SealedHash.Entry, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF1DF48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22FF1DFD4(uint64_t a1)
{
  sub_22FF1DF48(319, qword_281490018, type metadata accessor for Proto_SealedHash.Entry.OneOf_Info, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22FF1E370(319, &qword_28148F178, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_22FFB0F88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FF1E0C8(uint64_t a1)
{
  result = type metadata accessor for Proto_Cryptex(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Proto_Cryptex.Salt(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Proto_SecureConfig(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22FF1E194(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FF1E238(uint64_t a1)
{
  result = sub_22FFB0F88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FF1E2CC(uint64_t a1)
{
  sub_22FF1E370(319, &qword_28148F180, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22FFB0F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF1E370(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22FFB1418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22FF1E3F0(uint64_t a1)
{
  sub_22FFB0F88();
  if (v1 <= 0x3F)
  {
    sub_22FF1DF48(319, qword_281490E80, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FF1E4AC(uint64_t a1)
{
  sub_22FF1DF48(319, qword_28148F938, type metadata accessor for Proto_SealedHashLedger, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22FF1DF48(319, &qword_28148F1D8, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22FF1DF48(319, qword_28148F820, type metadata accessor for Proto_TransparencyProofs, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22FF1DF48(319, qword_28148FDD8, type metadata accessor for Proto_LocalPolicy, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_22FF1E6C8()
{
  result = qword_27DAF2860;
  if (!qword_27DAF2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2860);
  }

  return result;
}

uint64_t sub_22FF1E71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28A0, &qword_22FFB90F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22FF1E7D4(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2 && *(v3 + 16) != *(v3 + 24))
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  if (!v5)
  {
    if ((v4 & 0xFF000000000000) != 0)
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *&v28[0] = v3;
      WORD4(v28[0]) = v4;
      BYTE10(v28[0]) = BYTE2(v4);
      BYTE11(v28[0]) = BYTE3(v4);
      BYTE12(v28[0]) = BYTE4(v4);
      BYTE13(v28[0]) = BYTE5(v4);
      Img4DecodeInit(v28, BYTE6(v4), &v30);
      if (v6)
      {
        v7 = v6;
        sub_22FF28604();
        swift_allocError();
        *v8 = v7;
        *(v8 + 4) = 0;
LABEL_19:
        swift_willThrow();
        return;
      }

      goto LABEL_33;
    }

LABEL_16:
    sub_22FF28604();
    swift_allocError();
    *v16 = 0;
LABEL_17:
    v17 = 3;
LABEL_18:
    *(v16 + 4) = v17;
    goto LABEL_19;
  }

  while (1)
  {
    if (v3 == v3 >> 32)
    {
      goto LABEL_16;
    }

LABEL_8:
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    if (v5 != 2)
    {
      break;
    }

    v9 = v1;
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
    v1 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = sub_22FFB0588();
    if (v12)
    {
      v1 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = sub_22FFB05B8();
      v3 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_42;
      }

      v12 += v3;
    }

    v14 = __OFSUB__(v11, v10);
    v15 = v11 - v10;
    if (!v14)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v18 = v3;
  v19 = v3 >> 32;
  v15 = v19 - v18;
  if (v19 < v18)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v9 = v1;
  v12 = sub_22FFB0588();
  if (v12)
  {
    v20 = sub_22FFB05B8();
    if (!__OFSUB__(v18, v20))
    {
      v12 += v18 - v20;
      goto LABEL_25;
    }

LABEL_43:
    __break(1u);
  }

LABEL_25:
  v21 = sub_22FFB05A8();
  if (v21 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  v23 = v22 + v12;
  if (v12)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  sub_22FF25AE0(v12, v24, &v30);
  if (v2)
  {
    return;
  }

  v1 = v9;
LABEL_33:
  if (*(v1 + 24) != 1 || !*(v1 + 16))
  {
    sub_22FF28604();
    swift_allocError();
    *v16 = 1;
    goto LABEL_17;
  }

  v28[0] = kImg4DecodeLocalPolicyEc384Sha384;
  v28[1] = *&off_2844DEE70;
  v28[2] = xmmword_2844DEE80;
  v29 = off_2844DEE90;
  v25 = Img4DecodePerformTrustEvaluation(1819307884, &v30, sub_22FF25AD0, v28, 0);
  if (v25)
  {
    v26 = v25;
    sub_22FF28604();
    swift_allocError();
    *v16 = v26;
    v17 = 1;
    goto LABEL_18;
  }

  sub_22FFB05D8();
  swift_allocObject();
  v27[0] = 0x3000000000;
  v27[1] = sub_22FFB0598();
  sub_22FF555D0(v27, 0);
  sub_22FF25B4C(v27, &v30, v28);
  if (v2)
  {
  }
}

void sub_22FF1EBDC()
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = sub_22FFB06F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = v0[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2 || *(v7 + 16) == *(v7 + 24))
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) != 0)
      {
        v33 = v4;
        v69 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v34 = v7;
        v35 = v8;
        v36 = BYTE2(v8);
        v37 = BYTE3(v8);
        v38 = BYTE4(v8);
        v39 = BYTE5(v8);
        Img4DecodeInit(&v34, BYTE6(v8), &v41);
        if (v10)
        {
          v12 = v10;
LABEL_30:
          sub_22FF28604();
          swift_allocError();
          *v30 = v12;
          *(v30 + 4) = 0;
          goto LABEL_31;
        }

LABEL_29:
        v34 = 0;
        v40 = 0;
        Img4DecodeGetDataFromSection(&v41, 0, 1853057384, &v40, &v34, v11);
        v12 = v29;
        if (!v29)
        {
          v31 = v40;
          if (v40)
          {
            v32 = v34;
            (*(v3 + 104))(v6, *MEMORY[0x277CC92A8], v33);
            sub_22FF27864(v31, v32, v6);
            return;
          }
        }

        goto LABEL_30;
      }

LABEL_17:
      sub_22FF28604();
      swift_allocError();
      *v21 = 0;
      *(v21 + 4) = 3;
LABEL_31:
      swift_willThrow();
      return;
    }

    if (v7 == v7 >> 32)
    {
      goto LABEL_17;
    }
  }

  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v33 = v4;
  if (v9 != 2)
  {
    v22 = v7;
    v23 = v7 >> 32;
    v24 = v23 - v22;
    if (v23 >= v22)
    {
      v15 = sub_22FFB0588();
      if (v15)
      {
        v25 = sub_22FFB05B8();
        if (__OFSUB__(v22, v25))
        {
          goto LABEL_38;
        }

        v15 += v22 - v25;
      }

      v26 = sub_22FFB05A8();
      if (v26 >= v24)
      {
        v20 = v24;
      }

      else
      {
        v20 = v26;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_36;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  v15 = sub_22FFB0588();
  if (v15)
  {
    v16 = sub_22FFB05B8();
    if (__OFSUB__(v14, v16))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v15 += v14 - v16;
  }

  v17 = __OFSUB__(v13, v14);
  v18 = v13 - v14;
  if (v17)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = sub_22FFB05A8();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

LABEL_25:
  v27 = v20 + v15;
  if (v15)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  sub_22FF25AE0(v15, v28, &v41);
  if (!v1)
  {
    goto LABEL_29;
  }
}

uint64_t Proto_AttestationBundle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2050, &unk_22FFB7C50);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v113 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v114 = v111 - v9;
  MEMORY[0x28223BE20](v8);
  v115 = v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v116 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v117 = v111 - v15;
  MEMORY[0x28223BE20](v14);
  v120 = v111 - v16;
  v122 = sub_22FFB0EE8();
  v124 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v119 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v118 = v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v121 = v111 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v22 - 8);
  v123 = v111 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF26E8, &qword_22FFB7C60);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v111 - v29;
  MEMORY[0x28223BE20](v28);
  v125 = (v111 - v31);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF28C8, &qword_22FFB9110);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v33 = v111 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF201E0();
  v143 = v33;
  sub_22FFB1D18();
  v34 = *(v3 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v36 = *(v34 + 16);
  v35 = *(v34 + 24);
  v126 = v34;
  v37 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v37)
    {
      v38 = v128;
      v39 = v143;
      if ((v35 & 0xFF000000000000) != 0)
      {
LABEL_4:
        sub_22FEA5608(v36, v35);
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    v40 = v36;
    v41 = v36 >> 32;
LABEL_8:
    v38 = v128;
    v39 = v143;
    if (v40 != v41)
    {
      goto LABEL_4;
    }

LABEL_9:
    v36 = 0;
    v35 = 0xF000000000000000;
    goto LABEL_11;
  }

  if (v37 == 2)
  {
    v40 = *(v36 + 16);
    v41 = *(v36 + 24);
    goto LABEL_8;
  }

  v36 = 0;
  v35 = 0xF000000000000000;
  v38 = v128;
  v39 = v143;
LABEL_11:
  v141 = v36;
  v142 = v35;
  LOBYTE(v139) = 1;
  v42 = sub_22FF20234();
  sub_22FFB1B38();
  if (v2)
  {
    sub_22FEA56EC(v141, v142);
    return (*(v127 + 8))(v39, v38);
  }

  sub_22FEA56EC(v141, v142);
  v43 = v126;
  swift_beginAccess();
  v45 = *(v43 + 32);
  v44 = *(v43 + 40);
  v46 = v44 >> 62;
  if ((v44 >> 62) > 1)
  {
    if (v46 != 2 || *(v45 + 16) == *(v45 + 24))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (!v46)
  {
    if ((v44 & 0xFF000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    sub_22FEA5608(v45, v44);
    goto LABEL_22;
  }

  if (v45 != v45 >> 32)
  {
    goto LABEL_19;
  }

LABEL_21:
  v45 = 0;
  v44 = 0xF000000000000000;
LABEL_22:
  v139 = v45;
  v140 = v44;
  v138[0] = 2;
  sub_22FFB1B38();
  v111[1] = v42;
  sub_22FEA56EC(v139, v140);
  v48 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sealedHashes;
  v49 = v126;
  swift_beginAccess();
  sub_22FEBF3A4(v49 + v48, v30, &qword_27DAF26E8, &qword_22FFB7C60);
  v50 = type metadata accessor for Proto_SealedHashLedger(0);
  v51 = *(v50 - 8);
  v52 = 1;
  v112 = *(v51 + 48);
  LODWORD(v49) = v112(v30, 1, v50);
  sub_22FEAEA34(v30, &qword_27DAF26E8, &qword_22FFB7C60);
  v53 = v49 == 1;
  v54 = v125;
  if (!v53)
  {
    sub_22FEBF3A4(v126 + v48, v27, &qword_27DAF26E8, &qword_22FFB7C60);
    v55 = v112;
    if (v112(v27, 1, v50) == 1)
    {
      *v54 = sub_22FFA6E68(MEMORY[0x277D84F90]);
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v55(v27, 1, v50) != 1)
      {
        sub_22FEAEA34(v27, &qword_27DAF26E8, &qword_22FFB7C60);
      }
    }

    else
    {
      sub_22FF264A4(v27, v54, type metadata accessor for Proto_SealedHashLedger);
    }

    v52 = 0;
  }

  (*(v51 + 56))(v54, v52, 1, v50);
  v138[0] = 3;
  sub_22FF2645C(&qword_27DAF28E0, type metadata accessor for Proto_SealedHashLedger, &protocol conformance descriptor for Proto_SealedHashLedger);
  v56 = v128;
  sub_22FFB1B38();
  sub_22FEAEA34(v54, &qword_27DAF26E8, &qword_22FFB7C60);
  v57 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  v58 = v126;
  swift_beginAccess();
  v59 = *(v58 + v57);
  if (*(v59 + 16))
  {
  }

  else
  {
    v59 = 0;
  }

  v137 = v59;
  LOBYTE(v135) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A60, &qword_22FFB3928);
  sub_22FF20288();
  sub_22FFB1B38();

  v60 = v126 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData;
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 8);
  v63 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    if (v63 != 2)
    {
      goto LABEL_41;
    }

    v64 = *(v61 + 16);
    v65 = *(v61 + 24);
LABEL_40:
    if (v64 != v65)
    {
      goto LABEL_42;
    }

LABEL_41:
    v61 = 0;
    v62 = 0xF000000000000000;
    goto LABEL_43;
  }

  if (v63)
  {
    v64 = v61;
    v65 = v61 >> 32;
    goto LABEL_40;
  }

  if ((v62 & 0xFF000000000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_22FEA5608(*v60, *(v60 + 8));
LABEL_43:
  v135 = v61;
  v136 = v62;
  v134 = 4;
  sub_22FFB1B38();
  v125 = 0;
  sub_22FEA56EC(v135, v136);
  v66 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  v67 = v126;
  swift_beginAccess();
  v68 = v121;
  sub_22FEBF3A4(v67 + v66, v121, &qword_27DAF1520, &qword_22FFB3A30);
  v69 = *(v124 + 48);
  v70 = 1;
  v71 = v122;
  v72 = v69(v68, 1, v122);
  sub_22FEAEA34(v68, &qword_27DAF1520, &qword_22FFB3A30);
  v73 = v123;
  if (v72 != 1)
  {
    v74 = v118;
    sub_22FEBF3A4(v126 + v66, v118, &qword_27DAF1520, &qword_22FFB3A30);
    if (v69(v74, 1, v71) == 1)
    {
      v75 = v119;
      sub_22FFB0ED8();
      if (v69(v74, 1, v71) != 1)
      {
        sub_22FEAEA34(v74, &qword_27DAF1520, &qword_22FFB3A30);
      }
    }

    else
    {
      v75 = v119;
      (*(v124 + 32))(v119, v74, v71);
    }

    sub_22FFB0EB8();
    (*(v124 + 8))(v75, v71);
    v70 = 0;
  }

  v76 = sub_22FFB0908();
  (*(*(v76 - 8) + 56))(v73, v70, 1, v76);
  v134 = 5;
  sub_22FF2645C(&qword_27DAF28F0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v77 = v143;
  v78 = v125;
  sub_22FFB1B38();
  if (v78)
  {
    sub_22FEAEA34(v73, &qword_27DAF1510, &qword_22FFB3800);
    return (*(v127 + 8))(v77, v56);
  }

  sub_22FEAEA34(v73, &qword_27DAF1510, &qword_22FFB3800);
  v79 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  v80 = v126;
  swift_beginAccess();
  v81 = v80 + v79;
  v82 = v117;
  sub_22FEBF3A4(v81, v117, &qword_27DAF2118, &unk_22FFB5C70);
  v83 = type metadata accessor for Proto_TransparencyProofs(0);
  v84 = *(v83 - 8);
  v85 = 1;
  v125 = *(v84 + 48);
  v86 = (v125)(v82, 1, v83);
  sub_22FEAEA34(v82, &qword_27DAF2118, &unk_22FFB5C70);
  if (v86 != 1)
  {
    v87 = v116;
    sub_22FEBF3A4(v126 + v79, v116, &qword_27DAF2118, &unk_22FFB5C70);
    v88 = v125;
    if ((v125)(v87, 1, v83) == 1)
    {
      v89 = v120;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v90 = *(v83 + 20);
      v91 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
      (*(*(v91 - 8) + 56))(v89 + v90, 1, 1, v91);
      if ((v88)(v87, 1, v83) != 1)
      {
        sub_22FEAEA34(v87, &qword_27DAF2118, &unk_22FFB5C70);
      }
    }

    else
    {
      sub_22FF264A4(v87, v120, type metadata accessor for Proto_TransparencyProofs);
    }

    v85 = 0;
  }

  v92 = v120;
  (*(v84 + 56))(v120, v85, 1, v83);
  v133 = 6;
  sub_22FF2645C(&qword_27DAF28F8, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);
  sub_22FFB1B38();
  sub_22FEAEA34(v92, &qword_27DAF2118, &unk_22FFB5C70);
  v93 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__localPolicy;
  v94 = v126;
  swift_beginAccess();
  v95 = v114;
  sub_22FEBF3A4(v94 + v93, v114, &qword_27DAF2050, &unk_22FFB7C50);
  v96 = type metadata accessor for Proto_LocalPolicy(0);
  v97 = *(v96 - 8);
  v98 = *(v97 + 48);
  v99 = 1;
  v100 = v98(v95, 1, v96);
  sub_22FEAEA34(v95, &qword_27DAF2050, &unk_22FFB7C50);
  v101 = v115;
  if (v100 != 1)
  {
    v102 = v113;
    sub_22FEBF3A4(v126 + v93, v113, &qword_27DAF2050, &unk_22FFB7C50);
    if (v98(v102, 1, v96) == 1)
    {
      *v101 = xmmword_22FFB33B0;
      *(v101 + 16) = 0;
      *(v101 + 24) = 1;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      if (v98(v102, 1, v96) != 1)
      {
        sub_22FEAEA34(v102, &qword_27DAF2050, &unk_22FFB7C50);
      }
    }

    else
    {
      sub_22FF264A4(v102, v101, type metadata accessor for Proto_LocalPolicy);
    }

    v99 = 0;
  }

  (*(v97 + 56))(v101, v99, 1, v96);
  v132 = 7;
  sub_22FF2645C(&qword_27DAF2900, type metadata accessor for Proto_LocalPolicy, &protocol conformance descriptor for Proto_LocalPolicy);
  v103 = v128;
  v104 = v143;
  sub_22FFB1B38();
  sub_22FEAEA34(v101, &qword_27DAF2050, &unk_22FFB7C50);
  v105 = (v126 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
  swift_beginAccess();
  v107 = *v105;
  v106 = v105[1];
  v108 = v106 >> 62;
  if ((v106 >> 62) > 1)
  {
    if (v108 != 2)
    {
      goto LABEL_70;
    }

    v109 = *(v107 + 16);
    v110 = *(v107 + 24);
  }

  else
  {
    if (!v108)
    {
      if ((v106 & 0xFF000000000000) == 0)
      {
        goto LABEL_70;
      }

LABEL_71:
      sub_22FEA5608(v107, v106);
      goto LABEL_72;
    }

    v109 = v107;
    v110 = v107 >> 32;
  }

  if (v109 != v110)
  {
    goto LABEL_71;
  }

LABEL_70:
  v107 = 0;
  v106 = 0xF000000000000000;
LABEL_72:
  v130 = v107;
  v131 = v106;
  v129 = 8;
  sub_22FFB1B38();
  sub_22FEA56EC(v130, v131);
  return (*(v127 + 8))(v104, v103);
}