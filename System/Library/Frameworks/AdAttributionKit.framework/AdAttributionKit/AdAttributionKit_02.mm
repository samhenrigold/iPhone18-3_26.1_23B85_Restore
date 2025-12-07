unint64_t sub_236A2239C()
{
  result = qword_27DE61578;
  if (!qword_27DE61578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61578);
  }

  return result;
}

unint64_t sub_236A223F0()
{
  result = qword_27DE61580;
  if (!qword_27DE61580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61580);
  }

  return result;
}

unint64_t sub_236A22444()
{
  result = qword_27DE61588;
  if (!qword_27DE61588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61588);
  }

  return result;
}

unint64_t sub_236A22498()
{
  result = qword_27DE61590;
  if (!qword_27DE61590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61590);
  }

  return result;
}

unint64_t sub_236A224EC()
{
  result = qword_27DE61598;
  if (!qword_27DE61598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61598);
  }

  return result;
}

void *sub_236A22558@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_236A23150(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_236A225A0()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x707954726566666FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x6573616863727570;
  }

  v4 = 0x797469746E617571;
  if (v1 != 1)
  {
    v4 = 0x79636E6572727563;
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

uint64_t sub_236A22698@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_236A23FA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_236A226C0(uint64_t a1)
{
  v2 = sub_236A23790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A226FC(uint64_t a1)
{
  v2 = sub_236A23790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A22738(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE615A0, &qword_236A33E48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A23790();
  sub_236A2F404();
  v13 = *v3;
  v14 = *(v3 + 4);
  v12 = 0;
  type metadata accessor for Decimal();
  sub_236A1E7F8(&qword_27DE614A8, type metadata accessor for Decimal, MEMORY[0x277CC9E60]);
  sub_236A2F304();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_236A2F2E4();
    LOBYTE(v13) = 2;
    sub_236A2F2C4();
    v9 = type metadata accessor for InAppPurchaseDetails(0);
    LOBYTE(v13) = 3;
    sub_236A2EDB4();
    sub_236A1E7F8(&qword_27DE614B0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_236A2F304();
    LOBYTE(v13) = *(v3 + *(v9 + 32));
    v12 = 4;
    sub_236A237E4();
    sub_236A2F304();
    LOBYTE(v13) = 5;
    sub_236A2F244();
    LOBYTE(v13) = *(v3 + *(v9 + 40));
    v12 = 6;
    sub_236A1E37C();
    sub_236A2F284();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_236A22A80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_236A2EDB4();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE615B8, &qword_236A33E50);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - v7;
  v9 = type metadata accessor for InAppPurchaseDetails(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_236A23790();
  v28 = v8;
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v23 = v6;
  v13 = v25;
  v14 = v26;
  type metadata accessor for Decimal();
  v34 = 0;
  sub_236A1E7F8(&qword_27DE614C8, type metadata accessor for Decimal, MEMORY[0x277CC9E68]);
  v15 = v27;
  sub_236A2F1F4();
  v16 = v11;
  *v11 = v30;
  *(v11 + 4) = v31;
  v33 = 1;
  *(v11 + 3) = sub_236A2F1D4();
  v33 = 2;
  *(v11 + 4) = sub_236A2F1B4();
  *(v11 + 5) = v17;
  v33 = 3;
  sub_236A1E7F8(&qword_27DE614D0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v18 = v23;
  sub_236A2F1F4();
  (*(v14 + 32))(v16 + v9[7], v18, v4);
  v32 = 4;
  sub_236A23838();
  sub_236A2F1F4();
  *(v16 + v9[8]) = v33;
  v33 = 5;
  v19 = sub_236A2F134();
  v20 = (v16 + v9[9]);
  *v20 = v19;
  v20[1] = v21;
  v32 = 6;
  sub_236A1E840();
  sub_236A2F174();
  (*(v13 + 8))(v28, v15);
  *(v16 + v9[10]) = v33;
  sub_236A2388C(v16, v24);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_2369FE0EC(v16);
}

uint64_t sub_236A22FD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62616D75736E6F63 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75736E6F436E6F6ELL && a2 == 0xED0000656C62616DLL || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000236A37190 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000236A371B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_236A2F334();

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

void *sub_236A23150(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61650, &qword_236A344F8);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61658, &qword_236A34500);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61660, &qword_236A34508);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61668, &qword_236A34510);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61670, &qword_236A34518);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_236A2239C();
  v15 = v43;
  sub_236A2F3F4();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_236A2F214();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_236A2A304();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_236A22498();
        v29 = v33;
        sub_236A2F114();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_236A224EC();
        v23 = v33;
        sub_236A2F114();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_236A22444();
      v28 = v33;
      sub_236A2F114();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_236A223F0();
      v30 = v33;
      sub_236A2F114();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_236A2F0E4();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40);
  *v11 = &type metadata for InAppPurchaseDetails.InAppPurchaseType;
  sub_236A2F124();
  sub_236A2F0D4();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_236A23790()
{
  result = qword_27DE615A8;
  if (!qword_27DE615A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615A8);
  }

  return result;
}

unint64_t sub_236A237E4()
{
  result = qword_27DE615B0;
  if (!qword_27DE615B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615B0);
  }

  return result;
}

unint64_t sub_236A23838()
{
  result = qword_27DE615C0;
  if (!qword_27DE615C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615C0);
  }

  return result;
}

uint64_t sub_236A2388C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_236A238F4()
{
  result = qword_27DE615C8;
  if (!qword_27DE615C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615C8);
  }

  return result;
}

void sub_236A23970(uint64_t a1)
{
  type metadata accessor for Decimal();
  if (v1 <= 0x3F)
  {
    sub_236A2EDB4();
    if (v2 <= 0x3F)
    {
      sub_2369FE33C(319, &qword_27DE60D50, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2369FE33C(319, &qword_27DE614F0, &type metadata for PurchaseIntakeOfferType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_236A23AD8()
{
  result = qword_27DE615E0;
  if (!qword_27DE615E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615E0);
  }

  return result;
}

unint64_t sub_236A23B30()
{
  result = qword_27DE615E8;
  if (!qword_27DE615E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615E8);
  }

  return result;
}

unint64_t sub_236A23B88()
{
  result = qword_27DE615F0;
  if (!qword_27DE615F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615F0);
  }

  return result;
}

unint64_t sub_236A23BE0()
{
  result = qword_27DE615F8;
  if (!qword_27DE615F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE615F8);
  }

  return result;
}

unint64_t sub_236A23C38()
{
  result = qword_27DE61600;
  if (!qword_27DE61600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61600);
  }

  return result;
}

unint64_t sub_236A23C90()
{
  result = qword_27DE61608;
  if (!qword_27DE61608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61608);
  }

  return result;
}

unint64_t sub_236A23CE8()
{
  result = qword_27DE61610;
  if (!qword_27DE61610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61610);
  }

  return result;
}

unint64_t sub_236A23D40()
{
  result = qword_27DE61618;
  if (!qword_27DE61618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61618);
  }

  return result;
}

unint64_t sub_236A23D98()
{
  result = qword_27DE61620;
  if (!qword_27DE61620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61620);
  }

  return result;
}

unint64_t sub_236A23DF0()
{
  result = qword_27DE61628;
  if (!qword_27DE61628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61628);
  }

  return result;
}

unint64_t sub_236A23E48()
{
  result = qword_27DE61630;
  if (!qword_27DE61630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61630);
  }

  return result;
}

unint64_t sub_236A23EA0()
{
  result = qword_27DE61638;
  if (!qword_27DE61638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61638);
  }

  return result;
}

unint64_t sub_236A23EF8()
{
  result = qword_27DE61640;
  if (!qword_27DE61640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61640);
  }

  return result;
}

unint64_t sub_236A23F50()
{
  result = qword_27DE61648;
  if (!qword_27DE61648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61648);
  }

  return result;
}

uint64_t sub_236A23FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065746144 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEC00000065707954 || (sub_236A2F334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000236A371D0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_236A2F334();

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

uint64_t sub_236A2420C(uint64_t a1, uint64_t a2)
{
  v2 = sub_236A2F104();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236A24260(char a1)
{
  if (a1)
  {
    return 0x6B63696C63;
  }

  else
  {
    return 2003134838;
  }
}

unint64_t sub_236A24290()
{
  result = qword_27DE61678;
  if (!qword_27DE61678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61678);
  }

  return result;
}

uint64_t sub_236A242E4@<X0>(char *a2@<X8>)
{
  v3 = sub_236A2F104();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_236A24404()
{
  result = qword_27DE61680;
  if (!qword_27DE61680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61680);
  }

  return result;
}

uint64_t sub_236A24458()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_236A2EE64();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &unk_2849A80F8;
  v5 = [v3 interfaceWithProtocol_];

  [v2 setExportedInterface_];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient(0)) init];
  [v2 setExportedObject_];

  v7 = &unk_2849A8B30;
  v8 = [v3 interfaceWithProtocol_];

  [v2 setRemoteObjectInterface_];
  v16 = sub_236A02084;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_12;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler_];
  _Block_release(v9);
  v16 = sub_236A020D4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_6_2;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler_];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for ImpressionIntakeServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_27DE6C350 = result;
  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A2471C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DevelopmentPostbackConfiguration(0) + 20);
  v4 = sub_236A2ED44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DevelopmentPostbackConfiguration(uint64_t a1)
{
  result = qword_27DE616E8;
  if (!qword_27DE616E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236A247E4()
{
  v1 = *(v0 + *(type metadata accessor for DevelopmentPostbackConfiguration(0) + 24));

  return v1;
}

uint64_t sub_236A24848()
{
  v1 = *(v0 + *(type metadata accessor for DevelopmentPostbackConfiguration(0) + 32));

  return v1;
}

uint64_t sub_236A248D0()
{
  type metadata accessor for DevelopmentPostbackConfiguration(0);
}

uint64_t sub_236A24930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for DevelopmentPostbackConfiguration(0);
  v20 = v19[5];
  v21 = sub_236A2ED44();
  result = (*(*(v21 - 8) + 32))(&a9[v20], a3, v21);
  v23 = &a9[v19[6]];
  *v23 = a4;
  *(v23 + 1) = a5;
  *&a9[v19[7]] = a6;
  v24 = &a9[v19[8]];
  *v24 = a7;
  *(v24 + 1) = a8;
  a9[v19[9]] = a10 & 1;
  a9[v19[10]] = a11;
  *&a9[v19[11]] = a12;
  v25 = &a9[v19[12]];
  *v25 = a13;
  v25[8] = a14 & 1;
  return result;
}

uint64_t sub_236A24A5C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4449656C646E7562;
    v6 = 0x6C7074656B72616DLL;
    if (a1 != 2)
    {
      v6 = 0x4449656372756F73;
    }

    if (a1)
    {
      v5 = 0x6B63616274736F70;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x69737265766E6F63;
    v2 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v2 = 0x69737265766E6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x437972746E756F63;
    if (a1 != 4)
    {
      v3 = 0x7463617265746E69;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_236A24BC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_236A25B80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_236A24BF8(uint64_t a1)
{
  v2 = sub_236A24FE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A24C34(uint64_t a1)
{
  v2 = sub_236A24FE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A24C70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61688, "L@");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A24FE8();
  sub_236A2F404();
  LOBYTE(v11) = 0;
  sub_236A2F2C4();
  if (!v2)
  {
    v9 = type metadata accessor for DevelopmentPostbackConfiguration(0);
    LOBYTE(v11) = 1;
    sub_236A2ED44();
    sub_236A25730(&qword_27DE61698, MEMORY[0x277CC9268]);
    sub_236A2F304();
    LOBYTE(v11) = 2;
    sub_236A2F2C4();
    LOBYTE(v11) = 3;
    sub_236A2F2F4();
    LOBYTE(v11) = 4;
    sub_236A2F2C4();
    LOBYTE(v11) = *(v3 + v9[9]);
    v12 = 5;
    sub_236A11730();
    sub_236A2F304();
    LOBYTE(v11) = *(v3 + v9[10]);
    v12 = 6;
    sub_236A2503C();
    sub_236A2F304();
    v11 = *(v3 + v9[11]);
    v12 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE616A8, &qword_236A346A8);
    sub_236A257C8(&qword_27DE616B0, sub_236A25090, MEMORY[0x277D83948]);
    sub_236A2F304();
    LOBYTE(v11) = 8;
    sub_236A2F2B4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_236A24FE8()
{
  result = qword_27DE61690;
  if (!qword_27DE61690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61690);
  }

  return result;
}

unint64_t sub_236A2503C()
{
  result = qword_27DE616A0;
  if (!qword_27DE616A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE616A0);
  }

  return result;
}

unint64_t sub_236A25090()
{
  result = qword_27DE616B8;
  if (!qword_27DE616B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE616B8);
  }

  return result;
}

uint64_t sub_236A250E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_236A2ED44();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE616C0, qword_236A346B0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v32 - v7;
  v9 = type metadata accessor for DevelopmentPostbackConfiguration(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_236A24FE8();
  v37 = v8;
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v13 = v6;
  v14 = v34;
  v15 = v35;
  v32 = v9;
  LOBYTE(v39) = 0;
  *v11 = sub_236A2F1B4();
  v11[1] = v16;
  LOBYTE(v39) = 1;
  sub_236A25730(&qword_27DE616C8, MEMORY[0x277CC9280]);
  sub_236A2F1F4();
  v17 = v32;
  (*(v15 + 32))(v11 + *(v32 + 20), v13, v4);
  LOBYTE(v39) = 2;
  v18 = sub_236A2F1B4();
  v19 = (v11 + v17[6]);
  *v19 = v18;
  v19[1] = v20;
  LOBYTE(v39) = 3;
  v21 = v17;
  v22 = v14;
  *(v11 + v21[7]) = sub_236A2F1E4();
  LOBYTE(v39) = 4;
  v23 = v36;
  v24 = sub_236A2F1B4();
  v25 = (v11 + v21[8]);
  *v25 = v24;
  v25[1] = v26;
  v40 = 5;
  sub_236A12058();
  sub_236A2F1F4();
  *(v11 + v21[9]) = v39;
  v40 = 6;
  sub_236A25774();
  sub_236A2F1F4();
  *(v11 + v21[10]) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE616A8, &qword_236A346A8);
  v40 = 7;
  sub_236A257C8(&qword_27DE616D8, sub_236A25840, MEMORY[0x277D83978]);
  sub_236A2F1F4();
  *(v11 + v21[11]) = v39;
  LOBYTE(v39) = 8;
  v27 = sub_236A2F1A4();
  LOBYTE(v21) = v28;
  (*(v22 + 8))(v37, v23);
  v29 = v33;
  v30 = v11 + *(v32 + 48);
  *v30 = v27;
  v30[8] = v21 & 1;
  sub_236A25894(v11, v29);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_236A0096C(v11);
}

uint64_t sub_236A25730(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_236A2ED44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_236A25774()
{
  result = qword_27DE616D0;
  if (!qword_27DE616D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE616D0);
  }

  return result;
}

uint64_t sub_236A257C8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE616A8, &qword_236A346A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_236A25840()
{
  result = qword_27DE616E0;
  if (!qword_27DE616E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE616E0);
  }

  return result;
}

uint64_t sub_236A25894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DevelopmentPostbackConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_236A25950(uint64_t a1)
{
  sub_236A2ED44();
  if (v1 <= 0x3F)
  {
    sub_236A010FC(319, &qword_27DE616F8, &type metadata for MeasurementWindowConfiguration, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_236A010FC(319, &qword_27DE60E28, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_236A25A7C()
{
  result = qword_27DE61700;
  if (!qword_27DE61700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61700);
  }

  return result;
}

unint64_t sub_236A25AD4()
{
  result = qword_27DE61708;
  if (!qword_27DE61708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61708);
  }

  return result;
}

unint64_t sub_236A25B2C()
{
  result = qword_27DE61710;
  if (!qword_27DE61710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61710);
  }

  return result;
}

uint64_t sub_236A25B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEB000000004C5255 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xED00004449656361 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_236A2F334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_236A2F334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (sub_236A2F334() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000236A37270 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_236A2F334();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void sub_236A25EA0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_236A2ED64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_13;
  v9 = _Block_copy(v10);

  [v7 updateConversionValue:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_236A25F8C@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t sub_236A25FC4()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_236A0516C;
  v2 = *(v0 + 16);

  return sub_236A03D68(v2, sub_236A25EA0, 0);
}

unint64_t sub_236A260BC()
{
  v1 = 0x74736F506B636F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x69737265766E6F63;
  }

  v2 = 0xD000000000000013;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_236A2617C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_236A26520(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_236A261A4(uint64_t a1)
{
  v2 = sub_236A2646C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A261E0(uint64_t a1)
{
  v2 = sub_236A2646C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2621C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61718, &qword_236A34878);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2646C();
  sub_236A2F404();
  v15 = 0;
  sub_236A2F2E4();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v13 = 1;
    sub_236A1A9D0();
    sub_236A2F284();
    v12 = 2;
    sub_236A2F2D4();
    v11 = *(v3 + 16);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61728, qword_236A34880);
    sub_236A26AF4(&qword_27DE61730, sub_236A2503C, MEMORY[0x277D83B50]);
    sub_236A2F284();
    v10[14] = 4;
    sub_236A2F244();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_236A2646C()
{
  result = qword_27DE61720;
  if (!qword_27DE61720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61720);
  }

  return result;
}

double sub_236A264C0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_236A266EC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_236A26520(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000236A37030 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000236A37050 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736F506B636F6CLL && a2 == 0xEC0000006B636162 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEF73657079546E6FLL || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xED00006761546E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_236A2F334();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_236A266EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61750, &unk_236A34A48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2646C();
  sub_236A2F3F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_236A2F1D4();
  v23 = 1;
  sub_236A1B164();
  sub_236A2F174();
  v10 = v24;
  v22 = 2;
  v18 = sub_236A2F1C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61728, qword_236A34880);
  v21 = 3;
  sub_236A26AF4(&qword_27DE61758, sub_236A25774, MEMORY[0x277D83B70]);
  sub_236A2F174();
  v17 = v19;
  v20 = 4;
  v11 = sub_236A2F134();
  v12 = v8;
  v14 = v13;
  (*(v6 + 8))(v12, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 9) = v18 & 1;
  *(a2 + 16) = v17;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_236A269F0()
{
  result = qword_27DE61738;
  if (!qword_27DE61738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61738);
  }

  return result;
}

unint64_t sub_236A26A48()
{
  result = qword_27DE61740;
  if (!qword_27DE61740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61740);
  }

  return result;
}

unint64_t sub_236A26AA0()
{
  result = qword_27DE61748;
  if (!qword_27DE61748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61748);
  }

  return result;
}

uint64_t sub_236A26AF4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE61728, qword_236A34880);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A26B84@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for ServiceResult(0, a2, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  sub_236A083C8();
  sub_236A2F3E4();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_236A26C88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_236A2F334();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_236A26D54(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_236A26D84(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_236A2F334();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_236A26E34(uint64_t a1)
{
  sub_236A2F3B4();
  sub_236A19ADC(v3, *v1);
  return sub_236A2F3D4();
}

uint64_t sub_236A26E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_236A26C88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_236A26EC8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_236A28374();
  *a2 = result;
  return result;
}

uint64_t sub_236A26EFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_236A26F50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_236A26FB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2369FEDE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_236A26FE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_236A2703C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_236A27090(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_236A270E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_236A27138(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for ServiceResult.FailureCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v41 = v7;
  v8 = sub_236A2F324();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = v34 - v9;
  v10 = type metadata accessor for ServiceResult.SuccessCodingKeys(255, v4, v5, v6);
  v11 = swift_getWitnessTable();
  v36 = v10;
  v34[1] = v11;
  v12 = sub_236A2F324();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v35 = v34 - v14;
  v37 = *(v4 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v34[0] = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 - 1);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v6;
  v46 = v4;
  type metadata accessor for ServiceResult.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v20 = sub_236A2F324();
  v48 = *(v20 - 8);
  v49 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = v34 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2F404();
  (*(v17 + 16))(v19, v47, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v19;
    v52 = 1;
    v24 = v42;
    v25 = v49;
    sub_236A2F234();
    v51 = v23;
    sub_236A27694();
    v26 = v44;
    sub_236A2F304();
    (*(v43 + 8))(v24, v26);
    return (*(v48 + 8))(v22, v25);
  }

  else
  {
    v28 = v37;
    v29 = v34[0];
    v30 = v46;
    (*(v37 + 32))(v34[0], v19, v46);
    v50 = 0;
    v31 = v35;
    v32 = v49;
    sub_236A2F234();
    v33 = v39;
    sub_236A2F304();
    (*(v38 + 8))(v31, v33);
    (*(v28 + 8))(v29, v30);
    return (*(v48 + 8))(v22, v32);
  }
}

unint64_t sub_236A27694()
{
  result = qword_27DE61760;
  if (!qword_27DE61760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61760);
  }

  return result;
}

uint64_t sub_236A276E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a1;
  v65 = a5;
  v8 = type metadata accessor for ServiceResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v62 = v8;
  v55 = sub_236A2F224();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v63 = &v50 - v9;
  v10 = type metadata accessor for ServiceResult.SuccessCodingKeys(255, a2, a3, a4);
  v58 = swift_getWitnessTable();
  v59 = v10;
  v53 = sub_236A2F224();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v60 = &v50 - v11;
  type metadata accessor for ServiceResult.CodingKeys(255, a2, a3, a4);
  v68 = swift_getWitnessTable();
  v12 = sub_236A2F224();
  v13 = *(v12 - 8);
  v66 = v12;
  v67 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v56 = a2;
  v57 = a3;
  v16 = type metadata accessor for ServiceResult(0, a2, a3, a4);
  v64 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v50 - v23;
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v25 = v69;
  sub_236A2F3F4();
  if (!v25)
  {
    v69 = v22;
    v51 = v19;
    v68 = v24;
    v26 = v66;
    v27 = v15;
    *&v70 = sub_236A2F214();
    sub_236A2EF74();
    swift_getWitnessTable();
    *&v72 = sub_236A2F094();
    *(&v72 + 1) = v28;
    *&v73 = v29;
    *(&v73 + 1) = v30;
    sub_236A2F084();
    swift_getWitnessTable();
    sub_236A2EFF4();
    v31 = v70;
    if (v70 == 2 || (v50 = v72, v70 = v72, v71 = v73, (sub_236A2F004() & 1) == 0))
    {
      v40 = sub_236A2F0E4();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40);
      *v42 = v16;
      sub_236A2F124();
      sub_236A2F0D4();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v67 + 8))(v15, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        LOBYTE(v70) = 1;
        v32 = v63;
        v33 = v27;
        sub_236A2F114();
        v34 = v65;
        v35 = v67;
        sub_236A27EAC();
        v36 = v55;
        sub_236A2F1F4();
        (*(v54 + 8))(v32, v36);
        (*(v35 + 8))(v33, v26);
        swift_unknownObjectRelease();
        v37 = v51;
        *v51 = v70;
        swift_storeEnumTagMultiPayload();
        v38 = *(v64 + 32);
        v39 = v68;
        v38(v68, v37, v16);
      }

      else
      {
        LOBYTE(v70) = 0;
        v43 = v60;
        v44 = v27;
        sub_236A2F114();
        v45 = v67;
        v46 = v64;
        v47 = v53;
        sub_236A2F1F4();
        (*(v52 + 8))(v43, v47);
        (*(v45 + 8))(v44, v26);
        swift_unknownObjectRelease();
        v49 = v69;
        swift_storeEnumTagMultiPayload();
        v38 = *(v46 + 32);
        v39 = v68;
        v38(v68, v49, v16);
        v34 = v65;
      }

      v38(v34, v39, v16);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

unint64_t sub_236A27EAC()
{
  result = qword_27DE61768;
  if (!qword_27DE61768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61768);
  }

  return result;
}

uint64_t sub_236A27F44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_236A27FB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_236A280C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_236A283AC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v8 = *a1;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = a6;
  v9 = _Block_copy(v10);

  [v8 *a7];
  _Block_release(v9);
}

uint64_t sub_236A28480()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2369F54B4;

  return sub_236A0418C(sub_236A28398, 0);
}

uint64_t sub_236A2858C()
{
  if (qword_27DE60E68 != -1)
  {
    swift_once();
  }

  if (qword_27DE6C208)
  {
    sub_236A0F198(sub_236A28384);
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_236A28660(uint64_t a1)
{
  v2 = sub_236A287EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2869C(uint64_t a1)
{
  v2 = sub_236A287EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A286D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61770, qword_236A34E90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A287EC();
  sub_236A2F404();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_236A287EC()
{
  result = qword_27DE61778;
  if (!qword_27DE61778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61778);
  }

  return result;
}

unint64_t sub_236A28864()
{
  result = qword_27DE61780;
  if (!qword_27DE61780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61780);
  }

  return result;
}

unint64_t sub_236A288BC()
{
  result = qword_27DE61788;
  if (!qword_27DE61788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61788);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_236A28944(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_236A2ED64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_20_0;
  v9 = _Block_copy(v10);

  [v7 createDevelopmentPostbacksWithConfigurationData:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_236A28A64()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_236A28B54;

  return sub_236A04530(sub_236A28930, 0);
}

uint64_t sub_236A28B54(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_236A28C7C()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = sub_236A29064;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_236A28DB0;

  return sub_236A04858(sub_236A0CA04, v3);
}

uint64_t sub_236A28DB0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_236A28F30;
  }

  else
  {
    v2 = sub_236A28EC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236A28EC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_236A28F30()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_236A28F9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_236A2E344;
  v9[3] = &block_descriptor_26_0;
  v8 = _Block_copy(v9);

  [a1 setDeveloperModeEnabled:a6 & 1 reply:v8];
  _Block_release(v8);
}

uint64_t sub_236A2906C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_236A29090, 0, 0);
}

uint64_t sub_236A29090()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = sub_236A293F4;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_236A291D0;
  v6 = v0[2];

  return sub_236A04A70(v6, sub_236A0CC90, v4);
}

uint64_t sub_236A291D0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236A0C1B0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_236A29318(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_236A2EE64();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_236A2E344;
  v12[3] = &block_descriptor_23;
  v11 = _Block_copy(v12);

  [a1 retrieveDeveloperPostbackURLForBundleID:v10 reply:v11];
  _Block_release(v11);
}

uint64_t sub_236A2941C()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_236A0516C;
  v2 = *(v0 + 16);

  return sub_236A04DFC(v2, sub_236A28944, 0);
}

uint64_t sub_236A29530()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2369F64E4;

  return sub_236A04858(sub_236A28A20, 0);
}

uint64_t sub_236A2963C()
{
  if (qword_27DE60E60 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2369F54B4;

  return sub_236A04858(sub_236A28A34, 0);
}

uint64_t sub_236A2972C(uint64_t a1)
{
  v2 = sub_236A298B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A29768(uint64_t a1)
{
  v2 = sub_236A298B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A297A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61790, qword_236A34FF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A298B8();
  sub_236A2F404();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_236A298B8()
{
  result = qword_27DE61798;
  if (!qword_27DE61798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61798);
  }

  return result;
}

unint64_t sub_236A29930()
{
  result = qword_27DE617A0;
  if (!qword_27DE617A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE617A0);
  }

  return result;
}

unint64_t sub_236A29988()
{
  result = qword_27DE617A8;
  if (!qword_27DE617A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE617A8);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_236A29A1C()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

id sub_236A29A70()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_236A29B2C()
{
  ObjectType = swift_getObjectType();
  sub_236A2EDC4();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_236A29BD4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_236A29C78(uint64_t a1, uint64_t a2)
{
  sub_236A2ECC4();
  swift_allocObject();
  sub_236A2ECB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61000, &unk_236A35160);
  sub_236A2A0EC();
  sub_236A2ECA4();

  v10 = v22;
  v11 = v22[2];
  if (v11)
  {
    v12 = 0;
    v13 = v22 + 5;
    v14 = MEMORY[0x277D837D0];
    while (v12 < *(v10 + 16))
    {
      v17 = *v13;
      if (*v13)
      {
        v15 = *(v13 - 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617B0, qword_236A35170);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_236A311D0;
        *(v16 + 56) = v14;
        *(v16 + 32) = v15;
        *(v16 + 40) = v17;

        sub_236A2F3A4();
      }

      else
      {
        if (qword_281315F10 != -1)
        {
          swift_once();
        }

        v18 = sub_236A2EE14();
        __swift_project_value_buffer(v18, qword_2813177A0);
        v19 = sub_236A2EDF4();
        v20 = sub_236A2F034();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_2369F3000, v19, v20, "Connection established", v21, 2u);
          MEMORY[0x2383B5900](v21, -1, -1);
        }
      }

      ++v12;
      v13 += 2;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v2 = sub_236A2EE14();
    __swift_project_value_buffer(v2, qword_2813177A0);
    MEMORY[0x2383B5800](v14);
    v3 = sub_236A2EDF4();
    v4 = sub_236A2F024();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136446210;
      MEMORY[0x2383B5800](v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60E48, &qword_236A31230);
      v7 = sub_236A2EEA4();
      v9 = sub_236A09E30(v7, v8, &v22);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_2369F3000, v3, v4, "Error decoding XPC client message: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x2383B5900](v6, -1, -1);
      MEMORY[0x2383B5900](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
LABEL_15:
  }
}

uint64_t type metadata accessor for XPCClient(uint64_t a1)
{
  result = qword_281315F18;
  if (!qword_281315F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236A2A05C(uint64_t a1)
{
  result = sub_236A2EDD4();
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

unint64_t sub_236A2A0EC()
{
  result = qword_281315F08;
  if (!qword_281315F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE61000, &unk_236A35160);
    sub_236A2A170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281315F08);
  }

  return result;
}

unint64_t sub_236A2A170()
{
  result = qword_2813160E0;
  if (!qword_2813160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160E0);
  }

  return result;
}

uint64_t sub_236A2A1C4()
{
  v2[3] = &type metadata for FeatureFlag;
  v2[4] = sub_236A02614();
  v0 = sub_236A2EDE4();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_236A2A228()
{
  result = qword_27DE617B8;
  if (!qword_27DE617B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE617B8);
  }

  return result;
}

BOOL sub_236A2A2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_236A2A2D0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t sub_236A2A304()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

unint64_t sub_236A2A338(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6165627472616568;
      break;
    case 2:
      result = 0x6F68747541746F6ELL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD00000000000002ELL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_236A2A510(uint64_t a1)
{
  v2 = sub_236A2BB30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A54C(uint64_t a1)
{
  v2 = sub_236A2BB30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A588(uint64_t a1)
{
  v2 = sub_236A2BADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A5C4(uint64_t a1)
{
  v2 = sub_236A2BADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_236A2C028(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_236A2A63C(uint64_t a1)
{
  v2 = sub_236A2BA88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A678(uint64_t a1)
{
  v2 = sub_236A2BA88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A6B4(uint64_t a1)
{
  v2 = sub_236A2BC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A6F0(uint64_t a1)
{
  v2 = sub_236A2BC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A72C(uint64_t a1)
{
  v2 = sub_236A2BBD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A768(uint64_t a1)
{
  v2 = sub_236A2BBD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A7A4(uint64_t a1)
{
  v2 = sub_236A2BB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A7E0(uint64_t a1)
{
  v2 = sub_236A2BB84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A81C(uint64_t a1)
{
  v2 = sub_236A2BE24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A858(uint64_t a1)
{
  v2 = sub_236A2BE24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A894(uint64_t a1)
{
  v2 = sub_236A2BF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A8D0(uint64_t a1)
{
  v2 = sub_236A2BF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A90C(uint64_t a1)
{
  v2 = sub_236A2BD7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A948(uint64_t a1)
{
  v2 = sub_236A2BD7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A984(uint64_t a1)
{
  v2 = sub_236A2BC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2A9C0(uint64_t a1)
{
  v2 = sub_236A2BC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2A9FC(uint64_t a1)
{
  v2 = sub_236A2BD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AA38(uint64_t a1)
{
  v2 = sub_236A2BD28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2AA74(uint64_t a1)
{
  v2 = sub_236A2BCD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AAB0(uint64_t a1)
{
  v2 = sub_236A2BCD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2AAEC(uint64_t a1)
{
  v2 = sub_236A2BDD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AB28(uint64_t a1)
{
  v2 = sub_236A2BDD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2AB64(uint64_t a1)
{
  v2 = sub_236A2BECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2ABA0(uint64_t a1)
{
  v2 = sub_236A2BECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2ABDC(uint64_t a1)
{
  v2 = sub_236A2BE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AC18(uint64_t a1)
{
  v2 = sub_236A2BE78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2AC54(uint64_t a1)
{
  v2 = sub_236A2BF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2AC90(uint64_t a1)
{
  v2 = sub_236A2BF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2ACCC(void *a1, uint64_t a2)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617C0, &qword_236A35240);
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x28223BE20](v3);
  v89 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617C8, &qword_236A35248);
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v86 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617D0, &qword_236A35250);
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617D8, &qword_236A35258);
  v81 = *(v9 - 8);
  v82 = v9;
  MEMORY[0x28223BE20](v9);
  v80 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617E0, &qword_236A35260);
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  v77 = &v50 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617E8, &qword_236A35268);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v50 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617F0, &qword_236A35270);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v50 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE617F8, &qword_236A35278);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v50 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61800, &qword_236A35280);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v50 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61808, &qword_236A35288);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v50 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61810, &qword_236A35290);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v50 - v18;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61818, &qword_236A35298);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v50 - v19;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61820, &qword_236A352A0);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61828, &qword_236A352A8);
  v52 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61830, &qword_236A352B0);
  v51 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61838, &qword_236A352B8);
  v27 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v29 = &v50 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2BA88();
  v93 = v29;
  sub_236A2F404();
  v30 = (v27 + 8);
  switch(v92)
  {
    case 1:
      v95[2] = 1;
      sub_236A2BF20();
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      (*(v52 + 8))(v23, v21);
      goto LABEL_19;
    case 2:
      v95[3] = 2;
      sub_236A2BECC();
      v44 = v53;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v40 = *(v54 + 8);
      v41 = v44;
      v42 = &v87;
      goto LABEL_18;
    case 3:
      v95[4] = 3;
      sub_236A2BE78();
      v45 = v56;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v40 = *(v57 + 8);
      v41 = v45;
      v42 = &v90;
      goto LABEL_18;
    case 4:
      v95[5] = 4;
      sub_236A2BE24();
      v39 = v59;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v40 = *(v60 + 8);
      v41 = v39;
      v42 = &v93;
      goto LABEL_18;
    case 5:
      v95[6] = 5;
      sub_236A2BDD0();
      v47 = v62;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v40 = *(v63 + 8);
      v41 = v47;
      v42 = v95;
      goto LABEL_18;
    case 6:
      v95[7] = 6;
      sub_236A2BD7C();
      v48 = v65;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v40 = *(v66 + 8);
      v41 = v48;
      v42 = v96;
      goto LABEL_18;
    case 7:
      v96[0] = 7;
      sub_236A2BD28();
      v46 = v68;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v40 = *(v69 + 8);
      v41 = v46;
      v42 = &v97;
      goto LABEL_18;
    case 8:
      v96[1] = 8;
      sub_236A2BCD4();
      v49 = v71;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v40 = *(v72 + 8);
      v41 = v49;
      v42 = &v98;
LABEL_18:
      v40(v41, *(v42 - 32));
      goto LABEL_19;
    case 9:
      v96[2] = 9;
      sub_236A2BC80();
      v43 = v74;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      (*(v75 + 8))(v43, v76);
      goto LABEL_19;
    case 10:
      v96[3] = 10;
      sub_236A2BC2C();
      v34 = v77;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v38 = v78;
      v37 = v79;
      goto LABEL_16;
    case 11:
      v96[4] = 11;
      sub_236A2BBD8();
      v34 = v80;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v38 = v81;
      v37 = v82;
      goto LABEL_16;
    case 12:
      v96[5] = 12;
      sub_236A2BB84();
      v34 = v83;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v38 = v84;
      v37 = v85;
      goto LABEL_16;
    case 13:
      v96[6] = 13;
      sub_236A2BB30();
      v34 = v86;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v38 = v87;
      v37 = v88;
      goto LABEL_16;
    case 14:
      v96[7] = 14;
      sub_236A2BADC();
      v34 = v89;
      v36 = v93;
      v35 = v94;
      sub_236A2F234();
      v38 = v90;
      v37 = v91;
LABEL_16:
      (*(v38 + 8))(v34, v37);
LABEL_19:
      result = (*v30)(v36, v35);
      break;
    default:
      v95[1] = 0;
      sub_236A2BF74();
      v31 = v93;
      v32 = v94;
      sub_236A2F234();
      (*(v51 + 8))(v26, v24);
      result = (*v30)(v31, v32);
      break;
  }

  return result;
}

unint64_t sub_236A2BA88()
{
  result = qword_27DE61840;
  if (!qword_27DE61840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61840);
  }

  return result;
}

unint64_t sub_236A2BADC()
{
  result = qword_27DE61848;
  if (!qword_27DE61848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61848);
  }

  return result;
}

unint64_t sub_236A2BB30()
{
  result = qword_27DE61850;
  if (!qword_27DE61850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61850);
  }

  return result;
}

unint64_t sub_236A2BB84()
{
  result = qword_27DE61858;
  if (!qword_27DE61858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61858);
  }

  return result;
}

unint64_t sub_236A2BBD8()
{
  result = qword_27DE61860;
  if (!qword_27DE61860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61860);
  }

  return result;
}

unint64_t sub_236A2BC2C()
{
  result = qword_27DE61868;
  if (!qword_27DE61868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61868);
  }

  return result;
}

unint64_t sub_236A2BC80()
{
  result = qword_27DE61870;
  if (!qword_27DE61870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61870);
  }

  return result;
}

unint64_t sub_236A2BCD4()
{
  result = qword_27DE61878;
  if (!qword_27DE61878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61878);
  }

  return result;
}

unint64_t sub_236A2BD28()
{
  result = qword_27DE61880;
  if (!qword_27DE61880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61880);
  }

  return result;
}

unint64_t sub_236A2BD7C()
{
  result = qword_27DE61888;
  if (!qword_27DE61888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61888);
  }

  return result;
}

unint64_t sub_236A2BDD0()
{
  result = qword_27DE61890;
  if (!qword_27DE61890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61890);
  }

  return result;
}

unint64_t sub_236A2BE24()
{
  result = qword_27DE61898;
  if (!qword_27DE61898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61898);
  }

  return result;
}

unint64_t sub_236A2BE78()
{
  result = qword_27DE618A0;
  if (!qword_27DE618A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618A0);
  }

  return result;
}

unint64_t sub_236A2BECC()
{
  result = qword_27DE618A8;
  if (!qword_27DE618A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618A8);
  }

  return result;
}

unint64_t sub_236A2BF20()
{
  result = qword_27DE618B0;
  if (!qword_27DE618B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618B0);
  }

  return result;
}

unint64_t sub_236A2BF74()
{
  result = qword_27DE618B8;
  if (!qword_27DE618B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618B8);
  }

  return result;
}

uint64_t sub_236A2BFE0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_236A2C4CC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_236A2C028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_236A2F334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6165627472616568 && a2 == 0xE900000000000074 || (sub_236A2F334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F68747541746F6ELL && a2 == 0xED000064657A6972 || (sub_236A2F334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000236A37310 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000236A37330 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000236A37350 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000236A37370 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000236A37390 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000236A373B0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000236A373D0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000236A373F0 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000236A37410 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002ELL && 0x8000000236A37430 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000236A37460 == a2 || (sub_236A2F334() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000236A37480 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_236A2F334();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_236A2C4CC(void *a1)
{
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619D0, &qword_236A360E0);
  v79 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v89 = &v48 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619D8, &qword_236A360E8);
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v88 = &v48 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619E0, &qword_236A360F0);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v87 = &v48 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619E8, &qword_236A360F8);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v86 = &v48 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619F0, &qword_236A36100);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v85 = &v48 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE619F8, &qword_236A36108);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v84 = &v48 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A00, &qword_236A36110);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v83 = &v48 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A08, &qword_236A36118);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v82 = &v48 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A10, &qword_236A36120);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v92 = &v48 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A18, &qword_236A36128);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v91 = &v48 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A20, &qword_236A36130);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v90 = &v48 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A28, &qword_236A36138);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v81 = &v48 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A30, &qword_236A36140);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v80 = &v48 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A38, &qword_236A36148);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A40, &qword_236A36150);
  v52 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A48, &qword_236A36158);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_236A2BA88();
  v26 = v94;
  sub_236A2F3F4();
  if (v26)
  {
    goto LABEL_7;
  }

  v49 = v20;
  v48 = v18;
  v50 = v17;
  v27 = v90;
  v28 = v91;
  v30 = v92;
  v29 = v93;
  v51 = v22;
  v94 = sub_236A2F214();
  if (*(v94 + 16) != 1 || (v31 = *(v94 + 32), v31 == 15))
  {
    v33 = sub_236A2F0E4();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40);
    *v35 = &type metadata for AttributionKitError;
    sub_236A2F124();
    sub_236A2F0D4();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v51 + 8))(v24, v21);
    swift_unknownObjectRelease();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v95);
    return 0;
  }

  switch(*(v94 + 32))
  {
    case 1:
      v97 = 1;
      sub_236A2BF20();
      v44 = v50;
      sub_236A2F114();
      (*(v53 + 8))(v44, v54);
      break;
    case 2:
      v98 = 2;
      sub_236A2BECC();
      v41 = v80;
      sub_236A2F114();
      (*(v55 + 8))(v41, v56);
      break;
    case 3:
      v99 = 3;
      sub_236A2BE78();
      v42 = v81;
      sub_236A2F114();
      (*(v57 + 8))(v42, v58);
      break;
    case 4:
      v100 = 4;
      sub_236A2BE24();
      sub_236A2F114();
      (*(v59 + 8))(v27, v60);
      break;
    case 5:
      v101 = 5;
      sub_236A2BDD0();
      sub_236A2F114();
      (*(v62 + 8))(v28, v61);
      break;
    case 6:
      v102 = 6;
      sub_236A2BD7C();
      sub_236A2F114();
      (*(v63 + 8))(v30, v64);
      break;
    case 7:
      v103 = 7;
      sub_236A2BD28();
      v43 = v82;
      sub_236A2F114();
      (*(v65 + 8))(v43, v66);
      break;
    case 8:
      v104 = 8;
      sub_236A2BCD4();
      v47 = v83;
      sub_236A2F114();
      (*(v67 + 8))(v47, v68);
      break;
    case 9:
      v105 = 9;
      sub_236A2BC80();
      v40 = v84;
      sub_236A2F114();
      (*(v69 + 8))(v40, v70);
      break;
    case 0xA:
      v106 = 10;
      sub_236A2BC2C();
      v46 = v85;
      sub_236A2F114();
      (*(v71 + 8))(v46, v72);
      break;
    case 0xB:
      v107 = 11;
      sub_236A2BBD8();
      v38 = v86;
      sub_236A2F114();
      (*(v73 + 8))(v38, v74);
      break;
    case 0xC:
      v108 = 12;
      sub_236A2BB84();
      v39 = v87;
      sub_236A2F114();
      (*(v75 + 8))(v39, v76);
      break;
    case 0xD:
      v109 = 13;
      sub_236A2BB30();
      v45 = v88;
      sub_236A2F114();
      (*(v77 + 8))(v45, v78);
      break;
    case 0xE:
      v110 = 14;
      sub_236A2BADC();
      v37 = v89;
      sub_236A2F114();
      (*(v79 + 8))(v37, v29);
      break;
    default:
      v96 = 0;
      sub_236A2BF74();
      v32 = v49;
      sub_236A2F114();
      (*(v52 + 8))(v32, v48);
      break;
  }

  (*(v51 + 8))(v24, v21);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v95);
  return v31;
}

unint64_t sub_236A2D484()
{
  result = qword_27DE618C0;
  if (!qword_27DE618C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618C0);
  }

  return result;
}

uint64_t sub_236A2D4E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_236A2D578(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_236A2D72C()
{
  result = qword_27DE618C8;
  if (!qword_27DE618C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618C8);
  }

  return result;
}

unint64_t sub_236A2D784()
{
  result = qword_27DE618D0;
  if (!qword_27DE618D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618D0);
  }

  return result;
}

unint64_t sub_236A2D7DC()
{
  result = qword_27DE618D8;
  if (!qword_27DE618D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618D8);
  }

  return result;
}

unint64_t sub_236A2D834()
{
  result = qword_27DE618E0;
  if (!qword_27DE618E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618E0);
  }

  return result;
}

unint64_t sub_236A2D88C()
{
  result = qword_27DE618E8;
  if (!qword_27DE618E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618E8);
  }

  return result;
}

unint64_t sub_236A2D8E4()
{
  result = qword_27DE618F0;
  if (!qword_27DE618F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618F0);
  }

  return result;
}

unint64_t sub_236A2D93C()
{
  result = qword_27DE618F8;
  if (!qword_27DE618F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE618F8);
  }

  return result;
}

unint64_t sub_236A2D994()
{
  result = qword_27DE61900;
  if (!qword_27DE61900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61900);
  }

  return result;
}

unint64_t sub_236A2D9EC()
{
  result = qword_27DE61908;
  if (!qword_27DE61908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61908);
  }

  return result;
}

unint64_t sub_236A2DA44()
{
  result = qword_27DE61910;
  if (!qword_27DE61910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61910);
  }

  return result;
}

unint64_t sub_236A2DA9C()
{
  result = qword_27DE61918;
  if (!qword_27DE61918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61918);
  }

  return result;
}

unint64_t sub_236A2DAF4()
{
  result = qword_27DE61920;
  if (!qword_27DE61920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61920);
  }

  return result;
}

unint64_t sub_236A2DB4C()
{
  result = qword_27DE61928;
  if (!qword_27DE61928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61928);
  }

  return result;
}

unint64_t sub_236A2DBA4()
{
  result = qword_27DE61930;
  if (!qword_27DE61930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61930);
  }

  return result;
}

unint64_t sub_236A2DBFC()
{
  result = qword_27DE61938;
  if (!qword_27DE61938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61938);
  }

  return result;
}

unint64_t sub_236A2DC54()
{
  result = qword_27DE61940;
  if (!qword_27DE61940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61940);
  }

  return result;
}

unint64_t sub_236A2DCAC()
{
  result = qword_27DE61948;
  if (!qword_27DE61948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61948);
  }

  return result;
}

unint64_t sub_236A2DD04()
{
  result = qword_27DE61950;
  if (!qword_27DE61950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61950);
  }

  return result;
}

unint64_t sub_236A2DD5C()
{
  result = qword_27DE61958;
  if (!qword_27DE61958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61958);
  }

  return result;
}

unint64_t sub_236A2DDB4()
{
  result = qword_27DE61960;
  if (!qword_27DE61960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61960);
  }

  return result;
}

unint64_t sub_236A2DE0C()
{
  result = qword_27DE61968;
  if (!qword_27DE61968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61968);
  }

  return result;
}

unint64_t sub_236A2DE64()
{
  result = qword_27DE61970;
  if (!qword_27DE61970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61970);
  }

  return result;
}

unint64_t sub_236A2DEBC()
{
  result = qword_27DE61978;
  if (!qword_27DE61978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61978);
  }

  return result;
}

unint64_t sub_236A2DF14()
{
  result = qword_27DE61980;
  if (!qword_27DE61980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61980);
  }

  return result;
}

unint64_t sub_236A2DF6C()
{
  result = qword_27DE61988;
  if (!qword_27DE61988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61988);
  }

  return result;
}

unint64_t sub_236A2DFC4()
{
  result = qword_27DE61990;
  if (!qword_27DE61990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61990);
  }

  return result;
}

unint64_t sub_236A2E01C()
{
  result = qword_27DE61998;
  if (!qword_27DE61998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61998);
  }

  return result;
}

unint64_t sub_236A2E074()
{
  result = qword_27DE619A0;
  if (!qword_27DE619A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619A0);
  }

  return result;
}

unint64_t sub_236A2E0CC()
{
  result = qword_27DE619A8;
  if (!qword_27DE619A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619A8);
  }

  return result;
}

unint64_t sub_236A2E124()
{
  result = qword_27DE619B0;
  if (!qword_27DE619B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619B0);
  }

  return result;
}

unint64_t sub_236A2E17C()
{
  result = qword_27DE619B8;
  if (!qword_27DE619B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619B8);
  }

  return result;
}

unint64_t sub_236A2E1D4()
{
  result = qword_27DE619C0;
  if (!qword_27DE619C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619C0);
  }

  return result;
}

unint64_t sub_236A2E22C()
{
  result = qword_27DE619C8;
  if (!qword_27DE619C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE619C8);
  }

  return result;
}

void sub_236A2E28C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_236A2E344;
  v7[3] = &block_descriptor_16;
  v6 = _Block_copy(v7);

  [v5 fetchReengagementTokensWithReply_];
  _Block_release(v6);
}

uint64_t sub_236A2E344(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_236A2ED84();
  v7 = v6;

  v3(v5, v7);
  sub_236A08300(v5, v7);
}

uint64_t sub_236A2E3CC()
{
  if (qword_27DE60E68 != -1)
  {
    result = swift_once();
  }

  if (qword_27DE6C208)
  {
    return sub_236A0F538(sub_236A2E28C);
  }

  return result;
}

uint64_t sub_236A2E448(uint64_t a1)
{
  v2 = sub_236A2E5D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A2E484(uint64_t a1)
{
  v2 = sub_236A2E5D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A2E4C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61A50, qword_236A36160);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A2E5D4();
  sub_236A2F404();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_236A2E5D4()
{
  result = qword_27DE61A58;
  if (!qword_27DE61A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A58);
  }

  return result;
}

unint64_t sub_236A2E64C()
{
  result = qword_27DE61A60;
  if (!qword_27DE61A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A60);
  }

  return result;
}

unint64_t sub_236A2E6A4()
{
  result = qword_27DE61A68;
  if (!qword_27DE61A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A68);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A2E710()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_236A2EE64();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &unk_2849A80F8;
  v5 = [v3 interfaceWithProtocol_];

  [v2 setExportedInterface_];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient(0)) init];
  [v2 setExportedObject_];

  v7 = &unk_2849A8AD0;
  v8 = [v3 interfaceWithProtocol_];

  [v2 setRemoteObjectInterface_];
  v16 = sub_236A02084;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_17;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler_];
  _Block_release(v9);
  v16 = sub_236A020D4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_6_3;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler_];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for PostbackProxyServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_27DE6C358 = result;
  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A2E9D8(char a1)
{
  if (!a1)
  {
    return 1751607656;
  }

  if (a1 == 1)
  {
    return 7827308;
  }

  return 0x6D756964656DLL;
}

unint64_t sub_236A2EA1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_236A2EAFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_236A2EAFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_236A2F104();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_236A2EB4C()
{
  result = qword_27DE61A70;
  if (!qword_27DE61A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A70);
  }

  return result;
}

unint64_t sub_236A2EBB0()
{
  result = qword_27DE61A78;
  if (!qword_27DE61A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE61A78);
  }

  return result;
}