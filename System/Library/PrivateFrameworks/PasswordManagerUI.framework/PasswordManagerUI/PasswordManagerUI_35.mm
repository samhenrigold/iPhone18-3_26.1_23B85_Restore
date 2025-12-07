uint64_t sub_21CAFABA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CAFABE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 32);
  v4 = *(v0 + 32);
  *(v2 + 32) = v1;
  v5 = *(v2 + 40);
  *(v2 + 40) = v4;
  sub_21C8D7854(v1, v4);
  return sub_21C989C08(v3, v5);
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

uint64_t sub_21CAFAC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_21CAFACC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CAFAD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v34 - v8);
  v10 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21C7B7408(a1 + v10, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v9;
LABEL_6:
    sub_21C7190C0(v11, type metadata accessor for PMAccount.Storage);
    result = sub_21C7190C0(a1, type metadata accessor for PMAccount);
    v17 = 0;
LABEL_7:
    v15 = 0;
    v18 = 0;
    v19 = 0;
    v13 = 0;
LABEL_9:
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_10;
  }

  v12 = *v9;
  v13 = [v12 recoveryKeySerialNumber];

  if (!v13)
  {
    result = sub_21C7190C0(a1, type metadata accessor for PMAccount);
    v17 = 0;
    v15 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v37 = sub_21CB855C4();
  v15 = v14;

  sub_21C7B7408(a1 + v10, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v11 = v6;
    goto LABEL_6;
  }

  v24 = *v6;
  v17 = [v24 fileVaultRecoveryKeyDeviceInfo];

  if (!v17)
  {
    sub_21C7190C0(a1, type metadata accessor for PMAccount);

    goto LABEL_7;
  }

  v25 = [v17 model];
  v18 = sub_21CB855C4();
  v19 = v26;

  v27 = [v17 variant];
  if (v27)
  {
    v28 = v27;
    v13 = sub_21CB855C4();
    v20 = v29;
  }

  else
  {
    v13 = 0;
    v20 = 0;
  }

  v35 = v17;
  v30 = [v17 deviceTypeIdentifier];
  v21 = sub_21CB855C4();
  v22 = v31;

  v36 = [objc_opt_self() currentDevice];
  v32 = [v36 serialNumber];

  v34 = sub_21CB855C4();
  v36 = v33;

  v17 = v37;
  if (v37 == v34 && v15 == v36)
  {
    LODWORD(v34) = 1;
  }

  else
  {
    LODWORD(v34) = sub_21CB86344();
  }

  result = sub_21C7190C0(a1, type metadata accessor for PMAccount);
  v23 = v34 & 1;
LABEL_10:
  *a2 = v17;
  *(a2 + 8) = v15;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v13;
  *(a2 + 40) = v20;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 64) = v23;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI17PMEditableWebsiteV0E4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CAFB140()
{
  v1 = *(v0 + 8);
  sub_21CB86484();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x21CF15F90](0);
      sub_21CB854C4();
      return sub_21CB864D4();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x21CF15F90](v2);
  return sub_21CB864D4();
}

uint64_t sub_21CAFB1C0(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 1;
    return MEMORY[0x21CF15F90](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x21CF15F90](v3);
  }

  MEMORY[0x21CF15F90](0);

  return sub_21CB854C4();
}

uint64_t sub_21CAFB248(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_21CB86484();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CF15F90](0);
      sub_21CB854C4();
      return sub_21CB864D4();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x21CF15F90](v3);
  return sub_21CB864D4();
}

uint64_t sub_21CAFB2C4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_21CB86344();
  }
}

unint64_t sub_21CAFB32C()
{
  result = qword_27CDF8478;
  if (!qword_27CDF8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8478);
  }

  return result;
}

uint64_t sub_21CAFB380(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB80E34();
  sub_21CAFB700(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21CB85494();
  sub_21CB854C4();
  v3 = *(v1 + *(a1 + 24) + 8);
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x21CF15F90](0);
      sub_21CB854C4();
      return sub_21CB864D4();
    }

    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x21CF15F90](v4);
  return sub_21CB864D4();
}

uint64_t sub_21CAFB47C(uint64_t a1, uint64_t a2)
{
  sub_21CB80E34();
  sub_21CAFB700(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21CB85494();
  sub_21CB854C4();
  v4 = *(v2 + *(a2 + 24) + 8);
  if (!v4)
  {
    v5 = 1;
    return MEMORY[0x21CF15F90](v5);
  }

  if (v4 == 1)
  {
    v5 = 2;
    return MEMORY[0x21CF15F90](v5);
  }

  MEMORY[0x21CF15F90](0);

  return sub_21CB854C4();
}

uint64_t sub_21CAFB574(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  sub_21CB80E34();
  sub_21CAFB700(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21CB85494();
  sub_21CB854C4();
  v4 = *(v2 + *(a2 + 24) + 8);
  if (v4)
  {
    if (v4 != 1)
    {
      MEMORY[0x21CF15F90](0);
      sub_21CB854C4();
      return sub_21CB864D4();
    }

    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  MEMORY[0x21CF15F90](v5);
  return sub_21CB864D4();
}

uint64_t sub_21CAFB700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_21CAFB748(uint64_t a1, uint64_t a2)
{
  if ((sub_21CB80E14() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PMEditableWebsite(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (!v12)
  {
    return !v14;
  }

  if (v12 != 1)
  {
    if (v14 >= 2)
    {
      v16 = *v11 == *v13 && v12 == v14;
      if (v16 || (sub_21CB86344() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v14 == 1;
}

void sub_21CAFB81C(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC91F8);
  swift_getKeyPath(byte_21CBC9220);
  sub_21CB81DB4();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_21CAFB89C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21C7A6110(v1, v2);
}

uint64_t sub_21CAFB8DC(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_21CAFC780(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  result = MEMORY[0x21CF154F0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_21CA93D98(v8, v5);
      result = (*(v3 + 8))(v8, v2);
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

      return v27;
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
  return result;
}

uint64_t sub_21CAFBB3C(__n128 a1, uint64_t a2)
{
  result = MEMORY[0x21CF154F0](*(a2 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0], a1);
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a2 + 56) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_21CA94078(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a2 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAFBC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C6EDBAC(a1, &v5 - v3, &qword_27CDEC390, &qword_21CBA40E0);
  return sub_21CB82D84();
}

double sub_21CAFBD24()
{
  swift_getKeyPath(byte_21CBC9148);
  swift_getKeyPath(asc_21CBC93E8);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CAFBD9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v26 = sub_21CB82484();
  v12 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    v25 = v5;
    v17 = a1;
    v18 = sub_21CB855C4();
    v20 = v19;

    if (v18 == 0xD00000000000001BLL && 0x800000021CB9B5E0 == v20)
    {

LABEL_6:
      sub_21C6EDBAC(v1 + OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__openURL, v11, &unk_27CDEBD00, &unk_21CBA20F0);
      sub_21C95B2F0(v14);
      sub_21C6EA794(v11, &unk_27CDEBD00, &unk_21CBA20F0);
      sub_21CB82454();
      return (*(v12 + 8))(v14, v26);
    }

    v21 = sub_21CB86344();

    a1 = v17;
    v5 = v25;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  v23 = sub_21CB80BE4();
  (*(*(v23 - 8) + 16))(v8, a1, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v24 - 8) + 56))(v8, 0, 1, v24);
  swift_getKeyPath(byte_21CBC9148);
  swift_getKeyPath(asc_21CBC93E8);
  sub_21C6EDBAC(v8, v5, &qword_27CDEFEE8, &unk_21CBADDE0);

  sub_21CB81DC4();
  return sub_21C6EA794(v8, &qword_27CDEFEE8, &unk_21CBADDE0);
}

uint64_t sub_21CAFC148()
{
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__openURL, &unk_27CDEBD00, &unk_21CBA20F0);
  v1 = OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__safariViewControllerURL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85A8, &qword_21CBC93E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21CAFC210@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  sub_21C6EDBAC(v1 + *(v10 + 40), v9, &qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21C716934(v9, a1, &qword_27CDEC390, &qword_21CBA40E0);
  }

  sub_21CB85B04();
  v12 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PMPasswordAutoFillPocketView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8488, &qword_21CBC90E0);
  MEMORY[0x28223BE20](v3);
  v5 = (v21 - v4);
  type metadata accessor for PMAccountPickerModel(0);
  sub_21CAFC780(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel, &unk_21CBA0758);

  v6 = sub_21CB82674();
  v8 = v7;
  KeyPath = swift_getKeyPath(byte_21CBC90E8);
  v10 = *(v1 + 64);
  v12 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8490, &unk_21CBC9138) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AE8, &qword_21CBBC190) + 28);

  sub_21CAFC210(v12 + v13);
  *v12 = v11;
  *v5 = v6;
  v5[1] = v8;
  v5[2] = KeyPath;
  v5[3] = sub_21CAFC75C;
  v5[4] = v10;
  type metadata accessor for PMSafariAutoFillModel(0);
  sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel, &unk_21CBC9390);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBC9148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF84A0, &qword_21CBC9170);
  sub_21CB82694();

  v14 = *v2;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21CAFC780(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  v15 = sub_21CB81CE4();
  v16 = (v5 + *(v3 + 36));
  *v16 = v15;
  v16[1] = v14;
  type metadata accessor for PMPasswordAutoFillPocketView(0);
  v17 = v14;
  v18 = sub_21CB852C4();
  type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
  v19 = swift_allocObject();
  sub_21CB81104();
  *(v19 + 16) = v18;
  sub_21CAFC994();
  sub_21CAFC780(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  sub_21CB84164();

  return sub_21C6EA794(v5, &qword_27CDF8488, &qword_21CBC90E0);
}

uint64_t sub_21CAFC780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21CAFC7C8(uint64_t *a1)
{
  swift_getKeyPath(byte_21CBC9148);
  swift_getKeyPath(asc_21CBC93E8);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CAFC844(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C6EDBAC(a1, &v10 - v7, &qword_27CDEFEE8, &unk_21CBADDE0);
  swift_getKeyPath(byte_21CBC9148);
  swift_getKeyPath(asc_21CBC93E8);
  sub_21C6EDBAC(v8, v5, &qword_27CDEFEE8, &unk_21CBADDE0);

  sub_21CB81DC4();
  return sub_21C6EA794(v8, &qword_27CDEFEE8, &unk_21CBADDE0);
}

unint64_t sub_21CAFC994()
{
  result = qword_27CDF84A8;
  if (!qword_27CDF84A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8488, &qword_21CBC90E0);
    sub_21CAFCA38();
    sub_21C984898(&qword_27CDED1A8, &unk_27CDED1B0, &unk_21CBA6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF84A8);
  }

  return result;
}

unint64_t sub_21CAFCA38()
{
  result = qword_27CDF84B0;
  if (!qword_27CDF84B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF84A0, &qword_21CBC9170);
    sub_21CAFCAF4();
    sub_21CAFC780(&qword_27CDF00E0, type metadata accessor for PMSafariViewModifier, &unk_21CBC9A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF84B0);
  }

  return result;
}

unint64_t sub_21CAFCAF4()
{
  result = qword_27CDF84B8;
  if (!qword_27CDF84B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8490, &unk_21CBC9138);
    sub_21CAFCB98();
    sub_21C984898(&qword_27CDF4B08, &qword_27CDF4AE8, &qword_21CBBC190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF84B8);
  }

  return result;
}

unint64_t sub_21CAFCB98()
{
  result = qword_27CDF84C0;
  if (!qword_27CDF84C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF84C8, &qword_21CBC9178);
    sub_21C71FB40();
    sub_21C984898(&qword_27CDF00D0, &qword_27CDF00D8, &unk_21CBB6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF84C0);
  }

  return result;
}

id sub_21CAFCCC8()
{
  if (qword_27CDEA3C8 != -1)
  {
    swift_once();
  }

  return sub_21C95C78C();
}

id _PMPasswordAutoFillPocketViewController.__allocating_init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:didSelectAccountHandler:didSelectTextToInsertHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void *a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, void *a27, unsigned __int8 a28, unsigned __int8 a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = v35;
  v156 = a6;
  v157 = a8;
  v133 = a5;
  v134 = a7;
  v178 = a4;
  v154 = a2;
  v155 = a3;
  v38 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  MEMORY[0x28223BE20](v38);
  v40 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v41 - 8);
  v167 = &v131 - v42;
  v151 = sub_21CB81024();
  *(&v173 + 1) = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  *&v173 = &v131 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v131 - v45;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  MEMORY[0x28223BE20](v177);
  v163 = &v131 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v131 - v49;
  v51 = objc_allocWithZone(v36);
  v52 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  v53 = type metadata accessor for PMAccount(0);
  v54 = *(v53 - 8);
  v161 = *(v54 + 56);
  v162 = v53;
  v160 = v54 + 56;
  v161(&v51[v52], 1, 1);
  v55 = &v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  *v55 = 0;
  v55[1] = 0;
  if (a1 >= 3)
  {
    result = sub_21CB861C4();
    __break(1u);
  }

  else
  {
    v170 = v38;
    v171 = v40;
    v172 = v36;
    v153 = a29;
    v175 = a9;
    v176 = a32;
    LODWORD(v174) = byte_282E491E8[a1 + 32];
    v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_persona] = v174;
    *&v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountStore] = a11;
    *&v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_autoFillQuirksManager] = a17;
    v56 = &v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectAccountHandler];
    *v56 = a32;
    v56[1] = a33;
    v57 = &v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectTextToInsertHandler];
    v164 = a34;
    *v57 = a34;
    v57[1] = a35;
    type metadata accessor for PMPasswordManager(0);
    swift_allocObject();
    v166 = a17;
    v168 = a33;

    v169 = a35;

    v165 = a11;
    sub_21C6EBF3C(a11, a17);
    v59 = v58;
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v60 = qword_27CE184E8;
    swift_beginAccess();
    *(v60 + 72) = v59;
    *(v60 + 80) = &off_282E59B38;
    swift_unknownObjectRelease();
    v61 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState(0)) init];
    v158 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState;
    *&v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState] = v61;
    v159 = type metadata accessor for PMSafariAutoFillModel(0);
    v62 = swift_allocObject();
    v63 = OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__openURL;
    *(v62 + v63) = swift_getKeyPath(aH_110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
    swift_storeEnumTagMultiPayload();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
    (*(*(v64 - 8) + 56))(v50, 1, 1, v64);
    sub_21C6EDBAC(v50, v163, &qword_27CDEFEE8, &unk_21CBADDE0);
    sub_21CB81D74();
    sub_21C6EA794(v50, &qword_27CDEFEE8, &unk_21CBADDE0);
    *&v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_model] = v62;
    v177 = v51;
    v153 &= 1u;
    v51[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_bypassLockoutPolicy] = v153;
    v163 = v62;

    v150 = sub_21CB009AC(v65);

    v148 = sub_21CB009AC(v66);

    v226 = 1;
    v132 = objc_opt_self();
    v149 = [v132 defaultContext];
    LODWORD(v62) = v174;
    v67 = sub_21C7EA4E4(v174);
    v146 = v68;
    v147 = v67;
    sub_21CB81014();
    v69 = v173;
    sub_21CB81014();
    v70 = sub_21CB80FF4();
    v141 = v71;
    v142 = v70;
    v72 = *(*(&v173 + 1) + 8);
    v73 = v151;
    v72(v69, v151);
    v72(v46, v73);
    v74 = sub_21C7EA67C(v62, v178);
    v139 = v75;
    v140 = v74;
    if (v62)
    {
      v137 = 0xE000000000000000;
      v138 = 0;
    }

    else
    {
      sub_21CB81014();
      v76 = sub_21CB81004();
      v137 = v77;
      v138 = v76;
      v72(v46, v73);
    }

    v152 = a10;
    v173 = a12;
    sub_21CB81014();
    v78 = sub_21CB81004();
    v135 = v79;
    v136 = v78;
    v72(v46, v73);
    sub_21CB81014();
    v80 = sub_21CB81004();
    v82 = v81;
    v72(v46, v73);
    sub_21CB81014();
    v151 = a23;
    v145 = a22;
    v144 = a21;
    v143 = a20;
    v83 = sub_21CB81004();
    v85 = v84;
    v72(v46, v73);
    v86 = v174;
    v87 = v178;
    v88 = sub_21C7EA7D4(v174, v178);
    LOBYTE(v181[0]) = v86;
    *(v181 + 1) = v228[0];
    DWORD1(v181[0]) = *(v228 + 3);
    *&v181[1] = 0;
    *(&v181[0] + 1) = 0;
    *(&v181[1] + 1) = v147;
    *&v181[2] = v146;
    *(&v181[2] + 1) = v142;
    *&v181[3] = v141;
    *(&v181[3] + 1) = v140;
    *&v181[4] = v139;
    *(&v181[4] + 1) = v138;
    *&v181[5] = v137;
    *(&v181[5] + 1) = v136;
    *&v181[6] = v135;
    *(&v181[6] + 1) = v80;
    *&v181[7] = v82;
    *(&v181[7] + 1) = v83;
    *&v181[8] = v85;
    *(&v181[8] + 1) = v88;
    *&v181[9] = v89;
    *(&v181[9] + 1) = v87;
    *&v181[10] = v150;
    *(&v181[10] + 1) = v148;
    v181[11] = v173;
    memset(&v181[12], 0, 33);
    *(&v181[14] + 1) = *v227;
    DWORD1(v181[14]) = *&v227[3];
    *(&v181[14] + 8) = 0u;
    *(&v181[15] + 8) = 0u;
    *(&v181[16] + 1) = 0;
    LOWORD(v181[17]) = v226;
    *(&v181[17] + 2) = v224;
    WORD3(v181[17]) = v225;
    v181[18] = 0uLL;
    *(&v181[17] + 1) = 0;
    LOBYTE(v181[19]) = 1;
    *(&v181[19] + 1) = *v223;
    DWORD1(v181[19]) = *&v223[3];
    *(&v181[19] + 1) = v149;
    v182 = v86;
    *&v183[3] = *(v228 + 3);
    *v183 = v228[0];
    v184 = 0;
    v185 = 0;
    v186 = v147;
    v187 = v146;
    v188 = v142;
    v189 = v141;
    v190 = v140;
    v191 = v139;
    v192 = v138;
    v193 = v137;
    v194 = v136;
    v195 = v135;
    v196 = v80;
    v197 = v82;
    v198 = v83;
    v199 = v85;
    v200 = v88;
    v201 = v89;
    v202 = v87;
    v203 = v150;
    v204 = v148;
    v205 = v173;
    v208 = 0;
    v206 = 0u;
    v207 = 0u;
    *v209 = *v227;
    *&v209[3] = *&v227[3];
    v210 = 0u;
    v211 = 0u;
    v212 = 0;
    v213 = v226;
    v214 = 0;
    v215 = v224;
    v216 = v225;
    v218 = 0;
    v217 = 0;
    v219 = 0;
    v220 = 1;
    *v221 = *v223;
    *&v221[3] = *&v223[3];
    v222 = v149;

    sub_21C7AE6B0(v181, v229);
    sub_21C7ADFB8(&v182);
    v90 = v177 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration;
    memcpy((v177 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration), v181, 0x140uLL);
    swift_beginAccess();
    v91 = v155;
    *(v90 + 8) = v154;
    *(v90 + 16) = v91;
    *(v90 + 152) = v87;

    v92 = v156;
    if (v156)
    {
      *(v90 + 56) = v133;
      *(v90 + 64) = v92;
    }

    v93 = v157;
    if (v157)
    {
      *(v90 + 72) = v134;
      *(v90 + 80) = v93;
    }

    v174 = a30;
    v157 = a31;
    LODWORD(v155) = a28;
    v156 = a27;
    v154 = a26;
    v150 = a25;
    LODWORD(v149) = a24;
    v94 = sub_21CB009AC(v175);

    *(v90 + 160) = v94;

    v95 = sub_21CB009AC(v152);

    swift_beginAccess();
    *(v90 + 168) = v95;

    v96 = *(&v173 + 1);
    *(v90 + 176) = v173;
    *(v90 + 184) = v96;

    *(v90 + 192) = a13;
    *(v90 + 200) = a14;

    *(v90 + 208) = a15;
    *(v90 + 216) = a16;

    *(v90 + 224) = a18 & 1;
    v97 = *(v90 + 232);
    *(v90 + 232) = a19;
    v178 = a19;

    v99 = v143;
    v98 = v144;
    v100 = v145;
    v101 = v151;
    v102 = sub_21CB85AC4();
    v103 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    if ((v102 & 1) == 0)
    {
      v103 = v99;
      v104 = v98;
      v105 = v100;
      v106 = v101;
    }

    *(v90 + 240) = v103;
    *(v90 + 248) = v104;
    *(v90 + 256) = v105;
    *(v90 + 264) = v106;
    *(v90 + 272) = v102 & 1;
    *(v90 + 273) = v149 & 1;
    v107 = *(v90 + 296);
    v108 = v154;
    *(v90 + 280) = v150;
    *(v90 + 288) = v108;
    v109 = v156;
    *(v90 + 296) = v156;
    *(v90 + 304) = v155 & 1;
    v175 = v109;
    swift_endAccess();

    v110 = v171;
    v111 = v157;
    if (v157)
    {
      v112 = v157;
    }

    else
    {
      v112 = [v132 defaultContext];
    }

    v113 = *(v90 + 312);
    *(v90 + 312) = v112;
    *(&v173 + 1) = v111;

    memcpy(v229, v90, 0x140uLL);
    v114 = swift_allocObject();
    v115 = v168;
    *(v114 + 16) = v176;
    *(v114 + 24) = v115;
    v116 = swift_allocObject();
    v117 = v164;
    v118 = v169;
    *(v116 + 16) = v164;
    *(v116 + 24) = v118;
    v119 = v167;
    (v161)(v167, 1, 1, v162);
    type metadata accessor for PMAccountPickerModel(0);
    swift_allocObject();

    sub_21C7AE6B0(v229, &v180);
    v120 = v174;
    *&v173 = v174;
    v121 = sub_21C7A4DA0(v229, v120, sub_21CB03020, v114, sub_21CB01634, v116, v119, nullsub_1, 0);
    v122 = v177;
    *(v177 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel) = v121;
    v123 = *&v122[v158];
    *v110 = v123;
    *(v110 + 1) = v121;
    v110[16] = v153;
    *(v110 + 3) = v176;
    *(v110 + 4) = v115;
    *(v110 + 5) = v117;
    *(v110 + 6) = v118;
    sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel, &unk_21CBC9390);

    v124 = v123;
    *(v110 + 7) = sub_21CB82674();
    *(v110 + 8) = v125;
    v126 = v170;
    v127 = *(v170 + 40);
    *&v110[v127] = swift_getKeyPath(asc_21CBC91B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    *&v110[*(v126 + 44)] = 0;
    v128 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8548, &qword_21CBC91E8));
    *&v122[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController] = sub_21CB833B4();
    v179.receiver = v122;
    v179.super_class = v172;
    v129 = objc_msgSendSuper2(&v179, sel_initWithNibName_bundle_, 0, 0);

    return v129;
  }

  return result;
}

id _PMPasswordAutoFillPocketViewController.init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:didSelectAccountHandler:didSelectTextToInsertHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, __int128 a12, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, unsigned __int8 a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, void *a28, __int16 a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v34 = sub_21CB0165C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);

  return v34;
}

void sub_21CAFE174(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = sub_21CB85584();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

char *_PMPasswordAutoFillPocketViewController.__allocating_init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:savedAccountForHistorySection:didSelectHistoryItem:didSelectAccountHandler:didSelectTextToInsertHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, unsigned __int8 a19, void *a20, unsigned int a21, unsigned int a22, unsigned int a23, unsigned int a24, unsigned int a25, unsigned int a26, unsigned int a27, unsigned int a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, void *a32, unsigned __int8 a33, unsigned __int8 a34, void *a35, void *a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v125 = a1;
  v126 = a4;
  v130 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  MEMORY[0x28223BE20](v130);
  v127 = (&v102 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v104);
  v103 = (&v102 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v48 - 8);
  v129 = &v102 - v49;
  v120 = objc_allocWithZone(v43);
  v124 = sub_21CB85584();

  if (a6)
  {
    v121 = sub_21CB85584();

    v50 = a13;
    if (a8)
    {
LABEL_3:
      v119 = sub_21CB85584();

      goto LABEL_6;
    }
  }

  else
  {
    v121 = 0;
    v50 = a13;
    if (a8)
    {
      goto LABEL_3;
    }
  }

  v119 = 0;
LABEL_6:
  v118 = sub_21CB85814();

  v117 = sub_21CB85814();

  if (v50)
  {
    v116 = sub_21CB85584();

    v51 = a17;
    if (a15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v131 = 0;
    v52 = a31;
    if (v51)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v116 = 0;
  v51 = a17;
  if (!a15)
  {
    goto LABEL_11;
  }

LABEL_8:
  v131 = sub_21CB85584();

  v52 = a31;
  if (v51)
  {
LABEL_9:
    v115 = sub_21CB85584();

    goto LABEL_13;
  }

LABEL_12:
  v115 = 0;
LABEL_13:
  v141 = a43;
  v140 = a37;
  v139 = a36;
  v132 = a35;
  v122 = a34;
  v112 = a33;
  v138 = a32;
  v113 = a29;
  v137 = a20;
  v114 = a19;
  v136 = a18;
  v135 = a11;
  v111 = a21;
  v110 = a23;
  v109 = a25;
  v108 = a26;
  v107 = a27;
  v106 = a28;
  if (v52)
  {
    v53 = sub_21CB85584();
  }

  else
  {
    v53 = 0;
  }

  v142 = a39;
  v123 = a38;
  v133 = a40;
  v144[4] = a40;
  v144[5] = a41;
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 1107296256;
  v144[2] = sub_21C7E80D4;
  v144[3] = &block_descriptor_39;
  v54 = _Block_copy(v144);
  v105 = v54;
  v128 = a41;

  v134 = a42;
  v144[4] = a42;
  v144[5] = v141;
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 1107296256;
  v144[2] = sub_21CAFF45C;
  v144[3] = &block_descriptor_22;
  v55 = _Block_copy(v144);

  v144[0] = __PAIR64__(a22, v111);
  v144[1] = __PAIR64__(a24, v110);
  v144[2] = __PAIR64__(v108, v109);
  v144[3] = __PAIR64__(v106, v107);
  v101 = v54;
  v122 &= 1u;
  BYTE1(v100) = v122;
  LOBYTE(v100) = v112 & 1;
  v99 = v53;
  v56 = v53;
  LOBYTE(v98) = v113 & 1;
  LOBYTE(v97) = v114 & 1;
  v57 = v115;
  v58 = v116;
  v59 = v117;
  v60 = v121;
  v61 = v124;
  v63 = v118;
  v62 = v119;
  v126 = [v120 initWithPersona:v125 appID:v124 credentialTypes:v126 promptString:v121 promptStringWhenPasskeysAreAvailable:v119 serviceNameHintStrings:v118 domainNameHintStrings:v117 savedAccountStore:v135 suggestedDomainForNewAccount:v116 localizedHostAppNameForNewAccount:v131 bundleIDForFallbackIconForNewAccount:v115 autoFillQuirksManager:v136 shouldShowAutoFillPasskeys:v97 currentWebFrameIdentifierForAutoFillPasskeys:v137 connectedAppAuditToken:v144 isConnectedAppAWebBrowser:v98 initialSearchQuery:v99 savedAccountToInitiallyShowDetailsFor:v138 shouldAllowAddingNewPasswords:v100 bypassLockoutPolicy:v132 authenticatedContext:v139 savedAccountContext:v101 didSelectAccountHandler:v55 didSelectTextToInsertHandler:?];
  _Block_release(v55);
  _Block_release(v105);

  v64 = v126;
  v65 = v129;
  v66 = v140;
  if (v140)
  {
    v67 = v103;
    *v103 = v140;
    swift_storeEnumTagMultiPayload();
    v68 = v66;
    sub_21C7C87D0(v67, v65);
    v69 = type metadata accessor for PMAccount(0);
    (*(*(v69 - 8) + 56))(v65, 0, 1, v69);
    v70 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
    swift_beginAccess();
    sub_21C7AE758(v65, &v64[v70]);
    swift_endAccess();
  }

  v71 = &v64[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  v72 = *&v64[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  v73 = *&v64[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem + 8];
  v74 = v123;
  v75 = v142;
  *v71 = v123;
  v71[1] = v75;

  sub_21C71B710(v72, v73);
  v76 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration;
  swift_beginAccess();
  memcpy(v144, &v64[v76], 0x140uLL);
  v77 = swift_allocObject();
  v78 = v128;
  *(v77 + 16) = v133;
  *(v77 + 24) = v78;
  v79 = swift_allocObject();
  v80 = v141;
  *(v79 + 16) = v134;
  *(v79 + 24) = v80;
  v81 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C6EDBAC(&v64[v81], v65, &unk_27CDEBE60, &unk_21CB9FF40);
  v82 = swift_allocObject();
  v83 = v142;
  *(v82 + 16) = v74;
  *(v82 + 24) = v83;
  type metadata accessor for PMAccountPickerModel(0);
  swift_allocObject();

  sub_21C7AE6B0(v144, &v143);
  v84 = v132;
  v131 = v132;
  v85 = sub_21C7A4DA0(v144, v84, sub_21CB025AC, v77, sub_21CB0300C, v79, v65, sub_21CB025C8, v82);
  *&v64[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel] = v85;

  v86 = *&v64[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState];
  v87 = v127;
  *v127 = v86;
  v87[1] = v85;
  *(v87 + 16) = v122;
  v88 = v134;
  v87[3] = v133;
  v87[4] = v78;
  v87[5] = v88;
  v87[6] = v80;
  type metadata accessor for PMSafariAutoFillModel(0);
  sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel, &unk_21CBC9390);

  v89 = v86;

  v87[7] = sub_21CB82674();
  v87[8] = v90;
  v91 = v130;
  v92 = *(v130 + 40);
  *(v87 + v92) = swift_getKeyPath(asc_21CBC91B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  *(v87 + *(v91 + 44)) = 0;
  v93 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8548, &qword_21CBC91E8));
  v94 = sub_21CB833B4();

  v95 = *&v64[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController];
  *&v64[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController] = v94;

  return v64;
}

char *_PMPasswordAutoFillPocketViewController.init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:savedAccountForHistorySection:didSelectHistoryItem:didSelectAccountHandler:didSelectTextToInsertHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, unsigned __int8 a19, void *a20, unsigned int a21, unsigned int a22, unsigned int a23, unsigned int a24, unsigned int a25, unsigned int a26, unsigned int a27, unsigned int a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, void *a32, unsigned __int8 a33, unsigned __int8 a34, void *a35, void *a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v125 = a4;
  v124 = a1;
  v130 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  MEMORY[0x28223BE20](v130);
  v128 = (&v102 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v104);
  v103 = (&v102 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v47 - 8);
  v127 = &v102 - v48;
  v123 = sub_21CB85584();

  if (a6)
  {
    v120 = sub_21CB85584();

    v49 = a13;
    if (a8)
    {
LABEL_3:
      v119 = sub_21CB85584();

      goto LABEL_6;
    }
  }

  else
  {
    v120 = 0;
    v49 = a13;
    if (a8)
    {
      goto LABEL_3;
    }
  }

  v119 = 0;
LABEL_6:
  v118 = sub_21CB85814();

  v117 = sub_21CB85814();

  if (v49)
  {
    v116 = sub_21CB85584();

    v50 = a17;
    if (a15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v131 = 0;
    v51 = a31;
    if (v50)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v116 = 0;
  v50 = a17;
  if (!a15)
  {
    goto LABEL_11;
  }

LABEL_8:
  v131 = sub_21CB85584();

  v51 = a31;
  if (v50)
  {
LABEL_9:
    v52 = sub_21CB85584();

    goto LABEL_13;
  }

LABEL_12:
  v52 = 0;
LABEL_13:
  v141 = a43;
  v140 = a37;
  v139 = a36;
  v132 = a35;
  v122 = a34;
  v113 = a33;
  v138 = a32;
  v114 = a29;
  v137 = a20;
  LODWORD(v115) = a19;
  v136 = a18;
  v135 = a11;
  v112 = a21;
  v111 = a22;
  v106 = a24;
  v110 = a25;
  v109 = a26;
  v108 = a27;
  v107 = a28;
  if (v51)
  {
    v53 = sub_21CB85584();
  }

  else
  {
    v53 = 0;
  }

  v142 = a39;
  v121 = a38;
  v133 = a40;
  v144[4] = a40;
  v144[5] = a41;
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 1107296256;
  v144[2] = sub_21C7E80D4;
  v144[3] = &block_descriptor_35;
  v54 = _Block_copy(v144);
  v105 = v54;
  v129 = a41;

  v134 = a42;
  v144[4] = a42;
  v144[5] = v141;
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 1107296256;
  v144[2] = sub_21CAFF45C;
  v144[3] = &block_descriptor_38_0;
  v55 = _Block_copy(v144);

  v144[0] = __PAIR64__(v111, v112);
  v144[1] = __PAIR64__(v106, a23);
  v144[2] = __PAIR64__(v109, v110);
  v144[3] = __PAIR64__(v107, v108);
  v101 = v54;
  v122 &= 1u;
  BYTE1(v100) = v122;
  LOBYTE(v100) = v113 & 1;
  v99 = v53;
  v56 = v53;
  LOBYTE(v98) = v114 & 1;
  LOBYTE(v97) = v115 & 1;
  v96 = v52;
  v115 = v52;
  v57 = v116;
  v58 = v117;
  v59 = v123;
  v61 = v119;
  v60 = v120;
  v62 = v118;
  v63 = [v126 initWithPersona:v124 appID:v123 credentialTypes:v125 promptString:v120 promptStringWhenPasskeysAreAvailable:v119 serviceNameHintStrings:v118 domainNameHintStrings:v117 savedAccountStore:v135 suggestedDomainForNewAccount:v116 localizedHostAppNameForNewAccount:v131 bundleIDForFallbackIconForNewAccount:v96 autoFillQuirksManager:v136 shouldShowAutoFillPasskeys:v97 currentWebFrameIdentifierForAutoFillPasskeys:v137 connectedAppAuditToken:v144 isConnectedAppAWebBrowser:v98 initialSearchQuery:v99 savedAccountToInitiallyShowDetailsFor:v138 shouldAllowAddingNewPasswords:v100 bypassLockoutPolicy:v132 authenticatedContext:v139 savedAccountContext:v101 didSelectAccountHandler:v55 didSelectTextToInsertHandler:?];
  _Block_release(v55);
  _Block_release(v105);

  v64 = v127;
  v65 = v140;
  if (v140)
  {
    v66 = v103;
    *v103 = v140;
    swift_storeEnumTagMultiPayload();
    v67 = v65;
    sub_21C7C87D0(v66, v64);
    v68 = type metadata accessor for PMAccount(0);
    (*(*(v68 - 8) + 56))(v64, 0, 1, v68);
    v69 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
    swift_beginAccess();
    sub_21C7AE758(v64, &v63[v69]);
    swift_endAccess();
  }

  v70 = &v63[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  v71 = *&v63[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  v72 = *&v63[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem + 8];
  v73 = v121;
  v74 = v142;
  *v70 = v121;
  v70[1] = v74;

  sub_21C71B710(v71, v72);
  v75 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration;
  swift_beginAccess();
  memcpy(v144, &v63[v75], 0x140uLL);
  v76 = swift_allocObject();
  v77 = v129;
  *(v76 + 16) = v133;
  *(v76 + 24) = v77;
  v78 = swift_allocObject();
  v79 = v141;
  *(v78 + 16) = v134;
  *(v78 + 24) = v79;
  v80 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C6EDBAC(&v63[v80], v64, &unk_27CDEBE60, &unk_21CB9FF40);
  v81 = swift_allocObject();
  v82 = v142;
  *(v81 + 16) = v73;
  *(v81 + 24) = v82;
  type metadata accessor for PMAccountPickerModel(0);
  swift_allocObject();

  sub_21C7AE6B0(v144, &v143);
  v83 = v132;
  v131 = v132;
  v84 = sub_21C7A4DA0(v144, v83, sub_21CB03020, v76, sub_21CB0300C, v78, v64, sub_21CB0301C, v81);
  *&v63[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel] = v84;

  v85 = *&v63[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState];
  v86 = v128;
  *v128 = v85;
  v86[1] = v84;
  *(v86 + 16) = v122;
  v87 = v134;
  v86[3] = v133;
  v86[4] = v77;
  v86[5] = v87;
  v86[6] = v79;
  type metadata accessor for PMSafariAutoFillModel(0);
  sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel, &unk_21CBC9390);

  v88 = v85;

  v86[7] = sub_21CB82674();
  v86[8] = v89;
  v90 = v130;
  v91 = *(v130 + 40);
  *(v86 + v91) = swift_getKeyPath(asc_21CBC91B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  *(v86 + *(v90 + 44)) = 0;
  v92 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8548, &qword_21CBC91E8));
  v93 = sub_21CB833B4();

  v94 = *&v63[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController];
  *&v63[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController] = v93;

  return v63;
}

uint64_t sub_21CAFF45C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_21CB855C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_21CAFF4F4(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_21C6EDBAC(a1, &v12 - v8, &unk_27CDEBE60, &unk_21CB9FF40);
  v10 = type metadata accessor for PMAccount(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_21C6EA794(v9, &unk_27CDEBE60, &unk_21CB9FF40);
    v11 = 0;
  }

  else
  {
    sub_21CB02DAC(&v9[*(v10 + 24)], v6, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CB02E14(v6, type metadata accessor for PMAccount.Storage);
      v11 = 0;
    }

    else
    {
      v11 = *v6;
    }

    sub_21CB02E14(v9, type metadata accessor for PMAccount);
  }

  a2(v11);
}

void sub_21CAFF6E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v16 - v12;
  sub_21C6EDBAC(a1, &v16 - v12, &unk_27CDEBE60, &unk_21CB9FF40);
  v14 = type metadata accessor for PMAccount(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
    v15 = 0;
  }

  else
  {
    sub_21CB02DAC(&v13[*(v14 + 24)], v10, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CB02E14(v10, type metadata accessor for PMAccount.Storage);
      v15 = 0;
    }

    else
    {
      v15 = *v10;
    }

    sub_21CB02E14(v13, type metadata accessor for PMAccount);
  }

  a4(v15, a2, a3);
}

void sub_21CAFFC54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    a3 = sub_21CB85584();
  }

  v6 = a3;
  (*(a4 + 16))(a4, a1);
}

void sub_21CAFFD7C()
{
  v1 = v0;
  v2 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  v9 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState];
  v10 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel];
  v11 = v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_bypassLockoutPolicy];
  v13 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectTextToInsertHandler];
  v19[0] = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectAccountHandler];
  v12 = v19[0];
  v19[1] = v13;
  *v8 = v9;
  *(v8 + 1) = v10;
  v8[16] = v11;
  *(v8 + 40) = v13;
  *(v8 + 24) = v12;
  type metadata accessor for PMSafariAutoFillModel(0);
  sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel, &unk_21CBC9390);
  v14 = v9;

  *(v8 + 7) = sub_21CB82674();
  *(v8 + 8) = v15;
  v16 = *(v3 + 48);
  *&v8[v16] = swift_getKeyPath(asc_21CBC91B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  *&v8[*(v3 + 52)] = 0;
  sub_21CB02DAC(v8, v5, type metadata accessor for PMPasswordAutoFillPocketView);
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8550, &qword_21CBC91F0));
  v18 = sub_21CB827D4();
  sub_21CB02E14(v8, type metadata accessor for PMPasswordAutoFillPocketView);
  [v1 setView_];
}

void *sub_21CB00010()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel) + 352);
  v2 = v1;
  return v1;
}

void sub_21CB00058(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);
  v5 = *(v3 + 352);
  *(v3 + 352) = a1;

  v4 = a1;
}

uint64_t sub_21CB00114()
{
  swift_getKeyPath(byte_21CBC91F8);
  swift_getKeyPath(byte_21CBC9220);

  sub_21CB81DB4();

  return v1;
}

double sub_21CB00264(unint64_t a1, unint64_t a2)
{

  sub_21C7A6110(a1, a2);

  return result;
}

uint64_t sub_21CB00354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel;
  v8 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);

  v10 = sub_21CB009AC(v9);

  *(v8 + 192) = v10;

  v11 = *(v4 + v7);

  v13 = sub_21CB009AC(v12);

  *(v11 + 200) = v13;

  v14 = *(v4 + v7);
  *(v14 + 208) = a3;
  *(v14 + 216) = a4;
}

id _PMPasswordAutoFillPocketViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21CB85584();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id _PMPasswordAutoFillPocketViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMPasswordAutoFillPocketViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21CB00724(uint64_t a1@<X8>)
{
  v3 = sub_21CB81824();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85A0, &unk_21CBC93D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v20 - v11;
  v14 = v1[1];
  v15 = *(*v1 + 16);
  if (v14 == v15)
  {
    (*(v4 + 56))(&v20 - v11, 1, 1, v3, v12);
  }

  else
  {
    if (v14 >= v15)
    {
      __break(1u);
      return;
    }

    (*(v4 + 16))(&v20 - v11, *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v3, v12);
    v1[1] = v14 + 1;
    (*(v4 + 56))(v13, 0, 1, v3, v16);
  }

  v17 = v1[2];
  sub_21C716934(v13, v9, &qword_27CDF85A0, &unk_21CBC93D0);
  v18 = 1;
  if ((*(v4 + 48))(v9, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    v17(v6);
    (*(v4 + 8))(v6, v3);
    v18 = 0;
  }

  v19 = sub_21CB813C4();
  (*(*(v19 - 8) + 56))(a1, v18, 1, v19);
}

uint64_t sub_21CB009AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CF154F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21CA94078(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21CB00A44(uint64_t a1)
{
  v2 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21CAFC780(&qword_27CDF85B0, type metadata accessor for PMTOTPMigrationModel.TOTPCode, &unk_21CBCE054);
  result = MEMORY[0x21CF154F0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21CB02DAC(v12, v5, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      sub_21CA941C8(v8, v5);
      sub_21CB02E14(v8, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21CB00BD4(uint64_t a1)
{
  v2 = sub_21CB85BB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21CAFC780(&qword_27CDEAF60, MEMORY[0x277D49948], MEMORY[0x277D49950]);
  result = MEMORY[0x21CF154F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_21CA94CC4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_21CB00D70(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21CAFC780(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  result = MEMORY[0x21CF154F0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_21CA93D98(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_21CB00F0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21CB02FA4();
  result = MEMORY[0x21CF154F0](v2, &type metadata for PMGroupMember, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[5];
      v12[4] = v5[4];
      v12[5] = v6;
      v12[6] = v5[6];
      v7 = v5[1];
      v12[0] = *v5;
      v12[1] = v7;
      v8 = v5[3];
      v12[2] = v5[2];
      v12[3] = v8;
      sub_21C7A33F0(v12, v10);
      sub_21CA94FA4(v9, v12);
      v10[4] = v9[4];
      v10[5] = v9[5];
      v10[6] = v9[6];
      v10[0] = v9[0];
      v10[1] = v9[1];
      v10[2] = v9[2];
      v10[3] = v9[3];
      sub_21C7A344C(v10);
      v5 += 7;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_21CB00FD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21CA1A9CC();
  result = MEMORY[0x21CF154F0](v2, &type metadata for PMWiFiNetworkIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_21CA95338(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_21CB01070(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21CAFC780(&qword_27CDEB1C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  result = MEMORY[0x21CF154F0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21CB02DAC(v12, v5, type metadata accessor for PMAccount);
      sub_21CA95488(v8, v5);
      sub_21CB02E14(v8, type metadata accessor for PMAccount);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21CB01200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB813C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v22 - v14;
  v16 = *(a1 + 16);
  v17 = sub_21CAFC780(&qword_27CDF0CC8, MEMORY[0x277CBA690], MEMORY[0x277CBA698]);
  v18 = MEMORY[0x21CF154F0](v16, v6, v17);
  v22[4] = a3;
  v23 = v18;
  v22[1] = a1;
  v22[2] = 0;
  v22[3] = a2;
  sub_21CB00724(v15);
  v19 = *(v7 + 48);
  if (v19(v15, 1, v6) != 1)
  {
    v20 = *(v7 + 32);
    do
    {
      v20(v9, v15, v6);
      sub_21CA96B80(v12, v9);
      (*(v7 + 8))(v12, v6);
      sub_21CB00724(v15);
    }

    while (v19(v15, 1, v6) != 1);
    return v23;
  }

  return v18;
}

uint64_t sub_21CB0143C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_21CB02EF0();
  result = MEMORY[0x21CF154F0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_21C6EDBAC(v12, v5, &unk_27CDED250, &qword_21CBA64C0);
      sub_21CA96FB4(v8, v5);
      sub_21C6EA794(v8, &unk_27CDED250, &qword_21CBA64C0);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_21CB015A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2200, &qword_21CBB3690);
  v4 = sub_21CB02E74();
  result = MEMORY[0x21CF154F0](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 16;
      sub_21CA96E60(v9, v7, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

id sub_21CB0165C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, unsigned __int8 a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, void *a27, __int16 a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = v34;
  v155 = a6;
  v156 = a8;
  v132 = a5;
  v133 = a7;
  v174 = a4;
  v153 = a2;
  v154 = a3;
  v168 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  MEMORY[0x28223BE20](v168);
  v169 = (&v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v38 - 8);
  v167 = &v131 - v39;
  v151 = sub_21CB81024();
  *(&v170 + 1) = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  *&v170 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v131 - v42;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  MEMORY[0x28223BE20](v173);
  v162 = &v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v131 - v46;
  v48 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  v49 = type metadata accessor for PMAccount(0);
  v50 = *(v49 - 8);
  v160 = *(v50 + 56);
  v161 = v49;
  v159 = v50 + 56;
  v160(v35 + v48, 1, 1);
  v51 = (v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem);
  *v51 = 0;
  v51[1] = 0;
  if (a1 >= 3)
  {
    result = sub_21CB861C4();
    __break(1u);
  }

  else
  {
    v152 = HIBYTE(a28);
    v172 = a10;
    v171 = a9;
    v52 = byte_282E491E8[a1 + 32];
    *(v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_persona) = v52;
    *(v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountStore) = a11;
    *(v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_autoFillQuirksManager) = a17;
    v53 = (v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectAccountHandler);
    v163 = a31;
    v164 = a33;
    *v53 = a31;
    v53[1] = a32;
    v54 = (v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectTextToInsertHandler);
    *v54 = a33;
    v54[1] = a34;
    type metadata accessor for PMPasswordManager(0);
    swift_allocObject();
    v55 = a17;
    v165 = a32;

    v166 = a34;

    v56 = a11;
    sub_21C6EBF3C(a11, a17);
    v58 = v57;
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v59 = qword_27CE184E8;
    swift_beginAccess();
    *(v59 + 72) = v58;
    *(v59 + 80) = &off_282E59B38;
    swift_unknownObjectRelease();
    v60 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState(0)) init];
    v157 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState;
    *(v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState) = v60;
    v158 = type metadata accessor for PMSafariAutoFillModel(0);
    v61 = swift_allocObject();
    v62 = OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__openURL;
    *(v61 + v62) = swift_getKeyPath(aH_110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
    swift_storeEnumTagMultiPayload();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
    (*(*(v63 - 8) + 56))(v47, 1, 1, v63);
    sub_21C6EDBAC(v47, v162, &qword_27CDEFEE8, &unk_21CBADDE0);
    sub_21CB81D74();
    sub_21C6EA794(v47, &qword_27CDEFEE8, &unk_21CBADDE0);
    *(v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_model) = v61;
    v173 = v35;
    v152 &= 1u;
    *(v35 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_bypassLockoutPolicy) = v152;
    v162 = v61;

    v149 = sub_21CB009AC(v64);

    v147 = sub_21CB009AC(v65);

    v222 = 1;
    v131 = objc_opt_self();
    v148 = [v131 defaultContext];
    v66 = sub_21C7EA4E4(v52);
    v142 = v67;
    v143 = v66;
    sub_21CB81014();
    v68 = v170;
    sub_21CB81014();
    v69 = sub_21CB80FF4();
    v140 = v70;
    v141 = v69;
    v71 = *(*(&v170 + 1) + 8);
    v72 = v151;
    v71(v68, v151);
    v71(v43, v72);
    v73 = sub_21C7EA67C(v52, v174);
    v138 = v74;
    v139 = v73;
    v150 = v52;
    if (v52)
    {
      v136 = 0xE000000000000000;
      v137 = 0;
    }

    else
    {
      sub_21CB81014();
      v75 = sub_21CB81004();
      v136 = v76;
      v137 = v75;
      v71(v43, v72);
    }

    v170 = a12;
    sub_21CB81014();
    v77 = sub_21CB81004();
    v134 = v78;
    v135 = v77;
    v71(v43, v72);
    sub_21CB81014();
    v79 = sub_21CB81004();
    v81 = v80;
    v71(v43, v72);
    sub_21CB81014();
    v151 = a23;
    v146 = a22;
    v145 = a21;
    v144 = a20;
    v82 = sub_21CB81004();
    v84 = v83;
    v71(v43, v72);
    v85 = v150;
    v86 = v174;
    v87 = sub_21C7EA7D4(v150, v174);
    LOBYTE(v177[0]) = v85;
    *(v177 + 1) = v224[0];
    DWORD1(v177[0]) = *(v224 + 3);
    *&v177[1] = 0;
    *(&v177[0] + 1) = 0;
    *(&v177[1] + 1) = v143;
    *&v177[2] = v142;
    *(&v177[2] + 1) = v141;
    *&v177[3] = v140;
    *(&v177[3] + 1) = v139;
    *&v177[4] = v138;
    *(&v177[4] + 1) = v137;
    *&v177[5] = v136;
    *(&v177[5] + 1) = v135;
    *&v177[6] = v134;
    *(&v177[6] + 1) = v79;
    *&v177[7] = v81;
    *(&v177[7] + 1) = v82;
    *&v177[8] = v84;
    *(&v177[8] + 1) = v87;
    *&v177[9] = v88;
    *(&v177[9] + 1) = v86;
    *&v177[10] = v149;
    *(&v177[10] + 1) = v147;
    v177[11] = v170;
    memset(&v177[12], 0, 33);
    *(&v177[14] + 1) = *v223;
    DWORD1(v177[14]) = *&v223[3];
    *(&v177[14] + 8) = 0u;
    *(&v177[15] + 8) = 0u;
    *(&v177[16] + 1) = 0;
    LOWORD(v177[17]) = v222;
    *(&v177[17] + 2) = v220;
    WORD3(v177[17]) = v221;
    v177[18] = 0uLL;
    *(&v177[17] + 1) = 0;
    LOBYTE(v177[19]) = 1;
    *(&v177[19] + 1) = *v219;
    DWORD1(v177[19]) = *&v219[3];
    *(&v177[19] + 1) = v148;
    v178 = v85;
    *&v179[3] = *(v224 + 3);
    *v179 = v224[0];
    v180 = 0;
    v181 = 0;
    v182 = v143;
    v183 = v142;
    v184 = v141;
    v185 = v140;
    v186 = v139;
    v187 = v138;
    v188 = v137;
    v189 = v136;
    v190 = v135;
    v191 = v134;
    v192 = v79;
    v193 = v81;
    v194 = v82;
    v195 = v84;
    v196 = v87;
    v197 = v88;
    v198 = v86;
    v199 = v149;
    v200 = v147;
    v201 = v170;
    v204 = 0;
    v202 = 0u;
    v203 = 0u;
    *v205 = *v223;
    *&v205[3] = *&v223[3];
    v206 = 0u;
    v207 = 0u;
    v208 = 0;
    v209 = v222;
    v210 = 0;
    v211 = v220;
    v212 = v221;
    v214 = 0;
    v213 = 0;
    v215 = 0;
    v216 = 1;
    *v217 = *v219;
    *&v217[3] = *&v219[3];
    v218 = v148;

    sub_21C7AE6B0(v177, v225);
    sub_21C7ADFB8(&v178);
    v89 = v173 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration;
    memcpy((v173 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration), v177, 0x140uLL);
    swift_beginAccess();
    v90 = v154;
    *(v89 + 8) = v153;
    *(v89 + 16) = v90;
    *(v89 + 152) = v86;

    v91 = v155;
    if (v155)
    {
      *(v89 + 56) = v132;
      *(v89 + 64) = v91;
    }

    LODWORD(v149) = a18;
    v92 = v156;
    if (v156)
    {
      *(v89 + 72) = v133;
      *(v89 + 80) = v92;
    }

    v174 = a29;
    v156 = a30;
    LODWORD(v155) = a28;
    v154 = a26;
    v153 = a25;
    v150 = a24;
    v93 = sub_21CB009AC(v171);

    *(v89 + 160) = v93;

    v94 = sub_21CB009AC(v172);

    swift_beginAccess();
    *(v89 + 168) = v94;

    v95 = *(&v170 + 1);
    *(v89 + 176) = v170;
    *(v89 + 184) = v95;

    *(v89 + 192) = a13;
    *(v89 + 200) = a14;

    *(v89 + 208) = a15;
    *(v89 + 216) = a16;

    *(v89 + 224) = v149 & 1;
    v96 = *(v89 + 232);
    *(v89 + 232) = a19;
    v97 = a19;

    v99 = v144;
    v98 = v145;
    v100 = v146;
    v101 = v151;
    v102 = sub_21CB85AC4();
    if (v102)
    {
      v99 = 0;
      v98 = 0;
      v100 = 0;
      v101 = 0;
    }

    *(v89 + 240) = v99;
    *(v89 + 248) = v98;
    *(v89 + 256) = v100;
    *(v89 + 264) = v101;
    *(v89 + 272) = v102 & 1;
    *(v89 + 273) = v150 & 1;
    v103 = *(v89 + 296);
    v104 = v154;
    *(v89 + 280) = v153;
    *(v89 + 288) = v104;
    *(v89 + 296) = a27;
    *(v89 + 304) = v155 & 1;
    v105 = a27;
    swift_endAccess();

    v106 = v156;
    if (v156)
    {
      v107 = v156;
    }

    else
    {
      v107 = [v131 defaultContext];
    }

    v108 = *(v89 + 312);
    *(v89 + 312) = v107;
    v109 = v106;

    memcpy(v225, v89, 0x140uLL);
    v110 = swift_allocObject();
    v111 = v163;
    v112 = v165;
    *(v110 + 16) = v163;
    *(v110 + 24) = v112;
    v113 = swift_allocObject();
    v114 = v164;
    v116 = v166;
    v115 = v167;
    *(v113 + 16) = v164;
    *(v113 + 24) = v116;
    (v160)(v115, 1, 1, v161);
    type metadata accessor for PMAccountPickerModel(0);
    swift_allocObject();

    sub_21C7AE6B0(v225, &v176);
    v117 = v174;
    v118 = v174;
    v119 = sub_21C7A4DA0(v225, v117, sub_21CB03020, v110, sub_21CB0300C, v113, v115, nullsub_1, 0);
    v120 = v173;
    *(v173 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel) = v119;
    v121 = *&v120[v157];
    v122 = v169;
    *v169 = v121;
    v122[1] = v119;
    *(v122 + 16) = v152;
    v122[3] = v111;
    v122[4] = v112;
    v122[5] = v114;
    v122[6] = v116;
    sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel, &unk_21CBC9390);

    v123 = v121;
    v122[7] = sub_21CB82674();
    v122[8] = v124;
    v125 = v168;
    v126 = *(v168 + 40);
    *(v122 + v126) = swift_getKeyPath(asc_21CBC91B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    *(v122 + *(v125 + 44)) = 0;
    v127 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8548, &qword_21CBC91E8));
    *&v120[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController] = sub_21CB833B4();
    v128 = type metadata accessor for _PMPasswordAutoFillPocketViewController(0);
    v175.receiver = v120;
    v175.super_class = v128;
    v129 = objc_msgSendSuper2(&v175, sel_initWithNibName_bundle_, 0, 0);

    return v129;
  }

  return result;
}

void sub_21CB02614(uint64_t a1)
{
  sub_21CB02D24(319, &qword_27CDF8568, MEMORY[0x277CDF708], MEMORY[0x277CDF458]);
  if (v1 <= 0x3F)
  {
    sub_21CB028FC(319, &qword_27CDF8570, &qword_27CDEFEE8, &unk_21CBADDE0, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CB02760(uint64_t a1)
{
  type metadata accessor for PMPasswordManagerState(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMAccountPickerModel(319);
    if (v2 <= 0x3F)
    {
      sub_21C7226D8();
      if (v3 <= 0x3F)
      {
        sub_21CB02868(319);
        if (v4 <= 0x3F)
        {
          sub_21CB028FC(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CB02868(uint64_t a1)
{
  if (!qword_27CDF8588)
  {
    type metadata accessor for PMSafariAutoFillModel(255);
    sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel, &unk_21CBC9390);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF8588);
    }
  }
}

void sub_21CB028FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21CB02968(uint64_t a1)
{
  sub_21CB02D24(319, &qword_27CDF62D0, type metadata accessor for PMAccount, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of _PMPasswordAutoFillPocketViewController.__allocating_init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:didSelectAccountHandler:didSelectTextToInsertHandler:)()
{
  v2 = *(v0 + 320);

  return v2();
}

void sub_21CB02D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21CB02DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB02E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB02E74()
{
  result = qword_27CDF85B8;
  if (!qword_27CDF85B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2200, &qword_21CBB3690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF85B8);
  }

  return result;
}

unint64_t sub_21CB02EF0()
{
  result = qword_27CDF85C0;
  if (!qword_27CDF85C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED250, &qword_21CBA64C0);
    sub_21CAFC780(&qword_27CDEC280, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF85C0);
  }

  return result;
}

unint64_t sub_21CB02FA4()
{
  result = qword_27CDF85C8;
  if (!qword_27CDF85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF85C8);
  }

  return result;
}

Swift::Void __swiftcall PMCredentialPickerViewController.refreshConfirmButton()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_21CB81604();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21C6EA794(v2, &qword_27CDF85D0, &qword_21CBC9430);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_21CB05380();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_21CB031D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id PMCredentialPickerViewControllerBase.init(requiringTableView:)(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PMCredentialPickerViewControllerBase();
  return objc_msgSendSuper2(&v4, sel_initRequiringTableView_, a1 & 1);
}

uint64_t sub_21CB03300()
{
  swift_getKeyPath(byte_21CBC9470);
  swift_getKeyPath(byte_21CBC9498);
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CB03374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v40 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8990, &qword_21CBC9698);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = sub_21CB81884();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8998, &qword_21CBC96A0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  (*(v12 + 16))(v14, a1, v11, v20);
  v23 = *(a1 + *(type metadata accessor for PMCredentialPickerViewController.CredentialPickerHeaderView(0) + 20));
  sub_21C97BCD0(v14, v23, v22);
  LOBYTE(v14) = sub_21CB83D04();
  v24 = sub_21CB81F24();
  v25 = &v22[*(v16 + 44)];
  *v25 = v14;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  v30 = sub_21CB0373C(v24);
  if (v30)
  {
    v31 = v30;
    v32 = v23;
    v33 = v39;
    sub_21C8A2180(v31, v32, v39);
    sub_21CB16FC0(v33, v10, type metadata accessor for PMPasskeyAccountRegistrationContentView);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v3 + 56))(v10, v34, 1, v40);
  sub_21C6EDBAC(v22, v18, &qword_27CDF8998, &qword_21CBC96A0);
  sub_21C6EDBAC(v10, v7, &qword_27CDF8990, &qword_21CBC9698);
  v35 = v41;
  sub_21C6EDBAC(v18, v41, &qword_27CDF8998, &qword_21CBC96A0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF89A0, &qword_21CBC96A8);
  sub_21C6EDBAC(v7, v35 + *(v36 + 48), &qword_27CDF8990, &qword_21CBC9698);
  sub_21C6EA794(v10, &qword_27CDF8990, &qword_21CBC9698);
  sub_21C6EA794(v22, &qword_27CDF8998, &qword_21CBC96A0);
  sub_21C6EA794(v7, &qword_27CDF8990, &qword_21CBC9698);
  return sub_21C6EA794(v18, &qword_27CDF8998, &qword_21CBC96A0);
}

uint64_t sub_21CB0373C(uint64_t a1)
{
  v1 = sub_21CB816C4();
  v2 = [v1 requestTypes];

  if (v2 != 512)
  {
    return 0;
  }

  v3 = sub_21CB816A4();
  v4 = v3;
  if (v3 >> 62)
  {
LABEL_17:
    v5 = sub_21CB85FA4();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_18:

    return 0;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_4:
  v6 = 0;
  while ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x21CF15BD0](v6, v4);
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_21CB81BE4();
    if ([v7 isKindOfClass_])
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    ++v6;
    if (v8 == v5)
    {
      goto LABEL_18;
    }
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v4 + 8 * v6 + 32);
  swift_unknownObjectRetain();
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_21CB03894@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB832E4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8988, &qword_21CBC9690);
  return sub_21CB03374(v2, a2 + *(v4 + 44));
}

void sub_21CB038E4()
{
  v1 = v0;
  v2 = sub_21CB81024();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81674();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v65 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v65 - v12;
  v14 = sub_21CB81604();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x28223BE20](v14);
  v65 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21CB83BD4();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = type metadata accessor for PMCredentialPickerViewController.CredentialPickerHeaderView(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PMCredentialPickerViewController(0);
  v75.receiver = v0;
  v75.super_class = v21;
  objc_msgSendSuper2(&v75, sel_viewDidLoad);
  v22 = [v0 tableView];
  [v22 setDataSource_];

  v23 = [v1 tableView];
  sub_21C6E8F4C(0, &qword_27CDF85E0, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = sub_21CB85584();
  [v23 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v25];

  v26 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_uiContext;
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow] = sub_21CB816A4();

  v27 = sub_21CB81884();
  (*(*(v27 - 8) + 16))(v20, &v1[v26], v27);
  *&v20[*(v18 + 28)] = v1;
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85F0, &qword_21CBC9438));
  v29 = v1;
  v30 = sub_21CB833B4();
  sub_21CB83BC4();
  sub_21CB833A4();
  v31 = v30;
  v32 = [v31 view];
  if (!v32)
  {
    __break(1u);
    goto LABEL_31;
  }

  v33 = v32;
  [v32 setAutoresizingMask_];

  v34 = [v31 view];
  if (!v34)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v35 = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];

  v36 = [v31 view];
  if (!v36)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v37 = v36;
  v38 = [objc_opt_self() clearColor];
  [v37 setBackgroundColor_];

  [v29 addChildViewController_];
  [v31 didMoveToParentViewController_];
  v39 = [v29 paneHeaderStackView];
  v40 = v31;
  if (!v39)
  {
    goto LABEL_7;
  }

  v41 = v39;
  v40 = [v31 view];

  if (!v40)
  {
LABEL_33:
    __break(1u);
    return;
  }

  [v41 addArrangedSubview_];

LABEL_7:
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  v43 = v71;
  v42 = v72;
  if ((*(v71 + 48))(v13, 1, v72) == 1)
  {
    sub_21C6EA794(v13, &qword_27CDF85D0, &qword_21CBC9430);
  }

  else
  {
    v44 = v65;
    (*(v43 + 32))(v65, v13, v42);
    v45 = 8.0;
    if (([*&v29[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] isCombinedPublicKeyCredentialRegistrationRequest] & 1) == 0)
    {
      if (qword_27CDEA488 != -1)
      {
        swift_once();
      }

      v45 = *&qword_27CE18730;
    }

    v46 = [v29 footerPaneContext];
    [v46 addSubPane:*&v29[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] withCustomSpacingAfter:v45];

    sub_21CB05380();
    (*(v43 + 8))(v44, v42);
  }

  sub_21CB81684();
  v47 = sub_21CB1362C(v10);
  v49 = v48;
  v50 = v73;
  v51 = *(v73 + 8);
  v52 = v10;
  v53 = v74;
  v51(v52, v74);
  if (!v49)
  {
    goto LABEL_27;
  }

  v71 = v47;
  v72 = v29;
  v54 = v50;
  v55 = v69;
  sub_21CB81684();
  v56 = v70;
  (*(v54 + 32))(v70, v55, v53);
  v57 = (*(v54 + 88))(v56, v53);
  if (v57 == *MEMORY[0x277CBA7D8])
  {
    v58 = 0;
  }

  else
  {
    if (v57 != *MEMORY[0x277CBA7B8] && v57 != *MEMORY[0x277CBA7C8])
    {
      v59 = v71;
      if (v57 == *MEMORY[0x277CBA7C0] || v57 == *MEMORY[0x277CBA7D0])
      {
        v58 = sel_expandLoginChoicesButtonPressed;
      }

      else
      {
        v51(v56, v53);
        v58 = 0;
      }

      v60 = v59;
      goto LABEL_26;
    }

    v58 = sel_useCABLEButtonPressed;
  }

  v60 = v71;
LABEL_26:
  sub_21CB057CC(v60, v49, v58);

LABEL_27:
  if (sub_21CB81714())
  {
    v61 = v66;
    sub_21CB81014();
    v62 = sub_21CB81004();
    v64 = v63;
    (*(v67 + 8))(v61, v68);
    sub_21CB057CC(v62, v64, sel_manualPasswordEntryButtonPressed);
  }
}

uint64_t sub_21CB04204(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_21CB81604();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMCredentialPickerViewController(0);
  v13.receiver = v2;
  v13.super_class = v11;
  objc_msgSendSuper2(&v13, sel_viewIsAppearing_, a1 & 1);
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_21C6EA794(v6, &qword_27CDF85D0, &qword_21CBC9430);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_21CB05380();
  return (*(v8 + 8))(v10, v7);
}

void PMCredentialPickerViewController.__allocating_init(presentationContext:shouldExpandOtherLoginChoices:activity:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  PMCredentialPickerViewController.init(presentationContext:shouldExpandOtherLoginChoices:activity:)(a1, v5, a3);
}

void PMCredentialPickerViewController.init(presentationContext:shouldExpandOtherLoginChoices:activity:)(char *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v90 = a3;
  LODWORD(v89) = a2;
  v88 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8608, &qword_21CBC9440);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v73 - v6;
  v7 = sub_21CB81794();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB85CE4();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_21CB85CC4();
  MEMORY[0x28223BE20](v76);
  v77 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85404();
  MEMORY[0x28223BE20](v12 - 8);
  v75 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8610, &qword_21CBC9448);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8618, &qword_21CBC9450);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v73 - v18;
  v20 = sub_21CB81884();
  v91 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8620, &unk_21CBC9458);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v73 - v25;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow] = MEMORY[0x277D84F90];
  v84 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice] = 0;
  v85 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController] = 0;
  v86 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;
  v87 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton] = 0;
  v27 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController__selectedLoginChoiceIndex;
  v94 = 0;
  sub_21CB81D74();
  v28 = *(v24 + 32);
  v92 = v4;
  v29 = v26;
  v30 = v20;
  v28(&v4[v27], v29, v23);
  v31 = sub_21CB816D4();
  (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
  v32 = v88;
  v33 = v91;
  sub_21CB816B4();
  if ((*(v33 + 48))(v19, 1, v30) == 1)
  {

    swift_unknownObjectRelease();
    sub_21C6EA794(v19, &qword_27CDF8618, &qword_21CBC9450);
    v34 = v92;

    (*(v24 + 8))(&v34[v27], v23);
    type metadata accessor for PMCredentialPickerViewController(0);
    swift_deallocPartialClassInstance();
    return;
  }

  (*(v33 + 32))(v22, v19, v30);
  v35 = v92;
  *&v92[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] = v32;
  v36 = *(v33 + 16);
  v88 = v22;
  v89 = v30;
  v36(&v35[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_uiContext], v22, v30);
  v37 = v32;
  v38 = v90;
  swift_unknownObjectRetain();
  v39 = [v37 auditTokenData];
  v40 = sub_21CB80C84();
  v42 = v41;

  v43 = [v37 testOptions];
  v44 = objc_allocWithZone(MEMORY[0x277CBA948]);
  v45 = sub_21CB80C64();
  sub_21C7A34C0(v40, v42);
  v46 = [v44 initWithActivity:v38 auditTokenData:v45 testOptions:v43 addButtonPadding:0];
  swift_unknownObjectRelease();

  *&v35[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] = v46;
  v47 = [v37 appleIDAuthorizationRequest];
  if (!v47)
  {
    *&v92[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider] = 0;
    v57 = v82;
    v56 = v83;
    goto LABEL_12;
  }

  v48 = [v37 serviceName];
  if (!v48)
  {
    __break(1u);
LABEL_19:

    __break(1u);
    return;
  }

  v43 = v48;
  v49 = [v37 teamIdentifier];
  v42 = v49;
  if (!v49)
  {
    sub_21CB855C4();
    v42 = sub_21CB85584();
  }

  v50 = v49;
  v51 = [v37 bundleIdentifier];
  v45 = v51;
  if (!v51)
  {
    sub_21CB855C4();
    v45 = sub_21CB85584();
  }

  v52 = v51;
  v53 = [v37 appleIDAuthorizationRequest];
  if (!v53)
  {
    goto LABEL_19;
  }

  v54 = v53;

  v55 = [objc_allocWithZone(MEMORY[0x277CF0378]) initWithAppName:v43 teamIdentifier:v42 bundleIdentifier:v45 authorizationRequest:v54];
  *&v92[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider] = v55;
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  sub_21CB853E4();
  v94 = MEMORY[0x277D84F90];
  sub_21CB13C94(&unk_27CDF8670, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7700, &unk_21CBC5B60);
  sub_21C6EADEC(&qword_27CDF8680, &unk_27CDF7700, &unk_21CBC5B60, MEMORY[0x277D83970]);
  sub_21CB85F14();
  (*(v79 + 104))(v78, *MEMORY[0x277D85260], v80);
  v47 = sub_21CB85D14();
  v57 = v82;
  v56 = v83;
LABEL_12:
  v58 = v92;
  *&v92[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_alertQueue] = v47;
  v59 = [objc_opt_self() sharedMonitor];
  v60 = [v59 isKeychainSyncEnabled];

  v58[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_isKeychainSyncEnabled] = v60;
  v61 = type metadata accessor for PMCredentialPickerViewController(0);
  v93.receiver = v58;
  v93.super_class = v61;
  v62 = objc_msgSendSuper2(&v93, sel_initRequiringTableView_, 1);
  v63 = v81;
  v64 = v88;
  sub_21CB817A4();
  v65 = (*(v57 + 48))(v63, 1, v56);
  v66 = v91;
  if (v65 == 1)
  {
    sub_21C6EA794(v63, &qword_27CDF8608, &qword_21CBC9440);
  }

  else
  {
    v67 = v74;
    (*(v57 + 32))(v74, v63, v56);
    v68 = [v62 as_navigationItem];
    v69 = sub_21CB04FFC();
    [v68 setLeftBarButtonItem_];

    (*(v57 + 8))(v67, v56);
  }

  [*&v62[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] setDelegate_];
  v70 = *&v62[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider];
  v71 = v89;
  if (v70)
  {
    [v70 setPresentationProvider_];
  }

  v72 = [objc_opt_self() defaultCenter];
  [v72 addObserver:v62 selector:sel_keychainSyncStatusMayHaveChangedWithNotification_ name:*MEMORY[0x277D49C18] object:0];

  swift_unknownObjectRelease();
  (*(v66 + 8))(v64, v71);
}

id sub_21CB04FFC()
{
  v0 = sub_21CB81774();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = [objc_opt_self() systemFontOfSize:20.0 weight:*MEMORY[0x277D74420]];
  [v4 setFont_];

  sub_21CB81784();
  sub_21CB81764();
  (*(v1 + 8))(v3, v0);
  v6 = sub_21CB85584();

  [v4 setText_];

  v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v7 setHidesSharedBackground_];

  return v7;
}

void sub_21CB051FC()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v2 >> 62)
  {
    if (sub_21CB85FA4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_getKeyPath(byte_21CBC9470);
    swift_getKeyPath(byte_21CBC9498);
    sub_21CB81DB4();

    v3 = *(v0 + v1);
    if ((v3 & 0xC000000000000001) != 0)
    {

      v5 = v6;
LABEL_16:
      MEMORY[0x21CF15BD0](v5, v3);
      goto LABEL_11;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      swift_unknownObjectRetain();
      return;
    }

    __break(1u);
LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  v4 = [*(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext) loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF89E0, &qword_21CBB5D88);
  v3 = sub_21CB85824();

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_11:

    return;
  }

  __break(1u);
}

void sub_21CB05380()
{
  v1 = sub_21CB815B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB815C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  sub_21CB051FC();
  v20 = v12;
  sub_21CB815E4();
  v13 = (*(v6 + 88))(v11, v5);
  if (v13 == *MEMORY[0x277CBA780])
  {
    (*(v6 + 16))(v8, v11, v5);
    (*(v6 + 96))(v8, v5);
    if (*v8 == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (v13 != *MEMORY[0x277CBA760])
  {
    if (v13 == *MEMORY[0x277CBA778])
    {
      v14 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane];
      sub_21CB815D4();
      sub_21CB815A4();
      (*(v2 + 8))(v4, v1);
      v17 = sub_21CB85584();

      [v14 showContinueWithPasswordButtonWithTitle_];
LABEL_9:

      goto LABEL_10;
    }

LABEL_8:
    v14 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane];
    sub_21CB815D4();
    sub_21CB815A4();
    (*(v2 + 8))(v4, v1);
    v17 = sub_21CB85584();

    [v14 showContinueButtonWithTitle_];
    goto LABEL_9;
  }

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane];
  v19 = [v0 footerPaneContext];
  sub_21CB815D4();
  sub_21CB815A4();
  (*(v2 + 8))(v4, v1);
  v15 = sub_21CB85584();

  v16 = v19;
  [v14 setUpButtonInPaneContext:v19 buttonTitle:v15];

  [v14 setAuthorizationCapabilityEnabled:1 forLoginChoice:v20];
LABEL_10:
  (*(v6 + 8))(v11, v5);
  v18 = [v14 authorizationButton];
  [v18 setEnabled_];
  swift_unknownObjectRelease();
}

void sub_21CB057CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PMCredentialPickerViewController(0);
  v28[3] = v5;
  v28[0] = v3;
  v6 = v3;
  v7 = sub_21CB85584();
  if (v5)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v28, v5);
    v9 = *(v5 - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_21CB86334();
    (*(v9 + 8))(v12, v5);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() buttonWithTitle:v7 target:v13 action:{a3, v28[0]}];

  swift_unknownObjectRelease();
  v15 = *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton];
  *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton] = v14;
  v16 = v14;

  if (v16)
  {
    v17 = [v6 paneFooterStackView];
    if (v17)
    {
      v18 = v17;
      v19 = objc_opt_self();
      v20 = v16;
      v21 = [v19 systemBackgroundColor];
      [v20 setBackgroundColor_];

      [v20 _setContinuousCornerRadius_];
      [v20 setTranslatesAutoresizingMaskIntoConstraints_];
      v22 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF76D8, &qword_21CBD0830);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21CBC9410;
      v24 = [v20 heightAnchor];

      v25 = [v24 constraintEqualToConstant_];
      *(v23 + 32) = v25;
      sub_21C6E8F4C(0, &unk_27CDF8A50, 0x277CCAAD0);
      v26 = sub_21CB85814();

      [v22 activateConstraints_];

      LODWORD(v27) = 1148846080;
      [v20 setContentCompressionResistancePriority:1 forAxis:v27];
      [v18 addArrangedSubview_];
      if (([objc_opt_self() isPad] & 1) == 0)
      {
        [v18 setCustomSpacing:v20 afterView:8.0];
      }

      v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      [v18 addArrangedSubview_];
    }
  }
}

id PMCredentialPickerViewController.__allocating_init(requiringTableView:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initRequiringTableView_];
}

uint64_t sub_21CB05C20()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_uiContext;
  v2 = sub_21CB81884();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController__selectedLoginChoiceIndex;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8620, &unk_21CBC9458);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id sub_21CB05D80(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21CB05F00@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PMCredentialPickerViewController(0);
  result = sub_21CB81CF4();
  *a2 = result;
  return result;
}

void PMCredentialPickerViewController.tableView(_:cellForRowAt:)(void *a1, void *a2)
{
  v3 = v2;
  v5 = sub_21CB85584();
  v6 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v6)
  {
    v13 = objc_allocWithZone(MEMORY[0x277D75B48]);

    [v13 init];
    return;
  }

  v7 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v8 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  v23[0] = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v9)
  {
    v20 = v7;
    v21 = v3;
    v22 = v6;
    v10 = 0;
    v3 = v8 & 0xC000000000000001;
    v7 = &selRef_addedAt;
    while (1)
    {
      if (v3)
      {
        v11 = MEMORY[0x21CF15BD0](v10, v8);
        v6 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v6 = v22;
          v12 = v23[0];
          v3 = v21;
          v7 = v20;
          goto LABEL_21;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_33:
          v9 = sub_21CB85FA4();
          goto LABEL_4;
        }

        v11 = *(v8 + 8 * v10 + 32);
        swift_unknownObjectRetain();
        v6 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_15;
        }
      }

      if ([v11 loginChoiceKind] == 6)
      {
        sub_21CB86134();
        sub_21CB86164();
        sub_21CB86174();
        sub_21CB86144();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v10;
      if (v6 == v9)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  if (!sub_21CB80FB4())
  {
    goto LABEL_30;
  }

  v14 = sub_21CB80FA4();
  v15 = *(v7 + v3);
  if (v15 >> 62)
  {
    v16 = sub_21CB85FA4();
    if (v12 < 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 < 0)
    {
LABEL_35:
      v17 = sub_21CB85FA4();
      goto LABEL_26;
    }
  }

  if ((v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v17 = *(v12 + 16);
LABEL_26:

  v18 = v16 - v17;
  if (!__OFSUB__(v16, v17))
  {
    v19 = v14 + v18;
    if (!__OFADD__(v14, v18))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:

    v19 = sub_21CB80FA4();
LABEL_31:
    MEMORY[0x28223BE20](v19);
    v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8688, &qword_21CBC9468);
    v23[4] = sub_21C6EADEC(&qword_27CDF8690, &qword_27CDF8688, &qword_21CBC9468, MEMORY[0x277CDE1C0]);
    __swift_allocate_boxed_opaque_existential_0(v23);
    type metadata accessor for PMLoginChoiceCell(0);
    sub_21CB13C94(&qword_27CDF8698, type metadata accessor for PMLoginChoiceCell, &unk_21CBBAC80);
    sub_21CB83814();
    MEMORY[0x21CF15630](v23);
    [v6 setSelectionStyle_];
    [v6 setBackgroundView_];
    return;
  }

  __break(1u);
}

void sub_21CB06398(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = sub_21CB81884();
  v6 = *(v28 - 8);
  v7 = MEMORY[0x28223BE20](v28);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, &a1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_uiContext], v7);
  v11 = *&a1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow];
  v27 = v6;
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x21CF15BD0](a2, v11);

LABEL_5:
    v13 = type metadata accessor for PMLoginChoiceCell(0);
    v14 = v13[8];
    *(a3 + v14) = swift_getKeyPath(byte_21CBC9730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
    swift_storeEnumTagMultiPayload();
    v15 = v28;
    (v10)(a3, v9, v28);
    v16 = (a3 + v13[9]);
    type metadata accessor for PMCredentialPickerViewController(0);
    sub_21CB13C94(&unk_27CDF2C30, type metadata accessor for PMCredentialPickerViewController, &protocol conformance descriptor for PMCredentialPickerViewController);
    v17 = a1;
    *v16 = sub_21CB82674();
    v16[1] = v18;
    *(a3 + v13[5]) = v12;
    *(a3 + v13[7]) = a2;
    if ([v12 loginChoiceKind])
    {
      (*(v27 + 8))(v9, v15);
    }

    else
    {
      v20 = *&v17[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext];
      v21 = [v20 serviceName];
      if (v21)
      {
        v22 = v21;
        v23 = [v20 appleIDAuthorizationRequest];
        if (v23)
        {
          v24 = v23;
          v25 = [v20 teamIdentifier];
          if (!v25)
          {
            sub_21CB855C4();
            v25 = sub_21CB85584();
          }

          v26 = [v20 bundleIdentifier];
          if (!v26)
          {
            sub_21CB855C4();
            v26 = sub_21CB85584();
          }

          v19 = [objc_allocWithZone(MEMORY[0x277CF0378]) initWithAppName:v22 teamIdentifier:v25 bundleIdentifier:v26 authorizationRequest:v24];

          (*(v27 + 8))(v9, v28);
          goto LABEL_8;
        }

        (*(v27 + 8))(v9, v28);
      }

      else
      {
        (*(v27 + 8))(v9, v28);
      }
    }

    v19 = 0;
LABEL_8:
    *(a3 + v13[6]) = v19;
    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v12 = *(v11 + 8 * a2 + 32);
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  __break(1u);
}

Swift::String_optional __swiftcall PMCredentialPickerViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0;
  if (titleForHeaderInSection == 1)
  {
    sub_21CB81014();
    v9 = sub_21CB81004();
    v11 = v10;
    (*(v4 + 8))(v6, v3);
    v8 = v11;
    v7 = v9;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

uint64_t PMCredentialPickerViewController.numberOfTableRows.getter()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v2 >> 62)
  {
    if (sub_21CB85FA4() > 1)
    {
      goto LABEL_4;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_4;
  }

  if ((sub_21CB81704() & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_21CB85FA4();
}

char *PMCredentialPickerViewController.tableView(_:didSelectRowAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_21CB81604();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB80FB4();
  v12 = sub_21CB80FA4();
  if (v11 == 1)
  {
    result = [v2 tableView:a1 numberOfRowsInSection:0];
    v14 = &result[v12];
    if (__OFADD__(v12, result))
    {
      __break(1u);
      return result;
    }

    swift_getKeyPath(byte_21CBC9470);
    swift_getKeyPath(byte_21CBC9498);
    v18 = v14;
    v15 = v2;
  }

  else
  {
    swift_getKeyPath(byte_21CBC9470);
    swift_getKeyPath(byte_21CBC9498);
    v18 = v12;
    v16 = v2;
  }

  sub_21CB81DC4();
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_21C6EA794(v6, &qword_27CDF85D0, &qword_21CBC9430);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_21CB05380();
  return (*(v8 + 8))(v10, v7);
}

void PMCredentialPickerViewController.confirmButtonSubPaneDidEnterProcessingState(_:withAuthenticatedContext:)(void *a1, uint64_t a2)
{
  v5 = [v2 as_navigationItem];
  v6 = [v5 rightBarButtonItems];

  if (!v6)
  {
    goto LABEL_10;
  }

  sub_21C6E8F4C(0, &unk_27CDF86A0, 0x277D751E0);
  v7 = sub_21CB85824();

  if (v7 >> 62)
  {
    if (sub_21CB85FA4())
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x21CF15BD0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  [v9 setEnabled_];

LABEL_10:
  v10 = *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton];
  if (v10)
  {
    [v10 setEnabled_];
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  v13 = a1;

  sub_21CB07B10(a2, sub_21CB13CDC, v12);
}

void sub_21CB07168(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = sub_21CB853D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85404();
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = swift_allocObject();
    v17[2] = a4;
    v17[3] = a1;
    v17[4] = a2;
    v37 = sub_21CB171B8;
    v38 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_21C6ECBD4;
    v36 = &block_descriptor_262;
    v18 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v19 = a2;

    [a3 finishProcessingWithCompletionHandler_];
    _Block_release(v18);
    return;
  }

  v30 = v14;
  v31 = v13;
  if (!a2)
  {
    goto LABEL_8;
  }

  aBlock = a2;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v21 = v32;
  if (![v32 safari:*MEMORY[0x277CF0400] matchesErrorDomain:3 andCode:?])
  {

LABEL_8:
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v24 = sub_21CB85CF4();
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = 0;
    v25[5] = a2;
    v37 = sub_21CB171A4;
    v38 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_21C6ECBD4;
    v36 = &block_descriptor_253;
    v26 = _Block_copy(&aBlock);

    v27 = a2;
    v28 = a3;

    sub_21CB853E4();
    aBlock = MEMORY[0x277D84F90];
    sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v16, v11, v26);
    _Block_release(v26);

    (*(v9 + 8))(v11, v8);
    goto LABEL_9;
  }

  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v29 = sub_21CB85CF4();
  v37 = sub_21CB171B0;
  v38 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_21C6ECBD4;
  v36 = &block_descriptor_256;
  v22 = _Block_copy(&aBlock);

  sub_21CB853E4();
  aBlock = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  v23 = v29;
  MEMORY[0x21CF15800](0, v16, v11, v22);
  _Block_release(v22);

  (*(v9 + 8))(v11, v8);
LABEL_9:
  (*(v30 + 8))(v16, v31);
}

void sub_21CB07760(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong delegate];

    if (v7)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        if (a3)
        {
          a3 = sub_21CB80B04();
        }

        [v7 requestPaneViewController:v9 dismissWithCredential:a2 error:a3];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_21CB07848(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong delegate];

    if (v3)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        [v3 requestPaneViewControllerRequiresPINEntryInterface_];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_21CB07904(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  [a1 invalidateProcessingState];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v7 = Strong;
  v8 = [Strong as_navigationItem];

  v9 = [v8 rightBarButtonItems];
  if (!v9)
  {
    goto LABEL_11;
  }

  sub_21C6E8F4C(0, &unk_27CDF86A0, 0x277D751E0);
  v10 = sub_21CB85824();

  if (v10 >> 62)
  {
    if (sub_21CB85FA4())
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x21CF15BD0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  [v12 setEnabled_];

LABEL_11:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = [v13 delegate];

  if (!v15)
  {
    return;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v17 = v16;
  if (a4)
  {
    a4 = sub_21CB80B04();
  }

  [v15 requestPaneViewController:v17 dismissWithCredential:a3 error:a4];

  swift_unknownObjectRelease();
}

void sub_21CB07B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_21CB051FC();
  v9 = [v8 loginChoiceKind];
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = [v3 delegate];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    sub_21CB051FC();
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v36 = sub_21CB17160;
    v37 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21CB0AE08;
    v35 = &block_descriptor_235;
    v15 = _Block_copy(&aBlock);

    [v11 requestPaneViewController:v4 didRequestCredentialForLoginChoice:v13 authenticatedContext:a1 completionHandler:v15];
    swift_unknownObjectRelease();
    _Block_release(v15);
    goto LABEL_4;
  }

  v16 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider];
  if (v16)
  {
    v17 = v16;
    sub_21CB051FC();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18 && (v19 = [v18 underlyingAppleIDLoginChoice]) != 0)
    {
      v20 = v19;
      if ([v17 respondsToSelector_])
      {
        v21 = swift_allocObject();
        *(v21 + 16) = a2;
        *(v21 + 24) = a3;
        v36 = sub_21CB17318;
        v37 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_21CB0AE08;
        v35 = &block_descriptor_247;
        v22 = _Block_copy(&aBlock);

        [v17 performAuthorizationWithLoginChoice:v20 completionHandler:v22];
        _Block_release(v22);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;
    v36 = sub_21CB17188;
    v37 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21CB0AE08;
    v35 = &block_descriptor_241;
    v31 = _Block_copy(&aBlock);

    [v17 performAuthorizationWithCompletionHandler_];
    _Block_release(v31);
  }

  else
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v23 = sub_21CB81C84();
    __swift_project_value_buffer(v23, qword_27CE18598);
    v24 = sub_21CB81C64();
    v25 = sub_21CB85AF4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21C6E5000, v24, v25, "AKASAuthorizationProvider unavailable for Apple ID request.", v26, 2u);
      MEMORY[0x21CF16D90](v26, -1, -1);
    }

    v27 = [v4 delegate];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for ASCAuthorizationError(0);
      sub_21C73181C(MEMORY[0x277D84F90]);
      sub_21CB13C94(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError, &unk_21CB9F7B8);
      sub_21CB80AF4();
      v29 = sub_21CB80B04();

      [v28 requestPaneViewController:v4 dismissWithCredential:0 error:v29];
LABEL_4:
      swift_unknownObjectRelease();
    }
  }
}

void sub_21CB0807C(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v28 = a1;
  sub_21CB086B8();
  sub_21CB81014();
  sub_21CB81004();
  v8 = *(v4 + 8);
  v9 = v3;
  v26 = v3;
  v8(v6, v3);
  v25 = v8;
  v10 = sub_21CB85584();

  v11 = sub_21CB85584();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  sub_21CB81014();
  sub_21CB81004();
  v8(v6, v9);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21CB1714C;
  *(v13 + 24) = v7;
  v24 = v7;

  v14 = sub_21CB85584();

  v33 = sub_21C7A212C;
  v34 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_21CB173B0;
  v32 = &block_descriptor_223;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [v12 addAction_];
  sub_21CB81014();
  sub_21CB81004();
  v25(v6, v26);
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = sub_21CB1714C;
  v18[3] = v19;
  v18[4] = v27;

  v20 = sub_21CB85584();

  v33 = sub_21CB17154;
  v34 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_21CB173B0;
  v32 = &block_descriptor_229;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  [v12 addAction_];
  [v12 setPreferredAction_];
  [v28 presentViewController:v12 animated:1 completion:0];
}

void sub_21CB0850C(void *a1)
{
  v2 = *MEMORY[0x277CF0400];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = sub_21CB855C4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD00000000000003DLL;
  *(inited + 56) = 0x800000021CB9BC90;
  v5 = v2;
  sub_21C73181C(inited);
  swift_setDeallocating();
  sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
  v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v7 = sub_21CB85464();

  v8 = [v6 initWithDomain:v5 code:1 userInfo:v7];

  v9 = [a1 delegate];
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    v12 = sub_21CB80B04();

    [v10 requestPaneViewController:a1 dismissWithCredential:0 error:v12];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CB086B8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81624();
  sub_21CB81014();
  v4 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21CB0881C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() sharedApplication];
  sub_21CB80BD4();
  v7 = sub_21CB80BE4();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_21CB80B74();
    (*(v8 + 8))(v5, v7);
    sub_21CB13514(MEMORY[0x277D84F90], &qword_27CDF8938, &qword_21CBC9660, &unk_27CDF8940, &qword_21CBC9668);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_21CB13C94(&unk_27CDF8A40, type metadata accessor for OpenExternalURLOptionsKey, &unk_21CB9F90C);
    v11 = sub_21CB85464();

    [v6 openURL:v10 options:v11 completionHandler:0];

    return a2();
  }

  return result;
}

Swift::Void __swiftcall PMCredentialPickerViewController.userTappedContinueButton()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v1 - 8);
  v65 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v60 - v4;
  v5 = sub_21CB80BE4();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB815C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - v12;
  v14 = sub_21CB81604();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB051FC();
  v66 = v0;
  v18 = v15;
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21C6EA794(v13, &qword_27CDF85D0, &qword_21CBC9430);
    return;
  }

  (*(v15 + 32))(v17, v13, v14);
  if ((sub_21CB815F4() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_21CB815E4();
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 == *MEMORY[0x277CBA780])
  {
    (*(v8 + 96))(v10, v7);
    if (*v10 == 1)
    {
      v20 = v66;
      v21 = *&v66[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane];
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      v71 = sub_21CB14154;
      v72 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_21CB09940;
      v70 = &block_descriptor_15_0;
      v23 = _Block_copy(&aBlock);
      v24 = v20;

      [v21 performPasscodeOrPasswordValidation_];
      _Block_release(v23);
    }

    else
    {
      v25 = v66;
      sub_21CB051FC();
      v27 = [v26 loginChoiceKind];
      swift_unknownObjectRelease();
      if (v27 > 3)
      {
        switch(v27)
        {
          case 4:
            v37 = [v25 delegate];
            if (v37)
            {
              v38 = v37;
              sub_21CB051FC();
              v40 = v39;
              v71 = nullsub_1;
              v72 = 0;
              aBlock = MEMORY[0x277D85DD0];
              v68 = 1107296256;
              v69 = sub_21CB0AE08;
              v70 = &block_descriptor_40;
              v41 = _Block_copy(&aBlock);
              [v38 requestPaneViewController:v25 didRequestCredentialForLoginChoice:v40 authenticatedContext:0 completionHandler:v41];
              _Block_release(v41);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            break;
          case 6:
            sub_21CB0A7D0();
            break;
          case 7:
            v28 = sub_21CB858E4();
            v29 = v65;
            (*(*(v28 - 8) + 56))(v65, 1, 1, v28);
            sub_21CB858B4();
            v30 = v25;
            v31 = sub_21CB858A4();
            v32 = swift_allocObject();
            v33 = MEMORY[0x277D85700];
            v32[2] = v31;
            v32[3] = v33;
            v32[4] = v30;
            sub_21C98B308(0, 0, v29, &unk_21CBC94C0, v32);

            break;
        }
      }

      else
      {
        switch(v27)
        {
          case 1:
            sub_21CB099B8();
            break;
          case 2:
            sub_21CB09D74(0);
            break;
          case 3:
            sub_21CB0A58C();
            break;
        }
      }
    }

    goto LABEL_11;
  }

  if (v19 != *MEMORY[0x277CBA790] && v19 != *MEMORY[0x277CBA760] && v19 != *MEMORY[0x277CBA778])
  {
    if (v19 == *MEMORY[0x277CBA768])
    {
      v34 = v62;
      sub_21CB80BD4();
      v36 = v63;
      v35 = v64;
      if ((*(v63 + 48))(v34, 1, v64) == 1)
      {
        sub_21C6EA794(v34, &qword_27CDEC300, &qword_21CBA3ED0);
        goto LABEL_10;
      }

      v65 = v17;
      v52 = v61;
      (*(v36 + 32))(v61, v34, v35);
      v53 = [objc_opt_self() defaultWorkspace];
      if (v53)
      {
        v54 = v53;
        v55 = sub_21CB80B74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21CBA0690;
        *(inited + 32) = sub_21CB855C4();
        *(inited + 40) = v57;
        *(inited + 72) = MEMORY[0x277D839B0];
        *(inited + 48) = 1;
        sub_21C73181C(inited);
        swift_setDeallocating();
        sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
        v58 = sub_21CB85464();

        [v54 openSensitiveURL:v55 withOptions:v58];

        (*(v36 + 8))(v52, v35);
        v17 = v65;
        goto LABEL_10;
      }

LABEL_49:
      __break(1u);
      return;
    }

    if (v19 != *MEMORY[0x277CBA770])
    {
      if (v19 != *MEMORY[0x277CBA788])
      {
        sub_21CB095B0();
        (*(v15 + 8))(v17, v14);
        (*(v8 + 8))(v10, v7);
        return;
      }

      [objc_opt_self() openCredentialProviderAppSettingsWithCompletionHandler_];
      goto LABEL_10;
    }

    v42 = objc_opt_self();
    v43 = swift_allocObject();
    v44 = v66;
    *(v43 + 16) = v66;
    v71 = sub_21CB1417C;
    v72 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v69 = sub_21CB031D0;
    v70 = &block_descriptor_21_1;
    v45 = _Block_copy(&aBlock);
    v46 = v44;
    v18 = v15;

    [v42 setUserVisibleKeychainSyncEnabled:1 withCompletion:v45];
    _Block_release(v45);
    [*&v46[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] showActivityIndicator];
    v47 = [v46 as_navigationItem];
    v48 = [v47 rightBarButtonItems];

    if (!v48)
    {
LABEL_45:
      v59 = *&v46[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton];
      if (v59)
      {
        [v59 setEnabled_];
      }

      goto LABEL_11;
    }

    sub_21C6E8F4C(0, &unk_27CDF86A0, 0x277D751E0);
    v49 = sub_21CB85824();

    if (v49 >> 62)
    {
      if (sub_21CB85FA4())
      {
        goto LABEL_34;
      }
    }

    else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      if ((v49 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x21CF15BD0](0, v49);
      }

      else
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_49;
        }

        v50 = *(v49 + 32);
      }

      v51 = v50;

      [v51 setEnabled_];

      goto LABEL_45;
    }

    goto LABEL_45;
  }

LABEL_10:
  sub_21CB095B0();
LABEL_11:
  (*(v18 + 8))(v17, v14);
}

id sub_21CB095B0()
{
  result = [v0 delegate];
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
    v4 = sub_21CB80B04();

    [v2 requestPaneViewController:v0 dismissWithCredential:0 error:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21CB09678(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_21CB80BE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    sub_21CB80BD4();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_21C6EA794(v4, &qword_27CDEC300, &qword_21CBA3ED0);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v9 = [objc_opt_self() defaultWorkspace];
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      v11 = sub_21CB80B74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21CBA0690;
      *(inited + 32) = sub_21CB855C4();
      *(inited + 40) = v13;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = 1;
      sub_21C73181C(inited);
      swift_setDeallocating();
      sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
      v14 = sub_21CB85464();

      [v10 openSensitiveURL:v11 withOptions:v14];

      (*(v6 + 8))(v8, v5);
    }

    sub_21CB095B0();
  }
}

void sub_21CB09940(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

void sub_21CB099B8()
{
  v1 = v0;
  sub_21CB051FC();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 providerBundleIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 externalCredentialIdentity];
      if (v6)
      {
        v22 = v6;
        v7 = [objc_opt_self() sharedManager];
        v8 = [v7 enabledExtensionWithContainingAppBundleID_];

        if (v8)
        {
          v9 = [objc_allocWithZone(MEMORY[0x277CBA9C0]) initWithFoundationCredentialIdentity_];
          v10 = [objc_allocWithZone(MEMORY[0x277CBAA28]) initWithExtension:v8 credentialIdentity:v9];
          v11 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
          *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController] = v10;
          v12 = v10;

          if (v12)
          {
            [v12 setDelegate_];
          }

          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_27CDEA3F8 != -1)
          {
            swift_once();
          }

          v18 = sub_21CB81C84();
          __swift_project_value_buffer(v18, qword_27CE18598);
          v19 = sub_21CB81C64();
          v20 = sub_21CB85AF4();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_21C6E5000, v19, v20, "No credential provider extension available", v21, 2u);
            MEMORY[0x21CF16D90](v21, -1, -1);
          }

          sub_21CB095B0();
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    v13 = [v1 delegate];
    if (v13)
    {
      v14 = v13;
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      aBlock[4] = sub_21CB170D0;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21CB0AE08;
      aBlock[3] = &block_descriptor_167;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v17 = v1;

      [v14 requestPaneViewController:v17 didRequestCredentialForLoginChoice:v3 authenticatedContext:0 completionHandler:v16];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();

    sub_21CB095B0();
  }
}

void sub_21CB09D74(int a1)
{
  v2 = v1;
  LODWORD(v66) = a1;
  v3 = sub_21CB819B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB819E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB051FC();
  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 externalCredentialProviderBundleID];
    if (!v15)
    {
      [v14 isRegistrationRequest];
      v66 = 0;
LABEL_31:
      v55 = [v2 delegate];
      if (v55)
      {
        v56 = v55;
        v57 = swift_allocObject();
        *(v57 + 16) = v2;
        aBlock[4] = sub_21CB17320;
        aBlock[5] = v57;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21CB0AE08;
        aBlock[3] = &block_descriptor_173;
        v58 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v59 = v2;

        [v56 requestPaneViewController:v59 didRequestCredentialForLoginChoice:v14 authenticatedContext:0 completionHandler:v58];

        _Block_release(v58);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
        v60 = v66;
      }

      return;
    }

    v64 = v8;
    v65 = v4;
    v16 = v15;
    v17 = sub_21CB855C4();
    v19 = v18;

    v20 = sub_21CB14184(v17, v19);

    if (v20)
    {

      if ([v14 isRegistrationRequest])
      {
        v62 = v3;
        v63 = v12;
        v21 = objc_opt_self();
        v22 = v20;
        v23 = [v21 &selRef__isEveryRecipientEligibleForSharing_];
        v24 = [v23 extensionSupportsPasskeys_];

        if (v24)
        {
          v25 = [*&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] passkeyCreationOptionsForExternalProvider];
          if (!v25 || (v26 = v25, v27 = [v25 extensions], v26, !v27))
          {
            [objc_allocWithZone(sub_21CB81C04()) init];
          }

          sub_21CB819C4();
          v28 = sub_21CB819D4();
          v29 = [objc_allocWithZone(MEMORY[0x277CBA998]) initWithLoginChoice:v14 registrationExtensionInput:v28];

          v30 = objc_allocWithZone(MEMORY[0x277CBAA28]);
          v31 = v22;
          v32 = [v30 initWithExtension:v22 passkeyRegistrationRequest:v29 forConditionalRegistration:v66 & 1];
          v33 = *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
          *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController] = v32;
          v34 = v32;

          v35 = v64;
          if (v34)
          {
            [v34 setDelegate_];

            swift_unknownObjectRelease();
            v31 = v34;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          (*(v35 + 8))(v10, v7);
          return;
        }

        v3 = v62;
      }

      v42 = objc_opt_self();
      v66 = v20;
      v43 = [v42 sharedManager];
      LODWORD(v42) = [v43 extensionSupportsPasskeys_];

      if (v42)
      {
        v44 = [*&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] passkeyAssertionOptionsForExternalProvider];
        if (!v44 || (v45 = v44, v46 = [v44 extensions], v45, !v46))
        {
          [objc_allocWithZone(sub_21CB81BF4()) init];
        }

        sub_21CB81994();
        v47 = sub_21CB819A4();
        v48 = [objc_allocWithZone(MEMORY[0x277CBA998]) initWithLoginChoice:v14 assertionExtensionInput:v47];

        v49 = objc_allocWithZone(MEMORY[0x277CBAA28]);
        v50 = [v49 initWithExtension:v66 passkeyAssertionRequest:v48];
        v51 = *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
        *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController] = v50;
        v52 = v50;

        v53 = v65;
        if (v52)
        {
          [v52 setDelegate_];

          swift_unknownObjectRelease();
          v54 = v52;
        }

        else
        {
          swift_unknownObjectRelease();

          v54 = v66;
        }

        (*(v53 + 8))(v6, v3);
        return;
      }

      goto LABEL_31;
    }

    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v36 = sub_21CB81C84();
    __swift_project_value_buffer(v36, qword_27CE18598);

    v37 = sub_21CB81C64();
    v38 = sub_21CB85AF4();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      v41 = sub_21C98E004(v17, v19, aBlock);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_21C6E5000, v37, v38, "Extension for bundle %{public}s not found", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x21CF16D90](v40, -1, -1);
      MEMORY[0x21CF16D90](v39, -1, -1);
    }

    else
    {
    }

    sub_21CB095B0();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_21CB095B0();
  }
}

void sub_21CB0A58C()
{
  sub_21CB051FC();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 credentialKind];
    if (v3 < 2)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = v0;
      v6 = sub_21CB170EC;
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v6 = nullsub_1;
      v4 = 0;
LABEL_10:
      v7 = [v0 delegate];
      if (v7)
      {
        v8 = v7;
        v10[4] = v6;
        v10[5] = v4;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 1107296256;
        v10[2] = sub_21CB0AE08;
        v10[3] = &block_descriptor_179;
        v9 = _Block_copy(v10);
        swift_unknownObjectRetain();

        [v8 requestPaneViewController:v0 didRequestCredentialForLoginChoice:v2 authenticatedContext:0 completionHandler:v9];
        swift_unknownObjectRelease();

        _Block_release(v9);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }

    sub_21CB095B0();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_21CB095B0();
  }
}

void sub_21CB0A7D0()
{
  v1 = v0;
  sub_21CB051FC();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 providerExtensionBundleID];
    if (v4)
    {
      v5 = v4;
      v6 = sub_21CB855C4();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
    v16 = sub_21CB0C6BC(v6, v8);
    if (v16)
    {
      v27 = v16;
      v28 = [objc_allocWithZone(MEMORY[0x277D499C8]) init];
      v29 = swift_allocObject();
      *(v29 + 16) = v1;
      *(v29 + 24) = v27;
      v30 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext];
      v31 = v1;
      v32 = v27;
      if ([v30 isCABLEAuthenticatorRequest])
      {
        v41 = sub_21CB1713C;
        v42 = v29;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = sub_21CB173B0;
        v40 = &block_descriptor_200;
        v33 = _Block_copy(&aBlock);

        [v28 getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler_];
        swift_unknownObjectRelease();

        _Block_release(v33);
      }

      else
      {
        v34 = [v30 frameIdentifier];
        if (v34)
        {
          v35 = v34;
          v41 = sub_21CB1713C;
          v42 = v29;
          aBlock = MEMORY[0x277D85DD0];
          v38 = 1107296256;
          v39 = sub_21CB173B0;
          v40 = &block_descriptor_197;
          v36 = _Block_copy(&aBlock);

          [v28 getPasskeyAssertionRequestParametersForWebFrameIdentifier:v35 completionHandler:v36];
        }

        else
        {
          v35 = [v30 appIdentifier];
          if (!v35)
          {
            sub_21CB855C4();
            v35 = sub_21CB85584();
          }

          v41 = sub_21CB1713C;
          v42 = v29;
          aBlock = MEMORY[0x277D85DD0];
          v38 = 1107296256;
          v39 = sub_21CB173B0;
          v40 = &block_descriptor_194_0;
          v36 = _Block_copy(&aBlock);

          [v28 getPasskeyAssertionRequestParametersForApplicationIdentifier:v35 completionHandler:v36];
        }

        swift_unknownObjectRelease();

        _Block_release(v36);
      }
    }

    else
    {
      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v17 = sub_21CB81C84();
      __swift_project_value_buffer(v17, qword_27CE18598);
      swift_unknownObjectRetain();
      v18 = sub_21CB81C64();
      v19 = sub_21CB85AF4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock = v21;
        *v20 = 136446210;
        v22 = [v3 providerExtensionBundleID];
        swift_unknownObjectRelease();
        if (!v22)
        {
          __break(1u);
          return;
        }

        v23 = sub_21CB855C4();
        v25 = v24;

        v26 = sub_21C98E004(v23, v25, &aBlock);

        *(v20 + 4) = v26;
        _os_log_impl(&dword_21C6E5000, v18, v19, "Extension not found: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x21CF16D90](v21, -1, -1);
        MEMORY[0x21CF16D90](v20, -1, -1);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_21CB095B0();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v9 = sub_21CB81C84();
    __swift_project_value_buffer(v9, qword_27CE18598);
    v10 = v0;
    v11 = sub_21CB81C64();
    v12 = sub_21CB85AF4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      sub_21CB051FC();
      v15 = [v14 loginChoiceKind];
      swift_unknownObjectRelease();
      *(v13 + 4) = v15;

      _os_log_impl(&dword_21C6E5000, v11, v12, "Called userTappedContinueButtonForCredentialProvider but selected login choice was type %lu", v13, 0xCu);
      MEMORY[0x21CF16D90](v13, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    sub_21CB095B0();
  }
}

uint64_t sub_21CB0AE08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_21CB0AE88()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21CB0AF34();
}

uint64_t sub_21CB0AF34()
{
  v1[8] = v0;
  sub_21CB858B4();
  v1[9] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_21CB0AFCC, v3, v2);
}

uint64_t sub_21CB0AFCC()
{
  v36 = v0;
  sub_21CB051FC();
  v0[12] = v1;
  sub_21CB81BE4();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CB81BD4();
    v5 = sub_21CB81B04();
    v7 = v6;

    v8 = sub_21CB14184(v5, v7);
    v0[13] = v8;

    if (v8)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 sharedManager];
      v12 = [v11 extensionSupportsPasskeys_];

      if (v12)
      {
        sub_21C6E8F4C(0, &qword_27CDF8A38, 0x277CBA998);
        swift_unknownObjectRetain();
        v13 = swift_task_alloc();
        v0[14] = v13;
        *v13 = v0;
        v13[1] = sub_21CB0B42C;

        return MEMORY[0x28210CE18](v3);
      }

      v26 = v0[8];

      v27 = [v26 delegate];
      if (!v27)
      {
        swift_unknownObjectRelease();

        goto LABEL_22;
      }

      v28 = v27;
      v29 = v0[8];
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v0[6] = sub_21CB17320;
      v0[7] = v30;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_21CB0AE08;
      v0[5] = &block_descriptor_207;
      v31 = _Block_copy(v0 + 2);
      swift_unknownObjectRetain();
      v32 = v29;

      [v28 requestPaneViewController:v32 didRequestCredentialForLoginChoice:v3 authenticatedContext:0 completionHandler:v31];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      _Block_release(v31);
    }

    else
    {

      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v14 = sub_21CB81C84();
      __swift_project_value_buffer(v14, qword_27CE18598);
      swift_unknownObjectRetain();
      v15 = sub_21CB81C64();
      v16 = sub_21CB85AF4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35 = v18;
        *v17 = 136446210;
        v19 = sub_21CB81BD4();
        v20 = sub_21CB81B04();
        v22 = v21;

        if (v22)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        v25 = sub_21C98E004(v23, v24, &v35);

        *(v17 + 4) = v25;
        _os_log_impl(&dword_21C6E5000, v15, v16, "Extension for bundle %{public}s not found", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x21CF16D90](v18, -1, -1);
        MEMORY[0x21CF16D90](v17, -1, -1);
      }

      sub_21CB095B0();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_22:
  v33 = v0[1];

  return v33();
}

uint64_t sub_21CB0B42C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_21CB0B554, v4, v3);
}

uint64_t sub_21CB0B554()
{
  v1 = v0[15];

  if (v1)
  {
    v2 = v0[15];
    v3 = v0[13];
    v4 = v0[8];

    v5 = [objc_allocWithZone(MEMORY[0x277CBAA28]) initWithExtension:v3 passkeyRegistrationRequest:v2 forConditionalRegistration:0];
    v6 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController);
    *(v4 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController) = v5;
    v7 = v5;

    [v7 setDelegate_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v8 = sub_21CB81C84();
    __swift_project_value_buffer(v8, qword_27CE18598);
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Failed to create passkey credential request from passkey account creation login choice.", v11, 2u);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    v12 = v0[13];

    sub_21CB095B0();
    swift_unknownObjectRelease();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21CB0B764(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_21CB853D4();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21CB85404();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v12 = sub_21CB85CF4();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  aBlock[4] = sub_21CB170C4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_161;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  swift_unknownObjectRetain();
  v16 = a3;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void sub_21CB0BA74(id a1, id a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 || (v6 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8), (swift_dynamicCast() & 1) == 0) || (v7 = [v10 ak_isUserCancelError], v10, (v7 & 1) == 0))
  {
    v8 = [a2 delegate];
    if (v8)
    {
      v9 = v8;
      if (v5)
      {
        v5 = sub_21CB80B04();
      }

      [v9 requestPaneViewController:a2 dismissWithCredential:a3 error:v5];

      swift_unknownObjectRelease();
    }
  }
}

double PMCredentialPickerViewController.performAuthorization(_:withAuthenticatedLAContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = v2;
  sub_21CB07B10(a2, sub_21CB144F8, v4);

  return result;
}

uint64_t sub_21CB0BC68(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_21CB853D4();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21CB85404();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  aBlock = a2;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = v26;
  if (![v26 safari:*MEMORY[0x277CF0400] matchesErrorDomain:3 andCode:?])
  {

LABEL_6:
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v14 = sub_21CB85CF4();
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a1;
    v18[4] = a2;
    v31 = sub_21CB17078;
    v32 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_21C6ECBD4;
    v30 = &block_descriptor_146;
    v19 = _Block_copy(&aBlock);
    v20 = a2;
    swift_unknownObjectRetain();
    v21 = a3;

    sub_21CB853E4();
    aBlock = MEMORY[0x277D84F90];
    sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v11, v8, v19);
    _Block_release(v19);
    goto LABEL_7;
  }

  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v14 = sub_21CB85CF4();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v31 = sub_21CB17098;
  v32 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_21C6ECBD4;
  v30 = &block_descriptor_152;
  v23 = _Block_copy(&aBlock);
  v16 = a3;

  sub_21CB853E4();
  aBlock = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  sub_21CB85F14();
  v17 = v23;
  MEMORY[0x21CF15800](0, v11, v8, v23);
  _Block_release(v17);

LABEL_7:
  (*(v25 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v24);
}

BOOL PMCredentialPickerViewController.validateReady(forAuthorization:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v1 >> 62)
  {
    v2 = sub_21CB85FA4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

void sub_21CB0C2D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v5 = objc_allocWithZone(MEMORY[0x277CF0410]);
    swift_unknownObjectRetain();
    v6 = [v5 initWithAuthorization_];
    (a3)(v6, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    (a3)(0, a2);
  }
}

id sub_21CB0C3B8(uint64_t a1, void *a2, id a3)
{
  result = [a3 delegate];
  if (result)
  {
    v7 = result;
    if (a2)
    {
      a2 = sub_21CB80B04();
    }

    [v7 requestPaneViewController:a3 dismissWithCredential:a1 error:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21CB0C45C(uint64_t a1, void *a2, void *a3)
{
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v6 = sub_21CB85CF4();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21CB173B4;
  *(v8 + 24) = v7;
  v12[4] = sub_21C7A212C;
  v12[5] = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21CB0C694;
  v12[3] = &block_descriptor_188;
  v9 = _Block_copy(v12);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a2;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

id sub_21CB0C5F4(void *a1, uint64_t a2, void *a3)
{
  result = [a1 delegate];
  if (result)
  {
    v7 = result;
    if (a3)
    {
      a3 = sub_21CB80B04();
    }

    [v7 requestPaneViewController:a1 dismissWithCredential:a2 error:a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21CB0C6BC(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = sub_21CB85584();
  }

  else
  {
    v2 = 0;
  }

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() extensionWithIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_21CB80B14();

    swift_willThrow();
  }

  return v3;
}

id sub_21CB0C7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277CBAA30]);
  sub_21C6E8F4C(0, &qword_27CDF8A30, 0x277CBA988);
  v7 = sub_21CB85814();
  v8 = [v6 initWithExtension:a3 serviceIdentifiers:v7 requestParameters:a1];

  v9 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController;
  v10 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController);
  *(a2 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController) = v8;
  v11 = v8;

  if (v11)
  {
    [v11 setDelegate_];
  }

  result = *(a2 + v9);
  if (result)
  {

    return [result setDismissOnBackground_];
  }

  return result;
}

void sub_21CB0C8A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_21CB0C910()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] disableBiometricView];
  v2 = sub_21CB81694();
  if (v2 >> 62)
  {
    v3 = sub_21CB85FA4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 != 1)
  {
    goto LABEL_16;
  }

  result = sub_21CB81694();
  if (result >> 62)
  {
    v7 = result;
    v8 = sub_21CB85FA4();
    result = v7;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CF15BD0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(result + 32);
    swift_unknownObjectRetain();
  }

  if ([v5 loginChoiceKind] == 3)
  {
    v6 = [v1 delegate];
    if (v6)
    {
      [v6 requestPaneViewControllerPresentSecurityKeyView_];
      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  swift_unknownObjectRelease();
LABEL_16:
  result = [v1 delegate];
  if (!result)
  {
    return result;
  }

  [result requestPaneViewControllerPresentExpandedLoginChoiceInterface_];
LABEL_18:

  return swift_unknownObjectRelease();
}

id sub_21CB0CB2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = v25 - v4;
  v6 = [*&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF89E0, &qword_21CBB5D88);
  v7 = sub_21CB85824();

  if (v7 >> 62)
  {
LABEL_15:
    v8 = sub_21CB85FA4();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x21CF15BD0](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            v12 = sub_21CB858E4();
            (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
            sub_21CB858B4();
            v13 = v1;
            swift_unknownObjectRetain();
            v14 = sub_21CB858A4();
            v15 = swift_allocObject();
            v16 = MEMORY[0x277D85700];
            v15[2] = v14;
            v15[3] = v16;
            v15[4] = v13;
            v15[5] = v10;
            sub_21C823194(0, 0, v5, &unk_21CBC96E8, v15);

            return swift_unknownObjectRelease();
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v10 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_12;
          }
        }

        if ([v10 loginChoiceKind] == 4)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v9;
      }

      while (v11 != v8);
    }
  }

  if (qword_27CDEA3F8 != -1)
  {
    swift_once();
  }

  v17 = sub_21CB81C84();
  __swift_project_value_buffer(v17, qword_27CE18598);
  v18 = sub_21CB81C64();
  v19 = sub_21CB85AF4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_21C6E5000, v18, v19, "Use caBLE button tapped but no caBLE login choice is available. Failing request.", v20, 2u);
    MEMORY[0x21CF16D90](v20, -1, -1);
  }

  result = [v1 delegate];
  if (result)
  {
    v22 = result;
    type metadata accessor for ASCAuthorizationError(0);
    v25[0] = 1;
    sub_21C73181C(MEMORY[0x277D84F90]);
    sub_21CB13C94(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError, &unk_21CB9F7B8);
    sub_21CB80AF4();
    v23 = v25[1];
    v24 = sub_21CB80B04();

    [v22 requestPaneViewController:v1 dismissWithCredential:0 error:v24];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CB0CF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  sub_21CB858B4();
  v5[22] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[23] = v7;
  v5[24] = v6;

  return MEMORY[0x2822009F8](sub_21CB0CFA4, v7, v6);
}

uint64_t sub_21CB0CFA4()
{
  v1 = [*(v0 + 160) delegate];
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_21CB0D140;
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89F8, &qword_21CBC9700);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21CB0D368;
    *(v0 + 104) = &block_descriptor_111;
    *(v0 + 112) = v5;
    [v2 requestPaneViewController:v4 didRequestCredentialForLoginChoice:v3 authenticatedContext:0 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 152);

    *v6 = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_21CB0D140()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_21CB0D2EC;
  }

  else
  {
    v5 = sub_21CB0D270;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21CB0D270()
{
  v1 = v0[19];

  *v1 = v0[18];
  swift_unknownObjectRelease();
  v2 = v0[1];

  return v2();
}

uint64_t sub_21CB0D2EC()
{

  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CB0D368(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void PMCredentialPickerViewController.credentialAuthenticationViewController(_:didFinishWith:error:completion:)(void *a1, void *a2, void (**a3)(char *, uint64_t), void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v74 = a4;
  v75 = a5;
  v10 = sub_21CB80DD4();
  v73 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v69 - v14;
  v16 = sub_21CB81604();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (a2)
  {
    v21 = a2;
    sub_21CB051FC();
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22 && (v23 = v22, (v24 = [v22 externalCredentialIdentity]) != 0))
    {
      v25 = v24;
      v71 = v6;
      v26 = [v23 site];
      if (!v26)
      {
        sub_21CB855C4();
        v26 = sub_21CB85584();
      }

      v27 = [v21 user];
      if (!v27)
      {
        sub_21CB855C4();
        v27 = sub_21CB85584();
      }

      v28 = [v21 password];
      if (!v28)
      {
        sub_21CB855C4();
        v28 = sub_21CB85584();
      }

      sub_21CB80DC4();
      v72 = v25;
      v29 = [v25 owningExtensionState];
      if (v29 && (v30 = v29, v31 = [v29 providerBundleID], v30, v31))
      {
        v70 = v21;
        sub_21CB855C4();
        v33 = v32;

        v34 = sub_21CB80D24();
        if (v33)
        {
          v35 = sub_21CB85584();
        }

        else
        {
          v35 = 0;
        }

        v21 = v70;
      }

      else
      {
        v34 = sub_21CB80D24();
        v35 = 0;
      }

      v53 = [objc_allocWithZone(MEMORY[0x277CF0428]) initWithUser:v27 password:v28 site:v26 creationDate:v34 externalProviderBundleIdentifier:v35];

      v73[1](v12, v10);
      v54 = v71;
      v55 = [v71 delegate];
      if (!v55)
      {

        swift_unknownObjectRelease();
        goto LABEL_37;
      }

      [v55 requestPaneViewController:v54 dismissWithCredential:v53 error:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v56 = swift_unknownObjectRelease();
LABEL_37:
    v74(v56);
    return;
  }

  v36 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v37 = *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  v73 = a3;
  if (v37)
  {
    aBlock[4] = v74;
    aBlock[5] = v75;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_27;
    v38 = _Block_copy(aBlock);
    v39 = v37;

    [v39 dismissViewControllerAnimated:1 completion:v38];
    _Block_release(v38);

    v40 = *&v6[v36];
  }

  else
  {
    v40 = 0;
  }

  *&v6[v36] = 0;

  v41 = *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice];
  *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice] = 0;

  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21C6EA794(v15, &qword_27CDF85D0, &qword_21CBC9430);
    v42 = v73;
    if (!v73)
    {
      return;
    }
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_21CB05380();
    (*(v17 + 8))(v20, v16);
    v42 = v73;
    if (!v73)
    {
      return;
    }
  }

  aBlock[0] = v42;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v44 = v76;
    v45 = *MEMORY[0x277CBA8B0];
    if ([v76 safari:*MEMORY[0x277CBA8B0] matchesErrorDomain:102 andCode:?])
    {
      v46 = [v6 delegate];
      if (v46)
      {
        v47 = v46;
        v48 = sub_21CB80B04();
        [v47 requestPaneViewController:v6 dismissWithCredential:0 error:v48];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_48;
    }

    if ([v44 safari:v45 matchesErrorDomain:1 andCode:?])
    {
      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v49 = sub_21CB81C84();
      __swift_project_value_buffer(v49, qword_27CE18598);
      v50 = sub_21CB81C64();
      v51 = sub_21CB85B14();
      if (!os_log_type_enabled(v50, v51))
      {
        goto LABEL_45;
      }

      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_21C6E5000, v50, v51, "Did not receive any external password credential because user canceled", v52, 2u);
    }

    else
    {
      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v57 = sub_21CB81C84();
      __swift_project_value_buffer(v57, qword_27CE18598);
      v58 = v44;
      v50 = sub_21CB81C64();
      v59 = sub_21CB85AF4();

      if (!os_log_type_enabled(v50, v59))
      {
        goto LABEL_45;
      }

      v52 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v52 = 136446210;
      v61 = [v58 safari_privacyPreservingDescription];
      v62 = sub_21CB855C4();
      v64 = v63;

      v65 = sub_21C98E004(v62, v64, aBlock);

      *(v52 + 4) = v65;
      _os_log_impl(&dword_21C6E5000, v50, v59, "Did not receive any external password credential because of error: %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x21CF16D90](v60, -1, -1);
    }

    MEMORY[0x21CF16D90](v52, -1, -1);
LABEL_45:

    if ([*&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] isConditionalRegistrationRequest])
    {
      v66 = [v6 delegate];
      if (v66)
      {
        v67 = v66;
        v68 = sub_21CB80B04();
        [v67 requestPaneViewController:v6 dismissWithCredential:0 error:v68];

        swift_unknownObjectRelease();
      }
    }

LABEL_48:
  }
}

uint64_t PMCredentialPickerViewController.credentialAuthenticationViewController(_:didFinishWith:error:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v10 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController);
  if (v10)
  {
    v15[4] = a4;
    v15[5] = a5;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_21C6ECBD4;
    v15[3] = &block_descriptor_30;
    v11 = _Block_copy(v15);
    v12 = v10;

    [v12 dismissViewControllerAnimated:1 completion:v11];
    _Block_release(v11);

    v13 = *(v5 + v9);
  }

  else
  {
    v13 = 0;
  }

  *(v5 + v9) = 0;

  return sub_21CB0E030(a2, a3, a4);
}

uint64_t sub_21CB0E030(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v54[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v54[0] = 0;
    v7 = a1;
    if ([v7 _validateWithError_])
    {
      v50 = v3;
      v51 = a3;
      v8 = v54[0];

      v9 = v7;
      v52 = [v9 relyingParty];
      if (!v52)
      {
        sub_21CB855C4();
        v52 = sub_21CB85584();
      }

      v10 = [v9 authenticatorData];
      v53 = sub_21CB80C84();
      v48 = v11;

      v12 = [v9 signature];
      v47 = sub_21CB80C84();
      v49 = v13;

      v14 = [v9 userHandle];
      v15 = sub_21CB80C84();
      v45 = v16;
      v46 = v15;

      v17 = [v9 credentialID];
      v18 = sub_21CB80C84();
      v20 = v19;

      v21 = [v9 coreExtensions];
      v22 = *MEMORY[0x277CF0408];
      v23 = objc_allocWithZone(MEMORY[0x277CF0438]);
      v24 = sub_21CB80C64();
      v25 = sub_21CB80C64();
      v26 = sub_21CB80C64();
      v27 = sub_21CB80C64();
      LOBYTE(v44) = 1;
      v28 = [v23 initWithRelyingPartyIdentifier:v52 authenticatorData:v24 signature:v25 userHandle:v26 rawClientDataJSON:0 credentialID:v27 extensions:v21 attachment:v22 isExternal:v44];

      sub_21C7A34C0(v18, v20);
      sub_21C7A34C0(v46, v45);

      sub_21C7A34C0(v47, v49);
      sub_21C7A34C0(v53, v48);

      v29 = [v50 delegate];
      if (v29)
      {
        [v29 requestPaneViewController:v50 dismissWithCredential:v28 error:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      a3 = v51;
      return a3();
    }

    v30 = v54[0];
    v31 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v32 = sub_21CB81C84();
    __swift_project_value_buffer(v32, qword_27CE18598);
    v33 = v31;
    v34 = sub_21CB81C64();
    v35 = sub_21CB85AF4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_21C6E5000, v34, v35, "Returned credential failed validation: %{public}@", v36, 0xCu);
      sub_21C6EA794(v37, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v37, -1, -1);
      MEMORY[0x21CF16D90](v36, -1, -1);
    }

    else
    {
    }
  }

  v40 = [v4 delegate];
  if (v40)
  {
    v41 = v40;
    if (a2)
    {
      v42 = sub_21CB80B04();
    }

    else
    {
      v42 = 0;
    }

    [v41 requestPaneViewController:v4 dismissWithCredential:0 error:v42];

    swift_unknownObjectRelease();
  }

  return a3();
}

void PMCredentialPickerViewController.credentialAuthenticationViewController(_:didFinishWith:error:completion:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = &v68 - v12;
  v13 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v14 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  if (v14)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_33;
    v15 = _Block_copy(aBlock);
    v16 = v14;

    [v16 dismissViewControllerAnimated:1 completion:v15];
    _Block_release(v15);

    v17 = *&v6[v13];
  }

  else
  {
    v17 = 0;
  }

  *&v6[v13] = 0;

  if (a2)
  {
    aBlock[0] = 0;
    v18 = a2;
    if ([v18 _validateWithError_])
    {
      v71 = a5;
      v19 = aBlock[0];

      v20 = v18;
      v21 = [v20 relyingParty];
      if (!v21)
      {
        sub_21CB855C4();
        v22 = sub_21CB85584();

        v21 = v22;
      }

      v69 = v21;
      v72 = a4;
      v23 = [v20 attestationObject];
      v24 = sub_21CB80C84();
      v26 = v25;

      v27 = [v20 credentialID];
      v28 = sub_21CB80C84();
      v30 = v29;

      v31 = [objc_opt_self() _defaultTransports];
      if (!v31)
      {
        sub_21CB85824();
        v31 = sub_21CB85814();
      }

      v70 = v20;
      v32 = [v20 coreExtensions];
      v33 = *MEMORY[0x277CF0408];
      v34 = objc_allocWithZone(MEMORY[0x277CF0448]);
      v35 = sub_21CB80C64();
      v36 = v24;
      v37 = sub_21CB80C64();
      LOBYTE(v67) = 1;
      v66 = v33;
      v38 = v69;
      v39 = [v34 initWithRelyingPartyIdentifier:v69 attestationObject:v35 rawClientDataJSON:0 credentialID:v37 transports:v31 extensions:v32 attachment:v66 isExternal:v67];

      sub_21C7A34C0(v28, v30);
      sub_21C7A34C0(v36, v26);

      v40 = v68;
      sub_21CB051FC();
      sub_21CB81BE4();
      if (swift_dynamicCastClass())
      {
        v41 = sub_21CB81BD4();
        sub_21CB81A74();

        v42 = sub_21CB81BD4();
        v43 = sub_21CB81A54();

        if (v43)
        {
          sub_21CB81A34();
        }

        v59 = sub_21CB81BD4();
        sub_21CB81B24();

        v60 = objc_allocWithZone(sub_21CB81BA4());
        v61 = v39;
        v62 = sub_21CB81B94();
        v63 = [v40 delegate];
        if (v63)
        {
          v64 = v63;
          v65 = v62;
          [v64 requestPaneViewController:v40 dismissWithCredential:v65 error:0];

          v63 = swift_unknownObjectRelease();
        }

        v72(v63);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v57 = [v40 delegate];
        if (v57)
        {
          [v57 requestPaneViewController:v40 dismissWithCredential:v39 error:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v72(v58);
      }

      return;
    }

    v44 = aBlock[0];
    v45 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v46 = sub_21CB81C84();
    __swift_project_value_buffer(v46, qword_27CE18598);
    v47 = v45;
    v48 = sub_21CB81C64();
    v49 = sub_21CB85AF4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138543362;
      v52 = v45;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_21C6E5000, v48, v49, "Returned credential failed validation: %{public}@", v50, 0xCu);
      sub_21C6EA794(v51, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v51, -1, -1);
      MEMORY[0x21CF16D90](v50, -1, -1);
    }

    else
    {
    }
  }

  v54 = [v6 delegate];
  if (v54)
  {
    v55 = v54;
    if (a3)
    {
      v56 = sub_21CB80B04();
    }

    else
    {
      v56 = 0;
    }

    [v55 requestPaneViewController:v6 dismissWithCredential:0 error:v56];

    v54 = swift_unknownObjectRelease();
  }

  (a4)(v54);
}

void sub_21CB0EC48(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock, void (*a7)(void *, void *, id, void *))
{
  v12 = _Block_copy(aBlock);
  _Block_copy(v12);
  v13 = a3;
  v14 = a4;
  v15 = a1;
  v16 = a5;
  a7(a4, a5, v15, v12);
  _Block_release(v12);
  _Block_release(v12);
}

void PMCredentialPickerViewController.credentialListViewController(_:didFinishWith:completion:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = sub_21CB80DD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v45 = a4;
    v13 = *&v4[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext];
    v14 = a2;
    v15 = [v13 serviceName];
    if (v15)
    {
      v16 = v15;
      sub_21CB051FC();
      v18 = v17;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = [v19 externalCredentialIdentity];
        if (v20)
        {
          v21 = v20;
          v41 = v10;
          v43 = v18;
          v44 = a3;
          v22 = [v14 user];
          if (!v22)
          {
            sub_21CB855C4();
            v22 = sub_21CB85584();
          }

          v23 = [v14 password];
          if (!v23)
          {
            sub_21CB855C4();
            v23 = sub_21CB85584();
          }

          v24 = v22;
          sub_21CB80DC4();
          v42 = v21;
          v25 = [v21 owningExtensionState];
          if (v25 && (v26 = v25, v27 = [v25 providerBundleID], v26, v27))
          {
            sub_21CB855C4();
            v29 = v28;

            v30 = sub_21CB80D24();
            if (v29)
            {
              v31 = sub_21CB85584();

LABEL_17:
              v32 = [objc_allocWithZone(MEMORY[0x277CF0428]) initWithUser:v24 password:v23 site:v16 creationDate:v30 externalProviderBundleIdentifier:v31];

              swift_unknownObjectRelease();
              (*(v41 + 8))(v12, v9);
              v33 = 0;
              a3 = v44;
              goto LABEL_20;
            }
          }

          else
          {
            v30 = sub_21CB80D24();
          }

          v31 = 0;
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
  v32 = 0;
LABEL_20:
  v34 = [v5 delegate];
  if (v34)
  {
    v35 = v34;
    v36 = v32;
    if (v33)
    {
      v37 = v33;
      v38 = sub_21CB80B04();
    }

    else
    {
      v38 = 0;
    }

    [v35 requestPaneViewController:v5 dismissWithCredential:v32 error:v38];

    swift_unknownObjectRelease();
  }

  v39 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController];
  *&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;

  a3();
}

void PMCredentialPickerViewController.credentialListViewController(_:didFinishWith:completion:)(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController];
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;

  if (a2)
  {
    v11 = a2;
    sub_21CB0E030(a2, 0, a3);
  }

  else
  {
    v7 = [v3 delegate];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
      v10 = sub_21CB80B04();

      [v8 requestPaneViewController:v3 dismissWithCredential:0 error:v10];
      v7 = swift_unknownObjectRelease();
    }

    (a3)(v7);
  }
}

void sub_21CB0F2EC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(void *, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(a4, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

Swift::Void __swiftcall PMCredentialPickerViewController.performConditionalRegistrationIfPossible()()
{
  sub_21CB051FC();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    if ([v1 isExternal] && (objc_msgSend(v2, sel_isRegistrationRequest) & 1) != 0)
    {
      sub_21CB09D74(1);
LABEL_9:

      swift_unknownObjectRelease();
      return;
    }

    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v3 = sub_21CB81C84();
    __swift_project_value_buffer(v3, qword_27CE18598);
    swift_unknownObjectRetain();
    oslog = sub_21CB81C64();
    v4 = sub_21CB85AF4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138477827;
      *(v5 + 4) = v2;
      *v6 = v2;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_21C6E5000, oslog, v4, "Tried to perform conditional registration with unexpected passkey login choice: %{private}@", v5, 0xCu);
      sub_21C6EA794(v6, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v6, -1, -1);
      MEMORY[0x21CF16D90](v5, -1, -1);

      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE18598);
    v8 = v0;
    oslog = sub_21CB81C64();
    v9 = sub_21CB85AF4();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      sub_21CB051FC();
      swift_getObjectType();
      swift_unknownObjectRelease();
      v12 = sub_21CB86554();
      v14 = sub_21C98E004(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, oslog, v9, "Tried to perform conditional registration with unexpected login choice: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CF16D90](v11, -1, -1);
      MEMORY[0x21CF16D90](v10, -1, -1);
    }
  }
}

void sub_21CB0F750(void *a1, uint64_t a2)
{
  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 pushViewController:a2 animated:1];
  }
}

void sub_21CB0F878(void *a1, id a2)
{
  v4 = [a2 navigationController];
  v5 = [v4 topViewController];

  if (v5 && (sub_21C6E8F4C(0, &unk_27CDF8A20, 0x277D75D28), v6 = a1, v7 = sub_21CB85DD4(), v5, v6, (v7 & 1) != 0))
  {
    v8 = [a2 navigationController];
    if (!v8)
    {
      return;
    }

    oslog = v8;
  }

  else
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v9 = sub_21CB81C84();
    __swift_project_value_buffer(v9, qword_27CE18598);
    oslog = sub_21CB81C64();
    v10 = sub_21CB85AF4();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21C6E5000, oslog, v10, "Authentication provider tried to pop view controller but it was not the top view controller in the navigation stack", v11, 2u);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }
  }
}

void sub_21CB0FAE0(uint64_t a1, uint64_t a2, uint64_t a3, __CFUserNotification *a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a2;
  v43[4] = *MEMORY[0x277D85DE8];
  v8 = sub_21CB853D4();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB85404();
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v14 = *MEMORY[0x277CBECE8];
  v15 = sub_21CB85464();
  v16 = CFUserNotificationCreate(v14, 0.0, 0, &error, v15);

  if (v16)
  {
    if (*(v5 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_alertQueue))
    {
      v17 = swift_allocObject();
      v19 = v34;
      v18 = v35;
      v17[2] = v16;
      v17[3] = v19;
      v17[4] = a3;
      v17[5] = v18;
      v17[6] = v36;
      aBlock[4] = sub_21CB17058;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21C6ECBD4;
      aBlock[3] = &block_descriptor_128;
      v20 = _Block_copy(aBlock);
      v35 = v16;

      sub_21CB853E4();
      v43[0] = MEMORY[0x277D84F90];
      sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
      sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
      sub_21CB85F14();
      MEMORY[0x21CF15800](0, v13, v10, v20);
      _Block_release(v20);

      (*(v38 + 8))(v10, v8);
      (*(v37 + 8))(v13, v11);
    }

    else
    {
    }
  }

  else if (*MEMORY[0x277CBF188])
  {
    v43[0] = sub_21CB855C4();
    v43[1] = v21;
    sub_21CB86034();
    if (*(a1 + 16) && (v22 = sub_21CB10D50(aBlock), (v23 & 1) != 0))
    {
      sub_21C7A3394(*(a1 + 56) + 32 * v22, v43);
      sub_21C8E1980(aBlock);
      v24 = swift_dynamicCast();
      if (v24)
      {
        v25 = v39;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v26 = v40;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      sub_21C8E1980(aBlock);
      v25 = 0;
      v26 = 0;
    }

    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v27 = sub_21CB81C84();
    __swift_project_value_buffer(v27, qword_27CE18598);

    v28 = sub_21CB81C64();
    v29 = sub_21CB85AF4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v43[0] = v31;
      *v30 = 136315394;
      if (v26)
      {
        v32 = v25;
      }

      else
      {
        v32 = 0x64616568206C696ELL;
      }

      if (!v26)
      {
        v26 = 0xEA00000000007265;
      }

      v33 = sub_21C98E004(v32, v26, v43);

      *(v30 + 4) = v33;
      *(v30 + 12) = 1024;
      swift_beginAccess();
      *(v30 + 14) = error;
      _os_log_impl(&dword_21C6E5000, v28, v29, "Showing alert (%s) failed, user notification is nil!. Error: %d", v30, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x21CF16D90](v31, -1, -1);
      MEMORY[0x21CF16D90](v30, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void PMCredentialPickerViewController.presentationAnchor.getter()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_21CB102B4(__CFUserNotification *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  CFUserNotificationReceiveResponse(a1, 0.0, v7);
  if (AKUserNotificationResponseAction())
  {
    return a4();
  }

  else
  {
    return a2();
  }
}

void sub_21CB10350()
{
  v1 = v0;
  v2 = sub_21CB853D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB85404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_isKeychainSyncEnabled];
  v11 = [objc_opt_self() sharedMonitor];
  v12 = [v11 isKeychainSyncEnabled];

  if (v10 != v12)
  {
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v18 = sub_21CB85CF4();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    aBlock[4] = sub_21CB16EB4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_76;
    v14 = _Block_copy(aBlock);
    v15 = v1;

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    v17 = v6;
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
    sub_21CB85F14();
    v16 = v18;
    MEMORY[0x21CF15800](0, v9, v5, v14);
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v17);
  }
}

id sub_21CB10690(void *a1, const char **a2)
{
  result = [a1 delegate];
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21CB107E0(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC9470);
  swift_getKeyPath(byte_21CBC9498);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CB10860(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath(byte_21CBC9470);
  swift_getKeyPath(byte_21CBC9498);
  v3 = v2;
  return sub_21CB81DC4();
}

unint64_t sub_21CB10910(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8960, &qword_21CBC9678);
  v2 = sub_21CB85484();
  return sub_21CB10EE8(a1, v2);
}

unint64_t sub_21CB1098C(uint64_t a1)
{
  v2 = sub_21CB86474();

  return sub_21CB10FD0(a1, v2);
}

unint64_t sub_21CB109D0(char a1)
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](a1 & 1);
  v2 = sub_21CB864D4();

  return sub_21CB1103C(a1 & 1, v2);
}

unint64_t sub_21CB10A54(uint64_t a1)
{
  sub_21CB85C44();
  sub_21CB13C94(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  v2 = sub_21CB85484();

  return sub_21CB110AC(a1, v2);
}

unint64_t sub_21CB10AEC(uint64_t a1)
{
  sub_21CB86484();
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB13C94(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3F30);
  sub_21CB85494();
  v2 = *(a1 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20));
  sub_21CB864A4();
  if (v2)
  {
    v3 = v2;
    sub_21CB85DE4();
  }

  v4 = sub_21CB864D4();

  return sub_21CB1126C(a1, v4);
}

unint64_t sub_21CB10BE4(uint64_t a1)
{
  sub_21CB86484();
  sub_21C7CECE4(v4);
  v2 = sub_21CB864D4();

  return sub_21CB11960(a1, v2);
}

unint64_t sub_21CB10C54(uint64_t a1)
{
  sub_21CB86484();
  MEMORY[0x21CF15F90](a1);
  v2 = sub_21CB864D4();

  return sub_21CB10FD0(a1, v2);
}

unint64_t sub_21CB10CC0(uint64_t a1)
{
  sub_21CB855C4();
  sub_21CB86484();
  sub_21CB854C4();
  v2 = sub_21CB864D4();

  return sub_21CB1222C(a1, v2);
}

unint64_t sub_21CB10D50(uint64_t a1)
{
  v2 = sub_21CB86014();

  return sub_21CB11E50(a1, v2);
}

unint64_t sub_21CB10D94(unint64_t *a1)
{
  sub_21CB86484();
  sub_21C9DC744(v4);
  v2 = sub_21CB864D4();

  return sub_21CB11F18(a1, v2);
}

unint64_t sub_21CB10E00(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x21CF15F60](*(v1 + 40), a1, 4);

  return sub_21CB121C0(v2, v3);
}

unint64_t sub_21CB10E48(uint64_t a1, uint64_t a2, double a3)
{
  sub_21CB86484();
  sub_21CB854C4();
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  MEMORY[0x21CF15FC0](*&v6);
  v7 = sub_21CB864D4();

  return sub_21CB12330(a1, a2, v7, a3);
}

unint64_t sub_21CB10EE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8960, &qword_21CBC9678);
      if (sub_21CB85574())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21CB10FD0(uint64_t a1, uint64_t a2)
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

unint64_t sub_21CB1103C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21CB110AC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_21CB13C94(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v16 = sub_21CB85574();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21CB1126C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67[3] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3 + 64;
  v12 = -1 << *(v3 + 32);
  v13 = a2 & ~v12;
  if ((*(v3 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v55 = v7;
    v14 = ~v12;
    v15 = *a1;
    v16 = *(a1 + 8);
    if (*a1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16 == 0xC000000000000000;
    }

    v18 = !v17;
    v64 = v18;
    v65 = *(v8 + 72);
    v19 = v16 >> 62;
    v62 = v15;
    v20 = HIDWORD(v15) - v15;
    v21 = __OFSUB__(HIDWORD(v15), v15);
    v61 = v21;
    v59 = v16;
    v60 = v20;
    v63 = BYTE6(v16);
    v56 = v3;
    v57 = v3 + 64;
    v58 = v14;
    while (1)
    {
      sub_21CB171C4(*(v3 + 48) + v65 * v13, v10, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v22 = *v10;
      v23 = v10[1];
      v24 = v23 >> 62;
      if (v23 >> 62 == 3)
      {
        break;
      }

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_34;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        v31 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v31)
        {
          goto LABEL_121;
        }

        if (v19 > 1)
        {
          goto LABEL_35;
        }
      }

      else if (v24)
      {
        LODWORD(v28) = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_122;
        }

        v28 = v28;
        if (v19 > 1)
        {
LABEL_35:
          if (v19 != 2)
          {
            if (v28)
            {
              goto LABEL_110;
            }

            goto LABEL_61;
          }

          v34 = *(v62 + 16);
          v33 = *(v62 + 24);
          v31 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v31)
          {
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
          }

          goto LABEL_37;
        }
      }

      else
      {
        v28 = BYTE6(v23);
        if (v19 > 1)
        {
          goto LABEL_35;
        }
      }

LABEL_31:
      v32 = v63;
      if (v19)
      {
        v32 = v60;
        if (v61)
        {
          goto LABEL_120;
        }
      }

LABEL_37:
      if (v28 != v32)
      {
        goto LABEL_110;
      }

      if (v28 >= 1)
      {
        if (v24 > 1)
        {
          if (v24 != 2)
          {
            memset(v67, 0, 14);
LABEL_60:
            sub_21CA8FA10(v67, v62, v59, &v66);
            if (!v66)
            {
              goto LABEL_110;
            }

            goto LABEL_61;
          }

          v36 = *(v22 + 16);
          v35 = *(v22 + 24);
          v37 = sub_21CB808C4();
          if (v37)
          {
            v38 = sub_21CB808F4();
            if (__OFSUB__(v36, v38))
            {
              goto LABEL_125;
            }

            v37 += v36 - v38;
          }

          if (__OFSUB__(v35, v36))
          {
            goto LABEL_124;
          }
        }

        else
        {
          if (!v24)
          {
            v67[0] = *v10;
            LOWORD(v67[1]) = v23;
            BYTE2(v67[1]) = BYTE2(v23);
            BYTE3(v67[1]) = BYTE3(v23);
            BYTE4(v67[1]) = BYTE4(v23);
            BYTE5(v67[1]) = BYTE5(v23);
            goto LABEL_60;
          }

          v39 = v22;
          if (v22 >> 32 < v22)
          {
            goto LABEL_123;
          }

          v37 = sub_21CB808C4();
          if (v37)
          {
            v40 = sub_21CB808F4();
            if (__OFSUB__(v39, v40))
            {
              goto LABEL_126;
            }

            v37 += v39 - v40;
          }
        }

        sub_21CB808E4();
        sub_21CA8FA10(v37, v62, v59, v67);
        v3 = v56;
        v11 = v57;
        v14 = v58;
        if ((v67[0] & 1) == 0)
        {
          goto LABEL_110;
        }
      }

LABEL_61:
      if ((v10[2] != *(a1 + 16) || v10[3] != *(a1 + 24)) && (sub_21CB86344() & 1) == 0 || (v10[4] != *(a1 + 32) || v10[5] != *(a1 + 40)) && (sub_21CB86344() & 1) == 0)
      {
        goto LABEL_110;
      }

      v41 = v10[6];
      v42 = *(a1 + 48);
      if (*(a1 + 56) == 1)
      {
        if (v42 <= 1)
        {
          if (v42)
          {
            if (v41 != 1)
            {
              goto LABEL_110;
            }
          }

          else if (v41)
          {
            goto LABEL_110;
          }
        }

        else if (v42 == 2)
        {
          if (v41 != 2)
          {
            goto LABEL_110;
          }
        }

        else if (v42 == 3)
        {
          if (v41 != 3)
          {
            goto LABEL_110;
          }
        }

        else if (v41 != 4)
        {
          goto LABEL_110;
        }
      }

      else if (v41 != v42)
      {
        goto LABEL_110;
      }

      v43 = v10[8];
      v44 = *(a1 + 64);
      if (*(a1 + 72) == 1)
      {
        if (v44)
        {
          if (v44 == 1)
          {
            if (v43 != 1)
            {
              goto LABEL_110;
            }
          }

          else if (v43 != 2)
          {
            goto LABEL_110;
          }
        }

        else if (v43)
        {
          goto LABEL_110;
        }
      }

      else if (v43 != v44)
      {
        goto LABEL_110;
      }

      v45 = v10[10];
      v46 = *(a1 + 80);
      if (*(a1 + 88) == 1)
      {
        if (v46)
        {
          if (v46 == 1)
          {
            if (v45 != 1)
            {
              goto LABEL_110;
            }
          }

          else if (v45 != 2)
          {
            goto LABEL_110;
          }
        }

        else if (v45)
        {
          goto LABEL_110;
        }
      }

      else if (v45 != v46)
      {
        goto LABEL_110;
      }

      if (v10[12] != *(a1 + 96))
      {
        goto LABEL_110;
      }

      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21CB811C4();
      sub_21CB13C94(&unk_27CDF8A70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if ((sub_21CB85574() & 1) == 0)
      {
        v14 = v58;
LABEL_110:
        sub_21CB1722C(v10, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        goto LABEL_111;
      }

      v47 = *(v55 + 20);
      v48 = *(v10 + v47);
      v49 = *(a1 + v47);
      if (v48)
      {
        if (v49)
        {
          sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
          v50 = v49;
          v51 = v48;
          v52 = sub_21CB85DD4();
          sub_21CB1722C(v10, type metadata accessor for PMTOTPMigrationModel.TOTPCode);

          v3 = v56;
          v11 = v57;
          v14 = v58;
          if (v52)
          {
            return v13;
          }

          goto LABEL_111;
        }

        sub_21CB1722C(v10, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      }

      else
      {
        v53 = v49;
        sub_21CB1722C(v10, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        if (!v49)
        {
          return v13;
        }
      }

      v11 = v57;
      v14 = v58;
LABEL_111:
      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        return v13;
      }
    }

    if (v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23 == 0xC000000000000000;
    }

    v27 = !v25 || v19 < 3;
    if (((v27 | v64) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_34:
    v28 = 0;
    if (v19 > 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  return v13;
}

unint64_t sub_21CB11960(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v4 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - v15);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  v39 = v2;
  v21 = -1 << *(v2 + 32);
  v22 = a2 & ~v21;
  v37 = v2 + 64;
  if ((*(v2 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
  {
    v35 = v8;
    v36 = ~v21;
    v23 = *(v18 + 72);
    do
    {
      sub_21CB171C4(*(v39 + 48) + v23 * v22, v20, type metadata accessor for PMAccount.UniqueID);
      v26 = *(v8 + 48);
      sub_21CB171C4(v20, v10, type metadata accessor for PMAccount.UniqueID);
      sub_21CB171C4(v38, &v10[v26], type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CB171C4(v10, v13, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = v34;
          sub_21CB16FC0(&v10[v26], v34, type metadata accessor for PMAccount.SIWAUniqueID);
          v28 = sub_21C7D1550(v13, v27);
          sub_21CB1722C(v27, type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21CB1722C(v20, type metadata accessor for PMAccount.UniqueID);
          sub_21CB1722C(v13, type metadata accessor for PMAccount.SIWAUniqueID);
          if (v28)
          {
            goto LABEL_15;
          }

LABEL_12:
          sub_21CB1722C(v10, type metadata accessor for PMAccount.UniqueID);
          v8 = v35;
          goto LABEL_5;
        }

        sub_21CB1722C(v20, type metadata accessor for PMAccount.UniqueID);
        v24 = type metadata accessor for PMAccount.SIWAUniqueID;
        v25 = v13;
      }

      else
      {
        sub_21CB171C4(v10, v16, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v29 = v33;
          sub_21CB16FC0(&v10[v26], v33, type metadata accessor for PMAccount.CombinedUniqueID);
          v30 = sub_21C7D1A58(v16, v29);
          sub_21CB1722C(v29, type metadata accessor for PMAccount.CombinedUniqueID);
          sub_21CB1722C(v20, type metadata accessor for PMAccount.UniqueID);
          sub_21CB1722C(v16, type metadata accessor for PMAccount.CombinedUniqueID);
          if (v30)
          {
LABEL_15:
            sub_21CB1722C(v10, type metadata accessor for PMAccount.UniqueID);
            return v22;
          }

          goto LABEL_12;
        }

        sub_21CB1722C(v20, type metadata accessor for PMAccount.UniqueID);
        v24 = type metadata accessor for PMAccount.CombinedUniqueID;
        v25 = v16;
      }

      sub_21CB1722C(v25, v24);
      sub_21C6EA794(v10, &qword_27CDEB3C8, &unk_21CBB0010);
LABEL_5:
      v22 = (v22 + 1) & v36;
    }

    while (((*(v37 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
  }

  return v22;
}

unint64_t sub_21CB11E50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21C8D7AA4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CF15B20](v9, a1);
      sub_21C8E1980(v9);
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

unint64_t sub_21CB11F18(unint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    v8 = a1[1];
    do
    {
      v9 = (*(v2 + 48) + 112 * v4);
      v11 = v9[1];
      v10 = v9[2];
      v24 = *v9;
      v25 = v11;
      v26 = v10;
      v12 = v9[6];
      v14 = v9[3];
      v13 = v9[4];
      *v29 = v9[5];
      *&v29[16] = v12;
      v27 = v14;
      v28 = v13;
      if (*(&v24 + 1))
      {
        if (!v8 || v24 != __PAIR128__(v8, v7) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v8)
      {
        goto LABEL_4;
      }

      v15 = a1[3];
      if (*(&v25 + 1))
      {
        if (!v15 || v25 != *(a1 + 1) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v15)
      {
        goto LABEL_4;
      }

      if (v26 != *(a1 + 2) && (sub_21CB86344() & 1) == 0 || v27 != *(a1 + 3) && (sub_21CB86344() & 1) == 0 || v28 != *(a1 + 4) && (sub_21CB86344() & 1) == 0 || v29[0] != (a1[10] & 1) || __PAIR64__(v29[2], v29[1]) != __PAIR64__(*(a1 + 82), *(a1 + 81)))
      {
        goto LABEL_4;
      }

      v16 = a1[12];
      if (*&v29[16])
      {
        if (!v16 || *&v29[8] != *(a1 + 11) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v16)
      {
        goto LABEL_4;
      }

      v17 = *&v29[24];
      v18 = a1[13];
      if (*&v29[24])
      {
        if (v18)
        {
          sub_21C6E8F4C(0, &qword_27CDF8A90, 0x277CBDA58);
          sub_21C7A33F0(&v24, v23);
          v22 = v18;
          v19 = v17;
          v20 = sub_21CB85DD4();
          sub_21C7A344C(&v24);

          if (v20)
          {
            return v4;
          }
        }
      }

      else if (!v18)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21CB121C0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21CB1222C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21CB855C4();
      v8 = v7;
      if (v6 == sub_21CB855C4() && v8 == v9)
      {
        break;
      }

      v11 = sub_21CB86344();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21CB12330(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a3 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_21CB86344()) && v14 == a4)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_21CB12414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEF0, &qword_21CBC9670);
  v3 = sub_21CB86224();
  v4 = *(a1 + 32);
  v19 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_21CB109D0(v4);
  v7 = v19;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    v18 = v5;
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 24);
    v20 = *(v9 - 1);
    v15 = *v9;

    v16 = v5;
    result = sub_21CB109D0(v4);
    v9 = v14;
    v5 = v15;
    v7 = v20;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CB12570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF60, &unk_21CBAE000);
  v3 = sub_21CB86224();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_21CB109D0(v4);
  v7 = v17;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 24);
    v18 = *(v9 - 1);
    v15 = *v9;

    result = sub_21CB109D0(v4);
    v9 = v14;
    v5 = v15;
    v7 = v18;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CB126C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
    v3 = sub_21CB86224();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21C731960(v5, v6, sub_21C7319E4);
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

unint64_t sub_21CB127E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A60, &qword_21CBADE58);
    v3 = sub_21CB86224();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21C731960(v5, v6, sub_21C7319E4);
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

unint64_t sub_21CB12900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A10, &qword_21CBC9718);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED0, &qword_21CBC9720);
    v7 = sub_21CB86224();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21C6EDBAC(v9, v5, &unk_27CDF8A10, &qword_21CBC9718);
      result = sub_21CB10BE4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for PMAccount.UniqueID(0);
      result = sub_21CB16FC0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for PMAccount.UniqueID);
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

unint64_t sub_21CB12B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89B8, &unk_21CBC96B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
    v7 = sub_21CB86224();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21C6EDBAC(v9, v5, &qword_27CDF89B8, &unk_21CBC96B0);
      result = sub_21CB10A54(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21CB85C44();
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

unint64_t sub_21CB12CF0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF38, &qword_21CBADE70);
  v3 = sub_21CB86224();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_21CB10C54(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_21CB10C54(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CB12DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C8, &unk_21CBC96C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89D0, &unk_21CBADDC0);
    v7 = sub_21CB86224();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21C6EDBAC(v9, v5, &qword_27CDF89C8, &unk_21CBC96C0);
      result = sub_21CB10A54(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21CB85C44();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
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

unint64_t sub_21CB12FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
    v3 = sub_21CB86224();
    v4 = a1 + 32;

    while (1)
    {
      sub_21C6EDBAC(v4, v13, &qword_27CDF89B0, &unk_21CBBC208);
      result = sub_21CB10D50(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21C731A9C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_21CB13134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF40, &qword_21CBADF70);
    v3 = sub_21CB86224();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 64);
      v7 = *(v4 + 96);
      v23 = *(v4 + 80);
      v24 = v7;
      v8 = *(v4 + 112);
      v25 = v8;
      v9 = *(v4 + 16);
      v22[0] = *v4;
      v10 = *(v4 + 32);
      v11 = *(v4 + 48);
      v22[1] = v9;
      v22[2] = v10;
      v22[3] = v11;
      v22[4] = v6;
      v30 = v6;
      v31 = v23;
      v32 = v7;
      v26 = v22[0];
      v27 = v9;
      v28 = v10;
      v29 = v11;
      sub_21C6EDBAC(v22, v21, &qword_27CDF8AA0, &qword_21CBC9770);
      result = sub_21CB10D94(&v26);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 112 * result);
      v15 = v31;
      v14[4] = v30;
      v14[5] = v15;
      v14[6] = v32;
      v16 = v27;
      *v14 = v26;
      v14[1] = v16;
      v17 = v29;
      v14[2] = v28;
      v14[3] = v17;
      *(v3[7] + 8 * result) = v8;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_11;
      }

      v3[2] = v20;
      if (!i)
      {

        return v3;
      }

      v4 += 120;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CB132B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89D8, &unk_21CBC96D0);
    v3 = sub_21CB86224();

    for (i = (a1 + 49); ; i += 24)
    {
      v5 = *(i - 17);
      v6 = *(i - 9);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_21C731960(v5, v6, sub_21C7319E4);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 2 * result);
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

void *sub_21CB133DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A00, &unk_21CBC9708);
  v3 = sub_21CB86224();
  LODWORD(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_21CB10E00(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_21CB10E00(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CB13514(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_21CB86224();
    v10 = a1 + 32;

    while (1)
    {
      sub_21C6EDBAC(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_21CB10CC0(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_21C731A9C(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

uint64_t sub_21CB1362C(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB81674();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  v12 = 0;
  if (v11 != *MEMORY[0x277CBA7D8])
  {
    if (v11 == *MEMORY[0x277CBA7B8] || v11 == *MEMORY[0x277CBA7C8] || (v11 != *MEMORY[0x277CBA7C0] ? (v15 = v11 == *MEMORY[0x277CBA7D0]) : (v15 = 1), v15))
    {
      sub_21CB81014();
      v13 = sub_21CB81004();
      (*(v3 + 8))(v5, v2);
      return v13;
    }

    else
    {
      (*(v7 + 8))(v10, v6, 0);
      return 0;
    }
  }

  return v12;
}

uint64_t sub_21CB138C0(uint64_t a1)
{
  v2 = v1;
  if (sub_21CB81704())
  {
    return 1;
  }

  v4 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v5 >> 62)
  {
LABEL_23:
    v6 = sub_21CB85FA4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CF15BD0](v7, v5);
      if (__OFADD__(v8, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v9 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }
    }

    v10 = [v9 loginChoiceKind];
    swift_unknownObjectRelease();
    v7 = v8 + 1;
  }

  while (v10 != 6);

  v11 = *(v2 + v4);
  if (v11 >> 62)
  {
    v12 = sub_21CB85FA4();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 1;
  if (v6 != v8)
  {
    v13 = 2;
  }

  if (v12 <= 1)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_21CB13A20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB81704();
  v5 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v6 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v4)
  {
    if (v6 >> 62)
    {
      goto LABEL_32;
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    v8 = sub_21CB85FA4();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_20:

    if (a1 == 1)
    {
      if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
      {
        v13 = *(v12 + 16);
LABEL_24:

        return v13;
      }

LABEL_39:
      v13 = sub_21CB85FA4();
      goto LABEL_24;
    }

    v14 = *(v2 + v5);
    if (v14 >> 62)
    {
      v15 = sub_21CB85FA4();
      if (v12 < 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 < 0)
      {
        goto LABEL_37;
      }
    }

    if ((v12 & 0x4000000000000000) == 0)
    {
      v16 = *(v12 + 16);
LABEL_29:

      result = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
        return result;
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    v16 = sub_21CB85FA4();
    goto LABEL_29;
  }

  v17 = v5;
  v18 = a1;
  v19 = v1;
  v9 = 0;
  while ((v6 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x21CF15BD0](v9, v6);
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      v2 = v19;
      v12 = v20;
      v5 = v17;
      a1 = v18;
      goto LABEL_20;
    }

LABEL_13:
    if ([v10 loginChoiceKind] == 6)
    {
      sub_21CB86134();
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_18;
    }
  }

  if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v6 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_32:

  return sub_21CB85FA4();
}