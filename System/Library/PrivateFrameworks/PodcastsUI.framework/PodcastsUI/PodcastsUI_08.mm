uint64_t JSPackageLocation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_21B4C5748();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C75F8();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSPackageLocation(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87DC0, &qword_21B4D6FB8);
  v28 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B46AEB4();
  sub_21B4CA798();
  sub_21B38C7C0(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v8 = v24;
      v17 = v25;
      v16 = v26;
      (*(v25 + 32))(v24, v11, v26);
      v34 = 0;
      v19 = v27;
      sub_21B4CA548();
      if (!v19)
      {
        v33 = 2;
        sub_21B46AFFC(&qword_27CD87DC8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
        goto LABEL_9;
      }
    }

    else
    {
      v17 = v22;
      v16 = v23;
      (*(v22 + 32))(v8, v11, v23);
      v32 = 0;
      v18 = v27;
      sub_21B4CA548();
      if (!v18)
      {
        v31 = 1;
        sub_21B46AFFC(&qword_27CD87DD0, MEMORY[0x277D854C0], MEMORY[0x277D854C8]);
LABEL_9:
        sub_21B4CA558();
      }
    }

    (*(v17 + 8))(v8, v16);
    return (*(v28 + 8))(v14, v12);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v29 = 0;
  }

  else
  {
    v30 = 0;
  }

  sub_21B4CA548();
  return (*(v28 + 8))(v14, v12);
}

NSData_optional __swiftcall JSPackageLocation.userDefaultsObject()()
{
  sub_21B4C55B8();
  swift_allocObject();
  sub_21B4C55A8();
  sub_21B4C5588();
  type metadata accessor for JSPackageLocation(0);
  sub_21B46AFFC(&qword_27CD87DE0, type metadata accessor for JSPackageLocation, &protocol conformance descriptor for JSPackageLocation);
  v0 = sub_21B4C5598();
  v2 = v1;
  v3 = sub_21B4C5768();

  sub_21B36D4F4(v0, v2);
  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t sub_21B46AA0C(uint64_t a1)
{
  sub_21B4C55B8();
  swift_allocObject();
  sub_21B4C55A8();
  sub_21B4C5588();
  sub_21B46AFFC(&qword_27CD87DE0, type metadata accessor for JSPackageLocation, &protocol conformance descriptor for JSPackageLocation);
  v1 = sub_21B4C5598();
  v3 = v2;
  v4 = sub_21B4C5768();

  sub_21B36D4F4(v1, v3);
  return v4;
}

uint64_t _s10PodcastsUI17JSPackageLocationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B4C5748();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21B4C75F8();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSPackageLocation(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E10, &unk_21B4D7290);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v20 = *(v19 + 56);
  sub_21B38C7C0(a1, &v29 - v17);
  sub_21B38C7C0(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21B38C7C0(v18, v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v31 + 8))(v12, v32);
        goto LABEL_13;
      }

      v23 = v31;
      v22 = v32;
      (*(v31 + 32))(v6, &v18[v20], v32);
      v24 = sub_21B4C56D8();
      v25 = *(v23 + 8);
      v25(v6, v22);
      v25(v12, v22);
    }

    else
    {
      sub_21B38C7C0(v18, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v30 + 8))(v15, v7);
LABEL_13:
        sub_21B3F2D94(v18, &qword_27CD87E10, &unk_21B4D7290);
        v24 = 0;
        return v24 & 1;
      }

      v26 = v30;
      (*(v30 + 32))(v9, &v18[v20], v7);
      v24 = sub_21B4C75C8();
      v27 = *(v26 + 8);
      v27(v9, v7);
      v27(v15, v7);
    }

    sub_21B46B1A8(v18);
    return v24 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_21B46B1A8(v18);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_21B46AEB4()
{
  result = qword_27CD87DA8;
  if (!qword_27CD87DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87DA8);
  }

  return result;
}

uint64_t sub_21B46AF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B46AFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21B46B058()
{
  result = qword_27CD87DF8;
  if (!qword_27CD87DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87DF8);
  }

  return result;
}

unint64_t sub_21B46B0B0()
{
  result = qword_27CD87E00;
  if (!qword_27CD87E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87E00);
  }

  return result;
}

unint64_t sub_21B46B108()
{
  result = qword_27CD87E08;
  if (!qword_27CD87E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87E08);
  }

  return result;
}

unint64_t sub_21B46B15C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B4CA518();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21B46B1A8(uint64_t a1)
{
  v2 = type metadata accessor for JSPackageLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JSPackageMetadata.init(version:buildType:buildDate:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 10);
  *a4 = *a1;
  *(a4 + 10) = v6;
  *(a4 + 8) = v5;
  *(a4 + 11) = a2;
  v7 = a4 + *(type metadata accessor for JSPackageMetadata(0) + 24);

  return sub_21B39EB6C(a3, v7);
}

void JSPackageMetadata.version.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 10) = v3;
  *(a1 + 8) = v2;
}

uint64_t JSPackageMetadata.buildDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSPackageMetadata(0) + 24);

  return sub_21B46411C(v3, a1);
}

uint64_t sub_21B46B2D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E30, &qword_21B4D72C0);
  __swift_allocate_value_buffer(v0, qword_2811FF840);
  __swift_project_value_buffer(v0, qword_2811FF840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E18, &qword_21B4D72A0);
  sub_21B3F1314(&qword_2811FD688, &qword_27CD87E30, &qword_21B4D72C0, MEMORY[0x277D85AC0]);
  return sub_21B4C5C18();
}

BOOL _s10PodcastsUI17JSPackageMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_21B4C5858();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87538, &qword_21B4D6940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87E38, &qword_21B4D7328);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = *a2;
  if ((*a1 & 0xFF000000000000) == 0x8000000000000)
  {
    if ((v14 & 0xFF000000000000) != 0x8000000000000)
    {
      return 0;
    }
  }

  else
  {
    v15 = *(a2 + 10);
    v16 = *(a2 + 4);
    v17 = *(a1 + 4);
    v18 = *(a1 + 10);
    v38 = *a1;
    v40 = v18;
    v39 = v17;
    if ((v14 & 0xFF000000000000) == 0x8000000000000)
    {
      return 0;
    }

    v33 = v14;
    v19 = v16 | (v15 << 16);
    v34 = WORD2(v14);
    v35 = BYTE6(v14);
    v36 = v19;
    v37 = BYTE2(v19) & 1;
    if ((_s10PodcastsUI16JSPackageVersionV2eeoiySbAC_ACtFZ_0(&v38, &v33) & 1) == 0)
    {
      return 0;
    }
  }

  v20 = *(a1 + 11);
  v21 = *(a2 + 11);
  if (v20 == 3)
  {
    if (v21 != 3)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (v21 == 3)
  {
    return 0;
  }

  v22 = 0x6775626564;
  if (!*(a1 + 11))
  {
    v23 = 0xE500000000000000;
    v24 = 0x6775626564;
    if (*(a2 + 11))
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (v20 != 1)
  {
    v24 = 0x69746375646F7270;
    v23 = 0xEA00000000006E6FLL;
    if (*(a2 + 11))
    {
      goto LABEL_15;
    }

LABEL_18:
    v25 = 0xE500000000000000;
    goto LABEL_20;
  }

  v23 = 0xE500000000000000;
  v24 = 0x7972726163;
  if (!*(a2 + 11))
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v21 == 1)
  {
    v25 = 0xE500000000000000;
    v22 = 0x7972726163;
  }

  else
  {
    v22 = 0x69746375646F7270;
    v25 = 0xEA00000000006E6FLL;
  }

LABEL_20:
  if (v24 == v22 && v23 == v25)
  {
  }

  else
  {
    v32 = sub_21B4CA608();

    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_24:
  v26 = *(type metadata accessor for JSPackageMetadata(0) + 24);
  v27 = *(v11 + 48);
  sub_21B46411C(a1 + v26, v13);
  sub_21B46411C(a2 + v26, &v13[v27]);
  v28 = *(v5 + 48);
  if (v28(v13, 1, v4) != 1)
  {
    sub_21B46411C(v13, v10);
    if (v28(&v13[v27], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_29;
    }

    (*(v5 + 32))(v7, &v13[v27], v4);
    sub_21B46B934(&qword_27CD87E40, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v30 = sub_21B4C96B8();
    v31 = *(v5 + 8);
    v31(v7, v4);
    v31(v10, v4);
    sub_21B3F2D94(v13, &qword_27CD87538, &qword_21B4D6940);
    return (v30 & 1) != 0;
  }

  if (v28(&v13[v27], 1, v4) != 1)
  {
LABEL_29:
    sub_21B3F2D94(v13, &qword_27CD87E38, &qword_21B4D7328);
    return 0;
  }

  sub_21B3F2D94(v13, &qword_27CD87538, &qword_21B4D6940);
  return 1;
}

void sub_21B46B878(uint64_t a1)
{
  sub_21B435984(319, &qword_2811FF940, &type metadata for JSPackageVersion);
  if (v1 <= 0x3F)
  {
    sub_21B435984(319, qword_2811FF530, &type metadata for JSPackageBuildType);
    if (v2 <= 0x3F)
    {
      sub_21B36BCA4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21B46B934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t JSPackageSourceLocation.hash(into:)(uint64_t a1)
{
  v2 = sub_21B4C75F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C5748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSPackageSourceLocation(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B39F340(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v7 + 32))(v9, v12, v6);
      v14 = 3;
      goto LABEL_9;
    }

    (*(v3 + 32))(v5, v12, v2);
    v15 = 2;
LABEL_7:
    MEMORY[0x21CEF3E40](v15);
    sub_21B46C68C(&qword_27CD87D98, MEMORY[0x277D854C0], MEMORY[0x277D854D0]);
    sub_21B4C9638();
    return (*(v3 + 8))(v5, v2);
  }

  if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v12, v2);
    v15 = 1;
    goto LABEL_7;
  }

  (*(v7 + 32))(v9, v12, v6);
  v14 = 0;
LABEL_9:
  MEMORY[0x21CEF3E40](v14);
  sub_21B46C68C(&qword_27CD87D90, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_21B4C9638();
  return (*(v7 + 8))(v9, v6);
}

uint64_t JSPackageSourceLocation.hashValue.getter()
{
  sub_21B4CA6E8();
  JSPackageSourceLocation.hash(into:)(v1);
  return sub_21B4CA738();
}

uint64_t sub_21B46BCD4()
{
  sub_21B4CA6E8();
  JSPackageSourceLocation.hash(into:)(v1);
  return sub_21B4CA738();
}

uint64_t sub_21B46BD18(uint64_t a1)
{
  sub_21B4CA6E8();
  JSPackageSourceLocation.hash(into:)(v2);
  return sub_21B4CA738();
}

unint64_t JSPackageSourceLocation.debugDescription.getter()
{
  v1 = v0;
  v32 = sub_21B4C75F8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = sub_21B4C5748();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSPackageSourceLocation(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B39F340(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v12 + 32))(v14, v17, v11);
      v19 = 0x800000021B4E12F0;
      v20 = 0xD000000000000020;
      goto LABEL_9;
    }

    v21 = v32;
    (*(v2 + 32))(v10, v17, v32);
    v22 = 0x800000021B4E1320;
    v23 = 0xD00000000000001FLL;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v12 + 32))(v14, v17, v11);
      v19 = 0x800000021B4E1370;
      v20 = 0xD00000000000001DLL;
LABEL_9:
      v33 = v20;
      v34 = v19;
      v29 = sub_21B4C5658();
      MEMORY[0x21CEF2F30](v29);

      MEMORY[0x21CEF2F30](10530, 0xE200000000000000);
      v28 = v33;
      (*(v12 + 8))(v14, v11);
      return v28;
    }

    v21 = v32;
    (*(v2 + 32))(v10, v17, v32);
    v22 = 0x800000021B4E1340;
    v23 = 0xD000000000000020;
  }

  v33 = v23;
  v34 = v22;
  (*(v2 + 16))(v4, v10, v21);
  sub_21B4C75B8();
  v24 = sub_21B4C75D8();
  v26 = v25;
  v27 = *(v2 + 8);
  v27(v7, v21);
  MEMORY[0x21CEF2F30](v24, v26);

  MEMORY[0x21CEF2F30](10530, 0xE200000000000000);
  v28 = v33;
  v27(v10, v21);
  return v28;
}

uint64_t _s10PodcastsUI23JSPackageSourceLocationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v2 = sub_21B4C75F8();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  v7 = sub_21B4C5748();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for JSPackageSourceLocation(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87ED8, &qword_21B4D7488);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v48 - v26;
  v29 = *(v28 + 56);
  sub_21B39F340(v54, &v48 - v26);
  sub_21B39F340(v55, &v27[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_21B39F340(v27, v15);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v31 = *(v50 + 8);
        v32 = v15;
        goto LABEL_15;
      }

      v42 = v50;
      v41 = v51;
      (*(v50 + 32))(v9, &v27[v29], v51);
      v36 = sub_21B4C56D8();
      v43 = *(v42 + 8);
      v43(v9, v41);
      v43(v15, v41);
LABEL_18:
      sub_21B39FEC4(v27);
      return v36 & 1;
    }

    sub_21B39F340(v27, v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v34 = v52;
      v33 = v53;
      v35 = v49;
      (*(v52 + 32))(v49, &v27[v29], v53);
      v36 = sub_21B4C75C8();
      v37 = *(v34 + 8);
      v37(v35, v33);
      v37(v18, v33);
      goto LABEL_18;
    }

    (*(v52 + 8))(v18, v53);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_21B39F340(v27, v24);
      if (swift_getEnumCaseMultiPayload())
      {
        v31 = *(v50 + 8);
        v32 = v24;
LABEL_15:
        v31(v32, v51);
        goto LABEL_16;
      }

      v45 = v50;
      v44 = v51;
      (*(v50 + 32))(v12, &v27[v29], v51);
      v36 = sub_21B4C56D8();
      v46 = *(v45 + 8);
      v46(v12, v44);
      v46(v24, v44);
      goto LABEL_18;
    }

    sub_21B39F340(v27, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v52;
      v38 = v53;
      (*(v52 + 32))(v6, &v27[v29], v53);
      v36 = sub_21B4C75C8();
      v40 = *(v39 + 8);
      v40(v6, v38);
      v40(v21, v38);
      goto LABEL_18;
    }

    (*(v52 + 8))(v21, v53);
  }

LABEL_16:
  sub_21B46C6D4(v27);
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_21B46C68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21B46C6D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87ED8, &qword_21B4D7488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B46C750(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21B4CA608();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21B46C7B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10PodcastsUI16JSPackageVersionV15LetterComponentO8rawValueAESgSJ_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21B46C804()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

double sub_21B46C858(uint64_t a1)
{
  sub_21B4C9658();

  return result;
}

uint64_t sub_21B46C890(uint64_t a1)
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

uint64_t JSPackageVersion.init(major:minor:patch:letter:year:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 2) = a2;
  *(a5 + 4) = a3;
  *(a5 + 6) = a4;
  *(a5 + 8) = 0;
  *(a5 + 10) = 1;
  return result;
}

uint64_t JSPackageVersion.year.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 10) = BYTE2(result) & 1;
  return result;
}

uint64_t JSPackageVersion.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = *(v1 + 10);
  sub_21B4CA718();
  sub_21B4CA718();
  sub_21B4CA718();
  if (v2 == 7)
  {
    sub_21B4CA708();
    if (!v3)
    {
LABEL_3:
      sub_21B4CA708();
      return sub_21B4CA718();
    }
  }

  else
  {
    sub_21B4CA708();
    sub_21B4C9658();

    if (!v3)
    {
      goto LABEL_3;
    }
  }

  return sub_21B4CA708();
}

uint64_t JSPackageVersion.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v3 = *(v0 + 4);
  v4 = *(v0 + 10);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_21B4CA6E8();
  JSPackageVersion.hash(into:)(v6);
  return sub_21B4CA738();
}

uint64_t sub_21B46CB2C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v3 = *(v0 + 4);
  v4 = *(v0 + 10);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_21B4CA6E8();
  JSPackageVersion.hash(into:)(v6);
  return sub_21B4CA738();
}

uint64_t sub_21B46CB9C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 6);
  v4 = *(v1 + 4);
  v5 = *(v1 + 10);
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_21B4CA6E8();
  JSPackageVersion.hash(into:)(v7);
  return sub_21B4CA738();
}

void JSPackageVersion.Parser.parse(_:startingAt:in:)(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, char a7@<W6>, uint64_t a8@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EE0, &qword_21B4D74A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EE8, &qword_21B4D74A8);
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x28223BE20](v17);
  v34 = &v31 - v18;
  if ((a7 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (a4)
  {
    v19 = 15;
  }

  else
  {
    v19 = a3;
  }

  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v20 < v19 >> 14)
  {
    __break(1u);
  }

  else
  {
LABEL_8:
    if (qword_2811FF960 != -1)
    {
      swift_once();
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87EF0, &qword_21B4D74B0);
    __swift_project_value_buffer(v21, qword_2811FF968);
    sub_21B4C9888();
    sub_21B4C5C28();

    v22 = v35;
    v23 = v36;
    if ((*(v35 + 48))(v16, 1, v36) == 1)
    {
      sub_21B3F2D94(v16, &qword_27CD87EE0, &qword_21B4D74A0);
      *a8 = 0;
      *(a8 + 8) = 0;
      *(a8 + 16) = 0x8000000000000;
      *(a8 + 26) = 0;
    }

    else
    {
      v24 = v34;
      (*(v22 + 32))(v34, v16, v23);
      sub_21B4C5C58();

      v33 = v43;
      sub_21B4C5C58();

      v32 = v41;
      sub_21B4C5C58();

      v25 = v40;
      sub_21B4C5C58();

      v26 = v39;
      sub_21B4C5C58();
      v44 = v37;
      v45[0] = v38[0];
      *(v45 + 12) = *(v38 + 12);
      sub_21B3F2D94(&v44, &qword_27CD87EF8, &qword_21B4D74B8);
      v27 = sub_21B4C5C48();
      v29 = v28;
      (*(v22 + 8))(v24, v23);
      v42 = 1;
      v30 = v33 | (v32 << 16) | (v25 << 32);
      *a8 = v27;
      *(a8 + 8) = v29;
      *(a8 + 16) = v30 | (v26 << 48);
      *(a8 + 26) = 1;
    }

    *(a8 + 24) = 0;
  }
}

void JSPackageVersion.parse(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  JSPackageVersion.Parser.parse(_:startingAt:in:)(a1, a2, 0, 1, 1, &v6);
  if ((v7 & 0xFF000000000000) == 0x8000000000000)
  {
    v4 = 0;
    v5 = 0x8000000000000;
  }

  else
  {
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
    v4 = (v8 | (v9 << 16)) & 0x1FFFF;
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 10) = BYTE2(v4);
}

unint64_t JSPackageVersion.LetterComponent.debugDescription.getter(unsigned __int8 a1)
{
  sub_21B4CA338();

  v1 = sub_21B4C9648();
  v3 = v2;

  MEMORY[0x21CEF2F30](v1, v3);

  return 0xD000000000000021;
}

uint64_t JSPackageVersion.debugDescription.getter()
{
  v1 = 7104878;
  v2 = *(v0 + 6);
  v3 = *(v0 + 10);
  sub_21B4CA338();
  MEMORY[0x21CEF2F30](0xD000000000000018, 0x800000021B4E13C0);
  v4 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v4);

  MEMORY[0x21CEF2F30](0x3A726F6E696D202CLL, 0xE900000000000020);
  v5 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v5);

  MEMORY[0x21CEF2F30](0x3A6863746170202CLL, 0xE900000000000020);
  v6 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v6);

  MEMORY[0x21CEF2F30](0x72657474656C202CLL, 0xEA0000000000203ALL);
  if (v2 == 7)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v8 = JSPackageVersion.LetterComponent.debugDescription.getter(v2);
    v7 = v9;
  }

  MEMORY[0x21CEF2F30](v8, v7);

  MEMORY[0x21CEF2F30](0x203A72616579202CLL, 0xE800000000000000);
  if (v3)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    sub_21B46E160();
    v1 = sub_21B4CA268();
    v10 = v11;
  }

  MEMORY[0x21CEF2F30](v1, v10);

  MEMORY[0x21CEF2F30](41, 0xE100000000000000);
  return 0;
}

uint64_t JSPackageVersion.description.getter()
{
  v1 = *(v0 + 6);
  if (v1 > 3)
  {
    if (*(v0 + 6) > 5u)
    {
      if (v1 != 6)
      {
        v12 = sub_21B4CA588();
        MEMORY[0x21CEF2F30](46, 0xE100000000000000);
        v9 = sub_21B4CA588();
        MEMORY[0x21CEF2F30](v9);

        MEMORY[0x21CEF2F30](46, 0xE100000000000000);
        goto LABEL_21;
      }

      v4 = 71;
      if (*(v0 + 10))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v1 == 4)
      {
        v4 = 69;
      }

      else
      {
        v4 = 70;
      }

      if (*(v0 + 10))
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    v12 = sub_21B4CA588();
    MEMORY[0x21CEF2F30](46, 0xE100000000000000);
    v7 = sub_21B4CA588();
    MEMORY[0x21CEF2F30](v7);

    MEMORY[0x21CEF2F30](46, 0xE100000000000000);
    v8 = sub_21B4CA588();
    MEMORY[0x21CEF2F30](v8);

    MEMORY[0x21CEF2F30](45, 0xE100000000000000);
    MEMORY[0x21CEF2F30](v4, 0xE100000000000000);

    MEMORY[0x21CEF2F30](46, 0xE100000000000000);
LABEL_21:
    v10 = sub_21B4CA588();
    MEMORY[0x21CEF2F30](v10);
    goto LABEL_22;
  }

  v2 = 65;
  v3 = 67;
  if (v1 != 2)
  {
    v3 = 68;
  }

  if (*(v0 + 6))
  {
    v2 = 66;
  }

  if (*(v0 + 6) <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if ((*(v0 + 10) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v12 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](46, 0xE100000000000000);
  v5 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v5);

  MEMORY[0x21CEF2F30](46, 0xE100000000000000);
  v6 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v6);

  MEMORY[0x21CEF2F30](45, 0xE100000000000000);
  MEMORY[0x21CEF2F30](v4, 0xE100000000000000);
LABEL_22:

  return v12;
}

void sub_21B46D648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  sub_21B46E49C();

  v6 = sub_21B4C9878();
  v8 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_21B46DC28(v6, v7);
    v38 = v37;

    v7 = v38;
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
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = sub_21B4CA3D8();
      v10 = v66;
    }

    v11 = *v9;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v21 = v10 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v9)
          {
            LOWORD(v25) = 0;
            v26 = v9 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_125;
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

              v29 = v25 * a5;
              if ((v29 & 0xFFFF0000) == 0)
              {
                v25 = v29 + (v27 + v28);
                if ((v25 & 0x10000) == 0)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
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

        if (v9)
        {
          LOWORD(v33) = 0;
          while (1)
          {
            v34 = *v9;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
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
            if ((v36 & 0xFFFF0000) == 0)
            {
              v33 = v36 + (v34 + v35);
              if ((v33 & 0x10000) == 0)
              {
                ++v9;
                if (--v10)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v12)
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

        if (v9)
        {
          LOWORD(v16) = 0;
          v17 = v9 + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                if (v18 < 0x61 || v18 >= v15)
                {
                  break;
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

            v20 = v16 * a5;
            if ((v20 & 0xFFFF0000) == 0)
            {
              v16 = v20 - (v18 + v19);
              if ((v16 & 0xFFFF0000) == 0)
              {
                ++v17;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v8;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOWORD(v58) = 0;
        v59 = a5 + 48;
        v60 = a5 + 55;
        v61 = a5 + 87;
        if (a5 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_125;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a5;
          if ((v65 & 0xFFFF0000) == 0)
          {
            v58 = v65 + (v63 + v64);
            if ((v58 & 0x10000) == 0)
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOWORD(v41) = 0;
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

        v45 = &v67 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_125;
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
          if ((v48 & 0xFFFF0000) == 0)
          {
            v41 = v48 - (v46 + v47);
            if ((v41 & 0xFFFF0000) == 0)
            {
              ++v45;
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOWORD(v50) = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (1)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_125;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v50 * a5;
        if ((v57 & 0xFFFF0000) == 0)
        {
          v50 = v57 + (v55 + v56);
          if ((v50 & 0x10000) == 0)
          {
            ++v54;
            if (--v49)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_21B46DC28(uint64_t a1, unint64_t a2)
{
  v2 = sub_21B4C9888();
  v6 = sub_21B46DCA8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21B46DCA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21B4CA1A8();
    if (!v9 || (v10 = v9, v11 = sub_21B36D040(v9, 0), v12 = sub_21B46DE00(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21B4C97A8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21B4C97A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21B4CA3D8();
LABEL_4:

  return sub_21B4C97A8();
}

unint64_t sub_21B46DE00(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21B46E020(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21B4C9838();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21B4CA3D8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21B46E020(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21B4C9808();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21B46E020(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21B4C9848();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEF2F60](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s10PodcastsUI16JSPackageVersionV2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v4 = *(a1 + 6);
    v5 = a1[4];
    v6 = *(a1 + 10);
    v7 = *(a2 + 6);
    v8 = a2[4];
    v9 = *(a2 + 10);
    if (v4 == 7)
    {
      if (v7 != 7)
      {
        return 0;
      }
    }

    else if (v7 == 7 || (sub_21B3FE16C(v4, *(a2 + 6)) & 1) == 0)
    {
      return 0;
    }

    if (v6)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_21B46E160()
{
  result = qword_27CD87F00;
  if (!qword_27CD87F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87F00);
  }

  return result;
}

unint64_t sub_21B46E1FC()
{
  result = qword_27CD87F10;
  if (!qword_27CD87F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87F10);
  }

  return result;
}

unint64_t sub_21B46E254()
{
  result = qword_27CD87F18;
  if (!qword_27CD87F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87F18);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for JSPackageVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 6) = a2 + 7;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSPackageVersion.LetterComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21B46E38C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_21B46E3D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_21B46E448()
{
  result = qword_27CD87FB8;
  if (!qword_27CD87FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87FB8);
  }

  return result;
}

unint64_t sub_21B46E49C()
{
  result = qword_27CD87FC0;
  if (!qword_27CD87FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87FC0);
  }

  return result;
}

uint64_t LazyJSStack.deinit()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI11LazyJSStack_bag;
  v2 = sub_21B4C9208();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LazyJSStack.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI11LazyJSStack_bag;
  v2 = sub_21B4C9208();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t LazyJSStack.dispatcher<A, B>(for:asPartOf:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_21B46E658, 0, 0);
}

uint64_t sub_21B46E658()
{
  v1 = v0[3];
  v2 = v0[2];
  v2[3] = v0[4];
  v2[4] = sub_21B3A5DA8(&qword_2812001A0, type metadata accessor for LazyJSStack, &protocol conformance descriptor for LazyJSStack);
  *v2 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_21B46E714(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21B46E8A4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[25] = v5;
    *v5 = v4;
    v5[1] = sub_21B3AB318;
    v6 = v3[21];
    v7 = v3[6];
    v8 = v3[7];
    v9 = v3[3];
    v10 = v3[4];

    return MEMORY[0x282180628](v9, v10, v6, v7, v8);
  }
}

uint64_t sub_21B46E8A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LazyJSStack.dispatch<A>(intent:jsonContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a4;
  v28 = a1;
  v29 = sub_21B4C85C8();
  v6 = *(v29 - 8);
  v27[2] = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v27 - v13;
  v15 = *(v4 + OBJC_IVAR____TtC10PodcastsUI11LazyJSStack_stack);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87FE0, &qword_21B4D7968);

  v16 = sub_21B4C9438();
  v17 = sub_21B4C9A58();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21B4D7960;
  v18[5] = v15;
  v27[1] = v16;
  v18[6] = v16;

  sub_21B47243C(0, 0, v14, &unk_21B4D7978, v18);

  (*(v8 + 16))(v11, v28, a3);
  v19 = v27[0];
  v20 = v29;
  (*(v6 + 16))(v27[0], v30, v29);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = (v9 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = a3;
  *(v23 + 24) = v24;
  (*(v8 + 32))(v23 + v21, v11, a3);
  (*(v6 + 32))(v23 + v22, v19, v20);
  sub_21B4C93B8();
  swift_getAssociatedTypeWitness();
  sub_21B4C9448();
  swift_getWitnessTable();
  v32[3] = sub_21B4C8B78();
  v32[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v32);
  sub_21B4C8B68();
  v25 = sub_21B4C9408();

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v25;
}

uint64_t sub_21B46ED3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_21B46EDE4;

  return sub_21B389EE4();
}

uint64_t sub_21B46EDE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_21B46EEF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B40AB58;

  return LazyJSStack.dispatcher<A, B>(for:asPartOf:)(a1);
}

uint64_t sub_21B46EF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_21B40AB58;

  return MEMORY[0x28217F4C8](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_21B46F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_21B40AB58;

  return MEMORY[0x28217F4D0](a1, a2, a3, a4, a7, a5, a8, a6);
}

uint64_t sub_21B46F19C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21B46F29C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((v4 + 16));

    v5 = sub_21B46FD24;
  }

  else
  {
    *(v4 + 360) = a1;
    v5 = sub_21B46F494;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B46F3D8()
{
  v1 = *(v0 + 280);

  sub_21B3A1D5C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21B46F494()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[29];
  sub_21B4C9328();
  sub_21B4C9318();

  v4 = *(v3 + 8);
  v0[46] = v4;
  v0[47] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87568, &qword_21B4D4D38);
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_21B46F5B8;

  return MEMORY[0x28217F210](v0 + 12, v5, v5);
}

uint64_t sub_21B46F5B8()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_21B46FDE0;
  }

  else
  {
    v2 = sub_21B46F6CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B46F6CC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 368);
    v2 = *(v0 + 264);
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    sub_21B36D484((v0 + 96), v0 + 56);
    sub_21B4C9338();
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v1(v2, v4);
    (*(v5 + 32))(v2, v3, v4);
  }

  else
  {
    sub_21B3F2D94(v0 + 96, &qword_27CD87FF0, &qword_21B4D7A70);
  }

  if (qword_2811FCF08 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 264);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 224);
  v10 = sub_21B4C94B8();
  *(v0 + 400) = v10;
  *(v0 + 408) = __swift_project_value_buffer(v10, qword_2811FCF10);
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  v11 = *(sub_21B4C85A8() - 8);
  *(v0 + 424) = *(v11 + 72);
  *(v0 + 456) = *(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8538();
  sub_21B4C9288();

  (*(v8 + 16))(v7, v6, v9);
  sub_21B4C93B8();
  swift_allocObject();
  v12 = swift_task_alloc();
  *(v0 + 432) = v12;
  *v12 = v0;
  v12[1] = sub_21B46F968;
  v13 = *(v0 + 240);

  return MEMORY[0x282180610](v13);
}

uint64_t sub_21B46F968(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_21B46FEB4;
  }

  else
  {
    v4 = sub_21B46FA7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21B46FA7C()
{
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C8538();
    sub_21B4C9298();

    sub_21B4C9358();
  }

  v1 = v0[46];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[28];
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8538();
  sub_21B4C9288();

  v1(v3, v4);
  sub_21B3A1D5C(v2);

  v5 = v0[1];
  v6 = v0[55];

  return v5(v6);
}

uint64_t sub_21B46FC74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B46FD24()
{
  v1 = *(v0 + 280);

  sub_21B3A1D5C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21B46FDE0()
{
  v1 = v0[46];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[28];

  v1(v3, v4);
  sub_21B3A1D5C(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21B46FEB4()
{
  v8 = v0[46];
  v9 = v0[35];
  v6 = v0[28];
  v7 = v0[33];
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8578();
  sub_21B4C8568();
  swift_getErrorValue();
  v1 = v0[21];
  v2 = v0[22];
  v0[20] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  sub_21B4C8548();
  sub_21B3F2D94((v0 + 17), &qword_27CD86E70, &qword_21B4D8470);
  sub_21B4C8568();
  sub_21B4C8598();
  sub_21B4C92A8();

  swift_willThrow();

  v8(v7, v6);
  sub_21B3A1D5C(v9);

  v4 = v0[1];

  return v4();
}

uint64_t LazyJSStack.reload(priority:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_21B4C9A58();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = *(v1 + OBJC_IVAR____TtC10PodcastsUI11LazyJSStack_stack);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;

  return sub_21B438370(0, 0, v5, &unk_21B4D7988, v9);
}

uint64_t sub_21B470228()
{
  v1 = *(v0 + 16) + *(**(v0 + 16) + 112);
  if (!*(v1 + 8))
  {
    sub_21B4C93B8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970, &unk_21B4D4B60);
    sub_21B4C9A78();
  }

  *v1 = 0;
  *(v1 + 8) = 2;

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_21B470358;

  return sub_21B389EE4();
}

uint64_t sub_21B470358(uint64_t a1)
{
  v3 = *v2;

  if (!v1)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_21B47045C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4704C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B47052C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B470590()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4705F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B470658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B470708()
{
  (*(v0[28] + 8))(v0[30], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21B4707C8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 176);
  (*(v0 + 304))(*(v0 + 168), *(v0 + 144));
  (*(v6 + 8))(v5, v7);
  sub_21B3A1D5C(v4);
  (*(v3 + 8))(v1, v2);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21B4708D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4709D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B470AE0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21B470C0C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21B470D40()
{
  v1 = v0[283];
  v2 = v0[277];

  swift_asyncLet_begin();
  v3 = swift_allocObject();
  v0[331] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  swift_asyncLet_begin();
  v4 = swift_allocObject();
  v0[337] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  swift_asyncLet_begin();
  if (qword_2811FCF08 != -1)
  {
    swift_once();
  }

  v5 = sub_21B4C94B8();
  __swift_project_value_buffer(v5, qword_2811FCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  sub_21B4C85A8();
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8538();
  sub_21B4C9298();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87FF8, &qword_21B4D7AA8);
  inited = swift_initStackObject();
  v0[343] = inited;
  *(inited + 16) = xmmword_21B4D42A0;
  *(inited + 32) = 6775138;
  *(inited + 40) = 0xE300000000000000;
  v7 = v0[325];

  return MEMORY[0x282200930](v0 + 2, v7, sub_21B471008, v0 + 242);
}

uint64_t sub_21B471008()
{
  *(v1 + 2792) = v0;
  if (v0)
  {
    v2 = sub_21B471394;
  }

  else
  {
    v2 = sub_21B47103C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B47103C()
{
  v1 = v0[343];
  v2 = v0[325];
  v3 = v0[319];
  v4 = v0[313];
  v5 = MEMORY[0x277D22380];
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 48));
  (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
  strcpy((v1 + 88), "anonymousNet");
  *(v1 + 101) = 0;
  *(v1 + 102) = -5120;
  v7 = v0[307];

  return MEMORY[0x282200930](v0 + 82, v7, sub_21B471104, v0 + 290);
}

uint64_t sub_21B471104()
{
  *(v1 + 2840) = v0;
  if (v0)
  {
    v2 = sub_21B471574;
  }

  else
  {
    v2 = sub_21B3A5B4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B471138()
{
  *(v1 + 2864) = v0;
  if (v0)
  {
    v2 = sub_21B471774;
  }

  else
  {
    v2 = sub_21B47116C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B47116C()
{
  v1 = v0[356];
  v2 = v0[343];
  v3 = v0[301];
  v4 = v0[289];
  v5 = MEMORY[0x277D22388];
  v2[23] = v4;
  v2[24] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 20);
  v1(boxed_opaque_existential_1, v3, v4);
  v0[359] = sub_21B3A69E8(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88000, &qword_21B4D3700);
  swift_arrayDestroy();
  v7 = v0[301];

  return MEMORY[0x282200920](v0 + 162, v7, sub_21B47124C, v0 + 338);
}

uint64_t sub_21B4712E0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 2872);

  return v1(v2);
}

uint64_t sub_21B471394()
{

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88000, &qword_21B4D3700);
  swift_arrayDestroy();
  v1 = *(v0 + 2408);

  return MEMORY[0x282200920](v0 + 1296, v1, sub_21B471430, v0 + 2176);
}

uint64_t sub_21B4714C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B471574()
{
  v1 = *(v0 + 2744);

  sub_21B3F2D94(v1 + 32, &unk_27CD88000, &qword_21B4D3700);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88000, &qword_21B4D3700);
  swift_arrayDestroy();
  v2 = *(v0 + 2408);

  return MEMORY[0x282200920](v0 + 1296, v2, sub_21B471630, v0 + 2368);
}

uint64_t sub_21B4716C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B471774()
{
  v1 = *(v0 + 2744);

  sub_21B3F2D94(v1 + 88, &unk_27CD88000, &qword_21B4D3700);
  sub_21B3F2D94(v1 + 32, &unk_27CD88000, &qword_21B4D3700);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88000, &qword_21B4D3700);
  swift_arrayDestroy();
  v2 = *(v0 + 2408);

  return MEMORY[0x282200920](v0 + 1296, v2, sub_21B471840, v0 + 2560);
}

uint64_t sub_21B4718D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B471984(uint64_t a1)
{
  v3 = sub_21B4C9208();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21B40998C;

  return MEMORY[0x28217F228](a1, v3, v3);
}

uint64_t sub_21B471A40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B3A1DB8(a1, a2, 1);
}

uint64_t sub_21B471AF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B3A1DB8(a1, a2, 0);
}

uint64_t sub_21B471BA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21B3F821C(a1, v8);
  v3 = type metadata accessor for JSLocalizerObject();
  v4 = objc_allocWithZone(v3);
  sub_21B3F821C(v8, v4 + OBJC_IVAR____TtC10PodcastsUI17JSLocalizerObject_localizer);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v8);
  a2[3] = v3;
  result = sub_21B3A5DA8(&unk_2811FF910, type metadata accessor for JSLocalizerObject, &unk_21B4D6904);
  a2[4] = result;
  *a2 = v5;
  return result;
}

uint64_t sub_21B471CA8@<X0>(void *a2@<X8>)
{

  v4 = sub_21B3A5EA8(v3);
  a2[3] = _s14descr282CB18D9V14JSClientObjectCMa();
  result = sub_21B3A5DA8(&qword_2811FD940, _s14descr282CB18D9V14JSClientObjectCMa, &unk_21B4D6970);
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_21B471D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21B4C9208();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_21B3A5FB0();
  v11 = v10;
  v12 = _s14descr282CB18D9V17JSLocalizerObjectCMa(0);
  v13 = objc_allocWithZone(v12);
  v14 = sub_21B3A6454(v9, v11);
  (*(v5 + 8))(v8, v4);
  a2[3] = v12;
  result = sub_21B3A5DA8(&qword_2811FD918, _s14descr282CB18D9V17JSLocalizerObjectCMa, &unk_21B4D69E0);
  a2[4] = result;
  *a2 = v14;
  return result;
}

uint64_t sub_21B471ECC@<X0>(uint64_t (*a1)(void)@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = a1(0);
  v10 = [objc_allocWithZone(v9) init];
  a5[3] = v9;
  result = sub_21B3A5DA8(a2, a3, a4);
  a5[4] = result;
  *a5 = v10;
  return result;
}

uint64_t sub_21B471F4C@<X0>(void *a2@<X8>)
{

  v4 = sub_21B3A68D8(v3);
  a2[3] = _s14descr282CB18D9V12JSUserObjectCMa();
  result = sub_21B3A5DA8(&unk_2811FD948, _s14descr282CB18D9V12JSUserObjectCMa, &unk_21B4D6AC0);
  a2[4] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_21B471FC0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_21B4722B8;
  }

  else
  {
    v4 = sub_21B472218;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21B4720EC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_21B4723CC;
  }

  else
  {
    v4 = sub_21B472358;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21B472218()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v2 + v1;
  v4 = v0[3];
  *v3 = v4;
  *(v3 + 8) = 1;

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_21B4722B8()
{
  v1 = v0[4] + v0[6];
  *v1 = 0;
  *(v1 + 8) = 2;

  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21B472358()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21B4723CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B47243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21B389F80(a3, v23 - v10);
  v12 = sub_21B4C9A58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21B3F2D94(v11, &qword_27CD86EE0, &qword_21B4D5680);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21B4C9A48();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21B4C99C8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21B4C9778() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21B3F2D94(a3, &qword_27CD86EE0, &qword_21B4D5680);

    return v21;
  }

LABEL_8:
  sub_21B3F2D94(a3, &qword_27CD86EE0, &qword_21B4D5680);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_21B472728(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_21B47281C;

  return v9(v6 + 16);
}

uint64_t sub_21B47281C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_21B47299C;
  }

  else
  {
    v2 = sub_21B472930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B472930()
{
  sub_21B4C9418();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B47299C()
{
  v1 = *(v0 + 40);
  sub_21B4C93F8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21B472A0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_21B4C8B98();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_21B441888;

  return v12(v9);
}

uint64_t sub_21B472B6C()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_21B472C78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B40AB58;

  return sub_21B46ED3C(a1);
}

uint64_t sub_21B472D14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21B40998C;

  return sub_21B472728(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21B472DF0()
{
  sub_21B4C85C8();
  sub_21B4C93B8();
  return sub_21B4C88D8();
}

uint64_t sub_21B472EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B40AB58;

  return sub_21B470208(a1, v4, v5, v6);
}

uint64_t sub_21B472FBC(uint64_t a1)
{
  v1[40] = a1;
  v2 = sub_21B4C9208();
  v1[41] = v2;
  v3 = *(v2 - 8);
  v1[42] = v3;
  v1[43] = *(v3 + 64);
  v1[44] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[45] = v4;
  v5 = swift_task_alloc();
  v1[46] = v5;
  *v5 = v1;
  v5[1] = sub_21B4730E4;

  return MEMORY[0x28217F228](v4, v2, v2);
}

uint64_t sub_21B4730E4()
{
  v2 = *v1;
  *(v2 + 376) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B473798, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88010, &qword_21B4D7AB8);
    v4 = swift_task_alloc();
    *(v2 + 384) = v4;
    *v4 = v2;
    v4[1] = sub_21B473288;

    return MEMORY[0x28217F228](v2 + 240, v3, v3);
  }
}

uint64_t sub_21B473288()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_21B473804;
  }

  else
  {
    v2 = sub_21B47339C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B47339C()
{
  if (qword_2811FCF08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = sub_21B4C94B8();
  __swift_project_value_buffer(v6, qword_2811FCF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  sub_21B4C85A8();
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8538();
  sub_21B4C9298();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88018, &qword_21B4D7AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B4D7900;
  sub_21B3F821C(v0 + 240, v0 + 280);
  v8 = swift_allocObject();
  sub_21B36D484((v0 + 280), v8 + 16);
  *(inited + 32) = 0x657A696C61636F6CLL;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = sub_21B473A7C;
  *(inited + 56) = v8;
  *(inited + 64) = 0x6E6F697461727564;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = sub_21B471C60;
  *(inited + 88) = 0;
  *(inited + 96) = 0x746E65696C635FLL;
  *(inited + 104) = 0xE700000000000000;
  *(inited + 112) = sub_21B473A84;
  *(inited + 120) = v5;
  (*(v3 + 16))(v1, v2, v4);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v1, v4);
  *(inited + 128) = 0x7A696C61636F6C5FLL;
  *(inited + 136) = 0xEA00000000007265;
  *(inited + 144) = sub_21B473A8C;
  *(inited + 152) = v10;
  *(inited + 160) = 0x747265706F72705FLL;
  *(inited + 168) = 0xEB00000000736569;
  *(inited + 176) = sub_21B471E84;
  *(inited + 184) = 0;
  *(inited + 192) = 0x726573755FLL;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 208) = sub_21B473AFC;
  *(inited + 216) = v5;
  swift_retain_n();
  v11 = sub_21B40D69C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD88020, &qword_21B4D7AC8);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1((v0 + 240));
  (*(v3 + 8))(v2, v4);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_21B473798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B473804()
{
  (*(v0[42] + 8))(v0[45], v0[41]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21B473888(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B40998C;

  return sub_21B471984(a1);
}

uint64_t sub_21B473924(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B471A40(a1, v4);
}

uint64_t sub_21B4739D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B471AF0(a1, v4);
}

uint64_t sub_21B473A8C@<X0>(void *a1@<X8>)
{
  v3 = *(sub_21B4C9208() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21B471D1C(v4, a1);
}

uint64_t ModalSheet.Action.__allocating_init(title:type:handler:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  v11 = *a3;
  *(result + 40) = a1;
  *(result + 48) = a2;
  *(result + 16) = v11;
  *(result + 24) = a4;
  *(result + 32) = a5;
  return result;
}

id ModalSheetWrapper.__allocating_init(contentViewController:actions:height:)(uint64_t a1, unint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_minWidth] = 0x407C200000000000;
  *&v7[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_maxSize] = 0x4085E00000000000;
  *&v7[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView] = 0;
  *&v7[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_contentViewController] = a1;
  *&v7[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_height] = a3;
  return ModalSheet.init(actions:)(a2);
}

PodcastsUI::ModalSheet::Action::ActionType_optional __swiftcall ModalSheet.Action.ActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ModalSheet.Action.init(title:type:handler:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a3;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 16) = v6;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return v5;
}

uint64_t *ModalSheet.Action.deinit()
{
  sub_21B36F6F4(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t ModalSheet.Action.__deallocating_deinit()
{
  sub_21B36F6F4(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

id ModalSheet.init(actions:)(unint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10PodcastsUI10ModalSheet_standardEdgeSpacing] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC10PodcastsUI10ModalSheet_standardControlSpacing] = 0x4020000000000000;
  v3 = OBJC_IVAR____TtC10PodcastsUI10ModalSheet_buttonToAction;
  *&v1[v3] = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  *&v1[OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide] = 0;
  *&v1[OBJC_IVAR____TtC10PodcastsUI10ModalSheet_actions] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ModalSheet();

  v4 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = v4;
    sub_21B4CA338();
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88100, &unk_21B4D7B00);
    sub_21B4C9758();

    MEMORY[0x21CEF2F30](0xD00000000000001ALL, 0x800000021B4E1580);
    result = sub_21B4CA488();
    __break(1u);
    goto LABEL_7;
  }

  v9 = v4;
  v10 = sub_21B4CA4B8();
  v4 = v9;
  if (v10 < 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v4;
  result = [v5 view];
  if (result)
  {
    v7 = result;

    v8 = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor_];

    [v5 setModalPresentationStyle_];
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

id ModalSheet.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_21B474040()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide;
  v2 = *&v0[OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide];
  }

  else
  {
    v4 = sub_21B4740A4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21B4740A4(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result addLayoutGuide_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158, &qword_21B4DC310);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21B4D64C0;
  v6 = [v2 leadingAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  v8 = [result leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:20.0];
  *(v5 + 32) = v9;
  v10 = [v2 trailingAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v12 = [result trailingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-20.0];
  *(v5 + 40) = v13;
  v14 = [v2 topAnchor];
  result = [a1 view];
  if (result)
  {
    v15 = result;
    v16 = objc_opt_self();
    v17 = [v15 topAnchor];

    v18 = [v14 constraintEqualToAnchor:v17 constant:20.0];
    *(v5 + 48) = v18;
    sub_21B3F12CC(0, &qword_2811FCCB8, 0x277CCAAD0);
    v19 = sub_21B4C9918();

    [v16 activateConstraints_];

    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21B47434C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide);
  *(v1 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide) = a1;
  return MEMORY[0x2821F96F8](a1, v2);
}

void (*sub_21B474360(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_21B474040();
  return sub_21B4743A8;
}

void sub_21B4743A8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide);
  *(v1 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide) = v2;
}

void sub_21B4743C0()
{
  v2 = v0;
  v41.receiver = v0;
  v41.super_class = type metadata accessor for ModalSheet();
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v40 = MEMORY[0x277D84F90];
  v3 = &selRef_sendItemEndedNotification;
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 trailingAnchor];

    v39 = sub_21B4765E8(v7);
    sub_21B475924(&v39);
    v8 = v39;
    if (v39 < 0 || (v39 & 0x4000000000000000) != 0)
    {
LABEL_23:
      v1 = sub_21B4CA4B8();
      if (v1)
      {
LABEL_5:
        v9 = 0;
        v33 = OBJC_IVAR____TtC10PodcastsUI10ModalSheet_buttonToAction;
        v34 = v1;
        v35 = v8;
        v36 = v8 & 0xC000000000000001;
        v10 = -20.0;
        while (1)
        {
          if (v36)
          {
            v11 = MEMORY[0x21CEF3AB0](v9, v8);
            v12 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
              goto LABEL_21;
            }
          }

          else
          {
            if (v9 >= *(v8 + 16))
            {
              goto LABEL_22;
            }

            v11 = *(v8 + 8 * v9 + 32);

            v12 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
LABEL_21:
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }
          }

          v37 = v12;
          v38 = v6;
          v13 = [objc_opt_self() buttonWithType_];
          [v13 setTranslatesAutoresizingMaskIntoConstraints_];

          v14 = sub_21B4C96C8();

          [v13 setTitle:v14 forState:0];

          [v13 addTarget:v2 action:sel_handleButton_ forControlEvents:64];
          [v13 sizeToFit];
          v15 = v3;
          v16 = [v2 v3[403]];
          if (!v16)
          {
            break;
          }

          v17 = v16;
          [v16 addSubview_];

          v18 = [v13 topAnchor];
          v19 = sub_21B474040();
          v1 = &off_2782BF000;
          v20 = v2;
          v21 = [v19 bottomAnchor];

          v22 = [v18 constraintEqualToAnchor:v21 constant:20.0];
          MEMORY[0x21CEF3050]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21B4C9948();
          }

          sub_21B4C9988();
          v23 = [v13 bottomAnchor];
          v3 = v15;
          v24 = [v20 v15 + 2808];
          if (!v24)
          {
            goto LABEL_26;
          }

          v25 = v24;
          v26 = [v24 bottomAnchor];

          v27 = [v23 constraintEqualToAnchor:v26 constant:-20.0];
          MEMORY[0x21CEF3050]();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21B4C9948();
          }

          sub_21B4C9988();
          v28 = [v13 trailingAnchor];
          v29 = [v28 constraintEqualToAnchor:v38 constant:v10];

          MEMORY[0x21CEF3050]();
          v2 = v20;
          v1 = v34;
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21B4C9948();
            v2 = v20;
          }

          sub_21B4C9988();
          v30 = [v13 leadingAnchor];

          [*&v2[v33] setObject:v11 forKey:v13];

          ++v9;
          v10 = -8.0;
          v6 = v30;
          v8 = v35;
          if (v37 == v34)
          {
            v6 = v30;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      v1 = *(v39 + 16);
      if (v1)
      {
        goto LABEL_5;
      }
    }

LABEL_24:

    v31 = objc_opt_self();
    sub_21B3F12CC(0, &qword_2811FCCB8, 0x277CCAAD0);
    v32 = sub_21B4C9918();

    [v31 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);

  __break(1u);
}

void sub_21B4749A0(uint64_t a1)
{
  sub_21B476F48(a1, v6);
  if (v7)
  {
    sub_21B3F12CC(0, &qword_27CD88110, 0x277D75220);
    if (swift_dynamicCast())
    {
      v2 = [*&v1[OBJC_IVAR____TtC10PodcastsUI10ModalSheet_buttonToAction] objectForKey_];
      if (v2)
      {
        if (v2[16] == 2)
        {
          v3 = v2;
          [v1 dismissViewControllerAnimated:1 completion:0];
          v2 = v3;
        }

        v4 = *(v2 + 3);
        if (v4)
        {
          v4(v1);
        }
      }
    }
  }

  else
  {
    sub_21B3F9F3C(v6);
  }
}

BOOL sub_21B474B18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  v5 = *(*a2 + 16);
  if (v4 != v5)
  {
    return v4 < v5;
  }

  if (*(v2 + 40) == *(v3 + 40) && *(v2 + 48) == *(v3 + 48))
  {
    return 0;
  }

  else
  {
    return sub_21B4CA608() & 1;
  }
}

id ModalSheet.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21B4C96C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ModalSheetWrapper.init(contentViewController:actions:height:)(uint64_t a1, unint64_t a2, double a3)
{
  *(v3 + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_minWidth) = 0x407C200000000000;
  *(v3 + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_maxSize) = 0x4085E00000000000;
  *(v3 + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView) = 0;
  *(v3 + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_contentViewController) = a1;
  *(v3 + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_height) = a3;
  return ModalSheet.init(actions:)(a2);
}

void sub_21B474D24()
{
  v1 = *&v0[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_height];
  v2 = type metadata accessor for SheetView();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC10PodcastsUI9SheetView_sizeRestrictions];
  *v4 = 0x407C200000000000;
  *(v4 + 1) = v1;
  *(v4 + 2) = 0x4085E00000000000;
  *(v4 + 3) = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  v5 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v0 setView_];
}

void sub_21B474F38()
{
  v44.receiver = v0;
  v44.super_class = type metadata accessor for ModalSheetWrapper();
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_contentViewController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v4 = [v1 view];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  [v0 addChildViewController_];
  v6 = [v0 view];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  [v6 addSubview_];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = sub_21B475488();
  [v9 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158, &qword_21B4DC310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B4D64C0;
  v12 = OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView;
  v13 = [*&v0[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView] widthAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  v16 = [v14 widthAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(inited + 32) = v17;
  v18 = [*&v0[v12] topAnchor];
  v19 = sub_21B474040();
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:-1.0];
  *(inited + 40) = v21;
  v22 = [*&v0[v12] heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(inited + 48) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21B4D64B0;
  v25 = [v5 leadingAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v24 + 32) = v29;
  v30 = [v5 trailingAnchor];
  v31 = [v0 view];
  if (!v31)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v24 + 40) = v34;
  v35 = [v5 topAnchor];
  v36 = OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide;
  v37 = [*&v0[OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide] topAnchor];
  v38 = [v35 constraintEqualToAnchor_];

  *(v24 + 48) = v38;
  v39 = [v5 bottomAnchor];
  v40 = [*&v0[v36] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v24 + 56) = v41;
  v42 = objc_opt_self();
  sub_21B4764F0(inited, sub_21B476808);
  sub_21B3F12CC(0, &qword_2811FCCB8, 0x277CCAAD0);
  v43 = sub_21B4C9918();

  [v42 activateConstraints_];
}

id sub_21B475488()
{
  v1 = OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_21B47554C(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ModalSheetWrapper();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden:1 animated:0];
  }
}

void sub_21B475690()
{
  v1 = *(v0 + OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView);
}

id sub_21B4756E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_21B47576C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AE0, &qword_21B4D56B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_21B4757FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158, &qword_21B4DC310);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_21B475884(uint64_t a1, char a2)
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

  sub_21B4CA4B8();
LABEL_9:
  result = sub_21B4CA378();
  *v2 = result;
  return result;
}

uint64_t sub_21B475924(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21B4A95CC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21B4759A0(v6);
  return sub_21B4CA3F8();
}

void sub_21B4759A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21B4CA578();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ModalSheet.Action();
        v6 = sub_21B4C9968();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21B475B78(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_21B475AA0(0, v2, 1, a1);
  }
}

uint64_t sub_21B475AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *v11;
      v13 = *(v9 + 16);
      v14 = *(*v11 + 16);
      if (v13 == v14)
      {
        result = *(v9 + 40);
        v15 = result == *(v12 + 40) && *(v9 + 48) == *(v12 + 48);
        if (v15 || (result = sub_21B4CA608(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 8;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v13 >= v14)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v16 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v16;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_21B475B78(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_136:
      v8 = sub_21B4A95A4(v8);
    }

    v94 = v8;
    v84 = *(v8 + 2);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = *&v8[16 * v84];
        v86 = *&v8[16 * v84 + 24];
        sub_21B47617C((*a3 + 8 * v85), (*a3 + 8 * *&v8[16 * v84 + 16]), (*a3 + 8 * v86), v5);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v86 < v85)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21B4A95A4(v8);
        }

        if (v84 - 2 >= *(v8 + 2))
        {
          goto LABEL_130;
        }

        v87 = &v8[16 * v84];
        *v87 = v85;
        *(v87 + 1) = v86;
        v94 = v8;
        sub_21B4A9518(v84 - 1);
        v8 = v94;
        v84 = *(v94 + 2);
        if (v84 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_140;
    }

LABEL_114:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      v11 = *(*a3 + 8 * v7);
      v92 = *(*a3 + 8 * v9);
      v93 = v11;
      v12 = sub_21B474B18(&v93, &v92);
      if (v4)
      {
        goto LABEL_114;
      }

      v13 = v12;
      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v5 = v10 + 8 * v9 + 16;
        do
        {
          v14 = *(v5 - 8);
          v15 = *v5;
          v16 = *(*v5 + 16);
          v17 = *(v14 + 16);
          if (v16 == v17)
          {
            if (*(v15 + 40) == *(v14 + 40) && *(v15 + 48) == *(v14 + 48))
            {
              if (v13)
              {
                goto LABEL_21;
              }
            }

            else if ((v13 ^ sub_21B4CA608()))
            {
              goto LABEL_18;
            }
          }

          else if ((v13 ^ (v16 < v17)))
          {
            goto LABEL_18;
          }

          ++v7;
          v5 += 8;
        }

        while (v6 != v7);
        v7 = v6;
        if (!v13)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_133;
        }

        if (v9 < v7)
        {
          v19 = 8 * v7 - 8;
          v20 = 8 * v9;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v24 = *(v23 + v20);
              *(v23 + v20) = *(v23 + v19);
              *(v23 + v19) = v24;
            }

            ++v22;
            v19 -= 8;
            v20 += 8;
          }

          while (v22 < v21);
        }

        goto LABEL_28;
      }

LABEL_18:
      if (v13)
      {
        goto LABEL_21;
      }
    }

LABEL_28:
    v25 = a3[1];
    if (v7 < v25)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_134;
        }

        if (v9 + a4 >= v25)
        {
          v26 = a3[1];
        }

        else
        {
          v26 = v9 + a4;
        }

        if (v26 < v9)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v7 != v26)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_21B3F21F0(0, *(v8 + 2) + 1, 1, v8);
    }

    v39 = *(v8 + 2);
    v38 = *(v8 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v8 = sub_21B3F21F0((v38 > 1), v39 + 1, 1, v8);
    }

    *(v8 + 2) = v40;
    v41 = &v8[16 * v39];
    *(v41 + 4) = v9;
    *(v41 + 5) = v7;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v8 + 4);
          v45 = *(v8 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_73:
          if (v47)
          {
            goto LABEL_120;
          }

          v60 = &v8[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_123;
          }

          v66 = &v8[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_127;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v70 = &v8[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_87:
        if (v65)
        {
          goto LABEL_122;
        }

        v73 = &v8[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_94:
        v5 = v43 - 1;
        if (v43 - 1 >= v40)
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v81 = *&v8[16 * v5 + 32];
        v82 = *&v8[16 * v43 + 40];
        sub_21B47617C((*a3 + 8 * v81), (*a3 + 8 * *&v8[16 * v43 + 32]), (*a3 + 8 * v82), v42);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v82 < v81)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21B4A95A4(v8);
        }

        if (v5 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v83 = &v8[16 * v5];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        v94 = v8;
        sub_21B4A9518(v43);
        v8 = v94;
        v40 = *(v94 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v8[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_118;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_119;
      }

      v55 = &v8[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_121;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_124;
      }

      if (v59 >= v51)
      {
        v77 = &v8[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_128;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v27 = *a3;
  v28 = *a3 + 8 * v7 - 8;
  v88 = v9;
  v29 = (v9 - v7);
LABEL_39:
  v30 = *(v27 + 8 * v7);
  v5 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *v31;
    v33 = *(v30 + 16);
    v34 = *(*v31 + 16);
    if (v33 == v34)
    {
      v35 = *(v30 + 40) == *(v32 + 40) && *(v30 + 48) == *(v32 + 48);
      if (v35 || (sub_21B4CA608() & 1) == 0)
      {
LABEL_38:
        ++v7;
        v28 += 8;
        --v29;
        if (v7 != v26)
        {
          goto LABEL_39;
        }

        v7 = v26;
        v9 = v88;
        goto LABEL_53;
      }
    }

    else if (v33 >= v34)
    {
      goto LABEL_38;
    }

    if (!v27)
    {
      break;
    }

    v36 = *v31;
    v30 = v31[1];
    *v31 = v30;
    v31[1] = v36;
    --v31;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_21B47617C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_49;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      v18 = *(*v6 + 16);
      v19 = *(*v4 + 16);
      if (v18 == v19)
      {
        v20 = *(v16 + 40) == *(v17 + 40) && *(v16 + 48) == *(v17 + 48);
        if (!v20 && (sub_21B4CA608() & 1) != 0)
        {
LABEL_23:
          v15 = v6;
          v20 = v7 == v6;
          v6 += 8;
          if (v20)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v7 = *v15;
          goto LABEL_13;
        }
      }

      else if (v18 < v19)
      {
        goto LABEL_23;
      }

      v15 = v4;
      v20 = v7 == v4;
      v4 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_31:
    v21 = v6 - 8;
    v5 -= 8;
    v22 = v14;
    do
    {
      v24 = *(v22 - 1);
      v22 -= 8;
      v23 = v24;
      v25 = *v21;
      v26 = *(v24 + 16);
      v27 = *(*v21 + 16);
      if (v26 == v27)
      {
        v28 = *(v23 + 40) == *(v25 + 40) && *(v23 + 48) == *(v25 + 48);
        if (!v28 && (sub_21B4CA608() & 1) != 0)
        {
LABEL_43:
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_49;
          }

          goto LABEL_31;
        }
      }

      else if (v26 < v27)
      {
        goto LABEL_43;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v22;
      }

      v5 -= 8;
      v14 = v22;
    }

    while (v22 > v4);
    v14 = v22;
  }

LABEL_49:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void sub_21B4763E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_21B3F2758(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_21B4764F0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_21B4CA4B8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    v8 = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_21B4CA4B8();
  v7 = __OFADD__(v15, v5);
  v8 = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21B475884(v8, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void *sub_21B4765E8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_21B4CA4B8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21B4757FC(v3, 0);
  sub_21B47667C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21B47667C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21B4CA4B8();
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
      result = sub_21B4CA4B8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B476FB8(&qword_27CD88140, &qword_27CD88138, &unk_21B4D7C70);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88138, &unk_21B4D7C70);
            v9 = sub_21B459CB4(v13, i, a3);
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
        type metadata accessor for ModalSheet.Action();
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

uint64_t sub_21B476808(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21B4CA4B8();
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
      result = sub_21B4CA4B8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B476FB8(&qword_27CD88130, &qword_27CD88128, &qword_21B4D7C68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88128, &qword_21B4D7C68);
            v9 = sub_21B459D3C(v13, i, a3);
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
        sub_21B3F12CC(0, &qword_2811FCCB8, 0x277CCAAD0);
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

uint64_t sub_21B4769A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21B4CA4B8();
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
      result = sub_21B4CA4B8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21B476FB8(&qword_27CD88120, &qword_27CD88118, &qword_21B4D7C60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88118, &qword_21B4D7C60);
            v9 = sub_21B459B68(v13, i, a3);
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
        sub_21B3F12CC(0, &unk_2811FCD10, 0x277D75D28);
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

id _s10PodcastsUI10ModalSheetC25presentableViewController_6heightSo06UIViewG0CAG_12CoreGraphics7CGFloatVtFZ_0(void *a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158, &qword_21B4DC310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B4D3B00;
  v5 = sub_21B4C6778();
  v7 = v6;
  type metadata accessor for ModalSheet.Action();
  v8 = swift_allocObject();
  *(v8 + 40) = v5;
  *(v8 + 48) = v7;
  *(v8 + 16) = 0;
  *(v8 + 24) = sub_21B473C58;
  *(v8 + 32) = 0;
  *(v4 + 32) = v8;
  v9 = objc_allocWithZone(type metadata accessor for ModalSheetWrapper());
  *&v9[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_minWidth] = 0x407C200000000000;
  *&v9[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_maxSize] = 0x4085E00000000000;
  *&v9[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper____lazy_storage___separatorView] = 0;
  *&v9[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_contentViewController] = a1;
  *&v9[OBJC_IVAR____TtC10PodcastsUI17ModalSheetWrapper_height] = a2;
  v10 = a1;
  return ModalSheet.init(actions:)(v4);
}

void _s10PodcastsUI10ModalSheetC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet_standardEdgeSpacing) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet_standardControlSpacing) = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC10PodcastsUI10ModalSheet_buttonToAction;
  *(v0 + v1) = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:5];
  *(v0 + OBJC_IVAR____TtC10PodcastsUI10ModalSheet____lazy_storage___marginGuide) = 0;
  sub_21B4CA488();
  __break(1u);
}

unint64_t sub_21B476D6C()
{
  result = qword_27CD88108;
  if (!qword_27CD88108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88108);
  }

  return result;
}

uint64_t sub_21B476F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E70, &qword_21B4D8470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B476FB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id SheetView.__allocating_init(frame:sizeRestrictions:)(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC10PodcastsUI9SheetView_sizeRestrictions];
  v13 = a1[1];
  *v12 = *a1;
  *(v12 + 1) = v13;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
}

id SheetView.init(frame:sizeRestrictions:)(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  v10 = a1[1];
  v11 = &v5[OBJC_IVAR____TtC10PodcastsUI9SheetView_sizeRestrictions];
  *v11 = *a1;
  *(v11 + 1) = v10;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for SheetView();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

void sub_21B47719C(void *a1)
{
  if (!a1)
  {
    return;
  }

  v13 = a1;
  v2 = [v13 windowScene];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 delegate];

    if (v5)
    {
      if ([v5 respondsToSelector_])
      {
        v6 = [v5 window];
        swift_unknownObjectRelease();
        if (v6)
        {

          if (v6 == v13)
          {
LABEL_14:

            goto LABEL_15;
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    [v13 setCanResizeToFitContent_];
    v7 = [v3 sizeRestrictions];
    if (v7)
    {
      v8 = v7;
      [v7 setMinimumSize_];
    }

    v9 = [v3 sizeRestrictions];
    if (v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtC10PodcastsUI9SheetView_sizeRestrictions + 16);
      v11 = *(v1 + OBJC_IVAR____TtC10PodcastsUI9SheetView_sizeRestrictions + 24);
      v12 = v9;
      [v9 setMaximumSize_];
    }

    goto LABEL_14;
  }

LABEL_15:
}

id SheetView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SheetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SheetView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

PodcastsUI::WindowSizeRestrictions __swiftcall WindowSizeRestrictions.init(minSize:maxSize:)(CGSize minSize, CGSize maxSize)
{
  *v2 = minSize.width;
  v2[1] = minSize.height;
  v2[2] = maxSize.width;
  v2[3] = maxSize.height;
  result.maxSize.height = maxSize.height;
  result.maxSize.width = maxSize.width;
  result.minSize.height = minSize.height;
  result.minSize.width = minSize.width;
  return result;
}

PodcastsUI::WindowSizeRestrictions __swiftcall WindowSizeRestrictions.init(fixedSize:)(CGSize fixedSize)
{
  *v1 = fixedSize.width;
  v1[1] = fixedSize.height;
  v1[2] = fixedSize.width;
  v1[3] = fixedSize.height;
  result.minSize.height = fixedSize.height;
  result.minSize.width = fixedSize.width;
  return result;
}

uint64_t View.restrictWindowToSize(_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B4C81D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88150, qword_21B4D7CF0);
  sub_21B4775BC();
  return sub_21B4C7F98();
}

unint64_t sub_21B4775BC()
{
  result = qword_27CD88158;
  if (!qword_27CD88158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88150, qword_21B4D7CF0);
    sub_21B477648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88158);
  }

  return result;
}

unint64_t sub_21B477648()
{
  result = qword_27CD88160;
  if (!qword_27CD88160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88160);
  }

  return result;
}

unint64_t sub_21B47769C()
{
  result = qword_27CD88170;
  if (!qword_27CD88170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD88168, &qword_21B4D7D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88170);
  }

  return result;
}

id sub_21B477714()
{
  v1 = type metadata accessor for SheetView();
  v5 = v0[1];
  v6 = *v0;
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtC10PodcastsUI9SheetView_sizeRestrictions];
  *v3 = v6;
  *(v3 + 1) = v5;
  v7.receiver = v2;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_21B4777EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4778DC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21B477850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4778DC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21B4778B4(uint64_t a1)
{
  sub_21B4778DC();
  sub_21B4C7D08();
  __break(1u);
}

unint64_t sub_21B4778DC()
{
  result = qword_27CD88178;
  if (!qword_27CD88178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88178);
  }

  return result;
}

uint64_t ActionMetricsBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

unint64_t sub_21B4779F4()
{
  result = qword_27CD88180;
  if (!qword_27CD88180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88180);
  }

  return result;
}

void __swiftcall ClickLocationElement.withParentUniqueID(_:)(PodcastsUI::ClickLocationElement *__return_ptr retstr, Swift::String_optional a2)
{
  object = a2.value._object;
  countAndFlagsBits = a2.value._countAndFlagsBits;
  v6 = v2[1];
  v10[0] = *v2;
  v10[1] = v6;
  v8 = v2[3];
  v11 = v2[2];
  v7 = v11;
  v12 = v8;
  retstr->id = v10[0];
  retstr->_uniqueID = v6;
  retstr->parentUniqueID = v7;
  *&retstr->position = v8;
  sub_21B39E5DC(v10, &v9);

  retstr->parentUniqueID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->parentUniqueID.value._object = object;
}

uint64_t ClickLocationElement.uniqueID.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = *v0;
  }

  return v1;
}

void __swiftcall ClickLocationElement.withPosition(_:)(PodcastsUI::ClickLocationElement *__return_ptr retstr, Swift::Int a2)
{
  v3 = v2[1];
  v7[0] = *v2;
  v7[1] = v3;
  v5 = v2[3];
  v8 = v2[2];
  v4 = v8;
  v9 = v5;
  retstr->id = v7[0];
  retstr->_uniqueID = v3;
  retstr->parentUniqueID = v4;
  *&retstr->position = v5;
  retstr->position = a2;
  sub_21B39E5DC(v7, &v6);
}

uint64_t ClickLocationElement.id.getter()
{
  v1 = *v0;

  return v1;
}

void ClickLocationElement.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void ClickLocationElement._uniqueID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ClickLocationElement.parentUniqueID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void ClickLocationElement.parentUniqueID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

double sub_21B477D38@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t ClickLocationElement.init(impressionMetrics:uniqueID:parentUniqueID:position:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a4;
  v36 = a2;
  v12 = sub_21B4C8B08();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88188, &unk_21B4D7F00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_21B4C8B58();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B47800C(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_21B3F2D94(a1, &qword_27CD88188, &unk_21B4D7F00);

    result = sub_21B3F2D94(v17, &qword_27CD88188, &unk_21B4D7F00);
    *a7 = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *(a7 + 48) = 0u;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_21B4C8B28();
    v23 = sub_21B4C8AF8();
    v31 = a6;
    v32 = a1;
    v24 = a5;
    v25 = v23;
    v26 = a3;
    v28 = v27;
    (*(v33 + 8))(v14, v34);
    v29 = sub_21B4C8A98();
    *a7 = v25;
    *(a7 + 8) = v28;
    v30 = v36;
    *(a7 + 32) = v35;
    *(a7 + 40) = v24;
    *(a7 + 16) = v30;
    *(a7 + 24) = v26;
    *(a7 + 48) = v31;
    *(a7 + 56) = v29;
    sub_21B3F2D94(v32, &qword_27CD88188, &unk_21B4D7F00);
    return (*(v19 + 8))(v21, v18);
  }

  return result;
}

uint64_t sub_21B47800C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88188, &unk_21B4D7F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall ClickLocationElement.withUniqueID(_:)(PodcastsUI::ClickLocationElement *__return_ptr retstr, Swift::String_optional a2)
{
  object = a2.value._object;
  countAndFlagsBits = a2.value._countAndFlagsBits;
  v6 = v2[1];
  v10[0] = *v2;
  v10[1] = v6;
  v8 = v2[3];
  v11 = v2[2];
  v7 = v11;
  v12 = v8;
  retstr->id = v10[0];
  retstr->_uniqueID = v6;
  retstr->parentUniqueID = v7;
  *&retstr->position = v8;
  sub_21B39E5DC(v10, &v9);

  retstr->_uniqueID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->_uniqueID.value._object = object;
}

double static ClickLocationElement.bubbleTipButton(targetID:uniqueID:parentUniqueID:position:locationType:name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, __int128 a11)
{
  v15 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v16 = sub_21B4C60B8();
  v18 = v16;
  v19 = v17;
  v20 = MEMORY[0x277D837D0];
  if (*(&a11 + 1))
  {
    v34 = MEMORY[0x277D837D0];
    v33 = a11;
    sub_21B36EE80(&v33, v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21B3749CC(v32, v18, v19, isUniquelyReferenced_nonNull_native);

    v35 = v15;
  }

  else
  {
    sub_21B43D280(v16, v17, &v33);

    sub_21B3F2D94(&v33, &qword_27CD86E70, &qword_21B4D8470);
    v15 = v35;
  }

  v22 = sub_21B4C5F88();
  v24 = v23;
  v34 = v20;
  *&v33 = a8;
  *(&v33 + 1) = a10;
  sub_21B36EE80(&v33, v32);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v32, v22, v24, v25);

  *a9 = a1;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a7;
  a9[7] = v15;

  return result;
}

double static ClickLocationElement.playButton(adamID:uniqueID:parentUniqueID:position:kind:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v54 = a7;
  v58 = a6;
  v59 = a5;
  v57 = a4;
  v60 = a2;
  v13 = sub_21B4C5888();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21B4C7228())
  {
    v55 = 0xE000000000000000;
    v56 = 0;
  }

  else
  {
    *&v63 = a1;
    sub_21B391890();
    v17 = sub_21B4CA268();
    v55 = v18;
    v56 = v17;
  }

  if (sub_21B4C7228())
  {
    v19 = 0;
    v20 = 0;
    v21 = a3;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v19 = sub_21B4C6278();
    v20 = v22;
    v21 = a3;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  sub_21B4C5878();
  v60 = sub_21B4C5868();
  v21 = v23;
  (*(v14 + 8))(v16, v13);
LABEL_9:
  v24 = MEMORY[0x277D84F98];
  v65 = MEMORY[0x277D84F98];

  v25 = sub_21B4C6028();
  v27 = v25;
  v28 = v26;
  v29 = MEMORY[0x277D837D0];
  if (v20)
  {
    v64 = MEMORY[0x277D837D0];
    *&v63 = v19;
    *(&v63 + 1) = v20;
    sub_21B36EE80(&v63, v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v24;
    sub_21B3749CC(v62, v27, v28, isUniquelyReferenced_nonNull_native);

    v65 = v61;
  }

  else
  {
    sub_21B43D280(v25, v26, &v63);

    sub_21B3F2D94(&v63, &qword_27CD86E70, &qword_21B4D8470);
  }

  v31 = sub_21B4C5F98();
  v33 = v31;
  v34 = v32;
  if (a8)
  {
    v64 = v29;
    *&v63 = v54;
    *(&v63 + 1) = a8;
    sub_21B36EE80(&v63, v62);

    v35 = v65;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v35;
    sub_21B3749CC(v62, v33, v34, v36);

    v37 = v61;
    v65 = v61;
  }

  else
  {
    sub_21B43D280(v31, v32, &v63);

    sub_21B3F2D94(&v63, &qword_27CD86E70, &qword_21B4D8470);
    v37 = v65;
  }

  v38 = sub_21B4C5F88();
  v40 = v39;
  v41 = sub_21B4C6738();
  v64 = v29;
  *&v63 = v41;
  *(&v63 + 1) = v42;
  sub_21B36EE80(&v63, v62);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v37;
  sub_21B3749CC(v62, v38, v40, v43);

  v44 = v61;
  v65 = v61;
  v45 = sub_21B4C60B8();
  v47 = v46;
  v64 = v29;
  *&v63 = 2036427856;
  *(&v63 + 1) = 0xE400000000000000;
  sub_21B36EE80(&v63, v62);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v44;
  sub_21B3749CC(v62, v45, v47, v48);

  v49 = v55;
  *a9 = v56;
  a9[1] = v49;
  v50 = v59;
  a9[4] = v57;
  a9[5] = v50;
  v51 = v61;
  a9[2] = v60;
  a9[3] = v21;
  a9[6] = v58;
  a9[7] = v51;

  return result;
}

double static ClickLocationElement.tab(targetID:uniqueID:parentUniqueID:position:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = sub_21B4C5F88();
  v17 = v16;
  v18 = sub_21B4C6718();
  v26 = MEMORY[0x277D837D0];
  *&v25 = v18;
  *(&v25 + 1) = v19;
  sub_21B36EE80(&v25, v24);
  v20 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v24, v15, v17, isUniquelyReferenced_nonNull_native);

  *a8 = a1;
  a8[1] = a2;
  a8[4] = a5;
  a8[5] = a6;
  a8[2] = a3;
  a8[3] = a4;
  a8[6] = a7;
  a8[7] = v20;

  return result;
}

double static ClickLocationElement.tabBar(uniqueID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21B4C5F88();
  v8 = v7;
  v9 = sub_21B4C6758();
  v16 = MEMORY[0x277D837D0];
  *&v15 = v9;
  *(&v15 + 1) = v10;
  sub_21B36EE80(&v15, v14);
  v11 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v14, v6, v8, isUniquelyReferenced_nonNull_native);

  *a3 = 0x726142626154;
  a3[1] = 0xE600000000000000;
  a3[4] = 0;
  a3[5] = 0;
  a3[2] = a1;
  a3[3] = a2;
  a3[6] = 0;
  a3[7] = v11;

  return result;
}

double static ClickLocationElement.favoriteOrSuggestLessButton(adamID:name:position:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21B4C60B8();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D837D0];
  *&v25 = a2;
  *(&v25 + 1) = a3;
  sub_21B36EE80(&v25, v24);

  v14 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v24, v10, v12, isUniquelyReferenced_nonNull_native);

  v16 = sub_21B4C5F88();
  v18 = v17;
  v19 = sub_21B4C6738();
  v26 = v13;
  *&v25 = v19;
  *(&v25 + 1) = v20;
  sub_21B36EE80(&v25, v24);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_21B3749CC(v24, v16, v18, v21);

  *&v25 = a1;
  sub_21B391890();
  *a5 = sub_21B4CA268();
  *(a5 + 8) = v22;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = a4;
  *(a5 + 56) = v14;
  return result;
}

uint64_t ClickLocationTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_21B37AC24(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87808, &unk_21B4D7FD0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t ClickLocationTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall ClickLocationTracker.containsElement(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_21B39F9F0((v2 + 16), v5);
  os_unfair_lock_unlock((v2 + 24));
  LOBYTE(v2) = *(&v5[0] + 1) != 0;
  v4[0] = v5[0];
  v4[1] = v5[1];
  v4[2] = v5[2];
  v4[3] = v5[3];
  sub_21B39FBB0(v4);
  return v2;
}

Swift::Bool __swiftcall ClickLocationTracker.containsElement(_:)(PodcastsUI::ClickLocationElement *a1)
{
  object = a1->_uniqueID.value._object;
  if (!object)
  {

    object = 0;
  }

  v3 = *(v1 + 16);
  MEMORY[0x28223BE20](object);

  os_unfair_lock_lock((v3 + 24));
  sub_21B39F9F0((v3 + 16), v7);
  os_unfair_lock_unlock((v3 + 24));

  v4 = *(&v7[0] + 1) != 0;
  v6[0] = v7[0];
  v6[1] = v7[1];
  v6[2] = v7[2];
  v6[3] = v7[3];
  sub_21B39FBB0(v6);
  return v4;
}

void __swiftcall ClickLocationTracker.removeElement(for:)(PodcastsUI::ClickLocationElement_optional *__return_ptr retstr, Swift::String a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock(v4 + 6);
  sub_21B4792FC(retstr);
  os_unfair_lock_unlock(v4 + 6);
}

void __swiftcall ClickLocationTracker.removeElement(_:)(PodcastsUI::ClickLocationElement_optional *__return_ptr retstr, PodcastsUI::ClickLocationElement *a2)
{
  object = a2->_uniqueID.value._object;
  if (!object)
  {

    object = 0;
  }

  v5 = *(v2 + 16);
  MEMORY[0x28223BE20](object);

  os_unfair_lock_lock(v5 + 6);
  sub_21B479378(retstr);
  os_unfair_lock_unlock(v5 + 6);
}

uint64_t ClickLocationTracker.removeElements(where:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_21B479330((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_21B478CE4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1;
  v7 = *a1;

  v18 = sub_21B478E94(a2, a3, v7);
  v8 = *(v18 + 16);
  if (v8)
  {
    v9 = v18 + 56;
    v19 = v6;
    do
    {
      v10 = *(v9 - 24);
      v11 = *(v9 - 16);

      v12 = sub_21B36CEF8(v10, v11);
      if (v13)
      {
        v14 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v6;
        v20 = *v6;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_21B45D2F0();
          v16 = v20;
        }

        sub_21B41574C(v14, v16);

        v6 = v19;
        *v19 = v16;
      }

      else
      {
      }

      v9 += 64;
      --v8;
    }

    while (v8);
  }

  *a4 = v18;
}

uint64_t sub_21B478E94(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x277D84F90];
  v27 = result;
  if (v10)
  {
LABEL_10:
    while (1)
    {
      v14 = (*(v4 + 56) + ((v6 << 12) | (__clz(__rbit64(v10)) << 6)));
      v15 = v14[3];
      v17 = *v14;
      v16 = v14[1];
      v33[2] = v14[2];
      v33[3] = v15;
      v33[0] = v17;
      v33[1] = v16;
      v18 = v14[1];
      v34 = *v14;
      v35 = v18;
      v19 = v14[3];
      v36 = v14[2];
      v37 = v19;
      sub_21B39E5DC(v33, &v29);
      v20 = v5(&v34);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;
      if (v20)
      {
        v29 = v34;
        v30 = v35;
        v31 = v36;
        v32 = v37;
        result = swift_isUniquelyReferenced_nonNull_native();
        v38 = v12;
        if ((result & 1) == 0)
        {
          result = sub_21B3F2F14(0, *(v12 + 16) + 1, 1);
          v12 = v38;
        }

        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_21B3F2F14((v21 > 1), v22 + 1, 1);
          v12 = v38;
        }

        *(v12 + 16) = v22 + 1;
        v23 = (v12 + (v22 << 6));
        v24 = v29;
        v25 = v30;
        v26 = v32;
        v23[4] = v31;
        v23[5] = v26;
        v23[2] = v24;
        v23[3] = v25;
        v4 = a3;
        v5 = v27;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v29 = v34;
        v30 = v35;
        v31 = v36;
        v32 = v37;
        result = sub_21B39FE70(&v29);
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    v32 = v37;
    sub_21B39FE70(&v29);

LABEL_19:

    return v12;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_19;
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        v6 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ClickLocationTracker.removeAllElements()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));

  *(v1 + 16) = MEMORY[0x277D84F98];

  os_unfair_lock_unlock((v1 + 24));
}

_OWORD *ClickLocationTracker.locationStack(for:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD88190, &qword_21B4D7FE0);
  sub_21B4C61A8();
  v4 = sub_21B4791A4(a1, a2, v6);

  return v4;
}

_OWORD *sub_21B4791A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_21B36CEF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (*(a3 + 56) + (v4 << 6));
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[3];
  v27 = v6[2];
  v28 = v9;
  v25 = v8;
  v26 = v7;
  v10 = *(&v27 + 1);
  if (*(&v27 + 1))
  {
    v11 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB8, &qword_21B4D2890);
    v12 = swift_allocObject();
    v13 = v25;
    v14 = v26;
    v12[1] = xmmword_21B4D2830;
    v12[2] = v13;
    v15 = v27;
    v16 = v28;
    v12[3] = v14;
    v12[4] = v15;
    v12[5] = v16;
    sub_21B39E5DC(&v25, v24);

    v17 = sub_21B4791A4(v11, v10, a3);

    v24[0] = v12;
    sub_21B4763E4(v17);
    return v24[0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB8, &qword_21B4D2890);
    v19 = swift_allocObject();
    v20 = *v6;
    v21 = v6[1];
    v19[1] = xmmword_21B4D2830;
    v19[2] = v20;
    v22 = v6[2];
    v23 = v6[3];
    v19[3] = v21;
    v19[4] = v22;
    v19[5] = v23;
    sub_21B39E5DC(&v25, v24);
    return v19;
  }
}

uint64_t EngagementThresholdStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](a1);
  return sub_21B4CA738();
}

unint64_t sub_21B479414()
{
  result = qword_27CD88198;
  if (!qword_27CD88198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD88198);
  }

  return result;
}

uint64_t EngagementThresholdStatusProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v1 = sub_21B4C9D58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D60, &qword_21B4D3088);
  sub_21B4C8808();
  v6 = [v9[1] privateQueueContext];
  swift_unknownObjectRelease();
  *(v5 + 16) = v6;
  (*(v2 + 104))(v4, *MEMORY[0x277D3D9E8], v1);
  v7 = sub_21B36D780(v4);

  (*(v2 + 8))(v4, v1);
  *(v5 + 24) = v7;
  return v5;
}

BOOL sub_21B4795F0()
{
  if ([*(v0 + 24) objectForKey_])
  {
    sub_21B4CA278();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_21B3F9F3C(v7);
    goto LABEL_8;
  }

  sub_21B3F12CC(0, qword_2812003E0, 0x277CCABB0);
  if (!swift_dynamicCast())
  {
LABEL_8:
    v1 = 0;
    goto LABEL_9;
  }

  v1 = v4;
LABEL_9:
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_21B4796CC()
{
  v1[2] = v0;
  v2 = sub_21B4C9F88();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B47978C, 0, 0);
}

uint64_t sub_21B47978C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];
  v0[6] = v5;
  v6 = [objc_opt_self() predicateForPreviouslyPlayedHidingFutureTimestamps];
  [v5 setPredicate_];

  [v5 setFetchLimit_];
  v7 = *(v4 + 16);
  v8 = swift_allocObject();
  v0[7] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v7;
  v9 = v5;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_21B47993C;
  v11 = v0[5];
  v12 = MEMORY[0x277D839B0];

  return MEMORY[0x28210EE50](v0 + 10, v11, sub_21B479FDC, v8, v12);
}

uint64_t sub_21B47993C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_21B479B44;
  }

  else
  {
    v5 = sub_21B479AD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B479AD0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21B479B44()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21B479BB4@<X0>(BOOL *a2@<X8>)
{
  sub_21B3F12CC(0, &qword_2811FCAA0, 0x277D3DAF8);
  result = sub_21B4C9F98();
  if (!v2)
  {
    *a2 = result > 0;
  }

  return result;
}

uint64_t sub_21B479C44()
{
  if (sub_21B4795F0())
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_21B479D18;

    return sub_21B4796CC();
  }

  else
  {
    v3 = *(v0 + 8);

    return v3(1);
  }
}

uint64_t sub_21B479D18(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);
    if (a1)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    return v7(v8);
  }
}

uint64_t EngagementThresholdStatusProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21B479EDC()
{
  if (sub_21B4795F0())
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_21B479FF8;

    return sub_21B4796CC();
  }

  else
  {
    v3 = *(v0 + 8);

    return v3(1);
  }
}

uint64_t dispatch thunk of EngagementThresholdStatusProviding.status.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B409EB8;

  return v7(a1, a2);
}

uint64_t EngagementThresholdTracker.__allocating_init(status:provider:accountProvider:onStatusChange:)(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__subscription;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881A0, &unk_21B4D81A0);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + 112) = a1;
  sub_21B3F821C(a2, v10 + 120);
  sub_21B3F821C(a3, v10 + 160);
  v13 = (v10 + OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__onStatusChange);
  *v13 = a4;
  v13[1] = a5;
  sub_21B371F28(a4, a5);
  sub_21B3787FC(a3);
  sub_21B36F6F4(a4, a5);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v10;
}

uint64_t EngagementThresholdTracker.init(status:provider:accountProvider:onStatusChange:)(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__subscription;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881A0, &unk_21B4D81A0);
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + 112) = a1;
  sub_21B3F821C(a2, v5 + 120);
  sub_21B3F821C(a3, v5 + 160);
  v13 = (v5 + OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__onStatusChange);
  *v13 = a4;
  v13[1] = a5;
  sub_21B371F28(a4, a5);
  sub_21B3787FC(a3);
  sub_21B36F6F4(a4, a5);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t EngagementThresholdTracker.__allocating_init(asPartOf:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881A8, &qword_21B4D8AE0);
  sub_21B4C8808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87558, &qword_21B4D81B0);
  sub_21B4C8808();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__subscription;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881A0, &unk_21B4D81A0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + 112) = 0;
  sub_21B3F821C(v7, v1 + 120);
  sub_21B3F821C(v6, v1 + 160);
  v4 = (v1 + OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__onStatusChange);
  *v4 = 0;
  v4[1] = 0;
  sub_21B3787FC(v6);

  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v1;
}

uint64_t EngagementThresholdTracker.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881B0, &qword_21B4D81B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881A0, &unk_21B4D81A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__subscription;
  swift_beginAccess();
  sub_21B378A40(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21B3F2D94(v4, &qword_27CD881B0, &qword_21B4D81B8);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_21B3F821C(v1 + 160, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_21B4C87C8();
    swift_getObjectType();
    sub_21B4C86B8();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 120));
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));
  sub_21B3F2D94(v1 + v9, &qword_27CD881B0, &qword_21B4D81B8);
  sub_21B36F6F4(*(v1 + OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__onStatusChange), *(v1 + OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__onStatusChange + 8));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t EngagementThresholdTracker.__deallocating_deinit()
{
  EngagementThresholdTracker.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t EngagementThresholdTracker._status.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

void sub_21B47A7E0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_21B4C8298();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D21970])
  {
    v11 = sub_21B4C9A58();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    sub_21B43640C(0, 0, v5, &unk_21B4D82E0, v13);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_21B47A9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return MEMORY[0x2822009F8](sub_21B47AA14, 0, 0);
}

uint64_t sub_21B47AA14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_21B47AAD8, Strong, 0);
  }

  else
  {
    **(v0 + 64) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_21B47AAD8()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v1 + 112) = 0;
  v2 = *(v1 + OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__onStatusChange);
  if (v2)
  {
    v2(0);
  }

  return MEMORY[0x2822009F8](sub_21B47AB80, 0, 0);
}

uint64_t EngagementThresholdTracker.update(to:)(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_21B47ABCC, v1, 0);
}

uint64_t sub_21B47ABCC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  swift_beginAccess();
  *(v1 + 112) = v2;
  v3 = *(v1 + OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__onStatusChange);
  if (v3)
  {
    v3(*(v0 + 48));
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t EngagementThresholdTracker.status.getter()
{
  *(v1 + 104) = v0;
  sub_21B4C8588();
  *(v1 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B47ACF8, v0, 0);
}

uint64_t sub_21B47ACF8()
{
  v1 = v0[13];
  swift_beginAccess();
  if (*(v1 + 112) == 3)
  {

    v2 = v0[1];

    return v2(3);
  }

  else
  {
    v4 = v0[13];
    v5 = v4[18];
    v6 = v4[19];
    __swift_project_boxed_opaque_existential_1(v4 + 15, v5);
    v8 = (*(v6 + 8) + **(v6 + 8));
    v7 = swift_task_alloc();
    v0[15] = v7;
    *v7 = v0;
    v7[1] = sub_21B47AE84;

    return v8(v5, v6);
  }
}

uint64_t sub_21B47AE84(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 104);
  if (v1)
  {
    v6 = sub_21B47B050;
  }

  else
  {
    v6 = sub_21B47AFBC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_21B47AFBC()
{
  v1 = *(v0 + 104);
  *(v1 + 112) = *(v0 + 136);
  v2 = *(v1 + OBJC_IVAR____TtC10PodcastsUI26EngagementThresholdTracker__onStatusChange);
  if (v2)
  {
    v2();
  }

  v3 = *(*(v0 + 104) + 112);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_21B47B050()
{
  if (qword_2811FCEC0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_21B4C94B8();
  __swift_project_value_buffer(v2, qword_2811FCEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  sub_21B4C85A8();
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8578();
  sub_21B4C8568();
  swift_getErrorValue();
  v3 = v0[9];
  v4 = v0[10];
  v0[5] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_21B4C8558();
  sub_21B3F2D94((v0 + 2), &qword_27CD86E70, &qword_21B4D8470);
  sub_21B4C8568();
  sub_21B4C8598();
  sub_21B4C92A8();

  v6 = *(v0[13] + 112);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_21B47B2E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21B40998C;

  return sub_21B47A9F4(a1, v4, v5, v6);
}

uint64_t sub_21B47B394(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21B396FF0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21B39EBDC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_21B4C8B08();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_21B415AD0(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t DynamicImpressionsCalculator.__allocating_init(configuration:impressionsTracker:notificationCenter:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21B37C0B8(a1, a2, a3);

  return v4;
}

uint64_t sub_21B47B4B4()
{
  v1 = *(v0 + 8);
  sub_21B4CA6E8();
  if (v1)
  {
    MEMORY[0x21CEF3E40](1);
    sub_21B4C9658();
  }

  else
  {
    MEMORY[0x21CEF3E40](0);
  }

  return sub_21B4CA738();
}

uint64_t sub_21B47B524(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x21CEF3E40](0);
  }

  MEMORY[0x21CEF3E40](1);

  return sub_21B4C9658();
}

uint64_t sub_21B47B59C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_21B4CA6E8();
  if (v2)
  {
    MEMORY[0x21CEF3E40](1);
    sub_21B4C9658();
  }

  else
  {
    MEMORY[0x21CEF3E40](0);
  }

  return sub_21B4CA738();
}

uint64_t sub_21B47B608(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_21B4CA608();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_21B47B64C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B4C8B08();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_21B4C8AD8();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();
  v13 = *(v2 + 16);
  if (*(v13 + 16) && (v14 = sub_21B39775C(v12, v11), (v15 & 1) != 0))
  {
    v22 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();

    v16 = sub_21B47B394(a1);
    v17 = v22;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_21B3975E0(v17, v12, v11, isUniquelyReferenced_nonNull_native);

    *(v2 + 16) = v21;
    swift_endAccess();
    return v16;
  }

  else
  {
    swift_endAccess();

    return 0;
  }
}

uint64_t sub_21B47B838()
{

  return swift_deallocClassInstance();
}

uint64_t DynamicImpressionsCalculator.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_applicationLifecycleObserver))
  {

    sub_21B4C9A78();
  }

  sub_21B3F2D94(v0 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_parentID, &qword_27CD881B8, &qword_21B4D82F0);

  return v0;
}

uint64_t (*DynamicImpressionsCalculator.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = sub_21B4C8D98() & 1;
  return sub_21B47B998;
}

void (*DynamicImpressionsCalculator.viewBounds.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 24);
  sub_21B4C8D18();
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_21B47BA64;
}

void sub_21B47BA64(double **a1)
{
  v1 = *a1;
  sub_21B4C8D28();

  free(v1);
}

uint64_t DynamicImpressionsCalculator.increaseImpressionableFrame(of:by:at:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_21B4C8B08();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C8B28();
  sub_21B3956E0(v15);
  v17 = v16;
  (*(v13 + 8))(v15, v12);
  if (v17)
  {
    DynamicImpressionsCalculator.addElement(_:in:at:)(a1, a2, a3, a4, a5, a6);
  }

  return sub_21B4C8D88();
}

uint64_t DynamicImpressionsCalculator.moveElement(_:to:)(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v2 = sub_21B4C5858();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B4C8B08();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_21B4C8B28();
  v12 = sub_21B3956E0(v11);
  v14 = v13;
  result = (*(v6 + 8))(v11, v5);
  v16 = v20;
  if ((v14 & 1) == 0 && v12 != v20)
  {
    sub_21B4C8B28();
    sub_21B3958A0(v16, 0, v8);
    sub_21B4C5848();
    sub_21B4C8FA8();
    return (*(v18 + 8))(v4, v19);
  }

  return result;
}

uint64_t DynamicImpressionsCalculator.deleteElement(_:)(uint64_t a1)
{
  v1 = sub_21B4C5858();
  v15 = *(v1 - 8);
  v16 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B4C8B08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_21B4C8B28();
  sub_21B3956E0(v10);
  v12 = v11;
  v13 = *(v5 + 8);
  result = v13(v10, v4);
  if ((v12 & 1) == 0)
  {
    sub_21B4C8B28();
    sub_21B47B64C(v7);
    v13(v7, v4);
    sub_21B4C8D58();
    sub_21B4C5848();
    sub_21B4C8FB8();
    return (*(v15 + 8))(v3, v16);
  }

  return result;
}

uint64_t DynamicImpressionsCalculator.removeElement(_:)(uint64_t a1)
{
  v1 = sub_21B4C8B08();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_21B4C8B28();
  sub_21B3956E0(v7);
  v9 = v8;
  v10 = *(v2 + 8);
  result = v10(v7, v1);
  if ((v9 & 1) == 0)
  {
    sub_21B4C8B28();
    sub_21B47B64C(v4);
    v10(v4, v1);
    return sub_21B4C8D58();
  }

  return result;
}

Swift::Void __swiftcall DynamicImpressionsCalculator.removeAllElements()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881B8, &qword_21B4D82F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(v1 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_elementPositions);
  sub_21B47C4F0(v1 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_parentID, &v11 - v3);
  v6 = sub_21B4C8B08();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_21B3F2D94(v4, &qword_27CD881B8, &qword_21B4D82F0);
    swift_beginAccess();
    *(v5 + 16) = MEMORY[0x277D84F98];
  }

  else
  {
    v8 = sub_21B4C8AF8();
    v10 = v9;
    (*(v7 + 8))(v4, v6);
    swift_beginAccess();
    sub_21B42BB98(v8, v10);
    swift_endAccess();
  }

  sub_21B4C8D68();
}

void sub_21B47C320()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_21B47C458()
{
  v1 = *(v0 + 120);

  *(v1 + OBJC_IVAR____TtC10PodcastsUI28DynamicImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = sub_21B4C8D98() & 1;
  sub_21B4C8DA8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21B47C4F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881B8, &qword_21B4D82F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B47C580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B47C5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_21B47C624(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_21B47C63C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t MetricsAdHocImpression.metricsId.getter()
{
  if (!*(v0 + 48))
  {
    return 0x61426C6C65737075;
  }

  if (*(v0 + 48) != 1)
  {
    return 0x657469726F766146;
  }

  v1 = *v0;

  return v1;
}

uint64_t MetricsAdHocImpression.metricsName.getter()
{
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v1 = *(v0 + 16);

      return v1;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else if (*(v0 + 8))
  {
    return sub_21B47C764();
  }

  else
  {
    return 0x61426C6C65737075;
  }
}

uint64_t sub_21B47C764()
{
  sub_21B3A5DF0();
  v0 = sub_21B4CA258();
  v1 = *(v0 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_21B3982B0(0, v1, 0);
    v2 = v0 + 56;
    do
    {

      sub_21B4CA198();
      v3 = sub_21B4C9798();
      v5 = v4;

      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21B3982B0((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v3;
      *(v8 + 40) = v5;
      v2 += 32;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86800, &qword_21B4D1D38);
  sub_21B429DA0();
  v9 = sub_21B4C9698();

  return v9;
}

uint64_t MetricsAdHocImpression.impressionType.getter()
{
  if (!*(v0 + 48))
  {
    return MEMORY[0x28219DB50]();
  }

  if (*(v0 + 48) == 1)
  {
    return MEMORY[0x28219DB60]();
  }

  return sub_21B4C6768();
}

uint64_t MetricsAdHocImpression.channelAdamId.getter()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  v1 = *(v0 + 16);

  return v1;
}

uint64_t MetricsAdHocImpression.eligibilityType.getter()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  v1 = *(v0 + 32);

  return v1;
}

uint64_t get_enum_tag_for_layout_string_10PodcastsUI22MetricsAdHocImpressionO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21B47C9E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_21B47CA2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B47CA80(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

void sub_21B47CAB8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
}

void sub_21B47CB10(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21B47CB6C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_21B47CFE0(a1);

  *a2 = v3;
}

unint64_t PageRenderContentTypes.debugDescription.getter()
{
  sub_21B4CA338();

  v0 = sub_21B4CA588();
  MEMORY[0x21CEF2F30](v0);

  MEMORY[0x21CEF2F30](41, 0xE100000000000000);
  return 0xD000000000000021;
}

uint64_t PageRenderContentTypes.description.getter(char a1)
{
  if (!a1)
  {
    return 0x69636570736E752ELL;
  }

  if (a1)
  {
    v2 = sub_21B36CCAC(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_21B36CCAC((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    *(v6 + 4) = 0x636170656469732ELL;
    *(v6 + 5) = 0xE90000000000006BLL;
    if ((a1 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = MEMORY[0x277D84F90];
  if ((a1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21B36CCAC(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_21B36CCAC((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    strcpy(v9 + 32, ".primaryData");
    v9[45] = 0;
    *(v9 + 23) = -5120;
  }

LABEL_14:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21B36CCAC(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_21B36CCAC((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    v12 = &v2[16 * v11];
    *(v12 + 4) = 0x6372756F7365722ELL;
    *(v12 + 5) = 0xE900000000000065;
  }

  v3 = MEMORY[0x21CEF3080](v2, MEMORY[0x277D837D0]);

  return v3;
}

unint64_t sub_21B47CE84()
{
  result = qword_2811FEF28;
  if (!qword_2811FEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FEF28);
  }

  return result;
}

unint64_t sub_21B47CEDC()
{
  result = qword_2811FEF20;
  if (!qword_2811FEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FEF20);
  }

  return result;
}

unint64_t sub_21B47CF34()
{
  result = qword_2811FEF30[0];
  if (!qword_2811FEF30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811FEF30);
  }

  return result;
}

unint64_t sub_21B47CF8C()
{
  result = qword_2811FEF18;
  if (!qword_2811FEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FEF18);
  }

  return result;
}

uint64_t sub_21B47CFE0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t PageRenderController.__allocating_init(eventName:pipeline:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PageRenderController.init(eventName:pipeline:)(a1, a2, a3);
  return v6;
}

uint64_t PageRenderController.deinit()
{

  v1 = OBJC_IVAR____TtC10PodcastsUI20PageRenderController_pipeline;
  v2 = sub_21B4C8898();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PageRenderController.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10PodcastsUI20PageRenderController_pipeline;
  v2 = sub_21B4C8898();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void PageRenderController.viewDidUpdate(with:)(char a1)
{
  v2 = type metadata accessor for PageRenderActivity(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 2) != 0)
  {
    swift_storeEnumTagMultiPayload();
    PageRenderController.notify(_:)(v4);
    sub_21B47D53C(v4, type metadata accessor for PageRenderActivity);
  }
}

uint64_t sub_21B47D404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881D0, &qword_21B4D87D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B47D46C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B47D4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B47D53C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21B47D5A0()
{
  result = qword_27CD881D8;
  if (!qword_27CD881D8)
  {
    type metadata accessor for PageRenderController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD881D8);
  }

  return result;
}

id static PageRenderEvent.resourceFetchFailed(_:onScreen:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  type metadata accessor for PageRenderActivity(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PageRenderEvent(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_21B47D6BC@<X0>(char a1@<W0>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for PageRenderActivity(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PageRenderEvent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static PageRenderEvent.primaryDataFetchCompleted(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B4C86A8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for PageRenderActivity(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PageRenderEvent(0);

  return swift_storeEnumTagMultiPayload();
}

id static PageRenderEvent.primaryDataFetchFailed(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for PageRenderActivity(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PageRenderEvent(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_21B47D838@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_21B439470();
  v6 = swift_allocError();
  *v7 = a2;
  *a3 = v6;
  *(a3 + 8) = a1;
  type metadata accessor for PageRenderActivity(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PageRenderEvent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B47D8D4()
{
  type metadata accessor for PageRenderActivity(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PageRenderEvent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static PageRenderEvent.reload.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for PageRenderEvent(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t PageRenderResourceError.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

unint64_t PageRenderResourceError.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

unint64_t sub_21B47DA44()
{
  result = qword_27CD881E0;
  if (!qword_27CD881E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD881E0);
  }

  return result;
}

unint64_t sub_21B47DA98()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PageRenderState.ResourceCounter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PageRenderState.ResourceCounter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_21B47DB78()
{
  v0 = sub_21B4C9498();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B4C94B8();
  __swift_allocate_value_buffer(v4, qword_2811FFBC0);
  __swift_project_value_buffer(v4, qword_2811FFBC0);
  if (qword_2811FCEA0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2811FCEA8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_21B4C94A8();
}

double sub_21B47DCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B4C8588();
  MEMORY[0x28223BE20](v6 - 8);
  if (qword_2811FFBB8 != -1)
  {
    swift_once();
  }

  v7 = sub_21B4C94B8();
  __swift_project_value_buffer(v7, qword_2811FFBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  sub_21B4C85A8();
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8578();
  sub_21B4C8568();
  v8 = MEMORY[0x277D83E88];
  v11 = MEMORY[0x277D83E88];
  v10[0] = a1;
  sub_21B4C8548();
  sub_21B3F9F3C(v10);
  sub_21B4C8568();
  v11 = v8;
  v10[0] = a2;
  sub_21B4C8548();
  sub_21B3F9F3C(v10);
  sub_21B4C8568();
  v11 = v8;
  v10[0] = a3;
  sub_21B4C8548();
  sub_21B3F9F3C(v10);
  sub_21B4C8568();
  sub_21B4C8598();
  sub_21B4C9298();

  return result;
}

double sub_21B47DF2C()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v1 - 1;
    *v0 = v1 - 1;
    v3 = v0[1];
    v4 = v3 + 1;
    if (v3 != -1)
    {
      v0[1] = v4;
      v5 = v0[2];

      return sub_21B47DCCC(v2, v4, v5);
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_2811FFBB8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v7 = sub_21B4C94B8();
  __swift_project_value_buffer(v7, qword_2811FFBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  sub_21B4C85A8();
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8538();
  sub_21B4C92A8();

  return result;
}

double sub_21B47E0B8()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v1 - 1;
    *v0 = v1 - 1;
    v3 = v0[2];
    v4 = v3 + 1;
    if (v3 != -1)
    {
      v0[2] = v4;
      v5 = v0[1];

      return sub_21B47DCCC(v2, v5, v4);
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_2811FFBB8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v7 = sub_21B4C94B8();
  __swift_project_value_buffer(v7, qword_2811FFBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  sub_21B4C85A8();
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8538();
  sub_21B4C92A8();

  return result;
}

void ClickLocationFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(unint64_t a1)
{
  v2 = sub_21B4C8588();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_2811FD140 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87810, &unk_21B4D8A40);
    __swift_project_value_buffer(v3, qword_2811FD148);
    type metadata accessor for ClickLocationTracker();
    sub_21B4C8CE8();
    if (!v107)
    {
      return;
    }

    if (qword_2811FD0F8 != -1)
    {
LABEL_78:
      swift_once();
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87908, &qword_21B4D5CC8);
    __swift_project_value_buffer(v4, qword_2811FD100);
    sub_21B4C8CE8();
    v5 = *(&v107 + 1);
    if (!*(&v107 + 1))
    {
      goto LABEL_68;
    }

    v99 = a1;
    v6 = v107;
    v7 = ClickLocationTracker.locationStack(for:)(v107, *(&v107 + 1));
    v8 = *(v7 + 2);
    if (!v8)
    {

      if (qword_2811FCEC0 != -1)
      {
        swift_once();
      }

      v36 = sub_21B4C94B8();
      __swift_project_value_buffer(v36, qword_2811FCEC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
      sub_21B4C85A8();
      *(swift_allocObject() + 16) = xmmword_21B4D2830;
      sub_21B4C8578();
      sub_21B4C8568();
      *(&v108 + 1) = MEMORY[0x277D837D0];
      *&v107 = v6;
      *(&v107 + 1) = v5;
      sub_21B4C8558();
      sub_21B3F9F3C(&v107);
      sub_21B4C8568();
      sub_21B4C8598();
      sub_21B4C9298();

      return;
    }

    v112 = v7;

    a1 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_1(v99, v99[3]);
    v9 = sub_21B4C8C68();
    v10 = sub_21B4C60D8();
    v12 = sub_21B43CDD0(v10, v11, v9);

    if (!v12)
    {
      v37 = v112;
      v38 = *(v112 + 2);
      if (!v38)
      {

        v40 = MEMORY[0x277D84F90];
LABEL_66:
        *&v107 = v40;
        v90 = sub_21B4C60D8();
        v92 = v91;
        v93 = v99[3];
        v94 = v99[4];
        __swift_mutable_project_boxed_opaque_existential_1(v99, v93);
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881E8, qword_21B4D8A50);
        v96 = sub_21B47EEA4();
        MetricsFieldsBuilder.addValue<A>(_:forField:)(&v107, v90, v92, v93, v95, v94, v96);
        goto LABEL_67;
      }

      v111 = MEMORY[0x277D84F90];
      sub_21B3F2F34(0, v38, 0);
      if (!*(v37 + 2))
      {
        goto LABEL_72;
      }

      v39 = 0;
      v40 = v111;
      v101 = v38 - 1;
      v41 = 2;
      while (1)
      {
        v103 = v40;
        v43 = v37[v41];
        v42 = v37[v41 + 1];
        v44 = v37[v41 + 3];
        v109 = v37[v41 + 2];
        v110 = v44;
        v107 = v43;
        v108 = v42;
        if (*(&v44 + 1))
        {
          v45 = *(&v110 + 1);
        }

        else
        {
          v45 = MEMORY[0x277D84F98];
        }

        v46 = *(&v107 + 1);
        a1 = v107;
        sub_21B39E5DC(&v107, &v105);

        v47 = sub_21B4C60A8();
        v49 = v48;
        v106 = MEMORY[0x277D837D0];
        v105 = __PAIR128__(v46, a1);
        sub_21B36EE80(&v105, v104);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = sub_21B36CEF8(v47, v49);
        v53 = v45[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_73;
        }

        a1 = v51;
        if (v45[3] >= v55)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v51)
            {
              goto LABEL_44;
            }
          }

          else
          {
            sub_21B3935DC();
            if (a1)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          sub_21B374B1C(v55, isUniquelyReferenced_nonNull_native);
          v56 = sub_21B36CEF8(v47, v49);
          if ((a1 & 1) != (v57 & 1))
          {
            goto LABEL_79;
          }

          v52 = v56;
          if (a1)
          {
LABEL_44:

            v62 = (v45[7] + 32 * v52);
            __swift_destroy_boxed_opaque_existential_1(v62);
            sub_21B36EE80(v104, v62);
            goto LABEL_45;
          }
        }

        v45[(v52 >> 6) + 8] |= 1 << v52;
        v58 = (v45[6] + 16 * v52);
        *v58 = v47;
        v58[1] = v49;
        sub_21B36EE80(v104, (v45[7] + 32 * v52));
        v59 = v45[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v45[2] = v61;
LABEL_45:
        v63 = v110;
        v64 = sub_21B4C6108();
        v66 = v65;
        v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v106 = sub_21B377824();
        *&v105 = v67;
        sub_21B36EE80(&v105, v104);
        a1 = swift_isUniquelyReferenced_nonNull_native();
        v68 = sub_21B36CEF8(v64, v66);
        v70 = v45[2];
        v71 = (v69 & 1) == 0;
        v60 = __OFADD__(v70, v71);
        v72 = v70 + v71;
        if (v60)
        {
          goto LABEL_74;
        }

        v73 = v69;
        if (v45[3] < v72)
        {
          sub_21B374B1C(v72, a1);
          v68 = sub_21B36CEF8(v64, v66);
          if ((v73 & 1) != (v74 & 1))
          {
LABEL_79:
            sub_21B4CA688();
            __break(1u);
            return;
          }

LABEL_50:
          if (v73)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }

        if (a1)
        {
          goto LABEL_50;
        }

        v78 = v68;
        sub_21B3935DC();
        v68 = v78;
        if (v73)
        {
LABEL_51:
          v75 = v68;

          v76 = v45;
          v77 = (v45[7] + 32 * v75);
          __swift_destroy_boxed_opaque_existential_1(v77);
          sub_21B36EE80(v104, v77);
          goto LABEL_57;
        }

LABEL_55:
        v76 = v45;
        v45[(v68 >> 6) + 8] |= 1 << v68;
        v79 = (v45[6] + 16 * v68);
        *v79 = v64;
        v79[1] = v66;
        sub_21B36EE80(v104, (v45[7] + 32 * v68));
        v80 = v45[2];
        v60 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v60)
        {
          goto LABEL_77;
        }

        v45[2] = v81;
LABEL_57:
        sub_21B39FE70(&v107);
        v40 = v103;
        v111 = v103;
        a1 = *(v103 + 16);
        v82 = *(v103 + 24);
        v37 = v112;
        if (a1 >= v82 >> 1)
        {
          sub_21B3F2F34((v82 > 1), a1 + 1, 1);
          v40 = v111;
        }

        *(v40 + 16) = a1 + 1;
        *(v40 + 8 * a1 + 32) = v76;
        if (v101 == v39)
        {

          goto LABEL_66;
        }

        v41 += 4;
        if (++v39 >= *(v37 + 2))
        {
          goto LABEL_72;
        }
      }
    }

    v13 = v12[2];
    if (!v13)
    {
      break;
    }

    v111 = MEMORY[0x277D84F90];
    sub_21B3F2F34(0, v13, 0);
    v14 = 0;
    v15 = v111;
    v102 = v12 + 4;
    v98 = v112 + 2;
    v100 = v13;
    v97 = v12;
    while (v14 < v12[2])
    {
      v16 = v102[v14];

      v17 = sub_21B4C60A8();
      if (*(v16 + 16))
      {
        a1 = v18;
        v19 = sub_21B36CEF8(v17, v18);
        v21 = v20;

        if (v21)
        {
          sub_21B36D428(*(v16 + 56) + 32 * v19, &v107);
          sub_21B36EE80(&v107, &v105);
          if (swift_dynamicCast())
          {
            v22 = 0;
            v23 = v104[0];
            v24 = v98;
            while (v22 < *(v112 + 2))
            {
              v26 = *v24;
              v25 = v24[1];
              v27 = v24[3];
              v109 = v24[2];
              v110 = v27;
              v107 = v26;
              v108 = v25;
              a1 = v27;
              if (v26 == v23 || (sub_21B4CA608() & 1) != 0)
              {
                sub_21B39E5DC(&v107, &v105);

                v28 = sub_21B4C6108();
                v30 = v29;
                v31 = objc_allocWithZone(MEMORY[0x277CCABB0]);

                v32 = [v31 initWithInteger_];
                v106 = sub_21B377824();
                *&v105 = v32;
                sub_21B36EE80(&v105, v104);
                v33 = swift_isUniquelyReferenced_nonNull_native();
                sub_21B3749CC(v104, v28, v30, v33);

                sub_21B39FE70(&v107);

                goto LABEL_21;
              }

              ++v22;
              v24 += 4;
              if (v8 == v22)
              {

LABEL_21:
                v12 = v97;
                goto LABEL_22;
              }
            }

            __break(1u);
            break;
          }
        }
      }

      else
      {
      }

LABEL_22:
      v111 = v15;
      v35 = *(v15 + 16);
      v34 = *(v15 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_21B3F2F34((v34 > 1), v35 + 1, 1);
        v15 = v111;
      }

      ++v14;
      *(v15 + 16) = v35 + 1;
      *(v15 + 8 * v35 + 32) = v16;
      if (v14 == v100)
      {

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v15 = MEMORY[0x277D84F90];
LABEL_63:
  *&v107 = v15;
  v83 = sub_21B4C60D8();
  v85 = v84;
  v86 = v99[3];
  v87 = v99[4];
  __swift_mutable_project_boxed_opaque_existential_1(v99, v86);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881E8, qword_21B4D8A50);
  v89 = sub_21B47EEA4();
  MetricsFieldsBuilder.addValue<A>(_:forField:)(&v107, v83, v85, v86, v88, v87, v89);
LABEL_67:

LABEL_68:
}

uint64_t sub_21B47EDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21B40998C;

  return MEMORY[0x28217FBA8](a1, a2, a3, a4);
}

unint64_t sub_21B47EEA4()
{
  result = qword_2811FCE00;
  if (!qword_2811FCE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD881E8, qword_21B4D8A50);
    sub_21B47EF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE00);
  }

  return result;
}

unint64_t sub_21B47EF28()
{
  result = qword_2811FCE58;
  if (!qword_2811FCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86AB0, &qword_21B4D2888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE58);
  }

  return result;
}

uint64_t EngagementThresholdMetFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_21B47EFB8, 0, 0);
}

uint64_t sub_21B47EFB8()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  if (qword_2811FCDA0 != -1)
  {
    swift_once();
  }

  if (MetricsFieldsBuilder.shouldDecorate(basedOn:)(qword_2811FCDA8, v3, v2))
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_21B47F0EC;

    return EngagementThresholdTracker.status.getter();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21B47F0EC(char a1)
{
  *(*v1 + 41) = a1;

  return MEMORY[0x2822009F8](sub_21B47F1EC, 0, 0);
}

uint64_t sub_21B47F1EC()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = 3 - *(v0 + 41);
  v2 = sub_21B4C6008();
  v4 = v3;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v5);
  MetricsFieldsBuilder.addValue<A>(_:forField:)(v0 + 40, v2, v4, v5, MEMORY[0x277D3D8B8], v6, MEMORY[0x277D3D8B0]);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21B47F2D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B40998C;

  return EngagementThresholdMetFieldsProvider.addExpensiveMetricsFields(into:using:)(a1);
}

double SearchFiltersFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87900, qword_21B4D8C20);
  sub_21B4C8A38();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B4D42A0;
  sub_21B4C89D8();
  sub_21B4C8988();
  sub_21B4C89C8();
  v5 = sub_21B3A7750(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  LOBYTE(v2) = MetricsFieldsBuilder.shouldDecorate(basedOn:)(v5, v2, v3);

  if (v2)
  {
    if (qword_2811FD118 != -1)
    {
      swift_once();
    }

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87838, &qword_21B4D5AE8);
    __swift_project_value_buffer(v7, qword_2811FD120);
    type metadata accessor for SearchFiltersTracker();
    sub_21B4C8CE8();
    if (v29)
    {
      v8 = MEMORY[0x277D84F98];
      v32 = MEMORY[0x277D84F98];
      if (qword_2811FD5C0 != -1)
      {
        swift_once();
      }

      v10 = qword_2811FD5C8;
      v9 = qword_2811FD5D0;

      sub_21B4C61A8();
      v11 = MEMORY[0x277D837D0];
      if (*(&v29 + 1))
      {
        v31 = MEMORY[0x277D837D0];
        sub_21B36EE80(&v29, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_21B3749CC(v28, v10, v9, isUniquelyReferenced_nonNull_native);

        v32 = v8;
      }

      else
      {
        sub_21B43D280(v10, v9, &v29);

        sub_21B3F9F3C(&v29);
      }

      v13 = sub_21B4C5FF8();
      v15 = v14;
      sub_21B4C61A8();

      if (v30 == 2)
      {
        sub_21B43D280(v13, v15, &v29);

        sub_21B3F9F3C(&v29);
        v16 = v32;
      }

      else
      {
        if (v30)
        {
          v17 = sub_21B4C6DC8();
        }

        else
        {
          v17 = sub_21B4C6DD8();
        }

        v31 = v11;
        *&v29 = v17;
        *(&v29 + 1) = v18;
        sub_21B36EE80(&v29, v28);
        v19 = v32;
        v20 = swift_isUniquelyReferenced_nonNull_native();
        sub_21B3749CC(v28, v13, v15, v20);

        v16 = v19;
        v32 = v19;
      }

      *&v29 = v16;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB0, &qword_21B4D2888);
      sub_21B47F804(&qword_2811FCE50, MEMORY[0x277D83530]);
      if (sub_21B4C9BD8())
      {
        *&v29 = v16;
        v22 = sub_21B4C6088();
        v24 = v23;
        v25 = a1[3];
        v26 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, v25);
        v27 = sub_21B47F804(&qword_2811FCE58, MEMORY[0x277D3D990]);
        MetricsFieldsBuilder.addValue<A>(_:forField:)(&v29, v22, v24, v25, v21, v26, v27);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_21B47F804(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86AB0, &qword_21B4D2888);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double XPAccountsMatchFieldsProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1)
{
  v9 = [*v1 ams_isActiveAccountCombined];
  v3 = sub_21B4C60E8();
  v5 = v4;
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  MetricsFieldsBuilder.addValue<A>(_:forField:)(&v9, v3, v5, v6, MEMORY[0x277D839B0], v7, MEMORY[0x277D3D9A8]);

  return result;
}

double JSMetricsEventLinter.init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87870, &unk_21B4D8D50);
  sub_21B4C8808();

  return result;
}

uint64_t JSMetricsEventLinter.processEvent(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_21B47FEFC(v1, v13);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = v13[1];
  *(v6 + 24) = v13[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881F0, &qword_21B4D8D70);

  v8 = sub_21B4C9438();
  v9 = sub_21B4C9A58();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_21B4D8D68;
  v10[5] = v6;
  v10[6] = v8;

  sub_21B47243C(0, 0, v5, &unk_21B4D8D78, v10);

  return v8;
}

uint64_t sub_21B47FB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_21B4C8EB8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B47FBC8, 0, 0);
}

uint64_t sub_21B47FBC8()
{
  v1 = v0[4];

  sub_21B4C8EA8();
  sub_21B4C8DF8();
  v2 = sub_21B4C8DE8();
  v0[8] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21B47FCC8;
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[2];
  v9 = MEMORY[0x277D22170];

  return MEMORY[0x28217F4B0](v8, v6, v2, v7, v9, v3, v4);
}

uint64_t sub_21B47FCC8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21B47FE6C;
  }

  else
  {
    v2 = sub_21B47FDDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B47FDDC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B47FE6C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B47FF34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return sub_21B47FB04(a1, v4, v1 + 24);
}

uint64_t sub_21B47FFE0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_21B47FEFC(v1, v13);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = v13[1];
  *(v6 + 24) = v13[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881F0, &qword_21B4D8D70);

  v8 = sub_21B4C9438();
  v9 = sub_21B4C9A58();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_21B4D8E28;
  v10[5] = v6;
  v10[6] = v8;

  sub_21B47243C(0, 0, v5, &unk_21B4D8E30, v10);

  return v8;
}

uint64_t sub_21B480188(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21B40AB58;

  return sub_21B472A0C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21B480264(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40998C;

  return sub_21B47FB04(a1, v4, v1 + 24);
}

uint64_t sub_21B480310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21B40998C;

  return sub_21B472A0C(a1, v4, v5, v6, v7, v8);
}

id PodcastsMetricsEventRecorder.init(metrics:defaultTopic:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return [a1 setFlushTimerEnabled_];
}

void PodcastsMetricsEventRecorder.record(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (!a3)
  {
  }

  v5 = objc_allocWithZone(MEMORY[0x277CEE5A8]);

  v6 = sub_21B4C96C8();

  v8 = [v5 initWithTopic_];

  [v8 setAnonymous_];
  sub_21B4C8B88();
  v7 = sub_21B4C9578();

  [v8 addPropertiesWithDictionary_];

  [v4 enqueueEvent_];
}

uint64_t PodcastsMetricsEventRecorder.flush()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD881F8, &qword_21B4D8E40);
  v2 = [v1 flush];
  sub_21B4C9428();
  v3 = sub_21B3F12CC(0, &qword_281200500, 0x277D85C78);
  v4 = sub_21B4C9E08();
  v8 = v3;
  v9 = MEMORY[0x277D225C0];
  v7[0] = v4;
  sub_21B4C93E8();
  __swift_destroy_boxed_opaque_existential_1(v7);
  v8 = sub_21B4C8B78();
  v9 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_21B4C8B68();
  v5 = sub_21B4C93D8();

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

double sub_21B480670(void **a1)
{
  v2 = sub_21B4C8588();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *a1;
  if (qword_2811FCEC0 != -1)
  {
    swift_once();
  }

  v4 = sub_21B4C94B8();
  __swift_project_value_buffer(v4, qword_2811FCEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  sub_21B4C85A8();
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8578();
  sub_21B4C8568();
  v7[3] = sub_21B3F12CC(0, qword_2812003E0, 0x277CCABB0);
  v7[0] = v3;
  v5 = v3;
  sub_21B4C8558();
  sub_21B3F9F3C(v7);
  sub_21B4C8568();
  sub_21B4C8598();
  sub_21B4C9298();

  return result;
}

double sub_21B48086C(uint64_t a1)
{
  v1 = sub_21B4C8588();
  MEMORY[0x28223BE20](v1 - 8);
  if (qword_2811FCEC0 != -1)
  {
    swift_once();
  }

  v2 = sub_21B4C94B8();
  __swift_project_value_buffer(v2, qword_2811FCEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD877B8, &unk_21B4D81D0);
  sub_21B4C85A8();
  *(swift_allocObject() + 16) = xmmword_21B4D2830;
  sub_21B4C8578();
  sub_21B4C8568();
  swift_getErrorValue();
  v6[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1);
  sub_21B4C8548();
  sub_21B3F9F3C(v6);
  sub_21B4C8568();
  sub_21B4C8598();
  sub_21B4C92A8();

  return result;
}

id sub_21B480A8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t sub_21B480AD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21B480B1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21B480B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1)
  {
    if (v3)
    {
      return 0;
    }

    return v2 & (v3 ^ 1u);
  }

  if (v3)
  {
    return v2 & (v3 ^ 1u);
  }

  return *a1 < *a2;
}

uint64_t sub_21B480B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    if (v2)
    {
      return 1;
    }

    return v3 & (v2 ^ 1) ^ 1u;
  }

  if (v2)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  return *a2 >= *a1;
}

uint64_t sub_21B480BE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 1)
  {
    if (v3)
    {
      return 1;
    }

    return v2 & (v3 ^ 1) ^ 1u;
  }

  if (v3)
  {
    return v2 & (v3 ^ 1) ^ 1u;
  }

  return *a1 >= *a2;
}

uint64_t sub_21B480C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 == 1)
  {
    if (v2)
    {
      return 0;
    }

    return v3 & (v2 ^ 1u);
  }

  if (v2)
  {
    return v3 & (v2 ^ 1u);
  }

  return *a2 < *a1;
}

BOOL sub_21B480C78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}