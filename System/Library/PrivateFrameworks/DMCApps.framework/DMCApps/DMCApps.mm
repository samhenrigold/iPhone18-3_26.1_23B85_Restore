uint64_t sub_222598590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22259864C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22259875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StoreSource(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_222598820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StoreSource(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_2225988E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7DMCApps0A18InstallStateResultO_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_222598968(void *result, int a2)
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

uint64_t sub_222598998(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_2225989AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t DMCApp.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DMCApp.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DMCApp.path.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DMCApp.path.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DMCApp.originator.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DMCApp.originator.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DMCApp.sourceID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DMCApp.sourceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t DMCApp.attributes.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t DMCApp.installSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DMCApp(0) + 36);

  return sub_222598CC8(v3, a1);
}

uint64_t type metadata accessor for DMCApp(uint64_t a1)
{
  result = qword_27D00FB20;
  if (!qword_27D00FB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222598CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t DMCApp.installSource.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DMCApp(0) + 36);

  return sub_222598DC4(a1, v3);
}

uint64_t sub_222598DC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DMCApp.installBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DMCApp(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t DMCApp.installBehavior.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DMCApp(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t DMCApp.updateBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DMCApp(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t DMCApp.updateBehavior.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DMCApp(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t DMCApp.backupBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DMCApp(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t DMCApp.backupBehavior.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DMCApp(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t DMCApp.removeBehavior.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for DMCApp(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t DMCApp.removeBehavior.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for DMCApp(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t DMCApp.documentSyncBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DMCApp(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t DMCApp.documentSyncBehavior.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DMCApp(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t DMCApp.init(bundleID:originator:sourceID:attributes:backupBehavior:removeBehavior:documentSyncBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, char *a9@<X8>, unsigned __int16 *a10, unsigned __int8 *a11)
{
  v40 = a6;
  v41 = a7;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = *a8;
  v33 = *a10;
  v34 = v16;
  v32 = *a11;
  v17 = type metadata accessor for InstallSource(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v15, 1, 1, v17);
  v19 = type metadata accessor for DMCApp(0);
  v20 = v19[9];
  v18(&a9[v20], 1, 1, v17);
  v21 = v19[10];
  a9[v21] = 3;
  v22 = v19[11];
  a9[v22] = 2;
  v23 = v19[12];
  a9[v23] = 2;
  v24 = v19[13];
  *&a9[v24] = 2;
  v25 = v19[14];
  a9[v25] = 2;
  v26 = v36;
  *a9 = v35;
  *(a9 + 1) = v26;
  *(a9 + 2) = 0;
  *(a9 + 3) = 0;
  v27 = v38;
  *(a9 + 4) = v37;
  *(a9 + 5) = v27;
  v28 = v40;
  *(a9 + 6) = v39;
  *(a9 + 7) = v28;
  *(a9 + 8) = v41;
  result = sub_222598DC4(v15, &a9[v20]);
  a9[v21] = 3;
  a9[v22] = 2;
  v30 = v33;
  a9[v23] = v34;
  *&a9[v24] = v30;
  a9[v25] = v32;
  return result;
}

uint64_t sub_222599384()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2225993B4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_22259940C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22259943C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_222599494()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2225994C4(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_22259951C()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_22259954C(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2225995AC(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

void sub_2225997B4(uint64_t a1)
{
  sub_222599A3C(319, &qword_27D00FB30, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_222599938(319);
    if (v2 <= 0x3F)
    {
      sub_2225999E4(319);
      if (v3 <= 0x3F)
      {
        sub_222599A3C(319, &qword_27D00FB50, &type metadata for InstallBehavior);
        if (v4 <= 0x3F)
        {
          sub_222599A3C(319, &qword_27D00FB58, &type metadata for UpdateBehavior);
          if (v5 <= 0x3F)
          {
            sub_222599A3C(319, &qword_27D00FB60, &type metadata for BackupBehavior);
            if (v6 <= 0x3F)
            {
              sub_222599A3C(319, &qword_27D00FB68, &type metadata for RemoveBehavior);
              if (v7 <= 0x3F)
              {
                sub_222599A3C(319, &qword_27D00FB70, &type metadata for DocumentSyncBehavior);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_222599938(uint64_t a1)
{
  if (!qword_27D00FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00FB40, &qword_2225C7D90);
    v1 = sub_2225C6CB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D00FB38);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_2225999E4(uint64_t a1)
{
  if (!qword_27D00FB48)
  {
    type metadata accessor for InstallSource(255);
    v1 = sub_2225C6CB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D00FB48);
    }
  }
}

void sub_222599A3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2225C6CB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_222599ACC()
{
  v1 = *v0;
  sub_2225C6E00();
  MEMORY[0x223DBAB50](v1);
  return sub_2225C6E20();
}

uint64_t sub_222599B14(uint64_t a1)
{
  v2 = *v1;
  sub_2225C6E00();
  MEMORY[0x223DBAB50](v2);
  return sub_2225C6E20();
}

uint64_t InstallSource.init(storeSource:vppType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(type metadata accessor for InstallSource(0) + 20);
  *(a3 + v6) = 3;
  result = sub_222599BCC(a1, a3);
  *(a3 + v6) = v5;
  return result;
}

uint64_t sub_222599BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222599C50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

DMCApps::RemoveBehavior __swiftcall RemoveBehavior.init(removable:removeKeychainGroupWhenUninstall:)(Swift::Bool removable, Swift::Bool_optional removeKeychainGroupWhenUninstall)
{
  v2->value = removable;
  v2[1].value = removeKeychainGroupWhenUninstall.value;
  result.removable = removable;
  return result;
}

unint64_t sub_222599CAC()
{
  result = qword_27D00FB78;
  if (!qword_27D00FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FB78);
  }

  return result;
}

unint64_t sub_222599D04()
{
  result = qword_27D00FB80;
  if (!qword_27D00FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FB80);
  }

  return result;
}

uint64_t sub_22259A05C(uint64_t a1)
{
  result = sub_2225C69E0();
  if (v2 <= 0x3F)
  {
    result = sub_22259A0DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22259A0DC()
{
  result = qword_27D00FB98;
  if (!qword_27D00FB98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D00FB98);
  }

  return result;
}

void sub_22259A160(uint64_t a1)
{
  type metadata accessor for StoreSource(319);
  if (v1 <= 0x3F)
  {
    sub_22259A1E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22259A1E4()
{
  if (!qword_27D00FBB0)
  {
    v0 = sub_2225C6CB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D00FBB0);
    }
  }
}

uint64_t getEnumTagSinglePayload for PlistError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlistError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoveBehavior(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for RemoveBehavior(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22259A514(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DMCAppsScope(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DMCAppsScope.hashValue.getter()
{
  v1 = *v0;
  sub_2225C6E00();
  MEMORY[0x223DBAB50](v1);
  return sub_2225C6E20();
}

uint64_t static DMCAppsClient.makeAppInfo(bundleID:originator:sourceID:attributes:installSource:installBehavior:updateBehavior:backupBehavior:removeBehavior:documentSyncBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 *a10, unsigned __int8 *a11, unsigned __int8 *a12, unsigned __int16 *a13, unsigned __int8 *a14)
{
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v37 = a1;
  v38 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v35 - v17;
  v19 = *a10;
  v42 = *a11;
  v43 = v19;
  v20 = *a12;
  v40 = *a13;
  v41 = v20;
  v39 = *a14;
  sub_2225B013C(a8, &v35 - v17, &qword_27D00FB18, &qword_2225C7710);
  v21 = type metadata accessor for DMCApp(0);
  v22 = v21[9];
  v36 = v22;
  v23 = type metadata accessor for InstallSource(0);
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = v21[10];
  a9[v24] = 3;
  v25 = v21[11];
  a9[v25] = 2;
  v26 = v21[12];
  a9[v26] = 2;
  v27 = v21[13];
  *&a9[v27] = 2;
  v28 = v21[14];
  a9[v28] = 2;
  v29 = v38;
  *a9 = v37;
  *(a9 + 1) = v29;
  *(a9 + 2) = 0;
  *(a9 + 3) = 0;
  v30 = v45;
  *(a9 + 4) = v44;
  *(a9 + 5) = v30;
  v31 = v47;
  *(a9 + 6) = v46;
  *(a9 + 7) = v31;
  *(a9 + 8) = v48;

  result = sub_222598DC4(v18, &a9[v36]);
  v33 = v42;
  a9[v24] = v43;
  a9[v25] = v33;
  v34 = v40;
  a9[v26] = v41;
  *&a9[v27] = v34;
  a9[v28] = v39;
  return result;
}

uint64_t static DMCAppsClient.makeAppInfo2(bundleID:path:originator:sourceID:attributes:installSource:installBehavior:updateBehavior:backupBehavior:removeBehavior:documentSyncBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 *a14, unsigned __int16 *a15, unsigned __int8 *a16)
{
  v51 = a7;
  v52 = a8;
  v49 = a5;
  v50 = a6;
  v40 = a1;
  v41 = a3;
  v47 = a10;
  v48 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
  MEMORY[0x28223BE20](v18 - 8);
  v39 = &v38 - v19;
  v20 = *a12;
  v45 = *a13;
  v46 = v20;
  v21 = *a14;
  v43 = *a15;
  v44 = v21;
  v42 = *a16;
  sub_2225B013C(a11, &v38 - v19, &qword_27D00FB18, &qword_2225C7710);
  v22 = type metadata accessor for DMCApp(0);
  v23 = v22[9];
  v38 = v23;
  v24 = type metadata accessor for InstallSource(0);
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  v25 = v22[10];
  a9[v25] = 3;
  v26 = v22[11];
  a9[v26] = 2;
  v27 = v22[12];
  a9[v27] = 2;
  v28 = v22[13];
  *&a9[v28] = 2;
  v29 = v22[14];
  a9[v29] = 2;
  v30 = v41;
  *a9 = v40;
  *(a9 + 1) = a2;
  v31 = v47;
  v32 = v48;
  *(a9 + 2) = v30;
  *(a9 + 3) = v32;
  v33 = v50;
  *(a9 + 4) = v49;
  *(a9 + 5) = v33;
  v34 = v52;
  *(a9 + 6) = v51;
  *(a9 + 7) = v34;
  *(a9 + 8) = v31;

  result = sub_222598DC4(v39, &a9[v38]);
  v36 = v45;
  a9[v25] = v46;
  a9[v26] = v36;
  v37 = v43;
  a9[v27] = v44;
  *&a9[v28] = v37;
  a9[v29] = v42;
  return result;
}

id DMCAppsClient.init()@<X0>(uint64_t a1@<X8>)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_2225B013C(v14, &v8, &qword_27D00FBB8, &qword_2225C7718);
  if (v9)
  {
    sub_2225B01A4(v14, &qword_27D00FBB8, &qword_2225C7718);
    sub_2225988E0(&v8, &v11);
    sub_2225988E0(&v11, a1);
LABEL_5:
    type metadata accessor for DMCAppsManagementStateEvaluator();
    result = swift_allocObject();
    *(a1 + 40) = result;
    *(a1 + 48) = 1;
    return result;
  }

  sub_2225B01A4(&v8, &qword_27D00FBB8, &qword_2225C7718);
  result = [objc_opt_self() systemConnection];
  if (result)
  {
    v3 = result;
    v4 = sub_2225C6A20();
    swift_allocObject();
    v5 = sub_2225C6A10();
    v12 = v4;
    v13 = MEMORY[0x277D25A50];
    *&v11 = v5;
    v9 = &type metadata for DMCAppValidator;
    v10 = &off_2835BFC00;
    v6 = type metadata accessor for DMCAppsManager();
    v7 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(&v8, &type metadata for DMCAppValidator);
    v7[11] = &type metadata for DMCAppValidator;
    v7[12] = &off_2835BFC00;
    v7[2] = v3;
    sub_2225988E0(&v11, (v7 + 3));
    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    *(a1 + 24) = v6;
    *(a1 + 32) = &off_2835BF2E0;
    *a1 = v7;
    sub_2225B01A4(v14, &qword_27D00FBB8, &qword_2225C7718);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id DMCAppsClient.init(scope:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_2225B013C(v17, &v11, &qword_27D00FBB8, &qword_2225C7718);
  if (v12)
  {
    sub_2225B01A4(v17, &qword_27D00FBB8, &qword_2225C7718);
    sub_2225988E0(&v11, &v14);
    sub_2225988E0(&v14, a2);
LABEL_9:
    type metadata accessor for DMCAppsManagementStateEvaluator();
    result = swift_allocObject();
    *(a2 + 40) = result;
    *(a2 + 48) = v3;
    return result;
  }

  sub_2225B01A4(&v11, &qword_27D00FBB8, &qword_2225C7718);
  v4 = objc_opt_self();
  if (v3)
  {
    result = [v4 systemConnection];
    if (result)
    {
      v6 = result;
LABEL_8:
      v7 = sub_2225C6A20();
      swift_allocObject();
      v8 = sub_2225C6A10();
      v15 = v7;
      v16 = MEMORY[0x277D25A50];
      *&v14 = v8;
      v12 = &type metadata for DMCAppValidator;
      v13 = &off_2835BFC00;
      v9 = type metadata accessor for DMCAppsManager();
      v10 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(&v11, &type metadata for DMCAppValidator);
      v10[11] = &type metadata for DMCAppValidator;
      v10[12] = &off_2835BFC00;
      v10[2] = v6;
      sub_2225988E0(&v14, (v10 + 3));
      __swift_destroy_boxed_opaque_existential_1Tm(&v11);
      *(a2 + 24) = v9;
      *(a2 + 32) = &off_2835BF2E0;
      *a2 = v10;
      sub_2225B01A4(v17, &qword_27D00FBB8, &qword_2225C7718);
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    result = [v4 currentUserConnection];
    if (result)
    {
      v6 = result;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t DMCAppsClient.isManaged(bundleID:persona:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22259AF4C, 0, 0);
}

uint64_t sub_22259AF4C()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22259AFF0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_2225B0FA4(v3, v2);
}

uint64_t sub_22259AFF0(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);
    v6 = 0;
  }

  else
  {
    v6 = a1 != 0;
    v5 = *(v4 + 8);
  }

  return v5(v6);
}

uint64_t DMCAppsClient.willInstallApplication(_:options:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225B04B0;

  return sub_2225ADCA0(a1);
}

uint64_t DMCAppsClient.didInstallApplication(_:options:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22259B25C;

  return sub_2225AE70C(a1);
}

uint64_t sub_22259B25C(char a1)
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

uint64_t DMCAppsClient.updateApp(_:options:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225B04B0;

  return sub_2225AF664(a1);
}

uint64_t DMCAppsClient.didUninstall(_:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_22259B430, 0, 0);
}

uint64_t sub_22259B430()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C86B0, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 152);
  v14 = *(*(v0 + 160) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 168) = v18;
  *(v0 + 224) = v14;
  v20 = swift_task_alloc();
  *(v0 + 176) = v20;
  *v20 = v0;
  v20[1] = sub_22259B6D8;

  return sub_2225B0798(v17, v19, (v0 + 224));
}

uint64_t sub_22259B6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = a3;

  return MEMORY[0x2822009F8](sub_22259B7FC, 0, 0);
}

uint64_t sub_22259B7FC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 160), *(*(v0 + 160) + 24));
  v3 = *(v2 + 64);
  v11 = *(v2 + 24);
  v4 = *(v2 + 24);
  v12 = *(v2 + 40);
  v5 = __swift_project_boxed_opaque_existential_1Tm(v2, v4);
  *(v0 + 112) = v11;
  *(v0 + 128) = v12;
  *(v0 + 144) = v3;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_4, v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_22259B938;
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);

  return sub_2225B2820(v0 + 88, v1 & 0x1010101FFLL, v8, v9);
}

uint64_t sub_22259B938()
{
  v2 = *v1;
  v2[27] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22259BA9C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 11);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_22259BA9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22259BB20()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22259BBBC;

  return sub_2225B31D8();
}

uint64_t sub_22259BBBC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22259BCDC()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2225B04B4;

  return sub_2225B382C();
}

uint64_t sub_22259BD98()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2225B04B4;

  return sub_2225B3CD4();
}

uint64_t sub_22259BE54()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2225B04B4;

  return sub_2225B40A8();
}

uint64_t DMCAppsClient.configurationApplied(_:appAlreadyPresent:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 728) = v3;
  *(v4 + 1017) = a3;
  *(v4 + 720) = a2;
  *(v4 + 712) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = swift_task_alloc();
  *(v4 + 752) = type metadata accessor for StoreSource(0);
  *(v4 + 760) = swift_task_alloc();
  *(v4 + 768) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22259BFE0, 0, 0);
}

uint64_t sub_22259BFE0()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = sub_2225C6AA0();
  *(v0 + 776) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 720);
  v14 = *(*(v0 + 728) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 784) = v18;
  *(v0 + 1016) = v14;
  v20 = swift_task_alloc();
  *(v0 + 792) = v20;
  *v20 = v0;
  v20[1] = sub_22259C28C;

  return sub_2225B0798(v17, v19, (v0 + 1016));
}

uint64_t sub_22259C28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[100] = a1;
  v4[101] = a2;
  v4[102] = a3;

  return MEMORY[0x2822009F8](sub_22259C3B4, 0, 0);
}

uint64_t sub_22259C3B4()
{
  v16 = v0;
  if (*(v0 + 800))
  {

    v1 = sub_2225C6A80();
    v2 = sub_2225C6C50();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v15 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v15);
      _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - bad management state", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x223DBAFE0](v4, -1, -1);
      MEMORY[0x223DBAFE0](v3, -1, -1);
    }

    v5 = *(v0 + 712);
    *v5 = 0xD000000000000014;
    v5[1] = 0x80000002225C86D0;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v9 = v8[3];
    v10 = v8[5];
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    *(v0 + 824) = v12;
    v14 = swift_task_alloc();
    *(v0 + 832) = v14;
    *v14 = v0;
    v14[1] = sub_22259C608;

    return sub_2225B0FA4(v11, v13);
  }
}

uint64_t sub_22259C608(char a1)
{
  v4 = *v2;

  if (v1)
  {
    MEMORY[0x223DBAEB0](v1);

    v5 = sub_22259CFD0;
  }

  else
  {

    *(v4 + 1018) = a1;
    v5 = sub_22259C768;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22259C768()
{
  v70 = v0;
  v64 = *(v0 + 1018);
  v1 = *(v0 + 744);
  v2 = *(v0 + 720);
  v3 = v2[3];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  (*(v4 + 32))(&v68, v3, v4);
  v5 = v68;
  *(v0 + 1019) = v68;
  v6 = v2[3];
  v7 = v2[7];
  __swift_project_boxed_opaque_existential_1Tm(v2, v6);
  (*(v7 + 8))(v6, v7);
  v8 = type metadata accessor for InstallSource(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v1, 1, v8) == 1)
  {
    sub_2225B01A4(*(v0 + 744), &qword_27D00FB18, &qword_2225C7710);
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 768);
    v12 = *(v0 + 744);
    sub_2225AFE48(v12, v11);
    sub_2225AFEAC(v12, type metadata accessor for InstallSource);
    v10 = swift_getEnumCaseMultiPayload() == 3;
    sub_2225AFEAC(v11, type metadata accessor for StoreSource);
  }

  *(v0 + 1020) = v10;
  v13 = *(v0 + 736);
  v14 = *(v0 + 720);
  v15 = v14[3];
  v16 = v2[7];
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v16 + 8))(v15, v16);
  if (v9(v13, 1, v8) == 1)
  {
    sub_2225B01A4(*(v0 + 736), &qword_27D00FB18, &qword_2225C7710);
  }

  else
  {
    v17 = *(v0 + 736);
    sub_2225AFE48(v17, *(v0 + 760));
    sub_2225AFEAC(v17, type metadata accessor for InstallSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = *(v0 + 760);
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *v19;
      goto LABEL_10;
    }

    sub_2225AFEAC(v19, type metadata accessor for StoreSource);
  }

  v20 = 0;
LABEL_10:
  *(v0 + 840) = v20;
  if (*(v0 + 1017) == 1)
  {
    v21 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v22 = v21[3];
    v23 = v21[5];
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    v24 = (*(v23 + 8))(v22, v23);
    v26 = v25;
    *(v0 + 848) = v25;
    v27 = swift_task_alloc();
    *(v0 + 856) = v27;
    *v27 = v0;
    v27[1] = sub_22259D1CC;

    return sub_2225B85AC(v24, v26, &unk_2835BEA68, 0);
  }

  if (v10)
  {
    if (!*(v0 + 1018))
    {

      sub_2225AFE20(0, 1uLL);
      v29 = sub_2225C6A80();
      v30 = sub_2225C6C50();
      sub_2225AFE34(0, 1uLL);
      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 840);
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v69 = v34;
        *v33 = 136315394;
        *(v33 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v69);
        *(v33 + 12) = 2080;
        *(v0 + 616) = 0;
        *(v0 + 624) = 1;
        sub_2225AFE20(0, 1uLL);
        v35 = sub_2225C6B60();
        v37 = sub_2225AD5C8(v35, v36, &v69);

        *(v33 + 14) = v37;
        _os_log_impl(&dword_222597000, v29, v30, "%s - result: %s", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DBAFE0](v34, -1, -1);
        MEMORY[0x223DBAFE0](v33, -1, -1);
      }

      **(v0 + 712) = xmmword_2225C76A0;

      v38 = *(v0 + 8);

      return v38();
    }
  }

  else if (!*(v0 + 1018))
  {
    goto LABEL_26;
  }

  if (v64 == 2)
  {
    v39 = *(v0 + 800);
    v40 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v41 = *(v40 + 64);
    v61 = *(v40 + 24);
    v42 = *(v40 + 24);
    v65 = *(v40 + 40);
    v43 = __swift_project_boxed_opaque_existential_1Tm(v40, v42);
    *(v0 + 304) = v61;
    *(v0 + 320) = v65;
    *(v0 + 336) = v41;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 280));
    (*(*(v42 - 8) + 16))(boxed_opaque_existential_4, v43, v42);
    v45 = swift_task_alloc();
    *(v0 + 1000) = v45;
    *v45 = v0;
    v45[1] = sub_2225A0D58;
    v46 = *(v0 + 816);
    v47 = *(v0 + 808);

    return sub_2225B23A4(v0 + 280, v39 & 0x101010100, v47, v46);
  }

LABEL_26:
  if (v5)
  {
    v48 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v49 = *(v48 + 64);
    v62 = *(v48 + 24);
    v50 = *(v48 + 24);
    v66 = *(v48 + 40);
    v51 = __swift_project_boxed_opaque_existential_1Tm(v48, v50);
    *(v0 + 112) = v62;
    *(v0 + 128) = v66;
    *(v0 + 144) = v49;
    v52 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v50 - 8) + 16))(v52, v51, v50);
    v53 = swift_task_alloc();
    *(v0 + 936) = v53;
    *v53 = v0;
    v53[1] = sub_22259F86C;
    v54 = v0 + 88;
  }

  else
  {
    *(v0 + 896) = 3;
    v55 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v56 = *(v55 + 64);
    v63 = *(v55 + 24);
    v57 = *(v55 + 24);
    v67 = *(v55 + 40);
    v58 = __swift_project_boxed_opaque_existential_1Tm(v55, v57);
    *(v0 + 176) = v63;
    *(v0 + 192) = v67;
    *(v0 + 208) = v56;
    v59 = __swift_allocate_boxed_opaque_existential_4((v0 + 152));
    (*(*(v57 - 8) + 16))(v59, v58, v57);
    v60 = swift_task_alloc();
    *(v0 + 904) = v60;
    *v60 = v0;
    v60[1] = sub_22259EBBC;
    v54 = v0 + 152;
  }

  return sub_2225BE1C0(v54);
}

uint64_t sub_22259CFD0(uint64_t a1)
{
  v16 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v14);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot determine management state", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = v1[90];
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_2225C6D30();

  v14 = 0xD00000000000002ALL;
  v15 = 0x80000002225C8720;
  v7 = v6[3];
  v8 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  v9 = (*(v8 + 8))(v7, v8);
  MEMORY[0x223DBA8C0](v9);

  MEMORY[0x223DBA8C0](39, 0xE100000000000000);
  v10 = v15;
  v11 = v1[89];
  *v11 = v14;
  v11[1] = v10;

  v12 = v1[1];

  return v12();
}

uint64_t sub_22259D1CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v4 = sub_22259DB70;
  }

  else
  {
    v4 = sub_22259D2E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22259D2E4()
{
  v70 = v0;
  v1 = *(v0 + 864);
  if (v1)
  {
    v2 = [*(v0 + 864) type];

    if (v2 == 1)
    {

      v3 = sub_2225C6A80();
      v4 = sub_2225C6C50();
      v5 = os_log_type_enabled(v3, v4);
      v6 = *(v0 + 840);
      if (v5)
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v69 = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v69);
        _os_log_impl(&dword_222597000, v3, v4, "%s - result: failed - system app", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x223DBAFE0](v8, -1, -1);
        MEMORY[0x223DBAFE0](v7, -1, -1);
      }

      v9 = 0;
      v10 = 7;
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (*(v0 + 1020) == 1)
  {
    v11 = *(v0 + 840);
    if (v11)
    {
      v12 = *(v0 + 720);
      v13 = *(v12 + 64);
      v59 = *(v12 + 24);
      v14 = *(v12 + 24);
      v64 = *(v12 + 40);
      v15 = __swift_project_boxed_opaque_existential_1Tm(v12, v14);
      *(v0 + 560) = v59;
      *(v0 + 576) = v64;
      *(v0 + 592) = v13;
      boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 536));
      (*(*(v14 - 8) + 16))(boxed_opaque_existential_4, v15, v14);
      v17 = v11;
      v18 = swift_task_alloc();
      *(v0 + 880) = v18;
      *v18 = v0;
      v18[1] = sub_22259E2EC;

      return sub_2225BE8FC(v0 + 536, v17);
    }

    v10 = 0x80000002225C87F0;
    v9 = 0xD00000000000001BLL;
LABEL_17:
    v27 = *(v0 + 712);
    *v27 = v9;
    v27[1] = v10;

    v28 = *(v0 + 8);

    return v28();
  }

  if (*(v0 + 1018) == 2)
  {
    v29 = *(v0 + 800);
    v30 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v31 = *(v30 + 64);
    v61 = *(v30 + 24);
    v32 = *(v30 + 24);
    v66 = *(v30 + 40);
    v33 = __swift_project_boxed_opaque_existential_1Tm(v30, v32);
    *(v0 + 304) = v61;
    *(v0 + 320) = v66;
    *(v0 + 336) = v31;
    v34 = __swift_allocate_boxed_opaque_existential_4((v0 + 280));
    (*(*(v32 - 8) + 16))(v34, v33, v32);
    v35 = swift_task_alloc();
    *(v0 + 1000) = v35;
    *v35 = v0;
    v35[1] = sub_2225A0D58;
    v36 = *(v0 + 816);
    v37 = *(v0 + 808);

    return sub_2225B23A4(v0 + 280, v29 & 0x101010100, v37, v36);
  }

  else
  {
    if (*(v0 + 1018))
    {
      v38 = *(v0 + 720);
      __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
      v39 = *(v38 + 64);
      v62 = *(v38 + 24);
      v40 = *(v38 + 24);
      v67 = *(v38 + 40);
      v41 = __swift_project_boxed_opaque_existential_1Tm(v38, v40);
      *(v0 + 368) = v62;
      *(v0 + 384) = v67;
      *(v0 + 400) = v39;
      v42 = __swift_allocate_boxed_opaque_existential_4((v0 + 344));
      (*(*(v40 - 8) + 16))(v42, v41, v40);
      v43 = swift_task_alloc();
      *(v0 + 952) = v43;
      *v43 = v0;
      v43[1] = sub_22259FE10;
      v26 = v0 + 344;
    }

    else if (*(v0 + 1019))
    {
      v20 = *(v0 + 720);
      __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
      v21 = *(v20 + 64);
      v60 = *(v20 + 24);
      v22 = *(v20 + 24);
      v65 = *(v20 + 40);
      v23 = __swift_project_boxed_opaque_existential_1Tm(v20, v22);
      *(v0 + 112) = v60;
      *(v0 + 128) = v65;
      *(v0 + 144) = v21;
      v24 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
      (*(*(v22 - 8) + 16))(v24, v23, v22);
      v25 = swift_task_alloc();
      *(v0 + 936) = v25;
      *v25 = v0;
      v25[1] = sub_22259F86C;
      v26 = v0 + 88;
    }

    else
    {
      if (*(v0 + 804))
      {

        sub_2225AFE20(0, 6uLL);
        v50 = sub_2225C6A80();
        v51 = sub_2225C6C50();
        sub_2225AFE34(0, 6uLL);
        v52 = os_log_type_enabled(v50, v51);
        v53 = *(v0 + 840);
        if (v52)
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v69 = v55;
          *v54 = 136315394;
          *(v54 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v69);
          *(v54 + 12) = 2080;
          *(v0 + 616) = 0;
          v10 = 6;
          *(v0 + 624) = 6;
          sub_2225AFE20(0, 6uLL);
          v56 = sub_2225C6B60();
          v58 = sub_2225AD5C8(v56, v57, &v69);

          *(v54 + 14) = v58;
          _os_log_impl(&dword_222597000, v50, v51, "%s - result: %s", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DBAFE0](v55, -1, -1);
          MEMORY[0x223DBAFE0](v54, -1, -1);

          v9 = 0;
        }

        else
        {

          v9 = 0;
          v10 = 6;
        }

        goto LABEL_17;
      }

      *(v0 + 896) = 4;
      v44 = *(v0 + 720);
      __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
      v45 = *(v44 + 64);
      v63 = *(v44 + 24);
      v46 = *(v44 + 24);
      v68 = *(v44 + 40);
      v47 = __swift_project_boxed_opaque_existential_1Tm(v44, v46);
      *(v0 + 176) = v63;
      *(v0 + 192) = v68;
      *(v0 + 208) = v45;
      v48 = __swift_allocate_boxed_opaque_existential_4((v0 + 152));
      (*(*(v46 - 8) + 16))(v48, v47, v46);
      v49 = swift_task_alloc();
      *(v0 + 904) = v49;
      *v49 = v0;
      v49[1] = sub_22259EBBC;
      v26 = v0 + 152;
    }

    return sub_2225BE1C0(v26);
  }
}

uint64_t sub_22259DB70()
{
  v62 = v0;
  MEMORY[0x223DBAEB0](*(v0 + 872));

  if (*(v0 + 1020) == 1)
  {
    v1 = *(v0 + 840);
    if (v1)
    {
      v2 = *(v0 + 720);
      v3 = *(v2 + 64);
      v51 = *(v2 + 24);
      v4 = *(v2 + 24);
      v56 = *(v2 + 40);
      v5 = __swift_project_boxed_opaque_existential_1Tm(v2, v4);
      *(v0 + 560) = v51;
      *(v0 + 576) = v56;
      *(v0 + 592) = v3;
      boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 536));
      (*(*(v4 - 8) + 16))(boxed_opaque_existential_4, v5, v4);
      v7 = v1;
      v8 = swift_task_alloc();
      *(v0 + 880) = v8;
      *v8 = v0;
      v8[1] = sub_22259E2EC;

      return sub_2225BE8FC(v0 + 536, v7);
    }

    v17 = 0x80000002225C87F0;
    v18 = 0xD00000000000001BLL;
    goto LABEL_11;
  }

  if (*(v0 + 1018) == 2)
  {
    v21 = *(v0 + 800);
    v22 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v23 = *(v22 + 64);
    v53 = *(v22 + 24);
    v24 = *(v22 + 24);
    v58 = *(v22 + 40);
    v25 = __swift_project_boxed_opaque_existential_1Tm(v22, v24);
    *(v0 + 304) = v53;
    *(v0 + 320) = v58;
    *(v0 + 336) = v23;
    v26 = __swift_allocate_boxed_opaque_existential_4((v0 + 280));
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    v27 = swift_task_alloc();
    *(v0 + 1000) = v27;
    *v27 = v0;
    v27[1] = sub_2225A0D58;
    v28 = *(v0 + 816);
    v29 = *(v0 + 808);

    return sub_2225B23A4(v0 + 280, v21 & 0x101010100, v29, v28);
  }

  else
  {
    if (*(v0 + 1018))
    {
      v30 = *(v0 + 720);
      __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
      v31 = *(v30 + 64);
      v54 = *(v30 + 24);
      v32 = *(v30 + 24);
      v59 = *(v30 + 40);
      v33 = __swift_project_boxed_opaque_existential_1Tm(v30, v32);
      *(v0 + 368) = v54;
      *(v0 + 384) = v59;
      *(v0 + 400) = v31;
      v34 = __swift_allocate_boxed_opaque_existential_4((v0 + 344));
      (*(*(v32 - 8) + 16))(v34, v33, v32);
      v35 = swift_task_alloc();
      *(v0 + 952) = v35;
      *v35 = v0;
      v35[1] = sub_22259FE10;
      v16 = v0 + 344;
    }

    else if (*(v0 + 1019))
    {
      v10 = *(v0 + 720);
      __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
      v11 = *(v10 + 64);
      v52 = *(v10 + 24);
      v12 = *(v10 + 24);
      v57 = *(v10 + 40);
      v13 = __swift_project_boxed_opaque_existential_1Tm(v10, v12);
      *(v0 + 112) = v52;
      *(v0 + 128) = v57;
      *(v0 + 144) = v11;
      v14 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
      (*(*(v12 - 8) + 16))(v14, v13, v12);
      v15 = swift_task_alloc();
      *(v0 + 936) = v15;
      *v15 = v0;
      v15[1] = sub_22259F86C;
      v16 = v0 + 88;
    }

    else
    {
      if (*(v0 + 804))
      {

        sub_2225AFE20(0, 6uLL);
        v42 = sub_2225C6A80();
        v43 = sub_2225C6C50();
        sub_2225AFE34(0, 6uLL);
        v44 = os_log_type_enabled(v42, v43);
        v45 = *(v0 + 840);
        if (v44)
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v61 = v47;
          *v46 = 136315394;
          *(v46 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v61);
          *(v46 + 12) = 2080;
          *(v0 + 616) = 0;
          v17 = 6;
          *(v0 + 624) = 6;
          sub_2225AFE20(0, 6uLL);
          v48 = sub_2225C6B60();
          v50 = sub_2225AD5C8(v48, v49, &v61);

          *(v46 + 14) = v50;
          _os_log_impl(&dword_222597000, v42, v43, "%s - result: %s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DBAFE0](v47, -1, -1);
          MEMORY[0x223DBAFE0](v46, -1, -1);

          v18 = 0;
        }

        else
        {

          v18 = 0;
          v17 = 6;
        }

LABEL_11:
        v19 = *(v0 + 712);
        *v19 = v18;
        v19[1] = v17;

        v20 = *(v0 + 8);

        return v20();
      }

      *(v0 + 896) = 4;
      v36 = *(v0 + 720);
      __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
      v37 = *(v36 + 64);
      v55 = *(v36 + 24);
      v38 = *(v36 + 24);
      v60 = *(v36 + 40);
      v39 = __swift_project_boxed_opaque_existential_1Tm(v36, v38);
      *(v0 + 176) = v55;
      *(v0 + 192) = v60;
      *(v0 + 208) = v37;
      v40 = __swift_allocate_boxed_opaque_existential_4((v0 + 152));
      (*(*(v38 - 8) + 16))(v40, v39, v38);
      v41 = swift_task_alloc();
      *(v0 + 904) = v41;
      *v41 = v0;
      v41[1] = sub_22259EBBC;
      v16 = v0 + 152;
    }

    return sub_2225BE1C0(v16);
  }
}

uint64_t sub_22259E2EC()
{
  v2 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {

    v3 = sub_22259EA2C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 536));
    v3 = sub_22259E41C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22259E41C()
{
  v50 = v0;
  v1 = *(v0 + 1018);

  if (v1)
  {
    if (*(v0 + 1018) == 2)
    {
      v2 = *(v0 + 800);
      v3 = *(v0 + 720);
      __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
      v4 = *(v3 + 64);
      v41 = *(v3 + 24);
      v5 = *(v3 + 24);
      v45 = *(v3 + 40);
      v6 = __swift_project_boxed_opaque_existential_1Tm(v3, v5);
      *(v0 + 304) = v41;
      *(v0 + 320) = v45;
      *(v0 + 336) = v4;
      boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 280));
      (*(*(v5 - 8) + 16))(boxed_opaque_existential_4, v6, v5);
      v8 = swift_task_alloc();
      *(v0 + 1000) = v8;
      *v8 = v0;
      v8[1] = sub_2225A0D58;
      v9 = *(v0 + 816);
      v10 = *(v0 + 808);

      return sub_2225B23A4(v0 + 280, v2 & 0x101010100, v10, v9);
    }

    v19 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v20 = *(v19 + 64);
    v43 = *(v19 + 24);
    v21 = *(v19 + 24);
    v47 = *(v19 + 40);
    v22 = __swift_project_boxed_opaque_existential_1Tm(v19, v21);
    *(v0 + 368) = v43;
    *(v0 + 384) = v47;
    *(v0 + 400) = v20;
    v23 = __swift_allocate_boxed_opaque_existential_4((v0 + 344));
    (*(*(v21 - 8) + 16))(v23, v22, v21);
    v24 = swift_task_alloc();
    *(v0 + 952) = v24;
    *v24 = v0;
    v24[1] = sub_22259FE10;
    v18 = v0 + 344;
    goto LABEL_9;
  }

  if (*(v0 + 1019))
  {
    v12 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v13 = *(v12 + 64);
    v42 = *(v12 + 24);
    v14 = *(v12 + 24);
    v46 = *(v12 + 40);
    v15 = __swift_project_boxed_opaque_existential_1Tm(v12, v14);
    *(v0 + 112) = v42;
    *(v0 + 128) = v46;
    *(v0 + 144) = v13;
    v16 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v14 - 8) + 16))(v16, v15, v14);
    v17 = swift_task_alloc();
    *(v0 + 936) = v17;
    *v17 = v0;
    v17[1] = sub_22259F86C;
    v18 = v0 + 88;
LABEL_9:

    return sub_2225BE1C0(v18);
  }

  if ((*(v0 + 804) & 1) == 0)
  {
    *(v0 + 896) = 4;
    v25 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v26 = *(v25 + 64);
    v44 = *(v25 + 24);
    v27 = *(v25 + 24);
    v48 = *(v25 + 40);
    v28 = __swift_project_boxed_opaque_existential_1Tm(v25, v27);
    *(v0 + 176) = v44;
    *(v0 + 192) = v48;
    *(v0 + 208) = v26;
    v29 = __swift_allocate_boxed_opaque_existential_4((v0 + 152));
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v30 = swift_task_alloc();
    *(v0 + 904) = v30;
    *v30 = v0;
    v30[1] = sub_22259EBBC;
    v18 = v0 + 152;
    goto LABEL_9;
  }

  sub_2225AFE20(0, 6uLL);
  v31 = sub_2225C6A80();
  v32 = sub_2225C6C50();
  sub_2225AFE34(0, 6uLL);
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 840);
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v49 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v49);
    *(v35 + 12) = 2080;
    *(v0 + 616) = 0;
    *(v0 + 624) = 6;
    sub_2225AFE20(0, 6uLL);
    v37 = sub_2225C6B60();
    v39 = sub_2225AD5C8(v37, v38, &v49);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_222597000, v31, v32, "%s - result: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v36, -1, -1);
    MEMORY[0x223DBAFE0](v35, -1, -1);
  }

  **(v0 + 712) = xmmword_2225C76B0;

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_22259EA2C()
{
  v11 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[111];
  v5 = v0[105];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v10);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - invalid code signature", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  MEMORY[0x223DBAEB0](v4);
  *v0[89] = xmmword_2225C76C0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_22259EBBC()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    if ((v2[100] & 0x100) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = v2[112];
    }

    sub_2225AFE34(0, v3);
    v4 = sub_22259F028;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 19);
    v4 = sub_22259ED00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22259ED00()
{
  v23 = v0;
  if (*(v0 + 1017) == 1)
  {
    v1 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
    v2 = *(v1 + 64);
    v20 = *(v1 + 24);
    v3 = *(v1 + 24);
    v21 = *(v1 + 40);
    v4 = __swift_project_boxed_opaque_existential_1Tm(v1, v3);
    *(v0 + 240) = v20;
    *(v0 + 256) = v21;
    *(v0 + 272) = v2;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 216));
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_4, v4, v3);
    v6 = swift_task_alloc();
    *(v0 + 920) = v6;
    *v6 = v0;
    v6[1] = sub_22259F294;

    return sub_2225BE57C(v0 + 216);
  }

  else
  {

    if ((*(v0 + 800) & 0x100) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = *(v0 + 896);
    }

    sub_2225AFE20(0, v8);
    v9 = sub_2225C6A80();
    v10 = sub_2225C6C50();
    sub_2225AFE34(0, v8);
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 840);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v22);
      *(v13 + 12) = 2080;
      *(v0 + 616) = 0;
      *(v0 + 624) = v8;
      sub_2225AFE20(0, v8);
      v15 = sub_2225C6B60();
      v17 = sub_2225AD5C8(v15, v16, &v22);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_222597000, v9, v10, "%s - result: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DBAFE0](v14, -1, -1);
      MEMORY[0x223DBAFE0](v13, -1, -1);
    }

    v18 = *(v0 + 712);
    *v18 = 0;
    v18[1] = v8;

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22259F028()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  v1 = v0[114];
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v16);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot add configuration", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = v0[105];
  v7 = v0[90];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[79] = v16;
  v0[80] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000022, 0x80000002225C8750);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[86] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v1);
  v12 = v0[80];
  v13 = v0[89];
  *v13 = v0[79];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_22259F294()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    if ((v2[100] & 0x100) != 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = v2[112];
    }

    sub_2225AFE34(0, v3);
    v4 = sub_22259F600;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 27);
    v4 = sub_22259F3F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22259F3F0()
{
  v15 = v0;
  if ((v0[100] & 0x100) != 0)
  {
    v1 = 2;
  }

  else
  {
    v1 = v0[112];
  }

  sub_2225AFE20(0, v1);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  sub_2225AFE34(0, v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[105];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v14);
    *(v5 + 12) = 2080;
    v0[77] = 0;
    v0[78] = v1;
    sub_2225AFE20(0, v1);
    v7 = sub_2225C6B60();
    v9 = sub_2225AD5C8(v7, v8, &v14);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {
    v10 = v0[105];
  }

  v11 = v0[89];
  *v11 = 0;
  v11[1] = v1;

  v12 = v0[1];

  return v12();
}

uint64_t sub_22259F600()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  v1 = v0[116];
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v16);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot add configuration", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = v0[105];
  v7 = v0[90];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[79] = v16;
  v0[80] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000022, 0x80000002225C8750);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[86] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v1);
  v12 = v0[80];
  v13 = v0[89];
  *v13 = v0[79];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_22259F86C()
{
  v2 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v3 = sub_22259FBA4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_22259F9AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22259F9AC()
{
  v14 = v0;
  sub_2225AFE20(0, 0);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  sub_2225AFE34(0, 0);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 840);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v13);
    *(v4 + 12) = 2080;
    *(v0 + 616) = 0u;
    sub_2225AFE20(0, 0);
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  else
  {
    v9 = *(v0 + 840);
  }

  v10 = *(v0 + 712);
  *v10 = 0;
  v10[1] = 0;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22259FBA4()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v16 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v16);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot add configuration", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[118];
  v6 = v0[105];
  v7 = v0[90];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[75] = v16;
  v0[76] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000022, 0x80000002225C8750);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[85] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v5);
  v12 = v0[76];
  v13 = v0[89];
  *v13 = v0[75];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_22259FE10()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {

    v3 = sub_2225A0194;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 344));
    v3 = sub_22259FF34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22259FF34()
{
  v1 = *(v0 + 720);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
  v2 = *(v1 + 64);
  v8 = *(v1 + 24);
  v3 = *(v1 + 24);
  v9 = *(v1 + 40);
  v4 = __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  *(v0 + 432) = v8;
  *(v0 + 448) = v9;
  *(v0 + 464) = v2;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 408));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_4, v4, v3);
  v6 = swift_task_alloc();
  *(v0 + 968) = v6;
  *v6 = v0;
  v6[1] = sub_2225A0070;

  return sub_2225BE57C(v0 + 408);
}

uint64_t sub_2225A0070()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {

    v3 = sub_2225A0680;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 408));
    v3 = sub_2225A0400;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A0194()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 43);
  v1 = v0[120];
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v16);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot add configuration when taking over management", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = v0[105];
  v7 = v0[90];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[83] = v16;
  v0[84] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000031, 0x80000002225C87B0);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[88] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v1);
  v12 = v0[84];
  v13 = v0[89];
  *v13 = v0[83];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_2225A0400()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 720);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 728), *(*(v0 + 728) + 24));
  v3 = *(v2 + 64);
  v11 = *(v2 + 24);
  v4 = *(v2 + 24);
  v12 = *(v2 + 40);
  v5 = __swift_project_boxed_opaque_existential_1Tm(v2, v4);
  *(v0 + 496) = v11;
  *(v0 + 512) = v12;
  *(v0 + 528) = v3;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 472));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_4, v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 984) = v7;
  *v7 = v0;
  v7[1] = sub_2225A0540;
  v8 = *(v0 + 816);
  v9 = *(v0 + 808);

  return sub_2225B19F0(v0 + 472, v1 & 0x101010100, v9, v8);
}

uint64_t sub_2225A0540()
{
  v2 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = sub_2225A0AEC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 472));
    v3 = sub_2225A08EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A0680()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 51);
  v1 = v0[122];
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v16);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot add configuration when taking over management", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = v0[105];
  v7 = v0[90];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[83] = v16;
  v0[84] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000031, 0x80000002225C87B0);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[88] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v1);
  v12 = v0[84];
  v13 = v0[89];
  *v13 = v0[83];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_2225A08EC()
{
  v13 = v0;
  sub_2225AFE20(0, 5uLL);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  sub_2225AFE34(0, 5uLL);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[105];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v12);
    *(v4 + 12) = 2080;
    v0[77] = 0;
    v0[78] = 5;
    sub_2225AFE20(0, 5uLL);
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  else
  {
    v9 = v0[105];
  }

  *v0[89] = xmmword_2225C76D0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_2225A0AEC()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 59);
  v1 = v0[124];
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v16);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot add configuration when taking over management", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = v0[105];
  v7 = v0[90];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[83] = v16;
  v0[84] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000031, 0x80000002225C87B0);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[88] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v1);
  v12 = v0[84];
  v13 = v0[89];
  *v13 = v0[83];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_2225A0D58()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v3 = sub_2225A0E98;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 280));
    v3 = sub_2225B04AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A0E98()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 35);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v16 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C86F0, &v16);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot update configuration", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[126];
  v6 = v0[105];
  v7 = v0[90];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[81] = v16;
  v0[82] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000025, 0x80000002225C8780);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[87] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v5);
  v12 = v0[82];
  v13 = v0[89];
  *v13 = v0[81];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t DMCAppsClient.configurationRemoved(_:)(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v4 = sub_2225C69E0();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
  v3[48] = swift_task_alloc();
  v3[49] = type metadata accessor for StoreSource(0);
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225A1230, 0, 0);
}

uint64_t sub_2225A1230()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = sub_2225C6AA0();
  *(v0 + 408) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000018, 0x80000002225C8810, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 344);
  v14 = *(*(v0 + 352) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 416) = v18;
  *(v0 + 464) = v14;
  v20 = swift_task_alloc();
  *(v0 + 424) = v20;
  *v20 = v0;
  v20[1] = sub_2225A14D8;

  return sub_2225B0798(v17, v19, (v0 + 464));
}

uint64_t sub_2225A14D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[28] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v4[31] = a3;
  v4[54] = a1;
  v4[55] = a3;

  return MEMORY[0x2822009F8](sub_2225A1600, 0, 0);
}

uint64_t sub_2225A1600()
{
  v20 = v0;
  v1 = *(v0 + 432);
  if ((v1 & 0xFE) != 0)
  {

    v2 = sub_2225C6A80();
    v3 = sub_2225C6C50();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2225AD5C8(0xD000000000000018, 0x80000002225C8810, &v19);
      _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - bad management state", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x223DBAFE0](v5, -1, -1);
      MEMORY[0x223DBAFE0](v4, -1, -1);
    }

    v6 = *(v0 + 336);
    *v6 = 0xD000000000000014;
    v6[1] = 0x80000002225C86D0;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 344);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 352), *(*(v0 + 352) + 24));
    v11 = *(v10 + 64);
    v17 = *(v10 + 24);
    v12 = *(v10 + 24);
    v18 = *(v10 + 40);
    v13 = __swift_project_boxed_opaque_existential_1Tm(v10, v12);
    *(v0 + 184) = v17;
    *(v0 + 200) = v18;
    *(v0 + 216) = v11;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 160));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_4, v13, v12);
    v15 = swift_task_alloc();
    *(v0 + 448) = v15;
    *v15 = v0;
    v15[1] = sub_2225A1898;
    v16 = *(v0 + 440);

    return sub_2225B2D60(v0 + 160, v1 & 0x101010101, v9, v16);
  }
}

uint64_t sub_2225A1898()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_2225A1FDC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 160));
    v3 = sub_2225A19C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A19C4()
{
  v53 = v0;
  v1 = v0[48];
  v2 = v0[43];
  v3 = v2[3];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  (*(v4 + 8))(v3, v4);
  v5 = type metadata accessor for InstallSource(0);
  if ((*(*(v5 - 8) + 48))(v1, 1, v5) == 1)
  {
    sub_2225B01A4(v0[48], &qword_27D00FB18, &qword_2225C7710);
    v6 = 0;
  }

  else
  {
    v7 = v0[50];
    v8 = v0[48];
    sub_2225AFE48(v8, v7);
    sub_2225AFEAC(v8, type metadata accessor for InstallSource);
    v6 = swift_getEnumCaseMultiPayload() == 3;
    sub_2225AFEAC(v7, type metadata accessor for StoreSource);
  }

  v0[37] = 0;
  v0[38] = v6;
  v9 = [objc_opt_self() defaultManager];
  if (qword_27D00FB10 != -1)
  {
    swift_once();
  }

  v10 = v0[46];
  v11 = v0[47];
  v12 = v0[45];
  v13 = __swift_project_value_buffer(v12, qword_27D0107E8);
  (*(v10 + 16))(v11, v13, v12);
  sub_2225C69C0();
  (*(v10 + 8))(v11, v12);
  v14 = sub_2225C6B40();

  LODWORD(v12) = [v9 fileExistsAtPath_];

  if (v12)
  {
    v15 = v0[57];
    v16 = v0[43];
    v17 = v16[3];
    v18 = v16[5];
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v19 = (*(v18 + 8))(v17, v18);
    v21 = sub_2225BFC70(v19, v20);
    if (v15)
    {
      v22 = v0[43];

      sub_2225AFD04(v22, (v0 + 11));
      v23 = v15;
      v24 = sub_2225C6A80();
      v25 = sub_2225C6C60();
      MEMORY[0x223DBAEB0](v15);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v52[0] = v28;
        *v26 = 136315394;
        v29 = v0[14];
        v30 = v0[16];
        __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v29);
        v31 = (*(v30 + 8))(v29, v30);
        v33 = v32;
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
        v34 = sub_2225AD5C8(v31, v33, v52);

        *(v26 + 4) = v34;
        *(v26 + 12) = 2112;
        v35 = v15;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 14) = v36;
        *v27 = v36;
        _os_log_impl(&dword_222597000, v24, v25, "Failed isAppPreserved check for bundleID: %s with error: %@", v26, 0x16u);
        sub_2225B01A4(v27, &qword_27D00FBC8, &unk_2225C7C40);
        MEMORY[0x223DBAFE0](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x223DBAFE0](v28, -1, -1);
        MEMORY[0x223DBAFE0](v26, -1, -1);
        MEMORY[0x223DBAEB0](v15);
      }

      else
      {
        MEMORY[0x223DBAEB0](v15);

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
      }
    }

    else
    {
      v37 = v21;

      if (v37)
      {
        sub_2225AFF20(v0[37], v0[38]);
        *(v0 + 37) = xmmword_2225C76A0;
      }
    }
  }

  v38 = v0[37];
  v39 = v0[38];
  sub_2225AFF0C(v38, v39);
  v40 = sub_2225C6A80();
  v41 = sub_2225C6C70();
  sub_2225AFF20(v38, v39);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_2225AD5C8(0xD000000000000018, 0x80000002225C8810, v52);
    *(v42 + 12) = 2080;
    v0[39] = v38;
    v0[40] = v39;
    sub_2225AFF0C(v38, v39);
    v44 = sub_2225C6B60();
    v46 = sub_2225AD5C8(v44, v45, v52);

    *(v42 + 14) = v46;
    _os_log_impl(&dword_222597000, v40, v41, "%s - result: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v43, -1, -1);
    MEMORY[0x223DBAFE0](v42, -1, -1);
  }

  v47 = v0[42];
  swift_beginAccess();
  v49 = v0[37];
  v48 = v0[38];
  *v47 = v49;
  v47[1] = v48;
  sub_2225AFF0C(v49, v48);
  sub_2225AFF20(v49, v48);

  v50 = v0[1];

  return v50();
}

uint64_t sub_2225A1FDC()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0xD000000000000018, 0x80000002225C8810, &v15);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot remove app", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[57];
  v7 = v0[42];
  v6 = v0[43];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v16;
  v0[35] = v15;
  v0[36] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000025, 0x80000002225C8830);
  v9 = v6[3];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[41] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBAEB0](v5);
  v12 = v0[36];
  *v7 = v0[35];
  v7[1] = v12;

  v13 = v0[1];

  return v13();
}

uint64_t DMCAppsClient.optionalAppRequested(_:appAlreadyPresent:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = v3;
  *(v4 + 321) = a3;
  *(v4 + 192) = a1;
  return MEMORY[0x2822009F8](sub_2225A2268, 0, 0);
}

uint64_t sub_2225A2268()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_2225C6AA0();
  *(v0 + 216) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C8860, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 200);
  v14 = *(*(v0 + 208) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 224) = v18;
  *(v0 + 320) = v14;
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_2225A2510;

  return sub_2225B0798(v17, v19, (v0 + 320));
}

uint64_t sub_2225A2510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 240) = a1;
  *(v4 + 248) = a3;

  return MEMORY[0x2822009F8](sub_2225A2630, 0, 0);
}

uint64_t sub_2225A2630()
{
  v16 = v0;
  if (*(v0 + 240))
  {

    v1 = sub_2225C6A80();
    v2 = sub_2225C6C50();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v15 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C8860, &v15);
      _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - bad management state", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x223DBAFE0](v4, -1, -1);
      MEMORY[0x223DBAFE0](v3, -1, -1);
    }

    v5 = *(v0 + 192);
    *v5 = 0xD000000000000014;
    v5[1] = 0x80000002225C86D0;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 200);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 208), *(*(v0 + 208) + 24));
    v9 = v8[3];
    v10 = v8[5];
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    *(v0 + 256) = v12;
    v14 = swift_task_alloc();
    *(v0 + 264) = v14;
    *v14 = v0;
    v14[1] = sub_2225A2854;

    return sub_2225B0FA4(v11, v13);
  }
}

uint64_t sub_2225A2854(char a1)
{
  *(*v2 + 322) = a1;

  if (v1)
  {
    MEMORY[0x223DBAEB0](v1);

    v3 = sub_2225A2D20;
  }

  else
  {

    v3 = sub_2225A29B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A29B0()
{
  v25 = v0;
  if (*(v0 + 321) != 1)
  {

    v10 = sub_2225C6A80();
    v11 = sub_2225C6C50();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C8860, &v24);
      *(v12 + 12) = 2080;
      *(v0 + 152) = 0;
      *(v0 + 160) = 0;
      v14 = sub_2225C6B60();
      v16 = sub_2225AD5C8(v14, v15, &v24);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_222597000, v10, v11, "%s - result: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DBAFE0](v13, -1, -1);
      MEMORY[0x223DBAFE0](v12, -1, -1);
    }

    v17 = *(v0 + 192);
    *v17 = 0;
    v17[1] = 0;
    goto LABEL_16;
  }

  if (*(v0 + 322))
  {
    v1 = 1;
  }

  else
  {
    v1 = (*(v0 + 240) & 0x100000000) == 0;
  }

  if (!v1)
  {

    v18 = sub_2225C6A80();
    v19 = sub_2225C6C50();
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C8860, &v24);
      _os_log_impl(&dword_222597000, v18, v19, "%s - result: failed - cannot take over management", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DBAFE0](v22, -1, -1);
      MEMORY[0x223DBAFE0](v21, -1, -1);
    }

    **(v0 + 192) = xmmword_2225C76A0;
LABEL_16:
    v23 = *(v0 + 8);

    return v23();
  }

  v2 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 208), *(*(v0 + 208) + 24));
  v3 = v2[3];
  v4 = v2[5];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  *(v0 + 272) = v6;
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  *v8 = v0;
  v8[1] = sub_2225A2E6C;

  return sub_2225B85AC(v5, v7, &unk_2835BEA68, 0);
}

uint64_t sub_2225A2D20(uint64_t a1)
{
  v10 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C8860, &v9);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot determine management state", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = *(v1 + 192);
  *v6 = 0xD000000000000021;
  v6[1] = 0x80000002225C8890;
  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_2225A2E6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = sub_2225A3144;
  }

  else
  {
    v4 = sub_2225A2F80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225A2F80()
{
  v1 = *(v0 + 288);
  if (v1)
  {
    v2 = [*(v0 + 288) type];

    if (v2 == 1)
    {
      v3 = *(v0 + 192);

      *v3 = xmmword_2225C76E0;
      v4 = *(v0 + 8);

      return v4();
    }
  }

  else
  {
  }

  v6 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 208), *(*(v0 + 208) + 24));
  v7 = *(v6 + 64);
  v12 = *(v6 + 24);
  v8 = *(v6 + 24);
  v13 = *(v6 + 40);
  v9 = __swift_project_boxed_opaque_existential_1Tm(v6, v8);
  *(v0 + 112) = v12;
  *(v0 + 128) = v13;
  *(v0 + 144) = v7;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_4, v9, v8);
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_2225A328C;

  return sub_2225BE57C(v0 + 88);
}

uint64_t sub_2225A3144()
{
  MEMORY[0x223DBAEB0](*(v0 + 296));

  v1 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 208), *(*(v0 + 208) + 24));
  v2 = *(v1 + 64);
  v8 = *(v1 + 24);
  v3 = *(v1 + 24);
  v9 = *(v1 + 40);
  v4 = __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  *(v0 + 112) = v8;
  *(v0 + 128) = v9;
  *(v0 + 144) = v2;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_4, v4, v3);
  v6 = swift_task_alloc();
  *(v0 + 304) = v6;
  *v6 = v0;
  v6[1] = sub_2225A328C;

  return sub_2225BE57C(v0 + 88);
}

uint64_t sub_2225A328C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_2225A3554;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_2225A33CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A33CC(uint64_t a1)
{
  v13 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C8860, &v12);
    *(v4 + 12) = 2080;
    v1[19] = 0;
    v1[20] = 0;
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v9 = v1[24];
  *v9 = 0;
  v9[1] = 0;
  v10 = v1[1];

  return v10();
}

uint64_t sub_2225A3554()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0xD00000000000002ALL, 0x80000002225C8860, &v15);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot prepare app", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[39];
  v7 = v0[24];
  v6 = v0[25];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v16;
  v0[21] = v15;
  v0[22] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000027, 0x80000002225C88C0);
  v9 = v6[3];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[23] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBAEB0](v5);
  v12 = v0[22];
  *v7 = v0[21];
  v7[1] = v12;
  v13 = v0[1];

  return v13();
}

uint64_t DMCAppsClient.otherAppNowPresent(_:)(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FB18, &qword_2225C7710);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = type metadata accessor for StoreSource(0);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225A3874, 0, 0);
}

uint64_t sub_2225A3874()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 328);
  v2 = sub_2225C6AA0();
  *(v0 + 384) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 328);
  v14 = *(*(v0 + 336) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 392) = v18;
  *(v0 + 536) = v14;
  v20 = swift_task_alloc();
  *(v0 + 400) = v20;
  *v20 = v0;
  v20[1] = sub_2225A3B1C;

  return sub_2225B0798(v17, v19, (v0 + 536));
}

uint64_t sub_2225A3B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[53] = a3;

  return MEMORY[0x2822009F8](sub_2225A3C40, 0, 0);
}

uint64_t sub_2225A3C40()
{
  v16 = v0;
  if (*(v0 + 408))
  {

    v1 = sub_2225C6A80();
    v2 = sub_2225C6C50();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v15 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v15);
      _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - bad management state", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x223DBAFE0](v4, -1, -1);
      MEMORY[0x223DBAFE0](v3, -1, -1);
    }

    v5 = *(v0 + 320);
    *v5 = 0xD000000000000014;
    v5[1] = 0x80000002225C86D0;

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 336), *(*(v0 + 336) + 24));
    v9 = v8[3];
    v10 = v8[5];
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    *(v0 + 432) = v12;
    v14 = swift_task_alloc();
    *(v0 + 440) = v14;
    *v14 = v0;
    v14[1] = sub_2225A3E88;

    return sub_2225B0FA4(v11, v13);
  }
}

uint64_t sub_2225A3E88(char a1)
{
  v4 = *v2;

  if (v1)
  {
    MEMORY[0x223DBAEB0](v1);

    v5 = sub_2225A432C;
  }

  else
  {

    *(v4 + 537) = a1;
    v5 = sub_2225A3FE8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225A3FE8()
{
  v29 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = v2[3];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  (*(v4 + 32))(&v28, v3, v4);
  *(v0 + 538) = v28;
  v5 = v2[3];
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  (*(v6 + 8))(v5, v6);
  v7 = type metadata accessor for InstallSource(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v1, 1, v7) == 1)
  {
    sub_2225B01A4(*(v0 + 352), &qword_27D00FB18, &qword_2225C7710);
    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 376);
    v11 = *(v0 + 352);
    sub_2225AFE48(v11, v10);
    sub_2225AFEAC(v11, type metadata accessor for InstallSource);
    v9 = swift_getEnumCaseMultiPayload() != 3;
    sub_2225AFEAC(v10, type metadata accessor for StoreSource);
  }

  *(v0 + 539) = v9;
  v12 = *(v0 + 344);
  v13 = *(v0 + 328);
  v14 = v13[3];
  v15 = v2[7];
  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  (*(v15 + 8))(v14, v15);
  if (v8(v12, 1, v7) == 1)
  {
    sub_2225B01A4(*(v0 + 344), &qword_27D00FB18, &qword_2225C7710);
  }

  else
  {
    v16 = *(v0 + 344);
    sub_2225AFE48(v16, *(v0 + 368));
    sub_2225AFEAC(v16, type metadata accessor for InstallSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = *(v0 + 368);
    if (EnumCaseMultiPayload == 3)
    {
      v19 = *v18;
      goto LABEL_10;
    }

    sub_2225AFEAC(v18, type metadata accessor for StoreSource);
  }

  v19 = 0;
LABEL_10:
  *(v0 + 448) = v19;
  v20 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 336), *(*(v0 + 336) + 24));
  v21 = v20[3];
  v22 = v20[5];
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  v23 = (*(v22 + 8))(v21, v22);
  v25 = v24;
  *(v0 + 456) = v24;
  v26 = swift_task_alloc();
  *(v0 + 464) = v26;
  *v26 = v0;
  v26[1] = sub_2225A44A4;

  return sub_2225B85AC(v23, v25, &unk_2835BEA68, 0);
}

uint64_t sub_2225A432C(uint64_t a1)
{
  v10 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v9);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot determine management state", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = *(v1 + 320);
  *v6 = 0xD000000000000021;
  v6[1] = 0x80000002225C8890;

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_2225A44A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_2225A489C;
  }

  else
  {
    v4 = sub_2225A45B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225A45B8()
{
  v22 = v0;
  v1 = *(v0 + 472);
  if (v1)
  {
    v2 = [*(v0 + 472) type];

    if (v2 == 1)
    {

      v3 = 0;
      v4 = 4;
LABEL_13:
      v17 = *(v0 + 320);
      *v17 = v3;
      v17[1] = v4;

      v18 = *(v0 + 8);

      return v18();
    }
  }

  else
  {
  }

  if ((*(v0 + 539) & 1) != 0 || (v5 = *(v0 + 448)) == 0)
  {
    v3 = 0xD000000000000012;

    v13 = sub_2225C6A80();
    v14 = sub_2225C6C50();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v21);
      _os_log_impl(&dword_222597000, v13, v14, "%s - result: failed - must be .other store source", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x223DBAFE0](v16, -1, -1);
      MEMORY[0x223DBAFE0](v15, -1, -1);
    }

    v4 = 0x80000002225C8910;
    goto LABEL_13;
  }

  v6 = *(v0 + 328);
  v7 = *(v6 + 64);
  v19 = *(v6 + 24);
  v8 = *(v6 + 24);
  v20 = *(v6 + 40);
  v9 = __swift_project_boxed_opaque_existential_1Tm(v6, v8);
  *(v0 + 112) = v19;
  *(v0 + 128) = v20;
  *(v0 + 144) = v7;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_4, v9, v8);
  v11 = swift_task_alloc();
  *(v0 + 488) = v11;
  *v11 = v0;
  v11[1] = sub_2225A4B34;

  return sub_2225BE8FC(v0 + 88, v5);
}

uint64_t sub_2225A489C()
{
  v18 = v0;
  MEMORY[0x223DBAEB0](*(v0 + 480));

  if ((*(v0 + 539) & 1) != 0 || (v1 = *(v0 + 448)) == 0)
  {

    v9 = sub_2225C6A80();
    v10 = sub_2225C6C50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v17);
      _os_log_impl(&dword_222597000, v9, v10, "%s - result: failed - must be .other store source", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x223DBAFE0](v12, -1, -1);
      MEMORY[0x223DBAFE0](v11, -1, -1);
    }

    v13 = *(v0 + 320);
    *v13 = 0xD000000000000012;
    v13[1] = 0x80000002225C8910;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v2 = *(v0 + 328);
    v3 = *(v2 + 64);
    v15 = *(v2 + 24);
    v4 = *(v2 + 24);
    v16 = *(v2 + 40);
    v5 = __swift_project_boxed_opaque_existential_1Tm(v2, v4);
    *(v0 + 112) = v15;
    *(v0 + 128) = v16;
    *(v0 + 144) = v3;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_4, v5, v4);
    v7 = swift_task_alloc();
    *(v0 + 488) = v7;
    *v7 = v0;
    v7[1] = sub_2225A4B34;

    return sub_2225BE8FC(v0 + 88, v1);
  }
}

uint64_t sub_2225A4B34()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {

    v3 = sub_2225A4F80;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_2225A4C58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A4C58()
{
  v23 = v0;
  if (*(v0 + 537))
  {
    goto LABEL_2;
  }

  if (*(v0 + 538))
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 412))
  {
LABEL_2:
    v1 = 3;
LABEL_5:

    sub_2225AFF34(0, v1);
    v2 = sub_2225C6A80();
    v3 = sub_2225C6C50();
    sub_2225AFF48(0, v1);
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 448);
    if (v4)
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v22);
      *(v6 + 12) = 2080;
      *(v0 + 280) = 0;
      *(v0 + 288) = v1;
      sub_2225AFF34(0, v1);
      v8 = sub_2225C6B60();
      v10 = sub_2225AD5C8(v8, v9, &v22);

      *(v6 + 14) = v10;
      _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DBAFE0](v7, -1, -1);
      MEMORY[0x223DBAFE0](v6, -1, -1);
    }

    else
    {
    }

    v11 = *(v0 + 320);
    *v11 = 0;
    v11[1] = v1;

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 336), *(*(v0 + 336) + 24));
  v15 = *(v14 + 64);
  v20 = *(v14 + 24);
  v16 = *(v14 + 24);
  v21 = *(v14 + 40);
  v17 = __swift_project_boxed_opaque_existential_1Tm(v14, v16);
  *(v0 + 176) = v20;
  *(v0 + 192) = v21;
  *(v0 + 208) = v15;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 152));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_4, v17, v16);
  v19 = swift_task_alloc();
  *(v0 + 504) = v19;
  *v19 = v0;
  v19[1] = sub_2225A5108;

  return sub_2225BE57C(v0 + 152);
}

uint64_t sub_2225A4F80()
{
  v11 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[62];
  v5 = v0[56];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v10);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - invalid code signature", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DBAFE0](v7, -1, -1);
    MEMORY[0x223DBAFE0](v6, -1, -1);
  }

  MEMORY[0x223DBAEB0](v4);
  *v0[40] = xmmword_2225C76D0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_2225A5108()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    if ((*(v2 + 408) & 0x100) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    sub_2225AFF48(0, v3);
    v4 = sub_2225A54D8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 152));
    v4 = sub_2225A5248;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225A5248()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 336), *(*(v0 + 336) + 24));
  v3 = *(v2 + 64);
  v11 = *(v2 + 24);
  v4 = *(v2 + 24);
  v12 = *(v2 + 40);
  v5 = __swift_project_boxed_opaque_existential_1Tm(v2, v4);
  *(v0 + 240) = v11;
  *(v0 + 256) = v12;
  *(v0 + 272) = v3;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 216));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_4, v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 520) = v7;
  *v7 = v0;
  v7[1] = sub_2225A5380;
  v8 = *(v0 + 416);
  v9 = *(v0 + 424);

  return sub_2225B19F0(v0 + 216, v1 & 0x1010100, v8, v9);
}

uint64_t sub_2225A5380()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    if ((*(v2 + 408) & 0x100) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    sub_2225AFF48(0, v3);
    v4 = sub_2225A5934;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 216));
    v4 = sub_2225A5734;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225A54D8()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 19);
  v1 = v0[64];
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v16);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot prepare/manage app", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = v0[56];
  v7 = v0[41];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[37] = v16;
  v0[38] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000021, 0x80000002225C8930);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[39] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v1);
  v12 = v0[38];
  v13 = v0[40];
  *v13 = v0[37];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t sub_2225A5734()
{
  v15 = v0;
  if ((v0[51] & 0x100) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  sub_2225AFF34(0, v1);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  sub_2225AFF48(0, v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[56];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v14);
    *(v5 + 12) = 2080;
    v0[35] = 0;
    v0[36] = v1;
    sub_2225AFF34(0, v1);
    v7 = sub_2225C6B60();
    v9 = sub_2225AD5C8(v7, v8, &v14);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {
    v10 = v0[56];
  }

  v11 = v0[40];
  *v11 = 0;
  v11[1] = v1;

  v12 = v0[1];

  return v12();
}

uint64_t sub_2225A5934()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  v1 = v0[66];
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD000000000000016, 0x80000002225C88F0, &v16);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot prepare/manage app", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = v0[56];
  v7 = v0[41];
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v17;
  v0[37] = v16;
  v0[38] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000021, 0x80000002225C8930);
  v9 = v7[3];
  v10 = v7[5];
  __swift_project_boxed_opaque_existential_1Tm(v7, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[39] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();

  MEMORY[0x223DBAEB0](v1);
  v12 = v0[38];
  v13 = v0[40];
  *v13 = v0[37];
  v13[1] = v12;

  v14 = v0[1];

  return v14();
}

uint64_t DMCAppsClient.canTakeOverManagementOfExistingApp(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_2225A5BB4, 0, 0);
}

uint64_t sub_2225A5BB4()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_2225C6AA0();
  *(v0 + 128) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000026, 0x80000002225C8960, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 112);
  v14 = *(*(v0 + 120) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 136) = v18;
  *(v0 + 216) = v14;
  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  *v20 = v0;
  v20[1] = sub_2225A5E60;

  return sub_2225B0798(v17, v19, (v0 + 216));
}

uint64_t sub_2225A5E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a3;

  return MEMORY[0x2822009F8](sub_2225A5F80, 0, 0);
}

uint64_t sub_2225A5F80()
{
  v16 = v0;
  if (*(v0 + 152))
  {

    v1 = sub_2225C6A80();
    v2 = sub_2225C6C50();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v15 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_2225AD5C8(0xD000000000000026, 0x80000002225C8960, &v15);
      _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - bad management state", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x223DBAFE0](v4, -1, -1);
      MEMORY[0x223DBAFE0](v3, -1, -1);
    }

    v5 = *(v0 + 104);
    *v5 = 0xD000000000000014;
    v5[1] = 0x80000002225C86D0;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 120), *(*(v0 + 120) + 24));
    v9 = v8[3];
    v10 = v8[5];
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    *(v0 + 168) = v12;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_2225A61A4;

    return sub_2225B0FA4(v11, v13);
  }
}

uint64_t sub_2225A61A4(char a1)
{
  v4 = *v2;

  if (v1)
  {
    MEMORY[0x223DBAEB0](v1);

    v5 = sub_2225A6534;
  }

  else
  {

    *(v4 + 217) = a1;
    v5 = sub_2225A6304;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225A6304()
{
  v19 = v0;
  v1 = *(v0 + 217);
  v2 = *(v0 + 152) & 0x100000000;

  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v4 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 120), *(*(v0 + 120) + 24));
    v5 = v4[3];
    v6 = v4[5];
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v7 = (*(v6 + 8))(v5, v6);
    v9 = v8;
    *(v0 + 184) = v8;
    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_2225A6680;

    return sub_2225B85AC(v7, v9, &unk_2835BEA68, 0);
  }

  else
  {
    v12 = sub_2225C6A80();
    v13 = sub_2225C6C50();
    if (os_log_type_enabled(v12, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2225AD5C8(0xD000000000000026, 0x80000002225C8960, &v18);
      _os_log_impl(&dword_222597000, v12, v13, "%s - result: failed - cannot take over management", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x223DBAFE0](v16, -1, -1);
      MEMORY[0x223DBAFE0](v15, -1, -1);
    }

    **(v0 + 104) = xmmword_2225C76A0;
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2225A6534(uint64_t a1)
{
  v10 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2225AD5C8(0xD000000000000026, 0x80000002225C8960, &v9);
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - cannot determine management state", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v6 = *(v1 + 104);
  *v6 = 0xD000000000000021;
  v6[1] = 0x80000002225C8890;
  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_2225A6680(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_2225A696C;
  }

  else
  {
    v4 = sub_2225A6794;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225A6794()
{
  v14 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = [*(v0 + 200) type];

    if (v2 == 1)
    {
      **(v0 + 104) = xmmword_2225C76E0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v3 = sub_2225C6A80();
  v4 = sub_2225C6C50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000026, 0x80000002225C8960, &v13);
    *(v5 + 12) = 2080;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    v7 = sub_2225C6B60();
    v9 = sub_2225AD5C8(v7, v8, &v13);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_222597000, v3, v4, "%s - result: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  v10 = *(v0 + 104);
  *v10 = 0;
  v10[1] = 0;
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2225A696C()
{
  v12 = v0;
  MEMORY[0x223DBAEB0](v0[26]);

  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_2225AD5C8(0xD000000000000026, 0x80000002225C8960, &v11);
    *(v3 + 12) = 2080;
    v0[11] = 0;
    v0[12] = 0;
    v5 = sub_2225C6B60();
    v7 = sub_2225AD5C8(v5, v6, &v11);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v8 = v0[13];
  *v8 = 0;
  v8[1] = 0;
  v9 = v0[1];

  return v9();
}

uint64_t DMCAppsClient.willDownload(_:)(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  return MEMORY[0x2822009F8](sub_2225A6B28, 0, 0);
}

uint64_t sub_2225A6B28()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_2225C6AA0();
  *(v0 + 216) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C8990, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 200);
  v14 = *(*(v0 + 208) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 224) = v18;
  *(v0 + 272) = v14;
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_2225A6DD0;

  return sub_2225B0798(v17, v19, (v0 + 272));
}

uint64_t sub_2225A6DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 240) = a1;
  *(v4 + 248) = a3;

  return MEMORY[0x2822009F8](sub_2225A6EF0, 0, 0);
}

uint64_t sub_2225A6EF0()
{
  v17 = v0;
  if (*(v0 + 240))
  {

    v1 = sub_2225C6A80();
    v2 = sub_2225C6C50();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v16 = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C8990, &v16);
      _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - bad management state", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x223DBAFE0](v4, -1, -1);
      MEMORY[0x223DBAFE0](v3, -1, -1);
    }

    v5 = *(v0 + 192);
    *v5 = 0xD000000000000014;
    v5[1] = 0x80000002225C86D0;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 200);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 208), *(*(v0 + 208) + 24));
    v9 = *(v8 + 64);
    v14 = *(v8 + 24);
    v10 = *(v8 + 24);
    v15 = *(v8 + 40);
    v11 = __swift_project_boxed_opaque_existential_1Tm(v8, v10);
    *(v0 + 112) = v14;
    *(v0 + 128) = v15;
    *(v0 + 144) = v9;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_4, v11, v10);
    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = sub_2225A715C;

    return sub_2225BE57C(v0 + 88);
  }
}

uint64_t sub_2225A715C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_2225A7424;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_2225A729C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A729C(uint64_t a1)
{
  v13 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C8990, &v12);
    *(v4 + 12) = 2080;
    v1[21] = 0;
    v1[22] = 0;
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v9 = v1[24];
  *v9 = 0;
  v9[1] = 0;
  v10 = v1[1];

  return v10();
}

uint64_t sub_2225A7424()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C8990, &v15);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot prepare app", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[33];
  v7 = v0[24];
  v6 = v0[25];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v16;
  v0[19] = v15;
  v0[20] = v8;
  MEMORY[0x223DBA8C0](0xD00000000000002ELL, 0x80000002225C89B0);
  v9 = v6[3];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[23] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBAEB0](v5);
  v12 = v0[20];
  *v7 = v0[19];
  v7[1] = v12;
  v13 = v0[1];

  return v13();
}

uint64_t DMCAppsClient.willInstall(_:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_2225A7680, 0, 0);
}

uint64_t sub_2225A7680()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_2225C6AA0();
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0x74736E496C6C6977, 0xEF293A5F286C6C61, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 232);
  v14 = *(*(v0 + 240) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 256) = v18;
  *(v0 + 304) = v14;
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_2225A7930;

  return sub_2225B0798(v17, v19, (v0 + 304));
}

uint64_t sub_2225A7930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[19] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[34] = a1;
  v4[35] = a3;

  return MEMORY[0x2822009F8](sub_2225A7A58, 0, 0);
}

uint64_t sub_2225A7A58()
{
  v20 = v0;
  v1 = *(v0 + 272);
  if (v1)
  {

    v2 = sub_2225C6A80();
    v3 = sub_2225C6C50();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2225AD5C8(0x74736E496C6C6977, 0xEF293A5F286C6C61, &v19);
      _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - bad management state", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x223DBAFE0](v5, -1, -1);
      MEMORY[0x223DBAFE0](v4, -1, -1);
    }

    v6 = *(v0 + 224);
    *v6 = 0xD000000000000014;
    v6[1] = 0x80000002225C86D0;
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 168);
    v10 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 240), *(*(v0 + 240) + 24));
    v11 = *(v10 + 64);
    v17 = *(v10 + 24);
    v12 = *(v10 + 24);
    v18 = *(v10 + 40);
    v13 = __swift_project_boxed_opaque_existential_1Tm(v10, v12);
    *(v0 + 112) = v17;
    *(v0 + 128) = v18;
    *(v0 + 144) = v11;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_4, v13, v12);
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = sub_2225A7CDC;
    v16 = *(v0 + 280);

    return sub_2225B1300(v0 + 88, v1 & 0x101010100, v9, v16);
  }
}

uint64_t sub_2225A7CDC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_2225A7FAC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_2225A7E1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A7E1C(uint64_t a1)
{
  v13 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0x74736E496C6C6977, 0xEF293A5F286C6C61, &v12);
    *(v4 + 12) = 2080;
    v1[25] = 0;
    v1[26] = 0;
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v9 = v1[28];
  *v9 = 0;
  v9[1] = 0;
  v10 = v1[1];

  return v10();
}

uint64_t sub_2225A7FAC()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0x74736E496C6C6977, 0xEF293A5F286C6C61, &v15);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - start managing app", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[37];
  v7 = v0[28];
  v6 = v0[29];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v16;
  v0[23] = v15;
  v0[24] = v8;
  MEMORY[0x223DBA8C0](0xD00000000000001BLL, 0x80000002225C89E0);
  v9 = v6[3];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[27] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBAEB0](v5);
  v12 = v0[24];
  *v7 = v0[23];
  v7[1] = v12;
  v13 = v0[1];

  return v13();
}

uint64_t DMCAppsClient.didInstall(_:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_2225A820C, 0, 0);
}

uint64_t sub_2225A820C()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_2225C6AA0();
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0x6174736E49646964, 0xEE00293A5F286C6CLL, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 232);
  v14 = *(*(v0 + 240) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 256) = v18;
  *(v0 + 304) = v14;
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_2225A84BC;

  return sub_2225B0798(v17, v19, (v0 + 304));
}

uint64_t sub_2225A84BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[19] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[34] = a1;
  v4[35] = a3;

  return MEMORY[0x2822009F8](sub_2225A85E4, 0, 0);
}

uint64_t sub_2225A85E4()
{
  v20 = v0;
  v1 = *(v0 + 272);
  if (v1)
  {

    v2 = sub_2225C6A80();
    v3 = sub_2225C6C50();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2225AD5C8(0x6174736E49646964, 0xEE00293A5F286C6CLL, &v19);
      _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - bad management state", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x223DBAFE0](v5, -1, -1);
      MEMORY[0x223DBAFE0](v4, -1, -1);
    }

    v6 = *(v0 + 224);
    *v6 = 0xD000000000000014;
    v6[1] = 0x80000002225C86D0;
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 168);
    v10 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 240), *(*(v0 + 240) + 24));
    v11 = *(v10 + 64);
    v17 = *(v10 + 24);
    v12 = *(v10 + 24);
    v18 = *(v10 + 40);
    v13 = __swift_project_boxed_opaque_existential_1Tm(v10, v12);
    *(v0 + 112) = v17;
    *(v0 + 128) = v18;
    *(v0 + 144) = v11;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_4, v13, v12);
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = sub_2225A8868;
    v16 = *(v0 + 280);

    return sub_2225B19F0(v0 + 88, v1 & 0x101010100, v9, v16);
  }
}

uint64_t sub_2225A8868()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_2225A8B38;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_2225A89A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A89A8(uint64_t a1)
{
  v13 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0x6174736E49646964, 0xEE00293A5F286C6CLL, &v12);
    *(v4 + 12) = 2080;
    v1[25] = 0;
    v1[26] = 0;
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v9 = v1[28];
  *v9 = 0;
  v9[1] = 0;
  v10 = v1[1];

  return v10();
}

uint64_t sub_2225A8B38()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0x6174736E49646964, 0xEE00293A5F286C6CLL, &v15);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot complete managing app", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[37];
  v7 = v0[28];
  v6 = v0[29];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v16;
  v0[23] = v15;
  v0[24] = v8;
  MEMORY[0x223DBA8C0](0xD00000000000001ELL, 0x80000002225C8A00);
  v9 = v6[3];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[27] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBAEB0](v5);
  v12 = v0[24];
  *v7 = v0[23];
  v7[1] = v12;
  v13 = v0[1];

  return v13();
}

uint64_t DMCAppsClient.willUpdate(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_2225A8D94, 0, 0);
}

uint64_t sub_2225A8D94()
{
  v24 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, (v0 + 2));
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0x616470556C6C6977, 0xEE00293A5F286574, &v23);
    *(v5 + 12) = 2080;
    v7 = v0[5];
    v8 = v0[7];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v12 = sub_2225AD5C8(v9, v11, &v23);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v13 = sub_2225C6A80();
  v14 = sub_2225C6C50();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_2225AD5C8(0x616470556C6C6977, 0xEE00293A5F286574, &v23);
    *(v15 + 12) = 2080;
    v0[2] = 0;
    v0[3] = 0;
    v17 = sub_2225C6B60();
    v19 = sub_2225AD5C8(v17, v18, &v23);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_222597000, v13, v14, "%s - result: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v16, -1, -1);
    MEMORY[0x223DBAFE0](v15, -1, -1);
  }

  v20 = v0[11];
  *v20 = 0;
  v20[1] = 0;
  v21 = v0[1];

  return v21();
}

uint64_t DMCAppsClient.didUpdate(_:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_2225A910C, 0, 0);
}

uint64_t sub_2225A910C()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_2225C6AA0();
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0x7461647055646964, 0xED0000293A5F2865, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 232);
  v14 = *(*(v0 + 240) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 256) = v18;
  *(v0 + 304) = v14;
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_2225A93BC;

  return sub_2225B0798(v17, v19, (v0 + 304));
}

uint64_t sub_2225A93BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[19] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[34] = a1;
  v4[35] = a3;

  return MEMORY[0x2822009F8](sub_2225A94E4, 0, 0);
}

uint64_t sub_2225A94E4()
{
  v20 = v0;
  v1 = *(v0 + 272);
  if (v1)
  {

    v2 = sub_2225C6A80();
    v3 = sub_2225C6C50();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2225AD5C8(0x7461647055646964, 0xED0000293A5F2865, &v19);
      _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - bad management state", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x223DBAFE0](v5, -1, -1);
      MEMORY[0x223DBAFE0](v4, -1, -1);
    }

    v6 = *(v0 + 224);
    *v6 = 0xD000000000000014;
    v6[1] = 0x80000002225C86D0;
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 168);
    v10 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 240), *(*(v0 + 240) + 24));
    v11 = *(v10 + 64);
    v17 = *(v10 + 24);
    v12 = *(v10 + 24);
    v18 = *(v10 + 40);
    v13 = __swift_project_boxed_opaque_existential_1Tm(v10, v12);
    *(v0 + 112) = v17;
    *(v0 + 128) = v18;
    *(v0 + 144) = v11;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_4, v13, v12);
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = sub_2225A9768;
    v16 = *(v0 + 280);

    return sub_2225B23A4(v0 + 88, v1 & 0x101010100, v9, v16);
  }
}

uint64_t sub_2225A9768()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_2225A9A38;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_2225A98A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225A98A8(uint64_t a1)
{
  v13 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0x7461647055646964, 0xED0000293A5F2865, &v12);
    *(v4 + 12) = 2080;
    v1[25] = 0;
    v1[26] = 0;
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v9 = v1[28];
  *v9 = 0;
  v9[1] = 0;
  v10 = v1[1];

  return v10();
}

uint64_t sub_2225A9A38()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0x7461647055646964, 0xED0000293A5F2865, &v15);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot update management of app", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[37];
  v7 = v0[28];
  v6 = v0[29];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v16;
  v0[23] = v15;
  v0[24] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000021, 0x80000002225C8A20);
  v9 = v6[3];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[27] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBAEB0](v5);
  v12 = v0[24];
  *v7 = v0[23];
  v7[1] = v12;
  v13 = v0[1];

  return v13();
}

uint64_t DMCAppsClient.didUninstall(_:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_2225A9C98, 0, 0);
}

uint64_t sub_2225A9C98()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_2225C6AA0();
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C86B0, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 232);
  v14 = *(*(v0 + 240) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 256) = v18;
  *(v0 + 304) = v14;
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_2225A9F40;

  return sub_2225B0798(v17, v19, (v0 + 304));
}

uint64_t sub_2225A9F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[19] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[34] = a1;
  v4[35] = a3;

  return MEMORY[0x2822009F8](sub_2225AA068, 0, 0);
}

uint64_t sub_2225AA068()
{
  v20 = v0;
  v1 = *(v0 + 272);
  if ((v1 & 0xFE) != 0)
  {

    v2 = sub_2225C6A80();
    v3 = sub_2225C6C50();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C86B0, &v19);
      _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - bad management state", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x223DBAFE0](v5, -1, -1);
      MEMORY[0x223DBAFE0](v4, -1, -1);
    }

    v6 = *(v0 + 224);
    *v6 = 0xD000000000000014;
    v6[1] = 0x80000002225C86D0;
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 168);
    v10 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 240), *(*(v0 + 240) + 24));
    v11 = *(v10 + 64);
    v17 = *(v10 + 24);
    v12 = *(v10 + 24);
    v18 = *(v10 + 40);
    v13 = __swift_project_boxed_opaque_existential_1Tm(v10, v12);
    *(v0 + 112) = v17;
    *(v0 + 128) = v18;
    *(v0 + 144) = v11;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_4, v13, v12);
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = sub_2225AA2E8;
    v16 = *(v0 + 280);

    return sub_2225B2820(v0 + 88, v1 & 0x101010101, v9, v16);
  }
}

uint64_t sub_2225AA2E8()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_2225AA5B0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_2225AA428;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225AA428(uint64_t a1)
{
  v13 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C86B0, &v12);
    *(v4 + 12) = 2080;
    v1[25] = 0;
    v1[26] = 0;
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v9 = v1[28];
  *v9 = 0;
  v9[1] = 0;
  v10 = v1[1];

  return v10();
}

uint64_t sub_2225AA5B0()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0xD000000000000010, 0x80000002225C86B0, &v15);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot unmanaged app", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[37];
  v7 = v0[28];
  v6 = v0[29];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v16;
  v0[23] = v15;
  v0[24] = v8;
  MEMORY[0x223DBA8C0](0xD000000000000021, 0x80000002225C8A50);
  v9 = v6[3];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[27] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBAEB0](v5);
  v12 = v0[24];
  *v7 = v0[23];
  v7[1] = v12;
  v13 = v0[1];

  return v13();
}

uint64_t DMCAppsClient.didRemoveConfiguration(_:)(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_2225AA80C, 0, 0);
}

uint64_t sub_2225AA80C()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_2225C6AA0();
  *(v0 + 248) = __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD00000000000001ALL, 0x80000002225C8A80, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 232);
  v14 = *(*(v0 + 240) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 256) = v18;
  *(v0 + 304) = v14;
  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_2225AAAB4;

  return sub_2225B0798(v17, v19, (v0 + 304));
}

uint64_t sub_2225AAAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[19] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[34] = a1;
  v4[35] = a3;

  return MEMORY[0x2822009F8](sub_2225AABDC, 0, 0);
}

uint64_t sub_2225AABDC()
{
  v20 = v0;
  v1 = *(v0 + 272);
  if ((v1 & 0xFE) != 0)
  {

    v2 = sub_2225C6A80();
    v3 = sub_2225C6C50();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2225AD5C8(0xD00000000000001ALL, 0x80000002225C8A80, &v19);
      _os_log_impl(&dword_222597000, v2, v3, "%s - result: failed - bad management state", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x223DBAFE0](v5, -1, -1);
      MEMORY[0x223DBAFE0](v4, -1, -1);
    }

    v6 = *(v0 + 224);
    *v6 = 0xD000000000000014;
    v6[1] = 0x80000002225C86D0;
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 168);
    v10 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 240), *(*(v0 + 240) + 24));
    v11 = *(v10 + 64);
    v17 = *(v10 + 24);
    v12 = *(v10 + 24);
    v18 = *(v10 + 40);
    v13 = __swift_project_boxed_opaque_existential_1Tm(v10, v12);
    *(v0 + 112) = v17;
    *(v0 + 128) = v18;
    *(v0 + 144) = v11;
    boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_4, v13, v12);
    v15 = swift_task_alloc();
    *(v0 + 288) = v15;
    *v15 = v0;
    v15[1] = sub_2225AAE54;
    v16 = *(v0 + 280);

    return sub_2225B2D60(v0 + 88, v1 & 0x101010101, v9, v16);
  }
}

uint64_t sub_2225AAE54()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_2225AB11C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v3 = sub_2225AAF94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225AAF94(uint64_t a1)
{
  v13 = v1;
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_2225AD5C8(0xD00000000000001ALL, 0x80000002225C8A80, &v12);
    *(v4 + 12) = 2080;
    v1[25] = 0;
    v1[26] = 0;
    v6 = sub_2225C6B60();
    v8 = sub_2225AD5C8(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_222597000, v2, v3, "%s - result: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v5, -1, -1);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v9 = v1[28];
  *v9 = 0;
  v9[1] = 0;
  v10 = v1[1];

  return v10();
}

uint64_t sub_2225AB11C()
{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  v1 = sub_2225C6A80();
  v2 = sub_2225C6C50();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2225AD5C8(0xD00000000000001ALL, 0x80000002225C8A80, &v15);
    _os_log_impl(&dword_222597000, v1, v2, "%s - result: failed - cannot completely remove app", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DBAFE0](v4, -1, -1);
    MEMORY[0x223DBAFE0](v3, -1, -1);
  }

  v5 = v0[37];
  v7 = v0[28];
  v6 = v0[29];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_2225C6D30();
  v8 = v16;
  v0[23] = v15;
  v0[24] = v8;
  MEMORY[0x223DBA8C0](0xD00000000000002CLL, 0x80000002225C8AA0);
  v9 = v6[3];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1Tm(v6, v9);
  v11 = (*(v10 + 8))(v9, v10);
  MEMORY[0x223DBA8C0](v11);

  MEMORY[0x223DBA8C0](2112039, 0xE300000000000000);
  v0[27] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
  sub_2225C6D50();
  MEMORY[0x223DBAEB0](v5);
  v12 = v0[24];
  *v7 = v0[23];
  v7[1] = v12;
  v13 = v0[1];

  return v13();
}

uint64_t DMCAppsClient.installFailed(_:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_2225AB374, 0, 0);
}

uint64_t sub_2225AB374()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225AFD04(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000011, 0x80000002225C8AD0, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 152);
  v14 = *(*(v0 + 160) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 168) = v18;
  *(v0 + 216) = v14;
  v20 = swift_task_alloc();
  *(v0 + 176) = v20;
  *v20 = v0;
  v20[1] = sub_2225AB61C;

  return sub_2225B0798(v17, v19, (v0 + 216));
}

uint64_t sub_2225AB61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = a3;

  return MEMORY[0x2822009F8](sub_2225AB740, 0, 0);
}

uint64_t sub_2225AB740()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 160), *(*(v0 + 160) + 24));
  v3 = *(v2 + 64);
  v11 = *(v2 + 24);
  v4 = *(v2 + 24);
  v12 = *(v2 + 40);
  v5 = __swift_project_boxed_opaque_existential_1Tm(v2, v4);
  *(v0 + 112) = v11;
  *(v0 + 128) = v12;
  *(v0 + 144) = v3;
  boxed_opaque_existential_4 = __swift_allocate_boxed_opaque_existential_4((v0 + 88));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_4, v5, v4);
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_2225AB87C;
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);

  return sub_2225B2D60(v0 + 88, v1 & 0x1010101FFLL, v8, v9);
}

uint64_t sub_2225AB87C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    MEMORY[0x223DBAEB0](v0);

    return MEMORY[0x2822009F8](sub_2225AB9E4, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 88));
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2225AB9E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t DMCAppsClient.shouldPromptForInstallConsent(for:)(uint64_t a1, char a2)
{
  *(v3 + 32) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2225ABA68, 0, 0);
}

uint64_t sub_2225ABA68()
{
  v1 = [objc_opt_self() sharedConfiguration];
  v2 = [v1 isSupervised];

  if (v2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = sub_2225ABB1C(*(v0 + 16), *(v0 + 32) & 1) ^ 1;
  }

  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t sub_2225ABB1C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_2225ABF20();
    v4 = *(v3 + 2);
    v5 = 32;
    while (v4)
    {
      v6 = *&v3[v5];
      v5 += 8;
      --v4;
      if (v6 == a1)
      {

        return 1;
      }
    }
  }

  return 0;
}

char *sub_2225ABF20()
{
  v1 = v0;
  v2 = sub_2225C69E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MDMFilePath();
  if (result)
  {
    v7 = result;
    sub_2225C6B50();

    sub_2225C6990();

    v8 = sub_2225C63E8();
    if (v0)
    {
LABEL_32:
      (*(v3 + 8))(v5, v2);
      return v1;
    }

    v9 = v8;
    if (v8)
    {
      v10 = sub_2225C6B50();
      v12 = v11;
      if (v9[2] && (v13 = v10, , v14 = sub_2225ADB70(v13, v12), v16 = v15, , (v16 & 1) != 0))
      {
        sub_2225B0214(v9[7] + 32 * v14, &v39);
      }

      else
      {

        v39 = 0u;
        v40 = 0u;
      }

      v18 = sub_2225C6B50();
      if (v9[2])
      {
        v20 = sub_2225ADB70(v18, v19);
        v22 = v21;

        if (v22)
        {
          sub_2225B0214(v9[7] + 32 * v20, v38);

          goto LABEL_15;
        }
      }

      else
      {
      }

      v17 = 0uLL;
    }

    else
    {
      v17 = 0uLL;
      v39 = 0u;
      v40 = 0u;
    }

    v38[0] = v17;
    v38[1] = v17;
LABEL_15:
    sub_2225B013C(&v39, &v35, &qword_27D00FBD8, &qword_2225C7D80);
    if (v36)
    {
      sub_2225B0204(&v35, v37);
      sub_2225B0214(v37, &v35);
      sub_2225B0270();
      if (!swift_dynamicCast())
      {
        sub_2225B02BC();
        swift_allocError();
        *v32 = 0;
        *(v32 + 8) = 0;
LABEL_31:
        *(v32 + 16) = 2;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        v1 = &qword_27D00FBD8;
        sub_2225B01A4(v38, &qword_27D00FBD8, &qword_2225C7D80);
        sub_2225B01A4(&v39, &qword_27D00FBD8, &qword_2225C7D80);
        goto LABEL_32;
      }

      v23 = v41;
      v24 = [v41 unsignedLongLongValue];
      v1 = sub_2225BC694(0, 1, 1, MEMORY[0x277D84F90]);
      v26 = *(v1 + 2);
      v25 = *(v1 + 3);
      if (v26 >= v25 >> 1)
      {
        v1 = sub_2225BC694((v25 > 1), v26 + 1, 1, v1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      *(v1 + 2) = v26 + 1;
      *&v1[8 * v26 + 32] = v24;
    }

    else
    {
      sub_2225B01A4(&v35, &qword_27D00FBD8, &qword_2225C7D80);
      v1 = MEMORY[0x277D84F90];
    }

    sub_2225B013C(v38, &v35, &qword_27D00FBD8, &qword_2225C7D80);
    if (!v36)
    {
      sub_2225B01A4(v38, &qword_27D00FBD8, &qword_2225C7D80);
      sub_2225B01A4(&v39, &qword_27D00FBD8, &qword_2225C7D80);
      (*(v3 + 8))(v5, v2);
      sub_2225B01A4(&v35, &qword_27D00FBD8, &qword_2225C7D80);
      return v1;
    }

    sub_2225B0204(&v35, v37);
    sub_2225B0214(v37, &v35);
    sub_2225B0270();
    if (swift_dynamicCast())
    {
      v27 = v41;
      v28 = [v41 unsignedLongLongValue];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v1 = sub_2225BC694(0, *(v1 + 2) + 1, 1, v1);
      }

      v31 = *(v1 + 2);
      v30 = *(v1 + 3);
      if (v31 >= v30 >> 1)
      {
        v1 = sub_2225BC694((v30 > 1), v31 + 1, 1, v1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      sub_2225B01A4(v38, &qword_27D00FBD8, &qword_2225C7D80);
      sub_2225B01A4(&v39, &qword_27D00FBD8, &qword_2225C7D80);
      (*(v3 + 8))(v5, v2);
      *(v1 + 2) = v31 + 1;
      *&v1[8 * v31 + 32] = v34;
      return v1;
    }

    sub_2225B02BC();
    swift_allocError();
    *v32 = xmmword_2225C76F0;
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

id DMCAppsClient.organizationName.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result managingOrganizationInformation];

    if (v2)
    {
      v3 = sub_2225C6B20();

      v4 = sub_2225C6B50();
      if (*(v3 + 16))
      {
        v6 = sub_2225ADB70(v4, v5);
        v8 = v7;

        if (v8)
        {
          v9 = *(*(v3 + 56) + 16 * v6);

          return v9;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2225AC5BC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225B04A8;

  return DMCAppsClient.configurationApplied(_:appAlreadyPresent:)(a1, a2, a3);
}

uint64_t sub_2225AC66C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.configurationRemoved(_:)(a1, a2);
}

uint64_t sub_2225AC714(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225B04A8;

  return DMCAppsClient.optionalAppRequested(_:appAlreadyPresent:)(a1, a2, a3);
}

uint64_t sub_2225AC7C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.otherAppNowPresent(_:)(a1, a2);
}

uint64_t sub_2225AC86C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.canTakeOverManagementOfExistingApp(_:)(a1, a2);
}

uint64_t sub_2225AC914(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.willDownload(_:)(a1, a2);
}

uint64_t sub_2225AC9BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.willInstall(_:)(a1, a2);
}

uint64_t sub_2225ACA64(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225ACB0C;

  return DMCAppsClient.didInstall(_:)(a1, a2);
}

uint64_t sub_2225ACB0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2225ACC00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.willUpdate(_:)(a1, a2);
}

uint64_t sub_2225ACCA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.didUpdate(_:)(a1, a2);
}

uint64_t sub_2225ACD48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.didUninstall(_:)(a1, a2);
}

uint64_t sub_2225ACDF0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B04A8;

  return DMCAppsClient.didRemoveConfiguration(_:)(a1, a2);
}

uint64_t sub_2225ACE98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225B04A8;

  return DMCAppsClient.installFailed(_:)(a1);
}

uint64_t sub_2225ACF44(uint64_t a1, char a2)
{
  *(v3 + 32) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2225ABA68, 0, 0);
}

uint64_t sub_2225ACF68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2225ACF8C, 0, 0);
}

uint64_t sub_2225ACF8C()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2225B04B8;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_2225B0FA4(v3, v2);
}

uint64_t sub_2225AD030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225B04B0;

  return sub_2225ADCA0(a1);
}

uint64_t sub_2225AD0DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225B04B0;

  return sub_2225AE70C(a1);
}

uint64_t sub_2225AD188(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225B04B0;

  return sub_2225AF664(a1);
}

uint64_t sub_2225AD254()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2225AD2F0;

  return sub_2225B4484();
}

uint64_t sub_2225AD2F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2225AD41C()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2225B04A0;

  return sub_2225B4E14();
}

uint64_t sub_2225AD4D8()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2225B04A0;

  return sub_2225B4484();
}

unint64_t sub_2225AD5C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2225AD694(v11, 0, 0, 1, a1, a2);
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
    sub_2225B0214(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2225AD694(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2225AD7A0(a5, a6);
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
    result = sub_2225C6D40();
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

void *sub_2225AD7A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_2225AD7EC(a1, a2);
  sub_2225AD91C(&unk_2835BE9D0);
  return v3;
}

void *sub_2225AD7EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2225ADA08(v5, 0);
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

  result = sub_2225C6D40();
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
        v10 = sub_2225C6B90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2225ADA08(v10, 0);
        result = sub_2225C6D20();
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

uint64_t sub_2225AD91C(uint64_t result)
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

  result = sub_2225ADA7C(result, v11, 1, v3);
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

void *sub_2225ADA08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBF0, &qword_2225C79E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2225ADA7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBF0, &qword_2225C79E0);
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

unint64_t sub_2225ADB70(uint64_t a1, uint64_t a2)
{
  sub_2225C6E00();
  sub_2225C6B70();
  v4 = sub_2225C6E20();

  return sub_2225ADBE8(a1, a2, v4);
}

unint64_t sub_2225ADBE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2225C6D90())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2225ADCA0(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2225ADCC0, 0, 0);
}

uint64_t sub_2225ADCC0()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225B0314(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000022, 0x80000002225C8B40, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 80);
  v14 = *(*(v0 + 88) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 96) = v18;
  *(v0 + 160) = v14;
  v20 = swift_task_alloc();
  *(v0 + 104) = v20;
  *v20 = v0;
  v20[1] = sub_2225ADF68;

  return sub_2225B0798(v17, v19, (v0 + 160));
}

uint64_t sub_2225ADF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;

  return MEMORY[0x2822009F8](sub_2225AE08C, 0, 0);
}

uint64_t sub_2225AE08C()
{
  if (*(v0 + 112))
  {

    sub_2225B02BC();
    swift_allocError();
    *v1 = xmmword_2225C7700;
    *(v1 + 16) = 2;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2(0);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 88), *(*(v0 + 88) + 24));
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_2225AE1D0;
    v5 = *(v0 + 80);

    return sub_2225BE1C0(v5);
  }
}

uint64_t sub_2225AE1D0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225AE320, 0, 0);
  }
}

uint64_t sub_2225AE320()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 88), *(*(v0 + 88) + 24));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_2225AE3D8;
  v2 = *(v0 + 80);

  return sub_2225BE57C(v2);
}

uint64_t sub_2225AE3D8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225AE528, 0, 0);
  }
}

uint64_t sub_2225AE528()
{
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 88), *(*(v0 + 88) + 24));
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_2225AE5E0;
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);

  return sub_2225B1300(v5, v1 & 0x101010100, v3, v4);
}

uint64_t sub_2225AE5E0()
{
  v2 = *v1;

  v3 = *(v2 + 8);

  return v3(v0 == 0);
}

uint64_t sub_2225AE70C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2225AE72C, 0, 0);
}

uint64_t sub_2225AE72C()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225B0314(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000021, 0x80000002225C8B10, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 80);
  v14 = *(*(v0 + 88) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 96) = v18;
  *(v0 + 184) = v14;
  v20 = swift_task_alloc();
  *(v0 + 104) = v20;
  *v20 = v0;
  v20[1] = sub_2225AE9D4;

  return sub_2225B0798(v17, v19, (v0 + 184));
}

uint64_t sub_2225AE9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;

  return MEMORY[0x2822009F8](sub_2225AEAF8, 0, 0);
}

uint64_t sub_2225AEAF8()
{
  if (*(v0 + 112))
  {

    sub_2225B02BC();
    swift_allocError();
    *v1 = xmmword_2225C7700;
    *(v1 + 16) = 2;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2(0);
  }

  else
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = v4[3];
    v7 = v4[5];
    __swift_project_boxed_opaque_existential_1Tm(v4, v6);
    v8 = (*(v7 + 8))(v6, v7);
    v10 = v9;
    *(v0 + 136) = v9;
    __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_2225AEC74;

    return sub_2225B0FA4(v8, v10);
  }
}

uint64_t sub_2225AEC74(char a1)
{
  v4 = *v2;

  if (v1)
  {
    MEMORY[0x223DBAEB0](v1);

    v5 = sub_2225B04A4;
  }

  else
  {

    *(v4 + 185) = a1;
    v5 = sub_2225AEDC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2225AEDC8()
{
  if (*(v0 + 185))
  {
    v1 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 88), *(*(v0 + 88) + 24));
    v2 = swift_task_alloc();
    *(v0 + 176) = v2;
    *v2 = v0;
    v2[1] = sub_2225AF538;
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 80);

    return sub_2225B19F0(v5, v1 & 0x101010100, v3, v4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 88), *(*(v0 + 88) + 24));
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_2225AEF20;
    v8 = *(v0 + 80);

    return sub_2225BE1C0(v8);
  }
}

uint64_t sub_2225AEF20()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225AF070, 0, 0);
  }
}

uint64_t sub_2225AF070()
{
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 88), *(*(v0 + 88) + 24));
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_2225AF128;
  v2 = *(v0 + 80);

  return sub_2225BE57C(v2);
}

uint64_t sub_2225AF128()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225AF278, 0, 0);
  }
}

uint64_t sub_2225AF278()
{
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 88), *(*(v0 + 88) + 24));
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  *v2 = v0;
  v2[1] = sub_2225AF330;
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);

  return sub_2225B1300(v5, v1 & 0x101010100, v3, v4);
}

uint64_t sub_2225AF330()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225AF480, 0, 0);
  }
}

uint64_t sub_2225AF480()
{
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 88), *(*(v0 + 88) + 24));
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_2225AF538;
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);

  return sub_2225B19F0(v5, v1 & 0x101010100, v3, v4);
}

uint64_t sub_2225AF538()
{
  v2 = *v1;

  v3 = *(v2 + 8);

  return v3(v0 == 0);
}

uint64_t sub_2225AF664(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_2225AF684, 0, 0);
}

uint64_t sub_2225AF684()
{
  v23 = v0;
  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_2225C6AA0();
  __swift_project_value_buffer(v2, qword_27D0107A0);
  sub_2225B0314(v1, v0 + 16);
  v3 = sub_2225C6A80();
  v4 = sub_2225C6C70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_2225AD5C8(0xD000000000000015, 0x80000002225C8AF0, &v22);
    *(v5 + 12) = 2080;
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v12 = sub_2225AD5C8(v9, v11, &v22);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_222597000, v3, v4, "%s - app: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DBAFE0](v6, -1, -1);
    MEMORY[0x223DBAFE0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v13 = *(v0 + 112);
  v14 = *(*(v0 + 120) + 48);
  v15 = v13[3];
  v16 = v13[5];
  __swift_project_boxed_opaque_existential_1Tm(v13, v15);
  v17 = (*(v16 + 80))(v15, v16);
  v19 = v18;
  *(v0 + 128) = v18;
  *(v0 + 168) = v14;
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  v20[1] = sub_2225AF92C;

  return sub_2225B0798(v17, v19, (v0 + 168));
}

uint64_t sub_2225AF92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[10] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = a3;
  v4[18] = a1;
  v4[19] = a3;

  return MEMORY[0x2822009F8](sub_2225AFA54, 0, 0);
}

uint64_t sub_2225AFA54()
{
  v1 = *(v0 + 144);
  if (v1)
  {

    sub_2225B02BC();
    swift_allocError();
    *v2 = xmmword_2225C7700;
    *(v2 + 16) = 2;
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3(0);
  }

  else
  {
    v5 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1Tm(*(v0 + 120), *(*(v0 + 120) + 24));
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = sub_2225AFBA0;
    v7 = *(v0 + 152);
    v8 = *(v0 + 112);

    return sub_2225B23A4(v8, v1 & 0x101010100, v5, v7);
  }
}

uint64_t sub_2225AFBA0()
{
  v2 = *v1;

  v3 = *(v2 + 8);

  return v3(v0 == 0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2225AFD04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2225AFE20(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_2225AFE34(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_2225AFE48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225AFEAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2225AFF0C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_2225AFF20(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_2225AFF34(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_2225AFF48(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

unint64_t sub_2225AFF60()
{
  result = qword_27D00FBD0;
  if (!qword_27D00FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FBD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DMCAppsScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
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

uint64_t sub_2225B007C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2225B00C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2225B0124(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2225B013C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2225B01A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_2225B0204(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2225B0214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2225B0270()
{
  result = qword_27D00FBE0;
  if (!qword_27D00FBE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D00FBE0);
  }

  return result;
}

unint64_t sub_2225B02BC()
{
  result = qword_27D00FBE8;
  if (!qword_27D00FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00FBE8);
  }

  return result;
}

uint64_t sub_2225B0314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7DMCApps0A13InternalErrorO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2225B03EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2225B0434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2225B0478(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7DMCApps11DMCAppErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_2225B04D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2225B0520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_2225B0564(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2225B058C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC0, &qword_2225C7788);
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
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_2225B0698(void *a1)
{
  v2 = [a1 type];
  v3 = [a1 type];
  v4 = [a1 scope];
  v5 = [a1 personaIdentifier];
  v6 = v5;
  if (v5)
  {
  }

  v7 = [a1 personaIdentifier];
  if (v7)
  {
    v8 = v7;
    sub_2225C6B50();
  }

  return ((v2 == 3) << 8) | ((v3 == 0) << 16) | ((v4 == 1) << 24) | ((v6 != 0) << 32);
}

uint64_t sub_2225B0798(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  *(v3 + 192) = *a3;
  return MEMORY[0x2822009F8](sub_2225B07C0, 0, 0);
}

uint64_t sub_2225B07C0()
{
  v21 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = sub_2225C6B40();
    v4 = [v2 newDeclarationKey_];
    *(v0 + 168) = v4;

    if ([v4 isValid])
    {
      v5 = [v4 storeIdentifier];
      if (!v5)
      {
        sub_2225C6B50();
        v5 = sub_2225C6B40();
      }

      *(v0 + 176) = v5;
      v6 = *(v0 + 192);
      v7 = objc_opt_self();
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_2225B0BAC;
      v8 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBF8, &qword_2225C7C38);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_2225B058C;
      *(v0 + 104) = &block_descriptor;
      *(v0 + 112) = v8;
      [v7 storeWithIdentifier:v5 scope:v6 completionHandler:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    if (qword_2813114C0 != -1)
    {
      swift_once();
    }

    v13 = sub_2225C6AA0();
    __swift_project_value_buffer(v13, qword_27D0107A0);

    v10 = sub_2225C6A80();
    v14 = sub_2225C6C60();

    if (os_log_type_enabled(v10, v14))
    {
      v15 = *(v0 + 152);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_2225AD5C8(v15, v1, &v20);
      _os_log_impl(&dword_222597000, v10, v14, "Invalid declaration key: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x223DBAFE0](v17, -1, -1);
      MEMORY[0x223DBAFE0](v16, -1, -1);
    }
  }

  else
  {
    if (qword_2813114C0 != -1)
    {
      swift_once();
    }

    v9 = sub_2225C6AA0();
    __swift_project_value_buffer(v9, qword_27D0107A0);
    v10 = sub_2225C6A80();
    v11 = sub_2225C6C60();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222597000, v10, v11, "App missing declaration key", v12, 2u);
      MEMORY[0x223DBAFE0](v12, -1, -1);
    }
  }

  v18 = *(v0 + 8);

  return v18(2, 0, 0);
}

uint64_t sub_2225B0BAC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_2225B0D64;
  }

  else
  {
    v2 = sub_2225B0CBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B0CBC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = sub_2225B0698(v2);
  v5 = v4;
  v7 = v6;

  v8 = *(v0 + 8);

  return v8(v3 & 0x1010101FFLL, v5, v7);
}

uint64_t sub_2225B0D64()
{
  v1 = v0[22];
  swift_willThrow();

  if (qword_2813114C0 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = sub_2225C6AA0();
  __swift_project_value_buffer(v3, qword_27D0107A0);
  v4 = v2;
  v5 = sub_2225C6A80();
  v6 = sub_2225C6C50();
  MEMORY[0x223DBAEB0](v2);
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  v9 = v0[21];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_222597000, v5, v6, "Failed to fetch subscriber store: %@", v10, 0xCu);
    sub_2225B0F3C(v11);
    MEMORY[0x223DBAFE0](v11, -1, -1);
    MEMORY[0x223DBAFE0](v10, -1, -1);

    MEMORY[0x223DBAEB0](v8);
  }

  else
  {

    MEMORY[0x223DBAEB0](v8);
  }

  v14 = v0[1];

  return v14(1, 0, 0);
}

uint64_t sub_2225B0F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00FBC8, &unk_2225C7C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2225B0FA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225B1054;

  return sub_2225B85AC(a1, a2, &unk_2835BE970, 1);
}

uint64_t sub_2225B1054(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225B1188, 0, 0);
  }
}

uint64_t sub_2225B1188()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) managementInformation];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 state];

      if (v4 <= 0x10)
      {
        v5 = 0x17DF5u >> v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = [v1 sourceIdentifier];
    if (v6)
    {
      v7 = v6;
      v8 = sub_2225C6B50();
      v10 = v9;

      if (v8 == 0xD00000000000001DLL && 0x80000002225C8C20 == v10)
      {

        if (v5)
        {
LABEL_18:
          v13 = 2;
          goto LABEL_20;
        }
      }

      else
      {
        v12 = sub_2225C6D90();

        if (v5)
        {
          if (v12)
          {
            goto LABEL_18;
          }

LABEL_16:
          v13 = 1;
          goto LABEL_20;
        }
      }
    }

    else
    {

      if (v5)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = 0;
LABEL_20:
  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_2225B1300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_2225B1324, 0, 0);
}

uint64_t sub_2225B1324()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[6] = v5;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_2225B1410;

  return sub_2225B85AC(v4, v6, &unk_2835BE9F8, 0);
}

uint64_t sub_2225B1410(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_2225B1928;
  }

  else
  {

    v4 = sub_2225B152C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225B152C()
{
  v1 = v0[8];
  if (!v1)
  {
LABEL_8:
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_2225B17B0;
    v7 = v0[4];
    v9 = v0[2];
    v8 = v0[3];

    return sub_2225B8D94(v9, v8, v7);
  }

  v2 = v1;
  v3 = [v2 installationState];
  v4 = [v2 type];
  if (v3)
  {
    v5 = v3 == 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v11 = v4, v12 = [v2 isAppClip], (v12 & 1) != 0) || (v13 = objc_msgSend(v2, sel_managementInformation)) != 0 && ((v14 = v13, v15 = objc_msgSend(v13, sel_state), v14, v15 <= 0x10) ? (v16 = ((1 << v15) & 0x17DF5) == 0) : (v16 = 1), !v16) || v11 != 1)
  {

    goto LABEL_8;
  }

  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v17 = sub_2225C6AA0();
  __swift_project_value_buffer(v17, qword_281311550);
  v18 = sub_2225C6A80();
  v19 = sub_2225C6C60();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_222597000, v18, v19, "Trying to manage an existing system app...", v20, 2u);
    MEMORY[0x223DBAFE0](v20, -1, -1);
  }

  sub_2225BC524();
  swift_allocError();
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 6;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_2225B17B0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2225B198C;
  }

  else
  {
    v2 = sub_2225B18C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B18C4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225B1928()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225B198C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225B19F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_2225B1A14, 0, 0);
}

uint64_t sub_2225B1A14()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[6] = v4;
  v0[7] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = sub_2225C4D04(v0[2]);
    v0[8] = v8;
    v0[9] = v9;
    v13 = v8;
    v14 = v9;
    v15 = v0[5];
    v16 = v15[6];
    v17 = v15[7];
    __swift_project_boxed_opaque_existential_1Tm(v15 + 3, v16);
    v18 = swift_task_alloc();
    v0[10] = v18;
    *v18 = v0;
    v18[1] = sub_2225B1D24;

    return MEMORY[0x282184928](v7, v6, v13, v14, v16, v17);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v10 = xmmword_2225C7700;
    *(v10 + 16) = 2;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2225B1D24()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2225B2198;
  }

  else
  {

    v2 = sub_2225B1E40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B1E40()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_2225B1EE8;
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_2225BA330(v4, v3, v2);
}

uint64_t sub_2225B1EE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2225B1FDC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2225B2334;
  }

  else
  {

    v2 = sub_2225B20F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225B20F8()
{
  MEMORY[0x223DBAEB0](v0[13]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2225B1EE8;
  v2 = v0[4];
  v4 = v0[2];
  v3 = v0[3];

  return sub_2225BA330(v4, v3, v2);
}

uint64_t sub_2225B2198()
{

  *(v0 + 104) = *(v0 + 88);
  if (qword_2813114B8 != -1)
  {
    swift_once();
  }

  v1 = sub_2225C6AA0();
  __swift_project_value_buffer(v1, qword_281311550);
  v2 = sub_2225C6A80();
  v3 = sub_2225C6C60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_222597000, v2, v3, "Invalid app code identity. App config will be disabled.", v4, 2u);
    MEMORY[0x223DBAFE0](v4, -1, -1);
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 40);

  v7 = v6[6];
  v8 = v6[7];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 3, v7);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_2225B1FDC;
  v10 = *(v0 + 48);

  return MEMORY[0x282184938](v10, v5, v7, v8);
}

uint64_t sub_2225B2334()
{
  MEMORY[0x223DBAEB0](*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225B23A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_2225B23C8, 0, 0);
}

uint64_t sub_2225B23C8()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[6] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[5];
    v9 = v8[6];
    v10 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v9);
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_2225B254C;

    return MEMORY[0x282184940](v6, v7, v9, v10);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v12 = xmmword_2225C7700;
    *(v12 + 16) = 2;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2225B254C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225B27BC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = sub_2225B26C8;
    v4 = v2[4];
    v5 = v2[3];
    v6 = v2[2];

    return sub_2225BA330(v6, v5, v4);
  }
}

uint64_t sub_2225B26C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2225B27BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225B2820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_2225B28D0;

  return sub_2225BB85C(a1, a3, a4);
}

uint64_t sub_2225B28D0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2225B2A00, 0, 0);
  }
}

uint64_t sub_2225B2A00()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v0[5] = v5;
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[3];
    v9 = v8[6];
    v10 = v8[7];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 3, v9);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_2225B2B84;

    return MEMORY[0x282184938](v6, v7, v9, v10);
  }

  else
  {
    sub_2225B02BC();
    swift_allocError();
    *v12 = xmmword_2225C7700;
    *(v12 + 16) = 2;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2225B2B84()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2225B2CFC;
  }

  else
  {
    v2 = sub_2225B2C98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}